Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43FEDC433EF
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 11:31:04 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web08.5077.1639740662483163866
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 03:31:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.196,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 28ECCE0011;
	Fri, 17 Dec 2021 11:30:58 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	raj.khem@gmail.com,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v3] trusted-firmware-a: replace baudrate with
 the one specified in machine conf
Date: Fri, 17 Dec 2021 12:30:47 +0100
Message-Id: <20211217113047.207480-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 11:31:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55610

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Not all Rockchip boards have their console running at 1500000 baud in
U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
SoM+Carrierboard.

In order to prepare for the addition of puma-haikou to meta-rockchip,
let's replace the baudrate in TF-A by the one defined in the machine
conf file in the RK_CONSOLE_BAUD variable.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 .../files/serial-console-baudrate.patch       | 36 -------------------
 .../trusted-firmware-a_%.bbappend             | 10 +++++-
 2 files changed, 9 insertions(+), 37 deletions(-)
 delete mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch

diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
deleted file mode 100644
index 2d6e9bf..0000000
--- a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
-From: Yann Dirson <yann@blade-group.com>
-Date: Tue, 6 Apr 2021 17:28:45 +0200
-Subject: [PATCH] Set serial console baudrate back to 1500000.
-Upstream-Status: Inappropriate[other]
-
-TF-A runs between two u-boot stages which both uses 1500000 baud, it
-just makes no sense to use the same UART at a different rate.
-
-This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce62.
-Main reason for that change stated in https://developer.trustedfirmware.org/T762
-is ChromeOS compatibility.
-
-Looks like this patch may become unnecessary in the future, when
-u-boot and TF-A get to communicate this value.
-
----
- plat/rockchip/rk3399/rk3399_def.h | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk3399_def.h
-index ba83242eb..8d6ecfbe6 100644
---- a/plat/rockchip/rk3399/rk3399_def.h
-+++ b/plat/rockchip/rk3399/rk3399_def.h
-@@ -17,7 +17,7 @@
- /**************************************************************************
-  * UART related constants
-  **************************************************************************/
--#define RK3399_BAUDRATE			115200
-+#define RK3399_BAUDRATE			1500000
- #define RK3399_UART_CLOCK		24000000
- 
- /******************************************************************************
--- 
-2.30.2
-
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 513cea1..31024ce 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -7,7 +7,6 @@ COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 SRC_URI += "\
-    file://serial-console-baudrate.patch \
     file://0001-dram-Fix-build-with-gcc-11.patch \
     file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
     file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
@@ -19,3 +18,12 @@ SRC_URI += "\
 # this needs fixing until then use gcc
 TOOLCHAIN:rk3399 = "gcc"
 
+fixup_baudrate() {
+	:
+}
+
+fixup_baudrate:rk3399() {
+	sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
+}
+
+do_patch[postfuncs] += "fixup_baudrate"
-- 
2.33.1


