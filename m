Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web12.8671.1576092993096945855
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 11:36:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TifbcxT2;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id v3so48737ioj.5
        for <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2019 11:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nPeVv9AJ3kNDciOEKWImnyE31ynDG4ecc65PAvjET2I=;
        b=TifbcxT2cdy/cyL74FR7i5cLpfFVO4P40zcM+RH5UrDmTfY6MwaUocvG9U2Q9Zgn15
         gWs7Ik+xIlTMp6VXvbY4qMbt2ZUjNqq0KLbnCjDAt6fCOLeYnRS28S/tI8kBYwfsfsIy
         jxj5w8aorePkpCZLRdD0lG9K7jvUBdZw5Nwb3P7So8lbCq5ZSEkwkgLHZuktkaWIkaOW
         np6BTSU75wmt72GQggBIoBE0IBK6p+4ZY1AdZHGf5wK4hWNMBVA3imqkJtcSp8hAE7It
         NoDIFzQsh46MuiOe5aQgC+bs4DlxyL7UIG2XeAMsSr/BINvR38ZZ2VA0qdEGY8Js/qDy
         60iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nPeVv9AJ3kNDciOEKWImnyE31ynDG4ecc65PAvjET2I=;
        b=CB3+Bzg4ihks1+vZFuudBVOo27dSp65TwYINKVY5ateBoRxvRhxdyF80Lf5t+fr4Ix
         ezXKQf9cDbiCbyfCexZpo2K0oEBicY2Dr3C8r8oUX/JH6ewQth+sAia6/IuiRfG/Av1z
         wWFlyRt+PkkJU1pJ3iSyNcEPdiMD7S5QhdBpTt521FCqaYAcRVI6Mg7Q6da2yCOBD/bK
         1aqFIYwQnQ1KwPgU/ahtWK4TZLHsZx+W8bOBQQNNHEmQgiFC8+Jh2w7A/UlsZT793o+t
         /lXIv98PHdpx6VXuyZoXm/3IrSKQsHfHZaN5syLWMhdvygBUagzKxBVZQyqgbSxtPltM
         ygDA==
X-Gm-Message-State: APjAAAWhuzs8nbDo1muN9bOkEw5exrRdceorShA1EAqx6zkt2xvUTAYS
	kNrGZU5zIh+w7DeETgR71FdEB6smgYY=
X-Google-Smtp-Source: APXvYqzj5HQn24utKZYay30lnHxnHlyTiFGwiZqlhF8uP+prb93v34bu53CfFrzbJCZCGXmZDTy6UQ==
X-Received: by 2002:a5e:c314:: with SMTP id a20mr4017365iok.300.1576092992121;
        Wed, 11 Dec 2019 11:36:32 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id t3sm987826ilf.53.2019.12.11.11.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2019 11:36:31 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH] rk3288: Convert to using wic
Date: Wed, 11 Dec 2019 13:36:07 -0600
Message-Id: <20191211193607.38084-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Coverts the firefly-rk3288, tinker-rk3288, and vyasa-rk3288 machines to
use wic instead of the rockchip-gpt-img class. The rock2-squared machine
has to keep the older image class because u-boot doesn't provided a
combined idbloader for it.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/firefly-rk3288.conf | 15 ++++++++++++++-
 conf/machine/include/rk3288.inc  |  2 --
 conf/machine/rock2-square.conf   |  6 ++++++
 conf/machine/tinker-rk3288.conf  | 15 ++++++++++++++-
 conf/machine/vyasa-rk3288.conf   | 14 ++++++++++++++
 wic/firefly-rk3288.wks           | 26 ++++++++++++++++++++++++++
 wic/tinker-rk3288.wks            | 26 ++++++++++++++++++++++++++
 wic/vyasa-rk3288.wks             | 27 +++++++++++++++++++++++++++
 8 files changed, 127 insertions(+), 4 deletions(-)
 create mode 100644 wic/firefly-rk3288.wks
 create mode 100644 wic/tinker-rk3288.wks
 create mode 100644 wic/vyasa-rk3288.wks

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 0900440..71e0bc3 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -10,4 +10,17 @@ require conf/machine/include/rk3288.inc
 
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
-GPTIMG_APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
+
+WKS_FILE = "firefly-rk3288.wks"
+IMAGE_FSTYPES += "wic"
+
+WKS_FILE_DEPENDS ?= " \
+    mtools-native \
+    dosfstools-native \
+    virtual/bootloader \
+    virtual/kernel \
+    "
+IMAGE_BOOT_FILES ?= "\
+    ${KERNEL_IMAGETYPE} \
+    ${KERNEL_DEVICETREE} \
+    "
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 6e9a09a..b261692 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -12,5 +12,3 @@ SERIAL_CONSOLES = "115200;ttyS2"
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
 
