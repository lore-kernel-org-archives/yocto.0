Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15D7BE81817
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 04:09:08 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.11569.1695701339685736616
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 21:08:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KscteMG+;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-d84c24a810dso9248207276.2
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 21:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695701339; x=1696306139; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AoZiI5SO17ubd1oOvFMf1ZA9F2LsdL2SWCvTYt7WUmQ=;
        b=KscteMG+lMzCqxC6Ly9oTKH6XB+7wI6w+pft4EJQlNHYk4prkYarf0T+VrPgxiG76s
         Fql3WV0yoOsgouGpBPnV1xGtkTzLUIINujLZ6YEg1f4bP1KYzHirh+ZifBGoCVufPetA
         9pgKZRqqSk0287FA+eGKMxidmGDHcuEIBZ142H6IeKezRmwrp0iTSiYiGLCA+ISyhDOR
         YRlrRCL7reZYc2NMqyg2awbqyHg8gQ5Z8N052xkj4yzu+ZCbH/Hl/QaTeXpaJOnBStU/
         Sk4QfUQIImwoHovD2yN0r5/bhX5JwvPOp13a8oR2C4hLjqVkY6Lftwm8V5l2JnD54npj
         LXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695701339; x=1696306139;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AoZiI5SO17ubd1oOvFMf1ZA9F2LsdL2SWCvTYt7WUmQ=;
        b=UirWkbqWyB8nACnZ2AydUZrGaqVFJUOYiuCGLoDKiRBJi+k4ivGP7UD7N5Hg12ZkeT
         0s64yTzPCY88FHLfGNkP5z/CWAmJ5f7FQ8loGJ2LOfJtXmnSzfmbGruGAIXQyB22D+/g
         E04wq2FGZ+7SAilWQSETu9HUInjUGo62o6nx1VRWMyj5mv7Ca6C4hW76ShiMOA3R/yes
         KwzxgXYQtD+ghwhCa6OXhECI+tdWgfQldgyy09TtAOoo+T/Lnt9cG6cvu37RifP/n4QL
         KP2AEOSdnTJ79t6sTyNzUUTL3R1WqJCwuaIGPbveeakeHDRZqCGwLcC05EaEp6nUlAlr
         oD1w==
X-Gm-Message-State: AOJu0Yz6lvMDRlsrct4j4XjYTWA5JuZ4v5JcOT3Wge7a8Urd9WwuBlXk
	tOMlxfCVLuw5VS8apPVLE54Tia440NxBUsNs31g=
X-Google-Smtp-Source: AGHT+IG68JrCB7eT/tBa1aXemudDyHqF6yOLm+t0N1hEgzSk2RORYu8p3ntVILy2BvNDnZbfJOWVlEio9VCCLcf7EMY=
X-Received: by 2002:a05:6902:4c8:b0:d89:4714:4451 with SMTP id
 v8-20020a05690204c800b00d8947144451mr2259742ybs.60.1695701338737; Mon, 25 Sep
 2023 21:08:58 -0700 (PDT)
MIME-Version: 1.0
References: <178854037E523C2D.16687@lists.yoctoproject.org>
In-Reply-To: <178854037E523C2D.16687@lists.yoctoproject.org>
From: Anthony Davies <anthony.t.davies@gmail.com>
Date: Tue, 26 Sep 2023 14:08:47 +1000
Message-ID: <CAL5F+o+YfMtNq+FnQ_bDmCP4C05G_=uZvMMrf5aPB5=XGjHEjQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
To: anthony.t.davies@gmail.com
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com
Content-Type: multipart/alternative; boundary="000000000000f0d29906063b3b72"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 04:09:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61113

--000000000000f0d29906063b3b72
Content-Type: text/plain; charset="UTF-8"

So sorry, this is the wrong branch, I will send a new one.

On Tue, 26 Sept 2023 at 13:07, Anthony Davies via lists.yoctoproject.org
<anthony.t.davies=gmail.com@lists.yoctoproject.org> wrote:

