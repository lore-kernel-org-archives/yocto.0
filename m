Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FCA9C47DAF
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 22:58:23 +0000 (UTC)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web10.8084.1705618693716688703
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jan 2024 14:58:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NInlo3ng;
 spf=pass (domain: gmail.com, ip: 209.85.222.51, mailfrom: twoerner@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-7cedcea89a0so58118241.1
        for <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 14:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705618691; x=1706223491; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VxAhiXmGeA1Iu+7Spv05wseR5RbRmdeV9gCEtKha0dU=;
        b=NInlo3ngupTuVY6w6MWYukZIneMrLLZV49S5s/O2B4AjKNlOxCSGVBE6K66afhkNrT
         Ayt8emLR/9pJD1/4FTZKoPEx4cIhaJizuf+Jun3XBf7tyDY3c5l/PuOD+PGf+UNblyFA
         F3d9oYMnJ7v0lsx8LICoTmbPA193NyNGNzbtr1CssBKyyBRL6NmjrDeuzkCi6vy1qDjW
         fP3zqM9i+oepAupjR2hOqwMqPbrO+kal2XOsnv91tUmuSI/82/NEQdgsF3N1qy+0AlS2
         tdo6iXBGQZecXqQo5YODriKLo1qdFVCw6nTMreIyuU1MM4YYbGV69YrNy/gaBn+LzZqV
         LKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705618691; x=1706223491;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VxAhiXmGeA1Iu+7Spv05wseR5RbRmdeV9gCEtKha0dU=;
        b=cgPK8/iod/JKkKcGjJ9ZEVV2ud0rxmSBv87kjM/8R2WjpgBZ9+GuxcFfYfbOZLp3Mn
         22p3bcz8qGFHkRhxw00a1He6YaiBVG6PfEwAuiiS8YYJ0P2JkOvNOCO/R78AZEIfvkHD
         HBitnmrnx5e1dldaijhBiRgr+lON0mCQyR39+Mfga/fNHahP6JX+WkqgxkiI2gtqEK6H
         dtvqohE5/czKJ0I7NHn+YXEDMx6B399WQl3yHj2b2FWsKk2T7KEUF7XdhPT+WteWDA2s
         cpZ7beg2KqI4GKiuqbYZDW9Pd2YmT+Bi5X8NyBGRCnCUa2qOH4dtAryljIwKgZsorMoP
         kcVg==
X-Gm-Message-State: AOJu0YyjfS4n3cS63pXrtQmUF4zgL3fPltoStq+kGv0KjtmoCkBm/Ue8
	LFKTs31dMTi+yoXCA4bCHepUjW2cD6OeRuYXlHRFaacD9fX39t02HIvUviPJ
X-Google-Smtp-Source: AGHT+IHLuC2zfQk0UWOlCdAfbbM9qhvX8oPW6Q57Tk6XzPQlggXmCn3XyN+QhOrPGvjx768ZwW6qow==
X-Received: by 2002:a67:e417:0:b0:469:8a40:897f with SMTP id d23-20020a67e417000000b004698a40897fmr1595532vsf.29.1705618691267;
        Thu, 18 Jan 2024 14:58:11 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 9-20020a9f2389000000b007ce1febd008sm1428942uao.34.2024.01.18.14.58.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 14:58:10 -0800 (PST)
Date: Thu, 18 Jan 2024 17:58:08 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] rock-pi-e: fix kernel device-tree
Message-ID: <20240118225808.GA14779@localhost>
References: <17AAF40106759266.7072@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AAF40106759266.7072@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 22:58:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62193

I have provided 2 patches recently to fix the ethernet issue on the rock-pi-e.
By submitting them upstream it prompted a conversation to led to the
maintainer creating a proper fix in U-Boot. Therefore these 2 patches of mine
are obsolete and I will be submitting a newer patch to add the maintainer's
U-Boot patches to the build.

