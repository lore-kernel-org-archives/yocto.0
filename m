Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59C5C433FE
	for <webhook@archiver.kernel.org>; Wed, 19 Oct 2022 08:45:31 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web12.5664.1666169126287466645
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Oct 2022 01:45:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.201, mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id B7DE31BF20B;
	Wed, 19 Oct 2022 08:45:22 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH] add support for PX30 SoC
Date: Wed, 19 Oct 2022 10:45:00 +0200
Message-Id: <20221019084500.640620-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Oct 2022 08:45:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58365

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Rockchip PX30 SoC is a quad-core ARM Cortex-A35 CPU fully implementing
the ARMv8-A instruction set with ARM Neon Advanced SIMD and Cryptography
Extensions.

This adds a base configuration file which can be included by PX30-based
boards and the required changes in U-Boot and TF-A for proper support.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---

Note: this was developed and tested on kirkstone branch only

 conf/machine/include/px30.inc                 | 21 +++++++++++++++++++
 .../trusted-firmware-a_%.bbappend             |  5 +++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  2 ++
 3 files changed, 28 insertions(+)
 create mode 100644 conf/machine/include/px30.inc

diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
new file mode 100644
index 0000000..a3727fb
--- /dev/null
+++ b/conf/machine/include/px30.inc
@@ -0,0 +1,21 @@
+# Copyright (C) 2022 Theobroma Systems Design und Consulting
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "px30"
+
+DEFAULTTUNE ?= "cortexa35-crypto"
+
+require conf/machine/include/soc-family.inc
+require conf/machine/include/arm/armv8a/tune-cortexa35.inc
+require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-wic.inc
+
+KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_CLASSES = "kernel-fitimage"
+KERNEL_IMAGETYPE = "fitImage"
+
+TFA_PLATFORM = "px30"
+TFA_BUILD_TARGET = "bl31"
+
+UBOOT_SUFFIX ?= "itb"
+UBOOT_ENTRYPOINT ?= "0x06000000"
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 31024ce..814028b 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -4,6 +4,7 @@ DEPENDS:append:rk3399 = " virtual/arm-none-eabi-gcc-native"
 
 COMPATIBLE_MACHINE:append:rk3399 = "|rk3399"
 COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
+COMPATIBLE_MACHINE:append:px30 = "|px30"
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 SRC_URI += "\
@@ -26,4 +27,8 @@ fixup_baudrate:rk3399() {
 	sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
 }
 
+fixup_baudrate:px30() {
+	sed -i "s/#define PX30_BAUDRATE\s\+.*/#define PX30_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/px30/px30_def.h
+}
+
 do_patch[postfuncs] += "fixup_baudrate"
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 9108a36..de1f2ca 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -11,6 +11,8 @@ EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
 ATF_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
+ATF_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 
 do_compile[depends] .= "${ATF_DEPENDS}"
 
-- 
2.37.3


