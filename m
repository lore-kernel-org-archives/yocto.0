Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web09.9454.1624461912773251067
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 08:25:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejP0NMw3;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id f16so1611077qvs.7
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 08:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=1Qyvaba/um6lD6CslItGSJbtnBDN8QgT5QlzCj7TDx8=;
        b=ejP0NMw3ONmTnBYKm1vTLBqqVAX4VJNGi3JMXnGwOpK93jqRtXht02HSAgDSoh2NRZ
         /+j1O1JceLPiEHGJJmIzI4QZVdJk/k0NslY/LKn6PaFnWMM/2ny4pSh+HhutJsI0Ud+O
         4fKukkv8iN0hQZ/0V9w2NqNCuoCT0yM6XXtTP+Fw/Vn2rH/OagFUUHEd4J7/+DHMWjMa
         J51LBibHxhYMF7gIMhoUbCiqv35EYIa78nuDtNYYFAFSQvnPLoDWHl0wpvCaujnIyXrD
         7Nt6SUNvhVih/RMvGFLU+h1RRQNpSn8SU4u1ddw98dWwIQRwqjpjFxr/VgYKLfrxpeUF
         G0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1Qyvaba/um6lD6CslItGSJbtnBDN8QgT5QlzCj7TDx8=;
        b=ruOfpNXYyHncgmJQbetScpCdxcHdfUSk/MCNNHP0guV8ih4Dh851t00681sQpWF+5S
         TzbXwb2wBXFLx5OyIHBrJR9Vpze9VbyBIq8viDv9b+R9XWE6sMDF1VUohGd5LGKZKMzx
         ifJciNwFTPunMr0MxrEzVxBAoNywG4i8nUnKQCyuGoEqvoPmuR8MyRHp1Tg5WO0sVtbe
         71AzJYRNFprLMUwpP78r9srd9IIV/g3VvPMXutLnJWmh6Hyuq7xLUB9bKXa3rb41tIj8
         9HUw1e7Yhz1Kpk/SUiBvXbSssArnNAOHDhBm5Ui1Q4CfgdMwABiD1WS+2+pKwqBrgWYX
         v9nQ==
X-Gm-Message-State: AOAM532VOClWTiJu4wbm0I3qNFxTICVlap2OrHe5eTdH80lLe3btJI8H
	t5I3uu4UCdkqMQOghzwrD9LXOUxIyP8FNw==
X-Google-Smtp-Source: ABdhPJzGXLg+vFJtqQ6Zr0D+zkn2xTNdu2URVjXs5NAenAaGHFh/7WBNvofU+tsnL5dx6wbM+RWkQQ==
X-Received: by 2002:a05:6214:9a8:: with SMTP id du8mr357996qvb.52.1624461911523;
        Wed, 23 Jun 2021 08:25:11 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id w185sm116800qkd.30.2021.06.23.08.25.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 08:25:10 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 3/4] machine common include cleanup
Date: Wed, 23 Jun 2021 11:24:56 -0400
Message-Id: <20210623152457.35324-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210623152457.35324-1-twoerner@gmail.com>
References: <20210623152457.35324-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Break out the conf/machine/include/rockchip-defaults.inc into:
- conf/machine/include/rockchip-defaults.inc
- conf/machine/include/rockchip-32.inc
- conf/machine/include/rockchip-64.inc
- conf/machine/include/rockchip-wic.inc

Re-organize the machine and SoC configurations to make use of these common
include files to reduce duplication of common elements.

For every currently-defined machine in meta-rockchip, the following variables
were checked before and after this change to make sure the results were
correct and/or reasonable:
- RK_CONSOLE_BAUD
- RK_CONSOLE_DEVICE
- SERIAL_CONSOLES
- WKS_FILE
- UBOOT_SUFFIX
- SPL_BINARY
- UBOOT_ENTRYPOINT
- UBOOT_MACHINE
- KBUILD_DEFCONFIG
- KERNEL_IMAGETYPE
- KERNEL_DEVICETREE
- TFA_BUILD_TARGET
- TFA_PLATFORM
- IMAGE_FSTYPES
- RK_BOOT_DEVICE
- IMAGE_BOOT_FILES

