Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9901C6FD1F
	for <webhook@archiver.kernel.org>; Thu, 21 Mar 2024 22:37:56 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web11.144.1711060669878901751
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Mar 2024 15:37:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KewaD9Gw;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: twoerner@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-7db44846727so516639241.0
        for <yocto@lists.yoctoproject.org>; Thu, 21 Mar 2024 15:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711060669; x=1711665469; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F6qyZhSlZSlm1dUhqkyV9zEvVue8Z6zBXRpVezE5ebk=;
        b=KewaD9GwB+zSJBn64kIMJhte6zuX3kjzAf88jUnUwIRaQjU3BvN1co5unZBnvPgNEO
         3P7V1rAWkmTm5OTplYq+ImcmjP1BnaSaH+FQwi6u4t8YRs8qlowTpJqxm5fIKQZRI5qu
         vWjcFI/HBzaxtMaC2aDhaJISsA/PZZnc6zvfqtdViQrclWIYqIevCS4XiiDEC7YkKFxU
         Vitk0zEUN8MFjLV2i0i6Q3NFRVWjPRzGokNkfe+BGP6bXmDloY0pt+Z+lSN2oig1660u
         NAnHlwwxooY/mHpMBiMMVD09D8UtT45wjMy7pxbxSr9BkP33aKvCszql4JfCNwXgCbKS
         PJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711060669; x=1711665469;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F6qyZhSlZSlm1dUhqkyV9zEvVue8Z6zBXRpVezE5ebk=;
        b=vkxZrVZu/TDptrP8/IpBKWtkCkdgjmYJ16LxK0NjTrecVi9JIsjojWcnIj7mbXBfTz
         LFfHZK4YW9Kr1UMKP65pGurTzxmAx/NoQPGx3Fwm87ymxZD8S2mkfE3zln4hzCEDaXAV
         ZNB57ilTpl1HwVoXhg4PZHPzIKPI9juKOCdIT+aAM83Sj8Kfny7Tuod7g9fes8eux77z
         LutkVJreQaRRSL+F2o5s68GLP+fBg3j3MCb8MH6DGUAtr2WwM94WfaYfxj0AI4T5R2Aa
         d6ll+le40TSZdzrvuNEhsOTlN6Cd13Qpl2aeIYztZTi9N1W6DzlR1kYsd+nCOHL1TFgH
         J3zg==
X-Gm-Message-State: AOJu0YwIgQ0lOkXzoE28oi+KgTUugidpk4ccJ+VLH0T9CQxtoH4H0Wae
	8gltFQUWOXKN+uJczMMpMJFqzqgBA/LMVj2QFIThl9fJrmul/Vp5
X-Google-Smtp-Source: AGHT+IGIsHC0lVsxYfbZU6cBvIVj1Xo1Vegk8i/ixR27Sg+1+8cHYY4AmS3+dl2vlgJGebyxLw10HQ==
X-Received: by 2002:a05:6122:188c:b0:4d4:2069:eafb with SMTP id bi12-20020a056122188c00b004d42069eafbmr704387vkb.9.1711060668527;
        Thu, 21 Mar 2024 15:37:48 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id q14-20020ad4574e000000b00690f9ea30aesm387478qvx.26.2024.03.21.15.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 15:37:47 -0700 (PDT)
Date: Thu, 21 Mar 2024 18:37:45 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] enable stored U-Boot environment
Message-ID: <20240321223745.GA5308@localhost>
References: <20240321175340.20640-1-twoerner@gmail.com>
 <d1c265ef-1abb-4430-bc95-898182be6af3@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d1c265ef-1abb-4430-bc95-898182be6af3@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Mar 2024 22:37:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62818

Hi Quentin,

Thank you ever so much for your review!
I appreciate your feedback :-)