On Tue 2024-01-16 @ 05:21:06 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> The device-tree for the GbE interface of the rock-pi-e had some properties
> in the wrong location. Oddly enough the older rock-pi-e devices with
> the Realtek 8211e PHY worked fine, but the latest spin (v1.21) with the
> rtl8211f PHY didn't. This fixes allows both PHYs to work.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  ...hip-rock-pi-e-adjust-phy-handle-name.patch | 40 +++++++++++++++
>  ...ip-rock-pi-e-fix-location-of-snps-pr.patch | 50 +++++++++++++++++++
>  recipes-kernel/linux/linux-yocto_%.bbappend   |  4 ++
>  3 files changed, 94 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch
>  create mode 100644 recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch
> 
> diff --git a/recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch b/recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch
> new file mode 100644
> index 000000000000..6ba072732854
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch
> @@ -0,0 +1,40 @@
> +From 58f61444baa53d8818911c43e4060d550d5c19b9 Mon Sep 17 00:00:00 2001
> +From: Trevor Woerner <twoerner@gmail.com>
> +Date: Tue, 16 Jan 2024 15:03:58 -0500
> +Subject: [PATCH 1/2] arm64: dts: rockchip: rock-pi-e: adjust phy-handle name
> +
> +The rock-pi-e currently comes in 4 board spins, the latest one (v1.21) swaps
> +out the Realtek 8211e PHY for an 8211f PHY. Therefore modify the phy-handle
> +name to be more generic.
> +
> +Upstream-Status: Submitted
> +Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> +---
> + arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
> + 1 file changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +index 018a3a5075c7..096cfa19036e 100644
> +--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> ++++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +@@ -146,7 +146,7 @@ &gmac2io {
> + 	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
> + 	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
> + 	clock_in_out = "input";
> +-	phy-handle = <&rtl8211e>;
> ++	phy-handle = <&rtl8211>;
> + 	phy-mode = "rgmii";
> + 	phy-supply = <&vcc_io>;
> + 	pinctrl-names = "default";
> +@@ -163,7 +163,7 @@ mdio {
> + 		#address-cells = <1>;
> + 		#size-cells = <0>;
> + 
> +-		rtl8211e: ethernet-phy@1 {
> ++		rtl8211: ethernet-phy@1 {
> + 			reg = <1>;
> + 			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
> + 			pinctrl-names = "default";
> +-- 
> +2.43.0.76.g1a87c842ece3
> +
> diff --git a/recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch b/recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch
> new file mode 100644
> index 000000000000..67ed1a09a0c6
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch
> @@ -0,0 +1,50 @@
> +From 7eaabc1e5047d839376c4d9e511862f7ded67c24 Mon Sep 17 00:00:00 2001
> +From: Trevor Woerner <twoerner@gmail.com>
> +Date: Tue, 16 Jan 2024 15:09:15 -0500
> +Subject: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of snps
> + properties
> +
> +A number of snps (Synopsys) properties are not in their correct location.
> +
> +Upstream-Status: Submitted
> +Fixes: b918e81f2145 ("arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E")
> +Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> +---
> + arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 10 +++++-----
> + 1 file changed, 5 insertions(+), 5 deletions(-)
> +
> +diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +index 096cfa19036e..0739b8fec86e 100644
> +--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> ++++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +@@ -150,8 +150,11 @@ &gmac2io {
> + 	phy-mode = "rgmii";
> + 	phy-supply = <&vcc_io>;
> + 	pinctrl-names = "default";
> +-	pinctrl-0 = <&rgmiim1_pins>;
> ++	pinctrl-0 = <&rgmiim1_pins>, <&eth_phy_reset_pin>;
> + 	snps,aal;
> ++	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
> ++	snps,reset-active-low;
> ++	snps,reset-delays-us = <0 10000 50000>;
> + 	snps,rxpbl = <0x4>;
> + 	snps,txpbl = <0x4>;
> + 	tx_delay = <0x26>;
> +@@ -165,13 +168,10 @@ mdio {
> + 
> + 		rtl8211: ethernet-phy@1 {
> + 			reg = <1>;
> +-			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
> ++			pinctrl-0 = <&eth_phy_int_pin>;
> + 			pinctrl-names = "default";
> + 			interrupt-parent = <&gpio1>;
> + 			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
> +-			reset-assert-us = <10000>;
> +-			reset-deassert-us = <50000>;
> +-			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
> + 		};
> + 	};
> + };
> +-- 
> +2.43.0.76.g1a87c842ece3
> +
> diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
> index 7d8fb8b3d58e..7ab51f082932 100644
> --- a/recipes-kernel/linux/linux-yocto_%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto_%.bbappend
> @@ -19,3 +19,7 @@ COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
>  
>  SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
>  SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
> +SRC_URI:append:rock-pi-e = " \
> +	file://0001-arm64-dts-rockchip-rock-pi-e-adjust-phy-handle-name.patch \
> +	file://0002-arm64-dts-rockchip-rock-pi-e-fix-location-of-snps-pr.patch \
> +	"
> -- 
> 2.43.0.76.g1a87c842ece3
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62173): https://lists.yoctoproject.org/g/yocto/message/62173
> Mute This Topic: https://lists.yoctoproject.org/mt/103773839/900817
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [twoerner@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


