Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15C8AC433FE
	for <webhook@archiver.kernel.org>; Mon,  3 Oct 2022 17:04:22 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web08.84.1664816657093383577
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Oct 2022 10:04:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 9BE5F60007;
	Mon,  3 Oct 2022 17:04:14 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper] scripts: run-docs-build: make the
 workdir pristine between builds
Date: Mon,  3 Oct 2022 19:04:01 +0200
Message-Id: <20221003170401.12827-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Oct 2022 17:04:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58252

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

It happened that the git repositories were dirty and resulted in
incorrect files being used. Let's use git clean -ffdx to force a
completely clean git repositories before and after checking out a branch
so that nothing is left from or to another branch build

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index c6b3965..69e3257 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -61,6 +61,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
 
     echo Building bitbake $branch branch
     git checkout $branch
+    git clean -ffdx
     git checkout origin/master releases.rst
     make clean
     SPHINXOPTS="-j auto" make publish
@@ -80,7 +81,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
     fi
 
     cp -r ./_build/final/* $outputdir/bitbake/$branch
-    git reset --hard
+    git clean -ffdx
 done
 
 if [ "$PUBLISH" -ne 0 ]; then
@@ -100,8 +101,7 @@ first_dunfell_sphinx_commit=c25fe058b88b893b0d146f3ed27320b47cdec236
 git checkout origin/master set_versions.py
 #latest_tag=$(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" --sort="version:refname" 'yocto-*' | tail -1 | sed 's/yocto-//')
 latest_tag=$(./set_versions.py getlatest)
-git reset --hard
-git clean -f
+git clean -ffdx
 
 for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)') $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*') transition; do
     if [ "$branch" = "HEAD" ]; then
@@ -116,6 +116,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
 
     echo Building $branch
     git checkout $branch
+    git clean -ffdx
 
     if [ -e "${scriptdir}/docs-build-patches/${branch}/" ]; then
         echo Adding patch for $branch
@@ -160,8 +161,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
     fi
 
     cp -r ./_build/final/* $outputdir/$branch
-    git reset --hard
-    git clean -f
+    git clean -ffdx
 done
 
 # Update bitbake switchers.js with the copy from master ypdocs
-- 
2.37.3


