Return-Path: <abhisit.sangjan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12A4FC35274
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 15:31:05 +0000 (UTC)
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
 by mx.groups.io with SMTP id smtpd.web11.65483.1702654258776568033
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 07:30:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IFFAqNtN;
 spf=pass (domain: gmail.com, ip: 209.85.214.193, mailfrom: abhisit.sangjan@gmail.com)
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-1d069b1d127so4115825ad.0
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 07:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702654258; x=1703259058; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cWbrmgQQtn9wqPLmpg3NgoG+5/Mjpz5X8mp6GgovcAw=;
        b=IFFAqNtNi/X2WZ0s4RdwQcnyz4Gx1uyXg9QJF6HLi5GdT4bV6TquCBjZPKKoY8PeH7
         ZBZulQ8xG3z8bvzmUmyEtZ8Og9l2qwiGfLyvOo2XTNuKtpihkoMUtNECGxEqRYqT4B45
         442L7SQ4gDSibJB/N8JVZ2AuA/hlvhAdgyjHSh7Psl7FyDF4kigv0V+X0dqvkjD6waCh
         /CsUQ5aL+h9t2khVvFu3vDbIHJqK5oip1DA36T2L4qtNK2zQ/vtro98/Fv2iXPCWeGPa
         lOCxjyH6Z5TVynctfuzecUkd+2QJtPTQpYv+VT3jInawbqL7mv1tTH4NbI0b8ngJP8AJ
         5a7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702654258; x=1703259058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cWbrmgQQtn9wqPLmpg3NgoG+5/Mjpz5X8mp6GgovcAw=;
        b=jU18MnOvxzxv3EQTw0tSVTh7VrFcXEBKcQuZhnclMZ56yzzwxgHj+SnWdatE1IoGrd
         IC+RZXCHMLPJW6ER/jbRr58udlP1NoEkfm5er+58gO5sxpWrN//2+tf1X3ThPsySNLOy
         OsTGSrLwEbx9EaOdUySiipIecs2mTQ3Yy2oWs8vQfjJ2mOr4nUbErVcyzSo61C073RMK
         qok/BdZ+vSCx55wGm5jA37pX1OTGyYIwntSbOE5GQ81+LhM5dpZKBSws3GdrJyY8beu8
         vuCluE0yqFgOpF2pFi4E19BdkO8z2V4TwvVMamz0wa3MKZjGbyX3GQjsIdkHp0/+pNvc
         rong==
X-Gm-Message-State: AOJu0Yw5QC5vJfBvyatk1i6EvHK/9ZprBfTY0TEIlf0IVqlhPoE0onie
	nJYETc+z8xWWBo2UnT+W+vKfKJB4c5kDypC3
X-Google-Smtp-Source: AGHT+IFs2CXrKFOmIIScL+J6SxgkabYVCy7F2/wxqq/CRdweu6J2O1GhOMrL0mgtuSU73KEdQikQSw==
X-Received: by 2002:a17:902:e74e:b0:1cf:6453:b268 with SMTP id p14-20020a170902e74e00b001cf6453b268mr7261501plf.53.1702654257854;
        Fri, 15 Dec 2023 07:30:57 -0800 (PST)
Received: from t1700.aisfiber ([2405:9800:b950:b516::1])
        by smtp.googlemail.com with ESMTPSA id je11-20020a170903264b00b001cffe1e7374sm14462742plb.214.2023.12.15.07.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 07:30:57 -0800 (PST)
From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Abhisit Sangjan <abhisit.sangjan@gmail.com>
Subject: [meta-rockchip] [PATCH] orange-pi-5-plus: Support Xunlong Orange Pi 5 Plus single-board computer
Date: Fri, 15 Dec 2023 22:30:51 +0700
Message-ID: <20231215153051.6848-1-abhisit.sangjan@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 15:31:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61907

Orange Pi 5 Plus is RK3588 based SBC featuring:
- 2x 2.5G ethernet ports – onboard NIC hooked to PCIe 2.0 interface
- 2x USB 2.0 host ports
- 2x USB 3.0 host ports (exposed over USB 3.0 hub)
- Type-C port featuring USB 2.0/3.0 and Alt-DP mode
- PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket
- RTC
- ES8388 on-board sound codec – jack in/out, onboard mic, speaker amplifier
- SPI NOR flash
- RGB LED (R is always on)
- IR receiver
- PCIe 3.0 on the bottom for NVMe, etc.
- 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)
- Power, recovery and Mask ROM buttons
- 2x HDMI out, 1x HDMI in
- Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI
- 4 GB, 8 GB, 16 GB and 32 GB of RAM