-IMAGE_FSTYPES += "rockchip-gpt-img"
-IMAGE_CLASSES += "rockchip-gpt-img"
diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
index 737d3ae..46064ee 100644
--- a/conf/machine/rock2-square.conf
+++ b/conf/machine/rock2-square.conf
@@ -11,3 +11,9 @@ require conf/machine/include/rk3288.inc
 SPL_BINARY = "u-boot-spl-dtb.bin"
 KERNEL_DEVICETREE = "rk3288-rock2-square.dtb"
 UBOOT_MACHINE = "rock2_defconfig"
+
+# This board doesn't support the combined idbloader, so resort to the older
+# image class
+IMAGE_FSTYPES += "rockchip-gpt-img"
+IMAGE_CLASSES += "rockchip-gpt-img"
+
diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-rk3288.conf
index 9e23f8d..e460d43 100644
--- a/conf/machine/tinker-rk3288.conf
+++ b/conf/machine/tinker-rk3288.conf
@@ -9,4 +9,17 @@ require conf/machine/include/rk3288.inc
 
 KERNEL_DEVICETREE = "rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
-GPTIMG_APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
+
+WKS_FILE = "tinker-rk3288.wks"
+IMAGE_FSTYPES += "wic"
+
+WKS_FILE_DEPENDS ?= " \
+    mtools-native \
+    dosfstools-native \
+    virtual/bootloader \
+    virtual/kernel \
+    "
+IMAGE_BOOT_FILES ?= "\
+    ${KERNEL_IMAGETYPE} \
+    ${KERNEL_DEVICETREE} \
+    "
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index bfbd09b..03a436a 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -12,3 +12,17 @@ KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
+
+WKS_FILE = "vyasa-rk3288.wks"
+IMAGE_FSTYPES += "wic"
+
+WKS_FILE_DEPENDS ?= " \
+    mtools-native \
+    dosfstools-native \
+    virtual/bootloader \
+    virtual/kernel \
+    "
+IMAGE_BOOT_FILES ?= "\
+    ${KERNEL_IMAGETYPE} \
+    ${KERNEL_DEVICETREE} \
+    "
diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
new file mode 100644
index 0000000..5013aea
--- /dev/null
+++ b/wic/firefly-rk3288.wks
@@ -0,0 +1,26 @@
+# Copyright (C) 2019 Garmin Ltd. or its subsidiaries
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
+#   root        262144          -
+#
+
+part loader1    --ondisk mmcblk0 --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --ondisk mmcblk0 --align 4032   --size 64K
+part reserved2  --ondisk mmcblk0 --align 4096   --size 4096K
+part loader2    --ondisk mmcblk0 --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
+part atf        --ondisk mmcblk0 --align 12288  --size 4096K
+part /boot      --ondisk mmcblk0 --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part /          --ondisk mmcblk0 --align 131072                         --source rootfs            --fstype=ext4 --label root
+
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/tinker-rk3288.wks b/wic/tinker-rk3288.wks
new file mode 100644
index 0000000..5013aea
--- /dev/null
+++ b/wic/tinker-rk3288.wks
@@ -0,0 +1,26 @@
+# Copyright (C) 2019 Garmin Ltd. or its subsidiaries
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
+#   root        262144          -
+#
+
+part loader1    --ondisk mmcblk0 --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --ondisk mmcblk0 --align 4032   --size 64K
+part reserved2  --ondisk mmcblk0 --align 4096   --size 4096K
+part loader2    --ondisk mmcblk0 --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
+part atf        --ondisk mmcblk0 --align 12288  --size 4096K
+part /boot      --ondisk mmcblk0 --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part /          --ondisk mmcblk0 --align 131072                         --source rootfs            --fstype=ext4 --label root
+
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
new file mode 100644
index 0000000..3fc9a5b
--- /dev/null
+++ b/wic/vyasa-rk3288.wks
@@ -0,0 +1,27 @@
+# Copyright (C) 2019 Garmin Ltd. or its subsidiaries
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
+#   root        262144          -
+#
+
+part loader1    --ondisk mmcblk2 --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
+part reserved1  --ondisk mmcblk2 --align 4032   --size 64K
+part reserved2  --ondisk mmcblk2 --align 4096   --size 4096K
+part loader2    --ondisk mmcblk2 --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
+part atf        --ondisk mmcblk2 --align 12288  --size 4096K
+part /boot      --ondisk mmcblk2 --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
+part /          --ondisk mmcblk2 --align 131072                         --source rootfs            --fstype=ext4 --label root
+
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
+                                  
-- 
2.23.0

