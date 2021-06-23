Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web09.9452.1624461910621465313
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 08:25:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=chJ+zKHR;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id x1so2213844qkp.7
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 08:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OrD8Io2omOSOLgnlBZb1bYqZA7KzxoFK4IxWp6go37o=;
        b=chJ+zKHRI33irsqamVgDjqfxL6eneybXv+n1cIEHD8nGT8UtIeq70ePuX6RrT7r0/l
         S7C9nAppK9+7Knb17JK2JXvQsqUlkc8tbxczJTGPrr4mgZpkt+GmnflPx6DRArVooeaL
         P5811Aw2mMJNZ2Do6BEHbxSMsrYf4rDxYVexpccbaD/J+Z07OKylzSDEs732V2kC7mZP
         rig1JLycvI1/1pEfNaM2gmY2E69vQEtlJTFYDTN3XuM7X3Sj7mAWVp5F8m18M2plxx4r
         JkSzPbiNTKBlH171lNW3n14Y1NMaxsbtzT9IQK08qlBnrhjDbIsR9/GTyeaRaXQasOO7
         00zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OrD8Io2omOSOLgnlBZb1bYqZA7KzxoFK4IxWp6go37o=;
        b=V9Rjy5FA1DsNhD1D/DU05ZUVcndaxIDKYWleOcL+NQgaNGFaiuwjLJni+jdMnUKrD1
         FxZev1WSVBoY2sDpXthnm7rEbbfoBhk/OO+sXRceyXW0dmnNGsdo0CJFeq7lleEPG45Z
         r3GxHCWRgPrYy+uRYjf6gBMuWoIBLA3rojqWJoLEN+cesByPDsKEqHbEA9NAfSvjEtZ1
         k5XmqLjFSGsmlCs9QNdGBICZdOwPCMsHso+8AP3k78+mrH/7p66a2sNXo1fnDX2k/tuP
         B5+8BeB1DH+8MrxVSEjL0PCSqXnr+M2wASTQiOwxYglrHE2SPRgVPERCn7z8NEahU2yx
         +xhA==
X-Gm-Message-State: AOAM532bvErE6a7Nat9RTzBCfm5tfrB5x9a3GEpDaJ8NLG5rCt9VtUM+
	yFzRhrU1ANxzLQ1JUn2+V8jXbX3ngN/Bbg==
X-Google-Smtp-Source: ABdhPJzGVjZ8uwbtANXwO9LmJ6FfhTcvNCqYbzBR55trU1Qn3ZeR8NgSOGcg+dkwpz8Y7XH7TZUgZQ==
X-Received: by 2002:a37:9c84:: with SMTP id f126mr558211qke.329.1624461909354;
        Wed, 23 Jun 2021 08:25:09 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id w185sm116800qkd.30.2021.06.23.08.25.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 08:25:08 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 1/4] centralize console settings
Date: Wed, 23 Jun 2021 11:24:54 -0400
Message-Id: <20210623152457.35324-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The console settings (baud and device) are scrambled and spread throughout the
MACHINE configurations. Consolidate them and set defaults which are then
overridden only as required.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/nanopi-m4.inc         | 2 --
 conf/machine/include/rk3066.inc            | 1 +
 conf/machine/include/rk3188.inc            | 3 +++
 conf/machine/include/rk3288.inc            | 2 +-
 conf/machine/include/rk3328.inc            | 2 --
 conf/machine/include/rk3399.inc            | 2 --
 conf/machine/include/rock-pi-4.inc         | 2 --
 conf/machine/include/rockchip-defaults.inc | 3 +++
 conf/machine/marsboard-rk3066.conf         | 1 -
 conf/machine/radxarock.conf                | 1 -
 10 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index a14b705..8a7c1d9 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -21,5 +21,3 @@ WKS_FILE_DEPENDS ?= " \
 IMAGE_BOOT_FILES ?= "\
     ${KERNEL_IMAGETYPE} \
     "
-
-SERIAL_CONSOLES = "1500000;ttyS2"
diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index dffbee0..76744ee 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -7,5 +7,6 @@ require conf/machine/include/tune-cortexa9.inc
 require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
+RK_CONSOLE_BAUD = "115200"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index 59e65d1..e21bbf7 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -9,3 +9,6 @@ require conf/machine/include/rockchip-defaults.inc
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
+
+RK_CONSOLE_BAUD = "115200"
+RK_CONSOLE_DEVICE = "ttyFIQ0"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 480e250..2715e73 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -10,7 +10,7 @@ require conf/machine/include/rockchip-defaults.inc
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
 KERNEL_IMAGETYPE = "zImage"
 
-SERIAL_CONSOLES = "115200;ttyS2"
+RK_CONSOLE_BAUD = "115200"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index a4bbc5d..5b11868 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -19,7 +19,5 @@ TFA_BUILD_TARGET = "bl31"
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
-SERIAL_CONSOLES = "1500000;ttyS2"
-
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index f6b7826..9f9f474 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -19,8 +19,6 @@ TFA_BUILD_TARGET = "bl31"
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
 
-SERIAL_CONSOLES = "115200;ttyS2"
-
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
 
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index 9c21084..a3e60c7 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -17,6 +17,4 @@ IMAGE_BOOT_FILES ?= "\
     ${KERNEL_IMAGETYPE} \
     "
 
-SERIAL_CONSOLES = "1500000;ttyS2"
-
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index a4e2a2c..fe4052e 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -21,6 +21,9 @@ XSERVER = " \
 	"
 
 # misc
+RK_CONSOLE_DEVICE ?= "ttyS2"
+RK_CONSOLE_BAUD ?= "1500000"
+SERIAL_CONSOLES = "${RK_CONSOLE_BAUD};${RK_CONSOLE_DEVICE}"
 IMAGE_FSTYPES += "ext4"
 
 # boot device (sd-card/emmc)
diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
index 09414bc..52fd256 100644
--- a/conf/machine/marsboard-rk3066.conf
+++ b/conf/machine/marsboard-rk3066.conf
@@ -8,5 +8,4 @@
 
 require conf/machine/include/rk3066.inc
 
-SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
index 2036f6a..42d8848 100644
--- a/conf/machine/radxarock.conf
+++ b/conf/machine/radxarock.conf
@@ -9,5 +9,4 @@
 
 require conf/machine/include/rk3188.inc
 
-SERIAL_CONSOLES = "115200;ttyFIQ0"
 KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
-- 
2.30.0.rc0

