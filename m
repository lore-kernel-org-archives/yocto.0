Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89F8EE81814
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 03:07:17 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.10767.1695697633578174077
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 20:07:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UK87Iu86;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2745cd2ba68so5997424a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 20:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695697633; x=1696302433; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aIwf36cQIQT1U+6nSmvSL6mHlRw8ZGc1ba80TvSNu0E=;
        b=UK87Iu86FnLp4AxrxNFtbi0/U9K80xE/0hWWkR4Pip40tdKw12DYHABqSp/0VFBqHG
         kWUoWmcv46ZJyYMKHg7DMxM+1OS/IqQlyrM3VpJWI2paVq+ba6Wd/326+44BvnvjY+So
         imJwuSC7Uwb1ElTDvooEifHyHLUFslxiDxPZMHPr4klKWeQGhKM+tmCOK2Tq7mjDyIz0
         c9RUUyHH7Pfhda7RIPhaHdk/Ztvm7spxGRJ5dQeQQZUch7vK8BKdLhDNOHp5FVSWO9Uc
         1M30L+tZFjpcyTvyg3QfG47jAWbiYBPq+6BPIx72xKH4S15s02koXhj4FsCS+DIXvWux
         kNyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695697633; x=1696302433;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aIwf36cQIQT1U+6nSmvSL6mHlRw8ZGc1ba80TvSNu0E=;
        b=QeAJGCB2QQzqsJb1B+RueKyquBN3x8hrq5YCV3dtAbc0gZ5ZTmXzTIfvXTqn5yI3Xw
         EcMtXdtQL5z29imPNLgp9NmTL5eczeB1FgfigkpXpbzeVK6A/LvNam1bReGE8ztzlPpR
         DW2hj6FcGB4+iiUH2MCG9PZT6idzUHCPlzNUdz03se75FdCJYwnMrpHnAGrA2TaF6Ndz
         sYl5rOC81MQrBKdjj6E41pFN657dw2paqMEJiaYi1Foj7tTb86B2+ibi0GZZjy3tdxH1
         Injr6BWvtVmc1COfyYEdu06bSIONKQ25/EqQ9z9Cyepp85MTCNjTpcDFLRXEABK6qNlb
         7VNw==
X-Gm-Message-State: AOJu0YxbL5LzCUA8p+EcdTiy4ESrzWsMxPqb0CtYRTwugrTd/S2HJJOZ
	btavoApBBIfG27YqG/QGDl9uuqhaLQLknA==
X-Google-Smtp-Source: AGHT+IFk/Zf90et2pJsj5HgxZdhU/POKhGfST138mic3OmB3GUwrjk5Lhz0BceN2W7sCr2avo6nLpg==
X-Received: by 2002:a17:90a:2c81:b0:276:df1d:61ba with SMTP id n1-20020a17090a2c8100b00276df1d61bamr8223978pjd.17.1695697632768;
        Mon, 25 Sep 2023 20:07:12 -0700 (PDT)
Received: from localhost.localdomain ([206.83.112.219])
        by smtp.gmail.com with ESMTPSA id bt24-20020a17090af01800b0026f90d7947csm8771831pjb.34.2023.09.25.20.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 20:07:12 -0700 (PDT)
From: anthony.t.davies@gmail.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Anthony Davies <anthony.t.davies@gmail.com>
Subject: [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
Date: Tue, 26 Sep 2023 13:06:29 +1000
Message-Id: <20230926030628.3859733-1-anthony.t.davies@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 03:07:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61112

From: Anthony Davies <anthony.t.davies@gmail.com>

Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf

Fixed bug where dtb couldnt be found when generating KERNEL_IMAGETYPE
other then fitImage image due to KERNEL_DEVICETREE containing the dtb
directory which is not available in the DEPLOY_DIR_IMAGE directory
---
 conf/machine/include/px30.inc              | 2 +-
 conf/machine/include/rk3066.inc            | 2 +-
 conf/machine/include/rk3188.inc            | 2 +-
 conf/machine/include/rk3288.inc            | 2 +-
 conf/machine/include/rk3328.inc            | 2 +-
 conf/machine/include/rk3399.inc            | 2 +-
 conf/machine/include/rockchip-defaults.inc | 2 +-
 conf/machine/include/rockchip-wic.inc      | 6 +++++-
 8 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
index a3727fb..badcbcd 100644
--- a/conf/machine/include/px30.inc
+++ b/conf/machine/include/px30.inc
@@ -12,7 +12,7 @@ require conf/machine/include/rockchip-wic.inc
 
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+KERNEL_IMAGETYPE ?= "fitImage"
 
 TFA_PLATFORM = "px30"
 TFA_BUILD_TARGET = "bl31"
diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index fa97906..3510df2 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyS2"
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_FEATURES:append:rk3066 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
-KERNEL_IMAGETYPE = "zImage"
+KERNEL_IMAGETYPE ?= "zImage"
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index bc96a0c..830f908 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyFIQ0"
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 KERNEL_FEATURES:append:rk3188 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
-KERNEL_IMAGETYPE = "zImage"
+KERNEL_IMAGETYPE ?= "zImage"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index b4c559d..e682c0b 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -11,6 +11,6 @@ SERIAL_CONSOLES = "115200;ttyS2"
 
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
 KERNEL_FEATURES:append:rk3288 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
-KERNEL_IMAGETYPE = "zImage"
+KERNEL_IMAGETYPE ?= "zImage"
 
 UBOOT_SUFFIX ?= "bin"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index f9f8792..6be777c 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_FEATURES:append:rk3328 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+KERNEL_IMAGETYPE ?= "fitImage"
 
 TFA_PLATFORM = "rk3328"
 TFA_BUILD_TARGET = "bl31"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 88c87af..5a3f439 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
 KBUILD_DEFCONFIG ?= "defconfig"
 KERNEL_FEATURES:append:rk3399 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
-KERNEL_IMAGETYPE = "fitImage"
+KERNEL_IMAGETYPE ?= "fitImage"
 
 TFA_PLATFORM = "rk3399"
 TFA_BUILD_TARGET = "bl31"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 3ce2e24..c5cf6c2 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -1,7 +1,7 @@
 # meta-rockchip default settings
 
 # kernel
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel ??= "linux-yocto"
 KCONFIG_MODE ?= "alldefconfig"
 
 # xserver
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 635288c..23ac9d9 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -11,10 +11,14 @@ WKS_FILE_DEPENDS ?= " \
 	virtual/bootloader \
 	virtual/kernel \
 	"
+ 
+KERNEL_DEVICETREE_BASENAME = "${@os.path.basename('${KERNEL_DEVICETREE}')}"
+
 IMAGE_BOOT_FILES = " \
 	${KERNEL_IMAGETYPE} \
-	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE}', d)} \
+	${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE_BASENAME}', d)} \
 	"
+IMAGE_EFI_BOOT_FILES += ${IMAGE_BOOT_FILES}
 
 # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
 # for the console parameter in the wks files
-- 
2.34.1