> From: Anthony Davies <anthony.t.davies@gmail.com>
>
> Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
>
> Fixed bug where dtb couldnt be found when generating KERNEL_IMAGETYPE
> other then fitImage image due to KERNEL_DEVICETREE containing the dtb
> directory which is not available in the DEPLOY_DIR_IMAGE directory
> ---
>  conf/machine/include/px30.inc              | 2 +-
>  conf/machine/include/rk3066.inc            | 2 +-
>  conf/machine/include/rk3188.inc            | 2 +-
>  conf/machine/include/rk3288.inc            | 2 +-
>  conf/machine/include/rk3328.inc            | 2 +-
>  conf/machine/include/rk3399.inc            | 2 +-
>  conf/machine/include/rockchip-defaults.inc | 2 +-
>  conf/machine/include/rockchip-wic.inc      | 6 +++++-
>  8 files changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
> index a3727fb..badcbcd 100644
> --- a/conf/machine/include/px30.inc
> +++ b/conf/machine/include/px30.inc
> @@ -12,7 +12,7 @@ require conf/machine/include/rockchip-wic.inc
>
>  KBUILD_DEFCONFIG ?= "defconfig"
>  KERNEL_CLASSES = "kernel-fitimage"
> -KERNEL_IMAGETYPE = "fitImage"
> +KERNEL_IMAGETYPE ?= "fitImage"
>
>  TFA_PLATFORM = "px30"
>  TFA_BUILD_TARGET = "bl31"
> diff --git a/conf/machine/include/rk3066.inc
> b/conf/machine/include/rk3066.inc
> index fa97906..3510df2 100644
> --- a/conf/machine/include/rk3066.inc
> +++ b/conf/machine/include/rk3066.inc
> @@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyS2"
>
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>  KERNEL_FEATURES:append:rk3066 = "
> bsp/rockchip/remove-non-rockchip-arch-arm.scc"
> -KERNEL_IMAGETYPE = "zImage"
> +KERNEL_IMAGETYPE ?= "zImage"
> diff --git a/conf/machine/include/rk3188.inc
> b/conf/machine/include/rk3188.inc
> index bc96a0c..830f908 100644
> --- a/conf/machine/include/rk3188.inc
> +++ b/conf/machine/include/rk3188.inc
> @@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyFIQ0"
>
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>  KERNEL_FEATURES:append:rk3188 = "
> bsp/rockchip/remove-non-rockchip-arch-arm.scc"
> -KERNEL_IMAGETYPE = "zImage"
> +KERNEL_IMAGETYPE ?= "zImage"
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index b4c559d..e682c0b 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -11,6 +11,6 @@ SERIAL_CONSOLES = "115200;ttyS2"
>
>  KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
>  KERNEL_FEATURES:append:rk3288 = "
> bsp/rockchip/remove-non-rockchip-arch-arm.scc"
> -KERNEL_IMAGETYPE = "zImage"
> +KERNEL_IMAGETYPE ?= "zImage"
>
>  UBOOT_SUFFIX ?= "bin"
> diff --git a/conf/machine/include/rk3328.inc
> b/conf/machine/include/rk3328.inc
> index f9f8792..6be777c 100644
> --- a/conf/machine/include/rk3328.inc
> +++ b/conf/machine/include/rk3328.inc
> @@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
>  KBUILD_DEFCONFIG ?= "defconfig"
>  KERNEL_FEATURES:append:rk3328 = "
> bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>  KERNEL_CLASSES = "kernel-fitimage"
> -KERNEL_IMAGETYPE = "fitImage"
> +KERNEL_IMAGETYPE ?= "fitImage"
>
>  TFA_PLATFORM = "rk3328"
>  TFA_BUILD_TARGET = "bl31"
> diff --git a/conf/machine/include/rk3399.inc
> b/conf/machine/include/rk3399.inc
> index 88c87af..5a3f439 100644
> --- a/conf/machine/include/rk3399.inc
> +++ b/conf/machine/include/rk3399.inc
> @@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
>  KBUILD_DEFCONFIG ?= "defconfig"
>  KERNEL_FEATURES:append:rk3399 = "
> bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>  KERNEL_CLASSES = "kernel-fitimage"
> -KERNEL_IMAGETYPE = "fitImage"
> +KERNEL_IMAGETYPE ?= "fitImage"
>
>  TFA_PLATFORM = "rk3399"
>  TFA_BUILD_TARGET = "bl31"
> diff --git a/conf/machine/include/rockchip-defaults.inc
> b/conf/machine/include/rockchip-defaults.inc
> index 3ce2e24..c5cf6c2 100644
> --- a/conf/machine/include/rockchip-defaults.inc
> +++ b/conf/machine/include/rockchip-defaults.inc
> @@ -1,7 +1,7 @@
>  # meta-rockchip default settings
>
>  # kernel
> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> +PREFERRED_PROVIDER_virtual/kernel ??= "linux-yocto"
>  KCONFIG_MODE ?= "alldefconfig"
>
>  # xserver
> diff --git a/conf/machine/include/rockchip-wic.inc
> b/conf/machine/include/rockchip-wic.inc
> index 635288c..23ac9d9 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -11,10 +11,14 @@ WKS_FILE_DEPENDS ?= " \
>         virtual/bootloader \
>         virtual/kernel \
>         "
> +
> +KERNEL_DEVICETREE_BASENAME =
> "${@os.path.basename('${KERNEL_DEVICETREE}')}"
> +
>  IMAGE_BOOT_FILES = " \
>         ${KERNEL_IMAGETYPE} \
> -       ${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '',
> '${KERNEL_DEVICETREE}', d)} \
> +       ${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '',
> '${KERNEL_DEVICETREE_BASENAME}', d)} \
>         "
> +IMAGE_EFI_BOOT_FILES += ${IMAGE_BOOT_FILES}
>
>  # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
>  # for the console parameter in the wks files
> --
> 2.34.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61112):
> https://lists.yoctoproject.org/g/yocto/message/61112
> Mute This Topic: https://lists.yoctoproject.org/mt/101589034/7328908
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> anthony.t.davies@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f0d29906063b3b72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So sorry, this is the wrong branch, I will send a new one.=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, 26 Sept 2023 at 13:07, Anthony Davies via <a href=3D"http://lists.y=
octoproject.org">lists.yoctoproject.org</a> &lt;anthony.t.davies=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">From: Anthony Davies &lt;<a href=3D"mailto:anthony.t.davies@gmail.com" ta=
rget=3D"_blank">anthony.t.davies@gmail.com</a>&gt;<br>
<br>
Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf<br>
<br>
Fixed bug where dtb couldnt be found when generating KERNEL_IMAGETYPE<br>
other then fitImage image due to KERNEL_DEVICETREE containing the dtb<br>
directory which is not available in the DEPLOY_DIR_IMAGE directory<br>
---<br>
=C2=A0conf/machine/include/px30.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | 2 +-<br>
=C2=A0conf/machine/include/rk3066.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 +-<br>
=C2=A0conf/machine/include/rk3188.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 +-<br>
=C2=A0conf/machine/include/rk3288.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 +-<br>
=C2=A0conf/machine/include/rk3328.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 +-<br>
=C2=A0conf/machine/include/rk3399.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 +-<br>
=C2=A0conf/machine/include/rockchip-defaults.inc | 2 +-<br>
=C2=A0conf/machine/include/rockchip-wic.inc=C2=A0 =C2=A0 =C2=A0 | 6 +++++-<=
br>
=C2=A08 files changed, 12 insertions(+), 8 deletions(-)<br>
<br>
diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc<=
br>
index a3727fb..badcbcd 100644<br>
--- a/conf/machine/include/px30.inc<br>
+++ b/conf/machine/include/px30.inc<br>
@@ -12,7 +12,7 @@ require conf/machine/include/rockchip-wic.inc<br>
<br>
=C2=A0KBUILD_DEFCONFIG ?=3D &quot;defconfig&quot;<br>
=C2=A0KERNEL_CLASSES =3D &quot;kernel-fitimage&quot;<br>
-KERNEL_IMAGETYPE =3D &quot;fitImage&quot;<br>
+KERNEL_IMAGETYPE ?=3D &quot;fitImage&quot;<br>
<br>
=C2=A0TFA_PLATFORM =3D &quot;px30&quot;<br>
=C2=A0TFA_BUILD_TARGET =3D &quot;bl31&quot;<br>
diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.=
inc<br>
index fa97906..3510df2 100644<br>
--- a/conf/machine/include/rk3066.inc<br>
+++ b/conf/machine/include/rk3066.inc<br>
@@ -11,4 +11,4 @@ SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
<br>
=C2=A0KBUILD_DEFCONFIG =3D &quot;multi_v7_defconfig&quot;<br>
=C2=A0KERNEL_FEATURES:append:rk3066 =3D &quot; bsp/rockchip/remove-non-rock=
chip-arch-arm.scc&quot;<br>
-KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
+KERNEL_IMAGETYPE ?=3D &quot;zImage&quot;<br>
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.=
inc<br>
index bc96a0c..830f908 100644<br>
--- a/conf/machine/include/rk3188.inc<br>
+++ b/conf/machine/include/rk3188.inc<br>
@@ -11,4 +11,4 @@ SERIAL_CONSOLES =3D &quot;115200;ttyFIQ0&quot;<br>
<br>
=C2=A0KBUILD_DEFCONFIG =3D &quot;multi_v7_defconfig&quot;<br>
=C2=A0KERNEL_FEATURES:append:rk3188 =3D &quot; bsp/rockchip/remove-non-rock=
chip-arch-arm.scc&quot;<br>
-KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
+KERNEL_IMAGETYPE ?=3D &quot;zImage&quot;<br>
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.=
inc<br>
index b4c559d..e682c0b 100644<br>
--- a/conf/machine/include/rk3288.inc<br>
+++ b/conf/machine/include/rk3288.inc<br>
@@ -11,6 +11,6 @@ SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
<br>
=C2=A0KBUILD_DEFCONFIG ?=3D &quot;multi_v7_defconfig&quot;<br>
=C2=A0KERNEL_FEATURES:append:rk3288 =3D &quot; bsp/rockchip/remove-non-rock=
chip-arch-arm.scc&quot;<br>
-KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
+KERNEL_IMAGETYPE ?=3D &quot;zImage&quot;<br>
<br>
=C2=A0UBOOT_SUFFIX ?=3D &quot;bin&quot;<br>
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.=
inc<br>
index f9f8792..6be777c 100644<br>
--- a/conf/machine/include/rk3328.inc<br>
+++ b/conf/machine/include/rk3328.inc<br>
@@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc<br>
=C2=A0KBUILD_DEFCONFIG ?=3D &quot;defconfig&quot;<br>
=C2=A0KERNEL_FEATURES:append:rk3328 =3D &quot; bsp/rockchip/remove-non-rock=
chip-arch-arm64.scc&quot;<br>
=C2=A0KERNEL_CLASSES =3D &quot;kernel-fitimage&quot;<br>
-KERNEL_IMAGETYPE =3D &quot;fitImage&quot;<br>
+KERNEL_IMAGETYPE ?=3D &quot;fitImage&quot;<br>
<br>
=C2=A0TFA_PLATFORM =3D &quot;rk3328&quot;<br>
=C2=A0TFA_BUILD_TARGET =3D &quot;bl31&quot;<br>
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.=
inc<br>
index 88c87af..5a3f439 100644<br>
--- a/conf/machine/include/rk3399.inc<br>
+++ b/conf/machine/include/rk3399.inc<br>
@@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc<br>
=C2=A0KBUILD_DEFCONFIG ?=3D &quot;defconfig&quot;<br>
=C2=A0KERNEL_FEATURES:append:rk3399 =3D &quot; bsp/rockchip/remove-non-rock=
chip-arch-arm64.scc&quot;<br>
=C2=A0KERNEL_CLASSES =3D &quot;kernel-fitimage&quot;<br>
-KERNEL_IMAGETYPE =3D &quot;fitImage&quot;<br>
+KERNEL_IMAGETYPE ?=3D &quot;fitImage&quot;<br>
<br>
=C2=A0TFA_PLATFORM =3D &quot;rk3399&quot;<br>
=C2=A0TFA_BUILD_TARGET =3D &quot;bl31&quot;<br>
diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/incl=
ude/rockchip-defaults.inc<br>
index 3ce2e24..c5cf6c2 100644<br>
--- a/conf/machine/include/rockchip-defaults.inc<br>
+++ b/conf/machine/include/rockchip-defaults.inc<br>
@@ -1,7 +1,7 @@<br>
=C2=A0# meta-rockchip default settings<br>
<br>
=C2=A0# kernel<br>
-PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yocto&quot;<br>
+PREFERRED_PROVIDER_virtual/kernel ??=3D &quot;linux-yocto&quot;<br>
=C2=A0KCONFIG_MODE ?=3D &quot;alldefconfig&quot;<br>
<br>
=C2=A0# xserver<br>
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/r=
ockchip-wic.inc<br>
index 635288c..23ac9d9 100644<br>
--- a/conf/machine/include/rockchip-wic.inc<br>
+++ b/conf/machine/include/rockchip-wic.inc<br>
@@ -11,10 +11,14 @@ WKS_FILE_DEPENDS ?=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 virtual/bootloader \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 virtual/kernel \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
+ <br>
+KERNEL_DEVICETREE_BASENAME =3D &quot;${@os.path.basename(&#39;${KERNEL_DEV=
ICETREE}&#39;)}&quot;<br>
+<br>
=C2=A0IMAGE_BOOT_FILES =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${KERNEL_IMAGETYPE} \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&#39;KERNEL_IMAGETYPE&#39;=
, &#39;fitImage&#39;, &#39;&#39;, &#39;${KERNEL_DEVICETREE}&#39;, d)} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&#39;KERNEL_IMAGETYPE&#39;=
, &#39;fitImage&#39;, &#39;&#39;, &#39;${KERNEL_DEVICETREE_BASENAME}&#39;, =
d)} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
+IMAGE_EFI_BOOT_FILES +=3D ${IMAGE_BOOT_FILES}<br>
<br>
=C2=A0# use the first-defined &lt;baud&gt;;&lt;device&gt; pair in SERIAL_CO=
NSOLES<br>
=C2=A0# for the console parameter in the wks files<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61112): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61112" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61112</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101589034/732=
8908" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101589034/7328908</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:anthony.t.davies@gmail.com" target=3D"_blank">an=
thony.t.davies@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000f0d29906063b3b72--

