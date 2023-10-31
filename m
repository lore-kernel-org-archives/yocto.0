Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1757DC4332F
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 12:58:31 +0000 (UTC)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web10.185173.1698757102976496940
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 05:58:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BUvsaCKl;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: twoerner@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-4a13374a1e8so2294818e0c.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 05:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698757101; x=1699361901; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qz7A5sDkglDDA5wlWN1cHg5yTJ2+v038cwsKuN6IWmE=;
        b=BUvsaCKl4s4O2ThfS5TwN6qUn+xUsN+FjS4UHn4lgDm+w9el/gEjsqewntuumRopUC
         g4O9WBZZT60qFGQj+UNVSQ8/S7mfWcT5Whf9uS3nTgU0gRUnc6g97zehpmnZVshwCE0i
         qryGYKUMa94Fo40QYVV4yvorOsv9LQ8YLSTGrI7kl0QUZxsc7BcsiZHCIaDlND+RjyGd
         1E5jmNay8uSvNVvrSkRFxUoAbn4QV3dLnb4jyKf+bzAIladmkI7jrEcpAHpMsFsIR915
         onTYo8yghNSVqQbMB5caeCXTF4rIMwMi6Iyh6he3jp8nDrHatW6+T3snOAB+t4/CM5IE
         g0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698757101; x=1699361901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qz7A5sDkglDDA5wlWN1cHg5yTJ2+v038cwsKuN6IWmE=;
        b=dVJT1mJzqU/jW+R9lbNJtdn12ANGMgEjVSCegEhHItjZK85GQeWTaMQef2Bk4OnADJ
         9HjElAtdf51vWN3ExvXnJ2IDwj818QlpCUV/0f3PbVyrh4TuFmagKeiWROg+T/QpdLwL
         jTrl0DN42L8E4MLIpcdkTo+Cnp4tX9L2eWVxDRI/WY1mJuAD0vtml275aVlgdwkCzSpl
         V+lNqmNzUnJGF3PtiZczn2yXuVGPoZORVdJtbKLbpaX1h8B5vanfUviTdaUP5ya9MZsZ
         YHI8PqPSB6ABpXqHR9KWtLsR9l/oYvygx+m1n0IzCKkEEJlXsaZYFJ0WTzQlbYFIwyDL
         FeLA==
X-Gm-Message-State: AOJu0YzY/X/T2GQ/HTa8FblMxzvhuqTvGE5fsIQOgPH+QMEP4pqpYgL1
	Uopwu8KcRa8figkSAk2Iket27e04B+8=
X-Google-Smtp-Source: AGHT+IGnV3YL4vHm3HgQT4mqGXq+ZQMDn55SIx0Msf/5G53xEQBFPBt1NMnSGqEU6zTqQy2BbasjNA==
X-Received: by 2002:a67:c30c:0:b0:457:c49c:bc63 with SMTP id r12-20020a67c30c000000b00457c49cbc63mr11882600vsj.6.1698757100660;
        Tue, 31 Oct 2023 05:58:20 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ph27-20020a0562144a5b00b006590d020260sm493982qvb.98.2023.10.31.05.58.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 05:58:19 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 1/1] rock-pi-s: add
Date: Tue, 31 Oct 2023 08:58:05 -0400
Message-ID: <20231031125805.37314-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231031125805.37314-1-twoerner@gmail.com>
References: <20231031125805.37314-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 12:58:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61528

ROCK Pi S is a Rockchip RK3308 based SBC from Radxa. It contains a 64-bit
quad core processor, USB, ethernet, wireless connectivity, and voice
detection engine in 1.7-inches square. The ROCK Pi S comes in two RAM sizes
256MB or 512MB DDR3, and uses an sdmmc card for OS and storage. Optionally,
some versions of the ROCK Pi S provide on-board storage via 1Gb/2Gb/4Gb/8Gb
of SLC NAND flash.

"S" stands for "small square" since the total board size of the rock-pi-s
is 1.7-inches square.

This BSP assumes booting from sdmmc, and using ttyS0 for the serial console
(similar to Raspberry Pi).

