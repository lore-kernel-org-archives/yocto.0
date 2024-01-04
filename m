Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560DDC4706F
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 06:34:00 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web10.48872.1704350032951709923
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 22:33:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SxeIpkf7;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-204df0830ccso143215fac.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 22:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704350032; x=1704954832; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0qwIrWKFn5Cnefk19SOEpgM0aRGPRCBtLYf3m9Ed0JM=;
        b=SxeIpkf73BkDeDll8wSuVYUPSlN0yzdSHnQObc8KvlOuJNz3AFmsWyTMgdMnV7nFmS
         JlX0SwPTxcFsR5evA+tHWrFYvj5R+wmf101vAbWyUPa8rGZRKT6tu4bUgXGPdlmz2bH2
         Hr38UwOcqnKDIQV1qv6eVHICwd87rOJpIUyCn2yApzmzpapVUEgbQK33Qve30tE5cmaH
         T12914UIlJ4PEEq3EIBle8oOyRnQNr1Ynjp6MbxCkyZR6VPcHvT1corDJuzwte697mFQ
         yhI1HfdwgQYRQCTVXok6AUio+bYeR+Qb3GpUbduvG0FZeIb8nhtUuJh7Et47pctbbJd9
         qXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704350032; x=1704954832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0qwIrWKFn5Cnefk19SOEpgM0aRGPRCBtLYf3m9Ed0JM=;
        b=N5l9twmO57B0BeZSQEFNSpXqMWZ2iPZw+4tW4udEbta9r/CnN0GoEb8rEcXl5EBkuF
         EXn8XHuOq238Wg8ZHjmtW9fU3vSRyM/sAEeLEFJm9XC4RLkos6Woc6ngwegp7YsZYS2i
         iEvrKha+iaffdh1lKnYcSxrJLLHnFtnBcLXFD5XWVvHTDdNRYQOZpr6Ezl5p1hovYxMV
         yRpkomNit0hXoeQPfAx42geCqv4fFMsqSArSiI7Ykm0MvY3a6rprlFirpyU446Q059fx
         p2040jTVTkaU98Z9JPSCj/DEh9OSqhvxgYUfT29TZYOd/yLWOZBzGXpTedo2ozH4gpiR
         86bQ==
X-Gm-Message-State: AOJu0YyLD22thq9CABXZqpz1GqWiMat5xdTyzL2yjAyhdqkg+YdedGvt
	1bbj9bxznQZCHuCTvcJshezRkrQGlVlWrSv45VE=
X-Google-Smtp-Source: AGHT+IEjF3pGg0QobpYxsIIV3yDkNWkKeYv2DbSUzZ5HoeFm8ccu8t3gsCW+AMeDDDV+az17YBB0cDHnxWzgG+owq5g=
X-Received: by 2002:a05:6870:9b04:b0:204:34f0:b874 with SMTP id
 hq4-20020a0568709b0400b0020434f0b874mr161827oab.66.1704350031969; Wed, 03 Jan
 2024 22:33:51 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sqP0413+63ZgDzyCH8ZNqPfwkPALTRwEsfNieDti5SXbQ@mail.gmail.com>
 <11912.1704349118416328574@lists.yoctoproject.org>
In-Reply-To: <11912.1704349118416328574@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Jan 2024 22:33:25 -0800
Message-ID: <CAMKF1sqdmD+E+QjRkHGjv2_+r++gPZUGpvf3xpy=YD2wd0U9fQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] use MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS
 to add kernel-modules
To: Stephen Chen <stephen@radxa.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 06:34:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62086

do you see same issue with core-image-base ?

