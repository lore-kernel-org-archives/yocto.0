Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.12605.1624893348541667884
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 08:15:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvvUCry9;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id g3so9495931qth.11
        for <yocto@lists.yoctoproject.org>; Mon, 28 Jun 2021 08:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=aKAtJNCRzZQlzGf2AdApDZTEGBNR6o7IM1l/5MnRkuk=;
        b=cvvUCry9sSbPBf9GtAbmN/hiQmyLxCf0JaYYp6vcnaUcbO8dRBOHAGl5UDhMnI1RiG
         Z1sX9u/pN0qzThl6njEJEeWBNluKs0JYIbc47YsRigroE/wjddKkqJXj1M5WJ3qw2Hji
         2WhvVgDTactFMeljRLr5QoXhDCm8OZXI+TkN9yjfl2Pq/10SKZ2dLZClgGBH4bp8lZ8n
         CaTQqpni74Q8qmJGO/T+PxIqpl1JggyVufch0whqnqgl8MI58UbVyEM5CreE3mDNftk5
         ILg6k1C3j0z1mMX+jNI8Wgp0JjxYPAmwI5BQek+V4tM7eCXooR1hEuGfb3zznOPum+zz
         T70Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aKAtJNCRzZQlzGf2AdApDZTEGBNR6o7IM1l/5MnRkuk=;
        b=sSxrzhaD1EPB11R64ggZ50fgl61oDAu7t0pedUXH1GJlflpjhsAKK1SZH6RlQEsmEj
         74s+IWUbqTAn1/SnOSgku7sdH+ygZ+WTOoyiS37LIpic7VFtkJuv0dwKYP57U8/WFX9D
         OhHrNjmuAafQNRURts41eXNxULB265q+L5em9TD8PcnsP2wSyksbo6HWPBvcxP7ducmU
         KArqaOjMisPfROulzOLDneUExCRnZ0fFUqHKm7KiJ0bVNd7CDT1Pbf26b9+Y1GshNx/B
         UKcQnaCptMZ+t0i3Pff4hwjySLSJa9KDwuABuj1AoSax5Ks5fUFiYw3ehTLdHJ1UyylO
         KuqQ==
X-Gm-Message-State: AOAM533Vcb9OuPMoyYv4yfA0N/PToYWrvR9rNS6A+DR5wMvrlVDUVTcG
	0O5KL330tyy7L5JcujQUklUBvyrDU8CTAw==
X-Google-Smtp-Source: ABdhPJxDIdLxpTXVAEKDvwatLqdOV4wSJaqw0dAvkUDxsYpUxEKisrqEdAJHscAPxf8nZ5TjJD1AGg==
X-Received: by 2002:a05:622a:1896:: with SMTP id v22mr22012227qtc.348.1624893347326;
        Mon, 28 Jun 2021 08:15:47 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b13sm4107252qtk.30.2021.06.28.08.15.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 08:15:46 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 3/3] wic/wks cleanup
Date: Mon, 28 Jun 2021 11:15:41 -0400
Message-Id: <20210628151541.26092-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210628151541.26092-1-twoerner@gmail.com>
References: <20210628151541.26092-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

By exporting a couple more variables the wks file for every rockchip device
can be built from one template instead of having separate wks files for each
board and platform.

The following BSP variables were checked before and after this change to make
sure they remained valid/sensible:
- WKS_FILE
- UBOOT_SUFFIX
- SPL_BINARY
- IMAGE_FSTYPES

Built-tested for every MACHINE in this BSP.

