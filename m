Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79E59C433EF
	for <webhook@archiver.kernel.org>; Sun, 12 Dec 2021 04:03:53 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web12.30771.1639281831896709651
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Dec 2021 20:03:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NNrqpL8l;
 spf=pass (domain: gmail.com, ip: 209.85.222.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id p4so11345686qkm.7
        for <yocto@lists.yoctoproject.org>;
 Sat, 11 Dec 2021 20:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/E4bIulI7NjLK4YZzrNUWrSn1KBK5HLP9uAndFrSOfU=;
        b=NNrqpL8lPvLCEee93uu79RjtuNwX8kxuftPPm9dMD8niONz1IombuKVqTugalkZDcp
         glUncxbTOIr8q8Su81XcV/Q/MleSLmFK2Groml8gNQ4kD7SL2tGXWR5b/cgMl9K2POZe
         cASblk4B+q16JgsebiFYfogl2pVkZsWrbzmtqpw/V95Q4PFjM6q17Kw1U/W9qOrl0U6M
         f95xnSR9potuaAlhjr3Kda5Fsis4JXrZ7BkiSZt0JrVlqpBvgnnjlkdxlsQCwTd0hBO+
         qFM+mzWRY0PV+AvoPhMk8KJpXGR1yaeho9em4e9TZ/dExpz581MqS9+Hyt1uqk4hws3k
         ib2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/E4bIulI7NjLK4YZzrNUWrSn1KBK5HLP9uAndFrSOfU=;
        b=JQeeIPI0+0UeK08OcozHm+Z+1G64dCwvn9j6Fz+QFYWP10dS3Gxcl2QA/MoN3OZETk
         qX4WOG6erD5dA0FyfBNbRssKpIE/ETpNui1KIjGdPTSTzDrMTf0sUUPDNfazQoS0F6Vp
         Hzs+oUedwcCOW9vRla3jPH+CIyxm8QR15CGjFjewEGngK2U6gCdyDXYlYm/SUYhhN77z
         KiAN7ThUnv8M5r4RTOGZDdQiPvG0UqP71RqvAhFHMu78AA1Qlk4xZu1My6inJLsr77iq
         9OaiGMXVOMGzDEMxXXfJt3kDg5b6c+0HcP6EZP90jM5V5SYiTp5ADCVRh0yrl6iDuZ4T
         wswg==
X-Gm-Message-State: AOAM533CeivzNuB7yepKdUB+/tjV97BdGu8ueyvEO0sEfdVBq/q4rJ0r
	uZAgDZgcTRp+Oez/KKphGmuYsu5WN4c93RTpuPQ=
X-Google-Smtp-Source: 
 ABdhPJxh3b2uE6bAGL2KinEjwGjYmz/TZHQD5bg958JU6D493jRpEuewJJC+tlmb5QbPVkUMbeqkW43qTFiMDcmYhsw=
X-Received: by 2002:a37:747:: with SMTP id 68mr27814923qkh.227.1639281830944;
 Sat, 11 Dec 2021 20:03:50 -0800 (PST)
MIME-Version: 1.0
References: <20211211135543.15070-1-twoerner@gmail.com>
In-Reply-To: <20211211135543.15070-1-twoerner@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 11 Dec 2021 20:03:40 -0800
Message-ID: 
 <CAMKF1spt+bDt-7x2LPo4o55rv2jK5MYrvb8SU2C6c2XLXcbA_A@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH v2] override syntax fixup
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000038664105d2eb0b6b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Dec 2021 04:03:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55552

--00000000000038664105d2eb0b6b
Content-Type: text/plain; charset="UTF-8"

On Sat, Dec 11, 2021 at 5:56 AM Trevor Woerner <twoerner@gmail.com> wrote:

> The _virtual notation is not an override. These syntax "fixes" need to be
> reverted.


Looks good

