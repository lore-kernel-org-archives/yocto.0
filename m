Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.6336.1623744227679833539
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 01:03:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=QsiIYmWv;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BC2B238C0848
	for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 08:03:46 +0000 (UTC)
Received: by mail-vk1-f175.google.com with SMTP id k71so4755579vka.11
        for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 01:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Ux892EkEN02o00jCJETLjCvAnT35/W5Qx7BE1Hg8vv0=;
        b=QsiIYmWv1vp+zmN2F3F+zc4wlfLpOWBCVJQQqqnsxa8JgEslpWlDqYWudaPWkH9A7l
         uURC+89r1jrlAmMaZ83AEedkbkRA8ak3x94yAt/hzVMsBhOE3YDGs5ZnS53VUsGQTAmg
         kHH3sF7o0OHkTmCCR2FpTsaB0tub66QaISD1M3M4PKYCLLgYlMTVRaIjMfYMBiOiD6em
         F1R9vFbloeciIbegWEqW/KRW+YnaLDpZNHsspQjBqWk9Q7wrhHlgNPkPNoPvNJehW5N2
         FsfSw0zHjjdRpzqfQYOdQbYeeYRWJw408MVWQxq0ULoQNPJ86NxavQqdaX3ZmIKjHwnp
         ht6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Ux892EkEN02o00jCJETLjCvAnT35/W5Qx7BE1Hg8vv0=;
        b=OMuFstwTrnGCw7zuWknNsh9a7kjtHxCgeTG2XFVkYzKdmnSDil3R6sWLY8s8r99gSk
         e3Na47clHy5PAgKuWlmPui8vXUtbQ/Fy0bVmurDtoxwsp1XgIoBN6/Y38AfnyRw/KuV8
         AT0+nYaFWUzn0CXZdctOaqDCKk7EmCBsCHfgbHcc46+q9ikB/8RDAZLVeJyHu7XjwdjK
         AyXJJqdEQfeyk2Y5SWM9XoOyfhaAqEmTebyuhDhQ/sC2T7G4zJqcMi9y9GaYqBDUUrYk
         HfEMvLW4st/0GhRrGu0E+ax/QaDDNgZMNYCEAckYAbZ+qPhr5gthzoMYTebNjmJPFvsB
         un+A==
X-Gm-Message-State: AOAM532ulZEhvwY15PLcvZBbanLz5DqXTYBFZxGBJrHTTW/8SNPlTnno
	DBvbPTtv1ULiesYRnJzV7B0EevdB4jG4XgJv+Zad1A==
X-Google-Smtp-Source: ABdhPJx0Swt8xv0rDi6AhOp06VXjabtQ56MsFURzuKXHC1zJkI8uESDvw81lDr/xFfjoPdYYtlsfNV0xSZ+3PxQ51zg=
X-Received: by 2002:ac5:cb6a:: with SMTP id l10mr3120063vkn.14.1623744223944;
 Tue, 15 Jun 2021 01:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210531140058.2193825-1-yann@blade-group.com> <20210614161938.GA8746@localhost>
