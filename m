Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.32518.1623687583703190522
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 09:19:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YwIGajMA;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 65D5538C04D7
	for <yocto@yoctoproject.org>; Mon, 14 Jun 2021 16:19:42 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id d9so6809829qtp.11
        for <yocto@yoctoproject.org>; Mon, 14 Jun 2021 09:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0jEvh3P/utAvJvUZttz90JpUdL0g/Pu31EUeo96lNEU=;
        b=YwIGajMAYoAIEwZ2+j39uKhRB7bOG1UwXxTRpAYhKSlbZ9zyaElqfk3wnBP0K6/ZVM
         o2ktGDSly41vUj255I/xwTmfh7wpK3igyWGmSwguZb1VOioxIKYd6f3yhw3ZFf8e6l6W
         F3EjSuhF2f3jh5qEG2BLDl5YXt3zs7UXHqex4+hIhJ4UWiXB1jxijRexEZDP+kwBJtxi
         yXPXWZU7gEejpHcUae1FCk5DM7B1qc3REJWFh37rEAnW77ov5IdO7nu7kpIH6R6gr4Tt
         WA+db4ffzg93RKUsuiDWftQ/snJUfxEAZR/Ak4fA99n3ZE7qAvo386KSMnjJnS4pM7o2
         eFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0jEvh3P/utAvJvUZttz90JpUdL0g/Pu31EUeo96lNEU=;
        b=PzQ+HOUIplfIHL1mAvWt43qpxIAiYzAaSj3cSIvLbu9F+Ak3Lv4i9+HQ/pORbw3j2I
         CbMEYFzV2wvWIXlvqCgFMoK4xPCb87LvOw2L9QL07AKpk01CoVDw7WPWIuauL14PDwv1
         KbcvhC1UL1vqOQFuG9kqz+D1qggXasR3JHt1vCjY4mqpm1yjdNveczpNxbOLLoz0Spdw
         JIN6bs5IAusxcxmEG7ARtqvEWUbnDhs5O5eifK4vVxp6Yiv7DxviLdwaJ5BbXvuSnWkr
         /gTdp0tWgEXgp5BQoNlah9WTxoJL9xm/FXrVHb5KIZxIwBIGprwEQeYrimPWgitUjEBl
         xC8w==
X-Gm-Message-State: AOAM533lJJP6k7oeL3B0EAggn6OA8lAtEOook7+YANMo+VZUQGDi5TTF
	BurIhDpkTbANX+s39qfrTx8=
X-Google-Smtp-Source: ABdhPJyReFF+RjQu0m/ZR+xMO+dkmKbDtc/b8xIZduPG9dBZKSjiOc0IGKro4vrSOEbaXPwP9/rOXg==
X-Received: by 2002:a05:622a:18b:: with SMTP id s11mr15155822qtw.143.1623687581466;
        Mon, 14 Jun 2021 09:19:41 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d10sm7832484qko.73.2021.06.14.09.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 09:19:40 -0700 (PDT)
Date: Mon, 14 Jun 2021 12:19:38 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@yoctoproject.org, Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH v2] Rock64: add machine
Message-ID: <20210614161938.GA8746@localhost>
References: <20210531140058.2193825-1-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210531140058.2193825-1-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Yann,

Thanks for the contribution!

On Mon 2021-05-31 @ 04:00:58 PM, yann.dirson@blade-group.com wrote:
> From: Yann Dirson <yann@blade-group.com>
> 
> This is a RK3328 board from Pine64.
> Board details at https://wiki.pine64.org/wiki/ROCK64.
> 
> Default image is built to boot from SD-card.  Building an image for
> eMMC requires to set RK_BOOT_DEVICE="mmcblk0".
> 
> Signed-off-by: Yann Dirson <yann@blade-group.com>
> ---
> 
> This is just basic initial support without a kernel BSP.  As is the
> board boots with a serial console.
> 
> Note I had to create the SoC definition for rk3328, and rather than
> setting serial at 115200 there just to have the board definition
> override it with rockchip-standard 1500000 I've set the latter right
> in rk3328.inc.

Sounds good. I prefer the rockchip default of 1,500,000 anyway.

> 
> Changes in v2:
> - include Ayufan's patch for mmc aliases so presence of eMMC won't
> prevent booting from SD
> 
>  conf/machine/include/rk3328.inc               | 25 ++++++++++++++++
>  conf/machine/rock64.conf                      | 30 +++++++++++++++++++
>  ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 +++++++++++++++++
>  recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++++
>  4 files changed, 88 insertions(+)
>  create mode 100644 conf/machine/include/rk3328.inc
>  create mode 100644 conf/machine/rock64.conf
>  create mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch
> 
> diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
> new file mode 100644
> index 0000000..7d67627
> --- /dev/null
> +++ b/conf/machine/include/rk3328.inc
> @@ -0,0 +1,25 @@
> +# Copyright (C) 2020 Garmin Ltd. or its subsidaries

