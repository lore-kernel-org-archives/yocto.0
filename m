Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web09.12679.1628099403673429905
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 10:50:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dc7TNT1t;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id db14so1480503qvb.10
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 10:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ov/vZ6wCgheWg72upsFhT/f6Pl05DBNz41w8XOMfsB0=;
        b=dc7TNT1tGo0XtN+f987HIitvBozZFtoohAPJ96DS++cLkIeBu/HbMHNRkoVCHcSpsQ
         WdafzqRurTus4cvmrrqew3uEtu/7bYm8dZPa2XBDakSirOhPM7BFvKCWz5uvy+fvPwPF
         amHcnNUKPpQRbwxi2aAOj1+11pG9TaFsSJU/C+kF7dpAPZY67PG3Go8NsnwsJElN72YU
         DHkV9Vhqb3G3BmT+LJL+SHY9uv2brqXvu+Z1+zH9+QrQSIr7Nq4BkoeK6FF+v1F+O1ED
         o9J7MWQbGgEEfpDzyFO5xXu6ufvSECVYD6R2AM5u/IDduZRakkcdafaxH9Pn9QM//W1B
         R1Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ov/vZ6wCgheWg72upsFhT/f6Pl05DBNz41w8XOMfsB0=;
        b=IOltvwHJ3ttp/gOaFH+uyliZnDB9Ccrfh28UvvTJ7HgeIjoY99q88ATGL9AYMdZBm2
         CnnlPJV7vpXtgACc4J47Zz1+0/oYAQTiuNP2ToPXEbhJ9l05pR7RSjy51WN0plFliqh4
         hzykNE0YBR92KfyAgmk+7obdbGfcG8yvCqsjYOrnlPhIkn/kyS24AS5cHZM+qmHAy8Pt
         2HPVASzJMfm7vjWvUksJVDeO12QVySEgPdc2bHJwE/wwPjUBjxzj6+t4GdNTtd1BA9i+
         ir1LGgfdWs98XwohaNQIk450H0ZOQ0ydf07F6mhLN9MlhumiFwPSGBa/9szI+5ZEtpJh
         FkcQ==
X-Gm-Message-State: AOAM5307fpsCKDX4XBLN9mWyTw/eoswbnnfnxTJbRqttpvp48L12Xt8i
	x+VoowQS73UnXFk1jxVL/HIviybnrOY=
X-Google-Smtp-Source: ABdhPJwut1irUMvpuv1tcEE4+b30UJ7B8TW9iy8CWJIBu0sXpwT94/4QqImWHhOlELorJW8fvzTdvA==
X-Received: by 2002:a05:6214:10c8:: with SMTP id r8mr731100qvs.28.1628099402419;
        Wed, 04 Aug 2021 10:50:02 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h16sm1098436qtx.23.2021.08.04.10.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 10:50:01 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH 2/2] switch to the new bitbake OVERRIDE syntax
Date: Wed,  4 Aug 2021 13:49:53 -0400
Message-Id: <20210804174953.12346-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210804174953.12346-1-twoerner@gmail.com>
References: <20210804174953.12346-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With bitbake commit 7dcf317cc141dc980634f8c18bfa84f83e57206a
("bitbake: Switch to using new override syntax"), applied on
Aug 2, 2021, the OVERRIDE separator is now a colon instead of
an underscore. Therefore all builds performed with a bitbake
before this change must use a meta-rockchip commit before this
one, and any builds performed with a bitbake after this change
must use a meta-rockchip starting from this commit onwards.

Build-tested for all meta-rockchip MACHINEs.

Run tested on:
- tinker-board
- nanopi-m4-2gb
- rock64
- rock-pi-4b
- rock-pi-e