In-Reply-To: <20210614161938.GA8746@localhost>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Tue, 15 Jun 2021 10:03:31 +0200
Message-ID: <CA+4=imZGGE4=ii4Lwuc=TWjbo9QSvX1Cq2h2kmpCim0SsL7N-Q@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH v2] Rock64: add machine
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lun. 14 juin 2021 =C3=A0 18:19, Trevor Woerner <twoerner@gmail.com> a =
=C3=A9crit :
>
> Hi Yann,
>
> Thanks for the contribution!
>
> On Mon 2021-05-31 @ 04:00:58 PM, yann.dirson@blade-group.com wrote:
> > From: Yann Dirson <yann@blade-group.com>
> >
> > This is a RK3328 board from Pine64.
> > Board details at https://wiki.pine64.org/wiki/ROCK64.
> >
> > Default image is built to boot from SD-card.  Building an image for
> > eMMC requires to set RK_BOOT_DEVICE=3D"mmcblk0".
> >
> > Signed-off-by: Yann Dirson <yann@blade-group.com>
> > ---
> >
> > This is just basic initial support without a kernel BSP.  As is the
> > board boots with a serial console.
> >
> > Note I had to create the SoC definition for rk3328, and rather than
> > setting serial at 115200 there just to have the board definition
> > override it with rockchip-standard 1500000 I've set the latter right
> > in rk3328.inc.
>
> Sounds good. I prefer the rockchip default of 1,500,000 anyway.
>
> >
> > Changes in v2:
> > - include Ayufan's patch for mmc aliases so presence of eMMC won't
> > prevent booting from SD
> >
> >  conf/machine/include/rk3328.inc               | 25 ++++++++++++++++
> >  conf/machine/rock64.conf                      | 30 +++++++++++++++++++
> >  ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 +++++++++++++++++
> >  recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++++
> >  4 files changed, 88 insertions(+)
> >  create mode 100644 conf/machine/include/rk3328.inc
> >  create mode 100644 conf/machine/rock64.conf
> >  create mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-=
add-mmc0-mmc1-aliases.patch
> >
> > diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3=
328.inc
> > new file mode 100644
> > index 0000000..7d67627
> > --- /dev/null
> > +++ b/conf/machine/include/rk3328.inc
> > @@ -0,0 +1,25 @@
> > +# Copyright (C) 2020 Garmin Ltd. or its subsidaries
>
> Odd that you'd be assigning the copyright to Garmin ;-)

Oh, right, copypaste rules around here, so Garmin does have a role but
something may be missing :)

>
> > +# Released under the MIT license (see COPYING.MIT for the terms)
> > +
> > +SOC_FAMILY =3D "rk3328"
> > +
> > +DEFAULTTUNE ?=3D "cortexa53-crypto"
> > +
> > +require conf/machine/include/soc-family.inc
> > +require conf/machine/include/tune-cortexa53.inc
> > +require conf/machine/include/rockchip-defaults.inc
> > +
> > +KBUILD_DEFCONFIG ?=3D "defconfig"
> > +KERNEL_CLASSES =3D "kernel-fitimage"
> > +KERNEL_IMAGETYPE =3D "fitImage"
> > +
> > +TFA_PLATFORM =3D "rk3328"
> > +TFA_BUILD_TARGET =3D "bl31"
> > +
> > +UBOOT_SUFFIX ?=3D "itb"
> > +UBOOT_ENTRYPOINT ?=3D "0x06000000"
> > +
> > +SERIAL_CONSOLES =3D "1500000;ttyS2"
> > +
> > +PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
> > +SPL_BINARY ?=3D "idbloader.img"
> > diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
> > new file mode 100644
> > index 0000000..38bc9fa
> > --- /dev/null
> > +++ b/conf/machine/rock64.conf
> > @@ -0,0 +1,30 @@
> > +# Copyright (C) 2021 Blade SAS
>
> Can you also specify an OSS-friendly licence too?
>
> > +
> > +#@TYPE: Machine
> > +#@NAME: Rock64
> > +#@DESCRIPTION: Rock64 RK3328 board from Pine64
> > +
> > +require include/rk3328.inc
> > +
> > +MACHINE_FEATURES +=3D "usbhost serial"
> > +
> > +UBOOT_MACHINE =3D "rock64-rk3328_defconfig"
> > +KERNEL_DEVICETREE =3D "rockchip/rk3328-rock64.dtb"
> > +
> > +# set to mmcblk0 for booting from optional eMMC
> > +RK_BOOT_DEVICE ?=3D "mmcblk1"
> > +
> > +WKS_FILE ?=3D "rock-pi-4.wks"
>
> Personally I'd prefer to see a rock64 wic file which includes an rk3328
> default, even if it is a copy of the rock-pi-4 layout.

Right that was something I wondered how to deal with and forgot (and note t=
hat
for the nanopi-m4 I used the same file).

