Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D86C0032E
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 16:20:59 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web11.48041.1698250849892765609
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 09:20:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bK9aQ/EW;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7788db95652so402063085a.2
        for <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 09:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698250849; x=1698855649; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ay2yUdSK36kb4nUc6rGp6LZ2xN6TIyI6dPSU8QNYu4E=;
        b=bK9aQ/EWOG7hMO/ywo4aqfMPONuHFeFO/kwNL9uZJUdzRns4p8QNttJUnlmx7DJALT
         WJS0Kh+Xu+aw2NPp33R1NL0zqC8wL/huh4MtHMaGhxTAZ0tPWLSZMZcAKBvwbx/fZo7+
         49gv1JQ/lEHc7jImIVL+W9nK98awSYFlBR/+hdPxU/F1cjQGXwUQGClz2+hKlM9ob2+a
         KP7CFX0+9HKF1aMZZmT/T8xtFisjLejQyDbmX72Q70zo5DWCPfERDbYyIQGmBH1uLmmn
         xNfIKMuq/NLe8A8AR1L6TLXKYjBOcvJqHyoqL+2vI4wbNwFC1WoiX9GhRKfkA7NDp2Li
         U6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698250849; x=1698855649;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ay2yUdSK36kb4nUc6rGp6LZ2xN6TIyI6dPSU8QNYu4E=;
        b=cFLWA0d4/+grtsmTAfiZCBDBqfy6Jo/UiD8IDP4SsRlM5RJtZyEDBBIfolXUykQwKx
         sSkb2HXxDvJav3HQmPdOoUDEzIuMUJvKiBE+WhCK+KcZUAumb0Qhf4gJO6/S20BRJ+MH
         YVpZzuWPJDejZnMrcHIm2mjpwBhx3Q1/JtBUEdCAPxihcT10gojTZ/SfMtTczh0ljERZ
         /dekoWqBKjxOkauLHxq2aAfIAD9oLBS8+1aS3lGwfZXUyod6hCg7sT4/xnADkTJd2A2T
         s+MIajSHLjoWX4YEcmHHhMdp1ko8vVAs9Ur1QUtTiBIaaptd3A0rVRRmzeiftuK2t4v6
         H0Mg==
X-Gm-Message-State: AOJu0YzGUlKVzcHnIvHag9SC641Byc3p1ZDOR99US7QgKD8bPkZdG3O/
	yS7C7vh+EwkMjncvomzPRL0=
X-Google-Smtp-Source: AGHT+IE/b3jly5QNoNXcR6Yb2iXvQlh2giemkev9FA/24hPdP6SHArFxMBOUut8uomXl8RBZIEt+3w==
X-Received: by 2002:a05:620a:3710:b0:76e:f638:bcd9 with SMTP id de16-20020a05620a371000b0076ef638bcd9mr18915631qkb.38.1698250848809;
        Wed, 25 Oct 2023 09:20:48 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id i22-20020a05620a0a1600b00775bb02893esm4321717qka.96.2023.10.25.09.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 09:20:48 -0700 (PDT)
Date: Wed, 25 Oct 2023 12:20:45 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip] [PATCH v3] rock-3a add
Message-ID: <20231025162045.GA22432@localhost>
References: <20231016104344.401706-1-anthony.t.davies@gmail.com>
 <20231025135616.GA9837@localhost>
 <3d69f40b-e05d-4d2b-a68d-da2abfa462c8@theobroma-systems.com>
 <20231025144258.GA14018@localhost>
 <5bfb47c7-98df-4bfc-bc11-ffc67276fd0c@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5bfb47c7-98df-4bfc-bc11-ffc67276fd0c@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 16:20:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61486

