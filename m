Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85C6C47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 04:40:39 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web11.47641.1704343229455951586
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 20:40:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DlpWq//T;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2046b2cd2d3so103543fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 20:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704343228; x=1704948028; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7TM9gc/BC8WSFty1+uj8zT0HaXDQmBR97jY41w1N4w=;
        b=DlpWq//TH1Wwht53TBd84GwF3esNwT/i9GtwNCcuXvkxDNy0CkTuX0/k3L4xoc7Wh+
         1c4Qi+aCt6pVDbQiSmj16+RkBVk5gFoU20vS8UUIHDHiVvyCsTlu1hIqqdapLypSfcNr
         Rq7E80/HUF7POQYXlZqJ+t2R6Ld9RWC6g5Bn4VzbOPP1aMPNUN/0Qyp5Chx4FngfHa+x
         BNS5NkhQnHcqZJ0al4kAKM8psjV/um3QDp4OPywLuOfHV/llZ/sNGkQootWIXjJRsPFe
         XLYuoqejaUhHew0PNyXprS1WJh7wQDlTvBwShil68ggqMTuWgOm91oZsWGriLeY1Bicb
         aQMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704343228; x=1704948028;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7TM9gc/BC8WSFty1+uj8zT0HaXDQmBR97jY41w1N4w=;
        b=KXDvFXyZre1uUylBnl6IjQhZCU7C4L4FhEg6HT4CL34ahIFQzVAppkkydGjKalpemG
         ddMEIR3q8h8pczMRPu4eMT8x+xq5snPL66PZjyyvkBO9xy48sw265igw8lLWhi64HZmC
         2x4UamvnnHqcTVUwdug7Y+52yjtkLeYd1PuTPEHAv/fKTYQ+yCcBW4czF21f1FNfR2OG
         lxagcaNwTjwbWBDZZT5aBkvU2rKkLMa+D5gskySi8eufh+fkNSLg9kEp4ed1lKbzldQY
         odoCgQcLgueDzlLB3lhzyZN2CMcudVKF+squpqepA31jc0PgMOMDq97mnK/Wd9dt3ODr
         MKZQ==
X-Gm-Message-State: AOJu0YyOCRNtSXe5EzsGl5PcyDSvUhNEc5BUvJOYjVh5XPT5q+XJdhyj
	0xCsW3sfgnEvlDcO/YDw2m8Ebvqaicw1piiG23DZGlFAEok=
X-Google-Smtp-Source: AGHT+IG7y3sEk5JcXqZIVGQ3yeZE5lnIc9A+H//4a0YBKgtHHblLvoMoO+qeCoz2XI/8Zp9hIP1r5ORLHVuJDOljf2U=
X-Received: by 2002:a05:6871:e413:b0:203:c25b:235e with SMTP id
 py19-20020a056871e41300b00203c25b235emr110742oac.40.1704343228055; Wed, 03
 Jan 2024 20:40:28 -0800 (PST)
MIME-Version: 1.0
References: <20240103212715.GA8955@localhost> <19798.1704342038790268828@lists.yoctoproject.org>
In-Reply-To: <19798.1704342038790268828@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Jan 2024 20:40:01 -0800
Message-ID: <CAMKF1sqP0413+63ZgDzyCH8ZNqPfwkPALTRwEsfNieDti5SXbQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] use MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS
 to add kernel-modules
To: yocto@lists.yoctoproject.org, stephen@radxa.com
Cc: Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 04:40:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62084

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS should be used when you need a
module to be pulled in to enable something always.
so I think setting MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to pull in a
meta package sounds a bit wrong. I wonder if you have something
overriding MACHINE_EXTRA_RRECOMMENDS, please try

bitbake-getvar MACHINE_EXTRA_RRECOMMENDS

and check if it contains kernel-modules or not. Also check output of
bitbake -e core-image-full-cmdline
so see if kernel-modules are being pulled into image or not. bitbake
-g core-image-full-cmdline might also help in finding the dependencies
being pulled into image and their relations.

On Wed, Jan 3, 2024 at 8:20=E2=80=AFPM Stephen Chen <stephen@radxa.com> wro=
te:
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
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 libcrc32c.ko
> =E2=94=94=E2=94=80=E2=94=80 net
>     =E2=94=9C=E2=94=80=E2=94=80 802
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 stp.ko
>     =E2=94=9C=E2=94=80=E2=94=80 bridge
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 bridge.ko
>     =E2=94=9C=E2=94=80=E2=94=80 ipv4
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 netfilter
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 iptable_filter.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 iptable_mangle.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 iptable_nat.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 iptable_raw.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 iptable_security.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 ip_tables.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 ipt_REJECT.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 nf_defrag_ipv4.ko
>     =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 nf_reject_ipv4.ko
>     =E2=94=9C=E2=94=80=E2=94=80 ipv6
>     =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 ipv6.ko
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 netfilter
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 ip6table_filter.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 ip6table_mangle.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 ip6table_nat.ko
>     =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 ip6_tables.ko
>     =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 nf_defrag_ipv6.ko
>     =E2=94=9C=E2=94=80=E2=94=80 llc
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 llc.ko
>     =E2=94=94=E2=94=80=E2=94=80 netfilter
>         =E2=94=9C=E2=94=80=E2=94=80 nf_conntrack.ko
>         =E2=94=9C=E2=94=80=E2=94=80 nf_conntrack_netlink.ko
>         =E2=94=9C=E2=94=80=E2=94=80 nf_nat.ko
>         =E2=94=9C=E2=94=80=E2=94=80 nfnetlink.ko
>         =E2=94=9C=E2=94=80=E2=94=80 x_tables.ko
>         =E2=94=9C=E2=94=80=E2=94=80 xt_addrtype.ko
>         =E2=94=9C=E2=94=80=E2=94=80 xt_CHECKSUM.ko
>         =E2=94=9C=E2=94=80=E2=94=80 xt_conntrack.ko
>         =E2=94=9C=E2=94=80=E2=94=80 xt_MASQUERADE.ko
>         =E2=94=9C=E2=94=80=E2=94=80 xt_nat.ko
>         =E2=94=9C=E2=94=80=E2=94=80 xt_state.ko
>         =E2=94=94=E2=94=80=E2=94=80 xt_tcpudp.ko
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
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 arm64
> =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 crypto
> =E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 aes-neon-blk.ko
> =E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 aes-neon-bs.ko
> =E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 chacha-neon.ko
> =E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 crct10dif-ce.ko
> =E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sha3-ce.ko
> =E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sha512-arm64.ko
> =E2=94=82       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sha512-ce.ko
> =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 sm3-ce.ko
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 lib
> =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 xor-neon.ko
> =E2=94=9C=E2=94=80=E2=94=80 crypto
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 mc44s803.=
ko
> ....
> .....
>         =E2=94=94=E2=94=80=E2=94=80 rockchip
>             =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rk3399-gru-sound.ko
>             =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s.ko
>             =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko
>             =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-rt5645.ko
>             =E2=94=94=E2=94=80=E2=94=80 snd-soc-rockchip-spdif.ko
>
> 256 directories, 809 files
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62082): https://lists.yoctoproject.org/g/yocto/messag=
e/62082
> Mute This Topic: https://lists.yoctoproject.org/mt/103260773/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

