Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web08.12256.1614265035651482616
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 06:57:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvC7239k;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id r24so4225885qtt.8
        for <yocto@lists.yoctoproject.org>; Thu, 25 Feb 2021 06:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ryrtn9GufGLHROxcpcJZHHbcrmHAwN7hlqx5+bLlwkE=;
        b=jvC7239kMUQVOP23YPl1TSmWTb0Crr33kIcqN2KM903bA8jdQrnR1P89oEy+zRafGJ
         nBZq4RozCTRUIuLfbI7FTyJOplg0m4V/E2MzUtjWyfYX9T7Zn/lLinl6R+LUEZenAFT9
         /2+PgS54bkvluqqE8XHebifGlEY3T08nKJ78DCacP3QHp16aONSf09SZNxx7izHXkzNg
         /p7i7Vj9gm5Fyyi+wN89303q91WMftGMO0Lk4PJcss5ajf1xN10GnMQRpFoLaYYuEWZq
         hy2pezimuQwembG6+dQBzmRQwL0AqmCp3enXv4Az5SM8wZjcK1swXRulhJuKuaNAg1um
         xUeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ryrtn9GufGLHROxcpcJZHHbcrmHAwN7hlqx5+bLlwkE=;
        b=OfJ/NIqW+y11QetRCC7unlzg0OGzjVzHEQ0fhSEL0StibcXr4sua8IBIovC+qonIt3
         yu/UvS2Bb2jYyBTiDxnNsM4yz/keBXo7xGwyUtJEsj5DdMNHylO/TFlaOdSjvO210uY4
         VeKDDdUn5615RsMhLiJndWWSOsTRD+Ti9QpIG/b9Obp41jjHXAEXEUsMAg5TV+B3ZnG2
         LlC16gZoDe4I7HX/r+BLM79djp3crYd+SCOCPDm4ApLLxvHQC+vIH81liB44o3zOx7e0
         jQvn+2h7YYBQF9uJf6txLzuxpFEe+SO8ezazV9Wmo/DFDdbvFdC3zZx6rVXozEeY/B4c
         4CDw==
X-Gm-Message-State: AOAM530DN/5mbjXj5+7l2CdhnYINSzMAQg2ma3x2eJ4Cbi8InFv1tBK6
	ZFi3zn9Ue1ni59IhNWk7E2vtKOiy/p0=
X-Google-Smtp-Source: ABdhPJyrGmOKPLKn3Wiz/nRYZs54aFVxhYizANOEXlQR7F4xq+pQsCm7G+lJUpg8QfeMHskVpxTajg==
X-Received: by 2002:ac8:7686:: with SMTP id g6mr2698790qtr.54.1614265034215;
        Thu, 25 Feb 2021 06:57:14 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id f12sm4152596qkl.2.2021.02.25.06.57.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 06:57:13 -0800 (PST)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-pi-e: add
Date: Thu, 25 Feb 2021 09:57:03 -0500
Message-Id: <20210225145703.29936-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Radxa's ROCK Pi E device
https://wiki.radxa.com/RockpiE

It's a great surprise to find upstream U-Boot and the Linux kernel already
provide support for this board! On the kernel side this support was
added in 5.11. However, that support is so new that even linux-yocto-dev
(which is based on 5.11) doesn't include the commits that add support
for this board yet. As a result I've added a custom Linux kernel recipe
(linux-stable-bleeding) which should, in time, become unnecessary.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/rock-pi-e.conf                   | 42 +++++++++++++++++++
 .../trusted-firmware-a_%.bbappend             |  2 +-
 recipes-bsp/u-boot/u-boot%.bbappend           |  2 +
 .../linux/linux-stable-bleeding_5.11.bb       | 18 ++++++++
 recipes-kernel/linux/linux-yocto-dev.bbappend |  2 +-
 wic/rk3328-boot.wks                           | 23 ++++++++++
 wic/rock-pi-e.wks                             |  4 ++
 7 files changed, 91 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/rock-pi-e.conf
 create mode 100644 recipes-kernel/linux/linux-stable-bleeding_5.11.bb
 create mode 100644 wic/rk3328-boot.wks
 create mode 100644 wic/rock-pi-e.wks

diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
new file mode 100644
index 0000000..035a950
--- /dev/null
+++ b/conf/machine/rock-pi-e.conf
@@ -0,0 +1,42 @@
+#@TYPE: Machine
+#@NAME: ROCK Pi E rk3328
+#@DESCRIPTION: ROCK Pi E is a Rockchip RK3328-based SBC by Radxa. E is for Ethernets.
+#https://wiki.radxa.com/RockpiE
+
+MACHINEOVERRIDES =. "rock-pi-e:"
+SOC_FAMILY = "rk3328"
+DEFAULTTUNE = "cortexa53-crypto"
+
+require conf/machine/include/soc-family.inc
+require conf/machine/include/tune-cortexa53.inc
+require conf/machine/include/rockchip-defaults.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-stable-bleeding"
+KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
+KBUILD_DEFCONFIG = "defconfig"
+KERNEL_CLASSES = "kernel-fitimage"
+KERNEL_IMAGETYPE = "fitImage"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+TFA_PLATFORM = "rk3328"
+TFA_BUILD_TARGET = "bl31"
+
+UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
+UBOOT_SUFFIX = "itb"
+UBOOT_ENTRYPOINT = "0x06000000"
+PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
+SPL_BINARY = "idbloader.img"
+
+WKS_FILE = "rock-pi-e.wks"
+IMAGE_FSTYPES += "wic.xz wic.bmap"
+WKS_FILE_DEPENDS = " \
+    mtools-native \
+    dosfstools-native \
+    virtual/bootloader \
+    virtual/kernel \
+    "
+IMAGE_BOOT_FILES ?= " \
+    ${KERNEL_IMAGETYPE} \
+    "
+
+SERIAL_CONSOLES = "1500000;ttyS2"
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 2374205..442dee8 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -3,4 +3,4 @@
 DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
 
 COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
-
+COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 042507d..95c019d 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -9,6 +9,8 @@ ATF_DEPENDS ??= ""
 
 EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
+EXTRA_OEMAKE_append_rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
+ATF_DEPENDS_rk3328 = " virtual/trusted-firmware-a:do_deploy"
 
 do_compile[depends] .= "${ATF_DEPENDS}"
 
diff --git a/recipes-kernel/linux/linux-stable-bleeding_5.11.bb b/recipes-kernel/linux/linux-stable-bleeding_5.11.bb
new file mode 100644
index 0000000..dce537d
--- /dev/null
+++ b/recipes-kernel/linux/linux-stable-bleeding_5.11.bb
@@ -0,0 +1,18 @@
+# the rock-pi-e is very new
+# it's exciting that support has already been added upstream
+# but it's so new that even linux-yocto-dev doesn't have it yet
+#
+# in time we should see the need for this recipe going away
+
+inherit kernel
+require recipes-kernel/linux/linux-yocto.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"
+
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"
+SRCREV = "c03c21ba6f4e95e406a1a7b4c34ef334b977c194"
+LINUX_VERSION = "5.11"
+LINUX_VERSION_EXTENSION = ""
+PV = "${LINUX_VERSION}"
+
+COMPATIBLE_MACHINE = "(rock-pi-e)"
diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index 2f498d9..a85b85e 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1 +1 @@
-COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288"
+COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288|rock-pi-e"
diff --git a/wic/rk3328-boot.wks b/wic/rk3328-boot.wks
new file mode 100644
index 0000000..194145b
--- /dev/null
+++ b/wic/rk3328-boot.wks
@@ -0,0 +1,23 @@
+# Copyright (C) 2021 Trevor Woerner
+# Released under the MIT license (see COPYING.MIT for the terms)
+#
+# Disk layout
+# Note that the reference documentation refers to 512 byte disk sectors, but
+# wic uses 1KB blocks
+#
+#   Partition   Start Sector    Number of Sectors
+#   loader1     64              8000
+#   reserved1   8064            128
+#   reserved2   8192            8192
+#   loader2     16384           8192
+#   atf         24576           8192
+#   boot        32768           229376
+#   root        262144          -           (suggested)
+#
+
+part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
+part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.itb"
+part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
+part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
diff --git a/wic/rock-pi-e.wks b/wic/rock-pi-e.wks
new file mode 100644
index 0000000..97f84d1
--- /dev/null
+++ b/wic/rock-pi-e.wks
@@ -0,0 +1,4 @@
+include rk3328-boot.wks
+part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
+
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
-- 
2.30.0.rc0