Odd that you'd be assigning the copyright to Garmin ;-)

> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SOC_FAMILY = "rk3328"
> +
> +DEFAULTTUNE ?= "cortexa53-crypto"
> +
> +require conf/machine/include/soc-family.inc
> +require conf/machine/include/tune-cortexa53.inc
> +require conf/machine/include/rockchip-defaults.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_CLASSES = "kernel-fitimage"
> +KERNEL_IMAGETYPE = "fitImage"
> +
> +TFA_PLATFORM = "rk3328"
> +TFA_BUILD_TARGET = "bl31"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> +
> +SERIAL_CONSOLES = "1500000;ttyS2"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
> +SPL_BINARY ?= "idbloader.img"
> diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
> new file mode 100644
> index 0000000..38bc9fa
> --- /dev/null
> +++ b/conf/machine/rock64.conf
> @@ -0,0 +1,30 @@
> +# Copyright (C) 2021 Blade SAS

Can you also specify an OSS-friendly licence too?

> +
> +#@TYPE: Machine
> +#@NAME: Rock64
> +#@DESCRIPTION: Rock64 RK3328 board from Pine64
> +
> +require include/rk3328.inc
> +
> +MACHINE_FEATURES += "usbhost serial"
> +
> +UBOOT_MACHINE = "rock64-rk3328_defconfig"
> +KERNEL_DEVICETREE = "rockchip/rk3328-rock64.dtb"
> +
> +# set to mmcblk0 for booting from optional eMMC
> +RK_BOOT_DEVICE ?= "mmcblk1"
> +
> +WKS_FILE ?= "rock-pi-4.wks"

Personally I'd prefer to see a rock64 wic file which includes an rk3328
default, even if it is a copy of the rock-pi-4 layout.

> +IMAGE_FSTYPES += "wic wic.bmap"
> +
> +WKS_FILE_DEPENDS ?= " \
> +    mtools-native \
> +    dosfstools-native \
> +    virtual/bootloader \
> +    virtual/kernel \
> +    "
> +IMAGE_BOOT_FILES ?= "\
> +    ${KERNEL_IMAGETYPE} \
> +    "
> +
> +KBUILD_DEFCONFIG = "defconfig"
> diff --git a/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch b/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch
> new file mode 100644
> index 0000000..1ad3b9e
> --- /dev/null
> +++ b/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch
> @@ -0,0 +1,27 @@
> +From f10cfe01f753348d346374008b8e8f5f26ed94ab Mon Sep 17 00:00:00 2001
> +From: Kamil Trzcinski <ayufan@ayufan.eu>
> +Date: Mon, 28 Aug 2017 11:24:37 +0200
> +Subject: [PATCH] ayufan: dtsi: rk3328: add mmc0/mmc1 aliases
> +Upstream-Status: Pending [https://github.com/ayufan-rock64/linux-mainline-kernel/commit/f10cfe01f753348d346374008b8e8f5f26ed94ab]
> +
> +Change-Id: I82a5394df8a505f7d1496393621c1198895c88b0
> +---
> + arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
> + 1 file changed, 2 insertions(+)
> +
> +diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +index 0afed15bc7ff..800f1c796882 100644
> +--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> ++++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +@@ -27,6 +27,8 @@
> + 		i2c1 = &i2c1;
> + 		i2c2 = &i2c2;
> + 		i2c3 = &i2c3;
> ++		mmc0 = &emmc;
> ++		mmc1 = &sdmmc;
> + 		ethernet0 = &gmac2io;
> + 		ethernet1 = &gmac2phy;
> + 	};
> +-- 
> +2.30.2
> +
> diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
> index 7702e3f..3789c72 100644
> --- a/recipes-kernel/linux/linux-yocto%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto%.bbappend
> @@ -8,3 +8,9 @@ COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
>  COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
>  COMPATIBLE_MACHINE_nanopi-m4 = "nanopi-m4"
>  COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
> +COMPATIBLE_MACHINE_rock64 = "rock64"
> +
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +# indeed applicable to all rk3328 boards

I have a roc-rk3328-cc ("renegade") board I should investigate adding. Then I
can see if this applies there as well.

> +SRC_URI_append_rock64 = " file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
> -- 
> 2.30.2
> 
