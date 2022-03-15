Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B37C433FE
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 16:31:38 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web10.13420.1647361897208822085
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:31:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 7A863240006;
	Tue, 15 Mar 2022 16:31:34 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 1/4] scripts: run-docs-build:
 simplify patching logic
Date: Tue, 15 Mar 2022 17:31:12 +0100
Message-Id: <20220315163115.2186540-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 16:31:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56448

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

There's no need to keep a list of tags requiring to be patched since the
tag is part of the path where patches are stored.

Therefore, let's only check if there's a patch directory for a given tag
and if so, apply all patches in there.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 scripts/run-docs-build | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index cca4e4d..73cba3f 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -111,11 +111,7 @@ for tag in $(git tag --list 'yocto-*'); do
         echo Processing $tag
         cd $ypdocs
         git checkout $tag
-        # Update versions tagged before the current_version in
-        # conf.py was changed resulting in sphinx believing these are
-        # development branches which breaks all sorts of assumptions. Moving a
-        # tag isn't best practice so we just patch the releases here instead.
-        if [ "$tag" = "yocto-3.3" ] || [ "$tag" = "yocto-3.3.5" ] || [ "$tag" = "yocto-3.4" ] || [ "$tag" = "yocto-3.1.14" ] || [ "$tag" = "yocto-3.4.2" ] ; then
+	if [ -e "${scriptdir}/docs-build-patches/${tag}/" ]; then
             echo Adding patch for $tag
             git am "${scriptdir}/docs-build-patches/${tag}/"000*
         fi
-- 
2.35.1


