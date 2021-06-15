Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.8874.1623762072705513371
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 06:01:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=Wy2Gs2sO;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A6E4438C0832
	for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 13:01:11 +0000 (UTC)
Received: by mail-vk1-f178.google.com with SMTP id k189so4920358vkb.6
        for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 06:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7DPA/uBko3Q8XclF/exWWHg6G/Vog0ky5lee39DykUI=;
        b=Wy2Gs2sOQlvhWTmaZvJg1xLYckjjbl29dDP97LaSypPXAiPe3uFhkFUJdxOll6jJgU
         HxO6+vIf6dHQfrXs8dML7beeq91I9qE8BJRCZMzJF0xIWq8SRiST+sPd9uOAupDPYUoj
         D8vvMhymZuby54OIn5pfjMIQ7trrdyFe8o+dCgmBu4aGtE4Q554hez1nFLeRxXp8bMK4
         hYLnO8A2r3U4xmE9ARQy8pgfNOTK3JKwVtNL1pjk8XyzpRDV3CRhN2cTC3xMe2bctShS
         /Els4289qul9zUqhHf7aV6r5j8PLTSmbxtOJuCLBhEDX0zDuW3+uxVepkkmtTseM7B+e
         1g/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7DPA/uBko3Q8XclF/exWWHg6G/Vog0ky5lee39DykUI=;
        b=F13FuvVORTHy26975g9DRRIDvKvjtm9KnT0wrTJ3VZlMrTGUjabzNHNjOtPFX4EPKt
         6lFTdZAa2dMaFywl7m+zII4fwMDEQBCIPycMnvNzvLMx3/oIVIhmy9bf8N5Jvc8dYEba
         58Zf5U/IFG/cA+19JVqWRgrBqeYEEHTR9SJSXz6Fl4x52iZL8brd/NvC4GDI+EVHYY0z
         ZjwhYFMDaTvWMgP5D4kHjnA87RQPbm7RWhKY3gF3WFDJLvmhIXvPFKgnYWsloBnKYvDs
         eeNAWDOP8CxeJVWYOdwt+W/WSOXb1fUvh+8yARUGwd51Ho1v6YQ3V0wtkyxZfjb8OqYZ
         iVfw==
X-Gm-Message-State: AOAM531AlRLS9xMwXAvh+8xT/t4aVwWKkNrfz9SsPuhBpsfBHf/pL6nm
	zRSlJYtfwKna3aiUtO9N4gNy7Um/sTSSerApnLv9nQ==
X-Google-Smtp-Source: ABdhPJwVcjaKyvtyWt7zHbj9NzUVgga6/Hg9hTmdxgbestWuP/fu3tBIx+Uom/oVX24nXPKTVDA0BrzsZRHZO/DyeQ4=
X-Received: by 2002:ac5:cb6a:: with SMTP id l10mr4230688vkn.14.1623762070528;
 Tue, 15 Jun 2021 06:01:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210531140058.2193825-1-yann@blade-group.com>
 <20210614161938.GA8746@localhost> <CA+4=imZGGE4=ii4Lwuc=TWjbo9QSvX1Cq2h2kmpCim0SsL7N-Q@mail.gmail.com>
 <20210615081559.GA575@localhost>
