Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3EC04FFE
	for <webhook@archiver.kernel.org>; Fri, 17 May 2024 10:50:14 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.37653.1715943004171347760
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 May 2024 03:50:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VgWfkibl;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2e6f51f9de4so6976841fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 03:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715943002; x=1716547802; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7CmubPk/mU99JB5AxZBGvZcd8nF3oGF0vHHXHwxVLLE=;
        b=VgWfkibls8WmayPfqAufnSY3/ibziArkN4BS0RGa01gJrQwSyuAmwPnthZDBq/rY1Z
         owUTshplDLonraAJDMc0XyFHnLHVYnejB4TtB2FOQKc6uBvpHCYpOMmiOF0kv0fFJkN2
         ZB3FQk2+wjvJgr+eNc3P/Fgci2EdPdHqirw061/6O+qV+kErQTSy5wCYuhk6MyuK1mYp
         mM133AmVf0Cv3ta/kfRzd+pSFpMLgXHqQPKBvQiBVgeUsN9D7pBjkreen0lE4C8xrqV4
         N96vu/DtxgPIoLm+9l7egoOBCnpvxS167RroD00A8SsZVpr2JhMkakEqv1OEx+Y/aPy/
         JWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715943002; x=1716547802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7CmubPk/mU99JB5AxZBGvZcd8nF3oGF0vHHXHwxVLLE=;
        b=ZGmQyhyWpIdxNDe7AGrjbsnZgJ3UTKifO3quMUa4zykdXmcB9U4vtJeUDhGQLPHOih
         lSBfCLImdPJq+VtsgZRweEYG30inFdJxvYbWT9sH3vibXBl6ulZYttSCQtb5M24vcPJL
         EZInb8rPiGb762pZM7EkY3DhMUZZRO/SunOKttu5lvR+2zybBvWWwdkguLM+nyT4cODA
         ABotuEZBZeMFsO7Fk6X9IE4bhMMnQZ6pvGTqeGJTm8DkXoQsHqjLnKmGjcI2U2v5y7/S
         hnVgy+GiVmNa8B7lV+zfuMOEIKXzfy/EoqJGcvZimV6vuC3u7fTKPkat9qO1HXrgLEUX
         RaWQ==
X-Gm-Message-State: AOJu0YwDVPPKMD9P/7jCf1e5Mkv4CTAWtNLQI8OooSmilZquTyHjRTso
	CBk5Lv2TDEHcmfQEIt3AYZMMn1fnZYJmqE99HBoOF28GWLHfs6vO1peMq4mPl0N09WPWRTFE89W
	9u/o30dVVx6E+jPshcsEAmNtaZrKpqyCD
X-Google-Smtp-Source: AGHT+IHrvItS4xPwahcO/f1bvK8FTN4n2F0isTIMjAdjRzWEvfrZz6jBvfq8/VA5ItVKaQMl0ABsJuNTVIjEs6S7gA4=
X-Received: by 2002:a2e:8ed5:0:b0:2e1:d48e:d5b3 with SMTP id
 38308e7fff4ca-2e51fd4a624mr167956951fa.20.1715943001954; Fri, 17 May 2024
 03:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de> <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com> <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
 <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com>
In-Reply-To: <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 17 May 2024 12:49:45 +0200
Message-ID: <CA+chaQfmJAQUWkEfX4Qd8veV+P+AYqui2vr26cgnrAEjMoYt5Q@mail.gmail.com>
Subject: Re: [yocto] Strange errors while executing poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb
 using scarthgap release
To: yocto@lists.yoctoproject.org, zoran.stojsavljevic@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>, Ross Burton <ross.burton@arm.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 10:50:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63131

You're most likely missing this fix:
https://git.openembedded.org/openembedded-core/commit/?id=3D914128f6bd988cd=
e278e087fb9457a0c70c7e5ec

On Fri, May 17, 2024 at 12:47=E2=80=AFPM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello People,
>
> Thank you very much for helping me with uninative.
>
> This command does it for time being (as said): INHERIT:remove =3D =E2=80=
=9Cuninative=E2=80=9D
>
> I fixed a few issues furthermore (my own mess).
>
> But interesting enough, I have another package issue which popped up
> (the last obstacle before building .cpio):
>
> ERROR: cracklib-native-2.9.11-r0 do_compile: oe_runmake failed
> ERROR: cracklib-native-2.9.11-r0 do_compile:
> ExecutionError('/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/bu=
ild/tmp/work/x86_64-linux/cracklib-native/2.9.11/temp/run.do_compile.628699=
',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/work/x86=
_64-linux/cracklib-native/2.9.11/temp/log.do_compile.628699
>
> I even have no idea what the purpose of cracklib-native package is?
>
> Should I disable it (if not important) in local.conf?
>
> The .log. (cracklib-native.log) file is attached to this email.
>
> Zee
> _______
>
> On Thu, May 16, 2024 at 5:58=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wro=
te:
> >
> > We need a new uninative tarball generated with gcc14 for f40 so there m=
ight be issues like you are seeing due to that. You can disable uninative t=
emporarily in your build and see if that works for the moment
> >
> > On Thu, May 16, 2024 at 8:39=E2=80=AFAM Ross Burton via lists.yoctoproj=
ect.org <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
> >>
> >>
> >>
> >> > On 16 May 2024, at 16:31, Zoran via lists.yoctoproject.org <zoran.st=
ojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> >> > The full log (full_log.txt) is attached to this @, as per Ur request
> >> > (lot of stuff, echt!).
> >>
> >> From your log:
> >>
> >> WARNING: Host distribution "fedora-40" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> >>
> >> This is saying that Fedora 40 has not been validated and you may exper=
ience unexpected failures.
> >>
> >> Later in the log:
> >>
> >> pzstd: /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tm=
p/sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `CXXABI_1=
.3.15' not found (required by pzstd)
> >>
> >> That is the sort of unexpected failure you can expect when using Fedor=
a 40, because it has not been validated.
> >>
> >> This is an incompatibility with Fedora 40 and uninative, so until this=
 is resolved you can disable uninative with this in your local.conf:
> >>
> >> INHERIT:remove =3D =E2=80=9Cuninative=E2=80=9D
> >>
> >> Ross
> >>
> >>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63130): https://lists.yoctoproject.org/g/yocto/messag=
e/63130
> Mute This Topic: https://lists.yoctoproject.org/mt/106133618/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

