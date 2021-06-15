Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.6362.1623744965959226269
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 01:16:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=L4rCf4Sm;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7C77C38C0848
	for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 08:16:03 +0000 (UTC)
Received: by mail-qv1-f47.google.com with SMTP id e18so21918608qvm.10
        for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 01:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=WQ9BhS+Kme90ZOv2BhcrYRvWuwURzQhIXJFQg+iZQvA=;
        b=L4rCf4SmuFwhTmcL+gFrA5dNhzNsb+iw0Dp9j3YoWy7yCsGk7PogqQZrtQNeov7D20
         frxdRFlc+74c5Zq8DJQEBk1LGdIyrOzSiU+9Ld0iDnTbH6Wj0V9JaRyGOIK6vqXqAiW4
         HYubthZtDiucrBDHyYFVkdm5k5vOLkSzhUR9kJbnF0RLy1JQmxwjWIrarpU5Llw47TiU
         zOhR+Pnm8usc1G0K64vQJ6WYdmJW4Xznl2niybvdnYmflHGp1UJNvxkEsK3p/0rsljWE
         TnxObm5EEeq2sEQrv1glR9DBf6GHjOVkQfT98kO3nwiq5/vT/rYsK5Cwo99qs8Tf1e+9
         vxAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=WQ9BhS+Kme90ZOv2BhcrYRvWuwURzQhIXJFQg+iZQvA=;
        b=Hivks4AWyUg1rK6RSN/4y3G6YyfBkSrBIjDaRrXDkzKUhLChe4vRZVlUw9MSANTwah
         ScivjLK35R4as3V36cJEMCb1lkD4l8txXM+Ce2gbwytjx8ZVz1QDA6zdsTeELft7ZaBb
         RkFKJLUjHy5AJJbh83X4YvPWGmKs4R5pbxaCn67cH/BuvkIEk4RLVpzantW6SQ8zzN2+
         oCSMcER5UiNmcvmBq5rwXDLpETc3Y/qhRWe/qrwuw26dPcHlh8VPOIXpzp+D6o4MpRc3
         Y+6/U9DXoMIQxXzuVAS9Ttu4VhnwHUu6LmUm+DALBJBABzRDE0+HZHJ8Lec+eXm9M6Xe
         6eeg==
X-Gm-Message-State: AOAM530gAXNQSjrTIfjpvIX5ZpDFrq/tjpCtI6XBRvL3DzzaFwvtAKz2
	Ckrfe+40SlUSsG52/R4VCE0=
X-Google-Smtp-Source: ABdhPJy2lylcXVvG8ibew5Ey9ll2HflvuCpMuURPkdoZ9ZrUAhS2inw9/MdMF6laIM9o5od/uZkuDA==
X-Received: by 2002:a05:6214:b28:: with SMTP id w8mr3996738qvj.14.1623744962038;
        Tue, 15 Jun 2021 01:16:02 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id e4sm10131095qte.3.2021.06.15.01.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 01:16:01 -0700 (PDT)
Date: Tue, 15 Jun 2021 04:15:59 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH v2] Rock64: add machine
Message-ID: <20210615081559.GA575@localhost>
References: <20210531140058.2193825-1-yann@blade-group.com>
 <20210614161938.GA8746@localhost>
 <CA+4=imZGGE4=ii4Lwuc=TWjbo9QSvX1Cq2h2kmpCim0SsL7N-Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+4=imZGGE4=ii4Lwuc=TWjbo9QSvX1Cq2h2kmpCim0SsL7N-Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue 2021-06-15 @ 10:03:31 AM, Yann Dirson wrote:
