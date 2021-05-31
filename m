Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.42145.1622453248054538260
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 02:27:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=lyVYocbc;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0F6CB38C0865
	for <yocto@yoctoproject.org>; Mon, 31 May 2021 09:27:27 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id j12so5697296vsq.9
        for <yocto@yoctoproject.org>; Mon, 31 May 2021 02:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CJDI22Gbx0gsi+9GxLS2kQUPjxdaIfeEAwGoJeVp6Vs=;
        b=lyVYocbcvbyieezl6ij+y7g5Omgtq9EPkDV5xmSmPTdgcwxZiwwvcdwuqQP+GzYhq5
         pUjJSWWA9kcAQ2rjOyFX8NOWg3q3v5dDc1yOnbNBqSadZCRitojIZFGgJVRvIUnHwJ5G
         naN276UYvLUGkYqpymlT0RqtC0ZpRRJGut/3H/PIAe4i4LkpqfMJCrBQJQ2eqr57c/ot
         F3E4CMBb22spbsL1EXEe2LQ/ekBmSxANyzpnzNm6ZGYA7atP6ugL3yhI/Y1IhOe/nQ/Y
         cqa3yPx0kpNjwOqWNcBtfHY3Q24abaJP4BwbdMi2PwLEymVRIznq78nkt1IRo355tBoN
         uOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=CJDI22Gbx0gsi+9GxLS2kQUPjxdaIfeEAwGoJeVp6Vs=;
        b=i5Jrp7QDp0VKl+qbLGPL1Uelq0e/QsOATHqm31NWGyJeZm8eQHRKQyBBemaT/F04HO
         wmvWHo2h5EHdtKv6DYociE6OYAqRAmJuPwX+hErH/dPf6nHSmxWmrccVy83/sL1XIO7t
         ++TnDl8h2t/1AF0aw5G8A0I8Oo7YnRPGx8Dv1cF2gWoPP/dos15PPGP3q6kzqSSbJZLs
         8FTXCHK7Dv0E+onJsjv3QEnOG1L5fo92qnVaVAOvhDrV7Rdc3bhkwP506+9YVaNpi1yS
         arxPz58YkMRXR08h3O5NadIjwVKLprqaKfQKCCKHh5vfJjTSXIYb7kMBxr6N/FWcMe3+
         +Gkw==
X-Gm-Message-State: AOAM530s36MRPgmPJx5mAyv41o9ZLCW/8NFMmYvP9UCzxhLaWq4PRr/b
	q/Sc/n2tFGC0sEe0zBLBsHIBz7md0lxHCRkM15SrRw==
X-Google-Smtp-Source: ABdhPJyZHf12vNnMTG65fJ97FAxudCBvMlZnvCJDd1MRxUqZBrATdy20RYVVKJsDRbXOAsBdnmJwM5CJSt8J0YiV70Q=
X-Received: by 2002:a67:fd47:: with SMTP id g7mr12530772vsr.54.1622453245591;
 Mon, 31 May 2021 02:27:25 -0700 (PDT)
MIME-Version: 1.0
References: <168418F73405C2F2.21857@lists.yoctoproject.org>
In-Reply-To: <168418F73405C2F2.21857@lists.yoctoproject.org>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Mon, 31 May 2021 11:27:14 +0200
Message-ID: <CA+4=imYN_-Q8srBzOo_noCLCrViePzT=dj9uhTUSnCrmZpLdAA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Rock64: add machine
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>, 
	Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lun. 31 mai 2021 =C3=A0 10:20, Yann Dirson via lists.yoctoproject.org
<yann.dirson=3Dblade-group.com@lists.yoctoproject.org> a =C3=A9crit :
>
> From: Yann Dirson <yann@blade-group.com>
>
> This is a RK3328 board from Pine64.
> Board details at https://wiki.pine64.org/wiki/ROCK64.
>
> Signed-off-by: Yann Dirson <yann@blade-group.com>
> ---
>
> This is just basic initial support without a kernel BSP.  As is the
> board boots with a serial console.