The latest version of the binary ddr initializer code from rkbin does not
provide a uart0 option, therefore all diagnostic output from rkbin and u-boot
is lost on the console (and replaced with a stream of gibberish until the
Linux kernel starts). Therefore, by default, the build assumes the user would
prefer to see this information and have the option to interact with U-Boot,
which means an older version of rkbin is used. The user can override this
decision by setting:

	RKBIN_RK3308_LATEST = "1"

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes since v1:
- upstream master now contains a version of u-boot that supports the
  rock-pi-s, therefore using rk3308-specific overrides in the u-boot
  bbappend is no longer necessary
- add a separate rk3308-rkbin recipe instead of loading the rockchip-rkbin
  recipe with rk3308-specific overrides
- allow the user to choose whether they want the rkbin and u-boot debug
  messages to show up on the console (i.e. use an older version of rkbin)
  or have gibberish until the linux kernel starts (use the latest version
  of rkbin) by setting (or not) a variable; default is to use an older
  version
---
 README                                      | 22 +++++++++++
 conf/machine/include/rk3308.inc             | 18 +++++++++
 conf/machine/rock-pi-s.conf                 | 11 ++++++
 recipes-bsp/rkbin/rk3308-rkbin_git.bb       | 41 +++++++++++++++++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 10 +++++
 recipes-bsp/u-boot/u-boot%.bbappend         |  8 ++++
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 7 files changed, 111 insertions(+)
 create mode 100644 conf/machine/include/rk3308.inc
 create mode 100644 conf/machine/rock-pi-s.conf
 create mode 100644 recipes-bsp/rkbin/rk3308-rkbin_git.bb

diff --git a/README b/README
index bcf1e0bba361..e5beaa0b2d49 100644
--- a/README
+++ b/README
@@ -33,11 +33,33 @@ Status of supported boards:
 		rock-5b
 		nanopi-r2s
 		nanopi-m4b
+		rock-pi-s
 	builds:
 		marsboard-rk3066
 		radxarock
 		rock2-square
 
+Notes:
+-----
+	The latest ddr initializer for the rk3308 platform (currently only
+	used by the rock-pi-s machine) does not output diagnostic messages
+	to uart0. This causes a bunch of gibberish to be printed to the
+	console window which only becomes legible once the linux kernel
+	starts. I.e. the console output of the ddr initialization routine,
+	as well as u-boot is lost. An older version of this same binary
+	blob does, however, support output to uart0 (making its diagnostic
+	messages as well as u-boot available on the console). By default
+	the build assumes the user would like to see these message and be
+	able to have the option to interact with u-boot. Iow: for the
+	rock-pi-s an older version of rkbin is used.
+
+	If, however, the user would prefer to use the latest binary ddr
+	initializer from rkbin, simply set:
+
+		RKBIN_RK3308_LATEST = "1"
+	
+	in the configuration (e.g. conf/local.conf).
+
 Maintenance:
 -----------
 	Please send pull requests, patches, comments, or questions to the