Run-tested on the following devices to ensure they continue to boot correctly
to a cmdline (core-image-base):
- tinker-board
- rock-pi-e
- rock-pi-4b
- rock64
- nanopi-m4-2gb

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/firefly-rk3288.conf      |  2 --
 conf/machine/include/nanopi-m4.inc    |  1 -
 conf/machine/include/rk3288.inc       |  3 +--
 conf/machine/include/rk3328.inc       |  1 -
 conf/machine/include/rk3399.inc       |  2 --
 conf/machine/include/rock-pi-4.inc    |  1 -
 conf/machine/include/rockchip-wic.inc |  5 +++++
 conf/machine/include/tinker.inc       |  2 --
 conf/machine/rock-pi-e.conf           |  2 --
 conf/machine/rock64.conf              |  2 --
 conf/machine/vyasa-rk3288.conf        |  1 -
 wic/firefly-rk3288.wks                |  7 -------
 wic/rk3288-boot.wks                   | 24 ------------------------
 wic/rk3399-boot.wks                   | 24 ------------------------
 wic/rock-pi-4.wks                     |  7 -------
 wic/rock-pi-e.wks                     |  4 ----
 wic/{rk3328-boot.wks => rockchip.wks} |  9 ++++++---
 wic/tinker-board.wks                  |  8 --------
 wic/vyasa-rk3288.wks                  |  8 --------
 19 files changed, 12 insertions(+), 101 deletions(-)
 delete mode 100644 wic/firefly-rk3288.wks
 delete mode 100644 wic/rk3288-boot.wks
 delete mode 100644 wic/rk3399-boot.wks
 delete mode 100644 wic/rock-pi-4.wks
 delete mode 100644 wic/rock-pi-e.wks
 rename wic/{rk3328-boot.wks => rockchip.wks} (64%)
 delete mode 100644 wic/tinker-board.wks
 delete mode 100644 wic/vyasa-rk3288.wks

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 138e840..3270bb9 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -11,5 +11,3 @@ require conf/machine/include/rockchip-wic.inc
 
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
-
-WKS_FILE ?= "firefly-rk3288.wks"
diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index b5251a1..ac6479d 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -9,4 +9,3 @@ KMACHINE = "nanopi-m4"
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4.dtb"
 
 RK_BOOT_DEVICE = "mmcblk1"
-WKS_FILE ?= "rock-pi-4.wks"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index a109f26..6b5f70a 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -13,5 +13,4 @@ KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
-SPL_BINARY ?= "idbloader.img"
-
+UBOOT_SUFFIX ?= "bin"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index b0cafb5..70261a0 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -21,4 +21,3 @@ UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
-SPL_BINARY ?= "idbloader.img"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 79e83e2..3fc712f 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -21,5 +21,3 @@ UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
-SPL_BINARY ?= "idbloader.img"
-
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index 92fc330..b6fb3dd 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -4,6 +4,5 @@ MACHINEOVERRIDES =. "rock-pi-4:"
 require conf/machine/include/rk3399.inc
 
 RK_BOOT_DEVICE = "mmcblk1"
-WKS_FILE ?= "rock-pi-4.wks"
 
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 0ee8c0e..61d9f3d 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -1,6 +1,9 @@
 # common meta-rockchip wic/wks items
 
+SPL_BINARY ?= "idbloader.img"
+
 IMAGE_FSTYPES += "wic wic.bmap"
+WKS_FILE = "rockchip.wks"
 WKS_FILE_DEPENDS ?= " \
 	mtools-native \
 	dosfstools-native \
@@ -24,4 +27,6 @@ WICVARS_append = " \
 	RK_BOOT_DEVICE \
 	RK_CONSOLE_BAUD \
 	RK_CONSOLE_DEVICE \
+	SPL_BINARY \
+	UBOOT_SUFFIX \
 	"
diff --git a/conf/machine/include/tinker.inc b/conf/machine/include/tinker.inc
index eaeb564..2d05bef 100644
--- a/conf/machine/include/tinker.inc
+++ b/conf/machine/include/tinker.inc
@@ -1,4 +1,2 @@
 require conf/machine/include/rk3288.inc
 require conf/machine/include/rockchip-wic.inc
-
-WKS_FILE ?= "tinker-board.wks"
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 3fdbb5e..7afe143 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -13,5 +13,3 @@ MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
 PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
-
-WKS_FILE = "rock-pi-e.wks"
diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
index 93e68e0..21755a8 100644
--- a/conf/machine/rock64.conf
+++ b/conf/machine/rock64.conf
@@ -15,6 +15,4 @@ KERNEL_DEVICETREE = "rockchip/rk3328-rock64.dtb"
 # set to mmcblk0 for booting from optional eMMC
 RK_BOOT_DEVICE ?= "mmcblk1"
 
-WKS_FILE ?= "rock-pi-e.wks"
-
 KBUILD_DEFCONFIG = "defconfig"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index 3e1f395..9ad1ed4 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -15,4 +15,3 @@ KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
 
 RK_BOOT_DEVICE = "mmcblk2"
