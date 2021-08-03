Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web09.1337.1628010154394754346
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 10:02:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BPCoqwhP;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id g23-20020a17090a5797b02901765d605e14so5603680pji.5
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 10:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7iGTBpxlMq9LJdyDgOsJEM6gpDHuvkq0kt6KpOgAGOI=;
        b=BPCoqwhPK1guCJW3QJ4h8RL7O2L3di2F+p8gZPKMG63gJ3jOEPKap9Hlf0qSQfXe7S
         UY2BCgY8k0tGi9FFBoTrNHiWNi5HrLZWzz6v/ESHEB/H0GyACOxKdVT5MDkLo7bPGZgY
         NF4bxHz3AbwILVJvpN8JLl2DwdnXxfU6ee9Y1Q6SyzproKWqOIDnuzY9WTE5Y4klBYYc
         REVCygQtu8+Vtvd733b/C165DptrH2SEXTizfc/65HLmpgn3VoQREUXRAyak9q7M29gb
         X/HPesLZbH3o35TJXKfOtTfsxVnKFeEp8INiYRTVRvJY7656T0vzxMP43QthlOtd3+8F
         T8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7iGTBpxlMq9LJdyDgOsJEM6gpDHuvkq0kt6KpOgAGOI=;
        b=sc9r4McqjB6LJl1+65RWY6OE/+ikqAS+tZarMCxZFTGWaLLK0cAvppgP+hN/Jc3GIn
         hJHaExcuC9wWNc1Ffv706uLAuxbEKQpSQeDID49x7jb9Capv78zVxaR5D+wYgnkxauJ4
         K/gfL0n1+ftFzpzVyjiR1tRiP6sHIcfaga9cbn3o4SxpLqPS6brxRKrbwX2WAYEND51Y
         1wVUzLmLlsTebmQGxU04q+7m3SyRqB68BwjAFnpwcxdR13rDUfBZagoVByS4YrX/XWqU
         DGQ5Oo65knCC9H8aymWhErUCfMV/pkCZ0mQtfmfQLGlITuC9MakBUNJQ/wIJ9XI6XM7h
         +QcQ==
X-Gm-Message-State: AOAM532IzJ66844uqHERZmzEnMnTbLaxQCHh8kJpJKLfPCHNbgmLW+ug
	6MRmchm3nj+TaWjc9aX9uD3qwlIRIXGZKw==
X-Google-Smtp-Source: ABdhPJwTYyAhkDgEAlUW6qh4GJ2ota+Rp1Xgv3gg/8VNjUEds5rnc6kSN5DtySMSbPQO+lutkD91Vg==
X-Received: by 2002:a17:90b:3ecd:: with SMTP id rm13mr8660586pjb.109.1628010153621;
        Tue, 03 Aug 2021 10:02:33 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0:db81:2f56:60e4:2c64])
        by smtp.gmail.com with ESMTPSA id u13sm6526069pfi.51.2021.08.03.10.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 10:02:32 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH 1/2] layer: Convert to new override syntax
Date: Tue,  3 Aug 2021 10:02:29 -0700
Message-Id: <20210803170230.2647035-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 classes/rockchip-gpt-img.bbclass                          | 2 +-
 conf/machine/include/rockchip-wic.inc                     | 2 +-
 dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 6 +++---
 .../trusted-firmware-a/trusted-firmware-a_%.bbappend      | 8 ++++----
 recipes-bsp/u-boot/u-boot%.bbappend                       | 6 +++---
 recipes-graphics/mesa/mesa_%.bbappend                     | 4 ++--
 recipes-kernel/linux/linux-yocto%.bbappend                | 4 ++--
 recipes-kernel/linux/linux-yocto_5.4.bbappend             | 4 ++--
 8 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
index 3ee46c8..4d22e3a 100644
--- a/classes/rockchip-gpt-img.bbclass
+++ b/classes/rockchip-gpt-img.bbclass
@@ -40,7 +40,7 @@ do_image_rockchip_gpt_img[depends] = "parted-native:do_populate_sysroot \
 PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_loader1_image"
 PER_CHIP_IMG_GENERATION_COMMAND_rock2-square = "generate_rock2_loader1_image"
 
-IMAGE_CMD_rockchip-gpt-img () {
+IMAGE_CMD:rockchip-gpt-img () {
 	# Change to image directory
 	cd ${DEPLOY_DIR_IMAGE}
 
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
diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
index a977229..645bf8d 100644
--- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
+++ b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
@@ -1,9 +1,9 @@
 PACKAGECONFIG_GL_rk3399 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'gl', \
                               bb.utils.contains('DISTRO_FEATURES', 'opengl', 'eglfs gles2', \
                                                 '', d), d)}"
-PACKAGECONFIG_GL_append_rk3399 = " kms gbm"
+PACKAGECONFIG_GL:append_rk3399 = " kms gbm"
 
 PACKAGECONFIG_FONTS_rk3399 = "fontconfig"
 
-PACKAGECONFIG_append_rk3399 = " libinput examples tslib xkbcommon"
-PACKAGECONFIG_remove_rk3399 = "tests"
+PACKAGECONFIG:append_rk3399 = " libinput examples tslib xkbcommon"
+PACKAGECONFIG:remove_rk3399 = "tests"
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index c90673e..05fdc61 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -1,11 +1,11 @@
 # Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
 # toolchain
-DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
+DEPENDS:append_rk3399 = " virtual/arm-none-eabi-gcc-native"
 
-COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
-COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
+COMPATIBLE_MACHINE:append_rk3399 = "|rk3399"
+COMPATIBLE_MACHINE:append_rk3328 = "|rk3328"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 SRC_URI += "\
     file://serial-console-baudrate.patch \
     file://0001-Fix-build-with-gcc-11.patch \
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 95c019d..93b629b 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,4 +1,4 @@
-do_compile_append_rock2-square () {
+do_compile:append_rock2-square () {
 	# copy to default search path
 	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
 		cp ${B}/spl/${SPL_BINARY} ${B}
@@ -7,9 +7,9 @@ do_compile_append_rock2-square () {
 
 ATF_DEPENDS ??= ""
 
-EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
+EXTRA_OEMAKE:append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
-EXTRA_OEMAKE_append_rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
+EXTRA_OEMAKE:append_rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
 ATF_DEPENDS_rk3328 = " virtual/trusted-firmware-a:do_deploy"
 
 do_compile[depends] .= "${ATF_DEPENDS}"
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index 3e8711c..e81eee8 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,2 +1,2 @@
-PACKAGECONFIG_append_rk3288 = " kmsro panfrost"
-PACKAGECONFIG_append_rk3399 = " kmsro panfrost"
+PACKAGECONFIG:append_rk3288 = " kmsro panfrost"
+PACKAGECONFIG:append_rk3399 = " kmsro panfrost"
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
index c2fe9ad..9d9533b 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -11,7 +11,7 @@ COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
 COMPATIBLE_MACHINE_rock64 = "rock64"
 COMPATIBLE_MACHINE_rock-pi-e = "rock-pi-e"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 # indeed applicable to all rk3328 boards
-SRC_URI_append_rock64 = " file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
+SRC_URI:append_rock64 = " file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend b/recipes-kernel/linux/linux-yocto_5.4.bbappend
index e832529..266317f 100644
--- a/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -1,5 +1,5 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
 # tinker-board and tinker-board-s. rk3288 covers both
-SRC_URI_append_rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
+SRC_URI:append_rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
 
-- 
2.32.0