The following boards were boot-tested after this change to make sure they
booted to a console login prompt correctly (core-image-base):
- tinker-board
- rock-pi-e
- rock64
- nanopi-m4-2gb
- rock-pi-4b

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/firefly-rk3288.conf           | 15 ++-------------
 conf/machine/include/nanopi-m4.inc         | 13 +------------
 conf/machine/include/rk3066.inc            |  2 +-
 conf/machine/include/rk3188.inc            |  2 +-
 conf/machine/include/rk3288.inc            | 10 +++-------
 conf/machine/include/rk3328.inc            | 13 ++-----------
 conf/machine/include/rk3399.inc            | 14 ++------------
 conf/machine/include/rock-pi-4.inc         | 15 +--------------
 conf/machine/include/rockchip-32.inc       |  4 ++++
 conf/machine/include/rockchip-64.inc       | 12 ++++++++++++
 conf/machine/include/rockchip-defaults.inc | 12 +++++++-----
 conf/machine/include/rockchip-wic.inc      | 10 ++++++++++
 conf/machine/include/tinker.inc            | 15 ++-------------
 conf/machine/rock-pi-e.conf                | 12 ------------
 conf/machine/rock2-square.conf             |  4 ++--
 conf/machine/rock64.conf                   | 15 +--------------
 conf/machine/vyasa-rk3288.conf             | 15 ++-------------
 17 files changed, 53 insertions(+), 130 deletions(-)
 create mode 100644 conf/machine/include/rockchip-32.inc
 create mode 100644 conf/machine/include/rockchip-64.inc
 create mode 100644 conf/machine/include/rockchip-wic.inc

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 2a5f0ba..dab513b 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -11,16 +11,5 @@ require conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
 
-WKS_FILE ?= "firefly-rk3288.wks"
-IMAGE_FSTYPES += "wic wic.bmap"
-
-WKS_FILE_DEPENDS ?= " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= "\
-    ${KERNEL_IMAGETYPE} \
-    ${KERNEL_DEVICETREE} \
-    "
+WKS_FILE = "firefly-rk3288.wks"
+IMAGE_BOOT_FILES += "${KERNEL_DEVICETREE}"
diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index 8a7c1d9..f728063 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -9,15 +9,4 @@ KMACHINE = "nanopi-m4"
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4.dtb"
 
 RK_BOOT_DEVICE = "mmcblk1"
-WKS_FILE ?= "rock-pi-4.wks"
-IMAGE_FSTYPES += "wic wic.bmap"
-
-WKS_FILE_DEPENDS ?= " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= "\
-    ${KERNEL_IMAGETYPE} \
-    "
+WKS_FILE = "rock-pi-4.wks"
diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index 76744ee..63bf9de 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -6,7 +6,7 @@ SOC_FAMILY = "rk3066"
 require conf/machine/include/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-32.inc
 
-RK_CONSOLE_BAUD = "115200"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index e21bbf7..ca0857d 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -6,9 +6,9 @@ SOC_FAMILY  = "rk3188"
 require conf/machine/include/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-32.inc
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
 
-RK_CONSOLE_BAUD = "115200"
 RK_CONSOLE_DEVICE = "ttyFIQ0"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 2715e73..21892b7 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -6,12 +6,8 @@ SOC_FAMILY = "rk3288"
 require conf/machine/include/tune-cortexa17.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-32.inc
+require conf/machine/include/rockchip-wic.inc
 
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
-KERNEL_IMAGETYPE = "zImage"
-
-RK_CONSOLE_BAUD = "115200"
-
-PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
-SPL_BINARY ?= "idbloader.img"
-
+KERNEL_IMAGETYPE ?= "zImage"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index 5b11868..e09489e 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -8,16 +8,7 @@ DEFAULTTUNE ?= "cortexa53-crypto"
 require conf/machine/include/soc-family.inc
 require conf/machine/include/tune-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
