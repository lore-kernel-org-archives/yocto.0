Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
 by mx.groups.io with SMTP id smtpd.web10.52.1591983507434336929
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 10:38:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NLg9UOfr;
 spf=pass (domain: gmail.com, ip: 209.85.166.67, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f67.google.com with SMTP id p20so11052439iop.11
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 10:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bzU+wQSB2I4VTKW/T77BUZL4uCPKecaVHaXx0nYxLtI=;
        b=NLg9UOfrBJJ75/3HRbEb6f/nU76l2CqOBaibtEg9kExHWD8IGB9OP7bT5IC4CAPf8V
         97WtrxyUqP7DcdiTaduoO/uRdCEIMcp7ZxbPhs3d5Ck0WIzk7ynanepk96/D+7kMFbg9
         6/WfF992dyv1W+g7RHHeOJ32hkPHWZ3VfXgc2RumdiTpo/rLX3XITZjwgM4Z/mEI9drk
         5p7kf5mZ7h26KnbetFqwQoaKfCmIex5VqdU94+Ccz7Wb9F7f/OqHDKHdWHIBduvWd2tq
         grTNewXGKuD3nfCDD7AuAn+o16nEA83mflvpF+xYoK6NQO4BRddSb5hCmksmv3t0l2w+
         QnqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bzU+wQSB2I4VTKW/T77BUZL4uCPKecaVHaXx0nYxLtI=;
        b=TRj23SqU5VZaWiHmTuB+MuE4ucc+7zbEJzgV4fSk9nkJFzQBTOXFRtGpYuWr7BrsGa
         JdSPQX3ZploUpN9DkTIYQ0N3fEmJTRElXR0rpQl/8pTBNLPtyRhrNeoobxSK386AwQt+
         mKl1cv6o27bxzHmkMU43KooT+kcc/ROagNMoc/Phk24fhLLy9rjMSDQtQb4KYzEdLAHr
         krqpgSenCoWNZTiPHnj9047Y0np6cBINulixdlxfkq2SnprAATDdORRbMSF9F9UIH2Vm
         pk6ncfQtEXoyXQuRzB6AZhMXqrviRJJW7DORk1T6VmR2gi6yUIpe3xCdwkDDvPRW/SJX
         lzXw==
X-Gm-Message-State: AOAM530gSx0U6/Np944UO6BdSfptpXNde4HFS4A3eoMhnqcL75xVbCYF
	6bYxt5W+1Hrbit/8sTdjzxeatHXe
X-Google-Smtp-Source: ABdhPJzTVZ8OmflraMS7EMDQBJhI9lACr51tGdpLrfrcm3FjPUZgZHCLm/QQHDCQazafcn20zfdgUA==
X-Received: by 2002:a02:cc71:: with SMTP id j17mr8850345jaq.94.1591983506431;
        Fri, 12 Jun 2020 10:38:26 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:35f5:8651:479a:b9eb])
        by smtp.gmail.com with ESMTPSA id v11sm3420429ile.61.2020.06.12.10.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 10:38:25 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] Use TF-A recipe from meta-arm
Date: Fri, 12 Jun 2020 12:38:23 -0500
Message-Id: <20200612173823.7749-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Converts the build to pull the canonical TF-A recipe from meta-arm
instead of duplicating it in this layer.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 README                                        |  4 ++
 conf/layer.conf                               |  2 +-
 conf/machine/include/rk3399.inc               |  5 +--
 .../arm-trusted-firmware_2.3.bb               | 43 -------------------
 .../trusted-firmware-a_%.bbappend             |  6 +++
 recipes-bsp/u-boot/u-boot%.bbappend           |  6 +--
 6 files changed, 16 insertions(+), 50 deletions(-)
 delete mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.3.bb
 create mode 100644 recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend

diff --git a/README b/README
index a97b89e..e1cfe3e 100644
--- a/README
+++ b/README
@@ -11,6 +11,10 @@ Dependencies:
 	layers: meta
 	branch: matched branches (e.g. master, sumo, ...)
 
+	URI: git://git.yoctoproject.org/meta-arm
+	layers: meta-arm
+	branch: matched branches (e.g. master, sumo, ...)
+
 Status of supported boards:
 --------------------------
 	builds and boots wic image:
diff --git a/conf/layer.conf b/conf/layer.conf
index 72d5366..4168391 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,4 +15,4 @@ BBFILE_PRIORITY_rockchip = "1"
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
 LAYERSERIES_COMPAT_rockchip = "dunfell"
-LAYERDEPENDS_rockchip = "core"
+LAYERDEPENDS_rockchip = "core meta-arm"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 1fd8fd6..4019988 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -13,9 +13,8 @@ KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
-ATF_PLATFORM ?= "rk3399"
-ATF_TARGET ?= "bl31"
-ATF_SUFFIX ?= "elf"
+TFA_PLATFORM = "rk3399"
+TFA_BUILD_TARGET = "bl31"
 
 UBOOT_SUFFIX ?= "itb"
 UBOOT_ENTRYPOINT ?= "0x06000000"
diff --git a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.3.bb b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.3.bb
deleted file mode 100644
index 8d36d66..0000000
--- a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.3.bb
+++ /dev/null
@@ -1,43 +0,0 @@
-# Copyright (C) 2019 Garmin Ltd. or its subsidaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-SUMMARY = "Arm Trusted Firmware"
-HOMEPAGE = "https://developer.trustedfirmware.org/"
-LICENSE = "BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://docs/license.rst;md5=189505435dbcdcc8caa63c46fe93fa89"
-
-# Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
-# toolchain
-DEPENDS_rk3399 = "virtual/arm-none-eabi-gcc"
-
-PROVIDES = "virtual/atf"
-
-BRANCH = "master"
-SRC_URI = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=http;branch=${BRANCH} \
-           "
-SRCREV = "8ff55a9e14a23d7c7f89f52465bcc6307850aa33"
-
-S = "${WORKDIR}/git"
-B = "${WORKDIR}/build"
-
-inherit deploy
-
-ATF_SUFFIX ??= "bin"
-
-do_compile() {
-    unset LDFLAGS
-    unset CFLAGS
-    unset CPPFLAGS
-
-    oe_runmake -C ${S} BUILD_BASE=${B} DEBUG=0 CROSS_COMPILE=${TARGET_PREFIX} \
-        PLAT=${ATF_PLATFORM} ${ATF_TARGET}
-}
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-do_deploy() {
-    install -m 644 ${B}/${ATF_PLATFORM}/release/${ATF_TARGET}/${ATF_TARGET}.${ATF_SUFFIX} \
-        ${DEPLOYDIR}/${ATF_TARGET}.${ATF_SUFFIX}
-}
-addtask deploy after do_compile
-
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
new file mode 100644
index 0000000..ecde25d
--- /dev/null
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -0,0 +1,6 @@
+# Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
+# toolchain
+DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc"
+
+COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
+
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 401d649..042507d 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -7,8 +7,8 @@ do_compile_append_rock2-square () {
 
 ATF_DEPENDS ??= ""
 
-EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
-ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"
+EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
+ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
 
-do_compile[depends] += "${ATF_DEPENDS}"
+do_compile[depends] .= "${ATF_DEPENDS}"
 
-- 
2.26.2

