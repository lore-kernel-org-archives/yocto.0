Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.41651.1622449214877965090
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 01:20:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=bpkaqBR9;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0961338C08A6
	for <yocto@yoctoproject.org>; Mon, 31 May 2021 08:20:14 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id z8so4875254wrp.12
        for <yocto@yoctoproject.org>; Mon, 31 May 2021 01:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iQDkm5Wu5LLVJkVvHCp1L7OutdzUnjjjPibimmEOyU8=;
        b=bpkaqBR9UgTsqKiTHmj47z3G6qj7rQrjvpZC6/HSuctZbb4PBWBUYcb+vClakbN5Jn
         hlMk1ofRKrAvrELtDMjlx4freFOgK1xuORzgg/I+HPgb/6bQupeMl7fcvV0RMcXBsHz3
         Z2xvC6ENPmLfJKxixXVTxDChQli/Vh8wRnc8V/tq3VXR1n5tZ2wRrHBATsM3Cr1G9Q3B
         +udhnlRRJW7pIC4RGDSpbbPC6NVtYTHJJdYaPg1BoCGAzCvE0BzQcuC2Go5VUMNWf4JV
         QbIh692kvt2NSRABmtrVFbo/NGqFLo3lcyZvm2DyYUbbK3bFp8e4lxo3h0MO/a/ArLjt
         EgKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iQDkm5Wu5LLVJkVvHCp1L7OutdzUnjjjPibimmEOyU8=;
        b=Ikq5FjTyU1me4wVr6+Au/UACix4Mhb/ZfbH7AMRYAlXTk/idOtiquUXJKebs3O7xhL
         +OuE5i41iWAJ/qmSt8dIPLqHiil25YMdrrrPvno200lrV8iXkwFFZ4QTmom5Bu91WwyM
         qCdFCEIphoLTTVD1tzXY7nckCWaDB/cFPBKkTemgnnMlB/SzcV0hoOsE0fA0pUrMghRh
         oBLcwW+mA/VV5GsqeZAXtsKjwDxUJw3iBA1mZL9U1nAr8P/YHA6JauqWKcTuobxpI52v
         PvHtZTz882/L9b5o/i/lnRQbwpMZfyjI2Di0s1THwAhAhB1OfY7rrJa1QwzM9LkNjldt
         +Z8g==
X-Gm-Message-State: AOAM532RVFidRaMGgQaODLAnPpDki87icCqQ7pJS9BHWw1W5WeQzwX/h
	cmzlCq8YRRhiJXBvO8RZLIig/nXaZWp0IQ==
X-Google-Smtp-Source: ABdhPJzXHQ+PorSUTH0sEYhE3+xNFIpTLWhptKQaql7/WoQpwKtihO+ijKNII9W3Ij77V8xnrBb0qg==
X-Received: by 2002:a5d:61d0:: with SMTP id q16mr1446887wrv.175.1622449212536;
        Mon, 31 May 2021 01:20:12 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id g23sm4771220wmk.3.2021.05.31.01.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 01:20:11 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH] Rock64: add machine
Date: Mon, 31 May 2021 10:19:46 +0200
Message-Id: <20210531081946.1134840-1-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This is a RK3328 board from Pine64.
Board details at https://wiki.pine64.org/wiki/ROCK64.

Signed-off-by: Yann Dirson <yann@blade-group.com>
---

This is just basic initial support without a kernel BSP.  As is the
board boots with a serial console.

Note I had to create the SoC definition for rk3328, and rather than
setting serial at 115200 there just to have the board definition
override it with rockchip-standard 1500000 I've set the latter right
in rk3328.inc.

 conf/machine/include/rk3328.inc            | 25 +++++++++++++++++++
 conf/machine/rock64.conf                   | 28 ++++++++++++++++++++++
 recipes-kernel/linux/linux-yocto%.bbappend |  1 +
 3 files changed, 54 insertions(+)
 create mode 100644 conf/machine/include/rk3328.inc
 create mode 100644 conf/machine/rock64.conf

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
index 0000000..88a8434
--- /dev/null
+++ b/conf/machine/rock64.conf
@@ -0,0 +1,28 @@
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
+RK_BOOT_DEVICE =3D "mmcblk0"
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
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/=
linux/linux-yocto%.bbappend
index 7702e3f..f453281 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -8,3 +8,4 @@ COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
 COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
 COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
 COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
+COMPATIBLE_MACHINE_rock64 =3D "rock64"
--=20
2.30.2