Signed-off-by: Abhisit Sangjan <abhisit.sangjan@gmail.com>
---
 README                                        |  3 ++-
 conf/machine/include/rk3588.inc               |  4 +---
 conf/machine/orange-pi-5-plus.conf            | 14 ++++++++++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 10 ++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  5 +++++
 recipes-bsp/u-boot/u-boot_2024.01.bb          |  5 +++++
 recipes-kernel/linux/linux-yocto-dev.bbappend |  5 +++++
 7 files changed, 42 insertions(+), 4 deletions(-)
 create mode 100644 conf/machine/orange-pi-5-plus.conf
 create mode 100644 recipes-bsp/u-boot/u-boot_2024.01.bb

diff --git a/README b/README
index e5beaa0..4d1a83e 100644
--- a/README
+++ b/README
@@ -31,6 +31,7 @@ Status of supported boards:
 		firefly-rk3288
 		nanopi-r4s
 		rock-5b
+		orange-pi-5-plus
 		nanopi-r2s
 		nanopi-m4b
 		rock-pi-s
@@ -57,7 +58,7 @@ Notes:
 	initializer from rkbin, simply set:
 
 		RKBIN_RK3308_LATEST = "1"
-	
+
 	in the configuration (e.g. conf/local.conf).
 
 Maintenance:
diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
index 34f0627..46ac2ba 100644
--- a/conf/machine/include/rk3588.inc
+++ b/conf/machine/include/rk3588.inc
@@ -1,6 +1,4 @@
 MACHINEOVERRIDES =. "rk3588:"
 
-# the rk3588s is a "stripped-down" version of the rk3588
-# in the kernel's device-tree the rk3588 builds on top of the rk3588s
-# so anything that is valid for the rk3588s is valid for the rk3588
+# The rk3588 is a "full" version of the rk3588 series
 require conf/machine/include/rk3588s.inc
diff --git a/conf/machine/orange-pi-5-plus.conf b/conf/machine/orange-pi-5-plus.conf
new file mode 100644
index 0000000..a222c84
--- /dev/null
+++ b/conf/machine/orange-pi-5-plus.conf
@@ -0,0 +1,14 @@
+#@TYPE: Machine
+#@NAME: Xunlong Orange Pi 5 Plus
+#@DESCRIPTION: It is the 5th generation of single-board computer designed by Kunlong.
+#http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-5-plus-32GB.html
+
+require conf/machine/include/rk3588.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
+KERNEL_DEVICETREE = "rockchip/rk3588-orangepi-5-plus.dtb"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+UBOOT_MACHINE = "orangepi-5-plus-rk3588_defconfig"
+
+PREFERRED_VERSION_u-boot:orange-pi-5-plus = "2024.01"
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index f1609c7..5573ad2 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "^$"
 COMPATIBLE_MACHINE:rk3308 = "rk3308"
+COMPATIBLE_MACHINE:rk3588 = "rk3588"
 COMPATIBLE_MACHINE:rk3588s = "rk3588s"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
@@ -35,6 +36,15 @@ do_deploy:rk3308() {
 	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart?_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
 }
 
+do_deploy:rk3588() {
+	# Prebuilt TF-A
+	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
+	# Prebuilt OPTEE-OS
+	install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin ${DEPLOYDIR}/tee-rk3588.bin
+	# Prebuilt U-Boot TPL (DDR init)
+	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
+}
+
 do_deploy:rk3588s() {
 	# Prebuilt TF-A
 	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index d902c9a..afd3344 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -7,6 +7,10 @@ EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
 EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
+EXTRA_OEMAKE:append:rk3588 = " \
+	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
+	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
+	"
 EXTRA_OEMAKE:append:rk3588s = " \
 	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
 	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
@@ -17,6 +21,7 @@ INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3308 = " ${@bb.utils.contains('RKBIN_RK3308_LATEST', '1', 'rockchip-rkbin', 'rk3308-rkbin', d)}:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3588 = " rockchip-rkbin:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
 do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
 
diff --git a/recipes-bsp/u-boot/u-boot_2024.01.bb b/recipes-bsp/u-boot/u-boot_2024.01.bb
new file mode 100644
index 0000000..cfa3a87
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot_2024.01.bb
@@ -0,0 +1,5 @@
+require recipes-bsp/u-boot/u-boot-common.inc
+require recipes-bsp/u-boot/u-boot.inc
+
+SRCREV:orange-pi-5-plus = "b51cf8bb09b67958fef9424f7c9fa202a4948c12"
+SRC_URI:orange-pi-5-plus = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index 419ebc1..bed6ed2 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,3 +1,8 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE:rock-5b = "rock-5b"
 SRC_URI:append:rock-5b = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
+
+KBRANCH:orange-pi-5-plus = "v6.7/standard/base"
+LINUX_VERSION:orange-pi-5-plus = "6.7"
+COMPATIBLE_MACHINE:orange-pi-5-plus = "orange-pi-5-plus"
+SRC_URI:append:orange-pi-5-plus = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
-- 
2.43.0


