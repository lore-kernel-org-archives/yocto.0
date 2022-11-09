Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B3FC4332F
	for <webhook@archiver.kernel.org>; Wed,  9 Nov 2022 13:25:00 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web09.3196.1668000291609104247
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Nov 2022 05:24:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.231, mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id A095A100005;
	Wed,  9 Nov 2022 13:24:48 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: 
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>,
	Markus Volk <f_l_k@t-online.de>,
	Trevor Woerner <twoerner@gmail.com>
Subject: [PATCH][meta-rockchip][master][kirkstone][honister] rockchip.wic.inc: let wic update fstab again
Date: Wed,  9 Nov 2022 14:24:05 +0100
Message-Id: <20221109-wic-fstab-v1-0-e5523e743985@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Nov 2022 13:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58529

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The commit ed3a97f7b2e4 ("rockchip-wic.inc: don't let wic edit fstab")
removing this ability was introduced to fix an issue in the wic tool in
OE-Core in which wic partitions whose "mountpoint" is not a valid path
are still added to fstab.
This was eventually fixed in OE-Core in commit 7aa678ce804c
("wic:direct.py: ignore invalid mountpoints during fstab update") which
is part of release Honister (3.4) and later.

Therefore, it should be safe to now let wic update fstab again for
partitions with a valid mountpoint path. The benefit being that the wic
partitions with a mountpoint are now automounted at boot.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
restore fstab update by wic

Since wic now correctly handles partitions without a valid mountpoint path and
does not add them to fstab, we can let wic update fstab again so let's do it.

This makes partition automounting work again.

This was tested on a Kirkstone (4.0.4) poky-based core-image-minimal on a
PX30-uQ7 (Ringneck) SoM on Haikou devkit
(https://git.theobroma-systems.com/yocto-layers/meta-theobroma-systems-bsp.git/)

This should be safe to backport to kirkstone and honister too.

Cc: Markus Volk <f_l_k@t-online.de>
Cc: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-wic.inc | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 6fa5367..635288c 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -27,6 +27,3 @@ WICVARS:append = " \
 	SPL_BINARY \
 	UBOOT_SUFFIX \
 	"
-
-# Do not update fstab file while creating wic images
-WIC_CREATE_EXTRA_ARGS ?= "--no-fstab-update"

---
base-commit: f2b4e6efde0e2e8ed9a15694d716add3eb4d14dc
change-id: 20221109-wic-fstab-7206c7a213c2

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>