diff --git a/conf/machine/include/rk3308.inc b/conf/machine/include/rk3308.inc
new file mode 100644
index 000000000000..19cabafdfac0
--- /dev/null
+++ b/conf/machine/include/rk3308.inc
@@ -0,0 +1,18 @@
+SOC_FAMILY = "rk3308"
+
+DEFAULTTUNE ?= "cortexa35-crypto"
+
+require conf/machine/include/soc-family.inc
+require conf/machine/include/arm/armv8a/tune-cortexa35.inc
+require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-wic.inc
+
+SERIAL_CONSOLES = "1500000;ttyS0"
+
+KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_FEATURES:append:rk3308 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
+KERNEL_CLASSES = "kernel-fitimage"
+KERNEL_IMAGETYPE = "fitImage"
+
+UBOOT_SUFFIX ?= "itb"
+UBOOT_ENTRYPOINT ?= "0x06000000"
diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
new file mode 100644
index 000000000000..79ea73c6b47e
--- /dev/null
+++ b/conf/machine/rock-pi-s.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: Radxa Rock Pi S
+#@DESCRIPTION: ROCK Pi S is a Rockchip RK3308 based SBC by Radxa. "S" stands for "small square"
+#https://wiki.radxa.com/RockpiS
+
+require conf/machine/include/rk3308.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3308-rock-pi-s.dtb"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+UBOOT_MACHINE = "rock-pi-s-rk3308_defconfig"
diff --git a/recipes-bsp/rkbin/rk3308-rkbin_git.bb b/recipes-bsp/rkbin/rk3308-rkbin_git.bb
new file mode 100644
index 000000000000..c6b05b242738
--- /dev/null
+++ b/recipes-bsp/rkbin/rk3308-rkbin_git.bb
@@ -0,0 +1,41 @@
+DESCRIPTION = "Rockchip Firmware and Tool Binaries"
+LICENSE = "CLOSED"
+LIC_FILES_CHKSUM:rk3308 = "file://README;md5=39cc9df955478b8df26158d489fdcc95"
+
+SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
+SRCREV = "e65b97b511f1349156702db40694454c141d8fe2"
+
+PROVIDES += "trusted-firmware-a"
+PROVIDES += "optee-os"
+
+inherit bin_package deploy
+
+S = "${WORKDIR}/git"
+
+COMPATIBLE_MACHINE = "^$"
+COMPATIBLE_MACHINE:rk3308 = "rk3308"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+do_install() {
+	# Nothing in this recipe is useful in a filesystem
+	:
+}
+
+PACKAGES = "${PN}"
+ALLOW_EMPTY:${PN} = "1"
+
+do_deploy:rk3308() {
+	# Prebuilt TF-A
+	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
+	# Prebuilt OPTEE-OS
+	install -m 644 ${S}/bin/rk33/rk3308_bl32_v*.bin ${DEPLOYDIR}/tee-rk3308.bin
+	# Prebuilt U-Boot TPL (DDR init)
+	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart0_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
+}
+
+do_deploy() {
+	bbfatal "COMPATIBLE_MACHINE requires a corresponding do_deploy:<MACHINE>() override"
+}
+
+addtask deploy after do_install
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index a3ab34189041..f1609c7a4957 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -13,6 +13,7 @@ inherit bin_package deploy
 S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "^$"
+COMPATIBLE_MACHINE:rk3308 = "rk3308"
 COMPATIBLE_MACHINE:rk3588s = "rk3588s"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
@@ -25,6 +26,15 @@ do_install() {
 PACKAGES = "${PN}"
 ALLOW_EMPTY:${PN} = "1"
 
+do_deploy:rk3308() {
+	# Prebuilt TF-A
+	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
+	# Prebuilt OPTEE-OS
+	install -m 644 ${S}/bin/rk33/rk3308_bl32_v*.bin ${DEPLOYDIR}/tee-rk3308.bin
+	# Prebuilt U-Boot TPL (DDR init)
+	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart?_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
+}
+
 do_deploy:rk3588s() {
 	# Prebuilt TF-A
 	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index e79c471cf5ce..d902c9a05a83 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,8 +1,10 @@
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
+DEPENDS:append:rock-pi-s = " u-boot-tools-native"
 DEPENDS:append:rock-pi-4 = " gnutls-native"
 
 EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
+EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 EXTRA_OEMAKE:append:rk3588s = " \
@@ -12,6 +14,7 @@ EXTRA_OEMAKE:append:rk3588s = " \
 
 INIT_FIRMWARE_DEPENDS ??= ""
 INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3308 = " ${@bb.utils.contains('RKBIN_RK3308_LATEST', '1', 'rockchip-rkbin', 'rk3308-rkbin', d)}:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
@@ -23,3 +26,8 @@ do_compile:append:rock2-square () {
 		cp ${B}/spl/${SPL_BINARY} ${B}
 	fi
 }
+
+do_compile:append:rk3308() {
+	mkimage -n rk3308 -T rksd -d ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin ${B}/idbloader.img
+	cat ${B}/spl/u-boot-spl.bin >> ${B}/idbloader.img
+}
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index 7da92dbab508..7d8fb8b3d58e 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -15,6 +15,7 @@ COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
 COMPATIBLE_MACHINE:nanopi-r2s = "nanopi-r2s"
 COMPATIBLE_MACHINE:nanopi-m4b = "nanopi-m4b"
+COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.41.0.327.gaa9166bcc0ba


