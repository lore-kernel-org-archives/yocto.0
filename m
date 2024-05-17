Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE8BC04FFE
	for <webhook@archiver.kernel.org>; Fri, 17 May 2024 11:29:34 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.38254.1715945301913180491
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 May 2024 04:28:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DXEcEOLT;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1ee5235f5c9so5347635ad.2
        for <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 04:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715945301; x=1716550101; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dwjYHHCzqEny/HjVeckCev5ZFwzZpGHdH3r2Bm5BT9o=;
        b=DXEcEOLTwG3vS+HY1gRqhK9LN4R5XW20tIX+xPO+t1CJnnfCsP25KLk4TSfXxefKX8
         /9mczO+NdC61VB6Uz9uDh0tnK9dyUwmrHF1KnDX1jk4lAg5leOiCm1N6fD7dvIi+ZGhf
         0KfvqJPhNjTqBGX2FsrCkiw5bYYr4y3VHz6OjxwBVGa3cJaecHEM020L6pnSt/3ihWkT
         fYkWB8HXr5/CTGB/CxBs7IrbuoSo5etpY49YQLgyFiRG3RBYA86u+bt5HgWPhsujyMEK
         TYJYA7ZpKBOlLhL3WPmcsarEYXDLMo+rvvCFas0tdn3DEjlGX293dbR0DSeOWTbW4bFg
         mRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715945301; x=1716550101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dwjYHHCzqEny/HjVeckCev5ZFwzZpGHdH3r2Bm5BT9o=;
        b=OK8m1z7xDdwvEeirqAYCeGfLa73yOKfqiEbTWJvIOm3xlOdVnjjQ/gpeubXxS1u5j1
         Ee0j3z5fMk3olASHxIks9lpIn7ZhlxfzpyTMY8xHQF5sb3eIjX8IOsxUs88nEDVxbs1k
         AYWK39xoz1MhKpyo/wJ3bttmeN8i4Eklcfrlqe/VwHtzFemYgytUilXS7G1lhgyaeIQe
         lfOT4mq2foJv+rGphwL4D0ai4LYVAUTW9HHRq1zcxor3TakAVcB7RpyC9AscFpToHafN
         kDZRiQ+bcab2ikn2/BCUbtRembcgPpkrLT/Fe2nrO3QcsAK+i2lF5DrZ830OrubC+Ygp
         rMzg==
X-Forwarded-Encrypted: i=1; AJvYcCXSmISCKLmRmb4pLPaMUaiIoD3yXBa+TgAGCk64pnLaNvF6M+D1Cfa6YHFvrSk3C8rUr6EfzS+WP34iOva/dQsz3URESC9rpvCT/M4n
X-Gm-Message-State: AOJu0YxyjWuDKJyvAeZwlswgfD4MrfdpjMG/4wDJw+aOick6cjovU2gi
	Vx6jmEVVlhJP4fl8nHJNTe+Et0G15VMHBkqcJHMr5x30eqQDhpCRtJa14FfenVVD8OjTJMZYlgF
	obe3Qkv9k0/l00bWE15ZGN9UqBEM=
X-Google-Smtp-Source: AGHT+IHt5m3K7bXUQSLVujTbQGua2d9SR+PWHgDcvU1DW0MOwqWO6N9zF8wU0eeTz0u7QHXZPMXvGcmMJq0EwduY5DE=
X-Received: by 2002:a05:6a20:969b:b0:1af:d44c:cfc4 with SMTP id
 adf61e73a8af0-1afde0d53c4mr18977136637.17.1715945301212; Fri, 17 May 2024
 04:28:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de> <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com> <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
 <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com> <9C837256-96C6-4B2B-8E5C-BD8CBB34AAC8@arm.com>
In-Reply-To: <9C837256-96C6-4B2B-8E5C-BD8CBB34AAC8@arm.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 17 May 2024 13:28:09 +0200
Message-ID: <CAGAf8Lz0HrN4SnerY+y_F31JCKiK1kTsfzNKyd2ss=B9CS6Yeg@mail.gmail.com>
Subject: Re: [yocto] Strange errors while executing poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
To: Ross Burton <Ross.Burton@arm.com>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Martin Jansa <martin.jansa@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 11:29:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63134

> Remember how Fedora 40 is unsupported?  If you want to use
> Fedora 40 then you=E2=80=99ll need to join in with the effort to support =
GCC 14.1, which involves fixing problems like this.
>
> If you don=E2=80=99t want to do that, then use a supported host distribut=
ion.

I have to give you credit for this one. I will try to apply an
external patch for gcc 14 as per Martin's advice, and see what I can
do furthermore.

I have been with Fedora since 2012 (Fedora 14), and I have not once,
not twice, but quite a few times serious issues with Fedora.

Fedora is a test distro for RHELs. I did not understand this till
recently. And also for kernel.org .

Well. Learning in the meantime also ArchLinux (alternative to it is an
Ubuntu, I also used it for a couple (maybe 4) of years in parallel
with Fedora ).
_______

Allow me to try the proposed patch, and see how it goes!

Thank you,
Zee
_______

On Fri, May 17, 2024 at 12:52=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> =
wrote:
>
> On 17 May 2024, at 11:13, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.=
com> wrote:
> > ERROR: Logfile of failure stored in:
> > /home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/build/tmp/work/x=
86_64-linux/cracklib-native/2.9.11/temp/log.do_compile.628699
>
> If you look at the log file:
>
> | ../../git/src/lib/packlib.c:554:40: error: passing argument 1 of =E2=80=
=98HwmsHostToBigEndian=E2=80=99 from incompatible pointer type [-Wincompati=
ble-pointer-types]
>
>
> Remember how Fedora 40 is unsupported?  If you want to use Fedora 40 then=
 you=E2=80=99ll need to join in with the effort to support GCC 14.1, which =
involves fixing problems like this.
>
> If you don=E2=80=99t want to do that, then use a supported host distribut=
ion.
>
> Ross

