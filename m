Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.8825.1623762503886177697
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 06:08:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=bSzpnPWs;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 00AA938C0832
	for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 13:08:22 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id f16-20020a05600c1550b02901b00c1be4abso1728426wmg.2
        for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 06:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aAzn5Jn7u9FQNDDrvMgqWjyT9yY7bw5e4y/d1+RQBBg=;
        b=bSzpnPWstYB5rw9fmwfPm2RglWHIMxLfD/4990Y8LliLSA/JMNfOUHoEdoxWi3cO2E
         zNxd1U27FmSLwezp5Az0/yEEGVOLzawHxPmGPOXxKXDusFv4Ja8AW/irWIPQc0kpg4t/
         +x60EWilVbfVvAYgHN4jGZYPrNume0qpNeJqbZPUU8pMotMhGQ4AAv+AdDlBW51tEact
         agwT+onS+erlI5LtyTPNoqeiZJ2nRuFYPVzvaW6S3nsU5AartB+idKyZBPd/wELIswCt
         pJhwVbgizGc0A/sRJZhLZI9CXxzebdNHpOOj0by/uzUKNkC2w3t1v1x5c+sPLbN8h7qa
         YLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aAzn5Jn7u9FQNDDrvMgqWjyT9yY7bw5e4y/d1+RQBBg=;
        b=HwSjapDtgMLvLheIpQYcPK/PhGzUA8KzTxmZz9G9zq1zjRQx+1koB/GzO6q/C3RrPt
         Ocm7ImR807hi1JZCV+wfuvLpq9iQyFrvzUNDwdmwUXaHa6EmA+IWUCmfdhHvi/q2g9Ym
         efbVZ/R+rgEM4rCZs0k++d0bGhk5hblhlbHKmSk3+IaJqHs6AT9ERPxkskbC9KSXh0YI
         zaeFkdTCvOWfQ3zfZuc+/kM7cw0QrZVXiVeVCBj7GC3mCZ0l4/kYkwy/Tdg24wZPgJKt
         hwWKYv2mIOlYMFLx5CshOeYEKxV/ypIMOjIeWv2voEW959OtgnN10xWKdsh/3zauCths
         P28g==
X-Gm-Message-State: AOAM532WEHKUr+Es6riJjENQcnLL1IdLuxe0Tr52Fhdsmw51nb8X5zv6
	jrZdDTobbZRLrTcZpzqzTVCRa8np1rLNBg==
X-Google-Smtp-Source: ABdhPJzwcVZHT6fx9uKBeF6VqoSCWpP45/e3CvhG3XiAdzNbySyCCtBdpKjedr5kqTZ2KB82NYBVDQ==
X-Received: by 2002:a7b:c346:: with SMTP id l6mr22164890wmj.109.1623762501366;
        Tue, 15 Jun 2021 06:08:21 -0700 (PDT)
Received: from blanquette.blade-group.net ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id k5sm19774076wrv.85.2021.06.15.06.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 06:08:20 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3] Rock64: add machine
Date: Tue, 15 Jun 2021 15:07:57 +0200
Message-Id: <20210615130757.72188-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This is a RK3328 board from Pine64.
Board details at https://wiki.pine64.org/wiki/ROCK64.

Default image is built to boot from SD-card.  Building an image for
eMMC requires to set RK_BOOT_DEVICE=3D"mmcblk0".

Signed-off-by: Yann Dirson <yann@blade-group.com>
---

This is just basic initial support without a kernel BSP.  As is the
board boots with a serial console.

Note I had to create the SoC definition for rk3328, and rather than
setting serial at 115200 there just to have the board definition
override it with rockchip-standard 1500000 I've set the latter right
in rk3328.inc.

Changes in v3:
- add board to README
- use rock-pi-e.wks rather than rock-pi-4.wks (identical contents today)
- put copyright info straight

Changes in v2:
- include Ayufan's patch for mmc aliases so presence of eMMC won't
prevent booting from SD

 README                                        |  1 +
 conf/machine/include/rk3328.inc               | 25 +++++++++++++++
 conf/machine/rock64.conf                      | 31 +++++++++++++++++++
 ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 ++++++++++++++++
 recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++++
 5 files changed, 90 insertions(+)
 create mode 100644 conf/machine/include/rk3328.inc
 create mode 100644 conf/machine/rock64.conf
 create mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-ad=
d-mmc0-mmc1-aliases.patch

