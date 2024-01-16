Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D715DC47258
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 19:47:46 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web10.27658.1705434457514726060
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 11:47:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=apa/4SK/;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: twoerner@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-4b9ebfb1a5aso656959e0c.2
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 11:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705434455; x=1706039255; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=W0VRJi/p/O4zo78Bw/FKl82Nrn2lOEP88nZrQHGUpVI=;
        b=apa/4SK/LKaQjQ601AIAN/dpjmK48Q89QhJf0O2B9NzjjGVQCULlQpk6IsQCWY0EcY
         CEqLnmxPvHeEueZRBrwL2KITr0NMn6MhVmbThwItbPiXGOx8ZkhHoM9MDYw0b7ZEe4ec
         knooS9mu/mqAvjqkPCR0ffCX8fE8TpXxE0BJOUmYiAWqEaGMYOgodB35t/5mYoOIQ4eE
         t8s+pO90OkScZ//bQFHYNSSxOpK92GuT/D+Yfpmy6DLR561oc/86FKEw2bRAzUicokoK
         T/BibFEV+MoDlxwsFvhys66Ier/G+6XXvd5nGwkn+w5cDVYhr28G7jnrtzuyy6tSo1SE
         Idfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705434455; x=1706039255;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W0VRJi/p/O4zo78Bw/FKl82Nrn2lOEP88nZrQHGUpVI=;
        b=XiFg4owvRbE7E8q4TNZ5uksT42Gq8z33n/SqeI6WJrFwi5QRx5YbP3sdgUfYG9wQjP
         dOgqYDW0HPKzjNtP0c/lPqXf2ZXvk3rQrPAMGJwP/h3MBH0Iasdx6xh3/wDZPc8sClvo
         s4DR01RsqqzzcTnG380kMVUc6MC3CYbcr31idBXDsBKN85OL5MK4LbrJyhyD2lbAUfeA
         LbayLnAnoSevhPtrISix63QRjAu1YC7MHZJouUllEn3JYnlusFNPe2WjE+rVrFLKBcBH
         o+HEppUs7HJ8UqAcRMmvIY6Pg3ygdgcBWM78buDZ8WZAQCjOZ6cb+aH2h15noTAcjy4Q
         BzmA==
X-Gm-Message-State: AOJu0YyGJ0N7VClEE3ZUwpiCEJ1I+Gd3/PSKjzPFICPo1a7PM01S1lUh
	loSRgYshE6CCymr/WLqbcixKLEKU8pU=
X-Google-Smtp-Source: AGHT+IHFqrAN9AQgKnsRZGL8kt4ai3Rw/Wx5EM+wlISOfuMnfPsRWlEDxWTs7/KUSYgNjFMhQ1OOmw==
X-Received: by 2002:a05:6122:4b08:b0:4b6:be96:f5cc with SMTP id fc8-20020a0561224b0800b004b6be96f5ccmr4492812vkb.18.1705434455154;
        Tue, 16 Jan 2024 11:47:35 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id pl6-20020ad44686000000b0067f859a8ef5sm4391698qvb.105.2024.01.16.11.47.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 11:47:34 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v3] rock-pi-e: enable networking in u-boot
Date: Tue, 16 Jan 2024 14:47:28 -0500
Message-ID: <20240116194728.37974-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 19:47:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62172

The rock-pi-e currently comes in 4 board revisions, the latest of which
(v1.21) replaces the realtek 8211e PHY with the 8211f.

This patch enables networking on the rock-pi-e, which had not been working up
to this point. Interestingly enough, this patch also has the side-effect of
enabling both the 8211e and 8211f PHYs under Linux. Previously only the 8211e
boards were working.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v3:
- fix the device tree by moving the snps properties to their correct location
- u-boot patch commit message tweaks

changes in v2:
- add eth_phy_reset_pin to pinctrl-0 in gmac2io node
- u-boot patch commit message tweaks
---
 ...s-rk3328-rock-pi-e-enable-networking.patch | 78 +++++++++++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
 2 files changed, 83 insertions(+)
 create mode 100644 recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch

diff --git a/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch b/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch
new file mode 100644
index 000000000000..7018f0d76324
--- /dev/null
+++ b/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch
@@ -0,0 +1,78 @@
+From 47c4146d2307757340d78117427853409404c080 Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Tue, 16 Jan 2024 14:07:49 -0500
+Subject: [PATCH] arm: dts: rk3328-rock-pi-e: enable networking
+
+Currently the rock-pi-e comes in 4 board spins, the latest of which
+replaces the realtek phy from the rtl8211e to the rtl8211f, therefore
+rename the phy handle to be more generic.
+
+The device tree includes information for the MDIO, therefore enable DM_MDIO
+to use it.
+
+A couple of the snps (Synopsys) properties were in the wrong location
+therefore move them to where they belong.
+
+Upstream-Status: Submitted
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ arch/arm/dts/rk3328-rock-pi-e.dts  | 14 +++++++-------
+ configs/rock-pi-e-rk3328_defconfig |  2 ++
+ 2 files changed, 9 insertions(+), 7 deletions(-)
+
+diff --git a/arch/arm/dts/rk3328-rock-pi-e.dts b/arch/arm/dts/rk3328-rock-pi-e.dts
+index 018a3a5075c7..0739b8fec86e 100644
+--- a/arch/arm/dts/rk3328-rock-pi-e.dts
++++ b/arch/arm/dts/rk3328-rock-pi-e.dts
+@@ -146,12 +146,15 @@
+ 	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+ 	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
+ 	clock_in_out = "input";
+-	phy-handle = <&rtl8211e>;
++	phy-handle = <&rtl8211>;
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
+@@ -163,15 +166,12 @@
+ 		#address-cells = <1>;
+ 		#size-cells = <0>;
+ 
+-		rtl8211e: ethernet-phy@1 {
++		rtl8211: ethernet-phy@1 {
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
+diff --git a/configs/rock-pi-e-rk3328_defconfig b/configs/rock-pi-e-rk3328_defconfig
+index c0375beffec3..65ca028c0787 100644
+--- a/configs/rock-pi-e-rk3328_defconfig
++++ b/configs/rock-pi-e-rk3328_defconfig
+@@ -76,6 +76,8 @@ CONFIG_SYS_I2C_ROCKCHIP=y
+ CONFIG_MISC=y
+ CONFIG_MMC_DW=y
+ CONFIG_MMC_DW_ROCKCHIP=y
++CONFIG_PHY_REALTEK=y
++CONFIG_DM_MDIO=y
+ CONFIG_ETH_DESIGNWARE=y
+ CONFIG_GMAC_ROCKCHIP=y
+ CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+-- 
+2.43.0.76.g1a87c842ece3
+
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index d902c9a05a83..62133f24c64a 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,3 +1,8 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
+SRC_URI:append:rock-pi-e = " \
+	file://0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch \
+	"
+
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
 DEPENDS:append:rock-pi-s = " u-boot-tools-native"
-- 
2.43.0.76.g1a87c842ece3


