Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web12.9300.1624461913841388914
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 08:25:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H0C3bMVk;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id r20so2368418qtp.3
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 08:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=HgHMIzCtX7p8MqZOpSqNPMapPg4E5OGDvWEzHEV+lXg=;
        b=H0C3bMVkDpvefhcJ8pFOCHpMSx7RKJdUFJJjb3XnMszVe/PzdpS4iw0/HOY6zAT1hf
         SmDg/C/ahqsM4TvBsGlhm05rTt24MnbNMfZaga4byAw8GmtblktLuMgf5wjp3ikaeesf
         svVF8Y7iCPyZnTcLvWUztRjwMyVy6UtG8nQHn/ePlyIIasqi6W0rPoiX1XeqPD4DzNkH
         inf63hdimcXv9Qr7b7kKjHitPvLd3Ra88QospTwLyV3hq/7b6yzagUXG5ae5xd082jQ/
         updmKvu3xlJ8/S/E/47pfiMeH5lF59lc9esCTBdtnAVP/m0NVbzER1vL55KVp7jjl4vP
         IWBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HgHMIzCtX7p8MqZOpSqNPMapPg4E5OGDvWEzHEV+lXg=;
        b=Q8VbsnQNc47TnMgUbuWusacap8cNHCYTZnCHoIR+vNgfIjARyQSi+LJ3iXV5NWykDC
         wWbfGdy+YnTI6oJVTr4hmFyxlJ2wH+nDKQvHCKFm6hHuSUK69d9QUHCBDDL6pSqCEHwu
         T2s4a4cbuaRhXQETM1RM8U3ujZ0IgHp7Ynxts4SU1nLSBdsytepL7aOsfslPVAYOIYFF
         EH3KaQ4SL88aSFZmOTOekTquH5LvxUW4VUGo8QIpFhWx/Tu7RuvIgi7pLbofa9Gimmmy
         jLB5/g2FWlxZTE0zyM5cmEF3B5GcRq4ToizTF0nGdEo//Yl5ph1QRerfXm8ORFe0vCwJ
         3cLg==
X-Gm-Message-State: AOAM5338o2+w4Q5ZX6Tyst0sG+xVU1HExXjcBOL7NZiO4VcXGB4j5OUI
	CE5kgR5cjVY8ZQzQxTMQCRgrWpNqApJuxw==
X-Google-Smtp-Source: ABdhPJzJB+KtxgXQmKk1vbuRtsXyB6lw3J5wzEEmMNE06201pi5VPwM3Vm68qjuv3lEHQNAA9MPD3w==
X-Received: by 2002:ac8:708e:: with SMTP id y14mr400285qto.221.1624461912609;
        Wed, 23 Jun 2021 08:25:12 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id w185sm116800qkd.30.2021.06.23.08.25.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 08:25:11 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 4/4] wic/wks cleanup
Date: Wed, 23 Jun 2021 11:24:57 -0400
Message-Id: <20210623152457.35324-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210623152457.35324-1-twoerner@gmail.com>
References: <20210623152457.35324-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of having SoC-specific wks files and machine-specific wks files, it
turns out all we need is one rockchip-specific wks file; any differences
can be specified with variables.

Boot tested with the following boards (core-image-base):
- tinker-board
- rock-pi-e
- rock64
- nanopi-m4-2gb
- rock-pi-4b

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/firefly-rk3288.conf           |  1 -
 conf/machine/include/nanopi-m4.inc         |  1 -
 conf/machine/include/rock-pi-4.inc         |  1 -
 conf/machine/include/rockchip-defaults.inc |  4 ----
 conf/machine/include/rockchip-wic.inc      | 12 +++++++++++
 conf/machine/include/tinker.inc            |  1 -
 conf/machine/rock-pi-e.conf                |  2 --
 conf/machine/rock64.conf                   |  2 --
 conf/machine/vyasa-rk3288.conf             |  1 -
 wic/firefly-rk3288.wks                     |  7 -------
 wic/rk3328-boot.wks                        | 23 ---------------------
 wic/rk3399-boot.wks                        | 24 ----------------------
 wic/rock-pi-4.wks                          |  7 -------
 wic/rock-pi-e.wks                          |  4 ----
 wic/{rk3288-boot.wks => rockchip.wks}      | 10 ++++++---
 wic/tinker-board.wks                       |  8 --------
 wic/vyasa-rk3288.wks                       |  8 --------
 17 files changed, 19 insertions(+), 97 deletions(-)
 delete mode 100644 wic/firefly-rk3288.wks
 delete mode 100644 wic/rk3328-boot.wks
 delete mode 100644 wic/rk3399-boot.wks
 delete mode 100644 wic/rock-pi-4.wks
 delete mode 100644 wic/rock-pi-e.wks
 rename wic/{rk3288-boot.wks => rockchip.wks} (71%)
 delete mode 100644 wic/tinker-board.wks
 delete mode 100644 wic/vyasa-rk3288.wks

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index dab513b..58b94df 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -11,5 +11,4 @@ require conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
 
