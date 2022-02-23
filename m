Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 322F9C433EF
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 14:46:43 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web09.8560.1645627602226392146
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 06:46:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id C728A240004;
	Wed, 23 Feb 2022 14:46:39 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper] scripts: run-docs-build: do not turn
 sphinx warnings into errors
Date: Wed, 23 Feb 2022 15:46:28 +0100
Message-Id: <20220223144628.2805706-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 14:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56265

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Default flags for sphinx-build contain -W which turns warnings into
errors. This is really helpful during debugging and could be used for
continuous integration though we do not have such a thing separate from
the continuous delivery in place currently. Nowadays, the docs files
served at docs.yoctoproject.com are actually removed before being
updated from the newly built docs. If the `html` target, a dependency of
`publish` target is failing, the docs aren't copied over to the `final`
temporary directory. Therefore it'll be missing in the rsync upload to
docs.yoctoproject.org.

Instead, let's disable the turning of warnings into errors so that the
`html` make target can finish successfully and the `publish` make target
to finish successfully too.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 3bc35b3..d9c4bc1 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -27,14 +27,14 @@ cd $bbdocs
 echo Building bitbake master branch
 git checkout master
 make clean
-make publish
+SPHINXOPTS="-j auto" make publish
 mkdir $outputdir/bitbake
 cp -r ./_build/final/* $outputdir/bitbake
 
 git checkout master-next
 echo Building bitbake master-next branch
 make clean
-make publish
+SPHINXOPTS="-j auto" make publish
 mkdir $outputdir/bitbake/next
 cp -r ./_build/final/* $outputdir/bitbake/next
 
@@ -49,7 +49,7 @@ for branch in 1.46 1.48 1.50 1.52; do
     git checkout $branch
     git checkout master releases.rst
     make clean
-    make publish
+    SPHINXOPTS="-j auto" make publish
     mkdir $outputdir/bitbake/$branch
     cp -r ./_build/final/* $outputdir/bitbake/$branch
     git reset --hard
@@ -64,21 +64,21 @@ cd $ypdocs
 echo Building master branch
 git checkout master
 make clean
-make publish
+SPHINXOPTS="-j auto" make publish
 cp -r ./_build/final/* $outputdir
 
 cd $ypdocs
 echo Building transition branch
 git checkout transition
 make clean
-make publish
+SPHINXOPTS="-j auto" make publish
 cp -r ./_build/final/* $outputdir/
 
 cd $ypdocs
 echo Building master-next branch
 git checkout master-next
 make clean
-make publish
+SPHINXOPTS="-j auto" make publish
 mkdir $outputdir/next
 cp -r ./_build/final/* $outputdir/next
 
@@ -90,7 +90,7 @@ for branch in dunfell gatesgarth hardknott honister; do
     git checkout $branch
     git checkout master releases.rst
     make clean
-    make publish
+    SPHINXOPTS="-j auto" make publish
     mkdir $outputdir/$branch
     cp -r ./_build/final/* $outputdir/$branch
     git reset --hard
@@ -115,7 +115,7 @@ for tag in $(git tag --list 'yocto-*'); do
         fi
         git checkout master releases.rst
         make clean
-        make publish
+        SPHINXOPTS="-j auto" make publish
         version=$(echo $tag | cut -c7-)
         mkdir $outputdir/$version
         cp -r ./_build/final/* $outputdir/$version
-- 
2.35.1


