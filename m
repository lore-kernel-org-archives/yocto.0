Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C262C433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:37:38 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web09.12039.1647621457304979581
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:37:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 21F1D240003;
	Fri, 18 Mar 2022 16:37:34 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 5/6] scripts: run-docs-build:
 simplify sphinx-buildable yocto-docs tag list fetching
Date: Fri, 18 Mar 2022 17:36:50 +0100
Message-Id: <20220318163651.3016936-5-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318163651.3016936-1-foss+yocto@0leil.net>
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:37:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56493

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The commit that introduced Sphinx support in yocto-docs is
01dd5af7954e24552aca022917669b27bb0541ed. Any tag containing this commit
is buildable by sphinx.

Dunfell tags don't all have Sphinx support. However, all tags containing
the introducing commit c25fe058b88b893b0d146f3ed27320b47cdec236 are
buildable by sphinx.

Therefore, let's just list all tags which contains either of those two
commits instead of the complex series of pipes and shell commands.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 36 +++++++++++++++++-------------------
 1 file changed, 17 insertions(+), 19 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 1656975..ab5b6db 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -102,27 +102,25 @@ for branch in dunfell transition $(git branch --remote --contains "$first_sphinx
 done
 
 # Yocto Project releases/tags
-v_sphinx='yocto-3.1.5' #This and newer versions have Sphinx docs.
+first_dunfell_sphinx_commit=c25fe058b88b893b0d146f3ed27320b47cdec236
+
 cd $ypdocs
-for tag in $(git tag --list 'yocto-*'); do
-    first=$(printf '%s\n%s' $tag $v_sphinx | sort --version-sort | head -n1)
-    if [ "$first" = "$v_sphinx" ]; then
-        echo Processing $tag
-        cd $ypdocs
-        git checkout $tag
-	if [ -e "${scriptdir}/docs-build-patches/${tag}/" ]; then
-            echo Adding patch for $tag
-            git am "${scriptdir}/docs-build-patches/${tag}/"000*
-        fi
-        git checkout master releases.rst
-        make clean
-        make publish
-        version=$(echo $tag | cut -c7-)
-        mkdir $outputdir/$version
-        cp -r ./_build/final/* $outputdir/$version
-        git reset --hard
-        echo Finished processing $tag
+for tag in $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*'); do
+    echo Processing $tag
+    cd $ypdocs
+    git checkout $tag
+    if [ -e "${scriptdir}/docs-build-patches/${tag}/" ]; then
+        echo Adding patch for $tag
+        git am "${scriptdir}/docs-build-patches/${tag}/"000*
     fi
+    git checkout master releases.rst
+    make clean
+    make publish
+    version=$(echo $tag | cut -c7-)
+    mkdir $outputdir/$version
+    cp -r ./_build/final/* $outputdir/$version
+    git reset --hard
+    echo Finished processing $tag
 done
 
 # get current release (e.g. most recent tag), and add a 'current' link
-- 
2.35.1


