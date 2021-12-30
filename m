Return-Path: <davis.roman84@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C13C433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Dec 2021 00:40:51 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web08.59283.1640824850812410407
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 16:40:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YLy19Ldf;
 spf=pass (domain: gmail.com, ip: 209.85.219.171,
 mailfrom: davis.roman84@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id p15so17212451ybk.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 16:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xWrrTuazP/kcZu0wd5TYHn7jS5UXSeoJxUnVbr5oWk0=;
        b=YLy19LdfkhaMMpsRzlS53ZZ+7ZpPUpkrvsg1YrvZFiIxsUGjYpoSVA5v7OcxLnaume
         DQ194WMn1DxUr5tFAdYWfe6dEPlRzxGdt2gHcTNfXCo+V3ABU5bP4ysnKZncMvDjmvbA
         zyNbVx0UapM8mw4/fKNHcIfquOR4G0jGK+52mKSAt777TI/6pYKWTGhBY4jfEfdN1vFE
         vWlDlRN7bh+WdVbEmePWZPKIjt4H2EqScGjkDdlEFjJSMGSZMCQWGuQisnYOP+ad2UJs
         D6cOoTx0QeV9/1dTVPCq/YRRYMm+Rf/0RNtmxDFB7nA+XycSX6NfAWG7mpR4v9SK6CSM
         cDBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xWrrTuazP/kcZu0wd5TYHn7jS5UXSeoJxUnVbr5oWk0=;
        b=nLWZZasxXdJUUAfGZZaKIGBcERTPlSZArCJaRQ47zva/ywRhYfUKpjvVOiZ/fOSWlm
         NE8Bdao7Gcuvmo4lPg5hH6OfQRJZCczVrzF9SqxyjTWHtd2qL5HbWndSPxmxMID55nw4
         QbLsd8SM2kIZIHNUH2GRUlOPtzkfvxrk62iJ78YMt89/btMwCpkfghz0uWr1Hz4hu2Tc
         Yy6CfKmtTbZZtcYDBvPN9fHb8yXVDd5p4l0EgvSP5uUBUMnqrIkd9yNSDNyWJLyaYAFi
         jTWsU2n1LSeFWSNY8/lePT7eMrrkxxSKjM+RHs7xlv9gwc9CQLHAlxmTHmFb0d04/HBU
         sBpg==
X-Gm-Message-State: AOAM5330k91FbopqmxFQIwgszIh+48Tn6SkZD/XX7NwPI+q1Pg0uGJuG
	SYk5jakJ6wFWA1Od4BDJC7dZmKopLMg9D76dLLY=
X-Google-Smtp-Source: 
 ABdhPJyc2us+uiIegpHwGB2Yyp6RbgMx/i/t5SOAF91gs2HJf4G6wDOBrVTJBzznMxerf0kZdschVsfw2VsFdbQ2xxg=
X-Received: by 2002:a25:6d06:: with SMTP id i6mr5988917ybc.444.1640824849882;
 Wed, 29 Dec 2021 16:40:49 -0800 (PST)
MIME-Version: 1.0
References: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
 <ba8ff6fe-f017-38e9-e211-b91654de8d4c@gmail.com>
 <CACfi_Z36+pYBU-jUKxa1qAQaVZDPi1NXwiubovv-+XM0onFVLg@mail.gmail.com>
 <A98BAD8D-4355-424F-9949-1094B0C64A7A@iki.fi>
 <CACfi_Z3aRtoxr+7GdGw4C2e9JouwXH-ckAbqY7HKJC+0GFrniQ@mail.gmail.com>
 <CAMKF1srJf66rX78pS0diXF7tGMZ=63OhuOSMqnerULu=3cEo+A@mail.gmail.com>
 <CACfi_Z0WVsnoJ+s_dHnTDxoykOZoPtorf_QUJzb6muj3ph=2vA@mail.gmail.com>
In-Reply-To: 
 <CACfi_Z0WVsnoJ+s_dHnTDxoykOZoPtorf_QUJzb6muj3ph=2vA@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 29 Dec 2021 19:40:36 -0500
Message-ID: 
 <CACfi_Z2Nz2UTD-EztnVQQY2LKpDHNJ5oe9TK=Vzho+XGvX-g=Q@mail.gmail.com>
Subject: Re: [yocto] building image for Realtek RTS3916N mips SoC using vendor
 provided prebuilt external uClibc toolchain
To: Khem Raj <raj.khem@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 song li <ghosty.lee.1984@gmail.com>,
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Dec 2021 00:40:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55692

On Wed, Dec 29, 2021 at 6:15 PM Davis Roman <davis.roman84@gmail.com> wrote=
:
>
> On Wed, Dec 29, 2021 at 5:30 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> >
> >
> > On Wed, Dec 29, 2021 at 2:20 PM Davis Roman <davis.roman84@gmail.com> w=
rote:
> >>
> >> On Wed, Dec 29, 2021 at 2:21 PM Anders Montonen <Anders.Montonen@iki.f=
i> wrote:
> >> >
> >> > Hi,
> >> >
> >> > > On 29 Dec 2021, at 9:53, davis roman <davis.roman84@gmail.com> wro=
te:
> >> > >
> >> > > I generated an internal mips toolchain built against musl and I tr=
ied
> >> > > to compile u-boot but unfortunately, I'm getting "opcode not
> >> > > supported" error messages. https://pastebin.com/QdcLxy69
> >> > > If instead I use the realtek provided prebuilt toolchain then u-bo=
ot
> >> > > compiles successfully. https://pastebin.com/zcQ5kc20
> >> > >
> >> > > I'm thinking that Realtek's toolchain has patches specific to thei=
r
> >> > > SoC that have not been pushed upstream. Could this be the reason I=
'm
> >> > > unable to compile uboot?
> >> >
> >> > I=E2=80=99m guessing that your U-Boot config doesn=E2=80=99t set the=
 correct MIPS architecture revision. The compiler error shows that you=E2=
=80=99re trying to assemble a MIPS32r1 instruction, but the compiler is tar=
geting the original MIPS1 architecture. The Realtek toolchain may have set =
the default architecture to match the SoC, but the fix is to update the con=
fig to match the hardware.
> >>
> >> You're right. I didn't realize the RX5281 core on the RTS3916N only
> >> supports mips1 or mips16 (https://pasteboard.co/IpsqN6GkBYAs.png).
> >>
> >> I happened to have a mips sourcery toolchain installed on my machine
> >> (https://sourcery.sw.siemens.com/GNUToolchain/package12797/public/mips=
-linux-gnu/mips-2014.05-27-mips-linux-gnu-i686-pc-linux-gnu.tar.bz2)
> >> so I pointed that to u-boot without modifying anything else and it was
> >> able to compile u-boot successfully. Woot!
> >> https://pastebin.com/ySPFae5u
> >>
> >> I suppose the next step would be to generate a mips1 yocto toolchain
> >> however according to the available tune values it appears only mips32
> >> or mips64 is available
> >>
> >> Any suggestions on how to generate a mips1 yocto toolchain or if
> >> that's even supported?
> >
> >
> > Yes it=E2=80=99s supported although it=E2=80=99s not default for qemumi=
ps so the simple trick you can do is change the DEFAULTTUNE setting in the =
qemumips.conf away from mips32r2
>
> Sorry Khem, I'm not quite following you. I tried the following patch
> (https://pastebin.com/rkmQ3t6P) thinking perhaps this is what you
> meant however my build configuration still shows the tune set to
> mips32r2 https://pastebin.com/izP9thVW
>
> What am I missing?
>

Nevermind, I scraped the last patch, recreated my BUILD_DIR, set
MACHINE =3D "qemumips" and added DEFAULTTUNE =3D "mips" in my local.conf.
Now the build configuration correct https://pastebin.com/pkkRVL58 and
I'm now waiting for the toolchain to finish so I can attempt to build
realtek's u-boot.

> >>
> >>
> >>
> >> >
> >> > Regards,
> >> > Anders Montonen

