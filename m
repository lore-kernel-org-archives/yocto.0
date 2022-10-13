Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E842EC4332F
	for <webhook@archiver.kernel.org>; Thu, 13 Oct 2022 12:18:02 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web12.6655.1665663476928483468
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Oct 2022 05:17:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.200, mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 5379020016;
	Thu, 13 Oct 2022 12:17:52 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>,
	Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Subject: [PATCH yocto-autobuilder-helper v2] scripts: run-docs-build: make the workdir pristine between tries
Date: Thu, 13 Oct 2022 14:17:35 +0200
Message-Id: <20221013121735.39847-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 12:18:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58329

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

It happened that the git repositories were dirty and resulted in
incorrect files being used. Let's use git clean -ffdx to force a
completely clean git repositories before and after checking out a branch
so that nothing is left from or to another branch build. Also git reset
--hard to undo changes to tracked files.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Reported-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com> #https://lore.kernel.org/yocto-docs/e50abe3c777e4a23a752a3ec25ad0b2a@axis.com/
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---

v2:
 - re-added git reset --hard back,
 - added git reset --hard after git checkout too just to be on the safe
 side,
 - added Reported-by and the link to the discussion,

 scripts/run-docs-build | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index c6b3965..970d8bc 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -61,6 +61,8 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
 
     echo Building bitbake $branch branch
     git checkout $branch
+    git reset --hard
+    git clean -ffdx
     git checkout origin/master releases.rst
     make clean
     SPHINXOPTS="-j auto" make publish
@@ -81,6 +83,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
 
     cp -r ./_build/final/* $outputdir/bitbake/$branch
     git reset --hard
+    git clean -ffdx
 done
 
 if [ "$PUBLISH" -ne 0 ]; then
@@ -101,7 +104,7 @@ git checkout origin/master set_versions.py
 #latest_tag=$(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" --sort="version:refname" 'yocto-*' | tail -1 | sed 's/yocto-//')
 latest_tag=$(./set_versions.py getlatest)
 git reset --hard
-git clean -f
+git clean -ffdx
 
 for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)') $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*') transition; do
     if [ "$branch" = "HEAD" ]; then
@@ -116,6 +119,8 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
 
     echo Building $branch
     git checkout $branch
+    git reset --hard
+    git clean -ffdx
 
     if [ -e "${scriptdir}/docs-build-patches/${branch}/" ]; then
         echo Adding patch for $branch
@@ -161,7 +166,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
 
     cp -r ./_build/final/* $outputdir/$branch
     git reset --hard
-    git clean -f
+    git clean -ffdx
 done
 
 # Update bitbake switchers.js with the copy from master ypdocs
-- 
2.37.3