> Le lun. 14 juin 2021 =C3=A0 18:19, Trevor Woerner <twoerner@gmail.com> =
a =C3=A9crit :
> >
> > Hi Yann,
> >
> > Thanks for the contribution!
> >
> > On Mon 2021-05-31 @ 04:00:58 PM, yann.dirson@blade-group.com wrote:
> > > From: Yann Dirson <yann@blade-group.com>
> > >
> > > This is a RK3328 board from Pine64.
> > > Board details at https://wiki.pine64.org/wiki/ROCK64.
> > >
> > > Default image is built to boot from SD-card.  Building an image for
> > > eMMC requires to set RK_BOOT_DEVICE=3D"mmcblk0".
> > >
> > > Signed-off-by: Yann Dirson <yann@blade-group.com>
> > > ---
> > >
> > > This is just basic initial support without a kernel BSP.  As is the
> > > board boots with a serial console.
> > >
> > > Note I had to create the SoC definition for rk3328, and rather than
> > > setting serial at 115200 there just to have the board definition
> > > override it with rockchip-standard 1500000 I've set the latter righ=
t
> > > in rk3328.inc.
> >
> > Sounds good. I prefer the rockchip default of 1,500,000 anyway.
> >
> > >
> > > Changes in v2:
> > > - include Ayufan's patch for mmc aliases so presence of eMMC won't
> > > prevent booting from SD
> > >
> > >  conf/machine/include/rk3328.inc               | 25 +++++++++++++++=
+
> > >  conf/machine/rock64.conf                      | 30 +++++++++++++++=
++++
> > >  ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 +++++++++++++++=
++
> > >  recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++++
> > >  4 files changed, 88 insertions(+)
> > >  create mode 100644 conf/machine/include/rk3328.inc
> > >  create mode 100644 conf/machine/rock64.conf
> > >  create mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3=
328-add-mmc0-mmc1-aliases.patch
> > >
> > > diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include=
/rk3328.inc
> > > new file mode 100644
> > > index 0000000..7d67627
> > > --- /dev/null
> > > +++ b/conf/machine/include/rk3328.inc
> > > @@ -0,0 +1,25 @@
> > > +# Copyright (C) 2020 Garmin Ltd. or its subsidaries
> >
> > Odd that you'd be assigning the copyright to Garmin ;-)
>=20
> Oh, right, copypaste rules around here, so Garmin does have a role but
> something may be missing :)
>=20
> >
> > > +# Released under the MIT license (see COPYING.MIT for the terms)
> > > +
> > > +SOC_FAMILY =3D "rk3328"
> > > +
> > > +DEFAULTTUNE ?=3D "cortexa53-crypto"
> > > +
> > > +require conf/machine/include/soc-family.inc
> > > +require conf/machine/include/tune-cortexa53.inc
> > > +require conf/machine/include/rockchip-defaults.inc
> > > +
> > > +KBUILD_DEFCONFIG ?=3D "defconfig"
> > > +KERNEL_CLASSES =3D "kernel-fitimage"
> > > +KERNEL_IMAGETYPE =3D "fitImage"
> > > +
> > > +TFA_PLATFORM =3D "rk3328"
> > > +TFA_BUILD_TARGET =3D "bl31"
> > > +
> > > +UBOOT_SUFFIX ?=3D "itb"
> > > +UBOOT_ENTRYPOINT ?=3D "0x06000000"
> > > +
> > > +SERIAL_CONSOLES =3D "1500000;ttyS2"
> > > +
> > > +PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
> > > +SPL_BINARY ?=3D "idbloader.img"
> > > diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
> > > new file mode 100644
> > > index 0000000..38bc9fa
> > > --- /dev/null
> > > +++ b/conf/machine/rock64.conf
> > > @@ -0,0 +1,30 @@
> > > +# Copyright (C) 2021 Blade SAS
> >
> > Can you also specify an OSS-friendly licence too?
> >
> > > +
> > > +#@TYPE: Machine
> > > +#@NAME: Rock64
> > > +#@DESCRIPTION: Rock64 RK3328 board from Pine64
> > > +
> > > +require include/rk3328.inc
> > > +
> > > +MACHINE_FEATURES +=3D "usbhost serial"
> > > +
> > > +UBOOT_MACHINE =3D "rock64-rk3328_defconfig"
> > > +KERNEL_DEVICETREE =3D "rockchip/rk3328-rock64.dtb"
> > > +
> > > +# set to mmcblk0 for booting from optional eMMC
> > > +RK_BOOT_DEVICE ?=3D "mmcblk1"
> > > +
> > > +WKS_FILE ?=3D "rock-pi-4.wks"
> >
> > Personally I'd prefer to see a rock64 wic file which includes an rk33=
28
> > default, even if it is a copy of the rock-pi-4 layout.
>=20
> Right that was something I wondered how to deal with and forgot (and no=
te that
> for the nanopi-m4 I used the same file).
>=20
> My reading of [1] is that all rockchip APs are using the same
> partition table.  I see
> that the existing {rk3288,rk3399}-boot.wks only differ in the choice
> of u-boot image,
> and I'm wondering if using the SoC to distinguish between them is the
> right choice,
> as eg. upstream RK is not using the .itb format, and I suspect we
> could use it as well
> for rk3288 (I'm sure I have one in a drawer and could check that some d=
ay).  Now
> maybe the sate of things is different for 32bit SoCs, and I thought it
> could make sense to
> distinguish rockchip-32bit-boot.wks and rockchip-64bit-boot.wks, or may=
be even
> name them using the format, as something like rockchip-legacy-boot.wks
> (well there
> is probably a more descriptive name for that format) and rockchip-itb-b=
oot.wks ?
>=20
> Similarly, the .wks for 3288-based boards and for 3399-based ones only
> differ by the
> console baudrate, and the 3288-based .wks are all identical except for
> some whitespace.
> And in fact, it is not unthinkable for a given project to use
> something else than a
> single-partition layout, so those files are indeed closer to a
> "default wks".  Maybe we
> could use more generic filenames there too (until we implement a way to=
 avoid
> hardcoding the baudrate here)
>=20
> [1] http://opensource.rock-chips.com/wiki_Boot_option

True. We could definitely use some cleanup in this area. If you want to
propose something that's going to work, I'll add it.

Also, when adding a new board, please update the top-level README.

Thanks!
