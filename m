Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D42FC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 23:36:44 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.5742.1702942602937865866
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 15:36:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=H1RUHXAI;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-677fba00a49so29260616d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 15:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702942602; x=1703547402; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6XGz19jD1Fwdq+0NMYGwR3+5/cgS1flNQMDiuLeukIc=;
        b=H1RUHXAI6kdUZloINc191JtydpdhH0XAQnZyQcu+d7M7zNe6ysAYM3fgdSeee8CwMm
         9TUFqAGxYoQkiaUdqtjPfvTHio0W8SbKdCKc/9YRUHjDXSHtwp9SZCoKSHWjwOfxT29l
         Q8hRo93ROgYU63AVpHzJdpqt3QTVhdfZD+Ua5j5fFpxI7aBsTfyZeTGEC+ShNk+Cv5gS
         e5lJbPMnWayYyegcnIwyiSD3Fu/iqwpbzaKp7FBIw6UBHAkf8BTMI6kDOYQDZA7lrMU2
         VppXBpw+2ZYCEYwpSlYwbMkV4KH9+sXN63FkLvDviGfnDQG0bN5YlYVjnkRCDJ3CItQi
         TxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702942602; x=1703547402;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6XGz19jD1Fwdq+0NMYGwR3+5/cgS1flNQMDiuLeukIc=;
        b=fGC5JAk+dzH3DZXhHEpO/BBq2QY+/fhKpeUTrWFIsQtU1ZrKm/hDuYLi1/yv2zGQ3S
         IXiqYRS8CJr5d4vXonJjBb7zp7026XZ/v/25Vo/nP76MSLNqo36Gri1Y8A1SpW8Qx9gS
         wsfUhS2ueBXFPgbZN1K4uJbxrcaNiFoj1FHYwJQkrVxBamaMPDymOGnHPwYaGHvkvBty
         w5xDqg11TTTroti/kP5kTe0k0crQ0WdtAYIp+kQAPm0p09ajWrygQWbUpi2LoeHwF+AK
         423mq5NhqPFShwr5t2V27d1uUEdRvW7JSiseajtTZf3vVoqsDG4r99Ym3H5YClQS9T+n
         6hyA==
X-Gm-Message-State: AOJu0Yz0GMYt3cUfoz4C4CEFs9WMhdSeu20YQel8JOMyn9sQfjURb6b8
	kP7NoBHoxZM/3RjjWiCTPvY=
X-Google-Smtp-Source: AGHT+IFsKGFw2QD16Ux4dW3dW7ZYRZHWuv5LraiDvHaVupP/D3YYpFr5SeJTDZ86wLuMgHaynrSLIg==
X-Received: by 2002:a05:6214:c48:b0:67f:2252:aad6 with SMTP id r8-20020a0562140c4800b0067f2252aad6mr259614qvj.47.1702942601721;
        Mon, 18 Dec 2023 15:36:41 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ef14-20020a0562140a6e00b0067f2cd8d316sm2502541qvb.133.2023.12.18.15.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 15:36:41 -0800 (PST)
Date: Mon, 18 Dec 2023 18:36:39 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Abhisit Sangjan <abhisit.sangjan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] orange-pi-5-plus: Support Xunlong Orange
 Pi 5 Plus single-board computer
Message-ID: <20231218233639.GA9815@localhost>
References: <20231215153051.6848-1-abhisit.sangjan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231215153051.6848-1-abhisit.sangjan@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 23:36:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61971

On Fri 2023-12-15 @ 10:30:51 PM, Abhisit Sangjan wrote:
> Orange Pi 5 Plus is RK3588 based SBC featuring:
> - 2x 2.5G ethernet ports – onboard NIC hooked to PCIe 2.0 interface
> - 2x USB 2.0 host ports
> - 2x USB 3.0 host ports (exposed over USB 3.0 hub)
> - Type-C port featuring USB 2.0/3.0 and Alt-DP mode
> - PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket
> - RTC
> - ES8388 on-board sound codec – jack in/out, onboard mic, speaker amplifier
> - SPI NOR flash
> - RGB LED (R is always on)
> - IR receiver
> - PCIe 3.0 on the bottom for NVMe, etc.
> - 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)
> - Power, recovery and Mask ROM buttons
> - 2x HDMI out, 1x HDMI in
> - Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI
> - 4 GB, 8 GB, 16 GB and 32 GB of RAM
> 
> Signed-off-by: Abhisit Sangjan <abhisit.sangjan@gmail.com>
> ---
>  README                                        |  3 ++-
>  conf/machine/include/rk3588.inc               |  4 +---
>  conf/machine/orange-pi-5-plus.conf            | 14 ++++++++++++++
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 10 ++++++++++
>  recipes-bsp/u-boot/u-boot%.bbappend           |  5 +++++
>  recipes-bsp/u-boot/u-boot_2024.01.bb          |  5 +++++
>  recipes-kernel/linux/linux-yocto-dev.bbappend |  5 +++++
>  7 files changed, 42 insertions(+), 4 deletions(-)
>  create mode 100644 conf/machine/orange-pi-5-plus.conf
>  create mode 100644 recipes-bsp/u-boot/u-boot_2024.01.bb
> 
> diff --git a/README b/README
> index e5beaa0..4d1a83e 100644
> --- a/README
> +++ b/README
> @@ -31,6 +31,7 @@ Status of supported boards:
>  		firefly-rk3288
>  		nanopi-r4s
>  		rock-5b
> +		orange-pi-5-plus
>  		nanopi-r2s
>  		nanopi-m4b
>  		rock-pi-s