diff --git a/README b/README
index b825eba..cec1b53 100644
--- a/README
+++ b/README
@@ -24,6 +24,7 @@ Status of supported boards:
 		rock-pi-4a
 		rock-pi-4b
 		rock-pi-4c
+		rock64
 		tinker-board
 		tinker-board-s
 		vyasa-rk3288
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk332=
8.inc
new file mode 100644
index 0000000..a4bbc5d
--- /dev/null
+++ b/conf/machine/include/rk3328.inc
@@ -0,0 +1,25 @@
+# Copyright (C) 2021 Blade SAS
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY =3D "rk3328"
+
+DEFAULTTUNE ?=3D "cortexa53-crypto"
+
+require conf/machine/include/soc-family.inc
+require conf/machine/include/tune-cortexa53.inc
+require conf/machine/include/rockchip-defaults.inc
+
+KBUILD_DEFCONFIG ?=3D "defconfig"
+KERNEL_CLASSES =3D "kernel-fitimage"
+KERNEL_IMAGETYPE =3D "fitImage"
+
+TFA_PLATFORM =3D "rk3328"
+TFA_BUILD_TARGET =3D "bl31"
+
+UBOOT_SUFFIX ?=3D "itb"
+UBOOT_ENTRYPOINT ?=3D "0x06000000"
+
+SERIAL_CONSOLES =3D "1500000;ttyS2"
+
+PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
+SPL_BINARY ?=3D "idbloader.img"
diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
new file mode 100644
index 0000000..acda018
--- /dev/null
+++ b/conf/machine/rock64.conf
@@ -0,0 +1,31 @@
+# Copyright (C) 2021 Blade SAS
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Rock64
+#@DESCRIPTION: Rock64 RK3328 board from Pine64
+
+require include/rk3328.inc
+
+MACHINE_FEATURES +=3D "usbhost serial"
+
+UBOOT_MACHINE =3D "rock64-rk3328_defconfig"
+KERNEL_DEVICETREE =3D "rockchip/rk3328-rock64.dtb"
+
+# set to mmcblk0 for booting from optional eMMC
+RK_BOOT_DEVICE ?=3D "mmcblk1"
+
+WKS_FILE ?=3D "rock-pi-e.wks"
+IMAGE_FSTYPES +=3D "wic wic.bmap"
+
+WKS_FILE_DEPENDS ?=3D " \
+    mtools-native \
+    dosfstools-native \
+    virtual/bootloader \
+    virtual/kernel \
+    "
+IMAGE_BOOT_FILES ?=3D "\
+    ${KERNEL_IMAGETYPE} \
+    "
+
+KBUILD_DEFCONFIG =3D "defconfig"
diff --git a/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-=
mmc1-aliases.patch b/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-a=
dd-mmc0-mmc1-aliases.patch
new file mode 100644
index 0000000..1ad3b9e
--- /dev/null
+++ b/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-al=
iases.patch
@@ -0,0 +1,27 @@
+From f10cfe01f753348d346374008b8e8f5f26ed94ab Mon Sep 17 00:00:00 2001
+From: Kamil Trzcinski <ayufan@ayufan.eu>
+Date: Mon, 28 Aug 2017 11:24:37 +0200
+Subject: [PATCH] ayufan: dtsi: rk3328: add mmc0/mmc1 aliases
+Upstream-Status: Pending [https://github.com/ayufan-rock64/linux-mainlin=
e-kernel/commit/f10cfe01f753348d346374008b8e8f5f26ed94ab]
+
+Change-Id: I82a5394df8a505f7d1496393621c1198895c88b0
+---
+ arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3328.dtsi
+index 0afed15bc7ff..800f1c796882 100644
+--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
++++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+@@ -27,6 +27,8 @@
+ 		i2c1 =3D &i2c1;
+ 		i2c2 =3D &i2c2;
+ 		i2c3 =3D &i2c3;
++		mmc0 =3D &emmc;
++		mmc1 =3D &sdmmc;
+ 		ethernet0 =3D &gmac2io;
+ 		ethernet1 =3D &gmac2phy;
+ 	};
+--=20
+2.30.2
+
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/=
linux/linux-yocto%.bbappend
index 7702e3f..3789c72 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -8,3 +8,9 @@ COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
 COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
 COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
+COMPATIBLE_MACHINE_rock64 =3D "rock64"
+
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
+
+# indeed applicable to all rk3328 boards
+SRC_URI_append_rock64 =3D " file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1=
-aliases.patch"
--=20
2.30.2

