Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67B7E94139
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 23:27:41 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.8474.1696634860902121905
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 16:27:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D4KvNlaN;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1c77449a6daso22777685ad.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 16:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696634860; x=1697239660; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ij1AYzDm/J9SEWrGGL2RhUnjqo7dU82vY6E66KPWy4=;
        b=D4KvNlaNFOWGg5enAeBHitzldNgjg/Hy2aaJ/lMxoVNsZJ6rzoBIt1dx0jI3KG0MSS
         Jnj4OWgsG9TZPla8E0WidarpQCBib1uNdL2HcOZrsnYDjZp9m/6irJXGMb324KMpZgYT
         K4uBPWOfJTTTa6RhxiMhVqHAAdKcdpCfwA/FE/p6Dw8s5FVXOL2m+mSHyizHSFmGaNWP
         0jT6X8GvXfpeUyYqF/Ldp/xnEVZSPHYNKgNfBKG53cGiGVcD5AvM25o/gC5hczYIkaJx
         qKQ8ZmgDjUtLRLCOHDDm+JQWqMVJAMUnTCrLm5T5jfepyfrkqbY3qsR2EXFZmMQ5i607
         9LHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696634860; x=1697239660;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Ij1AYzDm/J9SEWrGGL2RhUnjqo7dU82vY6E66KPWy4=;
        b=jdEcEBglvjJGKT99NoFNmGJIDkJjwBNlc3RhDilEpsxuq3uAxquc1qSCdIGxAkLDFQ
         xU+WdaxnHj6fJUZKXS5YJaHxvkwlz+/0TnnXZATRiMogQQdU645UcPdbpxg814ZQwrWk
         UNPsOULgNenMsXkkfojhUwffFxYsIpWP0kkL5264T7BtInLTYXmqrurwWLYEPOVfloZk
         WB3ylsuGuMRmv3sDQrgEFkj5sztjLj91mjnxpunwEOAlOEu+cJ4+BtrPoeNxRwDM83pw
         cOj+4f/i+um9MPs6GN+l0F2L/gRBoxLDZzDCbcr7vHayjhMzZd3OU3Ny7egeu8E3Zadq
         e6VA==
X-Gm-Message-State: AOJu0YzGRh7M5C6umtfNHRWzJ2KdnzvnUlTBRz3xejem2OVQn5lnRyh8
	HEBTJa7an8ucIrE6gGZhtvsOF8wQBtStzw==
X-Google-Smtp-Source: AGHT+IEej1yg2ei5oVZt2rqKGn3zolmnrOmQhoFAb05Z8i8becVND09hvNulA+jZUiAx+zDv3tnmeQ==
X-Received: by 2002:a17:902:cec6:b0:1c8:7d41:5b8c with SMTP id d6-20020a170902cec600b001c87d415b8cmr9137563plg.32.1696634859904;
        Fri, 06 Oct 2023 16:27:39 -0700 (PDT)
Received: from localhost.localdomain ([206.83.112.219])
        by smtp.gmail.com with ESMTPSA id iw11-20020a170903044b00b001ab2b4105ddsm4503754plb.60.2023.10.06.16.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 16:27:39 -0700 (PDT)
From: anthony.t.davies@gmail.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Anthony Davies <anthony.t.davies@gmail.com>
Subject: [meta-rockchip] [PATCH v2] rock-3a add
Date: Sat,  7 Oct 2023 10:26:41 +1100
Message-Id: <20231006232640.1157089-1-anthony.t.davies@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 23:27:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61275

From: Anthony Davies <anthony.t.davies@gmail.com>

Add support for the Radxa Rock 3A
https://wiki.radxa.com/Rock3/3a

The TF-A project does not currently have support for
the rk3568. Therefore, for the time-being, the only way to supply a
TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
switching.

recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
override to allow both rk3568 and rk3588s to use differnet binary blobs

Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
---
 README                                  |  1 +
 conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
 conf/machine/rock-3a.conf               | 12 ++++++++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
 recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
 5 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 conf/machine/include/rk3568.inc
 create mode 100644 conf/machine/rock-3a.conf

diff --git a/README b/README
index 8104474..3357b47 100644
--- a/README
+++ b/README
@@ -32,6 +32,7 @@ Status of supported boards:
 		nanopi-r4s
 		rock-5b
 		nanopi-r2s
+    rock-3a
 	builds:
 		marsboard-rk3066
 		radxarock
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
index 0000000..2ed83a3
--- /dev/null
+++ b/conf/machine/rock-3a.conf
@@ -0,0 +1,12 @@
+#@TYPE: Machine
+#@NAME: Radxa Rock 3a
+#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based
+#SBC(Single Board Computer) and Compute Module by Radxa.
+#https://wiki.radxa.com/Rock3
+
+require conf/machine/include/rk3568.inc
+
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
index e79c471..66c81da 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -9,12 +9,17 @@ EXTRA_OEMAKE:append:rk3588s = " \
 	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
 	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
 	"
+EXTRA_OEMAKE:append:rk3568 = " \
+	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3568.elf \
+	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3568.bin \
+	"
 
 INIT_FIRMWARE_DEPENDS ??= ""
 INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3568 = " rockchip-rkbin:do_deploy"
 do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
 
 do_compile:append:rock2-square () {
-- 
2.34.1