On Wed, Jan 3, 2024 at 10:18=E2=80=AFPM Stephen Chen <stephen@radxa.com> wr=
ote:
>
> I revert the patch, and run command, MACHINE=3Drock-5a bitbake-getvar MAC=
HINE_EXTRA_RRECOMMENDS
> And I get this:
>
> ### Shell environment set up for builds. ###
>
> You can now run 'bitbake <target>'
>
> Common targets are:
>     core-image-minimal
>     core-image-full-cmdline
>     core-image-sato
>     core-image-weston
>     meta-toolchain
>     meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu qemux=
86-64'.
>
> Other commonly useful commands are:
>  - 'devtool' and 'recipetool' handle common recipe tasks
>  - 'bitbake-layers' handles common layer tasks
>  - 'oe-pkgdata-util' handles common target package tasks
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> NOTE: Starting bitbake server...
> #
> # $MACHINE_EXTRA_RRECOMMENDS [3 operations]
> #   append /tank/stephen/yocto-rockchip-mainline/meta-rockchip/conf/machi=
ne/rock-5a.conf:10
> #     "kernel-modules"
> #   set /tank/stephen/yocto-rockchip-mainline/openembedded-core/meta/conf=
/documentation.conf:283
> #     [doc] "A list of machine-specific packages to install as part of th=
e image being built that are not essential for booting the machine. The ima=
ge being built has no build dependencies on the packages in this list."
> #   set? /tank/stephen/yocto-rockchip-mainline/openembedded-core/meta/con=
f/bitbake.conf:897
> #     ""
> # pre-expansion value:
> #   " kernel-modules"
> MACHINE_EXTRA_RRECOMMENDS=3D" kernel-modules"
>
> On Thu, Jan 4, 2024 at 12:40 PM, Khem Raj wrote:
>
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS should be used when you need a
> module to be pulled in to enable something always.
> so I think setting MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to pull in a
> meta package sounds a bit wrong. I wonder if you have something
> overriding MACHINE_EXTRA_RRECOMMENDS, please try
>
> bitbake-getvar MACHINE_EXTRA_RRECOMMENDS
>
> and check if it contains kernel-modules or not. Also check output of
> bitbake -e core-image-full-cmdline
> so see if kernel-modules are being pulled into image or not. bitbake
> -g core-image-full-cmdline might also help in finding the dependencies
> being pulled into image and their relations.
>
> On Wed, Jan 3, 2024 at 8:20=E2=80=AFPM Stephen Chen <stephen@radxa.com> w=
rote:
>
>
> On Thu, Jan 4, 2024 at 05:27 AM, Trevor Woerner wrote:
>
> On Tue 2023-12-19 @ 07:23:52 PM, Stephen Chen wrote:
>
> This will add all built kernel modules to the image.
>
> Signed-off-by: Stephen Chen <stephen@radxa.com>
>
> diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/ro=
ck-pi-4.inc
> index 0a86846..fd9a9eb 100644
> --- a/conf/machine/include/rock-pi-4.inc
> +++ b/conf/machine/include/rock-pi-4.inc
> @@ -3,4 +3,4 @@ MACHINEOVERRIDES =3D. "rock-pi-4:"
>
> require conf/machine/include/rk3399.inc
>
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf
> index 35cd8f6..01d5c59 100644
> --- a/conf/machine/nanopi-m4b.conf
> +++ b/conf/machine/nanopi-m4b.conf
> @@ -5,7 +5,7 @@
>
> I've tried this a couple times and a couple different ways and I can't fi=
gure
> out how what we already have (MACHINE_EXTRA_RRECOMMENDS) is any different=
 from
