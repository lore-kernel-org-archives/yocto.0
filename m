Return-Path: <kaiwan.billimoria@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ADAC27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 14:09:11 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.12418.1718201340960000100
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 07:09:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eBZCzQJU;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: kaiwan.billimoria@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57c83100bd6so4505030a12.3
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 07:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718201339; x=1718806139; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OuDmIxFPZFcNGjFZcCrb0mveGCVSGmyFzeHM4h2IIUI=;
        b=eBZCzQJU+pyotsfPey5ujP58bt42YDZ7z8EDxsnNaT6+Mj2a+HWCWuXubDmfrGtz5h
         erKiUfmJ5NFCsCWdEh0ka2iSwpSTCtaW2H1sDQypMMXriNP59HM071Zi+SKNblbyNWsQ
         5+MEWaGO7HuIGkfqIOofa27WQmgqGWNJOAME3J5zio5XS7Ybx+fjlbOZ2VzNq1yoQsfm
         iSg0majbYYE+WILR01heGZh7B9xFqSSDU1aY3g5OZ6PexxnXbPbs1UDnCnYkm+2PB/l8
         EGJIRCw4KprKhmH2RfeXv+LYzH3TEUtg/PgOHe8Ol4rexNuenCx8PEM5Vj161i13Z/Os
         f2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718201339; x=1718806139;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OuDmIxFPZFcNGjFZcCrb0mveGCVSGmyFzeHM4h2IIUI=;
        b=bVCA7aUtudU/0FVfnXxHUE0rpyTVUx3PpazqHs7vaOzOsE5MAQRNv83BAr8VGlVjtc
         JyOAVe7kBRtpT2xhjYrwDd9OLKv5eflZALgSaxIxqmRyegu+3nYTk1XsO7WEL5fUMsYh
         Xmg+LZLzu9pI/COtX377ZrkWVKMpvF51oRSPJNrhwMiDPsU7tn9rnTlu2GsgzldcC+UG
         hQpyBaednQ6Xf1CpvMiN1/mIFjjU5qxvh+x2CDK+/xXHxUtsEKEQC787U6HD5xXeJg2t
         i7vJs9BWk8WzMb2dJ+pEFSFkU5KYbxLKYqxW6fhj/O1hXpJ8ezsmb53HOX+59yWymQnu
         sL1Q==
X-Gm-Message-State: AOJu0Yzs4VLdiNVh5MJ818iVr9+cXUye7bqiwqFVPUe6hNOqXqlRLp9b
	1B7hRI+2ZmG8aN8w3R5Lpj6kS0wPtrePu+ItrPnnk+YSJCtzmtGmcbCWtQ3Cmwt5z6+Lv5jz+mt
	lVXbC9MS3kxmMmCslOAUxNKlB1VE=
X-Google-Smtp-Source: AGHT+IH7cuRgQXUHgvfCfS4x+xaITPioJ5lKD0+9hKI0tuuX17gGGd2GQ5DRt87uN+L0V4TCU2GnSvt6eITehzrlJ9g=
X-Received: by 2002:a50:9fc1:0:b0:57c:605c:e23f with SMTP id
 4fb4d7f45d1cf-57caaad7f5dmr1215370a12.33.1718201338885; Wed, 12 Jun 2024
 07:08:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
 <591DCA78-8AA3-4D14-9075-1C262B393630@arm.com> <CAPDLWs8pt44vmhrA=xG6i36cbDnL+A2orVFu7+z3Eox8oFj-xw@mail.gmail.com>
 <3C9C3677-6A6C-43A0-9982-68A3DE7D33CE@arm.com>
In-Reply-To: <3C9C3677-6A6C-43A0-9982-68A3DE7D33CE@arm.com>
From: Kaiwan N Billimoria <kaiwan.billimoria@gmail.com>
Date: Wed, 12 Jun 2024 19:38:41 +0530
Message-ID: <CAPDLWs_d1kwsSg6TLtiDUHD6E0RsJ0=WL=3mtsJ4YYrhAmerbg@mail.gmail.com>
Subject: Re: [yocto] Recipe for using a custom Makefile with C source
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 14:09:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63330

