Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686ACC433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:37:35 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.12086.1647621453878585485
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:37:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2C5F7240003;
	Fri, 18 Mar 2022 16:37:30 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 1/6] scripts: run-docs-build: factor
 out all bitbake branches building
Date: Fri, 18 Mar 2022 17:36:46 +0100
Message-Id: <20220318163651.3016936-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:37:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56489

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

master and master-next only differ from other branches by their output
directory name. Let's put everything in common and only have a check on
whether the branch is master or master-next and modify the output dir in
those cases.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index b9b331b..f7b5f97 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -30,33 +30,29 @@ echo Extracing old content from archive
 tar -xJf $docbookarchive
 
 cd $bbdocs
-echo Building bitbake master branch
-git checkout master
-make clean
-make publish
 mkdir $outputdir/bitbake
-cp -r ./_build/final/* $outputdir/bitbake
 
-git checkout master-next
-echo Building bitbake master-next branch
-make clean
-make publish
-mkdir $outputdir/bitbake/next
-cp -r ./_build/final/* $outputdir/bitbake/next
-
-# stable branches
 # A decision was made to keep updating all the Sphinx generated docs for the moment,
 # even the ones corresponding to no longer supported releases
 # https://lists.yoctoproject.org/g/docs/message/2193
 # We copy the releases.rst file from master so that all versions of the docs
 # see the latest releases.
-for branch in 1.46 1.48 1.50 1.52; do
+for branch in 1.46 1.48 1.50 1.52 master master-next; do
     echo Building bitbake $branch branch
     git checkout $branch
     git checkout master releases.rst
     make clean
     make publish
-    mkdir $outputdir/bitbake/$branch
+
+    if [ "$branch" = "master-next" ]; then
+        branch="next"
+	mkdir $outputdir/bitbake/$branch
+    elif [ "$branch" = "master" ]; then
+        branch=""
+    else
+	mkdir $outputdir/bitbake/$branch
+    fi
+
     cp -r ./_build/final/* $outputdir/bitbake/$branch
     git reset --hard
 done
-- 
2.35.1


