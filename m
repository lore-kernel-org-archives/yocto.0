Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76323C433EF
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:37:39 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web08.11776.1647621458208403745
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:37:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 3C1C824000A;
	Fri, 18 Mar 2022 16:37:36 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schuls <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 6/6] scripts: run-docs-build: factor
 out yocto-docs tags and branches building
Date: Fri, 18 Mar 2022 17:36:51 +0100
Message-Id: <20220318163651.3016936-6-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318163651.3016936-1-foss+yocto@0leil.net>
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:37:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56494

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Except patching which is specific to tags and yocto- tag prefix
stripping, the logic is identical, so let's merge both loops together.

Cc: Quentin Schuls <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 36 ++++++++++++------------------------
 1 file changed, 12 insertions(+), 24 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index ab5b6db..ceda213 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -71,7 +71,8 @@ cd $ypdocs
 
 # Again, keeping even the no longer supported releases (see above comment)
 first_sphinx_commit=01dd5af7954e24552aca022917669b27bb0541ed
-for branch in dunfell transition $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)'); do
+first_dunfell_sphinx_commit=c25fe058b88b893b0d146f3ed27320b47cdec236
+for branch in dunfell transition $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)') $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*'); do
     if [ "$branch" = "HEAD" ]; then
         continue
     fi
@@ -82,12 +83,21 @@ for branch in dunfell transition $(git branch --remote --contains "$first_sphinx
         continue
     fi
 
-    echo Building $branch branch
+    echo Building $branch
     git checkout $branch
+
+    if [ -e "${scriptdir}/docs-build-patches/${branch}/" ]; then
+        echo Adding patch for $branch
+        git am "${scriptdir}/docs-build-patches/${branch}/"000*
+    fi
+
     git checkout master releases.rst
     make clean
     make publish
 
+    # Strip yocto- from tag names
+    branch=$(echo "$branch" | sed 's/yocto-//')
+
     if [ "$branch" = "master-next" ]; then
         branch="next"
 	mkdir $outputdir/$branch
@@ -101,28 +111,6 @@ for branch in dunfell transition $(git branch --remote --contains "$first_sphinx
     git reset --hard
 done
 
-# Yocto Project releases/tags
-first_dunfell_sphinx_commit=c25fe058b88b893b0d146f3ed27320b47cdec236
-
-cd $ypdocs
-for tag in $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*'); do
-    echo Processing $tag
-    cd $ypdocs
-    git checkout $tag
-    if [ -e "${scriptdir}/docs-build-patches/${tag}/" ]; then
-        echo Adding patch for $tag
-        git am "${scriptdir}/docs-build-patches/${tag}/"000*
-    fi
-    git checkout master releases.rst
-    make clean
-    make publish
-    version=$(echo $tag | cut -c7-)
-    mkdir $outputdir/$version
-    cp -r ./_build/final/* $outputdir/$version
-    git reset --hard
-    echo Finished processing $tag
-done
-
 # get current release (e.g. most recent tag), and add a 'current' link
 tag=$(git tag --list 'yocto-*' | sort --version-sort | tail -1 | cut -c7-)
 echo Linking to $tag as current
-- 
2.35.1