On Wed, Jun 12, 2024 at 6:11=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> w=
rote:
>
> On 12 Jun 2024, at 12:38, Kaiwan N Billimoria <kaiwan.billimoria@gmail.co=
m> wrote:
> >
> > On Wed, Jun 12, 2024 at 4:43=E2=80=AFPM Ross Burton <Ross.Burton@arm.co=
m> wrote:
> >>
> >> On 12 Jun 2024, at 11:44, Kaiwan N Billimoria via lists.yoctoproject.o=
rg <kaiwan.billimoria=3Dgmail.com@lists.yoctoproject.org> wrote:
> >>>
> >>> Hello all!
> >>>
> >>> I have a newbie question regarding creating a recipe for C code, wher=
e
> >>> the project already has a custom Makefile -which of course must be
> >>> used for the build.
> >>> From what I recall, the recipe doesn't have to do anything special;
> >>> bitbake will pick up the Makefile and do the 'make'...
> >>>
> >>> However, when experimenting with a v simple 'hello, world' C program
> >>> and Makefile, I find that am unable to get a 'debug build'
> >>> helloworld_dbg binary executable - it simply seems to use the default
> >>> $(CFLAGS) value and I can't seem to influence it, via the recipe or
> >>> the Makefile??
> >>
> >> Your helloworld_dbg target uses CFLAGS_DBG but I don=E2=80=99t see tha=
t defined anywhere.
> > Hi Ross, thanks. Yes, sorry, another mistake on my part: I tried
> > defining CFLAGS_DBG in the recipe and access it in the Makefile but
> > that too didn;t seem to work...
>
> Did you export it?  Variables in recipes are not exported into the enviro=
nment of subshells by default.
Ok, great, I now exported it..
And yes, it _did_ become visible in the Makefile.
*However*, it didn't make any material difference - both binaries are
again about the same size, and both show (via 'file')
'with debug_info, not stripped'. So, my point is, even explicitly
passing certain CFLAGS_FOO to the custom Makefile via
the recipe doesn't make any real difference? That's not great, right...
What if one must pass some required flag? Typically, and correct me if
i'm wrong, the project Makefile will specify it but
bitbake doesn't seem to want to obey the Makefile - it wants to
overrule it regardless?? Not great, IMHO.. that is, if I'm
understanding this correctly.

>
> >> If helloworld_dbg should be unstripped, then the idiom is to _always_ =
build unstripped binaries (which is why CFLAGS has -g in) and at packaging =
time bitbake will extract the debug symbols and put them into the -dbg pack=
age.
Fantastic, it really helps to know this... thanks.

> > Ah, so I gather, as you've said, that bitbake will not strip the
> > binary and will provide the debug symbols in -dbg package.
> >
> > So my question really is: the deployed 'production' binary should be
> > stripped and optimized, thus should not be compiled with -g and -O0
> > right?
> > But the generated helloworld binary shows like this:
> > $ file .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/hell=
oworld
> > .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld:
> > ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), dynamically
> > linked, interpreter /usr/lib/ld-linux-aarch64.so.1,
> > BuildID[sha1]=3Dae3... for GNU/Linux 5.15.0, with debug_info, not
> > stripped
> >
> > The last part clearly says 'with debug_info, not stripped'; this, IMO,
> > conflicts with what we want for production... That's the thing I am
> > not getting.
>
> The idiom is that binaries are build with -g -O2 by default.  The debug s=
ymbols are then moved into the -dbg package.  So if you just install hellow=
orld you have a stripped binary, but installing helloworld-dbg brings in th=
e debug symbols.
>
> If you want to go a step further because the optimiser is causing suffici=
ent problems in debugging you can simply set DEBUG_BUILD=3D=E2=80=9C1=E2=80=
=9D in the recipe and that will swith -O2 to -Og.   You can do this with a =
bbappend or override in your local.conf, or if you=E2=80=99re really keen a=
 sub-distro that is a rebuild of your entire system with DEBUG_BUILD enable=
d globally.
Very interesting, thank you..
- Kaiwan.
>
> Ross