-
-KBUILD_DEFCONFIG ?= "defconfig"
-KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+require conf/machine/include/rockchip-64.inc
+require conf/machine/include/rockchip-wic.inc
 
 TFA_PLATFORM = "rk3328"
-TFA_BUILD_TARGET = "bl31"
-
-UBOOT_SUFFIX ?= "itb"
-UBOOT_ENTRYPOINT ?= "0x06000000"
-
-PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
-SPL_BINARY ?= "idbloader.img"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 9f9f474..23a6fb4 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -8,17 +8,7 @@ DEFAULTTUNE ?= "cortexa72-cortexa53-crypto"
 require conf/machine/include/soc-family.inc
 require conf/machine/include/tune-cortexa72-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
-
-KBUILD_DEFCONFIG ?= "defconfig"
-KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+require conf/machine/include/rockchip-64.inc
+require conf/machine/include/rockchip-wic.inc
 
 TFA_PLATFORM = "rk3399"
-TFA_BUILD_TARGET = "bl31"
-
-UBOOT_SUFFIX ?= "itb"
-UBOOT_ENTRYPOINT ?= "0x06000000"
-
-PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
-SPL_BINARY ?= "idbloader.img"
-
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index a3e60c7..00f1040 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -4,17 +4,4 @@ MACHINEOVERRIDES =. "rock-pi-4:"
 require conf/machine/include/rk3399.inc
 
 RK_BOOT_DEVICE = "mmcblk1"
-WKS_FILE ?= "rock-pi-4.wks"
-IMAGE_FSTYPES += "wic wic.bmap"
-
-WKS_FILE_DEPENDS ?= " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= "\
-    ${KERNEL_IMAGETYPE} \
-    "
-
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+WKS_FILE = "rock-pi-4.wks"
diff --git a/conf/machine/include/rockchip-32.inc b/conf/machine/include/rockchip-32.inc
new file mode 100644
index 0000000..27e960e
--- /dev/null
+++ b/conf/machine/include/rockchip-32.inc
@@ -0,0 +1,4 @@
+# meta-rockchip defaults for 32-bit systems
+
+UBOOT_SUFFIX ?= "bin"
+RK_CONSOLE_BAUD ?= "115200"
diff --git a/conf/machine/include/rockchip-64.inc b/conf/machine/include/rockchip-64.inc
new file mode 100644
index 0000000..f394c31
--- /dev/null
+++ b/conf/machine/include/rockchip-64.inc
@@ -0,0 +1,12 @@
+# meta-rockchip defaults for 64-bit systems
+
+UBOOT_SUFFIX ?= "itb"
+UBOOT_ENTRYPOINT ?= "0x06000000"
+
+RK_CONSOLE_BAUD ?= "1500000"
+
+KBUILD_DEFCONFIG ??= "defconfig"
+KERNEL_CLASSES ?= "kernel-fitimage"
+KERNEL_IMAGETYPE ?= "fitImage"
+
+TFA_BUILD_TARGET ?= "bl31"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 3e7a2f2..36528fa 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -1,9 +1,10 @@
-# meta-rockchip default settings
+# common meta-rockchip default settings
 
 # kernel
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 KCONFIG_MODE ?= "alldefconfig"
 LINUX_VERSION_EXTENSION ?= "-rockchip"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
 # xserver
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
@@ -20,13 +21,14 @@ XSERVER = " \
 	xf86-input-keyboard \
 	"
 
+# u-boot
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
+SPL_BINARY ?= "idbloader.img"
+
 # misc
-RK_CONSOLE_DEVICE ?= "ttyS2"
-RK_CONSOLE_BAUD ?= "1500000"
+RK_CONSOLE_DEVICE ??= "ttyS2"
 SERIAL_CONSOLES = "${RK_CONSOLE_BAUD};${RK_CONSOLE_DEVICE}"
