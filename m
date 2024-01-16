Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C90C47077
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 22:21:37 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.32527.1705443692952219426
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 14:21:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L7tfGZhU;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: twoerner@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5f2d4aaa2fdso105761187b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 14:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705443687; x=1706048487; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=jqpsiZP09R8TFFRvv8nQ8vhz4pELhQakLoQ6QiE+XJU=;
        b=L7tfGZhUQO8r7Lz+Jp7Ew8InD+qfRisfpRgFownx9WVeOv0ejVVCFheqKvd1Dcfr7U
         Ihn1CIlhdLrHALLV1nQRudIsr5cIN5djG5T9JL78nMe/gO3epLUOUXwsnGbyfx9e+L4Z
         OxjMlBiQSvZrqgLalQDrumg+h0QZHDFpkMY5HY4gcgPpO+s97XeIeI2yiCD+b8Utf//+
         OWABKpya7hBaoJrzzFXAEut2i1IBVZ8xeDyN54mOoC3oCwWsu9o9Z7GNbFBsnG9AlSlz
         NqfMqyagJclZ97YjK2l7yEaTioa/2eTKbb43gm5CZxKGhGrlnpYwbnKQDwkeYQ1clkWL
         8HNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705443687; x=1706048487;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jqpsiZP09R8TFFRvv8nQ8vhz4pELhQakLoQ6QiE+XJU=;
        b=PjKw7eXbuhaMQPFogykc+z/oZonGksIklq9HzVyIuxpXYsFloeO9PIe43nWtWYxEUs
         vfFyGDc7Qcldl/XaNhK8aHC2ehImYsmY0QXeds06nWlBOnkm5FO7/v4axvjZA9gSubV7
         EMkehGVRKdj/hMri38vNn2Q0ySu/zGp2ghWDbjCQNSv8hs9U3/C5Afwm5Xu9GtWqpxVN
         8+xwG+FHmHAYy/3wyM/SC4zot39vtm9b//+QyFf2m1KpX+xIuORPSLn2/XBJ2zklNXBU
         Oi/DwPj3p9vRE96GEHa47H/G8merkSyFLMTIuN8DiAGZyQTDqPLTSpmKzEBsxRQCCulq
         ZlGQ==
X-Gm-Message-State: AOJu0YxsCVEGC5T0N2eV8y5bkv0rW9uuI+sMyaCmDhAHXoCgMCWjatCv
	Wul63I07+sGg3BhUExfh4Q18YVXTar0=
X-Google-Smtp-Source: AGHT+IG3cN+jrxriXatvyRFLUdeehXc+N8VMcg+2k5/SJZypbB7g4mqw9/s4XZIpIxFcejFKk7Z38Q==
X-Received: by 2002:a81:ef12:0:b0:5fa:f4dc:6504 with SMTP id o18-20020a81ef12000000b005faf4dc6504mr6252020ywm.50.1705443686745;
        Tue, 16 Jan 2024 14:21:26 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id qb14-20020ad4470e000000b00681094c078esm4526512qvb.95.2024.01.16.14.21.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 14:21:26 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-pi-e: fix kernel device-tree
Date: Tue, 16 Jan 2024 17:21:06 -0500
Message-ID: <20240116222106.24629-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 22:21:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62173

The device-tree for the GbE interface of the rock-pi-e had some properties
in the wrong location. Oddly enough the older rock-pi-e devices with
the Realtek 8211e PHY worked fine, but the latest spin (v1.21) with the
rtl8211f PHY didn't. This fixes allows both PHYs to work.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 ...hip-rock-pi-e-adjust-phy-handle-name.patch | 40 +++++++++++++++
 ...ip-rock-pi-e-fix-location-of-snps-pr.patch | 50 +++++++++++++++++++
 recipes-kernel/linux/linux-yocto_%.bbappend   |  4 ++
 3 files changed, 94 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch
 create mode 100644 recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch

diff --git a/recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch b/recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch
new file mode 100644
index 000000000000..6ba072732854
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch
@@ -0,0 +1,40 @@
+From 58f61444baa53d8818911c43e4060d550d5c19b9 Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Tue, 16 Jan 2024 15:03:58 -0500
+Subject: [PATCH 1/2] arm64: dts: rockchip: rock-pi-e: adjust phy-handle name
+
+The rock-pi-e currently comes in 4 board spins, the latest one (v1.21) swaps
+out the Realtek 8211e PHY for an 8211f PHY. Therefore modify the phy-handle
+name to be more generic.
+
+Upstream-Status: Submitted
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+index 018a3a5075c7..096cfa19036e 100644
+--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
++++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+@@ -146,7 +146,7 @@ &gmac2io {
+ 	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+ 	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
+ 	clock_in_out = "input";
+-	phy-handle = <&rtl8211e>;
++	phy-handle = <&rtl8211>;
+ 	phy-mode = "rgmii";
+ 	phy-supply = <&vcc_io>;
+ 	pinctrl-names = "default";
+@@ -163,7 +163,7 @@ mdio {
+ 		#address-cells = <1>;
+ 		#size-cells = <0>;
+ 
+-		rtl8211e: ethernet-phy@1 {
++		rtl8211: ethernet-phy@1 {
+ 			reg = <1>;
+ 			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
+ 			pinctrl-names = "default";
+-- 
+2.43.0.76.g1a87c842ece3
+
diff --git a/recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch b/recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch
new file mode 100644
index 000000000000..67ed1a09a0c6
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch
@@ -0,0 +1,50 @@
+From 7eaabc1e5047d839376c4d9e511862f7ded67c24 Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Tue, 16 Jan 2024 15:09:15 -0500
+Subject: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of snps
+ properties
+
+A number of snps (Synopsys) properties are not in their correct location.
+
+Upstream-Status: Submitted
+Fixes: b918e81f2145 ("arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E")
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 10 +++++-----
+ 1 file changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+index 096cfa19036e..0739b8fec86e 100644
+--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
++++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+@@ -150,8 +150,11 @@ &gmac2io {
+ 	phy-mode = "rgmii";
+ 	phy-supply = <&vcc_io>;
+ 	pinctrl-names = "default";
+-	pinctrl-0 = <&rgmiim1_pins>;
++	pinctrl-0 = <&rgmiim1_pins>, <&eth_phy_reset_pin>;
+ 	snps,aal;
++	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
++	snps,reset-active-low;
++	snps,reset-delays-us = <0 10000 50000>;
+ 	snps,rxpbl = <0x4>;
+ 	snps,txpbl = <0x4>;
+ 	tx_delay = <0x26>;
+@@ -165,13 +168,10 @@ mdio {
+ 
+ 		rtl8211: ethernet-phy@1 {
+ 			reg = <1>;
+-			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
++			pinctrl-0 = <&eth_phy_int_pin>;
+ 			pinctrl-names = "default";
+ 			interrupt-parent = <&gpio1>;
+ 			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
+-			reset-assert-us = <10000>;
+-			reset-deassert-us = <50000>;
+-			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+ 		};
+ 	};
+ };
+-- 
+2.43.0.76.g1a87c842ece3
+
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index 7d8fb8b3d58e..7ab51f082932 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -19,3 +19,7 @@ COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
+SRC_URI:append:rock-pi-e = " \
+	file://0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch \
+	file://0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch \
+	"
-- 
2.43.0.76.g1a87c842ece3


