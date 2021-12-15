Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2392C433EF
	for <webhook@archiver.kernel.org>; Thu, 16 Dec 2021 01:43:33 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web08.412.1639585208599556600
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 08:20:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UPKUD6i8;
 spf=pass (domain: gmail.com, ip: 209.85.222.176,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id m186so20524878qkb.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 08:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=876fFCZ6pUrr5J7CycMTreoHJ2MO3kduklPTSOGsi20=;
        b=UPKUD6i8KLYmaBjUAeNYGFwFFg4v+8N9oVzhVHG/doHm0+W1RZkO8d/Uz6OBleqcBa
         wIQVL9iOSSgjOXUUDWp1RbzkkvhYUV0K9Lp9KOPt6UD4p8BBipfGJ0Kbd6uyS59WNFYO
         XLQpEN1X6zOO8UxKdpZVzP1XdVUBax/oyL9c/anHd+Lgp1qFCIQ2cZoCHRxgJ3Sc0alg
         f6mEYhJk9VnHClu3GzONBmazClzhWls8rlW1B0NJhzNQumVS2AFzZU3qDPX/BcscwS5I
         cdMgvXvgXcNb7YadrLDefNaScSqOYMHhr++Bn1NiSpOOMGur15wIlxUOpwg3hkpog0sN
         sj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=876fFCZ6pUrr5J7CycMTreoHJ2MO3kduklPTSOGsi20=;
        b=TYm0nKbgKxW3OoG6W5/Kol6FvlAOZltyQxtcm+dUBSyennBobIqfzyKAQuVZFicNHt
         TNI2/hg+zWlDvxyPaHivFUzGfyJdioC2AmNQJ3iS8L8U+24L+Z0xlMKtOS+wRyIIV8ic
         1u7oDobRyC9pMuCIryg4WuQXmIqvBsSYNO5iII5q5HTFmRnPmMmpp0Oime8Ys28XwVtk
         AqUisnSv/KQ0Q62UEW8VqDjtfrZKuMGeeDIBeyzB1+5jOERaw/fWbjduJ+EFvBScBwbW
         lb7blOBdrhxX0EeS4/sIW7MCdjld/q5pTjGlPJzvbJ4KjfQBIdI99tq2Me2zUv7t2Ef+
         W9wA==
X-Gm-Message-State: AOAM5308HfWBi0NFWIyUVBbUN3dJOanP+39SQW9lA9pEc9KZ3pk8ZxTJ
	6IqHr+iHm7VhjS9G9sAQCEdaGsCKZzDrpM2mUmI=
X-Google-Smtp-Source: 
 ABdhPJwmYRlW2lea4htNykpz0lvPFFHKYfQ5M9B4VSEAGctt3SMjgy6+D7/Z5YBwKRp2GQXuiyqfghG7ho8a4VAMw0c=
X-Received: by 2002:a37:9d8b:: with SMTP id
 g133mr9010513qke.180.1639585207586;
 Wed, 15 Dec 2021 08:20:07 -0800 (PST)
MIME-Version: 1.0
References: <20211214095751.2290665-1-quentin.schulz@theobroma-systems.com>
 <CAMKF1sr-DKvszCUARpAS4UXmN7HseOCifRvMDNreNTFU8nbCOg@mail.gmail.com>
 <20211215152047.pz33f2kiuldihjqn@fedora>
In-Reply-To: <20211215152047.pz33f2kiuldihjqn@fedora>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Dec 2021 08:19:40 -0800
Message-ID: 
 <CAMKF1sq=0ohL-=FEenbrA15tSsEpvm+EePHeXvjSicpZ75=ZkA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH v2] trusted-firmware-a: replace
 baudrate with the one specified in machine conf
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Trevor Woerner <twoerner@gmail.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Dec 2021 01:43:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55593

