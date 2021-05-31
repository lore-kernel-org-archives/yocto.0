Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.44651.1622469684784840258
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 07:01:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=NK7dyFgn;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AB38338C0661
	for <yocto@yoctoproject.org>; Mon, 31 May 2021 14:01:23 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id m18so11050358wrv.2
        for <yocto@yoctoproject.org>; Mon, 31 May 2021 07:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W2mG3En/oEQPpcH2L3Xx1ixQhC8MEhrInt2JNJ2otvo=;
        b=NK7dyFgnNyQZFu/VhCn/abclUzMgpHC+LDl5qraeLjk+/+cnOHtLy05LK6j08NJPvQ
         QNqqK+hfei467dNad38uAPYmkqEf9zgZjzjw7WJNig7vRIRUlida6pwodeiFoxftlsKP
         NTiagOwAJTgl1qOfbr7ipRT+94+1HU9cWWTVtUJ+KMwhrImFThTwdaS9y4Ykj6J1Rsym
         xYWi2KhyLhqXP404didy9bg75w+RJFdHJQw4N9Mwi/cKchaF8g/GQC1fGxk/ZcwDQ8fH
         SBu0Zoj8Dbwo0SxAQRGJaa4GZNAFd8Un7bMY/txRFb961CexZfrUXI3qVRPoiSF4FMiC
         plTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W2mG3En/oEQPpcH2L3Xx1ixQhC8MEhrInt2JNJ2otvo=;
        b=gdzun+syBMPYh+jYXo9jr2sqpG5HN7sptUXCqvcLwEmbk5KROU2xIWNOpsWYlMpeN+
         LneMUqNRK8vldP1osTon19WJcR7fJvcGNanfMdk2goahxbcxSYYFIv1CmG7viNIYrT/u
         qrUQwVt0RbdbcoIg17ry8NfGuN5DQwRC/ZW4MvCBi0VN9AreGoD3qgKDk5dXS85mQlkN
         wPa23SJUbNin1LoJclqPyYkrqYT6B8o9Uffu417/xWBDcqNCAF6VX0ajdtDUU5HdtF2k
         bItzSwAwTG6EUvEP/IWT1e7SvIMC9k0LpLRL3zgG3pVzZXIpQaxmXppY/uKvh7B9VSu0
         OSDA==
X-Gm-Message-State: AOAM531eAYz/4PQ0gyF7GKEhSFfuRtTnkaYnRfmv3vu2jn6ktx2nD3+z
	3uq463iQvpEAUqJMBo7Cqx8qUeGc3wMS2w==
X-Google-Smtp-Source: ABdhPJzq1pSuIhjh6SLL7uIpcrFIJx/JGtAkQvGg+k40DmNGkyz4JnGiIo7t4DZXM36FU4MDgNdBYg==
X-Received: by 2002:a5d:684d:: with SMTP id o13mr3842324wrw.174.1622469682296;
        Mon, 31 May 2021 07:01:22 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id l3sm15517062wmh.2.2021.05.31.07.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 07:01:21 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2] Rock64: add machine
Date: Mon, 31 May 2021 16:00:58 +0200
Message-Id: <20210531140058.2193825-1-yann@blade-group.com>
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

Changes in v2:
- include Ayufan's patch for mmc aliases so presence of eMMC won't
prevent booting from SD

 conf/machine/include/rk3328.inc               | 25 ++++++++++++++++
 conf/machine/rock64.conf                      | 30 +++++++++++++++++++
 ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 +++++++++++++++++
 recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++++
 4 files changed, 88 insertions(+)
 create mode 100644 conf/machine/include/rk3328.inc
 create mode 100644 conf/machine/rock64.conf
 create mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-ad=
d-mmc0-mmc1-aliases.patch

diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk332=
8.inc
new file mode 100644
index 0000000..7d67627
--- /dev/null
+++ b/conf/machine/include/rk3328.inc
@@ -0,0 +1,25 @@
+# Copyright (C) 2020 Garmin Ltd. or its subsidaries
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
index 0000000..38bc9fa
--- /dev/null
+++ b/conf/machine/rock64.conf
@@ -0,0 +1,30 @@
+# Copyright (C) 2021 Blade SAS
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
+WKS_FILE ?=3D "rock-pi-4.wks"
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

