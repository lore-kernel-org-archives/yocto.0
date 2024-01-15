Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89651C4707C
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 19:10:03 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web10.92272.1705345798561298538
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 11:09:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GLxv5awI;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-206ebe78593so1257144fac.3
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 11:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705345798; x=1705950598; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwTRgnBaC83Lo1J4zV/lmhad9KzasieUZNown0SlijM=;
        b=GLxv5awIfpoBI6RkgfnUjdlETsWdtLsBao2sSdN7ikp7sYh5A69GuTuj5AgwpT9Qhz
         aUxWXnYvf9NBvn/pnRdfH6HBp4ErlCrQR7Z1qYrQvNLJi++HXtSCcnw3OdiSd9u5vtnH
         1/WppIk8Y6a6yFaQl9bbECMJn47psJ2eQlkHRWw+PAO2GCBB/Q9qHZhDRxojKq5ZSEbm
         vg0Ji0YY2+FTogP8Fqytwhl79GbmNCxbJd2KV65gd8R34N8GS25mwbb24kuslsyJiT62
         ozz2QoGLFGNC1yFhSmzXDhnVNXggoenkUjdtM1aectfgp9OTbO+5rsIBZZLYNjYrBOOK
         A5EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705345798; x=1705950598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SwTRgnBaC83Lo1J4zV/lmhad9KzasieUZNown0SlijM=;
        b=NBxxw1X4eMLC55Tz3VpLaI3li9NOcOWFwjdO0DJle01gAs2UxFzMh5SqimTVbf5Al6
         VCG84ixLtHo3ys6c3deVnguJsyW2U8BKxV2OY6X01hVQqjAb1+Q6lAYRiu/DUBUM+Ut2
         24U0K22YizCvtl3Ow0rhXJP1QDj1W2LHfxBXREsLmg0OETvwqQqECr5opP0D60m4e7Tf
         kTVtowfjD4fMKielr0gYdfqeD8tsFVe1bh9MjlfmQbAFWWNyfbuJ6TiPRpuoigRRqKGU
         qx2zvQnPP4xUHqYH6d0IaKAiO7y3oSmJK9MNmh6zwNF6+a6O5vrW7Yj457laMjzRFDUI
         5aNA==
X-Gm-Message-State: AOJu0YyGTu+zG9LBJ/oGY9pMgkyhvar/uieAr5lJ+FHS7yTnQN7zwG2k
	7M2yYq6/0b07kZAwcJCcAk9NQhM+TIhItyobwvkOIdkzfDU=
X-Google-Smtp-Source: AGHT+IGFnIqA10NbaFRrfr9CWsutrSFXSRDFQiXRiR2ci3gv+CIN04qWEwHQcQNOlKMmDQktLvmPuK3M0fthcWvhHbE=
X-Received: by 2002:a05:6870:d38c:b0:1fb:75a:c44a with SMTP id
 k12-20020a056870d38c00b001fb075ac44amr5435540oag.115.1705345797671; Mon, 15
 Jan 2024 11:09:57 -0800 (PST)
MIME-Version: 1.0
References: <20240114144618.30935-1-twoerner@gmail.com> <15AE7EB5-F317-4193-AF3B-24DDA9F4BE98@0leil.net>
In-Reply-To: <15AE7EB5-F317-4193-AF3B-24DDA9F4BE98@0leil.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 15 Jan 2024 11:09:31 -0800
Message-ID: <CAMKF1soAb=e=Vh916iZ8Ts5N97z==E7xTvWGfJpqc4YqwaWgEA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] remove adding all kernel modules
 by default
To: yocto@lists.yoctoproject.org, foss@0leil.net
Cc: twoerner@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 19:10:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62160

On Mon, Jan 15, 2024 at 4:57=E2=80=AFAM Quentin Schulz <foss@0leil.net> wro=
te:
>
> Hi Trevor,
>
> On January 14, 2024 3:46:18 PM GMT+01:00, Trevor Woerner <twoerner@gmail.=
com> wrote:
> >A BSP layer shouldn't be deciding to include all kernel modules. That's =
more
> >of a distro decision, or for local.conf at a minimum. Modules that are
> >required for the basic functioning of a board are fine, but doing a blan=
ket
> >"install all" is overreach and inflates images unnecessarily (~45MB, by =
one
> >measurement).
> >
>
> It's only a RRECOMMENDS, so I'd say this is fine as is? This allows to ha=
ve a working system without spending too much time figuring out what's exac=
tly needed. If someone needs to have a smaller image, they can then play wi=
th kernel defconfig or kernel-modules- in packages to install.
>

Yeah on one thought, BSP users may not be well versed in OE speak and
this adds to their bad starting experience but it also has a bad
effect where the images are bloated. So IMO if it is well documented
how to enable/disable it easily could be useful. I don't have strong
leanings
on which way you want to go w.r.t defaults.

