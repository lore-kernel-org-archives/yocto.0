Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20136C77B73
	for <webhook@archiver.kernel.org>; Sat, 15 Apr 2023 21:26:12 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.17502.1681593962415345566
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Apr 2023 14:26:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=HOxnVZNM;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-4ec8148f73eso576630e87.1
        for <yocto@lists.yoctoproject.org>; Sat, 15 Apr 2023 14:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681593960; x=1684185960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9rcpE/PajOa6+8jgfAEgImffHb9NReD01ouMYL8wqI=;
        b=HOxnVZNMof6Pu/egNgap0ddBxMxvItJ5DofLrAqHqCGTkwWZYSBC8kldQatzlmOy4b
         sRLL2fGN7QOPMYklEUT9v2Ba1Zzs1zj5sAv//J1aAdIijo1N90UvATIRJcftBsaq5Cj1
         UNE9VPf3BTAkUDQ/VKoGCdSz/WTaTxQMCakDpBnOL+bQYu1VvAGoe5BFiy2IbMINp03X
         CSEuTLwuE7GwKJIg21wK+zjZD0iZFfAMrjG2w2ySwRhtEED55FcEgEsmaomo1d8p98TF
         NCiwjVie5/IWx9cLvOm2lXYyWio+MgcTt66hQW6h0AFm+iPus3qCetgOxv0W4w4z66F4
         kPQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681593960; x=1684185960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E9rcpE/PajOa6+8jgfAEgImffHb9NReD01ouMYL8wqI=;
        b=PREfJs4H0BSj/T3AXAiXhtGPG6TxyqCFGfxvPRNYhT1GabbjFPCfLMXn1DmRLRu+fs
         hI8kk6x03wAbdTIj5mdaoeXqYKUKXqs4fPN5vfLcUJw0SwAAeOgjb38SOyGwJVMViWVK
         Z0BX3GJYuqHS6gQglvQoGPHMw2DY16NaM3nJAzz8mKuN6tX5RpR9bIN/qQrPqpEhUsST
         ue0W9p5ujAU7PafR5tLvd8vZXjcC2GRYKXKDUPFzxHUIf79u4uH/OwXj7Ld/kbpb7No9
         yrVoIsIpjzilkxjxllyIqIyTvn5+bfsf/1pJV/qDrjpryyCZ8GwFLo73R8lM5HjiNhUI
         J7hw==
X-Gm-Message-State: AAQBX9cKMQPuEP8D7TUq5UQc67ESzlKS7lBAuSBcAfSZimenqtHnPcBj
	WNM6YltMkrIL8/PFtzSVL9sZn8TS9LRtGCE1AWo=
X-Google-Smtp-Source: AKy350ZxNHA+kWTYteiReUjQofbCTPFvLOyjA77p70oQQdFSDDOfP7RnFI9QG6bFrT2B2W+mJF9xFX8cxCttvO664rM=
X-Received: by 2002:ac2:5e88:0:b0:4eb:3f68:553f with SMTP id
 b8-20020ac25e88000000b004eb3f68553fmr857207lfq.9.1681593960252; Sat, 15 Apr
 2023 14:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <1756064B75205918.4329@lists.yoctoproject.org>
In-Reply-To: <1756064B75205918.4329@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Sat, 15 Apr 2023 23:25:48 +0200
Message-ID: <CAAfyv35agHmSw+Zm8Ho25Fw+LVjLeHdp3hsfh1Wwk9v43xsWZg@mail.gmail.com>
Subject: Re: [yocto] meta-rockchip: rock-pi-e kirkstone no audio card
To: marek.belisko@gmail.com
Cc: Yocto <yocto@lists.yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Apr 2023 21:26:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59717

Sorry for the noise, it seems wiping out tmp and rebuilding fixed the issue=
.

On Sat, Apr 15, 2023 at 8:00=E2=80=AFAM Marek Belisko via
lists.yoctoproject.org
<marek.belisko=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I'm building a yocto for a rock-pi-e machine using kirkstone release.
> Board boots fine but there is no audio card when checked with aplay
> command. I've dug into kernel config and there was missing codec
> driver but after adding there is still no audio. Any other ideas
> before I dig into kernel hacking?
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59716): https://lists.yoctoproject.org/g/yocto/messag=
e/59716
> Mute This Topic: https://lists.yoctoproject.org/mt/98277723/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [marek.belisko@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

