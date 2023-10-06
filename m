Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8E0E94139
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 23:30:11 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.8521.1696635011237500045
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 16:30:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jOXx3lmz;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5a24b03e22eso32789547b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 16:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696635010; x=1697239810; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E01mOqa7uLjOTRtvi9H9mDpgIb0jTw2kSl8slv/cRQE=;
        b=jOXx3lmzluX8fNHq5rT5oFLZoS8L+6neUDT3ge133+vkCBptyjyPRUSzZS3hbIsYgZ
         pdPsbHaweYZcWi+b3+vtlHH/6AR22WzKb5ZIfB/7GBE4mNID1L3tj6Y2679kumtJANji
         seDWU2msQJWFjvTRDN7isOf6+nhWD3oWKRuX+8lNu93I0bQZekEQBsMJ3P+WfbtcjqDA
         42JGtjPP13pBi9mZW8xKGdTqIFZWb4QplFgxYzF7N1rOf5ypODK9xIRQNzFG72SliESu
         p1zwx1MZhfdaNA5CtCeECe/xLYDd8S4OT6h4w2jNyI1NWZMb632Lanj4YcpRO3lNFP76
         Yw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696635010; x=1697239810;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E01mOqa7uLjOTRtvi9H9mDpgIb0jTw2kSl8slv/cRQE=;
        b=VVjnGlC0s28AIhVHa9vJqmjku5e6RbYk7TCt2qgCxOWP6QJBfpzvJ/hInQyNzk70gJ
         KVd+ZFbOUE5ZwWKNeQAy1xrsfjMctU7zYYPrOuV7fbIag8v3MjB9rEG4pnZo0Q1yKufK
         bFPLuOh2A5Uud3I10PU3zOohrY7lW2OCPLvET4pEufHSro/4WgR4go6nt5AIW7xzgdpr
         /QVaIj5WYzOkfBFQmbCLbPHh3YWQ5Sg8AkuIaKJXcpjdkZaMc39nX1h6kl4MRBC0gPpR
         49f5ZnaijrbbnpS1Q3sf8kmGKe8gC8jycb9OxE5HR2qOR4um+i6//SXyLnS8Qfi07DfU
         r7JQ==
X-Gm-Message-State: AOJu0Ywmluzp0luyrF6Vs8M11/Qij02DYwfq6OEUu0Wf32DuBXO5qM3C
	Xp6mHNlCWTnFsZmxmVbQNKMM1rmlF8oHD4G3lQE=
X-Google-Smtp-Source: AGHT+IGaNLxqBmkAFk0qYirnRYzNiO2dgL8gLmzgsKGWBm+oViv/DXrzzEZeUxHTkPyDYiIOzrOLSvcGviyViq2PAGk=
X-Received: by 2002:a5b:c08:0:b0:d85:e0d3:b491 with SMTP id
 f8-20020a5b0c08000000b00d85e0d3b491mr8731641ybq.32.1696635010240; Fri, 06 Oct
 2023 16:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <20231005224543.1040062-1-anthony.t.davies@gmail.com> <20231006001921.GA38163@localhost>
In-Reply-To: <20231006001921.GA38163@localhost>
From: Anthony Davies <anthony.t.davies@gmail.com>
Date: Sat, 7 Oct 2023 10:29:58 +1100
Message-ID: <CAL5F+o+HZqU4n4vkhyQmrFgiLDmYF5aW1gGO5amaaMM=d9tTbA@mail.gmail.com>
Subject: Re: [meta-rockchip] [PATCH] Add support for the Radxa Rock-3a based
 on rk3568
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 23:30:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61276

Apologies Trevor, I have sent an updated patch this morning which
should hopefully be a better fit.