On Thu 2024-03-21 @ 07:35:14 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 3/21/24 18:53, Trevor Woerner via lists.yoctoproject.org wrote:
> > When U-Boot is built it is compiled with a set of environment variables
> > (and their values) built into the U-Boot binary. U-Boot can be configured
> > to use storage to load and/or store environment variables which can persist
> > over reboots. This storage could be (but not limited to) a chunk of an MMC
> > device, it could be in SPI, or simply a file in the device's filesystem. If
> > this storage-based environment is valid (checksum is verified) U-Boot will
> > use these values over any same values which are built-in.
> > 
> > By default some of the MACHINES in this BSP layer are configured to use
> > a persistent U-Boot environment, others are not. It all depends on what
> > is set in the specific defconfig file for the device found in upstream,
> > mainline U-Boot. This is, apparently, random.
> > 
> > If you want to ensure that you have access to an on-boot-device, persistent
> > U-Boot environment, simply add the following to MACHINE_FEATURES in your
> > configuration:
> > 
> > 	rk-u-boot-env
> > 
> > If you have enabled this feature, you now have a second choice to make:
> > do you want your build to include the U-Boot environment in the image or
> > not? The default environment, as generated by U-Boot, can be included in
> > the generated wic image. If it is included, then flashing the image will
> > also flash the default U-Boot environment variables and settings, wiping
> > out anything that might have been there already. If it is not included then
> > your device will either continue using whatever environment happens to be
> > there, or will not use any stored environment if the stored environment has
> > not been set or is invalid. The variable which governs this behaviour is:
> > 
> > 	RK_IMAGE_INCLUDES_UBOOT_ENV
> > 
> > By default this is set to "0", meaning that by default the image does
> > not contain the U-Boot environment. To enable this behaviour, set this
> > variable to "1" in your configuration. This variable only takes effect if
> > the rk-u-boot-env MACHINE_FEATURE is enabled, and has no effect otherwise.
> > 
> > The script:
> > 
> > 	scripts/dump-uboot-env-from-yocto-image.sh
> > 
> > can be used on your wic file to see the contents of the U-Boot environment
> > partition at build time.
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >   README                                        | 45 +++++++++++++++++++
> >   classes/rk-u-boot-env.bbclass                 |  1 +
> >   conf/machine/include/rockchip-wic.inc         | 10 +++++
> >   .../rockchip-enable-environment-mmc.cfg       |  4 ++
> >   .../rockchip-enable-environment-mmc0.cfg      |  1 +
> >   .../rockchip-enable-environment-mmc1.cfg      |  1 +
> >   recipes-bsp/u-boot/u-boot_%.bbappend          | 24 ++++++++++
> >   scripts/dump-uboot-env-from-yocto-image.sh    | 29 ++++++++++++
> >   wic/rockchip.wks                              |  2 +-
> >   9 files changed, 116 insertions(+), 1 deletion(-)
> >   create mode 100644 classes/rk-u-boot-env.bbclass
> >   create mode 100644 recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg
> >   create mode 100644 recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg
> >   create mode 100644 recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg
> >   create mode 100755 scripts/dump-uboot-env-from-yocto-image.sh
> > 
> > diff --git a/README b/README
> > index 4c30f7529353..e357e093d45f 100644
> > --- a/README
> > +++ b/README
> > @@ -67,6 +67,51 @@ Notes:
> >   	
> >   	in the configuration (e.g. conf/local.conf).
> > +U-Boot Environment:
> > +------------------
> > +	When U-Boot is built it is compiled with a set of environment variables
> > +	(and their values) built into the U-Boot binary. U-Boot can be configured
> > +	to use storage to load and/or store environment variables which can persist
> > +	over reboots. This storage could be (but not limited to) a chunk of an MMC
> > +	device, it could be in SPI, or simply a file in the device's filesystem. If
> > +	this storage-based environment is valid (checksum is verified) U-Boot will
> > +	use these values over any same values which are built-in.
> > +
> > +	By default some of the MACHINES in this BSP layer are configured to use
> > +	a persistent U-Boot environment, others are not. It all depends on what
> > +	is set in the specific defconfig file for the device found in upstream,
> > +	mainline U-Boot. This is, apparently, random.
> > +
> > +	If you want to ensure that you have access to an on-boot-device, persistent
> 
> If I'm not mistaken the current implementation in this patchseries forces
> the use of an SD card, so I wouldn't say it "ensures that you have access to
> an on-boot-device".

