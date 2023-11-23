Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08563C61D97
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 16:38:29 +0000 (UTC)
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
 by mx.groups.io with SMTP id smtpd.web10.94877.1700757507416743910
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 08:38:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IIcJBBTH;
 spf=pass (domain: gmail.com, ip: 209.85.161.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-58a0154b4baso941499eaf.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 08:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700757506; x=1701362306; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JcDdjCk1oZtrwHzmyNsHwzGGbTz65R5WRLfQ9lD3Dds=;
        b=IIcJBBTHyUoX+i5JUG8WQD0nKsLumtnWjKKBdI/chUd6Canjubnb49Q6b722iDH5fJ
         sMEw5SM8Ju5AcjJoxQt/KpVS3NwpQI+oAKr5JDnpHraDLEf2dLCBPRRnOjcsnh/QTrce
         X/C+D9GDJ/XNvnS4cts5vPDAG+QIoiLo8Gf/tlyUE0L8AVnFlki1XwgAls+Bqg5ZXLRm
         eQfonsMDhDi9zDo2RG90n7WrvZzzGlqKo5zW17YQI1ydAToYPnCtTdZQE7t/N+NGBALt
         oxDorq/KvzB/wmBodoF6xWwdF/9bzVYb5L0lzA9kK4RJYTRSUJrIhwyvW0JqfGgVb3Ey
         vDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700757506; x=1701362306;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JcDdjCk1oZtrwHzmyNsHwzGGbTz65R5WRLfQ9lD3Dds=;
        b=ucOOkCuHDaGSjq86uZvtAxYi9r9rmvJ40I55zFSTRhU/ZFfa6iRCym1Zd3BNwZonPZ
         V9VBRlCMH0W7QbkfC05V8ZDgVDbZ7e8YcMlwF4vLz+53Q7zpSQw1/x15LzkJIsYcBAv7
         wbbfYJ6qCDM7dHNSQIB04yF3HQIhoWpUa4rYJLG0m5yBH5pTAHVl2pXJ08+OOpJLLO23
         vOdciBOqGoN2qBAp7zxxmWe8xS+/jAUtZYxf+CRBaEkWqnIHosrGBnJnnl0iePDrEYUw
         dKPp0jernpMBWAh6RKdWfHbe2fJjnDmbSCzigxzkMxA5iThqpoSIjuIyAyOvG78X5z27
         CvBw==
X-Gm-Message-State: AOJu0YzYjXD/7aJFxbctuZWx6JzWN8SWUH0y377Vp6fjdPdFT4axh09b
	XLE1nOXgb8x8I4n5bFIWl9eEsjEoWy79pVhTBOo=
X-Google-Smtp-Source: AGHT+IG7AORpnKNPa5j4DnsGLcZBaQnpwtGQly5oWWv4ZFuRBBi1i6v5T5KSiH5he0EaL8YruoVqHSjcgVZqXbhUgaY=
X-Received: by 2002:a05:6870:aa99:b0:1f4:daf6:7918 with SMTP id
 gr25-20020a056870aa9900b001f4daf67918mr1510271oab.26.1700757506484; Thu, 23
 Nov 2023 08:38:26 -0800 (PST)
MIME-Version: 1.0
References: <20231122014822.3871458-1-raj.khem@gmail.com> <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
In-Reply-To: <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Nov 2023 08:38:00 -0800
Message-ID: <CAMKF1spmQVfXj6TMMgDRrneUeFBKjGfvfN5JT2USC3CkyvVB5g@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
To: Ross Burton <Ross.Burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 16:38:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61745

On Thu, Nov 23, 2023 at 3:50=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> w=
rote:
>
> Is this working around a failure on the autobuilder?  How does matchbox-t=
erminal pull in gtk4?

yes
it pulls in lib32-vte which pulls in lib32-gtk4

>
> Ross
> > On 22 Nov 2023, at 01:48, Khem Raj via lists.yoctoproject.org <raj.khem=
=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > This avoids an issue when a package that pulls in gtk4 into
> > core-image-sato but not into multilib pieces results in different
> > gschema compiled files as reported in [1]
> >
> > [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15291
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> > config.json | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/config.json b/config.json
> > index c5fca45..e95a292 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -900,7 +900,7 @@
> >                     "MULTILIBS =3D 'multilib:lib32'",
> >                     "DEFAULTTUNE:virtclass-multilib-lib32 =3D 'x86'",
> >                     "RPM_PREFER_ELF_ARCH =3D '1'",
> > -                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome pa=
ngo-module-basic-fc lib32-pango-module-basic-fc'"
> > +                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome li=
b32-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
> >                 ]
> >             },
> >             "step4" : {
> > @@ -915,7 +915,7 @@
> >                     "MULTILIBS =3D 'multilib:lib32'",
> >                     "DEFAULTTUNE:virtclass-multilib-lib32 =3D 'x86'",
> >                     "RPM_PREFER_ELF_ARCH =3D '1'",
> > -                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome pa=
ngo-module-basic-fc lib32-pango-module-basic-fc'"
> > +                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome li=
b32-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
> >                 ]
> >             },
> >             "step5" : {
> > --
> > 2.43.0
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#61728): https://lists.yoctoproject.org/g/yocto/mess=
age/61728
> > Mute This Topic: https://lists.yoctoproject.org/mt/102741765/6875888
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross.burton@=
arm.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

