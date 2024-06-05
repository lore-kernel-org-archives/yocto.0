Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB341C25B76
	for <webhook@archiver.kernel.org>; Wed,  5 Jun 2024 10:40:16 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.11133.1717580669888011971
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jun 2024 02:44:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=A3L3SCnY;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2c210d3dc6cso1590038a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 02:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717580669; x=1718185469; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYeyAJaYAFvjQClIlH1kplAld5Y5/CZHHo+jQS7KowA=;
        b=A3L3SCnY+6hSRdtl4+3jUO/H7ppDG8zDJYXsc6kwSf0UQP9y0xRuG1GLt3aENXKd+I
         2YqKpXbMwc17iPwUU7/my56aqel5TkgNzd+kZZolAADbyBIfhgmfpxPXccPX4MiS60FH
         TliSYWP/8gzy64QN7ikq89Po0u1OVnChxKzDR0e7KsbfsNkSuk35GwIpmIxomtfWHBXQ
         yzjKndhH0t8xE7j1XBZeFZIuNzWjwVABgc4+zojtreTcd70+45b5od1hn6rGNPo8X4Os
         QUkybM4Us1InAcj8sxuVOzJcdHncTAK6jqMDLL1sDsIDa9sbFjOGHYtUwIPSPBcSYQLU
         ii3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717580669; x=1718185469;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SYeyAJaYAFvjQClIlH1kplAld5Y5/CZHHo+jQS7KowA=;
        b=t7J2saGG/ebl0clZSZpbCxMz4qrk0uteQuqVpInnWQRw7EhiMoqcfO7XcN7LZYOKTm
         GaQbuWi6I8XFzJ9fik2apJ9YBsXXPBNMU3StWaahmZRPucJ3qI7KH5hKaSV7H5i5a85X
         80g8OkLewEwsm8WHT/1T7CDnq616rkqFLMb+XNgwCH/AXDetMD7knsYYwGR0e4JOTrvO
         XL0eCtMZNQRSqIH1mAdcxCrqv18TUvtr9C6rPOYLa1PkM5eILYA9jvWvd6tIHQFQkIou
         AnYOVbWr+lKbBz1LDO6K9nejhqONhDezP0zTxum4yYVertXOI5+sP/IvF0bqfhYDH5x9
         VHrA==
X-Gm-Message-State: AOJu0YzE4SqRUfdnxadRA4zkQgcDdDtK0NtaiCAo27KYj+YH9oOLxyN4
	htOYHvywUS5miVcE/DKPB8aFIWrj1JGixM1HcxaHljNOQQxg3Yp6ghtTay08ZirSBV2MLletlsm
	m1GBRd5aVQqZCGm1PTfQTHHTxFOmoA2N0J0Q=
X-Google-Smtp-Source: AGHT+IG/9XKmwuMkBFghlGQl6JFFV8rFrr4Y9ea5fumpHyXTLtEzi32smVQZ+2UM4ie8R+kGsWilGPSm7ij9W39yHRg=
X-Received: by 2002:a17:90a:f606:b0:2c1:ae24:fa0e with SMTP id
 98e67ed59e1d1-2c27daf669fmr1840603a91.10.1717580668847; Wed, 05 Jun 2024
 02:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwkyOJqcsZzEduUOqccdM42s+=m7S9tbA6kGZ-eovN2Gw@mail.gmail.com>
 <f2379284-5427-43d5-8f67-6f827a60d1f5@pbarker.dev>
In-Reply-To: <f2379284-5427-43d5-8f67-6f827a60d1f5@pbarker.dev>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 5 Jun 2024 11:44:14 +0200
Message-ID: <CAGAf8LydSEMBgd-c4e6PFp0V67A0Ajf6bYMSctzvLYadmGZG_A@mail.gmail.com>
Subject: Re: Problems with Torvalds Kernels (6.10-rcX)
To: Paul Barker <paul@pbarker.dev>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 10:40:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63283

Hello Paul,

Many Thanks (not entirely politically correct English language), I
guess it was one of the errors:
PREFERRED_VERSION_linux-torvalds ?=3D "6.10.%"