>
>
> In the case of the kernel override, when it was added, the rock-pi-e needed
> the latest kernel (linux-yocto-dev) but now the default linux-yocto kernel
> will suffice. So this mistake actually switched the rock-pi-e from
> linux-yocto-dev back to linux-yocto inadvertently but at a time when
> linux-yocto-dev was no longer required.
>
> In the case of the bootloader overrides, u-boot was always the default, so
> these overrides were always redundant.
>
> Therefore, in the end, simply removing these overrides is the best way
> forward (considering these aren't doing anything, and the builds are
> working
> fine regardless).
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rk3288.inc            | 1 -
>  conf/machine/include/rk3328.inc            | 2 --
>  conf/machine/include/rk3399.inc            | 2 --
>  conf/machine/include/rockchip-defaults.inc | 1 -
>  conf/machine/rock-pi-e.conf                | 2 --
>  5 files changed, 8 deletions(-)
>
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index 5b84e94..1d4a0e3 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -12,5 +12,4 @@ SERIAL_CONSOLES = "115200;ttyS2"
>  KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
>  KERNEL_IMAGETYPE = "zImage"
>
> -PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
>  UBOOT_SUFFIX ?= "bin"
> diff --git a/conf/machine/include/rk3328.inc
> b/conf/machine/include/rk3328.inc
> index 0f3a730..acc9afd 100644
> --- a/conf/machine/include/rk3328.inc
> +++ b/conf/machine/include/rk3328.inc
> @@ -19,5 +19,3 @@ TFA_BUILD_TARGET = "bl31"
>
>  UBOOT_SUFFIX ?= "itb"
>  UBOOT_ENTRYPOINT ?= "0x06000000"
> -
> -PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
> diff --git a/conf/machine/include/rk3399.inc
> b/conf/machine/include/rk3399.inc
> index 09c87c0..1e6c3b6 100644
> --- a/conf/machine/include/rk3399.inc
> +++ b/conf/machine/include/rk3399.inc
> @@ -19,5 +19,3 @@ TFA_BUILD_TARGET = "bl31"
>
>  UBOOT_SUFFIX ?= "itb"
>  UBOOT_ENTRYPOINT ?= "0x06000000"
> -
> -PREFERRED_PROVIDER:virtual/bootloader ?= "u-boot"
> diff --git a/conf/machine/include/rockchip-defaults.inc
> b/conf/machine/include/rockchip-defaults.inc
> index 455cca8..ca94249 100644
> --- a/conf/machine/include/rockchip-defaults.inc
> +++ b/conf/machine/include/rockchip-defaults.inc
> @@ -5,7 +5,6 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>  KCONFIG_MODE ?= "alldefconfig"
>
>  # xserver
> -PREFERRED_PROVIDER:virtual/xserver = "xserver-xorg"
>  XSERVER = " \
>         xserver-xorg \
>         xserver-xorg-utils \
> diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
> index 7f49c9f..0e2856f 100644
> --- a/conf/machine/rock-pi-e.conf
> +++ b/conf/machine/rock-pi-e.conf
> @@ -7,9 +7,7 @@ require conf/machine/include/rk3328.inc
>
>  MACHINEOVERRIDES =. "rock-pi-e:"
>
> -PREFERRED_PROVIDER:virtual/kernel = "linux-yocto-dev"
>  KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
>  MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>
> -PREFERRED_PROVIDER:virtual/bootloader = "u-boot"
>  UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
> --
> 2.34.1.75.gabe6bb3905
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55550):
> https://lists.yoctoproject.org/g/yocto/message/55550
> Mute This Topic: https://lists.yoctoproject.org/mt/87658206/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000038664105d2eb0b6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Dec 11, 2021 at 5:56 AM Trevor Woerner &lt;<a href=
=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rg=
b(204,204,204)">The _virtual notation is not an override. These syntax &quo=
t;fixes&quot; need to be<br>
reverted.</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Looks g=
ood=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bord=
er-left-color:rgb(204,204,204)" dir=3D"auto"><br>
<br>
In the case of the kernel override, when it was added, the rock-pi-e needed=
<br>
the latest kernel (linux-yocto-dev) but now the default linux-yocto kernel<=
br>
will suffice. So this mistake actually switched the rock-pi-e from<br>
linux-yocto-dev back to linux-yocto inadvertently but at a time when<br>
linux-yocto-dev was no longer required.<br>
<br>
In the case of the bootloader overrides, u-boot was always the default, so<=
br>
these overrides were always redundant.<br>
<br>
Therefore, in the end, simply removing these overrides is the best way<br>
forward (considering these aren&#39;t doing anything, and the builds are wo=
rking<br>
fine regardless).<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rk3288.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 1 -<br>
=C2=A0conf/machine/include/rk3328.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 --<br>
=C2=A0conf/machine/include/rk3399.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 --<br>
=C2=A0conf/machine/include/rockchip-defaults.inc | 1 -<br>
=C2=A0conf/machine/rock-pi-e.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 2 --<br>
=C2=A05 files changed, 8 deletions(-)<br>
<br>
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.=
inc<br>
index 5b84e94..1d4a0e3 100644<br>
--- a/conf/machine/include/rk3288.inc<br>
+++ b/conf/machine/include/rk3288.inc<br>
@@ -12,5 +12,4 @@ SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
=C2=A0KBUILD_DEFCONFIG ?=3D &quot;multi_v7_defconfig&quot;<br>
=C2=A0KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
<br>
-PREFERRED_PROVIDER:virtual/bootloader ?=3D &quot;u-boot&quot;<br>
=C2=A0UBOOT_SUFFIX ?=3D &quot;bin&quot;<br>
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.=
inc<br>
index 0f3a730..acc9afd 100644<br>
--- a/conf/machine/include/rk3328.inc<br>
+++ b/conf/machine/include/rk3328.inc<br>
@@ -19,5 +19,3 @@ TFA_BUILD_TARGET =3D &quot;bl31&quot;<br>
<br>
=C2=A0UBOOT_SUFFIX ?=3D &quot;itb&quot;<br>
=C2=A0UBOOT_ENTRYPOINT ?=3D &quot;0x06000000&quot;<br>
-<br>
-PREFERRED_PROVIDER:virtual/bootloader ?=3D &quot;u-boot&quot;<br>
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.=
inc<br>
index 09c87c0..1e6c3b6 100644<br>
--- a/conf/machine/include/rk3399.inc<br>
+++ b/conf/machine/include/rk3399.inc<br>
@@ -19,5 +19,3 @@ TFA_BUILD_TARGET =3D &quot;bl31&quot;<br>
<br>
=C2=A0UBOOT_SUFFIX ?=3D &quot;itb&quot;<br>
=C2=A0UBOOT_ENTRYPOINT ?=3D &quot;0x06000000&quot;<br>
-<br>
-PREFERRED_PROVIDER:virtual/bootloader ?=3D &quot;u-boot&quot;<br>
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/incl=
ude/rockchip-defaults.inc<br>
index 455cca8..ca94249 100644<br>
--- a/conf/machine/include/rockchip-defaults.inc<br>
+++ b/conf/machine/include/rockchip-defaults.inc<br>
@@ -5,7 +5,6 @@ PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yocto&qu=
ot;<br>
=C2=A0KCONFIG_MODE ?=3D &quot;alldefconfig&quot;<br>
<br>
=C2=A0# xserver<br>
-PREFERRED_PROVIDER:virtual/xserver =3D &quot;xserver-xorg&quot;<br>
=C2=A0XSERVER =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 xserver-xorg \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 xserver-xorg-utils \<br>
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf<br>
index 7f49c9f..0e2856f 100644<br>
--- a/conf/machine/rock-pi-e.conf<br>
+++ b/conf/machine/rock-pi-e.conf<br>
@@ -7,9 +7,7 @@ require conf/machine/include/rk3328.inc<br>
<br>
=C2=A0MACHINEOVERRIDES =3D. &quot;rock-pi-e:&quot;<br>
<br>
-PREFERRED_PROVIDER:virtual/kernel =3D &quot;linux-yocto-dev&quot;<br>
=C2=A0KERNEL_DEVICETREE =3D &quot;rockchip/rk3328-rock-pi-e.dtb&quot;<br>
=C2=A0MACHINE_EXTRA_RRECOMMENDS +=3D &quot;kernel-modules&quot;<br>
<br>
-PREFERRED_PROVIDER:virtual/bootloader =3D &quot;u-boot&quot;<br>
=C2=A0UBOOT_MACHINE =3D &quot;rock-pi-e-rk3328_defconfig&quot;<br>
-- <br>
2.34.1.75.gabe6bb3905<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#55550): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55550" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55550</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87658206/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87658206/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000038664105d2eb0b6b--

