Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ABA1E92FCE
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 22:46:32 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.434.1696545991513085783
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 15:46:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SDTHL7pG;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1c5db4925f9so12432685ad.1
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 15:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696545991; x=1697150791; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K9klVg3UdfseDKjJTmVuK6cCLGHvID/kmITubScheuc=;
        b=SDTHL7pG7IqOuBA6S3ek5/Q2XLEu+CO0ysoyyTgp/+eqgClyamvcjfyEVXGgRK6S19
         CaLrz2VzyQ38xrtvareDHxHePpmOMgC1aQ7ly2qEKlVa0S+5r7hdl71dXBMQyXn2HtI0
         ggNaus3gSeYE/ICSIxvKRJZI2arlMaI0CesmzGMCfBdWgoL95qWWuPUAA/966VMnRJm0
         XvKr7eXkhKrjIvY17r0VMivziObKK2f/Pf3BmCna9dGP/7QwfsdSNyzG5DcgcxCXfaqT
         d0mtT0xm+aCNQEENy+a4g6VDz54FBpgfp8f1DfL+OAHchPmWMekXqcZJYWGDqI91Aewg
         Aysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696545991; x=1697150791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9klVg3UdfseDKjJTmVuK6cCLGHvID/kmITubScheuc=;
        b=mGciMcj8ubW6bKhszHOkrlj1G+/ODESkcVzkLqMhZ84WSY5Q4va58mPpW3BWGklsr1
         fk5gx+MEP1z7VxU2vLMbxYH+luxPsczobTBALcd2jBRZzQH1UEPq7O/iVk0NeDZ46tgA
         83YOASELzdrJzM428cMV7lzY6FWs133WSKpVRGqmwGwaUi5M/bOYVhnvvhhOPGzlZaR0
         kY4B/xotvempUnlbPRXJO5hzpjcCtV757iwhGoqqaAtEzv25UgW281GL085zYJjIW8aU
         Lap6bn3r88BaDaMAgjZ3jBa4wp97r+J8A1WdBZfAieQXUtNqe8llkaZ3b+UYnUvZKe/h
         /XbQ==
X-Gm-Message-State: AOJu0YyYC7B8uNiimrWVr5dL143PIpReRA+8gVOVqeb6FebMaP7SXlYt
	2FEMq5+GJ8bX/IgxqMuidi1onX33Hda5OA==
X-Google-Smtp-Source: AGHT+IHc/mpe+IsdbdwOS8cAES4vJz4qwahQ9mLgqIHzGU8uSFuSBoHUJRLaTCFQCdy7IiuN/atJ4A==
X-Received: by 2002:a17:902:9a01:b0:1c1:f0b4:f68f with SMTP id v1-20020a1709029a0100b001c1f0b4f68fmr4647009plp.10.1696545990478;
        Thu, 05 Oct 2023 15:46:30 -0700 (PDT)
Received: from localhost.localdomain ([206.83.112.219])
        by smtp.gmail.com with ESMTPSA id 6-20020a170902c24600b001b89a6164desm2305223plg.118.2023.10.05.15.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 15:46:30 -0700 (PDT)
From: anthony.t.davies@gmail.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Anthony Davies <anthony.t.davies@gmail.com>
Subject: [meta-rockchip] [PATCH] Add support for the Radxa Rock-3a based on rk3568
Date: Fri,  6 Oct 2023 09:45:44 +1100
Message-Id: <20231005224543.1040062-1-anthony.t.davies@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 22:46:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61252

From: Anthony Davies <anthony.t.davies@gmail.com>

Added appropriate inc files and machine.conf

Modified rockchip-rkbin_git.bb to allow machine overrides on
do_deploy.

I have tested this patch on my own rock-3a

Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
---
 README                                  |  1 +
 conf/machine/include/rk3568.inc         | 17 ++++++++++
 conf/machine/rock-3a.conf               | 12 +++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 ++++++++-
 recipes-bsp/u-boot/u-boot%.bbappend     | 43 ++++++++++++++++---------
 5 files changed, 73 insertions(+), 16 deletions(-)
 create mode 100644 conf/machine/include/rk3568.inc
 create mode 100644 conf/machine/rock-3a.conf