True. My meta-rockchip assumes the user is always using an SDcard on all
supported boards. Most of the supported rockchip boards have an optional eMMC,
but not all. However, they all do have an SDcard. Therefore for me that was
the common denominator. At this point I've never actually tried booting any of
my boards from on-board eMMC (but I do have the pieces to give that a try, I
think).

Actually, for my next trick I plan to introduce a new MACHINE_FEATURE that
allows the user to select between SDcard and optional on-board eMMC (should
their board have that option). At which point it will mostly be an exercise in
switching 0's for 1's and visa-versa.

At that point this rk-u-boot-env feature will be tweaked to switch to
whichever the user chooses as their preferred boot device.

> > +	U-Boot environment, simply add the following to MACHINE_FEATURES in your
> > +	configuration:
> > +
> > +		rk-u-boot-env
> > +
> > +	If you have enabled this feature, you now have a second choice to make:
> > +	do you want your build to include the U-Boot environment in the image or
> > +	not? The default environment, as generated by U-Boot, can be included in
> > +	the generated wic image. If it is included, then flashing the image will
> > +	also flash the default U-Boot environment variables and settings, wiping
> > +	out anything that might have been there already. If it is not included then
> > +	your device will either continue using whatever environment happens to be
> > +	there, or will not use any stored environment if the stored environment has
> > +	not been set or is invalid. The variable which governs this behaviour is:
> > +
> > +		RK_IMAGE_INCLUDES_UBOOT_ENV
> > +
> > +	By default this is set to "0", meaning that by default the image does
> > +	not contain the U-Boot environment. To enable this behaviour, set this
> > +	variable to "1" in your configuration. This variable only takes effect if
> > +	the rk-u-boot-env MACHINE_FEATURE is enabled, and has no effect otherwise.
> > +
> > +	The script:
> > +
> > +		scripts/dump-uboot-env-from-yocto-image.sh
> > +
> > +	can be used on your wic file to see the contents of the U-Boot environment
> > +	partition at build time.
> > +
> >   Maintenance:
> >   -----------
> >   	Please send pull requests, patches, comments, or questions to the
> > diff --git a/classes/rk-u-boot-env.bbclass b/classes/rk-u-boot-env.bbclass
> > new file mode 100644
> > index 000000000000..2de3a54d35c3
> > --- /dev/null
> > +++ b/classes/rk-u-boot-env.bbclass
> > @@ -0,0 +1 @@
> > +MACHINEOVERRIDES .= "${@bb.utils.contains('MACHINE_FEATURES', 'rk-u-boot-env', ':rk-u-boot-env', '', d)}"
> > diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> > index 147a36685d7d..eea4798a05c3 100644
> > --- a/conf/machine/include/rockchip-wic.inc
> > +++ b/conf/machine/include/rockchip-wic.inc
> > @@ -2,6 +2,11 @@
> >   require conf/machine/include/rockchip-extlinux.inc
> > +# u-boot environment
> > +# any MACHINE that is using wic is using U-Boot
> > +# if rk-u-boot-env is enabled, then include the u-boot-env package
> > +IMAGE_INSTALL:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rk-u-boot-env', 'u-boot-env', '', d)}"
> > +
> >   SPL_BINARY ?= "idbloader.img"
> >   IMAGE_FSTYPES += "wic wic.bmap"
> > @@ -11,7 +16,12 @@ WKS_FILE_DEPENDS ?= " \
> >   	virtual/bootloader \
> >   	"
> > +RK_IMAGE_INCLUDES_UBOOT_ENV ?= "0"
> > +RK_UBOOT_ENV = "${@bb.utils.contains('MACHINE_FEATURES', 'rk-u-boot-env', \
> > +	bb.utils.contains('RK_IMAGE_INCLUDES_UBOOT_ENV', '1', '--source rawcopy --sourceparams=file=u-boot.env', ' ', d), \
> 
> I think one can use bb.utils.to_boolean:
> 
> '--source rawcopy --sourceparams=file=u-boot.env' if
> bb.utils.to_boolean(d.getVar('RK_IMAGE_INCLUDES_UBOOT_ENV'), False) else ''

