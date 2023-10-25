Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF019C07545
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 14:43:08 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web10.175263.1698244982120565758
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 07:43:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Jyhe4DfI;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-41cd52c51abso33665211cf.2
        for <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 07:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698244981; x=1698849781; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JKkeuMGftUXzeoY4e5kK+e4Z2+LjlieXffwOa2FldUI=;
        b=Jyhe4DfIyDToVehgaX9Cz7G+brL4J2Pw1xdUBxLSlxhMLVBUf5LiMjKQa0OXV9uuAr
         KTmlKVQ7JQXbX4iGl7IqVUYCyfIRi+vwnWmKpzGhzf3QNGzC5yW+hmORsKP23mmYBOdP
         Z9lKyJzZZ6fLkcFLE4tWnxUOVRsU2zlAK0jeH8uCRXxzthCaWX+LFJ6KrJSSE7MFTMOw
         x/QqQaa2x22vzVQxX7hCCPuIo5BpEN72lVWzWQ2uhP5TlGX2SzuvbjPeQwxO00oj8gvz
         c16gUPHEeaBdmYKI7acquwusAQwhddEu4LJVT3HSWqMBlM0ewcVbrsY1kwaDfyOdyGYg
         aYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244981; x=1698849781;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKkeuMGftUXzeoY4e5kK+e4Z2+LjlieXffwOa2FldUI=;
        b=OMsdO7ZWslqppcRfY/0B4iqxaQXH5Py/6fTo8TU86GJ8jlVNAJQT2JBoG8vv6Gmapf
         ihU+7GRmalf0qDDhmsRFhDA/PqxmRgyrP/ciinI1YqFTIhTJIg7rbMwcuioNkR5slDQM
         1Ngs1DjTvKw7ubyLg9TWbWvvJMzov1Tbpg95MlLACaeX8ylOnS1atCvWZtWFzoB7P1Ok
         fpZR36ohorbDdE7qAG1IbJdFAA2mL+0G575YV4a9i7cZOgi8Jdrmqt7MzGNqTxluLNxF
         M6+sHRSXbXB0HpQoYUvoxCCci7Cb6pkb2vma7RuOfflvV8z9suqjGM010Nu3NIUVR8mP
         oHRA==
X-Gm-Message-State: AOJu0YwR+G5NaoflptP33zVHXUAJdbm9fuwokIPgCmSyxGC2qPSXu0/Q
	OcXrQ7l6WWwI0V1oYcM/bsY=
X-Google-Smtp-Source: AGHT+IHIsh9ifERbrVCl3CYjCPO/RUeOBfU9evwaO9Ho4v0KdCHhOXUSh2po61fynqi5HPdhxEwfzw==
X-Received: by 2002:ac8:4e8a:0:b0:412:24e6:a485 with SMTP id 10-20020ac84e8a000000b0041224e6a485mr15221169qtp.2.1698244981082;
        Wed, 25 Oct 2023 07:43:01 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id w10-20020ac84d0a000000b0041803dfb240sm4288716qtv.45.2023.10.25.07.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:43:00 -0700 (PDT)
Date: Wed, 25 Oct 2023 10:42:58 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip] [PATCH v3] rock-3a add
Message-ID: <20231025144258.GA14018@localhost>
References: <20231016104344.401706-1-anthony.t.davies@gmail.com>
 <20231025135616.GA9837@localhost>
 <3d69f40b-e05d-4d2b-a68d-da2abfa462c8@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3d69f40b-e05d-4d2b-a68d-da2abfa462c8@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 14:43:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61483

