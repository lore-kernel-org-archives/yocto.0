Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B69C43217
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 16:31:40 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.13346.1647361899122959917
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:31:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 391B8240011;
	Tue, 15 Mar 2022 16:31:36 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 4/4] Revert "scripts: run-docs-build:
 do not turn sphinx warnings into errors"
Date: Tue, 15 Mar 2022 17:31:15 +0100
Message-Id: <20220315163115.2186540-4-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315163115.2186540-1-foss+yocto@0leil.net>
References: <20220315163115.2186540-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 16:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56451

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The patch was meant as a quick temporary work-around to have the docs
built and published.

Now that releases where -W flag is set (turning warnings into errors)
are appropriately patched to make those warnings disappear (on Sphinx
v3.2.1 which is the one used on the builder), this patch can be reverted
so that next time a warning appears the doc building will fail but will
not destroy the doc website (because of commit
6a4e6ef18d1415c719be51c773d7c57cae5549cf "scripts: run-docs-build: make
the script fail hard ASAP when there's an error", since rsync will not
be run if any error happens before).

This reverts commit 931d409b255a85f2217ca093d8391a678ce00ddb.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 73cba3f..b9b331b 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -33,14 +33,14 @@ cd $bbdocs
 echo Building bitbake master branch
 git checkout master
 make clean
-SPHINXOPTS="-j auto" make publish
+make publish
 mkdir $outputdir/bitbake
 cp -r ./_build/final/* $outputdir/bitbake
 
 git checkout master-next
 echo Building bitbake master-next branch
 make clean
-SPHINXOPTS="-j auto" make publish
+make publish
 mkdir $outputdir/bitbake/next
 cp -r ./_build/final/* $outputdir/bitbake/next
 
@@ -55,7 +55,7 @@ for branch in 1.46 1.48 1.50 1.52; do
     git checkout $branch
     git checkout master releases.rst
     make clean
-    SPHINXOPTS="-j auto" make publish
+    make publish
     mkdir $outputdir/bitbake/$branch
     cp -r ./_build/final/* $outputdir/bitbake/$branch
     git reset --hard
@@ -70,21 +70,21 @@ cd $ypdocs
 echo Building master branch
 git checkout master
 make clean
-SPHINXOPTS="-j auto" make publish
+make publish
 cp -r ./_build/final/* $outputdir
 
 cd $ypdocs
 echo Building transition branch
 git checkout transition
 make clean
-SPHINXOPTS="-j auto" make publish
+make publish
 cp -r ./_build/final/* $outputdir/
 
 cd $ypdocs
 echo Building master-next branch
 git checkout master-next
 make clean
-SPHINXOPTS="-j auto" make publish
+make publish
 mkdir $outputdir/next
 cp -r ./_build/final/* $outputdir/next
 
@@ -96,7 +96,7 @@ for branch in dunfell gatesgarth hardknott honister; do
     git checkout $branch
     git checkout master releases.rst
     make clean
-    SPHINXOPTS="-j auto" make publish
+    make publish
     mkdir $outputdir/$branch
     cp -r ./_build/final/* $outputdir/$branch
     git reset --hard
@@ -117,7 +117,7 @@ for tag in $(git tag --list 'yocto-*'); do
         fi
         git checkout master releases.rst
         make clean
-        SPHINXOPTS="-j auto" make publish
+        make publish
         version=$(echo $tag | cut -c7-)
         mkdir $outputdir/$version
         cp -r ./_build/final/* $outputdir/$version
-- 
2.35.1


