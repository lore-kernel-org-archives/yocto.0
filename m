Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9EECCDB474
	for <webhook@archiver.kernel.org>; Mon, 16 Oct 2023 11:21:29 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web11.118060.1697455284999397885
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 04:21:25 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.198, mailfrom: foss+yocto@0leil.net)
Received: by mail.gandi.net (Postfix) with ESMTPSA id B6AC6C0003;
	Mon, 16 Oct 2023 11:21:21 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: twoerner@gmail.com
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH] bsp: rkbin: fix default COMPATIBLE_MACHINE matching all
Date: Mon, 16 Oct 2023 13:21:10 +0200
Message-ID: <20231016112110.220599-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: foss@0leil.net
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 11:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61344

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The goal of the default COMPATIBLE_MACHINE was to not allow
rockchip-rkbin to be even parsed if a MACHINE isn't part of the
COMPATIBLE_MACHINE.

However, COMPATIBLE_MACHINE is a regexp checked using Python's re module
approximately like:
"""
if re.match(COMPATIBLE_MACHINE, MACHINE):
	return True
"""

and re.match() returns a match whatever MACHINE is if COMPATIBLE_MACHINE
is the empty string.

Therefore, let's change it to `^$` which only matches the empty string,
which shouldn't be possible for anything in MACHINEOVERRIDES, and if it
is there are probably bigger problems than parsing rockchip-rkbin.

Fixes: f8af59dd7cd7 ("rock-5b: add")
Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 recipes-bsp/rkbin/rockchip-rkbin_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index 7fefb01..f9e680d 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -12,7 +12,7 @@ inherit bin_package deploy
 
 S = "${WORKDIR}/git"
 
-COMPATIBLE_MACHINE = ""
+COMPATIBLE_MACHINE = "^$"
 COMPATIBLE_MACHINE:rk3588s = "rk3588s"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
2.41.0