> Up to you though :)
>
> Cheers,
> Quentin
>
> >I expect patches will probably roll in after this one to add back necess=
ary
> >modules, but it will be easier to figure out which ones when starting wi=
th
> >having none of them included by default.
> >
> >Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >---
> > conf/machine/include/rock-pi-4.inc | 2 --
> > conf/machine/nanopi-m4b.conf       | 2 --
> > conf/machine/nanopi-r2s.conf       | 1 -
> > conf/machine/nanopi-r4s.conf       | 2 --
> > conf/machine/rock-5a.conf          | 1 -
> > conf/machine/rock-5b.conf          | 1 -
> > conf/machine/rock-pi-e.conf        | 1 -
> > conf/machine/rock-pi-s.conf        | 1 -
> > 8 files changed, 11 deletions(-)
> >
> >diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/r=
ock-pi-4.inc
> >index 0a868463bc64..02dfb18fc775 100644
> >--- a/conf/machine/include/rock-pi-4.inc
> >+++ b/conf/machine/include/rock-pi-4.inc
> >@@ -2,5 +2,3 @@
> > MACHINEOVERRIDES =3D. "rock-pi-4:"
> >
> > require conf/machine/include/rk3399.inc
> >-
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf
> >index 35cd8f68e82e..b924b0018867 100644
> >--- a/conf/machine/nanopi-m4b.conf
> >+++ b/conf/machine/nanopi-m4b.conf
> >@@ -5,7 +5,5 @@
> >
> > require conf/machine/include/rk3399.inc
> >
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >-
> > KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4b.dtb"
> > UBOOT_MACHINE =3D "nanopi-m4b-rk3399_defconfig"
> >diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
> >index 4472c21f0217..0451002ecff5 100644
> >--- a/conf/machine/nanopi-r2s.conf
> >+++ b/conf/machine/nanopi-r2s.conf
> >@@ -6,6 +6,5 @@
> > require conf/machine/include/rk3328.inc
> >
> > KERNEL_DEVICETREE =3D "rockchip/rk3328-nanopi-r2s.dtb"
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >
> > UBOOT_MACHINE =3D "nanopi-r2s-rk3328_defconfig"
> >diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
> >index 21be4400c89d..161f4b4e4609 100644
> >--- a/conf/machine/nanopi-r4s.conf
> >+++ b/conf/machine/nanopi-r4s.conf
> >@@ -5,7 +5,5 @@
> >
> > require conf/machine/include/rk3399.inc
> >
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >-
> > KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-r4s.dtb"
> > UBOOT_MACHINE =3D "nanopi-r4s-rk3399_defconfig"
> >diff --git a/conf/machine/rock-5a.conf b/conf/machine/rock-5a.conf
> >index 5ace4dac8fe4..28e06486eda3 100644
> >--- a/conf/machine/rock-5a.conf
> >+++ b/conf/machine/rock-5a.conf
> >@@ -7,6 +7,5 @@ require conf/machine/include/rk3588s.inc
> >
> > PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
> > KERNEL_DEVICETREE =3D "rockchip/rk3588s-rock-5a.dtb"
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >
> > UBOOT_MACHINE =3D "rock5a-rk3588s_defconfig"
> >diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
> >index d1371084becc..ea2cf219e153 100644
> >--- a/conf/machine/rock-5b.conf
> >+++ b/conf/machine/rock-5b.conf
> >@@ -7,6 +7,5 @@ require conf/machine/include/rk3588.inc
> >
> > PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
> > KERNEL_DEVICETREE =3D "rockchip/rk3588-rock-5b.dtb"
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >
> > UBOOT_MACHINE =3D "rock5b-rk3588_defconfig"
> >diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
> >index 517956c4b9db..1e2169b01993 100644
> >--- a/conf/machine/rock-pi-e.conf
> >+++ b/conf/machine/rock-pi-e.conf
> >@@ -6,6 +6,5 @@
> > require conf/machine/include/rk3328.inc
> >
> > KERNEL_DEVICETREE =3D "rockchip/rk3328-rock-pi-e.dtb"
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >
> > UBOOT_MACHINE =3D "rock-pi-e-rk3328_defconfig"
> >diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
> >index 79ea73c6b47e..3aa868b7ec7c 100644
> >--- a/conf/machine/rock-pi-s.conf
> >+++ b/conf/machine/rock-pi-s.conf
> >@@ -6,6 +6,5 @@
> > require conf/machine/include/rk3308.inc
> >
> > KERNEL_DEVICETREE =3D "rockchip/rk3308-rock-pi-s.dtb"
> >-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> >
> > UBOOT_MACHINE =3D "rock-pi-s-rk3308_defconfig"
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62145): https://lists.yoctoproject.org/g/yocto/messag=
e/62145
> Mute This Topic: https://lists.yoctoproject.org/mt/103719387/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