-IMAGE_FSTYPES += "ext4"
 
 # boot device (sd-card/emmc)
 RK_BOOT_DEVICE ??= "mmcblk0"
 WICVARS_append = " RK_BOOT_DEVICE RK_CONSOLE_BAUD RK_CONSOLE_DEVICE"
-
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
new file mode 100644
index 0000000..5d1eea7
--- /dev/null
+++ b/conf/machine/include/rockchip-wic.inc
@@ -0,0 +1,10 @@
+# common defaults for systems that use wic
+
+IMAGE_FSTYPES += "wic wic.bmap"
+WKS_FILE_DEPENDS = " \
+	mtools-native \
+	dosfstools-native \
+	virtual/bootloader \
+	virtual/kernel \
+	"
+IMAGE_BOOT_FILES ?= "${KERNEL_IMAGETYPE}"
diff --git a/conf/machine/include/tinker.inc b/conf/machine/include/tinker.inc
index e851b59..b8a33c9 100644
--- a/conf/machine/include/tinker.inc
+++ b/conf/machine/include/tinker.inc
@@ -1,15 +1,4 @@
 require conf/machine/include/rk3288.inc
 
-WKS_FILE ?= "tinker-board.wks"
-IMAGE_FSTYPES += "wic wic.bmap"
-
-WKS_FILE_DEPENDS ?= " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= "\
-    ${KERNEL_IMAGETYPE} \
-    ${KERNEL_DEVICETREE} \
-    "
+WKS_FILE = "tinker-board.wks"
+IMAGE_BOOT_FILES += "${KERNEL_DEVICETREE}"
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 38362a0..b46b266 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -9,19 +9,7 @@ MACHINEOVERRIDES =. "rock-pi-e:"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-stable-bleeding"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
-PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
 
 WKS_FILE = "rock-pi-e.wks"
-IMAGE_FSTYPES += "wic.xz wic.bmap"
-WKS_FILE_DEPENDS = " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= " \
-    ${KERNEL_IMAGETYPE} \
-    "
diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
index 46064ee..ec04f74 100644
--- a/conf/machine/rock2-square.conf
+++ b/conf/machine/rock2-square.conf
@@ -14,6 +14,6 @@ UBOOT_MACHINE = "rock2_defconfig"
 
 # This board doesn't support the combined idbloader, so resort to the older
 # image class
-IMAGE_FSTYPES += "rockchip-gpt-img"
+IMAGE_FSTYPES += "ext4 rockchip-gpt-img"
+IMAGE_FSTYPES_remove = "wic wic.bmap"
 IMAGE_CLASSES += "rockchip-gpt-img"
-
diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
index acda018..d7f3212 100644
--- a/conf/machine/rock64.conf
+++ b/conf/machine/rock64.conf
@@ -15,17 +15,4 @@ KERNEL_DEVICETREE = "rockchip/rk3328-rock64.dtb"
 # set to mmcblk0 for booting from optional eMMC
 RK_BOOT_DEVICE ?= "mmcblk1"
 
-WKS_FILE ?= "rock-pi-e.wks"
-IMAGE_FSTYPES += "wic wic.bmap"
-
-WKS_FILE_DEPENDS ?= " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= "\
-    ${KERNEL_IMAGETYPE} \
-    "
-
-KBUILD_DEFCONFIG = "defconfig"
+WKS_FILE = "rock-pi-e.wks"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index c92c821..5a99b20 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -14,16 +14,5 @@ KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
 
 RK_BOOT_DEVICE = "mmcblk2"
-WKS_FILE ?= "vyasa-rk3288.wks"
-IMAGE_FSTYPES += "wic wic.bmap"
-
-WKS_FILE_DEPENDS ?= " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= "\
-    ${KERNEL_IMAGETYPE} \
-    ${KERNEL_DEVICETREE} \
-    "
+WKS_FILE = "vyasa-rk3288.wks"
+IMAGE_BOOT_FILES += "${KERNEL_DEVICETREE}"
-- 
2.30.0.rc0

