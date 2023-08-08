Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52032C001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 14:10:20 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.62325.1691503816826543015
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 07:10:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=zF3qfWUt;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.48, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-31771a876b5so4296435f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 07:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1691503815; x=1692108615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NHlMxWTkhMvdL+Ay12S5uSyLHZa1OusJzCsTUCWLaLc=;
        b=zF3qfWUt91tPjSidJqvNjhGedU969+WBSZ7Voh8167niRzbIerGGaKRtA2Q4//JyU8
         yFPanT2SHJwAUf50ttHPKb0WETGXURdfnNgAEXP+If3t5arJgdasU3zzq5mTKcJMn8Za
         JohuzRiUofctr7NDCRvqJlIAhibuOxDwiP3et1XHo7XxBEXc8Ym8ypiLDKNuvHC4gpr5
         YqrMWD77jNeH3MEyVAM2zFlZB65IUE3YQswNf3VmRLQbHmVDk3t/4JFzkhWUt4G9AXIs
         cUgt2rpRvvDkyb7F8QRToOsPb+/lCGBnoi+sRrmH/Ee07yVmbKBoierbQZIG65bhVSck
         3vvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691503815; x=1692108615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NHlMxWTkhMvdL+Ay12S5uSyLHZa1OusJzCsTUCWLaLc=;
        b=e+lxEcPeEEl8+621sDM9S0NpQQX5ZCkoF5sCVB6jE2WaHBOzWYaF0jtW//MMmy8HPc
         rP1m/w7KrdGZUlC3voqHYt9Lle7y3vHJUQXvR2YpmGqJvSRoAxgTyg50AqmIco5pHXnk
         JumsSLvsecFUnZ8tsZm8dkGyRnBfCos35SM2OhPzmeirZ9QonII/hcQnoQBtLY9mvtly
         zDSFyaeKZBi44wkqNdXMIPpUp0M6CNnfim16LiOM9vswvzO8odg4wraRpn7rCKwx0btO
         aGdVfsGWTgtO6wdN7iKDMU21o+S9U+iKZvURlCeelD1IAo6txasyAlgRYarHuqbDhoZa
         eD5Q==
X-Gm-Message-State: AOJu0YwIYVDT1PE8TzMGOQ4hoCq9PQEY13PKqcls73lJ1f7mNNQUhitH
	PYvdZ7g6xKT7k2qagr2N/99D4Wtf7g2Mz0CBpuMX1A==
X-Google-Smtp-Source: AGHT+IEzTU4M3ZGMSXK+Jq/oBNCH4I8zwnKK2RFLUCmJZsvmRsH293QgDNdXtlAS4unZcjIXWlK9SDnzDlkseCH5B2A=
X-Received: by 2002:adf:dd0f:0:b0:314:10d8:b483 with SMTP id
 a15-20020adfdd0f000000b0031410d8b483mr7741391wrm.64.1691503815025; Tue, 08
 Aug 2023 07:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <01010189d5009462-dcd0dd94-a30d-48c9-899a-47b17c091a46-000000@us-west-2.amazonses.com>
In-Reply-To: <01010189d5009462-dcd0dd94-a30d-48c9-899a-47b17c091a46-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 8 Aug 2023 04:10:03 -1000
Message-ID: <CAOSpxdZsWMK-7-AWLMXn_--KoAzmOVeaT6u_NaZOvJ61q6Ov+A@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-4.0.12.rc1)
To: Pokybuild User <pokybuild@yoctoproject.org>
Cc: yocto@lists.yoctoproject.org, qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 14:10:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60737

It appears that I'll need to run an rc2 due to a cert issue in our
infrastructure which caused oe-selftest failures:

ERROR: cannot verify downloads.yoctoproject.org's certificate, issued
by =E2=80=98CN=3DR3,O=3DLet's Encrypt,C=3DUS=E2=80=99:

Steve

On Tue, Aug 8, 2023 at 1:55=E2=80=AFAM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.12.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.12.rc1
>
>
> Build hash information:
>
> bitbake: 41b6684489d0261753344956042be2cc4adb0159
> meta-agl: e302f9668bc399d671128d325ed108be1a48ee69
> meta-arm: c39bb4ce3b60b73d35c5fb06af012432e70d6b38
> meta-aws: 723a8a04965af482fe65e8e56eabea858858bd88
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 1aacdb4ed1e639cc6e19c541b058264eb17eb093
> meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
> meta-openembedded: 4da92ed9be41734f6ced46b981958e2e868cbff2
> meta-virtualization: af02908efda1580e77b3fdeed25b124a2b8d9482
> oecore: e1a604db8d2cf8782038b4016cc2e2052467333b
> poky: d6b8790370500b99ca11f0d8a05c39b661ab2ba6
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60735): https://lists.yoctoproject.org/g/yocto/messag=
e/60735
> Mute This Topic: https://lists.yoctoproject.org/mt/100620123/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