> what you're proposing (MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS).
>
> Using a very basic, no-distro setup I've built core-image-minimal and
> core-image-base both with and without your patch and I see absolutely no
> difference in the list of installed packages
> (buildhistory/images/rock_5b/glibc/core-image-*/installed-packages.txt).
>
> All of meta-rockchip's machine/include/* files already include
> MACHINE_EXTRA_RRECOMMENDS, do you have a scenario where a build is not
> including all of the built kernel modules in an image?
>
> require conf/machine/include/rk3399.inc
>
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>
> KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4b.dtb"
> UBOOT_MACHINE =3D "nanopi-m4b-rk3399_defconfig"
> diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
> index 4472c21..4ed3160 100644
> --- a/conf/machine/nanopi-r2s.conf
> +++ b/conf/machine/nanopi-r2s.conf
> @@ -6,6 +6,6 @@
> require conf/machine/include/rk3328.inc
>
> KERNEL_DEVICETREE =3D "rockchip/rk3328-nanopi-r2s.dtb"
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>
> UBOOT_MACHINE =3D "nanopi-r2s-rk3328_defconfig"
> diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
> index 21be440..1a63a96 100644
> --- a/conf/machine/nanopi-r4s.conf
> +++ b/conf/machine/nanopi-r4s.conf
> @@ -5,7 +5,7 @@
>
> require conf/machine/include/rk3399.inc
>
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>
> KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-r4s.dtb"
> UBOOT_MACHINE =3D "nanopi-r4s-rk3399_defconfig"
> diff --git a/conf/machine/rock-5a.conf b/conf/machine/rock-5a.conf
> index 5ace4da..53b56b1 100644
> --- a/conf/machine/rock-5a.conf
> +++ b/conf/machine/rock-5a.conf
> @@ -7,6 +7,6 @@ require conf/machine/include/rk3588s.inc
>
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
> KERNEL_DEVICETREE =3D "rockchip/rk3588s-rock-5a.dtb"
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>
> UBOOT_MACHINE =3D "rock5a-rk3588s_defconfig"
> diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
> index d137108..dc5fabc 100644
> --- a/conf/machine/rock-5b.conf
> +++ b/conf/machine/rock-5b.conf
> @@ -7,6 +7,6 @@ require conf/machine/include/rk3588.inc
>
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
> KERNEL_DEVICETREE =3D "rockchip/rk3588-rock-5b.dtb"
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>
> UBOOT_MACHINE =3D "rock5b-rk3588_defconfig"
> diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
> index 517956c..3f83675 100644
> --- a/conf/machine/rock-pi-e.conf
> +++ b/conf/machine/rock-pi-e.conf
> @@ -6,6 +6,6 @@
> require conf/machine/include/rk3328.inc
>
> KERNEL_DEVICETREE =3D "rockchip/rk3328-rock-pi-e.dtb"
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>
> UBOOT_MACHINE =3D "rock-pi-e-rk3328_defconfig"
> diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
> index 79ea73c..590e972 100644
> --- a/conf/machine/rock-pi-s.conf
> +++ b/conf/machine/rock-pi-s.conf
> @@ -6,6 +6,6 @@
> require conf/machine/include/rk3308.inc
>
> KERNEL_DEVICETREE =3D "rockchip/rk3308-rock-pi-s.dtb"
> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>
> UBOOT_MACHINE =3D "rock-pi-s-rk3308_defconfig"
> --
> 2.25.1
>
> Hi
>
> I build ROCK 5A core-image-full-cmdline.
>
> Without that patch, only these ko are included.
>
> $ tree build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/=
rootfs/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
> build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs/=
lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
> =E2=94=9C=E2=94=80=E2=94=80 lib
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 libcrc32c.ko
> =E2=94=94=E2=94=80=E2=94=80 net
> =E2=94=9C=E2=94=80=E2=94=80 802
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 stp.ko
> =E2=94=9C=E2=94=80=E2=94=80 bridge
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 bridge.ko
> =E2=94=9C=E2=94=80=E2=94=80 ipv4
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 netfilter
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_filter.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_mangle.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_nat.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_raw.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_security.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip_tables.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ipt_REJECT.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 nf_defrag_ipv4.ko
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 nf_reject_ipv4.ko
> =E2=94=9C=E2=94=80=E2=94=80 ipv6
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ipv6.ko
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 netfilter
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_filter.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_mangle.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_nat.ko
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6_tables.ko
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 nf_defrag_ipv6.ko
> =E2=94=9C=E2=94=80=E2=94=80 llc
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 llc.ko
> =E2=94=94=E2=94=80=E2=94=80 netfilter
> =E2=94=9C=E2=94=80=E2=94=80 nf_conntrack.ko
> =E2=94=9C=E2=94=80=E2=94=80 nf_conntrack_netlink.ko
> =E2=94=9C=E2=94=80=E2=94=80 nf_nat.ko
> =E2=94=9C=E2=94=80=E2=94=80 nfnetlink.ko
> =E2=94=9C=E2=94=80=E2=94=80 x_tables.ko
> =E2=94=9C=E2=94=80=E2=94=80 xt_addrtype.ko
> =E2=94=9C=E2=94=80=E2=94=80 xt_CHECKSUM.ko
> =E2=94=9C=E2=94=80=E2=94=80 xt_conntrack.ko
> =E2=94=9C=E2=94=80=E2=94=80 xt_MASQUERADE.ko
> =E2=94=9C=E2=94=80=E2=94=80 xt_nat.ko
> =E2=94=9C=E2=94=80=E2=94=80 xt_state.ko
> =E2=94=94=E2=94=80=E2=94=80 xt_tcpudp.ko
>
> 10 directories, 31 files
>
> With this patch, more ko are included.
>
> $ tree build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/=
rootfs/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
> build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs/=
lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
> =E2=94=9C=E2=94=80=E2=94=80 arch
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 arm64
> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 crypto
> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-blk.ko
> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-bs.ko
> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 chacha-neon.ko
> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 crct10dif-ce.ko
> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha3-ce.ko
> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha512-arm64.ko
> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha512-ce.ko
> =E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 sm3-ce.ko
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 lib
> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 xor-neon.ko
> =E2=94=9C=E2=94=80=E2=94=80 crypto
> =E2=94=82 =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 mc44s803.ko
> ....
> .....
> =E2=94=94=E2=94=80=E2=94=80 rockchip
> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rk3399-gru-sound.ko
> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s.ko
> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko
> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-rt5645.ko
> =E2=94=94=E2=94=80=E2=94=80 snd-soc-rockchip-spdif.ko
>
> 256 directories, 809 files
>