On Fri, 6 Oct 2023 at 11:19, Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Fri 2023-10-06 @ 09:45:44 AM, anthony.t.davies@gmail.com wrote:
> > From: Anthony Davies <anthony.t.davies@gmail.com>
> >
> > Added appropriate inc files and machine.conf
> >
> > Modified rockchip-rkbin_git.bb to allow machine overrides on
> > do_deploy.
> >
> > I have tested this patch on my own rock-3a
>
> This commit message is lacking. Take a look at some of the other commits
> adding new machines and try to follow suit.
>
> >
> > Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> > ---
> >  README                                  |  1 +
> >  conf/machine/include/rk3568.inc         | 17 ++++++++++
> >  conf/machine/rock-3a.conf               | 12 +++++++
> >  recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 ++++++++-
> >  recipes-bsp/u-boot/u-boot%.bbappend     | 43 ++++++++++++++++---------
> >  5 files changed, 73 insertions(+), 16 deletions(-)
> >  create mode 100644 conf/machine/include/rk3568.inc
> >  create mode 100644 conf/machine/rock-3a.conf
> >
> > diff --git a/README b/README
> > index 8104474..aa1c834 100644
> > --- a/README
> > +++ b/README
> > @@ -30,6 +30,7 @@ Status of supported boards:
> >               vyasa-rk3288
> >               firefly-rk3288
> >               nanopi-r4s
> > +    rock-3a
> >               rock-5b
> >               nanopi-r2s
> >       builds:
> > diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
> > new file mode 100644
> > index 0000000..5382b58
> > --- /dev/null
> > +++ b/conf/machine/include/rk3568.inc
> > @@ -0,0 +1,17 @@
> > +MACHINEOVERRIDES =. "rk3568:"
> > +DEFAULTTUNE ?= "cortexa55"
> > +
> > +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
> > +require conf/machine/include/rockchip-defaults.inc
> > +require conf/machine/include/rockchip-wic.inc
> > +
> > +KBUILD_DEFCONFIG ?= "defconfig"
> > +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> > +KERNEL_CLASSES ??= "kernel-fitimage"
> > +KERNEL_IMAGETYPE ??= "fitImage"
> > +
> > +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> > +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> > +
> > +UBOOT_SUFFIX ?= "itb"
> > +UBOOT_ENTRYPOINT ?= "0x06000000"
> > diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
> > new file mode 100644
> > index 0000000..452bde0
> > --- /dev/null
> > +++ b/conf/machine/rock-3a.conf
> > @@ -0,0 +1,12 @@
> > +#@TYPE: Machine
> > +#@NAME: Radxa Rock3a
> > +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based SBC(Single Board Computer) and Compute Module by Radxa.
> > +#https://wiki.radxa.com/Rock3
> > +
> > +require conf/machine/include/rk3568.inc
> > +
> > +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
> > +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
> > +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> > +
> > +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
> > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > index 7fefb01..273f394 100644
> > --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
> >
> >  COMPATIBLE_MACHINE = ""
> >  COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> > +COMPATIBLE_MACHINE:rk3568 = "rk3568"
> >
> >  PACKAGE_ARCH = "${MACHINE_ARCH}"
> >
> > @@ -25,7 +26,16 @@ do_install() {
> >  PACKAGES = "${PN}"
> >  ALLOW_EMPTY:${PN} = "1"
> >
> > -do_deploy() {
> > +do_deploy:rk3568() {
> > +     # Prebuilt TF-A
> > +     install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
> > +     # Prebuilt OPTEE-OS
> > +     install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
> > +     # Prebuilt U-Boot TPL (DDR init)
> > +     install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
> > +}
> > +
> > +do_deploy:rk3588s() {
> >       # Prebuilt TF-A
> >       install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> >       # Prebuilt OPTEE-OS
> > @@ -34,4 +44,8 @@ do_deploy() {
> >       install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> >  }
> >
> > +do_deploy() {
> > +# Needed as a default perhaps a bb.fatal with a message saying an override needs to be set
> > +}
> > +
> >  addtask deploy after do_install
> > diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> > index e79c471..5af86aa 100644
> > --- a/recipes-bsp/u-boot/u-boot%.bbappend
> > +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> > @@ -1,25 +1,38 @@
> > +do_compile:append:rock2-square () {
> > +     # copy to default search path
> > +     if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
> > +             cp ${B}/spl/${SPL_BINARY} ${B}
> > +     fi
> > +}
> > +
> > +DEPENDS:append:rock-pi-4 = " gnutls-native"
> >  # various machines require the pyelftools library for parsing dtb files
> >  DEPENDS:append = " python3-pyelftools-native"
> > -DEPENDS:append:rock-pi-4 = " gnutls-native"
> >
> > -EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> > -EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> > -EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> > +INIT_FIRMWARE_DEPENDS ??= ""
> > +
> >  EXTRA_OEMAKE:append:rk3588s = " \
> >       BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> >       ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> >       "
> > +INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> > +INIT_FIRMWARE_DEPENDS:rk3568 = " rockchip-rkbin:do_deploy"
> >
> > -INIT_FIRMWARE_DEPENDS ??= ""
> > -INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
> > -INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> > +EXTRA_OEMAKE:append:rk3568 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3568.elf"
> > +ATF_DEPENDS:append:rk3568 = " trusted-firmware-a:do_deploy"
> > +EXTRA_OEMAKE:append:rk3568 = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3568.bin"
> > +ATF_DEPENDS:append:rk3568 = " rockchip-rkbin:do_deploy"
> > +
> > +EXTRA_OEMAKE:append:rk3588s = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf"
> > +ATF_DEPENDS:append:rk3588s = " trusted-firmware-a:do_deploy"
> > +EXTRA_OEMAKE:append:rk3588s = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin"
> > +ATF_DEPENDS:append:rk3588s = " rockchip-rkbin:do_deploy"
> > +
> > +EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> >  INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
> > -INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> > -do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
> > +EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> > +INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> > +EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> > +INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
> >
> > -do_compile:append:rock2-square () {
> > -     # copy to default search path
> > -     if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
> > -             cp ${B}/spl/${SPL_BINARY} ${B}
> > -     fi
> > -}
> > +do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
>
> You need to rebase your patch on top of the latest master. This u-boot patch
> is reverting the most recent changes in addition to adding your changes.
>
> > --
> > 2.34.1
> >

