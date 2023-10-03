Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFC6E776DA
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:44:21 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.98841.1696293856342327827
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:44:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dr2sCMx9;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1c434c33ec0so2760745ad.3
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696293855; x=1696898655; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yinm6QeBlapfjlW4UXpRiq1JMna4JV9lGfj9SHZsHbM=;
        b=dr2sCMx9tojVdiZo+NHdfql4sSaDfzMBWbOsmJvgfJ9I1x36grMyl/SVYzpHThsBii
         Sb5wGI7wAadWngFwTzM9Y5yA+CEyCDPGCBJNDLnOEBt4Al4aARct5Xi5VNjGCyVFwiEW
         sLyrkz4GsGoQ0K9ZtQXymVVqU9/iYwKSYa9tFzpHjUhQF9rIgntYi66/IXs/zFw/mOel
         U7rwHnjUU7AVh06IB4N3r7kZvpbSc+pcSdU+iRtQuIw/M8mzqV/SsDXhfUX2ofcfOXuq
         uYZPAN22iwzjT/sKx2/KRdjgDMidfD272B1mkNVZDE09v4GNDsFuQfy/IAhqaJBfdw56
         ixSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696293855; x=1696898655;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yinm6QeBlapfjlW4UXpRiq1JMna4JV9lGfj9SHZsHbM=;
        b=U5JWFGn1vxT0EBoNyzuPylf9551QMlDizmkBn5wxa/KAsKIWPcn8Xv4niUSJtay619
         z+IKqrzOFN/yglVlwKJGfLMlfdUxB7arFdxycvxgaj5Z59a3s3xgMG9jBmGbpXb3KAH7
         NMbj8CSdA4LeY66PYFlamIvM8Nw0WnSglzdoIasN/0EGpck7qAQ9yhmUjz+rhHb+59Gm
         uuIxwEkLNz3uLj230Zytf3hYFa62oI0en8vov9fMW/HceujrNtDVXbTsjP0XUdtyl0BN
         BccpROUJ17XjKcGH7Qm0KMZ4Q1N2Tk+2GZN9r4oVHIDZqzSG8ejact88hCO+kKrCDuWE
         DBfQ==
X-Gm-Message-State: AOJu0YzxTSC63obuRLkFCDCeFSo3AtGmc0xApzA6p7sZ8Uk0RZrqXpde
	843SXF9AIjVLQ3LYmqpWPXL5EnWXijl4yg==
X-Google-Smtp-Source: AGHT+IE+ZxdkCA3ZRoe628hGYDiStSvp1H/G0G5zlZcnrrfTF46AuIz0ZXh7WX5tiPiACF6P7H+gCw==
X-Received: by 2002:a17:902:720a:b0:1c5:f4c7:b4e4 with SMTP id ba10-20020a170902720a00b001c5f4c7b4e4mr11669984plb.39.1696293855513;
        Mon, 02 Oct 2023 17:44:15 -0700 (PDT)
Received: from localhost.localdomain ([65.181.3.195])
        by smtp.gmail.com with ESMTPSA id 10-20020a170902c14a00b001bf52834696sm63548plj.207.2023.10.02.17.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:44:15 -0700 (PDT)
From: anthony.t.davies@gmail.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Anthony Davies <anthony.t.davies@gmail.com>
Subject: [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override v3
Date: Tue,  3 Oct 2023 11:43:08 +1100
Message-Id: <20231003004307.93133-1-anthony.t.davies@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:44:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61202

From: Anthony Davies <anthony.t.davies@gmail.com>

Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf

Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
---
 conf/machine/include/px30.inc   | 2 +-
 conf/machine/include/rk3066.inc | 2 +-
 conf/machine/include/rk3188.inc | 2 +-
 conf/machine/include/rk3288.inc | 2 +-
 conf/machine/include/rk3328.inc | 2 +-
 conf/machine/include/rk3399.inc | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

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
-- 
2.34.1