This statement was refering to core-image-minimal.  The board does get
working ethernet, usb, hdmi with core-image-base, the only major devices
not handled are audio (not even hdmi-audio by default) and emmc (see
below).

>
> Note I had to create the SoC definition for rk3328, and rather than
> setting serial at 115200 there just to have the board definition
> override it with rockchip-standard 1500000 I've set the latter right
> in rk3328.inc.
>
>  conf/machine/include/rk3328.inc            | 25 +++++++++++++++++++
>  conf/machine/rock64.conf                   | 28 ++++++++++++++++++++++
>  recipes-kernel/linux/linux-yocto%.bbappend |  1 +
>  3 files changed, 54 insertions(+)
>  create mode 100644 conf/machine/include/rk3328.inc
>  create mode 100644 conf/machine/rock64.conf
>
> diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk33=
28.inc
> new file mode 100644
> index 0000000..7d67627
> --- /dev/null
> +++ b/conf/machine/include/rk3328.inc
> @@ -0,0 +1,25 @@
> +# Copyright (C) 2020 Garmin Ltd. or its subsidaries
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SOC_FAMILY =3D "rk3328"
> +
> +DEFAULTTUNE ?=3D "cortexa53-crypto"
> +
> +require conf/machine/include/soc-family.inc
> +require conf/machine/include/tune-cortexa53.inc
> +require conf/machine/include/rockchip-defaults.inc
> +
> +KBUILD_DEFCONFIG ?=3D "defconfig"
> +KERNEL_CLASSES =3D "kernel-fitimage"
> +KERNEL_IMAGETYPE =3D "fitImage"
> +
> +TFA_PLATFORM =3D "rk3328"
> +TFA_BUILD_TARGET =3D "bl31"
> +
> +UBOOT_SUFFIX ?=3D "itb"
> +UBOOT_ENTRYPOINT ?=3D "0x06000000"
> +
> +SERIAL_CONSOLES =3D "1500000;ttyS2"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
> +SPL_BINARY ?=3D "idbloader.img"
> diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
> new file mode 100644
> index 0000000..88a8434
> --- /dev/null
> +++ b/conf/machine/rock64.conf
> @@ -0,0 +1,28 @@
> +# Copyright (C) 2021 Blade SAS
> +
> +#@TYPE: Machine
> +#@NAME: Rock64
> +#@DESCRIPTION: Rock64 RK3328 board from Pine64
> +
> +require include/rk3328.inc
> +
> +MACHINE_FEATURES +=3D "usbhost serial"
> +
> +UBOOT_MACHINE =3D "rock64-rk3328_defconfig"
> +KERNEL_DEVICETREE =3D "rockchip/rk3328-rock64.dtb"
> +

> +RK_BOOT_DEVICE =3D "mmcblk0"

I realize now that this part is problematic:
- booting core-image-minimal from sdcard with or without an eMMC
plugged indeed works, as does core-image-base without an eMMC
- booting core-image-base from sdcard with an eMMC plugged gets the sd
as mmcblk1

This seems to indicate that upstream dts lacks "/aliases/mmc*"
statements in the dts, I'll have to dig and see
what the proper aliases should be.


> +WKS_FILE ?=3D "rock-pi-4.wks"
> +IMAGE_FSTYPES +=3D "wic wic.bmap"
> +
> +WKS_FILE_DEPENDS ?=3D " \
> +    mtools-native \
> +    dosfstools-native \
> +    virtual/bootloader \
> +    virtual/kernel \
> +    "
> +IMAGE_BOOT_FILES ?=3D "\
> +    ${KERNEL_IMAGETYPE} \
> +    "
> +
> +KBUILD_DEFCONFIG =3D "defconfig"
> diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel=
/linux/linux-yocto%.bbappend
> index 7702e3f..f453281 100644
> --- a/recipes-kernel/linux/linux-yocto%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto%.bbappend
> @@ -8,3 +8,4 @@ COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
>  COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
>  COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
>  COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
> +COMPATIBLE_MACHINE_rock64 =3D "rock64"
> --
> 2.30.2
>
>
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
