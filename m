Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web09.8027.1624629294411257665
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Jun 2021 06:54:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=arejb3AY;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id x6so5190214qvx.4
        for <yocto@lists.yoctoproject.org>; Fri, 25 Jun 2021 06:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EGdgu4r1GGRn9q6edGSbPZLUkfddkRnwI4qNuS28V8s=;
        b=arejb3AY+Efu1G3RGgdckZIdkkEfa2TUDJD9OijOl0GYqDtINI5zv1tOZ5x3Z7OVMh
         vAcZY3BEIHsweShytj6gLsPNL1Wcnu/o0BD5dBKNZhgDk36PMDNTRinMjCybsn9zcqlm
         gtVY7fLsVM31OqudnuD9Wp9zmNDfYxVZlGNIlgbgMhEOglJAmo5TOctxn1zHqWT8p1Lf
         GikZ53jdK1oxeZQ65YhrxMylDGztQ6NihJZGhuL+gIFonjk5hXEIcgxJQ31avAb2n6Mf
         5myYQROj8FSspKxwAcWpHD8o+ZkJ/sJT3lrkNVVIWzKXctU9D5J/Cjieo4an2AwjWYXs
         aOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EGdgu4r1GGRn9q6edGSbPZLUkfddkRnwI4qNuS28V8s=;
        b=OZk8gM5tzZ5JrqIy4xhz5zRwySMj74H5k5769WRejkUCKTfWBdpT1/jZ8aZH/E4sRn
         fRviTFWUo6MY/wgQ/V6vuzQ3BpQlFzD7yfxeNgPQNppnSl3Z2kKxaYSWRbjOgU0n2dgs
         /nTSpgc65Z9VMMdztu+mpB4kbziu3FhUTIInSfwpU3Q3ikYPA11tLzNo51sOSMaD9un+
         yEtPMXyzhJwD6Six9OClIOVzHKHL2sYRuJCxA48BCC/b0zQ/EHeA6SM/oqBvsPsPZaWY
         zeW7lfh9cU5Mn3v1bVp1aZ6d40OOj07kSXp6W4WWlJNhXHVUi15lDEvLFJdzUPO7R7cc
         EZzQ==
X-Gm-Message-State: AOAM530igM9OtJ2MBZrU0kkRTDasMw8M7mTFxhiWJM3AXLtH7nZvXCdS
	XaTK9Qt31rIeK5kVT+BHnGXfkv6LxvrYdA==
X-Google-Smtp-Source: ABdhPJxX68W6NDcX7K9gkcIRUoMx/bWlDt94m+yCm/D5oue1cnM52KxQYMmo+G0yibhPoIySMuP8qQ==
X-Received: by 2002:ad4:5227:: with SMTP id r7mr11173341qvq.41.1624629292889;
        Fri, 25 Jun 2021 06:54:52 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id bm15sm4678617qkb.76.2021.06.25.06.54.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 06:54:51 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] conf/machine/include/rockchip-wic.inc: create
Date: Fri, 25 Jun 2021 09:54:46 -0400
Message-Id: <20210625135446.29695-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create a conf/machine/include/rockchip-wic.inc file to contain all the common
wic/wks things for easy inclusion by any MACHINEs that use wic for their image
creation.

NOTE: the wic image type of rock-pi-e changed from "wic.xz" to "wic" which
      matches all the other meta-rockchip MACHINEs that use wic

The following variables were checked before and after to make sure they remain
correct/sensible:
- IMAGE_FSTYPES
- WKS_FILE_DEPENDS
- IMAGE_BOOT_FILES
- RK_CONSOLE_BAUD
- RK_CONSOLE_DEVICE
- RK_BOOT_DEVICE
- SERIAL_CONSOLES
- WICVARS

Build-tested for all currently-defined MACHINEs.

Boot-tested on the following boards to make sure they continue to boot to a
console correctly (core-image-base):
- tinker-board
- rock64
- rock-pi-4b
- rock-pi-e
- nanopi-m4-2gb

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/firefly-rk3288.conf           | 13 +----------
 conf/machine/include/nanopi-m4.inc         | 11 ---------
 conf/machine/include/rk3328.inc            |  1 +
 conf/machine/include/rk3399.inc            |  1 +
 conf/machine/include/rock-pi-4.inc         | 11 ---------
 conf/machine/include/rockchip-defaults.inc | 14 -----------
 conf/machine/include/rockchip-wic.inc      | 27 ++++++++++++++++++++++
 conf/machine/include/tinker.inc            | 13 +----------
 conf/machine/rock-pi-e.conf                | 10 --------
 conf/machine/rock64.conf                   | 11 ---------
 conf/machine/vyasa-rk3288.conf             | 13 +----------
 11 files changed, 32 insertions(+), 93 deletions(-)
 create mode 100644 conf/machine/include/rockchip-wic.inc

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 2a5f0ba..138e840 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -7,20 +7,9 @@
 #http://www.t-firefly.com/en/
 
 require conf/machine/include/rk3288.inc
