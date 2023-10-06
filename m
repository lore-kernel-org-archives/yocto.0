Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73893E92FD0
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 00:19:33 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.2054.1696551565225681601
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 17:19:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ONSxnF7c;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7757f2d3956so215827985a.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 17:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696551564; x=1697156364; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wTde2QYVYwHzgkNrI9R93AlQo/OEb+xnSkR0vpS7dk4=;
        b=ONSxnF7cs1/5kqDbEQr908TbH1RjvSdHx1jBalznOoesJRKdfG0EEYHkDanGBHKr98
         i5xmgqYOmZZLHTU+GYRN29LCJv7qji4lZZfH1xVYIYw+4/9H4bUEWXE8cNZmpysJjSwT
         MCRVXnOq9a78uDsm1rargfmi0mJ+n3mLlhBwywrRl5eFnDOuHxvxZ1uVS/LsoCQX7jIY
         VdGHauSWzJiT+tsoR5vvnwsVnt0dvNFCm2wtVmS/sKuc6RrC3d2W1yDBiHrugvCUN6yM
         ZYAG2FR8lex1lMZHT9Bmm5NmPRq9bWbXS2YESslovpBB/8M842LNQEtgGki0qeWopevr
         dgzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696551564; x=1697156364;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wTde2QYVYwHzgkNrI9R93AlQo/OEb+xnSkR0vpS7dk4=;
        b=TFpxhf3iYpHqxHyCwBq8JRxdF0YiRvMh1L19tv8jtZIS3MDGehHGQHSL4GwBYmKzrY
         ekFKC5B62zvE87RsTFLuujI06ndE0/CyTyi8I+Bj0S7QkvyS6QzuLr6GwYOuucH/43cs
         omqyJaY2e0xCZOydIF+f1V57z7q4bIsMEuT32PlrtnFoOz3ngtIm1GqvXFLix3aOcDGV
         X3Q2dl/VIS+Qy+xiyQbIK9jLoOZDKi/rzFKRaaamASLRWXyYjeqSWBNEtu954AwEm4Z2
         NNawV7sDn4NGphzoduN6RtMs4StltwbDNMRZZefB4q+pMWEUIvRTAk++HMWBfcNoAeDn
         i82g==
X-Gm-Message-State: AOJu0YxckSJH3qp2bFC34ejxUlqfmWTIvXgfPrFJUOJnFDtV0lqDi/y5
	3pgceAE+WYQ7jatErpjPDAs=
X-Google-Smtp-Source: AGHT+IHp4hwj0yE11YcERWtAhp8TJTky8lAIlcbfPEZIJtVyykXwSMAi8LmaBopzLWQTKiJO4WEl1A==
X-Received: by 2002:a05:620a:8e11:b0:76d:a27c:245 with SMTP id re17-20020a05620a8e1100b0076da27c0245mr4125081qkn.7.1696551564237;
        Thu, 05 Oct 2023 17:19:24 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x9-20020ae9e909000000b0076d6a08ac98sm868741qkf.76.2023.10.05.17.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 17:19:23 -0700 (PDT)
Date: Thu, 5 Oct 2023 20:19:21 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: anthony.t.davies@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] Add support for the Radxa Rock-3a based
 on rk3568
Message-ID: <20231006001921.GA38163@localhost>
References: <20231005224543.1040062-1-anthony.t.davies@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231005224543.1040062-1-anthony.t.davies@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 00:19:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61253

On Fri 2023-10-06 @ 09:45:44 AM, anthony.t.davies@gmail.com wrote:
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Added appropriate inc files and machine.conf
> 
> Modified rockchip-rkbin_git.bb to allow machine overrides on
> do_deploy.
> 
> I have tested this patch on my own rock-3a

This commit message is lacking. Take a look at some of the other commits
adding new machines and try to follow suit.

