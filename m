Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2185CCF9E3
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 12:29:22 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.16496.1762259353250942650
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Nov 2025 04:29:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MVYeDdsW;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-8738c6fdbe8so60569016d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 04:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762259352; x=1762864152; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J3DDuN0x3Ee9xSd/p5BvPdfBmfGwNasUMyVm+zfxlQg=;
        b=MVYeDdsWnXVwJ5MHMr+YiTh5RpINk7Hmk6gAjKWs0jAk8rsTtZbXLy0ogic4jz3p41
         yptjKEQBeCqKnjkySexdOOHJ09TTvh1X2Syw4iGQJIKjFDhknQi07JMFsEEXPHqD2TUX
         CRXmJkHQQJgJ1pavxSrnAep9xlMHmJomZQ7Y5YOpk8I+THsuOo5Q5KAcklZ94nXQe01+
         oJl1+eDLYQzG0LjtL3IQtXlp5xJ2zqy+w3DwOR+9PwA/2omwvxuZc9spdn/GchKJrh+g
         a1n/xxkLSLFo/jIV+JauzwbY2wnMd9F0M+fg2EvNfqH5/rg+o66TCf5CkxLHhHKUpkfQ
         g2Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762259352; x=1762864152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J3DDuN0x3Ee9xSd/p5BvPdfBmfGwNasUMyVm+zfxlQg=;
        b=oR/Cijh6UZJcHgEI/gPsfzACnJuOm0JNRjBVOsTGKy5soDxq7Wd3hnABTqm89LZQUl
         7t2I9Tc2CnnZM+Ow4X2++9EHWe+m5y+5YN/CiNIoL49dgYV9bPAZtwDaxdg9rSWy5BJE
         Sr+Le/jRRZ/h7WqoxKuFEjR7zzlOW/PFljbehAjUqMvMZqzlfL4MgRjx87ZuZnnTMPsV
         uiNBskLdIpbRM9IGQ528Z37i+ejog4Tno4TIyKZ5L6npbvwfQTJ/E94VDrXyCJxhjjtW
         mHQMsRcqzK11bG242hU5VxoMKsMinyb+A8AKvBoz0kFf2l+rdCO2VSmw4L0L7GJ5h98W
         clpA==
X-Gm-Message-State: AOJu0Yz32PgZQhUNtHnmyx0NxeRkBCT1onQQKNSCKR6znmKcS0LFppXM
	KVutmcSgoionIp1teU1jnk2JxG6Dp2adEbVcJwksDbUb5LwJLQHQelHJXl7FBFm0Rt5F6xCbHZF
	L83FT7k/E0eT7ckv9qC2lvdw73KzMcErzgA==
X-Gm-Gg: ASbGnctEzQniTtVX+5XEqmxKcBfJawrpDJvOdBw0s7eKDJXVx7Qnud/BGTOClc3B475
	M1oM3HWmLkzpPWgNNZD7E3O267RrJdGDw6BzS8qfK+zZj9Ukvg5VRqQ/ZcN/6lvPIUmJKNkmcXS
	RuaxM69jTBFSsBLzqNUGdnpmt2+aGWvIvjuVei4OBg3OQ890EVOiAf3+n/UXuMdK7teysKDMVZM
	8T400/GcXhB+k91atxL8gLCAsF8sPfLpyIV1/8AkgC42GQLmqJmwlHW9mh1svSfcTEBEL2FAcYe
	+aHbL9p1ZrPsfT+nz5w=
X-Google-Smtp-Source: AGHT+IEEkoZMpUz9Y3RXc1MjVMkE+rAh8MMXZiRSNe3kCuKErDFXeCam+oo1cXG7EnP+poQbnFIqikHN0rsn10qQCu4=
X-Received: by 2002:ad4:5761:0:b0:87c:27e2:3c0c with SMTP id
 6a1803df08f44-880623a659dmr35335986d6.21.1762259352091; Tue, 04 Nov 2025
 04:29:12 -0800 (PST)
MIME-Version: 1.0
References: <Jl3X.1762229101233866192.c0ZZ@lists.yoctoproject.org> <22291E39-2C29-49DA-A0AC-D533042B4164@arm.com>
In-Reply-To: <22291E39-2C29-49DA-A0AC-D533042B4164@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Nov 2025 13:29:00 +0100
X-Gm-Features: AWmQ_bmkAtPOOo8J6npJaAQ5QK1xLRg7pFDvZPUAHpWPSIg7Xwzq9-PQLo0giJs
Message-ID: <CANNYZj_AG200wWqJAdqafT-+ZYK1oBs4rq-ySKTam844q=ELdA@mail.gmail.com>
Subject: Re: [yocto] SSTATE_MIRRORS not working as expected
To: yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: "dchvs11@gmail.com" <dchvs11@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 12:29:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66001

On Tue, 4 Nov 2025 at 11:34, Ross Burton via lists.yoctoproject.org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
> > I=E2=80=99ve set up my build environment to use RidgeRun's sstate-cache=
 and downloads mirrors as follows:
> >
> > ```
> > # RidgeRun's SState-Cache Mirror
> > SSTATE_MIRRORS ?=3D "\
> >         file://.* https://yocto.ridgerun.ai/mirror/scarthgap/sstate-cac=
he/PATH;downloadfilename=3DPATH \
> > "
> >   # RidgeRun's Downloads Mirror
> > PREMIRRORS:prepend =3D "\
> >         git://.*/.* https://yocto.ridgerun.ai/mirror/scarthgap/download=
s/ \
> > "
> > ```
> >
> > However, I=E2=80=99m not seeing a significant improvement when using th=
ese mirrors.
> > It seems that native packages are not being fetched from the cache or t=
he downloads mirror =E2=80=94only a few packages appear to be reused.
> > Has anyone else experienced this?
> > Are there specific configurations or steps needed to ensure that native=
 packages are properly retrieved from the mirrors?
>
> Their native sstate is using uninative (you can tell this by the top-leve=
l universal/ directory, if it wasn=E2=80=99t uninative then you=E2=80=99d h=
ave distro names instead) so you need to also be using uninative (poky does=
 this, but your distro may not).  Add this to your distro:
>
> require conf/distro/include/yocto-uninative.inc
> INHERIT +=3D =E2=80=9Cuninative"
>
> But for sstate sharing to work there needs to be a common distro, so are =
RidgeRun providing a distro configuration and you=E2=80=99re using it?  If =
that=E2=80=99s the case, I suggest asking them first.

I also suspect they might be using a hash equivalence server, and if
so, they must provide access to its database, or using that sstate
cache will just cause mostly mismatches.

In other words, you need to ask the provider of the cache, not the
community. Yocto has its own cache made from poky test builds, and a
clearly defined to enable it, and we can support you with that.

Alex