The tinker-board and rock-pi-e work fine. The rest of the boards
seem to have a, hopefully unrelated, issue running a
5.13-yocto-standard kernel. However, all boards work with the
5.10-yocto-standard kernel.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/rockchip-gpt-img.bbclass              |  6 ++--
 conf/machine/include/rk3288.inc               |  2 +-
 conf/machine/include/rk3328.inc               |  2 +-
 conf/machine/include/rk3399.inc               |  2 +-
 conf/machine/include/rockchip-defaults.inc    |  2 +-
 conf/machine/include/rockchip-wic.inc         |  2 +-
 conf/machine/rock-pi-e.conf                   |  4 +--
 .../recipes-qt/qt5/qtbase_%.bbappend          | 10 +++----
 .../trusted-firmware-a_%.bbappend             |  8 +++---
 recipes-bsp/u-boot/u-boot%.bbappend           | 10 +++----
 recipes-graphics/mesa/mesa_%.bbappend         |  4 +--
 recipes-kernel/linux/linux-yocto%.bbappend    | 28 +++++++++----------
 recipes-kernel/linux/linux-yocto_5.4.bbappend |  4 +--
 13 files changed, 42 insertions(+), 42 deletions(-)

diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
index 3ee46c8..434c100 100644
--- a/classes/rockchip-gpt-img.bbclass
+++ b/classes/rockchip-gpt-img.bbclass
@@ -37,10 +37,10 @@ do_image_rockchip_gpt_img[depends] = "parted-native:do_populate_sysroot \
 	virtual/kernel:do_deploy \
 	virtual/bootloader:do_deploy"
 
-PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_loader1_image"
-PER_CHIP_IMG_GENERATION_COMMAND_rock2-square = "generate_rock2_loader1_image"
+PER_CHIP_IMG_GENERATION_COMMAND:rk3288 = "generate_rk3288_loader1_image"
+PER_CHIP_IMG_GENERATION_COMMAND:rock2-square = "generate_rock2_loader1_image"
 
-IMAGE_CMD_rockchip-gpt-img () {
+IMAGE_CMD:rockchip-gpt-img () {
 	# Change to image directory
 	cd ${DEPLOY_DIR_IMAGE}
 
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 6b5f70a..017f9d7 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -12,5 +12,5 @@ SERIAL_CONSOLES = "115200;ttyS2"
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
 
-PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
+PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
 UBOOT_SUFFIX ?= "bin"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index 70261a0..70189f1 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -20,4 +20,4 @@ TFA_BUILD_TARGET = "bl31"
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
-PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
+PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 3fc712f..4149092 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -20,4 +20,4 @@ TFA_BUILD_TARGET = "bl31"
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
-PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
+PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 905b2a6..455cca8 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -5,7 +5,7 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 KCONFIG_MODE ?= "alldefconfig"
 
 # xserver
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
+PREFERRED_PROVIDER:virtual/xserver = "xserver-xorg"
 XSERVER = " \
 	xserver-xorg \
 	xserver-xorg-utils \
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 61d9f3d..b5939f7 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -23,7 +23,7 @@ RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
 # boot device (sd-card/emmc)
 RK_BOOT_DEVICE ??= "mmcblk0"
 
-WICVARS_append = " \
+WICVARS:append = " \
 	RK_BOOT_DEVICE \
 	RK_CONSOLE_BAUD \
 	RK_CONSOLE_DEVICE \
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 9cd3ed4..7f49c9f 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -7,9 +7,9 @@ require conf/machine/include/rk3328.inc
 
 MACHINEOVERRIDES =. "rock-pi-e:"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
+PREFERRED_PROVIDER:virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
-PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
+PREFERRED_PROVIDER:virtual/bootloader = "u-boot"
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
index a977229..0ced545 100644
--- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
+++ b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
@@ -1,9 +1,9 @@
-PACKAGECONFIG_GL_rk3399 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'gl', \
+PACKAGECONFIG_GL:rk3399 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'gl', \
                               bb.utils.contains('DISTRO_FEATURES', 'opengl', 'eglfs gles2', \
                                                 '', d), d)}"
-PACKAGECONFIG_GL_append_rk3399 = " kms gbm"
+PACKAGECONFIG_GL:append:rk3399 = " kms gbm"
 
-PACKAGECONFIG_FONTS_rk3399 = "fontconfig"
+PACKAGECONFIG_FONTS:rk3399 = "fontconfig"
 
