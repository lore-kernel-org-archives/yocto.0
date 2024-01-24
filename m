Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC05C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 22:02:11 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.41639.1706133720885709556
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 14:02:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZBmeGTj3;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50f11e3ba3aso8833116e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 14:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706133718; x=1706738518; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gk1ohIA4vzmlqpBkNTsOhda8vJVajqiNxQ4nt0YZXLc=;
        b=ZBmeGTj3j/J6im4vnyAWV3zmvY5pUCceCm48IeTJw/TEvHLW7MezBjBPDadvFdXn0Q
         1TSgF2qoiJlG8ZgaBgjHbptI/Xi4+R3i2H5uAMeJ7NsjP/isWRXmBmNEEfB1q7qACfHU
         BYpB5S/AtRrUP3fLzgshMoqJYaEjKkWMl2ZQhuDuLr2OPSmbUqgojCyTv2e/5hBrODkJ
         dJuQ0YgIVA9W+Sk9P8Fraa/BqhV5TqT6jGV/tPr0Lk+tH8FVQJ24vN+UGLDyzW8MbgzA
         7r8hjUrVyRK7T411Ofw4N7OApYMJgPywfG9Vyc4rU2rG9rQ15UIuXCWgi33HayRzqPyg
         eYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706133718; x=1706738518;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gk1ohIA4vzmlqpBkNTsOhda8vJVajqiNxQ4nt0YZXLc=;
        b=v1QQ4W/A4EFC+zmEpvS4QzZgCseaUPxfouTidlu1b6VG6ubAj1f/noyQr7Z3OAs7Xa
         1CDOQTLnVtq54ere1pLIWDQQdF/r7+6X3vScHWPQ6DJdBq83DEQHp0GRzEJ2ySGd3EM1
         jN6qoQVCwIRDVBUoSLQv+tO0dT1ISVE+Hv1C/wR6YoRtilcc7vfk2xBjsr79GPliaLAo
         z5y9zs6DvoQNN3PNQsAQoJcjikCxrTkfKK/JklWJtVXG4DN4AlpsJSyUgCFPuFy4g03o
         GXbBN1a1MtiQVmMhsOfK5k4k3Xh/M9EyKL25cXQv4pmiltWxPZGYfUcMHjQWtjV0Fx9F
         9hIA==
X-Gm-Message-State: AOJu0YwvfSzPeKcbpcfYWJYsvTLWI5I9WRg6atpGsf+N/ZMNihJa4QaS
	vZcbzAfOR8qKL33W3r8lwWvBfTXCoBIif7ZRRmmQQ49NJGXG2XD1OXZouk13seJruNsuNsVzCEH
	kDQmS/bPP7tpD7rZAmoaAzdekA64j2MiV
X-Google-Smtp-Source: AGHT+IFoke4jgwQ/Y5WcP2mPcdLjlqe8c3IoWZOt/2cOFWExP+c17Ku+DERLWIXr5aUl6cmYfuMvgb9aHomTtKZr3Mo=
X-Received: by 2002:ac2:428c:0:b0:50e:76ac:180b with SMTP id
 m12-20020ac2428c000000b0050e76ac180bmr3760743lfh.53.1706133718034; Wed, 24
 Jan 2024 14:01:58 -0800 (PST)
MIME-Version: 1.0
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com> <20240124175901.GA22635@localhost>
In-Reply-To: <20240124175901.GA22635@localhost>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 24 Jan 2024 15:01:45 -0700
Message-ID: <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
Subject: Re: [yocto] bmap-tools repository closes
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
Cc: dedekind1@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 22:02:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62273

On Wed, Jan 24, 2024 at 10:59=E2=80=AFAM Trevor Woerner <twoerner@gmail.com=
> wrote:
>
> Hi Artem,
>
> On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
> > Hello Yocto community,
> >
> > some parts of Yocto software (MIC?) use the 'bmap-tools' project to spe=
ed up
> > image flashing.
> >
> > https://github.com/intel/bmap-tools
> >
> > I am the original author of the software, and I created it many years a=
go to
> > speed up Tizen image flashing, and it helped a lot back at the time. It=
 was also
> > my first python project, so it was a lot of fun learning python while a=
lso
> > creating something useful.
>
> Thank you for your contribution, this tool has been quite useful for me o=
ver
> the years.
>
> > But after that, I stopped working on it and it was mostly Yocto folks w=
ho
> > contributed changes here and there. I never had time and enough motivat=
ion to
> > maintain the project further, but other folks helped.
> >
> > Simon McVitte was active maintainer, but he said he does not have time =
for it
> > now as well.
> >
> > The project is in "github.com/intel" space, and Intel is going to archi=
ve the
> > git repository soon. This basically means the repository becomes read-o=
nly soon.
>
> Thank you for this update and letting us know ahead of time.
>
> > Would Yocto community have enthusiasts to fork it and maintain the fork=
?
>
> Yes, I'll volunteer to maintain it going forward. My non-stackoverflow py=
thon
> knowledge is minimal, but I recently dug deeply into bmaptools to solve a=
n
> issue I had noticed. So I'm confident enough to take it over if nobody el=
se is
> interested.

Ya, it's an awesome tool and a huge time saver for us, so can also
help maintain it

>
> Best regards,
>         Trevor
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62262): https://lists.yoctoproject.org/g/yocto/messag=
e/62262
> Mute This Topic: https://lists.yoctoproject.org/mt/103930262/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