+require conf/machine/include/rockchip-wic.inc
 
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
 
 WKS_FILE ?= "firefly-rk3288.wks"
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
diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index 8a7c1d9..7ca91db 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -10,14 +10,3 @@ KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4.dtb"
 
 RK_BOOT_DEVICE = "mmcblk1"
 WKS_FILE ?= "rock-pi-4.wks"
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
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index 5b11868..b0cafb5 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -8,6 +8,7 @@ DEFAULTTUNE ?= "cortexa53-crypto"
 require conf/machine/include/soc-family.inc
 require conf/machine/include/tune-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-wic.inc
 
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_CLASSES = "kernel-fitimage"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 9f9f474..79e83e2 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -8,6 +8,7 @@ DEFAULTTUNE ?= "cortexa72-cortexa53-crypto"
 require conf/machine/include/soc-family.inc
 require conf/machine/include/tune-cortexa72-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-wic.inc
 
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_CLASSES = "kernel-fitimage"
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index a3e60c7..92fc330 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -5,16 +5,5 @@ require conf/machine/include/rk3399.inc
 
 RK_BOOT_DEVICE = "mmcblk1"
 WKS_FILE ?= "rock-pi-4.wks"
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
 
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index b0346c9..b41c523 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -23,17 +23,3 @@ XSERVER = " \
 # misc
 SERIAL_CONSOLES ?= "1500000;ttyS2"
 IMAGE_FSTYPES += "ext4"
-
-# use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
-# for the console parameter in the wks files
-RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
-RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
-
-# boot device (sd-card/emmc)
-RK_BOOT_DEVICE ??= "mmcblk0"
-
-WICVARS_append = " \
-	RK_BOOT_DEVICE \
-	RK_CONSOLE_BAUD \
-	RK_CONSOLE_DEVICE \
-	"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
new file mode 100644
index 0000000..0ee8c0e
--- /dev/null
+++ b/conf/machine/include/rockchip-wic.inc
@@ -0,0 +1,27 @@
+# common meta-rockchip wic/wks items
+
+IMAGE_FSTYPES += "wic wic.bmap"
+WKS_FILE_DEPENDS ?= " \
+	mtools-native \
+	dosfstools-native \
+	virtual/bootloader \
+	virtual/kernel \
+	"
+IMAGE_BOOT_FILES = " \
+	${KERNEL_IMAGETYPE} \
+	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE}', d)} \
+	"
+
+# use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
+# for the console parameter in the wks files
+RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
+RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
+
+# boot device (sd-card/emmc)
+RK_BOOT_DEVICE ??= "mmcblk0"
+
+WICVARS_append = " \
+	RK_BOOT_DEVICE \
+	RK_CONSOLE_BAUD \
+	RK_CONSOLE_DEVICE \
+	"
diff --git a/conf/machine/include/tinker.inc b/conf/machine/include/tinker.inc
index e851b59..eaeb564 100644
--- a/conf/machine/include/tinker.inc
+++ b/conf/machine/include/tinker.inc
@@ -1,15 +1,4 @@
 require conf/machine/include/rk3288.inc
+require conf/machine/include/rockchip-wic.inc
 
 WKS_FILE ?= "tinker-board.wks"
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
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 38362a0..3fdbb5e 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -15,13 +15,3 @@ PREFERRED_PROVIDER_virtual/bootloader = "u-boot"
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
diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
index acda018..93e68e0 100644
--- a/conf/machine/rock64.conf
+++ b/conf/machine/rock64.conf
@@ -16,16 +16,5 @@ KERNEL_DEVICETREE = "rockchip/rk3328-rock64.dtb"
 RK_BOOT_DEVICE ?= "mmcblk1"
 
 WKS_FILE ?= "rock-pi-e.wks"
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
 
 KBUILD_DEFCONFIG = "defconfig"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index c92c821..3e1f395 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -6,6 +6,7 @@
 #@DESCRIPTION: Amarula Vyasa is Rockchip RK3288 SOC based Single board computer with fully supported opensource software.
 
 require conf/machine/include/rk3288.inc
+require conf/machine/include/rockchip-wic.inc
 
 KERNEL_IMAGETYPE = "uImage"
 KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
@@ -15,15 +16,3 @@ UBOOT_MACHINE = "vyasa-rk3288_defconfig"
 
 RK_BOOT_DEVICE = "mmcblk2"
 WKS_FILE ?= "vyasa-rk3288.wks"
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
-- 
2.30.0.rc0

