Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C2CBE748F5
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 13:08:24 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.59054.1696165696197783067
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Oct 2023 06:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V2Dh1vie;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7741bffd123so1011000385a.0
        for <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 06:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696165694; x=1696770494; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GHL26KqcwrHJAzUu95wxF5P0PNPOpOHkCr8Ghx3Pz40=;
        b=V2Dh1viefnUuvK2XTTfqDaiVL8Df36UerEHMbhFsmu7yo+g4RV0wLQ/j7UPPqt/Jvw
         DtMmAvBajznV+3pG2I965W/8oABmlXn9ydMAqP/esMHhH33Q2OKwekK5F1wrh1GPlBx8
         LhqCJyDoIEx3IXPD9n1lL/hkMwr7UX7RbtCHmBhzZ23pHs9r16lAogdfo5DgkPzN7L4M
         WoCoo0HiEWSr8gZ/8coxUZhUQik6xkO759fdXFtem9X+Req8Wt+Izrm2+tme1f97wGjw
         qr0kCACnai6GImh8llKgiW2a6E7D3lKHXkzPsYmSY0+P1Z0NGXQxHzRB8oMFpX8QEiJQ
         xY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696165694; x=1696770494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GHL26KqcwrHJAzUu95wxF5P0PNPOpOHkCr8Ghx3Pz40=;
        b=AkVNIhKJOhdJuPX/rMr4lzC4WYCmQVYKq0BXYwNR6deGBKOnx7HIYdwN2lB7BbkR0O
         hki7iRvXYuxRNf77o0s2NXXbcWpFow9E+gQUsVnHWs9j2EdBQtNwRwrlq71MHlAyLBCU
         Ekx1fITG25A+tycCZHnGGUgcxHwdxgR6onoL3GQgyVb2GbEB9bWfVKMxTjemQMrEIbAv
         Wq2+POKvr/mf88MFoIH/KtbQwcVLRg4nvPA6yGidgVI3MXaUtu9+/awJ4a8kI21SIYGH
         XXnDDH5IKEOBUWFGpuMz6g20zYYHQmS0pduU3w1mkae6MKNV0NbWYhYSIkqS2rCD7mgw
         /8Ng==
X-Gm-Message-State: AOJu0YzMKxWsJ7R6eaLlyFki6/ncSJdYkDiZOnwg4lnRyp4FgUZvXTRw
	t1MemJpLVQs4gcGoMIXyB3m+jR0Glgc=
X-Google-Smtp-Source: AGHT+IHHOnOdL7hDwdNgsNcLiJryQeN18ioK72El8A6yaVFsZA7Wrw93wQzaRgKZCJFjhjdpkLjTNg==
X-Received: by 2002:a05:620a:23a:b0:774:226b:c327 with SMTP id u26-20020a05620a023a00b00774226bc327mr8420255qkm.67.1696165694549;
        Sun, 01 Oct 2023 06:08:14 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y12-20020a37e30c000000b00775afce4235sm115553qki.131.2023.10.01.06.08.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 06:08:13 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 3/3] rock-pi-s: add
Date: Sun,  1 Oct 2023 09:08:03 -0400
Message-ID: <20231001130803.18662-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231001130803.18662-1-twoerner@gmail.com>
References: <20231001130803.18662-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 13:08:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61181

ROCK Pi S is a Rockchip RK3308 based SBC from Radxa. It contains a 64-bit
quad core processor, USB, ethernet, wireless connectivity, and voice
detection engine in 1.7-inches square. The ROCK Pi S comes in two RAM sizes
256MB or 512MB DDR3, and uses sdmmc card for OS and storage. Optionally, some
versions of the ROCK Pi S provide on-board storage via 1Gb/2Gb/4Gb/8Gb of
SLC NAND flash.

"S" stands for "small square" since the total board size of the rock-pi-s is
1.7-inches square.

This BSP assumes booting from sdmmc, and using ttyS0 for the serial console
(similar to Raspberry Pi).

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                      |  1 +
 conf/machine/include/rk3308.inc             | 18 ++++++++++++++++++
 conf/machine/rock-pi-s.conf                 | 11 +++++++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 17 +++++++++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend         | 11 +++++++++++
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 6 files changed, 59 insertions(+)
 create mode 100644 conf/machine/include/rk3308.inc
 create mode 100644 conf/machine/rock-pi-s.conf

diff --git a/README b/README
index d4576d73c636..e815fb47ff5f 100644
--- a/README
+++ b/README
@@ -31,6 +31,7 @@ Status of supported boards:
 		firefly-rk3288
 		nanopi-r4s
 		rock-5b
+		rock-pi-s
 	builds:
 		marsboard-rk3066
 		radxarock
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
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index 7fefb017053b..49e1e682eb7d 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -1,9 +1,12 @@
 DESCRIPTION = "Rockchip Firmware and Tool Binaries"
 LICENSE = "Proprietary"
+LICENSE:rk3308 = "CLOSED"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
+LIC_FILES_CHKSUM:rk3308 = "file://README;md5=39cc9df955478b8df26158d489fdcc95"
 
 SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
 SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
+SRCREV:rk3308 = "e65b97b511f1349156702db40694454c141d8fe2"
 
 PROVIDES += "trusted-firmware-a"
 PROVIDES += "optee-os"
@@ -14,6 +17,7 @@ S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = ""
 COMPATIBLE_MACHINE:rk3588s = "rk3588s"
+COMPATIBLE_MACHINE:rk3308 = "rk3308"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
@@ -26,6 +30,19 @@ PACKAGES = "${PN}"
 ALLOW_EMPTY:${PN} = "1"
 
 do_deploy() {
+	:
+}
+
+do_deploy:append:rk3308() {
+	# Prebuilt TF-A
+	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
+	# Prebuilt OPTEE-OS
+	install -m 644 ${S}/bin/rk33/rk3308_bl32_v*.bin ${DEPLOYDIR}/tee-rk3308.bin
+	# prebuilt tpl
+	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart0_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
+}
+
+do_deploy:append:rk3588s() {
 	# Prebuilt TF-A
 	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
 	# Prebuilt OPTEE-OS
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index e79c471cf5ce..54f0b7406dd7 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,8 +1,13 @@
+SRCREV:rk3308 = "2173c4a990664d8228d4dadd814bd64fdc12948f"
+SRC_URI:rk3308 = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
+
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
+DEPENDS:append:rk3308 = " u-boot-tools-native"
 DEPENDS:append:rock-pi-4 = " gnutls-native"
 
 EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
+EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 EXTRA_OEMAKE:append:rk3588s = " \
@@ -12,6 +17,7 @@ EXTRA_OEMAKE:append:rk3588s = " \
 
 INIT_FIRMWARE_DEPENDS ??= ""
 INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3308 = " rockchip-rkbin:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
@@ -23,3 +29,8 @@ do_compile:append:rock2-square () {
 		cp ${B}/spl/${SPL_BINARY} ${B}
 	fi
 }
+
+do_compile:append:rk3308() {
+	mkimage -n rk3308 -T rksd -d ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin ${B}/idbloader.img
+	cat ${B}/spl/u-boot-spl.bin >> ${B}/idbloader.img
+}
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index 53833f1cc3f4..61c89f70d8dc 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -13,6 +13,7 @@ COMPATIBLE_MACHINE:nanopi-m4-2gb = "nanopi-m4-2gb"
 COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
+COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.41.0.327.gaa9166bcc0ba