That's funny. I actually looked that one up and had used that in an earlier
version of my patch. I can go back to the boolean, if you think it's nicer
then I agree!

> > +	' ', d)}"
> >   WICVARS:append = " \
> >   	SPL_BINARY \
> >   	UBOOT_SUFFIX \
> > +	RK_UBOOT_ENV \
> >   	"
> > diff --git a/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg
> > new file mode 100644
> > index 000000000000..0e124376cf36
> > --- /dev/null
> > +++ b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg
> > @@ -0,0 +1,4 @@
> > +CONFIG_ENV_SIZE=0x8000
> > +CONFIG_ENV_OFFSET=0x3f8000
> > +# CONFIG_ENV_IS_NOWHERE is not set
> 
> You can have ENV_IS_IN_MMC AND ENV_IS_NOWHERE selected, that's not an issue.
> We actually force it for Puma and Ringneck for example. So I would suggest
> to just not care about it, what you're interested in is ENV_IS_IN_MMC after
> all.

I agree that U-Boot doesn't care if both are enabled, but logically it's a
cognitive dissonance. What does it mean to not store the environment anywhere,
while simultaneously storing it in MMC?

The help text is of mostly no help at all:

	config ENV_IS_NOWHERE
		bool "Environment is not stored"
		help
		  Define this if you don't care whether or not an environment is stored
		  on a storage medium. In this case the environment will still exist
		  while U-Boot is running, but once U-Boot exits it may not be
		  stored. If no other ENV_IS_IN_ is defined, U-Boot will always start
		  up with the default environment.

In any case, I prefer to be unambiguous, and having both defined is *very*
biguous! ;-)

Out of curiosity, what behaviour are you trying to cause by having both
defined? If you say ENV_IS_IN_MMC and there is no MMC or it's not configured
correctly then the environment won't be saved, regardless of whether
ENV_IS_NOWHERE is defined or not.

Or does having both defined cause some sort of behaviour that would otherwise
not occur if only ENV_IS_IN_MMC is defined, but the MMC can't be accessed?

> > +CONFIG_ENV_IS_IN_MMC=y
> > diff --git a/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg
> > new file mode 100644
> > index 000000000000..6519ebd43e0a
> > --- /dev/null
> > +++ b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg
> > @@ -0,0 +1 @@
> > +CONFIG_SYS_MMC_ENV_DEV=0
> > diff --git a/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg
> > new file mode 100644
> > index 000000000000..449e045cd643
> > --- /dev/null
> > +++ b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg
> > @@ -0,0 +1 @@
> > +CONFIG_SYS_MMC_ENV_DEV=1
> 
> So this will not be enough starting from v2024.07, c.f. https://source.denx.de/u-boot/u-boot/-/commit/3b95c03d5706255f39a8f1a0fa02045d4fd981df
> (just giving you a heads up ;) ). That's the default value in case the mmc
> env is not found using what will become "more traditional means" soon.
> 
> > diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
> > index f8378d91ce68..ae50e4f5226d 100644
> > --- a/recipes-bsp/u-boot/u-boot_%.bbappend
> > +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> > @@ -1,13 +1,23 @@
> > +inherit rk-u-boot-env deploy
> > +
> >   FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> >   SRC_URI:append:rock-pi-e = " \
> >   	file://PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch \
> >   	file://PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch \
> >   	"
> > +# config fragments for enabling u-boot environment
> > +SRC_URI:append:rk-u-boot-env = " file://rockchip-enable-environment-mmc.cfg"
> > +SRC_URI:append:rk-u-boot-env:rk3308 = " file://rockchip-enable-environment-mmc1.cfg"
> > +SRC_URI:append:rk-u-boot-env:rk3399 = " file://rockchip-enable-environment-mmc1.cfg"
> > +SRC_URI:append:rk-u-boot-env:rk3568 = " file://rockchip-enable-environment-mmc1.cfg"
> > +SRC_URI:append:rk-u-boot-env:rk3588s = " file://rockchip-enable-environment-mmc1.cfg"
> > +
> 
> That's an interesting choice, this forces the environment to an SD card if
> I'm not mistaken, which may not be what you want if you don't have an SD
> card (e.g. flashing on eMMC).
> 
> Honestly, it may be a bit more worth it to simply backport https://source.denx.de/u-boot/u-boot/-/commit/3b95c03d5706255f39a8f1a0fa02045d4fd981df
> and let it figure out if it can load an environment from the same medium
> that was used to load U-Boot proper.

