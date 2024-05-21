Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49AECC25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 08:07:53 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web11.14537.1716277933992095361
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 00:52:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LDI6JlNq;
 spf=pass (domain: gmail.com, ip: 209.85.167.172, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c9d0671dfaso1860599b6e.2
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 00:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716277933; x=1716882733; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b8zgXyeFDhkiCsddtdUDNbUZ3oNj6QZlBLYGpsDn5Ww=;
        b=LDI6JlNq3SN77xOx6bhXV2aIEq+KTqvRxxcN1kVNGndeSZ8SnzWO/re0YP3DTegqEe
         nDOh3rWD0K+QiOxIPuNKmCRuDhBpucaKwxr1FK6cgglcUAW2zzEI3yHE00WyMThI1hMv
         fZ/H6mKS8ZvlKPIeo5uvj0ncf50oXmTYjY77lUQv4R536bKaKPsur4bmD/uIO1WTNUNu
         mAz28voWb2AO4sY1oDFuutCNme2aB2jZ1isVztds6Dwf2htN93MxupW1z8Aez+kQYDXU
         DX6wtS/OADYQTc92FTAwndf0ZmieK+63nAFPIqyJSbU/whPCXEW4RbrTer8wAkTLw5wy
         NTkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716277933; x=1716882733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b8zgXyeFDhkiCsddtdUDNbUZ3oNj6QZlBLYGpsDn5Ww=;
        b=m42vo8IQWcbaL3ORNb7+KxTZA5UA6+qcZIeQb+iKqPOJVINMoGRAAbv9j4qt8dNqWs
         oa7jhiILkSxelgd5A7Lc5FjLvQ0uC2fttAfOVe9mpVSF8/QGMyqzgrktnsmyGOQFduHG
         MKZGKQYvbrbwCuRxSHJf1lw3vx0fiWl5iwi2+oAYqQ2nLJ2QXqtloH4mVgeRko7xuCbF
         M0vuNHkhFPvLBts1Y9QTzgp8JPSxPFQ/Mbkwf/uPVSYx86vvwxAgrgX0s4wByHHXSxC9
         xRXY/iyXVsBkQv0e1ziDuVmNjI7tcMlXA95ZB+OKky96IeQwPJu5mH7YuEc2I1aX9t0H
         m1ZQ==
X-Gm-Message-State: AOJu0Yw3UwWprVoJVrj9ivRKFbeTJnNsiLAAx2t4AlQqF46Kb95GeVKk
	uPpdzag8kgZ/IqL6XjwaeNDE+phFjl0voXQnR1fTTfxTDIwenC3km/pxklUzJMIJ6576mekkGSp
	SdlI3Mr0ebi+WKMMNerbToB0kz1k=
X-Google-Smtp-Source: AGHT+IE8nGgVM/etOkASLkqROQ4A5eREljM5unzURlgtAXjCDLXM/70HA5UgsPRc13Sh5CW4zkR6+tNHA9ry8jPe4Ig=
X-Received: by 2002:a05:6808:dc4:b0:3c8:68e5:b9b5 with SMTP id
 5614622812f47-3c9970367ecmr30783860b6e.6.1716277931485; Tue, 21 May 2024
 00:52:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de> <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com> <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
 <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com> <CA+chaQfmJAQUWkEfX4Qd8veV+P+AYqui2vr26cgnrAEjMoYt5Q@mail.gmail.com>
In-Reply-To: <CA+chaQfmJAQUWkEfX4Qd8veV+P+AYqui2vr26cgnrAEjMoYt5Q@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 21 May 2024 09:51:59 +0200
Message-ID: <CAGAf8LydqUeMGXCMh4nmnTKzZ7Dt+3noeJYCrw4kRuPMX32V1A@mail.gmail.com>
Subject: Re: [yocto] Strange errors while executing poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>, 
	Ross Burton <ross.burton@arm.com>, Quentin Schulz <quentin.schulz@cherry.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 08:07:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63144

Hello Martin,

Thank you for the tip. It does work.

I have just one question for all of you.

What is the timeframe for Fedora 40 passing the validation? Fixing known is=
sues?

5.01 rc-3? Or 5.01 final? Or some 5.02 rc-xy? Would be nice to know.
Does some scheduling doc. for the features TO-BE-IMPLEMENTED as an
official site exist for the new Yocto releases?

Quentin,

I fight these Fedora issues as they come. I am not sure if I can
commit myself too seriously to these Fedora support tasks, but for
this wget case (or for any similar case), I got some info, they might
help:

https://gitlab.com/gnuwget/wget2/-/issues/661#note_1911520943

https://gitlab.com/gnuwget/wget2/-/wikis/home#differing-cli-options-wgetwge=
t2

Thank you for any YOCTO info which might help.

Zee
_______






On Fri, May 17, 2024 at 12:50=E2=80=AFPM Martin Jansa <martin.jansa@gmail.c=
om> wrote:
>
> You're most likely missing this fix:
> https://git.openembedded.org/openembedded-core/commit/?id=3D914128f6bd988=
cde278e087fb9457a0c70c7e5ec
>
> On Fri, May 17, 2024 at 12:47=E2=80=AFPM Zoran via lists.yoctoproject.org
> <zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello People,
> >
> > Thank you very much for helping me with uninative.
> >
> > This command does it for time being (as said): INHERIT:remove =3D =E2=
=80=9Cuninative=E2=80=9D
> >
> > I fixed a few issues furthermore (my own mess).
> >
> > But interesting enough, I have another package issue which popped up
> > (the last obstacle before building .cpio):
> >
> > ERROR: cracklib-native-2.9.11-r0 do_compile: oe_runmake failed
> > ERROR: cracklib-native-2.9.11-r0 do_compile:
> > ExecutionError('/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/=
build/tmp/work/x86_64-linux/cracklib-native/2.9.11/temp/run.do_compile.6286=
99',
> > 1, None, None)
> > ERROR: Logfile of failure stored in:
> > /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/work/x=
86_64-linux/cracklib-native/2.9.11/temp/log.do_compile.628699
> >
> > I even have no idea what the purpose of cracklib-native package is?
> >
> > Should I disable it (if not important) in local.conf?
> >
> > The .log. (cracklib-native.log) file is attached to this email.
> >
> > Zee
> > _______
> >
> > On Thu, May 16, 2024 at 5:58=E2=80=AFPM Khem Raj <raj.khem@gmail.com> w=
rote:
> > >
> > > We need a new uninative tarball generated with gcc14 for f40 so there=
 might be issues like you are seeing due to that. You can disable uninative=
 temporarily in your build and see if that works for the moment
> > >
> > > On Thu, May 16, 2024 at 8:39=E2=80=AFAM Ross Burton via lists.yoctopr=
oject.org <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
> > >>
> > >>
> > >>
> > >> > On 16 May 2024, at 16:31, Zoran via lists.yoctoproject.org <zoran.=
stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> > >> > The full log (full_log.txt) is attached to this @, as per Ur reque=
st
> > >> > (lot of stuff, echt!).
> > >>
> > >> From your log:
> > >>
> > >> WARNING: Host distribution "fedora-40" has not been validated with t=
his version of the build system; you may possibly experience unexpected fai=
lures. It is recommended that you use a tested distribution.
> > >>
> > >> This is saying that Fedora 40 has not been validated and you may exp=
erience unexpected failures.
> > >>
> > >> Later in the log:
> > >>
> > >> pzstd: /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/=
tmp/sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `CXXABI=
_1.3.15' not found (required by pzstd)
> > >>
> > >> That is the sort of unexpected failure you can expect when using Fed=
ora 40, because it has not been validated.
> > >>
> > >> This is an incompatibility with Fedora 40 and uninative, so until th=
is is resolved you can disable uninative with this in your local.conf:
> > >>
> > >> INHERIT:remove =3D =E2=80=9Cuninative=E2=80=9D
> > >>
> > >> Ross
> > >>
> > >>
> >
> >=20
> >