On Wed 2023-10-25 @ 05:49:06 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 10/25/23 16:42, Trevor Woerner wrote:
> > On Wed 2023-10-25 @ 04:22:17 PM, Quentin Schulz wrote:
> > > Hi Trevor,
> > > 
> > > On 10/25/23 15:56, Trevor Woerner via lists.yoctoproject.org wrote:
> > > > Hi Anthony,
> > > > 
> > > > Thanks for working on this.
> > > > 
> > > > On Mon 2023-10-16 @ 09:43:45 PM, anthony.t.davies@gmail.com wrote:
> > > > > From: Anthony Davies <anthony.t.davies@gmail.com>
> > > > > 
> > > > > Add support for the Radxa Rock 3A
> > > > > https://wiki.radxa.com/Rock3/3a
> > > > > 
> > > > > The TF-A project does not currently have support for
> > > > > the rk3568. Therefore, for the time-being, the only way to supply a
> > > > > TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
> > > > > from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> > > > > switching.
> > > > > 
> > > > > recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
> > > > > override to allow both rk3568 and rk3588s to use differnet binary blobs
> > > > > 
> > > > > Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> > > > > ---
> > > > >    README                                  |  1 +
> > > > >    conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
> > > > >    conf/machine/rock-3a.conf               | 12 ++++++++++++
> > > > >    recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
> > > > >    recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
> > > > >    5 files changed, 50 insertions(+), 1 deletion(-)
> > > > >    create mode 100644 conf/machine/include/rk3568.inc
> > > > >    create mode 100644 conf/machine/rock-3a.conf
> > > > > 
> > > > > diff --git a/README b/README
> > > > > index 8104474..3357b47 100644
> > > > > --- a/README
> > > > > +++ b/README
> > > > > @@ -32,6 +32,7 @@ Status of supported boards:
> > > > >    		nanopi-r4s
> > > > >    		rock-5b
> > > > >    		nanopi-r2s
> > > > > +    rock-3a
> > > > 
> > > > There's still an issue with indents/tabs.
> > > > 
> > > > >    	builds:
> > > > >    		marsboard-rk3066
> > > > >    		radxarock
> > > > > diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
> > > > > new file mode 100644
> > > > > index 0000000..5382b58
> > > > > --- /dev/null
> > > > > +++ b/conf/machine/include/rk3568.inc
> > > > > @@ -0,0 +1,17 @@
> > > > > +MACHINEOVERRIDES =. "rk3568:"
> > > > > +DEFAULTTUNE ?= "cortexa55"
> > > > > +
> > > > > +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
> > > > > +require conf/machine/include/rockchip-defaults.inc
> > > > > +require conf/machine/include/rockchip-wic.inc
> > > > > +
> > > > > +KBUILD_DEFCONFIG ?= "defconfig"
> > > > > +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> > > > > +KERNEL_CLASSES ??= "kernel-fitimage"
> > > > > +KERNEL_IMAGETYPE ??= "fitImage"
> > > > > +
> > > > > +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> > > > > +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> > > > > +
> > > > > +UBOOT_SUFFIX ?= "itb"
> > > > > +UBOOT_ENTRYPOINT ?= "0x06000000"
> > > > > diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
> > > > > new file mode 100644
> > > > > index 0000000..2ed83a3
> > > > > --- /dev/null
> > > > > +++ b/conf/machine/rock-3a.conf
> > > > > @@ -0,0 +1,12 @@
> > > > > +#@TYPE: Machine
> > > > > +#@NAME: Radxa Rock 3a
> > > > > +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based
> > > > > +#SBC(Single Board Computer) and Compute Module by Radxa.
> > > > > +#https://wiki.radxa.com/Rock3
> > > > > +
> > > > > +require conf/machine/include/rk3568.inc
> > > > > +
> > > > > +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
> > > > > +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> > > > > +
> > > > > +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
> > > > > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > > > index 7fefb01..ad5593c 100644
> > > > > --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > > > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > > > > @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
> > > > >    COMPATIBLE_MACHINE = ""
> > > > >    COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> > > > > +COMPATIBLE_MACHINE:rk3568 = "rk3568"
> > > > >    PACKAGE_ARCH = "${MACHINE_ARCH}"
> > > > > @@ -25,7 +26,16 @@ do_install() {
> > > > >    PACKAGES = "${PN}"
> > > > >    ALLOW_EMPTY:${PN} = "1"
> > > > > -do_deploy() {
> > > > > +do_deploy:rk3568() {
> > > > > +	# Prebuilt TF-A
> > > > > +	install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
> > > > > +	# Prebuilt OPTEE-OS
> > > > > +	install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
> > > > > +	# Prebuilt U-Boot TPL (DDR init)
> > > > > +	install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
> > > > > +}
> > > > > +
> > > > > +do_deploy:rk3588s() {
> > > > >    	# Prebuilt TF-A
> > > > >    	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> > > > >    	# Prebuilt OPTEE-OS
> > > > > @@ -34,4 +44,8 @@ do_deploy() {
> > > > >    	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> > > > >    }
> > > > > +do_deploy() {
> > > > > +  bbfatal "COMPATIBLE_MACHINE requires a corressponding do_deploy:<MACHINE>() override"
> > > > > +}
> > > > > +
> > > > 
> > > > This is not related to adding support for rock3a.
> > > > 
> > > 
> > > In a way it is, but would benefit in being in a different commit I agree.
> > > 
> > > So basically Anthony's issue (if I remember correctly) was that if you're
> > > not overriding the default do_deploy, the recipe will pass but install the
> > > wrong files with the wrong names, without telling you.
> > > 
> > > So instead, the thought was to make do_deploy fail by default (with bbfatal)
> > > unless it is overridden (e.g. for rk3588s and rk3568) so that people adding
> > > support for new SoCs don't wonder what's missing.
> > > 
> > > I could see a commit with a diff like:
> > > """
> > > -do_deploy() {
> > > +do_deploy:rk3588s() {
> > >     	# Prebuilt TF-A
> > >     	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf
> > > ${DEPLOYDIR}/bl31-rk3588.elf
> > >     	# Prebuilt OPTEE-OS
> > > @@ -34,4 +44,8 @@ do_deploy() {
> > >    	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin
> > > ${DEPLOYDIR}/ddr-rk3588.bin
> > >    }
> > > 
> > > +do_deploy() {
> > > +  bbfatal "COMPATIBLE_MACHINE requires a corressponding
> > > do_deploy:<MACHINE>() override"
> > > +}
> > > +
> > > """
> > > 
> > > with a proper explanation in the commit log, and then a commit that adds one
> > > for rk3568.
> > 
> > ...and then another set for kirkstone, no doubt?
> > 
> 
> I don't have a personal need for supporting anything else other than RK3588
> on kirkstone, so I will not be pushing for it. Therefore, this is a decision
> for you to make as a maintainer if you actively want people to do it as part
> of follow-up of commits to master branch, do it yourself or wait for people
> to contribute backports to kirkstone whenever they need them.

Okay, sounds good. I won't backport until/unless I know someone is interested.
Also, rk3568 support is probably poor in kirkstone anyway (same as rk3588/s).

