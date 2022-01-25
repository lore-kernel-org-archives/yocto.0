Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 237B2C433F5
	for <webhook@archiver.kernel.org>; Tue, 25 Jan 2022 16:46:18 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.9779.1643129177190360492
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 08:46:17 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C34BD1BF214;
	Tue, 25 Jan 2022 16:46:14 +0000 (UTC)
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH yocto-autobuilder-helper] run-docs-build: fix checkout of
 releases.rst from master
Date: Tue, 25 Jan 2022 17:45:46 +0100
Message-Id: <20220125164546.846218-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jan 2022 16:46:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55967

A wrong path was given given the working directory.

Also revert the changes with "git reset --hard" to
have a clean state before further branch switches.

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 scripts/run-docs-build | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 5d6d24a..c93b3e6 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -43,11 +43,12 @@ cp -r ./_build/final/* $outputdir/bitbake/next
 # see the latest releases.
 for branch in 1.46 1.48 1.50 1.52; do
     git checkout $branch
-    git checkout master doc/releases.rst
+    git checkout master releases.rst
     make clean
     make publish
     mkdir $outputdir/bitbake/$branch
     cp -r ./_build/final/* $outputdir/bitbake/$branch
+    git reset --hard
 done
 
 # only sync bitbake folder for now. We need bitbake to be published first
@@ -79,11 +80,12 @@ cp -r ./_build/final/* $outputdir/next
 for branch in dunfell gatesgarth hardknott honister; do
     cd $ypdocs
     git checkout $branch
-    git checkout master documentation/releases.rst
+    git checkout master releases.rst
     make clean
     make publish
     mkdir $outputdir/$branch
     cp -r ./_build/final/* $outputdir/$branch
+    git reset --hard
 done
 
 # Yocto Project releases/tags
@@ -101,12 +103,13 @@ for tag in $(git tag --list 'yocto-*'); do
         if [ "$tag" = "yocto-3.3" ] || [ "$tag" = "yocto-3.4" ]; then
             git am "${scriptdir}/${tag}/0001-conf-update-for-release.patch"
         fi
-        git checkout master documentation/releases.rst
+        git checkout master releases.rst
         make clean
         make publish
         version=$(echo $tag | cut -c7-)
         mkdir $outputdir/$version
         cp -r ./_build/final/* $outputdir/$version
+        git reset --hard
     fi
 done
 
-- 
2.25.1