> 
> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> ---
>  README                                  |  1 +
>  conf/machine/include/rk3568.inc         | 17 ++++++++++
>  conf/machine/rock-3a.conf               | 12 +++++++
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 ++++++++-
>  recipes-bsp/u-boot/u-boot%.bbappend     | 43 ++++++++++++++++---------
>  5 files changed, 73 insertions(+), 16 deletions(-)
>  create mode 100644 conf/machine/include/rk3568.inc
>  create mode 100644 conf/machine/rock-3a.conf
> 
> diff --git a/README b/README
> index 8104474..aa1c834 100644
> --- a/README
> +++ b/README
> @@ -30,6 +30,7 @@ Status of supported boards:
>  		vyasa-rk3288
>  		firefly-rk3288
>  		nanopi-r4s
> +    rock-3a
>  		rock-5b
>  		nanopi-r2s
>  	builds:
> diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
> new file mode 100644
> index 0000000..5382b58
> --- /dev/null
> +++ b/conf/machine/include/rk3568.inc
> @@ -0,0 +1,17 @@
> +MACHINEOVERRIDES =. "rk3568:"
> +DEFAULTTUNE ?= "cortexa55"
> +
> +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> +KERNEL_CLASSES ??= "kernel-fitimage"
> +KERNEL_IMAGETYPE ??= "fitImage"
> +
> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
> new file mode 100644
> index 0000000..452bde0
> --- /dev/null
> +++ b/conf/machine/rock-3a.conf
> @@ -0,0 +1,12 @@
> +#@TYPE: Machine
> +#@NAME: Radxa Rock3a
> +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based SBC(Single Board Computer) and Compute Module by Radxa.
> +#https://wiki.radxa.com/Rock3
> +
> +require conf/machine/include/rk3568.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
> +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +
> +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> index 7fefb01..273f394 100644
> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
>  
>  COMPATIBLE_MACHINE = ""
>  COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> +COMPATIBLE_MACHINE:rk3568 = "rk3568"
>  
>  PACKAGE_ARCH = "${MACHINE_ARCH}"
>  
> @@ -25,7 +26,16 @@ do_install() {
>  PACKAGES = "${PN}"
>  ALLOW_EMPTY:${PN} = "1"
>  
> -do_deploy() {
> +do_deploy:rk3568() {
> +	# Prebuilt TF-A
> +	install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
> +	# Prebuilt OPTEE-OS
> +	install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
> +	# Prebuilt U-Boot TPL (DDR init)
> +	install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
> +}
> +
> +do_deploy:rk3588s() {
>  	# Prebuilt TF-A
>  	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
>  	# Prebuilt OPTEE-OS
> @@ -34,4 +44,8 @@ do_deploy() {
>  	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
>  }
>  
> +do_deploy() {
> +# Needed as a default perhaps a bb.fatal with a message saying an override needs to be set
> +}
> +
>  addtask deploy after do_install
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index e79c471..5af86aa 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -1,25 +1,38 @@
> +do_compile:append:rock2-square () {
> +	# copy to default search path
> +	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
> +		cp ${B}/spl/${SPL_BINARY} ${B}
> +	fi
> +}
> +
> +DEPENDS:append:rock-pi-4 = " gnutls-native"
>  # various machines require the pyelftools library for parsing dtb files
>  DEPENDS:append = " python3-pyelftools-native"
> -DEPENDS:append:rock-pi-4 = " gnutls-native"
>  
> -EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> -EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> -EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> +INIT_FIRMWARE_DEPENDS ??= ""
> +
>  EXTRA_OEMAKE:append:rk3588s = " \
>  	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
>  	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
>  	"
> +INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> +INIT_FIRMWARE_DEPENDS:rk3568 = " rockchip-rkbin:do_deploy"
>  
> -INIT_FIRMWARE_DEPENDS ??= ""
> -INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
> -INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> +EXTRA_OEMAKE:append:rk3568 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3568.elf"
> +ATF_DEPENDS:append:rk3568 = " trusted-firmware-a:do_deploy"
> +EXTRA_OEMAKE:append:rk3568 = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3568.bin"
> +ATF_DEPENDS:append:rk3568 = " rockchip-rkbin:do_deploy"
> +
> +EXTRA_OEMAKE:append:rk3588s = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf"
> +ATF_DEPENDS:append:rk3588s = " trusted-firmware-a:do_deploy"
> +EXTRA_OEMAKE:append:rk3588s = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin"
> +ATF_DEPENDS:append:rk3588s = " rockchip-rkbin:do_deploy"
> +
> +EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>  INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
> -INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> -do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
> +EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> +INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> +EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> +INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
>  
> -do_compile:append:rock2-square () {
> -	# copy to default search path
> -	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
> -		cp ${B}/spl/${SPL_BINARY} ${B}
> -	fi
> -}
> +do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"

You need to rebase your patch on top of the latest master. This u-boot patch
is reverting the most recent changes in addition to adding your changes.

> -- 
> 2.34.1
> 