My reading of [1] is that all rockchip APs are using the same
partition table.  I see
that the existing {rk3288,rk3399}-boot.wks only differ in the choice
of u-boot image,
and I'm wondering if using the SoC to distinguish between them is the
right choice,
as eg. upstream RK is not using the .itb format, and I suspect we
could use it as well
for rk3288 (I'm sure I have one in a drawer and could check that some day).=
  Now
maybe the sate of things is different for 32bit SoCs, and I thought it
could make sense to
distinguish rockchip-32bit-boot.wks and rockchip-64bit-boot.wks, or maybe e=
ven
name them using the format, as something like rockchip-legacy-boot.wks
(well there
is probably a more descriptive name for that format) and rockchip-itb-boot.=
wks ?

Similarly, the .wks for 3288-based boards and for 3399-based ones only
differ by the
console baudrate, and the 3288-based .wks are all identical except for
some whitespace.
And in fact, it is not unthinkable for a given project to use
something else than a
single-partition layout, so those files are indeed closer to a
"default wks".  Maybe we
could use more generic filenames there too (until we implement a way to avo=
id
hardcoding the baudrate here)

[1] http://opensource.rock-chips.com/wiki_Boot_option

> > +IMAGE_FSTYPES +=3D "wic wic.bmap"
> > +
> > +WKS_FILE_DEPENDS ?=3D " \
> > +    mtools-native \
> > +    dosfstools-native \
> > +    virtual/bootloader \
> > +    virtual/kernel \
> > +    "
> > +IMAGE_BOOT_FILES ?=3D "\
> > +    ${KERNEL_IMAGETYPE} \
> > +    "
> > +
> > +KBUILD_DEFCONFIG =3D "defconfig"
> > diff --git a/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc=
0-mmc1-aliases.patch b/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-a=
dd-mmc0-mmc1-aliases.patch
> > new file mode 100644
> > index 0000000..1ad3b9e
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-=
aliases.patch
> > @@ -0,0 +1,27 @@
> > +From f10cfe01f753348d346374008b8e8f5f26ed94ab Mon Sep 17 00:00:00 2001
> > +From: Kamil Trzcinski <ayufan@ayufan.eu>
> > +Date: Mon, 28 Aug 2017 11:24:37 +0200
> > +Subject: [PATCH] ayufan: dtsi: rk3328: add mmc0/mmc1 aliases
> > +Upstream-Status: Pending [https://github.com/ayufan-rock64/linux-mainl=
ine-kernel/commit/f10cfe01f753348d346374008b8e8f5f26ed94ab]
> > +
> > +Change-Id: I82a5394df8a505f7d1496393621c1198895c88b0
> > +---
> > + arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
> > + 1 file changed, 2 insertions(+)
> > +
> > +diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boo=
t/dts/rockchip/rk3328.dtsi
> > +index 0afed15bc7ff..800f1c796882 100644
> > +--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > ++++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > +@@ -27,6 +27,8 @@
> > +             i2c1 =3D &i2c1;
> > +             i2c2 =3D &i2c2;
> > +             i2c3 =3D &i2c3;
> > ++            mmc0 =3D &emmc;
> > ++            mmc1 =3D &sdmmc;
> > +             ethernet0 =3D &gmac2io;
> > +             ethernet1 =3D &gmac2phy;
> > +     };
> > +--
> > +2.30.2
> > +
> > diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kerne=
l/linux/linux-yocto%.bbappend
> > index 7702e3f..3789c72 100644
> > --- a/recipes-kernel/linux/linux-yocto%.bbappend
> > +++ b/recipes-kernel/linux/linux-yocto%.bbappend
> > @@ -8,3 +8,9 @@ COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
> >  COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
> >  COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
> >  COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
> > +COMPATIBLE_MACHINE_rock64 =3D "rock64"
> > +
> > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > +
> > +# indeed applicable to all rk3328 boards
>
> I have a roc-rk3328-cc ("renegade") board I should investigate adding. Th=
en I
> can see if this applies there as well.
>
> > +SRC_URI_append_rock64 =3D " file://0001-ayufan-dtsi-rk3328-add-mmc0-mm=
c1-aliases.patch"
> > --
> > 2.30.2
> >



--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
