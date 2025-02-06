Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77815C02194
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 17:15:36 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web11.47353.1738862135731377990
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 09:15:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dmmf76wl;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2aa17010cbcso735573fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 09:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738862135; x=1739466935; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dr46su4YXW+A6eIjI0PAT/DzQ61tjqU9qr7+NgTN1KU=;
        b=dmmf76wlYgQQQbHVxiGVeS5pgA8lh3DCS5K3SU9cPG32whEEWst0a8szWQFNImd62f
         k9q8pBs3NOCTq67Tz9QJy8Np9IM9zX8zYTbVSKLFozxsNaChGYYzIcb+aufBlfSEiaRL
         Wf3LZX7JOLo7OmVH+A2WI9hxGQbVGKevNAwHGNq5xgcItlltalrSBU1qXkY2asTALiMr
         QuBy2t/DdotyEzf14VAIlC+RwkEfSs/qdP7icrswz2r0ZpRVwTyA9PK+4YX5NthGiR66
         25kyYDT/TnMAzawbDbwrRRY7jt3mYht+lerC2E9PSoUvl/vh+rff+NCiutihO0VAXjaA
         6ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738862135; x=1739466935;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dr46su4YXW+A6eIjI0PAT/DzQ61tjqU9qr7+NgTN1KU=;
        b=X5z93/GOgOsMQxd6yKk9STH3jsRe7RLXJcI7yjWIBj+vdRTdQe+1eN2VZAaDfWbV1l
         cX+sTS8ArkYY5ahMovZWFhLNBATO5sIh/X44qDSivS6ziKuBbshMNAfHIpwJlk2mSk9M
         jcSVQGistnGp1XcoUHXI3K6z6Ws8u6ev7js+Lj49ibbC+FxKu31WCIXiKE4rI1dIkuJi
         RmKh40wXM/Je1Pkepq0R1Hou566Z0y5B/r22lCWNIC5isul112qECOD4Jjj+TuoJMARx
         qa1U9LAe6G49v1sWivbjZJiX93rBaPyJTd6qmUJJTHIpubJMpBIi9x3skKlMRcmcBzUu
         C6+w==
X-Gm-Message-State: AOJu0Yyx9ggmoy/IANut3snb1CxFZVygLkmbkLxwNK3einNCjhbw9Eqv
	2ZtaGzkE2zLgVrBOHa5tyQ5EimBtmlvyugqvBUqzRuUPHWJCpcl19bvDCmFmdbPjZOyG2wO7BRp
	ipQ7GoBH9S+n5f0/sFirJDghsI59ozd0n5zM=
X-Gm-Gg: ASbGncsXdfIEKFuDxamWXpXexZTSa8cBHTs3BMGoB9paTl8YidyzgHMdUH2EwK/FCJ1
	HrMD3aCLQPEhkM6Uxy3ou1AA1hoAE27+QvGjtzDOqY3fovdZV4EesXnFJHKCGrwYE+LV5GKTT
X-Google-Smtp-Source: AGHT+IEEBjcMaQ4VsoRiNBSp1NgejHby4UVoxBzOrho7KeUXKN5FUhZ+tpsPN91+bbayhH/ryZdFb0x5Wm7fQIQ1t8c=
X-Received: by 2002:a05:6870:2f06:b0:29e:2bbd:51ba with SMTP id
 586e51a60fabf-2b804f58ae1mr5203918fac.9.1738862134619; Thu, 06 Feb 2025
 09:15:34 -0800 (PST)
MIME-Version: 1.0
References: <22391.1738859480398711450@lists.yoctoproject.org> <22391.1738860156600922862@lists.yoctoproject.org>
In-Reply-To: <22391.1738860156600922862@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Feb 2025 09:15:08 -0800
X-Gm-Features: AWEUYZkHgzCRuvDjwYi-rMCJaiUGXlZWG9JVRk58J1vW0gXOa-123gljhkt7M_Q
Message-ID: <CAMKF1sqUyhqDgwfLHUS=JcnrQRQNXQ0AK1aLdEGjM+fgPgS9DQ@mail.gmail.com>
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master
 branch of Yocto #raspberrypi #raspberrypi0-wifi
To: yocto@lists.yoctoproject.org, jdowd@slashdevslashnull.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 17:15:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64731

On Thu, Feb 6, 2025 at 8:42=E2=80=AFAM John via lists.yoctoproject.org
<jdowd=3Dslashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> So, I'm at the same point in this excruciating exercise. The output is th=
e same as what I reported before. I'm stuck at the loading of the linux ker=
nel.
>
> I have to set the dtparam arm_64bit=3D0 for my Yocto image. Could there b=
e an issue with the Raspberry Pi bootcode.bin being unable to load a 32-bit=
 kernel image? If I don't put that parameter in, I get an error from bootco=
de.bin about there being no loadable kernel image available.
>
> Also, I've tried this with u-boot as well. I was thinking it would be eas=
ier as u-boot's start requirements are quite straight forward. However I ge=
t exactly the same issue.
>
> Is this a device tree issue? I have the dtb file: bcm2710-rpi-zero-2.dtb =
being loaded. Is that the correct one?

yes it is. Can you try building for MACHINE =3D "raspberrypi0-2w-64" and
see if it works ?
if it does, then perhaps we need to add

RPI_KERNEL_DEVICETREE =3D "broadcom/bcm2710-rpi-zero-2.dtb" in
raspberrypi0-2w.conf and see if that helps with 32bit mode.

>
> Can anyone claim that they have a working Yocto image from the more recen=
t repos booting on a Raspberry Pi Zero W 2 board?
>
> Cheers!!
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64730): https://lists.yoctoproject.org/g/yocto/messag=
e/64730
> Unfollow This Topic: https://lists.yoctoproject.org/unft/111018045/199791=
4
> Mute #raspberrypi:https://lists.yoctoproject.org/g/yocto/mutehashtag/rasp=
berrypi
> Mute #raspberrypi0-wifi:https://lists.yoctoproject.org/g/yocto/mutehashta=
g/raspberrypi0-wifi
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