In-Reply-To: <20210615081559.GA575@localhost>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Tue, 15 Jun 2021 15:00:04 +0200
Message-ID: <CA+4=imazXWkV9hLX94hoBUW9wjXuHyRqZBJZ0QabXJwWXELHCQ@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH v2] Rock64: add machine
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 15 juin 2021 =C3=A0 10:16, Trevor Woerner <twoerner@gmail.com> a =
=C3=A9crit :
>
> On Tue 2021-06-15 @ 10:03:31 AM, Yann Dirson wrote:
> > Le lun. 14 juin 2021 =C3=A0 18:19, Trevor Woerner <twoerner@gmail.com> =
a =C3=A9crit :
> > >
> > > Hi Yann,
> > >
> > > Thanks for the contribution!
> > >
> > > On Mon 2021-05-31 @ 04:00:58 PM, yann.dirson@blade-group.com wrote:
> > > > From: Yann Dirson <yann@blade-group.com>
> > > >
> > > > This is a RK3328 board from Pine64.
> > > > Board details at https://wiki.pine64.org/wiki/ROCK64.
> > > >
> > > > Default image is built to boot from SD-card.  Building an image for
> > > > eMMC requires to set RK_BOOT_DEVICE=3D"mmcblk0".
> > > >
> > > > Signed-off-by: Yann Dirson <yann@blade-group.com>
> > > > ---
> > > >
> > > > This is just basic initial support without a kernel BSP.  As is the
> > > > board boots with a serial console.
> > > >
> > > > Note I had to create the SoC definition for rk3328, and rather than
> > > > setting serial at 115200 there just to have the board definition
> > > > override it with rockchip-standard 1500000 I've set the latter righ=
t
> > > > in rk3328.inc.
> > >
> > > Sounds good. I prefer the rockchip default of 1,500,000 anyway.
> > >
> > > >
> > > > Changes in v2:
> > > > - include Ayufan's patch for mmc aliases so presence of eMMC won't
> > > > prevent booting from SD
> > > >
> > > >  conf/machine/include/rk3328.inc               | 25 +++++++++++++++=
+
> > > >  conf/machine/rock64.conf                      | 30 +++++++++++++++=
++++
> > > >  ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 +++++++++++++++=
++
> > > >  recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++++
> > > >  4 files changed, 88 insertions(+)
> > > >  create mode 100644 conf/machine/include/rk3328.inc
> > > >  create mode 100644 conf/machine/rock64.conf
> > > >  create mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3=
328-add-mmc0-mmc1-aliases.patch
> > > >
> > > > diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include=
/rk3328.inc
> > > > new file mode 100644
> > > > index 0000000..7d67627
> > > > --- /dev/null
> > > > +++ b/conf/machine/include/rk3328.inc
> > > > @@ -0,0 +1,25 @@
> > > > +# Copyright (C) 2020 Garmin Ltd. or its subsidaries
> > >
> > > Odd that you'd be assigning the copyright to Garmin ;-)
> >
> > Oh, right, copypaste rules around here, so Garmin does have a role but
> > something may be missing :)
> >
> > >
> > > > +# Released under the MIT license (see COPYING.MIT for the terms)
> > > > +
> > > > +SOC_FAMILY =3D "rk3328"
> > > > +
> > > > +DEFAULTTUNE ?=3D "cortexa53-crypto"
> > > > +
> > > > +require conf/machine/include/soc-family.inc
> > > > +require conf/machine/include/tune-cortexa53.inc
> > > > +require conf/machine/include/rockchip-defaults.inc
> > > > +
> > > > +KBUILD_DEFCONFIG ?=3D "defconfig"
> > > > +KERNEL_CLASSES =3D "kernel-fitimage"
> > > > +KERNEL_IMAGETYPE =3D "fitImage"
> > > > +
> > > > +TFA_PLATFORM =3D "rk3328"
> > > > +TFA_BUILD_TARGET =3D "bl31"
> > > > +
> > > > +UBOOT_SUFFIX ?=3D "itb"
> > > > +UBOOT_ENTRYPOINT ?=3D "0x06000000"
> > > > +
> > > > +SERIAL_CONSOLES =3D "1500000;ttyS2"
> > > > +
> > > > +PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
> > > > +SPL_BINARY ?=3D "idbloader.img"
> > > > diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
> > > > new file mode 100644
> > > > index 0000000..38bc9fa
> > > > --- /dev/null
> > > > +++ b/conf/machine/rock64.conf
> > > > @@ -0,0 +1,30 @@
> > > > +# Copyright (C) 2021 Blade SAS
> > >
> > > Can you also specify an OSS-friendly licence too?
> > >
> > > > +
> > > > +#@TYPE: Machine
> > > > +#@NAME: Rock64
> > > > +#@DESCRIPTION: Rock64 RK3328 board from Pine64
> > > > +
> > > > +require include/rk3328.inc
> > > > +
> > > > +MACHINE_FEATURES +=3D "usbhost serial"
> > > > +
> > > > +UBOOT_MACHINE =3D "rock64-rk3328_defconfig"
> > > > +KERNEL_DEVICETREE =3D "rockchip/rk3328-rock64.dtb"
> > > > +
> > > > +# set to mmcblk0 for booting from optional eMMC
> > > > +RK_BOOT_DEVICE ?=3D "mmcblk1"
> > > > +
> > > > +WKS_FILE ?=3D "rock-pi-4.wks"
> > >
> > > Personally I'd prefer to see a rock64 wic file which includes an rk33=
28
> > > default, even if it is a copy of the rock-pi-4 layout.

In fact we already have rock-pi-e.wks doing this.

> >
> > Right that was something I wondered how to deal with and forgot (and no=
te that
> > for the nanopi-m4 I used the same file).
> >
> > My reading of [1] is that all rockchip APs are using the same
> > partition table.  I see
> > that the existing {rk3288,rk3399}-boot.wks only differ in the choice
> > of u-boot image,
> > and I'm wondering if using the SoC to distinguish between them is the
> > right choice,
> > as eg. upstream RK is not using the .itb format, and I suspect we
> > could use it as well
> > for rk3288 (I'm sure I have one in a drawer and could check that some d=
ay).  Now
> > maybe the sate of things is different for 32bit SoCs, and I thought it
> > could make sense to
> > distinguish rockchip-32bit-boot.wks and rockchip-64bit-boot.wks, or may=
be even
> > name them using the format, as something like rockchip-legacy-boot.wks
> > (well there
> > is probably a more descriptive name for that format) and rockchip-itb-b=
oot.wks ?
> >
> > Similarly, the .wks for 3288-based boards and for 3399-based ones only
> > differ by the
> > console baudrate, and the 3288-based .wks are all identical except for
> > some whitespace.
> > And in fact, it is not unthinkable for a given project to use
> > something else than a
> > single-partition layout, so those files are indeed closer to a
> > "default wks".  Maybe we
> > could use more generic filenames there too (until we implement a way to=
 avoid
> > hardcoding the baudrate here)
> >
> > [1] http://opensource.rock-chips.com/wiki_Boot_option
>
> True. We could definitely use some cleanup in this area. If you want to
> propose something that's going to work, I'll add it.
>
> Also, when adding a new board, please update the top-level README.

Let's do the minimum for now for this to get merged, and we'll improve
incrementally.
Eg. only now I realize, through the presence of rk3328-boot.wks, that
rock-pi-e is
indeed also based on that soc, and its machine def would benefit from
including the
same rk3328.inc.

--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
