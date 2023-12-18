Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB5C5C35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 17:18:56 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web11.49535.1702919936174955432
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 09:18:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PRwp08N5;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6d9fdbcec6eso2626889a34.1;
        Mon, 18 Dec 2023 09:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702919935; x=1703524735; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uq5Xj6aNryVA2JK67x+iJBPFscbKftuVkWwZa5sNf1U=;
        b=PRwp08N5LUfpAY/jHfHYOdJj9XI8yLl2xKoZnRjVCSpKTZ0xBoxEUEY44FFRPXh+9l
         aM3shJcNNma7YOW4rk4Er8Kbqp8jG4TxnKAb6FrtHuyK4Cc/ehMI+lqew4BQnW/AQp7e
         nmEYENy5RxK9TsGnulG0HDSiF5ARoOJUGZJ5FbOKr3J0kDjZTdYmRWxp0k9sLsDBbtPi
         o4z8kCPxglmM01cfLBIRbsAo/xCJN4grj+pwAVlh+QR2Cv5eOEzFm0T6ODDsbU2pGeEC
         BhGKD2cZ6+Nb5qD+P2sTHFCiwFpHwsugSBVTwF/Ye6I2lblVjBQq/HeNJygDw9EVBBAY
         xIKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702919935; x=1703524735;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uq5Xj6aNryVA2JK67x+iJBPFscbKftuVkWwZa5sNf1U=;
        b=o/WOo7+C5wOeTpDUL5m/qKXhPtTW8Evgn6VakzIL0ky6HAgQGwDSRPbS0d5qtlDwEI
         5d0Qr30Bb5nxykCwpM7NPtp2ufUlOCuT0toJuLGdPHV+qs1HRIyZ1TZYOVhWlFqkHRG6
         oeKq1m3FtSQ8XkAQK35xaTIunRphg11EN5FgGTWwQJOXooLUyjZRWSUpJZFwJmzo9Hce
         dMytnmWyCpxchNayeW1EGq+V2xSnRAFksa8kHyavksiNcbj1hE/jljcGbD5GYXWtJ1bl
         nasaC8zg3tMzFMHm/lxMWSyhblZh0L7rw7RAGvJZaOs0L0uiCCbRwcQpOMjbEyLogYnd
         0l/Q==
X-Gm-Message-State: AOJu0Yyhji7zMJH2GQnbrG0AFQspF6fUFTSDkQJ7zLKUjsoPA7/7MT0l
	zEx8/VGuH+mVPT0YbU5Wzctr3Ib6fsUg2lF4SvPqgDLX
X-Google-Smtp-Source: AGHT+IHh3hXU14soi40o5Q1K/kEvvzhkAFZFWh48AGTXcRVAa2vmwfANSMeE2tGNRKt63TBkfRREDTtvrQXrLuzgMRg=
X-Received: by 2002:a05:6870:65aa:b0:203:3a43:8452 with SMTP id
 fp42-20020a05687065aa00b002033a438452mr8061992oab.66.1702919935187; Mon, 18
 Dec 2023 09:18:55 -0800 (PST)
MIME-Version: 1.0
References: <0101018c7d619dc0-ba8b9b23-ffab-4656-ae64-fadc60b755dd-000000@us-west-2.amazonses.com>
 <a84dfcc33bceed3883ab4c92c6da764f235c9a54.camel@linuxfoundation.org>
In-Reply-To: <a84dfcc33bceed3883ab4c92c6da764f235c9a54.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Dec 2023 09:18:29 -0800
Message-ID: <CAMKF1srqTmHY+JtTtTV9wOVpo4qUArdyt_QNRjkeYZANJ7cyCA@mail.gmail.com>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0_M1.rc3)
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: qa-build-notification@lists.yoctoproject.org, 
	"alexis.lothore" <alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 17:18:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61969

On Mon, Dec 18, 2023 at 9:17=E2=80=AFAM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Mon, 2023-12-18 at 14:43 +0000, Pokybuild User wrote:
> >     A build flagged for QA (yocto-5.0_M1.rc3) was completed on the auto=
builder and is available at:
> >
> >
> >         https://autobuilder.yocto.io/pub/releases/yocto-5.0_M1.rc3
> >
> >
> >     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/=
83/builds/6345
> >
> >     Build hash information:
> >
> >     bitbake: 8295ac1b6672c25bee595cff6e000b2af817f904
> > meta-agl: 266ac5373b4458d7fcb78b1e8948eb2b33f18b5d
> > meta-arm: e6e7ac4d99f103d26a0ffefd6d0a5d2deef5b17c
> > meta-aws: 7915e6bafd876ab3d654a26629dbf501479caae0
> > meta-intel: 5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f
> > meta-mingw: e01d47d183945caeaf3c5c086539af0a925ddc32
> > meta-openembedded: 0a0ea87b8dda01a2887a525cef78eb6c3f4c2c32
> > meta-virtualization: caa14c63f158fdd13382ccf1ff4e20a8ba6ad667
> > oecore: 6b729088dce302eb3a967cb6839f00488025be0e
> > poky: 33112178d164ddd9ef0b1115c254ad4341ec3ad1
> >
> >
> >
> > This is an automated message from the Yocto Project Autobuilder
> > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > Email: richard.purdie@linuxfoundation.org
> >
>
> There was one autobuilder failure against this build in qemux86 but it
> is a known issue where we're waiting for upstream to merge a kernel fix
> for alternatives handling. I believe we can proceed for QA and it does
> not block release.
>
> I'd also note the regression report generation was successful :)
>

cool. LGTM also.

> Cheers,
>
> Richard
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61968): https://lists.yoctoproject.org/g/yocto/messag=
e/61968
> Mute This Topic: https://lists.yoctoproject.org/mt/103246711/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/6692173/1997914=
/1837948400/xyzzy [raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

