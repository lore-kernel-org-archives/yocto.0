Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4550.1616473524438598357
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 21:25:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=atefgi0b;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 500AB38C05B5
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 04:25:21 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id g15so13148220qkl.4
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 21:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=xByZZ887l1Mc9t6zgMX3GHAZkncJVJKiTVYFPa7n4q0=;
        b=atefgi0bxs+stpyNRTiZ1Xt9J8AqZhPtkTdhNY08DXp9VWdF64JHg0qAdt+vme8E4x
         vnu0zHdtrCZOyeaQYapgweoVGJ1XkLz/iiltyMdsjOUHDCDlpg2W/ebw1AgXdX13YMUM
         w0KgBAwOx9tyrOC/OMHo2EPmmBaMn9ZBBISHJsn36bRaW+iwRs8ZM5UN+yKrpYqgUvqb
         fEHPZvoW8eDruIbXixmi4BL8/Y04kwLcoMEw5jeYwuiVn9xId0vLfDh5BVN1bN4k63KK
         xnzk9m6GCbbG7PLMjyhICLkxg2lZCPqHyMygIcgwjS5b1+hKFNyGRN9baqXXxVy4D7qQ
         jVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=xByZZ887l1Mc9t6zgMX3GHAZkncJVJKiTVYFPa7n4q0=;
        b=MTDD8gbaO/hphhW9Fq+pR52WxrmAEJ0Q0NFRUC8OA6ZVsDYLOpJxuW+ZuV2BNtAGzj
         /ZU/YYtZCi29F/a9wc8LH/KatOmrWv2zaahPy1zlKvjGnGV7H0Gs7AWR4Ei4tdW9TaDW
         yowkdUBM2xNJ5QLy4htROyThLWFr9uKBoxq1EF3UVehUtCvscdWkyhUcbUGYmdPYTXjK
         0ab/m+wY88Y1TCC4YcVvpMtlBYZZzQirZftwFvRbryhEIFk/bGiz/YlJeF01OVMk2Czq
         xGYPYYNRU5sKCvEa/wjhFeZTRHUBUcJGpOc+tKSPIkWZdt7JfbpunEk3POjbgUZfko5w
         2LiA==
X-Gm-Message-State: AOAM533SLWrSOf51KeXUXJqLfA/YKY7kkTPib0tPBo+6cvyjrAf6anja
	k7BFTlBsVPKqGQuO7T1mEv0=
X-Google-Smtp-Source: ABdhPJwiLbdoex/LKDfNE9SHGQUNVMXbsngDwxA+C/glkeCuID9cYN595KKmm3FlrXEd+heNm7kM6Q==
X-Received: by 2002:a37:8cd:: with SMTP id 196mr3515013qki.434.1616473520342;
        Mon, 22 Mar 2021 21:25:20 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b1sm12774485qkk.117.2021.03.22.21.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 21:25:19 -0700 (PDT)
Date: Tue, 23 Mar 2021 00:25:17 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@yoctoproject.org, Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH v2] Add machine definitions for NanoPi-M4 boards, 2GB and 4GB variants
Message-ID: <20210323042517.GA18238@localhost>
References: <20210322150720.580313-1-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210322150720.580313-1-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Yann,

Sorry to nitpick=E2=80=A6

Could you please tighten up the commit message? For example, please set
the subject to something like: "NanoPi-M4: add" or perhaps "NanoPi-M4: ad=
d
machines" then in the body give the details of exactly which boards are b=
eing
added; rather than having a long subject line and nothing in the body.

Also, I'm going to need a "signed-off-by:" line in order to accept this p=
atch.