The list is "sorted" from earliest inclusion in meta-rockchip to latest.
Therefore the most recent addition should be added at the bottom of the list.

> @@ -57,7 +58,7 @@ Notes:
>  	initializer from rkbin, simply set:
>  
>  		RKBIN_RK3308_LATEST = "1"
> -	
> +

Remove spurious edits.

>  	in the configuration (e.g. conf/local.conf).
>  
>  Maintenance:
> diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
> index 34f0627..46ac2ba 100644
> --- a/conf/machine/include/rk3588.inc
> +++ b/conf/machine/include/rk3588.inc
> @@ -1,6 +1,4 @@
>  MACHINEOVERRIDES =. "rk3588:"
>  
> -# the rk3588s is a "stripped-down" version of the rk3588
> -# in the kernel's device-tree the rk3588 builds on top of the rk3588s
> -# so anything that is valid for the rk3588s is valid for the rk3588
> +# The rk3588 is a "full" version of the rk3588 series
>  require conf/machine/include/rk3588s.inc

You don't understand how we're using rk3588 and rk3588s in meta-rockchip. From
meta-rockchip's point of view their the same so instead of having two
identical include files, we simply reference one from the other. The comment
was placed there on purpose to point this out to the user.

> diff --git a/conf/machine/orange-pi-5-plus.conf b/conf/machine/orange-pi-5-plus.conf
> new file mode 100644
> index 0000000..a222c84
> --- /dev/null
> +++ b/conf/machine/orange-pi-5-plus.conf
> @@ -0,0 +1,14 @@
> +#@TYPE: Machine
> +#@NAME: Xunlong Orange Pi 5 Plus
> +#@DESCRIPTION: It is the 5th generation of single-board computer designed by Kunlong.
> +#http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-5-plus-32GB.html
> +
> +require conf/machine/include/rk3588.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
> +KERNEL_DEVICETREE = "rockchip/rk3588-orangepi-5-plus.dtb"
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +
> +UBOOT_MACHINE = "orangepi-5-plus-rk3588_defconfig"
> +
> +PREFERRED_VERSION_u-boot:orange-pi-5-plus = "2024.01"

I would rather not introduce a new recipe just to remove it in a couple weeks.
If orange-pi-5-plus needs u-boot 2024.1 then we can wait a couple weeks to add
it once oe-core's u-boot moves.

> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> index f1609c7..5573ad2 100644
> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
>  
>  COMPATIBLE_MACHINE = "^$"
>  COMPATIBLE_MACHINE:rk3308 = "rk3308"
> +COMPATIBLE_MACHINE:rk3588 = "rk3588"
>  COMPATIBLE_MACHINE:rk3588s = "rk3588s"
>  
>  PACKAGE_ARCH = "${MACHINE_ARCH}"
> @@ -35,6 +36,15 @@ do_deploy:rk3308() {
>  	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart?_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
>  }
>  
> +do_deploy:rk3588() {
> +	# Prebuilt TF-A
> +	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> +	# Prebuilt OPTEE-OS
> +	install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin ${DEPLOYDIR}/tee-rk3588.bin
> +	# Prebuilt U-Boot TPL (DDR init)
> +	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> +}
> +

Again, all of this is already handled so this is redundant.

>  do_deploy:rk3588s() {
>  	# Prebuilt TF-A
>  	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index d902c9a..afd3344 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -7,6 +7,10 @@ EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
>  EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
>  EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
>  EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> +EXTRA_OEMAKE:append:rk3588 = " \
> +	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> +	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> +	"
>  EXTRA_OEMAKE:append:rk3588s = " \
>  	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
>  	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> @@ -17,6 +21,7 @@ INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
>  INIT_FIRMWARE_DEPENDS:rk3308 = " ${@bb.utils.contains('RKBIN_RK3308_LATEST', '1', 'rockchip-rkbin', 'rk3308-rkbin', d)}:do_deploy"
>  INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
>  INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
> +INIT_FIRMWARE_DEPENDS:rk3588 = " rockchip-rkbin:do_deploy"
>  INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
>  do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
>  
> diff --git a/recipes-bsp/u-boot/u-boot_2024.01.bb b/recipes-bsp/u-boot/u-boot_2024.01.bb
> new file mode 100644
> index 0000000..cfa3a87
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot_2024.01.bb
> @@ -0,0 +1,5 @@
> +require recipes-bsp/u-boot/u-boot-common.inc
> +require recipes-bsp/u-boot/u-boot.inc
> +
> +SRCREV:orange-pi-5-plus = "b51cf8bb09b67958fef9424f7c9fa202a4948c12"
> +SRC_URI:orange-pi-5-plus = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
> diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
> index 419ebc1..bed6ed2 100644
> --- a/recipes-kernel/linux/linux-yocto-dev.bbappend
> +++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -1,3 +1,8 @@
>  FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
>  COMPATIBLE_MACHINE:rock-5b = "rock-5b"
>  SRC_URI:append:rock-5b = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
> +
> +KBRANCH:orange-pi-5-plus = "v6.7/standard/base"
> +LINUX_VERSION:orange-pi-5-plus = "6.7"
> +COMPATIBLE_MACHINE:orange-pi-5-plus = "orange-pi-5-plus"
> +SRC_URI:append:orange-pi-5-plus = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
> -- 
> 2.43.0
> 