-PACKAGECONFIG_append_rk3399 = " libinput examples tslib xkbcommon"
-PACKAGECONFIG_remove_rk3399 = "tests"
+PACKAGECONFIG:append:rk3399 = " libinput examples tslib xkbcommon"
+PACKAGECONFIG:remove:rk3399 = "tests"
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index c90673e..f7777a7 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -1,11 +1,11 @@
 # Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
 # toolchain
-DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
+DEPENDS:append:rk3399 = " virtual/arm-none-eabi-gcc-native"
 
-COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
-COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
+COMPATIBLE_MACHINE:append:rk3399 = "|rk3399"
+COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 SRC_URI += "\
     file://serial-console-baudrate.patch \
     file://0001-Fix-build-with-gcc-11.patch \
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 95c019d..7916e45 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,4 +1,4 @@
-do_compile_append_rock2-square () {
+do_compile:append:rock2-square () {
 	# copy to default search path
 	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
 		cp ${B}/spl/${SPL_BINARY} ${B}
@@ -7,10 +7,10 @@ do_compile_append_rock2-square () {
 
 ATF_DEPENDS ??= ""
 
-EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
-ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
-EXTRA_OEMAKE_append_rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-ATF_DEPENDS_rk3328 = " virtual/trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
+ATF_DEPENDS:rk3399 = " virtual/trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
+ATF_DEPENDS:rk3328 = " virtual/trusted-firmware-a:do_deploy"
 
 do_compile[depends] .= "${ATF_DEPENDS}"
 
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index 3e8711c..b9089c9 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,2 +1,2 @@
-PACKAGECONFIG_append_rk3288 = " kmsro panfrost"
-PACKAGECONFIG_append_rk3399 = " kmsro panfrost"
+PACKAGECONFIG:append:rk3288 = " kmsro panfrost"
+PACKAGECONFIG:append:rk3399 = " kmsro panfrost"
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
index c2fe9ad..cf63a30 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -1,17 +1,17 @@
-COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
-COMPATIBLE_MACHINE_rock2-square = "rock2-square"
-COMPATIBLE_MACHINE_radxarock = "radxarock"
-COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
-COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
-COMPATIBLE_MACHINE_tinker-board = "tinker-board"
-COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
-COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
-COMPATIBLE_MACHINE_nanopi-m4 = "nanopi-m4"
-COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
-COMPATIBLE_MACHINE_rock64 = "rock64"
-COMPATIBLE_MACHINE_rock-pi-e = "rock-pi-e"
+COMPATIBLE_MACHINE:marsboard-rk3066 = "marsboard-rk3066"
+COMPATIBLE_MACHINE:rock2-square = "rock2-square"
+COMPATIBLE_MACHINE:radxarock = "radxarock"
+COMPATIBLE_MACHINE:firefly-rk3288 = "firefly-rk3288"
+COMPATIBLE_MACHINE:vyasa-rk3288 = "vyasa-rk3288"
+COMPATIBLE_MACHINE:tinker-board = "tinker-board"
+COMPATIBLE_MACHINE:tinker-board-s = "tinker-board-s"
+COMPATIBLE_MACHINE:rock-pi-4 = "rock-pi-4"
+COMPATIBLE_MACHINE:nanopi-m4 = "nanopi-m4"
+COMPATIBLE_MACHINE:nanopi-m4-2gb = "nanopi-m4-2gb"
+COMPATIBLE_MACHINE:rock64 = "rock64"
+COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 # indeed applicable to all rk3328 boards
-SRC_URI_append_rock64 = " file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
+SRC_URI:append:rock64 = " file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend b/recipes-kernel/linux/linux-yocto_5.4.bbappend
index e832529..31f118e 100644
--- a/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -1,5 +1,5 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
 # tinker-board and tinker-board-s. rk3288 covers both
-SRC_URI_append_rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
+SRC_URI:append:rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
 
-- 
2.30.0.rc0

