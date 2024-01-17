Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC3EC47DA7
	for <webhook@archiver.kernel.org>; Wed, 17 Jan 2024 06:14:08 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.3155.1705472038787940651
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 22:13:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nmvcoGEJ;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-680b1335af6so90253006d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 22:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705472037; x=1706076837; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=NNodtwZnOUCZ3a9DvZpV8rt5OcMpIW5IIKTVCJGB808=;
        b=nmvcoGEJXxk4TFs4RPm5AejyepRw3ioA8sUQmVsaAoyuVIkS9lm3aZaUg1JbeNEsS2
         mLlyjXQxghkVId1dUiNOQyClEip7IU2w9l2g6TXq2r2In1w6APuIoPdLN6vhbvJJHw/1
         wSe+0R0VJrKDAH/MjQxcNzF2nudTpxLb9nZ07CUoowe4CRiy8hwDWoD9WSbI8g/iPPuf
         uN2PM1dOA+PKfRfF2VePtyS3nRTS9wJ/NulnRwe8VHmKryCbNhH60Ec2sfsq5Ihqi2Ag
         XVO++39yBRguDEb5xyH0JxojiZg8Gebdysl6w+pgIwCAd9E+JdKfRZteK1dVbaCMJJuy
         cudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705472037; x=1706076837;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NNodtwZnOUCZ3a9DvZpV8rt5OcMpIW5IIKTVCJGB808=;
        b=gcURribwWXDhFx1vzuDwFZjfosmd9TbzpeNfZmKc+dK91iXb3UTylCbOsws1ymzPvi
         k/1M4TKsvw+hY9vVJxHwPt+vwQYjElDSv039kgLLbG+HHli5N7Mj5lgOuoTi5BLuGH6w
         PE2keY04ClkhuUFN0CVK6MJXLaxEqqWMrGtJFoRcX34d2IHul+MRPT42YptGmRsS5Ns1
         cnTnrvmrakGgHvTNff9kY9RTCq2shvzwTecb13d1wGI2t9kYo6D/xhZxGw0sMJ09yIes
         pL0BzAhAvObFuh5FP6h2x5i3aFm2/ZX7y4HzSiGWlCvQZXAvuZO8OM+brx5spGbRm12p
         Y1rg==
X-Gm-Message-State: AOJu0Yzfb8Ri7OZcZmk3B+wFMsPs1nmTYcC1VjAx+gr9tDgdXLKw/LhZ
	5fADAIjleAYu6LmkziI+iT9hrcNNIak=
X-Google-Smtp-Source: AGHT+IHg4l4KIM0Ihmu5jLRLcgSGh817JzRyqwqe2KlBQDRiUPijEYRh+IfvXZIvrb61hKTxlp57lg==
X-Received: by 2002:a05:6214:1d24:b0:681:65a5:3156 with SMTP id f4-20020a0562141d2400b0068165a53156mr473721qvd.12.1705472036388;
        Tue, 16 Jan 2024 22:13:56 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id l14-20020a0ce84e000000b0068181b61183sm27831qvo.31.2024.01.16.22.13.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 22:13:55 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] roc-rk3308-cc: add
Date: Wed, 17 Jan 2024 01:13:53 -0500
Message-ID: <20240117061353.30123-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 06:14:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62176

The T-Firefly ROC-RK3308-CC is a miniature and compact main board which is
equipped with a cost-effective RK3308 Core Processor and a high-performance
CODEC.

Features:
- Rockchip RK3308, 64-bit, quad-core, Arm Cortex-A35 processor @ 1.3GHz
- 100M ethernet
- PoE
- USB 2.0 and Type-C (OTG and power)
- 802.11 b/g/n WiFi and Bluetooth 4.2

https://en.t-firefly.com/product/rocrk3308cc

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                      | 24 +++++++++++----------
 conf/machine/roc-rk3308-cc.conf             | 12 +++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend         |  2 +-
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 4 files changed, 27 insertions(+), 12 deletions(-)
 create mode 100644 conf/machine/roc-rk3308-cc.conf

diff --git a/README b/README
index 48cb952a3b09..80ba592eb812 100644
--- a/README
+++ b/README
@@ -36,6 +36,7 @@ Status of supported boards:
 		rock-pi-s
 		rock-5a
 		roc-rk3328-cc
+		roc-rk3308-cc
 	builds:
 		marsboard-rk3066
 		radxarock
@@ -43,17 +44,18 @@ Status of supported boards:
 
 Notes:
 -----
-	The latest ddr initializer for the rk3308 platform (currently only
-	used by the rock-pi-s machine) does not output diagnostic messages
-	to uart0. This causes a bunch of gibberish to be printed to the
-	console window which only becomes legible once the linux kernel
-	starts. I.e. the console output of the ddr initialization routine,
-	as well as u-boot is lost. An older version of this same binary
-	blob does, however, support output to uart0 (making its diagnostic
-	messages as well as u-boot available on the console). By default
-	the build assumes the user would like to see these message and be
-	able to have the option to interact with u-boot. Iow: for the
-	rock-pi-s an older version of rkbin is used.
+	The latest ddr initializer for the rk3308 platform does not output
+	diagnostic messages to uart0. This causes a bunch of gibberish to
+	be printed to the console window which only becomes legible once
+	the linux kernel starts. I.e. the console output of the ddr
+	initialization routine, as well as u-boot is lost. An older
+	version of this same binary blob does, however, support output to
+	uart0 (making its diagnostic messages as well as u-boot available
+	on the console). By default the build assumes the user would like
+	to see these message and be able to have the option to interact
+	with u-boot.
+
+	IOW: for rk3308-based devices, an older version of rkbin is used.
 
 	If, however, the user would prefer to use the latest binary ddr
 	initializer from rkbin, simply set:
diff --git a/conf/machine/roc-rk3308-cc.conf b/conf/machine/roc-rk3308-cc.conf
new file mode 100644
index 000000000000..839e73c41f06
--- /dev/null
+++ b/conf/machine/roc-rk3308-cc.conf
@@ -0,0 +1,12 @@
+# Copyright (C) 2024  Trevor Woerner
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: roc-rk3308-cc
+#@DESCRIPTION: T-Firefly ROC-RK3308-CC SBC
+#https://en.t-firefly.com/product/rocrk3308cc
+
+require include/rk3308.inc
+
+UBOOT_MACHINE = "roc-cc-rk3308_defconfig"
+KERNEL_DEVICETREE = "rockchip/rk3308-roc-cc.dtb"
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 3e59e46c646f..dce4f32d356a 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,6 +1,6 @@
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
-DEPENDS:append:rock-pi-s = " u-boot-tools-native"
+DEPENDS:append:rk3308 = " u-boot-tools-native"
 DEPENDS:append:rock-pi-4 = " gnutls-native"
 
 EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index b0efa0d0c130..a9223301dde1 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -17,6 +17,7 @@ COMPATIBLE_MACHINE:nanopi-r2s = "nanopi-r2s"
 COMPATIBLE_MACHINE:nanopi-m4b = "nanopi-m4b"
 COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
 COMPATIBLE_MACHINE:roc-rk3328-cc = "roc-rk3328-cc"
+COMPATIBLE_MACHINE:roc-rk3308-cc = "roc-rk3308-cc"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.43.0.76.g1a87c842ece3


