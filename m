Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A41C433FE
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:37:36 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web09.12038.1647621455297183650
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:37:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2A36624000C;
	Fri, 18 Mar 2022 16:37:32 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 3/6] scripts: run-docs-build: factor
 out all yocto-docs branches building
Date: Fri, 18 Mar 2022 17:36:48 +0100
Message-Id: <20220318163651.3016936-3-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318163651.3016936-1-foss+yocto@0leil.net>
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:37:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56491

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

master, master-next and transition only differ from other branches by
their output directory name. Let's put everything in common and only
have a check on whether the branch is master, master-next or transition
and modify the output dir in those cases.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 35 +++++++++++------------------------
 1 file changed, 11 insertions(+), 24 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index d8d77c7..0055b19 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -68,37 +68,24 @@ cd $outputdir
 rsync -irlp --checksum --ignore-times --delete bitbake docs@docs.yoctoproject.org:docs/
 
 cd $ypdocs
-echo Building master branch
-git checkout master
-make clean
-make publish
-cp -r ./_build/final/* $outputdir
 
-cd $ypdocs
-echo Building transition branch
-git checkout transition
-make clean
-make publish
-cp -r ./_build/final/* $outputdir/
-
-cd $ypdocs
-echo Building master-next branch
-git checkout master-next
-make clean
-make publish
-mkdir $outputdir/next
-cp -r ./_build/final/* $outputdir/next
-
-# stable branches
 # Again, keeping even the no longer supported releases (see above comment)
-for branch in dunfell gatesgarth hardknott honister; do
-    cd $ypdocs
+for branch in dunfell gatesgarth hardknott honister master master-next transition; do
     echo Building $branch branch
     git checkout $branch
     git checkout master releases.rst
     make clean
     make publish
-    mkdir $outputdir/$branch
+
+    if [ "$branch" = "master-next" ]; then
+        branch="next"
+	mkdir $outputdir/$branch
+    elif [ "$branch" = "master" ] || [ "$branch" = "transition" ]; then
+        branch=""
+    else
+	mkdir $outputdir/$branch
+    fi
+
     cp -r ./_build/final/* $outputdir/$branch
     git reset --hard
 done
-- 
2.35.1


