Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF139C47077
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 15:41:55 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.18449.1705419714920816256
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 07:41:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CyKy5DH8;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-427a3887483so62404411cf.3
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 07:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705419713; x=1706024513; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=aEs1NyvsaJIlORET/SLb+jC16wXX1/CCxPIVpSUF5Sw=;
        b=CyKy5DH8NRh3Fc+8Ix/aD3IRupsISSpt07YNZYkQ/rpSZveDIJlcoEuc05D38fPh6l
         rSdpOOdmJAbJT4WB39wXlMTzKoof8bDEe3cFhcbUt4VZ5Zoh3a4ZJR4L7C9Sus+VP0pR
         b3k7Exqr0XPd674AVQ1CZskqG48hg9jgvCB8Op56YpIDm7BOCt8u43MZ43urviO1ffo6
         l/Dx3veZS+Yju0L22AMDZg3Bw5iTjvVw1eEccfwoDN5u1pF7I3i85OsoXczpjl1m0UvW
         arfKc/z+41cvBiB7Lh+xvnEVYb+Iuq/QWDxLoJbZgmYhTmzhAkQZ3MtfwTKmv3FbwQnR
         r8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705419713; x=1706024513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aEs1NyvsaJIlORET/SLb+jC16wXX1/CCxPIVpSUF5Sw=;
        b=N0xKdpDpgkKZDx/7dKs2V3itgjhJJFrKDEvN1lO3CGY6gbk2uJRDxfieEW12CEzVKS
         qejR4Hok41l7TanaPX98duG38oPBU/4uSAiocYRyRhvNDosOSmkp9VAEIIjma69vLiAP
         8JFISzbKoWtEDFUHQEpDbAh+tNijVTau1u/mHuTaKE9MFfJYMLUzWwQk5ntqEmd497m4
         gUi1twWJ8a5Tb1yiBwtdRNgFu22XFOI43PHvJlGXpDk2+OXZGwbQ2/4ytqr0GRgYzod7
         eToPVVQ0kZvM1lMq37DMJt76hOAedjPaWGCh4vJIii6UNHA+w5phD/Q83y6+L7T96yvY
         4+BA==
X-Gm-Message-State: AOJu0YwNq7vDpBsFNHHFTi/iWwlfRwqB6rUqYz1wMg201ii3lygZMvE6
	uVpZZCsw4F0wR3MHZMTj71Bg4lpdXoM=
X-Google-Smtp-Source: AGHT+IHKYgweqI+jpXpyXlThuuGi8o4ssuC2N8gQmLxMi1oxgnVAbJ0DtUR3UEhLiV4qnZbrtofmBA==
X-Received: by 2002:a05:622a:1014:b0:429:bfca:bed0 with SMTP id d20-20020a05622a101400b00429bfcabed0mr8224521qte.137.1705419712803;
        Tue, 16 Jan 2024 07:41:52 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id fj5-20020a05622a550500b004299fd63fdesm4973201qtb.4.2024.01.16.07.41.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 07:41:51 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-pi-e: enable networking in u-boot
Date: Tue, 16 Jan 2024 10:41:45 -0500
Message-ID: <20240116154145.11217-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 15:41:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62168

The rock-pi-e currently comes in 4 board revisions, the latest of which
(v1.21) replaces the realtek 8211e PHY with the 8211f.

This patch enables networking on the rock-pi-e, which had not been working up
to this point. Interestingly enough, this patch also has the side-effect of
enabling both the 8211e and 8211f PHYs under Linux. Previously only the 8211e
boards were working.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 ...s-rk3328-rock-pi-e-enable-networking.patch | 68 +++++++++++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
 2 files changed, 73 insertions(+)
 create mode 100644 recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch

diff --git a/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch b/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch
new file mode 100644
index 000000000000..6900543559b1
--- /dev/null
+++ b/recipes-bsp/u-boot/files/0001-arm-dts-rk3328-rock-pi-e-enable-networking.patch
@@ -0,0 +1,68 @@
+From e7b7ba2baeec01e18e7633fad81aa91d1bf64ee1 Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Tue, 16 Jan 2024 09:58:35 -0500
+Subject: [PATCH] arm: dts: rk3328-rock-pi-e: enable networking
+
+Currently the rock-pi-e comes in 4 board spins, the latest of which replaces
+the realtek phy from the rtl8211e to the rtl8211f, therefore rename the phy
+handle to be more generic.
+
+The device tree includes information for the MDIO, therefore enable DM_MDIO to
+use it.
+
+The gmac2io clause needs addition information in order for the driver to
+initialize correctly.
+
+Upstream-Status: Submitted
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ arch/arm/dts/rk3328-rock-pi-e.dts  | 7 +++++--
+ configs/rock-pi-e-rk3328_defconfig | 2 ++
+ 2 files changed, 7 insertions(+), 2 deletions(-)
+
+diff --git a/arch/arm/dts/rk3328-rock-pi-e.dts b/arch/arm/dts/rk3328-rock-pi-e.dts
+index 018a3a5075c7..aa30de69e815 100644
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
+ 	pinctrl-0 = <&rgmiim1_pins>;
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


