Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web12.4084.1628020295822174529
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 12:51:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ubNuR3O1;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id mz5-20020a17090b3785b0290176ecf64922so5420729pjb.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 12:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gY/htiLSN6iBBdr0+4sqlPjGN3f2vN3yk3JBJQorpbg=;
        b=ubNuR3O1VwQ6LicDePpcukQUVlhkCTbwOkxlJnO+IkeQp/BH4JE+oYoZBqz5GF4JuU
         ws1d/7Z1XUn1937v3I7aUN2/8AoJMeIjsQnDo1rjyDxnm6roOgl0JVsvqah+Fw6Xe2ik
         HcpkC3kDkPHISaGCLiJi5iEBfIx2YLy/t1dUnCIg20jLazudVwgdcQ/pIks0AmgSNy5A
         72RKME497cGgPLYyEzrtCO7Fb9ZLRIgYbV+T9K/7F2yDgg63KHG1VUyO4NJgdAuoZWxo
         fTtgkQZmr0xzdiaIeRkRWL04ChmgOeRUaPGp+kDKW9CDCXRAoaDeI16kS02R06UHa13E
         ouFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gY/htiLSN6iBBdr0+4sqlPjGN3f2vN3yk3JBJQorpbg=;
        b=pHbAKrFZH8rbD6aecGsiE01ncM6Uj/7CLZiht9ME3DqFo03vg6DgmMIs2wG03Mfqs4
         YBnQh0dkm4Gn4botnkGD43GkMPNVEmfs31cVDTbszBesDgXZGqOJu+O/UdcWIyI3qzWR
         l5XRkC4k0lkHo4ECF0NpXvOQNQ30gq36Opeqc7G9r/QSRI/aTx/DPm/0JyQxrukXJIZ3
         5MrVJQhuZPbkD2tsjCNhuNFVj44NYpoytP5qxdBqRpdLcvawaF07WRqrus+gmmRPSI7K
         /BRoYgmcBQ/8roduHlfHVOXx1Lw5SGlFfd7BssQnZqqncTpw3edGcMHYxIZ/pHO2bICL
         wOjg==
X-Gm-Message-State: AOAM533iHEuLGMsGuDZ3fUvgI4VmIqtg5IgYz0cJwtu+Vhqp8SJkHPmN
	Pbw28Z2wB9xpI2aDu4oCaqJDbaEU3r7cmA==
X-Google-Smtp-Source: ABdhPJwVFzTLCY0vWJiLL4PfpPVo9chdR/v/FS+G5sOTGO6/mP+bA3thqthbvOSCDTtqLf2rfwrbzg==
X-Received: by 2002:a65:6118:: with SMTP id z24mr3124042pgu.325.1628020295052;
        Tue, 03 Aug 2021 12:51:35 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0:db81:2f56:60e4:2c64])
        by smtp.gmail.com with ESMTPSA id d6sm17808430pgq.88.2021.08.03.12.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 12:51:34 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH v2 1/2] layer: Convert to new override syntax
Date: Tue,  3 Aug 2021 12:51:31 -0700
Message-Id: <20210803195132.2702516-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
v2: Fix remaining appends

 classes/rockchip-gpt-img.bbclass              |  2 +-
 conf/machine/include/rockchip-wic.inc         |  2 +-
 .../recipes-qt/qt5/qtbase_%.bbappend          | 10 +++----
 .../trusted-firmware-a_%.bbappend             |  8 +++---
 recipes-bsp/u-boot/u-boot%.bbappend           | 11 ++++----
 recipes-graphics/mesa/mesa_%.bbappend         |  4 +--
 recipes-kernel/linux/linux-yocto%.bbappend    | 28 +++++++++----------
 recipes-kernel/linux/linux-yocto_5.4.bbappend |  5 ++--
 8 files changed, 34 insertions(+), 36 deletions(-)

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
index 95c019d..f692850 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,4 +1,4 @@
-do_compile_append_rock2-square () {
+do_compile:append:rock2-square () {
 	# copy to default search path
 	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
 		cp ${B}/spl/${SPL_BINARY} ${B}
@@ -7,10 +7,9 @@ do_compile_append_rock2-square () {

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
-
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
index e832529..6a37cbf 100644
--- a/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -1,5 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

 # tinker-board and tinker-board-s. rk3288 covers both
-SRC_URI_append_rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
-
+SRC_URI:append:rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
--
2.32.0
