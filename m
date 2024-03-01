Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25C33C5475B
	for <webhook@archiver.kernel.org>; Fri,  1 Mar 2024 22:32:22 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.37676.1709332338481741760
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Mar 2024 14:32:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=fHNY21qf;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.179, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6098bf69909so5604397b3.1
        for <yocto@lists.yoctoproject.org>; Fri, 01 Mar 2024 14:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1709332337; x=1709937137; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W2lE2idpCQw8zyoKyVKOn+zUcWrl3khdd3WmslZ3gi8=;
        b=fHNY21qfEqP960BJB5rRXOrBRFcZrm084x7VHCRoLEHVXEt4hhzyCV3pf1CSwWTKrM
         WWQprbefo4xg4j4qKFm1nh6Bb1Gt7UcIFR2rTd7HVOG8Ya0OHYX1rRApdreDTlxr6m3I
         DHjxSPKazj3rHmfjRzJpcEUqYUFOrJ39TilDizIRCJdvQoPjlzLOLGfSaICymxwfuwE0
         rAsz08CudidwWMtrkhpYACp3hHP9S0w94pZGw0lZcJNHKTkXVaAQANYkDKTQkvXMQy/c
         fTiE2YA3FNsv2j5hkedSfmamWkYYxvaiMX2S5Jzl4uU18UW/Ml3+S9FzgXye2GNPdDOX
         +Btg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709332337; x=1709937137;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W2lE2idpCQw8zyoKyVKOn+zUcWrl3khdd3WmslZ3gi8=;
        b=W773slnuq0gNj2X7wDZK7w28ztH+rWuC8WLBT/ZkXtQFyaTUOqEqKWjTbcV9mosN0C
         EsGOuyF08kDAdfIv4LXi4rM7Tv+affcZT3DRZ3/M3MZoMYdpJICb5akrsfdhx9HGagpR
         Bq//XuXNy2pAMSg6ob50faX4Bbzqb8lsdbvdUzrhSJQmLxSBrxLnVeXDKxYtk/3TNEvL
         fonkK9h02/K+FIRvTeNNi5ioT7Tfy+HZesPkaAF/YXq3+xwSZ8Lp9brEpi2UEelWKH4I
         fhRZzNH1YZG4BuRR8+tlInmYTsC0VOraYwxQHDl8ln2VJwhxA61jfs08xWXUbW3ayXKi
         XInA==
X-Gm-Message-State: AOJu0YynJg5GwwwcykPf1xgDXrBjcCA8rFkLyhagqoqiM5CwIdP9lyKP
	1C1z/oraoy7R50D72OlgADnkPfxU81C2lwu9oCFEVCE8kA1WkcVvcXB04R+Z3nAP3qMwha26y6H
	1mOzmMX4OAgjQr0hgwR5yo58PJe0M111FJTA23fP/yLPqZ0pwag5v6w==
X-Google-Smtp-Source: AGHT+IHqddH5PotnCDOCfl90BPzJlQHZpgbWQgg64RPGdVk8mYXh1l8tTlntk5n82p86wrwV5BhlLLdV8IM8stlIEq4=
X-Received: by 2002:a81:af4c:0:b0:609:26c9:e0a3 with SMTP id
 x12-20020a81af4c000000b0060926c9e0a3mr2730697ywj.17.1709332337540; Fri, 01
 Mar 2024 14:32:17 -0800 (PST)
MIME-Version: 1.0
References: <0101018dfc174a49-a1f49584-e024-4894-9905-cc8c0c222f15-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018dfc174a49-a1f49584-e024-4894-9905-cc8c0c222f15-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 1 Mar 2024 12:32:06 -1000
Message-ID: <CAOSpxdZi+j8VOABfL=sVXGvGTb1rhxsEjJVp7iYYBiB4-N5oEA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-3.1.32.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Mar 2024 22:32:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62651

There was one failure in this release build in qemuppc.

It is a known intermittent issue that we haven't seen in many months
(years actually): "qemuppc ping test failure" [YOCTO #14474]

I've updated the bug with this occurrence but haven't reopened it
since it happens so very infrequently.

A subsequent re-test of qemuppc passed, as expected:

https://autobuilder.yoctoproject.org/typhoon/#/builders/63/builds/8597

I think we are good to go for QA on this build, though it is fine if
it is delayed till after the scarthgap milestone release QA.

Steve

On Fri, Mar 1, 2024 at 12:16=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-3.1.32.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.32.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/bui=
lds/6633
>
> Build hash information:
>
> bitbake: 7ce4107bf824b3e115b40558336de25f99af31f8
> meta-agl: 6779dc072af75f1f606b0aecafff80fca8bc8419
> meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
> meta-aws: 6304ff33b112512b31919a7aaf145ab2ceed67a1
> meta-clang: fc56d6c8014f75fbc5a3f272c62ae201888e65d5
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
> meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
> meta-openembedded: daa4619fe3fbf8c28f342c4a7163a84a330f7653
> meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
> oecore: b49b0a3dd74c24f3a011c9c0b5cf8f6530956cfa
> poky: 54d8a1f631543ce01ba513e7cdae756e2a8e1968
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#388): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/388
> Mute This Topic: https://lists.yoctoproject.org/mt/104675615/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

