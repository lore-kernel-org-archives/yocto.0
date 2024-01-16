Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 128BCC47077
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 16:56:06 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web10.21373.1705424157384519802
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 08:55:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kKO6zxiK;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: twoerner@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5ff56d1dd71so7981197b3.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 08:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705424155; x=1706028955; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nx298+iRpzzmfEN5ahe1qJ5AD546/GhGUogIAcfTOLw=;
        b=kKO6zxiKdFCfMljuSJs4MUdOnYfuHz84G0wR0Rt0gX2CMSIYLTTJLNh5JycZ96SDQ2
         BfwW7VaiFC0A1oE0q/veW1Q4wPWJRP54YKJFBNolOqb/EXL3iagTqq6nhTZFYssqfapk
         BdqpYEc8AF0xPfv2j2mNKiYohpW3wmz+FJ7+QENBUtJbulcNWdNmYOWNB9TCiGd1AQXH
         kIP1UjKHGXsdSlxUKjh6VDtp+8A/kkDr7aURxLiDJdJ8Ak11SwPl9beCADaVOrqVZkVT
         flbV2n0Gmk5zymRVsf3gqLtvdD1FJP4hlpRaGVMiZIKe9btDcM45GM/OdyAvP/gAKKOm
         j6ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705424155; x=1706028955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nx298+iRpzzmfEN5ahe1qJ5AD546/GhGUogIAcfTOLw=;
        b=vK6FqjsZFh/ixUz2kvXh9MvS2/lEotj3X1k6Dhb3YotToldrGekmeFADTk+QWlizwt
         L2GrpCH/mH0a3ogJvCsv8D1tirJthXGfTyzH2Yr2SPuv2jgLhKO4aLlx08QETGv8aAW+
         q+WCAbUoOMZjyjT7Et1NAyJ/mO6gaU7dfNCy/t2yt/EoWX3i7mD8LdCzB2b/btH/wLyQ
         CEU50SHq3RaY3W8VJbr3nFe3L3xaw6iNCj4VVcX23aad2tk3/AxoiTznQ5IPBtw9UgYB
         +VX0AhEPgfF6gsU+9iP/+NKNd5Vmu3jhDNRHHoRQNrpf4xUl6zn1niyVwbqYhjljMxF7
         UQCw==
X-Gm-Message-State: AOJu0Yyw7P4KSus8LckoHhXrQoD81JWARWpmC+y1RKQsgBDf66ETW99f
	WgHdAf2dpdKRMZWRd1vEQvzSQHzdLes=
X-Google-Smtp-Source: AGHT+IEQ51u595AAJOVACG8rXPh+nXMK3HYo+YWmzCGqT75UDYarQBxHa6mhLqoGbtCdEYWo1bqk3A==
X-Received: by 2002:a81:400c:0:b0:5ef:8691:c8b9 with SMTP id l12-20020a81400c000000b005ef8691c8b9mr4952015ywn.15.1705424155359;
        Tue, 16 Jan 2024 08:55:55 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b12-20020a0ccd0c000000b006817724579esm275974qvm.106.2024.01.16.08.55.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 08:55:54 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2] rock-pi-e: enable networking in u-boot
Date: Tue, 16 Jan 2024 11:55:50 -0500
Message-ID: <20240116165550.25181-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 16:56:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62171

The rock-pi-e currently comes in 4 board revisions, the latest of which
(v1.21) replaces the realtek 8211e PHY with the 8211f.

This patch enables networking on the rock-pi-e, which had not been working up
to this point. Interestingly enough, this patch also has the side-effect of
enabling both the 8211e and 8211f PHYs under Linux. Previously only the 8211e
boards were working.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v2:
- add eth_phy_reset_pin to pinctrl-0 in gmac2io node
- u-boot patch commit message tweaks
---
 ...s-rk3328-rock-pi-e-enable-networking.patch | 68 +++++++++++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
 2 files changed, 73 insertions(+)
 create mode 100644 recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch

diff --git a/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch b/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch
new file mode 100644
index 000000000000..e1c71a40261b
--- /dev/null
+++ b/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch
@@ -0,0 +1,68 @@
+From 9204939a75805769c654b1dab399c30f2b9bd9b4 Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Tue, 16 Jan 2024 11:33:50 -0500
+Subject: [PATCH] arm: dts: rk3328-rock-pi-e: enable networking
+
+Currently the rock-pi-e comes in 4 board spins, the latest of which
+replaces the realtek phy from the rtl8211e to the rtl8211f, therefore
+rename the phy handle to be more generic.
+
+The device tree includes information for the MDIO, therefore enable DM_MDIO
+to use it. The gmac2io node needs addition information in order for the
+driver to initialize correctly, specifically the 3 "snps" lines; add the
+reset pin to the pinctrl-0 entry to match.
+
+Upstream-Status: Submitted
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ arch/arm/dts/rk3328-rock-pi-e.dts  | 9 ++++++---
+ configs/rock-pi-e-rk3328_defconfig | 2 ++
+ 2 files changed, 8 insertions(+), 3 deletions(-)
+
+diff --git a/arch/arm/dts/rk3328-rock-pi-e.dts b/arch/arm/dts/rk3328-rock-pi-e.dts
+index 018a3a5075c7..f5e28cbf4ffe 100644
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
+@@ -163,7 +166,7 @@
+ 		#address-cells = <1>;
+ 		#size-cells = <0>;
+ 
+-		rtl8211e: ethernet-phy@1 {
++		rtl8211: ethernet-phy@1 {
+ 			reg = <1>;
+ 			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
+ 			pinctrl-names = "default";
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