diff --git a/README b/README
index 8104474..aa1c834 100644
--- a/README
+++ b/README
@@ -30,6 +30,7 @@ Status of supported boards:
 		vyasa-rk3288
 		firefly-rk3288
 		nanopi-r4s
+    rock-3a
 		rock-5b
 		nanopi-r2s
 	builds:
diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
new file mode 100644
index 0000000..5382b58
--- /dev/null
+++ b/conf/machine/include/rk3568.inc
@@ -0,0 +1,17 @@
+MACHINEOVERRIDES =. "rk3568:"
+DEFAULTTUNE ?= "cortexa55"
+
+require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
+require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-wic.inc
+
+KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
+KERNEL_CLASSES ??= "kernel-fitimage"
+KERNEL_IMAGETYPE ??= "fitImage"
+
+PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
+PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
+
+UBOOT_SUFFIX ?= "itb"
+UBOOT_ENTRYPOINT ?= "0x06000000"
diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
new file mode 100644
index 0000000..452bde0
--- /dev/null
+++ b/conf/machine/rock-3a.conf
@@ -0,0 +1,12 @@
+#@TYPE: Machine
+#@NAME: Radxa Rock3a
+#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based SBC(Single Board Computer) and Compute Module by Radxa.
+#https://wiki.radxa.com/Rock3
+
+require conf/machine/include/rk3568.inc
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
+KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index 7fefb01..273f394 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = ""
 COMPATIBLE_MACHINE:rk3588s = "rk3588s"
+COMPATIBLE_MACHINE:rk3568 = "rk3568"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
@@ -25,7 +26,16 @@ do_install() {
 PACKAGES = "${PN}"
 ALLOW_EMPTY:${PN} = "1"
 
-do_deploy() {
+do_deploy:rk3568() {
+	# Prebuilt TF-A
+	install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
+	# Prebuilt OPTEE-OS
+	install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
+	# Prebuilt U-Boot TPL (DDR init)
+	install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
+}
+
+do_deploy:rk3588s() {
 	# Prebuilt TF-A
 	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
 	# Prebuilt OPTEE-OS
@@ -34,4 +44,8 @@ do_deploy() {
 	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
 }
 
+do_deploy() {
+# Needed as a default perhaps a bb.fatal with a message saying an override needs to be set
+}
+
 addtask deploy after do_install
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index e79c471..5af86aa 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,25 +1,38 @@
+do_compile:append:rock2-square () {
+	# copy to default search path
+	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
+		cp ${B}/spl/${SPL_BINARY} ${B}
+	fi
+}
+
+DEPENDS:append:rock-pi-4 = " gnutls-native"
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
-DEPENDS:append:rock-pi-4 = " gnutls-native"
 
-EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
-EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
+INIT_FIRMWARE_DEPENDS ??= ""
+
 EXTRA_OEMAKE:append:rk3588s = " \
 	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
 	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
 	"
+INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3568 = " rockchip-rkbin:do_deploy"
 
-INIT_FIRMWARE_DEPENDS ??= ""
-INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
-INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE:append:rk3568 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3568.elf"
+ATF_DEPENDS:append:rk3568 = " trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE:append:rk3568 = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3568.bin"
+ATF_DEPENDS:append:rk3568 = " rockchip-rkbin:do_deploy"
+
+EXTRA_OEMAKE:append:rk3588s = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf"
+ATF_DEPENDS:append:rk3588s = " trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE:append:rk3588s = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin"
+ATF_DEPENDS:append:rk3588s = " rockchip-rkbin:do_deploy"
+
+EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
-INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
-do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
+EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
+INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
+INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 
-do_compile:append:rock2-square () {
-	# copy to default search path
-	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
-		cp ${B}/spl/${SPL_BINARY} ${B}
-	fi
-}
+do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
-- 
2.34.1