Yes, very much looking forward to that being upstream... but in the mean
time...

> >   # various machines require the pyelftools library for parsing dtb files
> >   DEPENDS:append = " python3-pyelftools-native"
> >   DEPENDS:append:rk3308 = " u-boot-tools-native"
> >   DEPENDS:append:rock-pi-4 = " gnutls-native"
> > +DEPENDS:append:rk-u-boot-env = " u-boot-mkenvimage-native"
> >   EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> >   EXTRA_OEMAKE:append:rk3308 = " \
> > @@ -40,3 +50,17 @@ do_compile:append:rock2-square () {
> >   		cp ${B}/spl/${SPL_BINARY} ${B}
> >   	fi
> >   }
> > +
> > +do_compile:append:rk-u-boot-env() {
> > +	UBOOT_ENV_SIZE="$(cat ${B}/.config | grep "^CONFIG_ENV_SIZE=" | cut -d'=' -f2)"
> > +	UBOOT_MMC_DEV="$(cat ${B}/.config | grep "^CONFIG_SYS_MMC_ENV_DEV=" | cut -d'=' -f2)"
> > +	echo "/dev/mmcblk${UBOOT_MMC_DEV}p5 0x0000 ${UBOOT_ENV_SIZE}" > ${WORKDIR}/fw_env.config
> 
> I'm wondering if fw_setenv/libubootenv supports partition labels?
> 
> If that's the case, then:
> 
> /dev/disk/by-label/<LABEL>
> 
> and you can add a label to the wic partition for the uboot environment.
> Which means you don't need to know if the image is flashed on eMMC or SD
> card to be able to use this.

I can check.

> > +}
> > +
> > +do_deploy:append:rk-u-boot-env() {
> > +	UBOOT_ENV_SIZE="$(cat ${B}/.config | grep "^CONFIG_ENV_SIZE=" | cut -d'=' -f2)"
> > +	mkenvimage -s ${UBOOT_ENV_SIZE} ${B}/u-boot-initial-env -o ${WORKDIR}/u-boot.env
> > +
> > +	install -d ${DEPLOYDIR}
> > +	install -m 0644 ${WORKDIR}/u-boot.env ${DEPLOYDIR}
> > +}
> > diff --git a/scripts/dump-uboot-env-from-yocto-image.sh b/scripts/dump-uboot-env-from-yocto-image.sh
> > new file mode 100755
> > index 000000000000..c10c562ae53a
> > --- /dev/null
> > +++ b/scripts/dump-uboot-env-from-yocto-image.sh
> > @@ -0,0 +1,29 @@
> > +#/bin/bash
> > +#
> > +# a program that can take a wic file and dump out the contents
> > +# of the U-Boot environment in canonical hex+ascii format
> > +# (assuming the "rockchip" layout specified in this layer's wic file)
> > +
> > +# check for programs
> > +check_pgm() {
> > +	$1 --help > /dev/null 2>&1
> > +	if [ $? -ne 0 ]; then
> > +		echo "required program \"$1\" not found"
> > +		exit 1
> > +	fi
> > +}
> > +check_pgm bc
> > +check_pgm dd
> > +check_pgm hexdump
> > +
> > +if [ $# -ne 1 ]; then
> > +	echo "required param missing: yocto wic image"
> > +	exit 1
> > +fi
> > +if [ ! -e "$1" ]; then
> > +	echo "specified file \"$1\" not found"
> > +	exit 1
> > +fi
> > +
> > +SKIP=$(echo "8128 * 512" | bc)
> 
> You can remove the dependency on bc by doing the following:
> 
> SKIP=$(( 8128 * 512 ))

Sounds good.

Thanks!

