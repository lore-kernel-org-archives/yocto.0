Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A54EE776F1
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 02:37:13 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web11.100327.1696300631180456120
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 19:37:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y9Phcm2R;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-690d2e13074so315423b3a.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 19:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696300630; x=1696905430; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jrop2zsaxvS0L/DItFbtkC862kisBMtE9NfuE4qZHI8=;
        b=Y9Phcm2RcZFf1MaRoEoVSLfu8CKAToPrXA5gXEq/UNeIYIH4gZBiAuoVE909C2alJ4
         cB3SoyIYKCDi8hwCzKnxhME5KHcwblIkqi2zudGo3JKpZueV05Gbuv83jZTtl+1iX5A8
         unYnud4C751OM7ywPT8Gg5H5srNpHTZYqMFSzkwKKFCCbn0dGSgWjYRNX2e3LtYvgAFI
         SuaEFrH3QwYopJCrpOA0WremrtyTDlj/vWsoSuiG0iX1zb1SUF5ZKKLsjFuOIVF44qmU
         NeQzFvEWSgCkYYVTSh6EsJTqDAzfRo9q9FP8QTESzptur+WQ2acYEqISsgQbqDMWLZeo
         Hs9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696300630; x=1696905430;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jrop2zsaxvS0L/DItFbtkC862kisBMtE9NfuE4qZHI8=;
        b=huxdhoQjlysXpzbMS9CMuJGFz7Vw0SVSGPrL9OFnV/heQG8Qs4ix7LNSUa6WcpzFXX
         +O8VmDlutp5ZxqscUTcQzBnnsMzAejVNCg5EkoKfDSdgVP6kGgLgAGAkbM79UmDl6GlS
         vAt0RwW8DkHPz8G8V1Sbut3WAR8U6eVP7ZVy+Ue+ZqkPXonkChb4oWjh88KpewIXcKJA
         yzctBKVCnKSdrKKj+HMmfd4G7PRMWA+X2Mz2Ge+k3f1K0MtZ+O48EP3Gkp+skEpFGj32
         VW5h+10gbP6CNrzfq8cPAJRKScVXAb2Gao52Y4pXMsabqvnrnm05rNOoqS0IOBCCROPK
         HCtg==
X-Gm-Message-State: AOJu0Yx8eOb39fwEUfNaeJa+43v24Qi1qi+A1UmMxIbxQrMCaT9ujOP7
	k7gBEMoPpqEi6eBg2LchQLrIzXgt3apcUg==
X-Google-Smtp-Source: AGHT+IEFLhykJLUIfC2fcwvAlcWw8DkfCadJ1bpyQtkaAQj3m7qo8pZYPquvvnfcrbik9+qa+ZbEqA==
X-Received: by 2002:a05:6a21:272f:b0:14c:628b:4b98 with SMTP id rm47-20020a056a21272f00b0014c628b4b98mr10373549pzb.4.1696300630213;
        Mon, 02 Oct 2023 19:37:10 -0700 (PDT)
Received: from localhost.localdomain ([65.181.3.195])
        by smtp.gmail.com with ESMTPSA id p7-20020a170902e74700b001c5076ae6absm171233plf.126.2023.10.02.19.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 19:37:09 -0700 (PDT)
From: anthony.t.davies@gmail.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Anthony Davies <anthony.t.davies@gmail.com>
Subject: [meta-rockchip] [PATCH] machine include files use weak defaults
Date: Tue,  3 Oct 2023 13:34:30 +1100
Message-Id: <20231003023429.195167-1-anthony.t.davies@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 02:37:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61209

From: Anthony Davies <anthony.t.davies@gmail.com>

This allows defaults to be set per machine.conf but also allows 
overrides in local.conf.

Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
---
 conf/machine/include/px30.inc              | 8 ++++----
 conf/machine/include/rk3288.inc            | 4 ++--
 conf/machine/include/rk3328.inc            | 8 ++++----
 conf/machine/include/rk3399.inc            | 8 ++++----
 conf/machine/include/rk3588s.inc           | 8 ++++----
 conf/machine/include/rockchip-defaults.inc | 6 +++---
 conf/machine/include/rockchip-wic.inc      | 8 ++++----
 7 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
index a3727fb..8b94c9d 100644
--- a/conf/machine/include/px30.inc
+++ b/conf/machine/include/px30.inc
@@ -3,19 +3,19 @@
 
 SOC_FAMILY = "px30"
 
-DEFAULTTUNE ?= "cortexa35-crypto"
+DEFAULTTUNE ??= "cortexa35-crypto"
 
 require conf/machine/include/soc-family.inc
 require conf/machine/include/arm/armv8a/tune-cortexa35.inc
 require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
-KBUILD_DEFCONFIG ?= "defconfig"
+KBUILD_DEFCONFIG ??= "defconfig"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
 TFA_PLATFORM = "px30"
 TFA_BUILD_TARGET = "bl31"
 