On Mon 2021-03-22 @ 04:07:20 PM, yann.dirson@blade-group.com wrote:
> From: Yann Dirson <yann@blade-group.com>
>=20
> ---
>=20
> Changes from v1: split in two distinct machines: nanopi-m4 and nanopi-m=
4-2gb
>=20
>  conf/machine/include/nanopi-m4.inc            | 22 +++++++++++++++++++
>  conf/machine/nanopi-m4-2gb.conf               |  8 +++++++
>  conf/machine/nanopi-m4.conf                   |  8 +++++++
>  recipes-kernel/linux/linux-yocto-dev.bbappend |  2 ++
>  .../linux/linux-yocto-rt_%.bbappend           |  2 ++
>  .../linux/linux-yocto-tiny_%.bbappend         |  2 ++
>  recipes-kernel/linux/linux-yocto_%.bbappend   |  2 ++
>  7 files changed, 46 insertions(+)
>  create mode 100644 conf/machine/include/nanopi-m4.inc
>  create mode 100644 conf/machine/nanopi-m4-2gb.conf
>  create mode 100644 conf/machine/nanopi-m4.conf
>=20
> diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/=
nanopi-m4.inc
> new file mode 100644
> index 0000000..f6d9c11
> --- /dev/null
> +++ b/conf/machine/include/nanopi-m4.inc
> @@ -0,0 +1,22 @@
> +# Copyright (C) 2021 Blade SAS
> +# Common definitions for all NanoPi M4 RK3399 board variants
> +
> +require rk3399.inc
> +
> +KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
> +
> +RK_BOOT_DEVICE =3D "mmcblk1"
> +WKS_FILE ?=3D "rock-pi-4.wks"
> +IMAGE_FSTYPES +=3D "wic"

Please add "wic.bmap" to IMAGE_FSTYPES in addition to "wic". It makes cre=
ating
an =C2=B5SD card so much faster.

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
> +SERIAL_CONSOLES =3D "1500000;ttyS2"
> diff --git a/conf/machine/nanopi-m4-2gb.conf b/conf/machine/nanopi-m4-2=
gb.conf
> new file mode 100644
> index 0000000..9fd7279
> --- /dev/null
> +++ b/conf/machine/nanopi-m4-2gb.conf
> @@ -0,0 +1,8 @@
> +# Copyright (C) 2021 Blade SAS
> +
> +#@TYPE: Machine
> +#@NAME: NanoPi M4
> +#@DESCRIPTION: NanoPi M4 RK3399 board from FriendlyElec, 2GB variant
> +
> +require include/nanopi-m4.inc
> +UBOOT_MACHINE =3D "nanopi-m4-2gb-rk3399_defconfig"
> diff --git a/conf/machine/nanopi-m4.conf b/conf/machine/nanopi-m4.conf
> new file mode 100644
> index 0000000..648fc75
> --- /dev/null
> +++ b/conf/machine/nanopi-m4.conf
> @@ -0,0 +1,8 @@
> +# Copyright (C) 2021 Blade SAS
> +
> +#@TYPE: Machine
> +#@NAME: NanoPi M4
> +#@DESCRIPTION: NanoPi M4 RK3399 board from FriendlyElec, 4GB variant
> +
> +require include/nanopi-m4.inc
> +UBOOT_MACHINE =3D "nanopi-m4-rk3399_defconfig"
> diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-ke=
rnel/linux/linux-yocto-dev.bbappend
> index e5ea197..7702e3f 100644
> --- a/recipes-kernel/linux/linux-yocto-dev.bbappend
> +++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
>  COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
>  COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
>  COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
> +COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
> +COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
> diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-k=
ernel/linux/linux-yocto-rt_%.bbappend
> index e5ea197..7702e3f 100644
> --- a/recipes-kernel/linux/linux-yocto-rt_%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
> @@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
>  COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
>  COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
>  COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
> +COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
> +COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
> diff --git a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend b/recipes=
-kernel/linux/linux-yocto-tiny_%.bbappend
> index e5ea197..7702e3f 100644
> --- a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
> @@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
>  COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
>  COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
>  COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
> +COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
> +COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
> diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kern=
el/linux/linux-yocto_%.bbappend
> index e5ea197..7702e3f 100644
> --- a/recipes-kernel/linux/linux-yocto_%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto_%.bbappend
> @@ -6,3 +6,5 @@ COMPATIBLE_MACHINE_vyasa-rk3288 =3D "vyasa-rk3288"
>  COMPATIBLE_MACHINE_tinker-board =3D "tinker-board"
>  COMPATIBLE_MACHINE_tinker-board-s =3D "tinker-board-s"
>  COMPATIBLE_MACHINE_rock-pi-4 =3D "rock-pi-4"
> +COMPATIBLE_MACHINE_nanopi-m4 =3D "nanopi-m4"
> +COMPATIBLE_MACHINE_nanopi-m4-2gb =3D "nanopi-m4-2gb"
> --=20
> 2.30.2
>=20