I swapped "torvalds" with "mainline", as U did.

But the one I've bumped to is the one I just noticed at the end of
writing the original email:

https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/conf/machine/=
beaglebone.conf

5 SOC_FAMILY =3D "ti335x"
 6 TARGET_ARCH =3D "arm"
 7
 8 DEFAULTTUNE ?=3D "cortexa8hf-neon-"
 9
10 require conf/machine/include/soc-famil
y.inc
11 require conf/machine/include/arm/armv7a/tune-cortexa8.inc
12

=3D=3D=3D=3D=3D=3D=3D>>> 13 PREFERRED_PROVIDER_virtual/kernel =3D "linux-st=
able" <<<=3D=3D=3D=3D=3D=3D=3D

14 #PREFERRED_PROVIDER_virtual/kernel =3D "ti-linux"
15 KERNEL_IMAGETYPE =3D "zImage"
16
17 PREFERRED_PROVIDER_virtual/bootloader =3D "u-boot"
_______

Anyway, Ur @ somehow prompted me to start moving after 3 days og
banging my head off the Chinese wall...

I did fix the mainline kernel recipe, in some clumsy way, but for now
I have @ least a working version (or I think I have, since now I am
compiling kernel 6.10-rc2, I need to wait till the end of the process)
!

U did organize the whole mainline thing in a very structured way, my
mainline 6.10-rc2 .bb recipe is a complete mess

At least it does work (with sticks and ropes)! :-)))

Very soon I will release this recipe in my meta-bbb/ layer, inherited
from Scott Ellis. Scott kept in there machine/
.../meta-bbb/conf/machine/ directory, U did not.

Implementation detail! ;-)

Later... YOCTO Folks!

Zee
_______

On Tue, Jun 4, 2024 at 4:43=E2=80=AFPM Paul Barker <paul@pbarker.dev> wrote=
:
>
> On 04/06/2024 14:37, Zoran wrote:
> > Hello Yocto Community,
> >
> > I am trying to understand how to handle (beside linux-stable) another
> > pre-released stream of kernels, handled ONLY by Linus.
> >
> > I called it linux-torvalds. Whatever I tried last week does NOT work fo=
r me.
> >
> > Let me start describing the problem.
> >
> > This is the kernel recipe I am using in my meta-bbb layer, experimental=
ly.
> >
> > Here is the pointer for kernel recipe 6.10-rc1 (on the net still
> > visible from github):
> >
> > https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-k=
ernel/linux/
> > https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-k=
ernel/linux/linux-torvalds_6.10.bb
> >
> > Not sure from where the variable ${SRCPV} comes from (from .../poky/met=
a/...)?
> >
> > The .../build/conf/local.conf is NOT visible from the net, but in
> > nutshell, here is what I have in it (important):
> >
> > ## Define kernel version
> > ## SRCPV =3D "${@bb.fetch2.get_srcrev(d)} <<<=3D=3D=3D=3D=3D=3D=3D Comm=
ented out -
> > just to remind me about this mysterious variable
> > ## PREFERRED_PROVIDER_virtual/kernel ?=3D "meta-bbb"
> > ## PREFERRED_VERSION_meta-bbb ?=3D "6.1.%"
> > PREFERRED_PROVIDER_virtual/kernel =3D "linux-torvalds"
> > PREFERRED_VERSION_meta-bbb ?=3D "6.10.%"
>
> The pattern here is PREFERRED_VERSION_<recipe name>.
>
> So if your recipe is named linux-torvalds, you want:
>
> PREFERRED_VERSION_linux-torvalds ?=3D "6.10.%"
>
> As an alternative to maintaining such a recipe yourself, I recommend you
> look at the following:
>
> - The linux-yocto-dev recipe in openembedded-core/poky. This is the
> mainline kernel plus some Yocto-specific patches and is regularly
> updated by Bruce (linux-yocto maintainer).
>
> - The linux-mainline recipe in my meta-linux-mainline layer. This is the
> mainline kernel with no additional patches and is regularly updated by
> me. See https://github.com/betafive/meta-linux-mainline for more info on
> this layer.
>
> Thanks,
>
> --
> Paul Barker
>