-WKS_FILE ?= "vyasa-rk3288.wks"
diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
deleted file mode 100644
index 7b14d1f..0000000
--- a/wic/firefly-rk3288.wks
+++ /dev/null
@@ -1,7 +0,0 @@
-# Copyright (C) 2019 Garmin Ltd. or its subsidiaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-include rk3288-boot.wks
-part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
-
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rk3288-boot.wks b/wic/rk3288-boot.wks
deleted file mode 100644
index e4d30cc..0000000
--- a/wic/rk3288-boot.wks
+++ /dev/null
@@ -1,24 +0,0 @@
-# Copyright (C) 2020 Garmin Ltd. or its subsidiaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-#
-# Disk layout
-# Note that the reference documentation refers to 512 byte disk sectors, but
-# wic uses 1KB blocks
-#
-#   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000
-#   reserved1   8064            128
-#   reserved2   8192            8192
-#   loader2     16384           8192
-#   atf         24576           8192
-#   boot        32768           229376
-#   root        262144          -           (suggested)
-#
-
-part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
-part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.bin"
-part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
-
diff --git a/wic/rk3399-boot.wks b/wic/rk3399-boot.wks
deleted file mode 100644
index 8a65179..0000000
--- a/wic/rk3399-boot.wks
+++ /dev/null
@@ -1,24 +0,0 @@
-# Copyright (C) 2020 Garmin Ltd. or its subsidiaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-#
-# Disk layout
-# Note that the reference documentation refers to 512 byte disk sectors, but
-# wic uses 1KB blocks
-#
-#   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000
-#   reserved1   8064            128
-#   reserved2   8192            8192
-#   loader2     16384           8192
-#   atf         24576           8192
-#   boot        32768           229376
-#   root        262144          -           (suggested)
-#
-
-part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
-part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
-part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.itb"
-part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
-
diff --git a/wic/rock-pi-4.wks b/wic/rock-pi-4.wks
deleted file mode 100644
index 5c02e9f..0000000
--- a/wic/rock-pi-4.wks
+++ /dev/null
@@ -1,7 +0,0 @@
-# Copyright (C) 2020 Garmin Ltd. or its subsidiaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-include rk3399-boot.wks
-part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
-
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rock-pi-e.wks b/wic/rock-pi-e.wks
deleted file mode 100644
index 9c10d90..0000000
--- a/wic/rock-pi-e.wks
+++ /dev/null
@@ -1,4 +0,0 @@
-include rk3328-boot.wks
-part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
-
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/rk3328-boot.wks b/wic/rockchip.wks
similarity index 64%
rename from wic/rk3328-boot.wks
rename to wic/rockchip.wks
index 194145b..eedae0d 100644
--- a/wic/rk3328-boot.wks
+++ b/wic/rockchip.wks
@@ -1,3 +1,4 @@
+# Copyright (C) 2019,2020 Garmin Ltd. or its subsidiaries
 # Copyright (C) 2021 Trevor Woerner
 # Released under the MIT license (see COPYING.MIT for the terms)
 #
@@ -13,11 +14,13 @@
 #   atf         24576           8192
 #   boot        32768           229376
 #   root        262144          -           (suggested)
-#
 
-part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
+part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy                                      --sourceparams="file=${SPL_BINARY}"
 part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
 part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.itb"
+part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy                                      --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
 part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part /                                                        --ondisk ${RK_BOOT_DEVICE} --source rootfs            --fstype=ext4 --label root
+
+bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/tinker-board.wks b/wic/tinker-board.wks
deleted file mode 100644
index 00ae820..0000000
--- a/wic/tinker-board.wks
+++ /dev/null
@@ -1,8 +0,0 @@
-# Copyright (C) 2019 Garmin Ltd. or its subsidiaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-include rk3288-boot.wks
-
-part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
-
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
deleted file mode 100644
index 5346fbd..0000000
--- a/wic/vyasa-rk3288.wks
+++ /dev/null
@@ -1,8 +0,0 @@
-# Copyright (C) 2019 Garmin Ltd. or its subsidiaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-include rk3288-boot.wks
-part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
-
-bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
-
-- 
2.30.0.rc0