On Wed, Dec 15, 2021 at 7:20 AM Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
>
> Hi Khem,
>
> On Tue, Dec 14, 2021 at 10:11:54AM -0800, Khem Raj wrote:
> > On Tue, Dec 14, 2021 at 3:39 AM Quentin Schulz
> > <quentin.schulz@theobroma-systems.com> wrote:
> > >
> > > Not all Rockchip boards have their console running at 1500000 baud in
> > > U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
> > > SoM+Carrierboard.
> > >
> > > In order to prepare for the addition of puma-haikou to meta-rockchip,
> > > let's replace the baudrate in TF-A by the one defined in the machine
> > > conf file in the RK_CONSOLE_BAUD variable.
> > >
> > > Cc: Quentin Schulz <foss+yocto@0leil.net>
> > > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > ---
> > >
> > > v2: use a less restrictive regular expression
> > >
> > >  .../files/serial-console-baudrate.patch       | 36 -----------------=
--
> > >  .../trusted-firmware-a_%.bbappend             |  6 +++-
> > >  2 files changed, 5 insertions(+), 37 deletions(-)
> > >  delete mode 100644 recipes-bsp/trusted-firmware-a/files/serial-conso=
le-baudrate.patch
> > >
> > > diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baud=
rate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.p=
atch
> > > deleted file mode 100644
> > > index 2d6e9bf..0000000
> > > --- a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.pa=
tch
> > > +++ /dev/null
> > > @@ -1,36 +0,0 @@
> > > -From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 20=
01
> > > -From: Yann Dirson <yann@blade-group.com>
> > > -Date: Tue, 6 Apr 2021 17:28:45 +0200
> > > -Subject: [PATCH] Set serial console baudrate back to 1500000.
> > > -Upstream-Status: Inappropriate[other]
> > > -
> > > -TF-A runs between two u-boot stages which both uses 1500000 baud, it
> > > -just makes no sense to use the same UART at a different rate.
> > > -
> > > -This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8f=
bce62.
> > > -Main reason for that change stated in https://urldefense.proofpoint.=
com/v2/url?u=3Dhttps-3A__developer.trustedfirmware.org_T762&d=3DDwIBaQ&c=3D=
_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZgu=
QhZhkI_-172IIy1t&m=3DMGuJiAJcTH-5vXWFahwY8w58v88VHX-B3gl_Qbo3NSRaMXS1EfPbxR=
WECgCDt3wO&s=3DP_BZb0-FTKKpmyBRgwgtL7OgfLI_iSC_nn_FBSQXE8o&e=3D
> > > -is ChromeOS compatibility.
> > > -
> > > -Looks like this patch may become unnecessary in the future, when
> > > -u-boot and TF-A get to communicate this value.
> > > -
> > > ----
> > > - plat/rockchip/rk3399/rk3399_def.h | 2 +-
> > > - 1 file changed, 1 insertion(+), 1 deletion(-)
> > > -
> > > -diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk339=
9/rk3399_def.h
> > > -index ba83242eb..8d6ecfbe6 100644
> > > ---- a/plat/rockchip/rk3399/rk3399_def.h
> > > -+++ b/plat/rockchip/rk3399/rk3399_def.h
> > > -@@ -17,7 +17,7 @@
> > > - /******************************************************************=
********
> > > -  * UART related constants
> > > -  ******************************************************************=
********/
> > > --#define RK3399_BAUDRATE                       115200
> > > -+#define RK3399_BAUDRATE                       1500000
> > > - #define RK3399_UART_CLOCK             24000000
> > > -
> > > - /******************************************************************=
************
> > > ---
> > > -2.30.2
> > > -
> > > diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbap=
pend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > index 513cea1..07fae1e 100644
> > > --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > @@ -7,7 +7,6 @@ COMPATIBLE_MACHINE:append:rk3328 =3D "|rk3328"
> > >
> > >  FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
> > >  SRC_URI +=3D "\
> > > -    file://serial-console-baudrate.patch \
> > >      file://0001-dram-Fix-build-with-gcc-11.patch \
> > >      file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.pa=
tch \
> > >      file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.pa=
tch \
> > > @@ -19,3 +18,8 @@ SRC_URI +=3D "\
> > >  # this needs fixing until then use gcc
> > >  TOOLCHAIN:rk3399 =3D "gcc"
> > >
> > > +fixup_rk3399_baudrate() {
> > > +       sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRA=
TE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> > > +}
> > > +
> > > +do_patch[postfuncs] +=3D "fixup_rk3399_baudrate"
> >
> > perhaps applying the sed expression via do_configure:prepend() is simpl=
e ?
> > and maybe make it rk3399 specific with do_configure:prepend:rk3399
> >
>
> It is effectively patching the sources, and I'd personally expect
> sources to not be changed after running -c do_patch for a recipe.
>
> That being said, I can have a:
>
> fixup_baudrate() {
>         :
> }
>
> fixup_baudrate:rk3399() {
>         sed ....
> }
>
> do_patch[postfuncs] +=3D "fixup_baudrate"
>
> if you prefer. I have not tested but I assume this should work?

sounds good.

>
> Cheers,
> Quentin