On Wed 2023-10-25 @ 04:22:17 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 10/25/23 15:56, Trevor Woerner via lists.yoctoproject.org wrote:
> > Hi Anthony,
> > 
> > Thanks for working on this.
> > 
> > On Mon 2023-10-16 @ 09:43:45 PM, anthony.t.davies@gmail.com wrote:
> > > From: Anthony Davies <anthony.t.davies@gmail.com>
> > > 
> > > Add support for the Radxa Rock 3A
> > > https://wiki.radxa.com/Rock3/3a
> > > 
> > > The TF-A project does not currently have support for
> > > the rk3568. Therefore, for the time-being, the only way to supply a
> > > TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
> > > from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> > > switching.
> > > 
> > > recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
> > > override to allow both rk3568 and rk3588s to use differnet binary blobs
> > > 
> > > Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> > > ---
> > >   README                                  |  1 +
> > >   conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
> > >   conf/machine/rock-3a.conf               | 12 ++++++++++++
> > >   recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
> > >   recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
> > >   5 files changed, 50 insertions(+), 1 deletion(-)
> > >   create mode 100644 conf/machine/include/rk3568.inc
> > >   create mode 100644 conf/machine/rock-3a.conf
> > > 
> > > diff --git a/README b/README
> > > index 8104474..3357b47 100644
> > > --- a/README
> > > +++ b/README
> > > @@ -32,6 +32,7 @@ Status of supported boards:
> > >   		nanopi-r4s
> > >   		rock-5b
> > >   		nanopi-r2s
> > > +    rock-3a
> > 
> > There's still an issue with indents/tabs.
> > 
> > >   	builds:
> > >   		marsboard-rk3066
> > >   		radxarock
> > > diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
> > > new file mode 100644
> > > index 0000000..5382b58
> > > --- /dev/null
> > > +++ b/conf/machine/include/rk3568.inc
> > > @@ -0,0 +1,17 @@
> > > +MACHINEOVERRIDES =. "rk3568:"
> > > +DEFAULTTUNE ?= "cortexa55"
> > > +
> > > +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
> > > +require conf/machine/include/rockchip-defaults.inc
> > > +require conf/machine/include/rockchip-wic.inc
> > > +
> > > +KBUILD_DEFCONFIG ?= "defconfig"
> > > +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> > > +KERNEL_CLASSES ??= "kernel-fitimage"
> > > +KERNEL_IMAGETYPE ??= "fitImage"
> > > +
> > > +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> > > +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> > > +
> > > +UBOOT_SUFFIX ?= "itb"
> > > +UBOOT_ENTRYPOINT ?= "0x06000000"
> > > diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
> > > new file mode 100644
> > > index 0000000..2ed83a3
> > > --- /dev/null
> > > +++ b/conf/machine/rock-3a.conf
> > > @@ -0,0 +1,12 @@
> > > +#@TYPE: Machine
> > > +#@NAME: Radxa Rock 3a
> > > +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based
> > > +#SBC(Single Board Computer) and Compute Module by Radxa.
> > > +#https://wiki.radxa.com/Rock3
> > > +
> > > +require conf/machine/include/rk3568.inc
> > > +
> > > +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
> > > +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> > > +
> > > +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
> > > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > index 7fefb01..ad5593c 100644
> > > --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
> > >   COMPATIBLE_MACHINE = ""
> > >   COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> > > +COMPATIBLE_MACHINE:rk3568 = "rk3568"
> > >   PACKAGE_ARCH = "${MACHINE_ARCH}"
> > > @@ -25,7 +26,16 @@ do_install() {
> > >   PACKAGES = "${PN}"
> > >   ALLOW_EMPTY:${PN} = "1"
> > > -do_deploy() {
> > > +do_deploy:rk3568() {
> > > +	# Prebuilt TF-A
> > > +	install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
> > > +	# Prebuilt OPTEE-OS
> > > +	install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
> > > +	# Prebuilt U-Boot TPL (DDR init)
> > > +	install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
> > > +}
> > > +
> > > +do_deploy:rk3588s() {
> > >   	# Prebuilt TF-A
> > >   	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> > >   	# Prebuilt OPTEE-OS
> > > @@ -34,4 +44,8 @@ do_deploy() {
> > >   	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> > >   }
> > > +do_deploy() {
> > > +  bbfatal "COMPATIBLE_MACHINE requires a corressponding do_deploy:<MACHINE>() override"
> > > +}
> > > +
> > 
> > This is not related to adding support for rock3a.
> > 
> 
> In a way it is, but would benefit in being in a different commit I agree.
> 
> So basically Anthony's issue (if I remember correctly) was that if you're
> not overriding the default do_deploy, the recipe will pass but install the
> wrong files with the wrong names, without telling you.
> 
> So instead, the thought was to make do_deploy fail by default (with bbfatal)
> unless it is overridden (e.g. for rk3588s and rk3568) so that people adding
> support for new SoCs don't wonder what's missing.
> 
> I could see a commit with a diff like:
> """
> -do_deploy() {
> +do_deploy:rk3588s() {
>    	# Prebuilt TF-A
>    	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf
> ${DEPLOYDIR}/bl31-rk3588.elf
>    	# Prebuilt OPTEE-OS
> @@ -34,4 +44,8 @@ do_deploy() {
>   	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin
> ${DEPLOYDIR}/ddr-rk3588.bin
>   }
> 
> +do_deploy() {
> +  bbfatal "COMPATIBLE_MACHINE requires a corressponding
> do_deploy:<MACHINE>() override"
> +}
> +
> """
> 
> with a proper explanation in the commit log, and then a commit that adds one
> for rk3568.

...and then another set for kirkstone, no doubt?

> 
> Cheers,
> Quentin
> 
> > >   addtask deploy after do_install
> > > diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> > > index e79c471..66c81da 100644
> > > --- a/recipes-bsp/u-boot/u-boot%.bbappend
> > > +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> > > @@ -9,12 +9,17 @@ EXTRA_OEMAKE:append:rk3588s = " \
> > >   	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> > >   	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> > >   	"
> > > +EXTRA_OEMAKE:append:rk3568 = " \
> > > +	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3568.elf \
> > > +	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3568.bin \
> > > +	"
> > >   INIT_FIRMWARE_DEPENDS ??= ""
> > >   INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
> > >   INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> > >   INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
> > >   INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> > > +INIT_FIRMWARE_DEPENDS:rk3568 = " rockchip-rkbin:do_deploy"
> > >   do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
> > >   do_compile:append:rock2-square () {
> > > -- 
> > > 2.34.1
> > > 
> > > 
> > > 
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#61481): https://lists.yoctoproject.org/g/yocto/message/61481
> > > Mute This Topic: https://lists.yoctoproject.org/mt/101992957/6293953
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > 

