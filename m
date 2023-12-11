Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C2AC4167B
	for <webhook@archiver.kernel.org>; Mon, 11 Dec 2023 14:05:23 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web10.9045.1702303514566579047
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Dec 2023 06:05:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=PxYiSwCl;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.49, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-54dccf89cfdso5810063a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 11 Dec 2023 06:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1702303513; x=1702908313; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8r1cwo8v6WE0juQbgp3A2IwlBwkBKqcwMHbzhe51TzI=;
        b=PxYiSwClhDMucw/rnfxJpp0aqwWxHMcI/w548SpDFOgwLfnjdNSGMjWKqGk3eUuEGG
         waGbV7Vc4WwBGl41EjC4bkjxt5VZ8eNK0G0Jpb7EsUcEUKOUkzakx8Nva2yTLUSlfMMf
         xbQtL6OmPfvBpdP3Wa6KAidoy9WplltnDcF5/K0yqmK7fkCth17VnHEl1Jm22EYOmZQq
         QxePRSTpsWhYaKFOO/VWPCNAjTSAFyonvKNL9NhlI811rHtRQtLd7B12cgLhD/WQ/bTg
         jxyMTU7lDXB0gPLKjHu5CzZBCQxA7U13weoU2tQzoOVxkVLjrQp+hJd3JZTxQ5evaYvo
         APaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702303513; x=1702908313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8r1cwo8v6WE0juQbgp3A2IwlBwkBKqcwMHbzhe51TzI=;
        b=VVaLaBGI5Pl6LuARN9JdHgLgERdpg2231y7Dmd9EbSsHYzqpFOCrrTneFgw3UBMIpw
         fyM+ijAFuiHmPkMs0eTupXSLbXe/g5jEwtZCJ4AV7BoX3Gu8V/n5cBfIKKb68r3IQTRY
         RdL7Q9TtA17IiYjp9W4+iSv8wQZzEtvPO8X4ovU2qCpgcraYfnD0dlRNYrvx6BlBYMOL
         0hdQJcWo9B3eG9vHObsDRuX+3Cfte/Ge2onFzJ8e6eioh7RnCaen2t0cHSINlrjKn/tp
         RAg0LCc6KX1yohrOBHGE73k49yit+TG+pv/FbrRHuByKCKvZFpHMkPV9EW3DXGTRX4xW
         C8jg==
X-Gm-Message-State: AOJu0YypjsPTRcsaWle7T12ASj7YnTeN10omVQSh/+6Eqm0zNiC4Onas
	/hV5Ap8saRFVlmHquT3xN6OiGWrhcv6WJrS/v/rDXA==
X-Google-Smtp-Source: AGHT+IGV3kpsEirw8cypdu+y/QOFQJ+l0fLP/R6BjkbYHh4WZqYhLfCU8+k6LPNoctlnk9N+9bosliZk1aTnnC8vvns=
X-Received: by 2002:a17:907:c715:b0:a1d:551f:a197 with SMTP id
 ty21-20020a170907c71500b00a1d551fa197mr2545707ejc.82.1702303512869; Mon, 11
 Dec 2023 06:05:12 -0800 (PST)
MIME-Version: 1.0
References: <0101018c57550f06-92c50d96-7351-4371-a312-05e8561e6e9b-000000@us-west-2.amazonses.com>
 <BN6PR11MB4145902E9E231ED340C50E91A18FA@BN6PR11MB4145.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR11MB4145902E9E231ED340C50E91A18FA@BN6PR11MB4145.namprd11.prod.outlook.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 11 Dec 2023 04:05:01 -1000
Message-ID: <CAOSpxdatXXtnSy0ss3THgQ_BUYrfx2UAU+4oPVk0ESyrM4d0AQ@mail.gmail.com>
Subject: Re: [qa-build-notification] [yocto] QA notification for completed
 autobuilder build (yocto-3.1.30.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"pokybuild@yoctoproject.org" <pokybuild@yoctoproject.org>, 
	"openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Dec 2023 14:05:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61855

On Sun, Dec 10, 2023 at 11:43=E2=80=AFPM Jing Hui Tham <jing.hui.tham@intel=
.com> wrote:
>
> Hi all,
>
> Intel and WR YP QA is planning for QA execution for YP build yocto-3.1.30=
.rc1. We are planning to execute following tests for this cycle:
>
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
>
> Runtime auto test for following platforms:
>         1. MinnowBoard Turbot - 32bit
>         2. Kaby Lake (7th Generation Intel(r) Core(tm) Processors)
>         3. Tiger Lake (11th Generation Intel(r) Core(tm) Processors)
>         4. Alder Lake-S (12th Generation Intel(r) Core(tm) Processors)
>         5. Raptor Lake-P (13th Generation Intel(r) Core(tm) Processors)
>         6. Edgerouter
>         7. Beaglebone
>
>
> ETA for completion Friday, December 15.

Unfortunately an issue has been reported with linux-yocto-rt:

https://lists.openembedded.org/g/openembedded-core/message/191857

So it will be necessary to do a 3.1.30-rc2 build to fix this issue.

Sorry for the false start!

Steve

> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Be=
half
> > Of Pokybuild User
> > Sent: Monday, December 11, 2023 1:24 PM
> > To: yocto@lists.yoctoproject.org
> > Cc: qa-build-notification@lists.yoctoproject.org
> > Subject: [yocto] QA notification for completed autobuilder build (yocto=
-
> > 3.1.30.rc1)
> >
> >
> > A build flagged for QA (yocto-3.1.30.rc1) was completed on the autobuil=
der
> > and is available at:
> >
> >
> >     https://autobuilder.yocto.io/pub/releases/yocto-3.1.30.rc1
> >
> >
> > Build URL:
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6316
> >
> > Build hash information:
> >
> > bitbake: c0d60794a32e3f8bbfbbd6800d87ef2782aacf2c
> > meta-agl: 512d244d48ba0d33f609f425a6e8a907b178cdac
> > meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
> > meta-aws: f3ba81625dac2e5c009e73ad78fec23b1261bd02
> > meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> > meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
> > meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
> > meta-openembedded: 9135c7ea7350d5d241f4afc3b28087122ebe2d19
> > meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
> > oecore: 7e65b351fa8eda4ee7b9f1f2a8dbfe14e0ef697a
> > poky: bf9eabafc257a7d3c39e3b4a46cabf7e6fb8270e
> >
> >
> >
> > This is an automated message from the Yocto Project Autobuilder
> > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > Email: richard.purdie@linuxfoundation.org
> >
> >
> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#352): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/352
> Mute This Topic: https://lists.yoctoproject.org/mt/103105847/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