-UBOOT_SUFFIX ?= "itb"
-UBOOT_ENTRYPOINT ?= "0x06000000"
+UBOOT_SUFFIX ??= "itb"
+UBOOT_ENTRYPOINT ??= "0x06000000"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index b4c559d..978a2ab 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -9,8 +9,8 @@ require conf/machine/include/rockchip-defaults.inc
 
 SERIAL_CONSOLES = "115200;ttyS2"
 
-KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
+KBUILD_DEFCONFIG ??= "multi_v7_defconfig"
 KERNEL_FEATURES:append:rk3288 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
 KERNEL_IMAGETYPE = "zImage"
 
-UBOOT_SUFFIX ?= "bin"
+UBOOT_SUFFIX ??= "bin"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index f9f8792..69ec7bc 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -3,14 +3,14 @@
 
 SOC_FAMILY = "rk3328"
 
-DEFAULTTUNE ?= "cortexa53-crypto"
+DEFAULTTUNE ??= "cortexa53-crypto"
 
 require conf/machine/include/soc-family.inc
 require conf/machine/include/arm/armv8a/tune-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
-KBUILD_DEFCONFIG ?= "defconfig"
+KBUILD_DEFCONFIG ??= "defconfig"
 KERNEL_FEATURES:append:rk3328 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
@@ -18,5 +18,5 @@ KERNEL_IMAGETYPE = "fitImage"
 TFA_PLATFORM = "rk3328"
 TFA_BUILD_TARGET = "bl31"
 
-UBOOT_SUFFIX ?= "itb"
-UBOOT_ENTRYPOINT ?= "0x06000000"
+UBOOT_SUFFIX ??= "itb"
+UBOOT_ENTRYPOINT ??= "0x06000000"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 88c87af..491bc3d 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -3,14 +3,14 @@
 
 SOC_FAMILY = "rk3399"
 
-DEFAULTTUNE ?= "cortexa72-cortexa53-crypto"
+DEFAULTTUNE ??= "cortexa72-cortexa53-crypto"
 
 require conf/machine/include/soc-family.inc
 require conf/machine/include/arm/armv8a/tune-cortexa72-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
-KBUILD_DEFCONFIG ?= "defconfig"
+KBUILD_DEFCONFIG ??= "defconfig"
 KERNEL_FEATURES:append:rk3399 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
@@ -18,5 +18,5 @@ KERNEL_IMAGETYPE = "fitImage"
 TFA_PLATFORM = "rk3399"
 TFA_BUILD_TARGET = "bl31"
 
-UBOOT_SUFFIX ?= "itb"
-UBOOT_ENTRYPOINT ?= "0x06000000"
+UBOOT_SUFFIX ??= "itb"
+UBOOT_ENTRYPOINT ??= "0x06000000"
diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
index 7bfc947..f8292aa 100644
--- a/conf/machine/include/rk3588s.inc
+++ b/conf/machine/include/rk3588s.inc
@@ -1,11 +1,11 @@
 MACHINEOVERRIDES =. "rk3588s:"
-DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
+DEFAULTTUNE ??= "cortexa76-cortexa55-crypto"
 
 require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
 require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
-KBUILD_DEFCONFIG ?= "defconfig"
+KBUILD_DEFCONFIG ??= "defconfig"
 KERNEL_FEATURES:append:rk3588s = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
@@ -13,5 +13,5 @@ KERNEL_IMAGETYPE = "fitImage"
 PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
 PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
 
-UBOOT_SUFFIX ?= "itb"
-UBOOT_ENTRYPOINT ?= "0x06000000"
+UBOOT_SUFFIX ??= "itb"
+UBOOT_ENTRYPOINT ??= "0x06000000"
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 3ce2e24..11d0fc7 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -1,8 +1,8 @@
 # meta-rockchip default settings
 
 # kernel
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-KCONFIG_MODE ?= "alldefconfig"
+PREFERRED_PROVIDER_virtual/kernel ??= "linux-yocto"
+KCONFIG_MODE ??= "alldefconfig"
 
 # xserver
 XSERVER = " \
@@ -18,4 +18,4 @@ XSERVER = " \
 	"
 
 # misc
-SERIAL_CONSOLES ?= "1500000;ttyS2"
+SERIAL_CONSOLES ??= "1500000;ttyS2"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 635288c..883fcef 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -1,10 +1,10 @@
 # common meta-rockchip wic/wks items
 
-SPL_BINARY ?= "idbloader.img"
+SPL_BINARY ??= "idbloader.img"
 
 IMAGE_FSTYPES += "wic wic.bmap"
 WKS_FILE = "rockchip.wks"
-WKS_FILE_DEPENDS ?= " \
+WKS_FILE_DEPENDS ??= " \
 	mtools-native \
 	dosfstools-native \
 	e2fsprogs-native \
@@ -18,8 +18,8 @@ IMAGE_BOOT_FILES = " \
 
 # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
 # for the console parameter in the wks files
-RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
-RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
+RK_CONSOLE_BAUD ??= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
+RK_CONSOLE_DEVICE ??= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
 
 WICVARS:append = " \
 	RK_CONSOLE_BAUD \
-- 
2.34.1