-WKS_FILE = "firefly-rk3288.wks"
 IMAGE_BOOT_FILES += "${KERNEL_DEVICETREE}"
diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index f728063..aca3023 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -9,4 +9,3 @@ KMACHINE = "nanopi-m4"
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4.dtb"
 
 RK_BOOT_DEVICE = "mmcblk1"
-WKS_FILE = "rock-pi-4.wks"
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index 00f1040..941d805 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -4,4 +4,3 @@ MACHINEOVERRIDES =. "rock-pi-4:"
 require conf/machine/include/rk3399.inc
 
 RK_BOOT_DEVICE = "mmcblk1"
-WKS_FILE = "rock-pi-4.wks"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 36528fa..0a4dbd0 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -28,7 +28,3 @@ SPL_BINARY ?= "idbloader.img"
 # misc
 RK_CONSOLE_DEVICE ??= "ttyS2"
 SERIAL_CONSOLES = "${RK_CONSOLE_BAUD};${RK_CONSOLE_DEVICE}"
-
-# boot device (sd-card/emmc)
-RK_BOOT_DEVICE ??= "mmcblk0"
-WICVARS_append = " RK_BOOT_DEVICE RK_CONSOLE_BAUD RK_CONSOLE_DEVICE"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 5d1eea7..4de13d4 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -8,3 +8,15 @@ WKS_FILE_DEPENDS = " \
 	virtual/kernel \
 	"
 IMAGE_BOOT_FILES ?= "${KERNEL_IMAGETYPE}"
+
+# boot device (sd-card/emmc)
+RK_BOOT_DEVICE ??= "mmcblk0"
+
+WKS_FILE = "rockchip.wks"
+WICVARS_append = " \
+	RK_BOOT_DEVICE \
+	RK_CONSOLE_BAUD \
+	RK_CONSOLE_DEVICE \
+	SPL_BINARY \
+	UBOOT_SUFFIX \
+	"
diff --git a/conf/machine/include/tinker.inc b/conf/machine/include/tinker.inc
index b8a33c9..e60190d 100644
--- a/conf/machine/include/tinker.inc
+++ b/conf/machine/include/tinker.inc
@@ -1,4 +1,3 @@
 require conf/machine/include/rk3288.inc
 
-WKS_FILE = "tinker-board.wks"
 IMAGE_BOOT_FILES += "${KERNEL_DEVICETREE}"
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index b46b266..5eb67b5 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -11,5 +11,3 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-stable-bleeding"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
 
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
-
-WKS_FILE = "rock-pi-e.wks"
diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
index d7f3212..f0aa2f4 100644
--- a/conf/machine/rock64.conf
+++ b/conf/machine/rock64.conf
@@ -14,5 +14,3 @@ KERNEL_DEVICETREE = "rockchip/rk3328-rock64.dtb"
 
 # set to mmcblk0 for booting from optional eMMC
 RK_BOOT_DEVICE ?= "mmcblk1"
-
-WKS_FILE = "rock-pi-e.wks"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index 5a99b20..b48c4f0 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -14,5 +14,4 @@ KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
 
 RK_BOOT_DEVICE = "mmcblk2"
-WKS_FILE = "vyasa-rk3288.wks"
 IMAGE_BOOT_FILES += "${KERNEL_DEVICETREE}"
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
diff --git a/wic/rk3328-boot.wks b/wic/rk3328-boot.wks
deleted file mode 100644
index 194145b..0000000
--- a/wic/rk3328-boot.wks
+++ /dev/null
@@ -1,23 +0,0 @@
-# Copyright (C) 2021 Trevor Woerner
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
diff --git a/wic/rk3288-boot.wks b/wic/rockchip.wks
similarity index 71%
rename from wic/rk3288-boot.wks
rename to wic/rockchip.wks
index e4d30cc..dfbf7f2 100644
--- a/wic/rk3288-boot.wks
+++ b/wic/rockchip.wks
@@ -1,4 +1,5 @@
-# Copyright (C) 2020 Garmin Ltd. or its subsidiaries
+# Copyright (C) 2021 Trevor Woerner <twoerner@gmail.com>
+# Copyright (C) 2019,2020 Garmin Ltd. or its subsidiaries
 # Released under the MIT license (see COPYING.MIT for the terms)
 #
 # Disk layout
@@ -15,10 +16,13 @@
 #   root        262144          -           (suggested)
 #
 
-part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
+part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=${SPL_BINARY}"
 part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
 part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
-part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.bin"
+part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
 part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
 
+part / --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
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

