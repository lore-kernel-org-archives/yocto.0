Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02546C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 20:03:23 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.819.1738008199360553920
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 12:03:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=atCOjsok;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30227c56b11so47851101fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 12:03:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738008197; x=1738612997; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ElMEa4TpDlJAmltJa4zV/nZvlxgxguJc+5ckDk6g+Sc=;
        b=atCOjsokfJ5GiuNLbzG3yuD1LyA/XdFv6qd14a3MoIPEH87URqrkFscRrVDR2snCC6
         lnAdbmwpBtwlT5dti/dSg2ELsz9MccOlz7on0hnHZ0LydPTBTfN3hE54LNVs0mV+FLbe
         K2MGezU1HVXAmLFH4kF6dktsgndtQ55tV70k9JjyInLVXWFB20SRwEpe26Z2uDQEcr1R
         UTLolo8yF/DuvO6COFTdtcEV4fhyl7gvoxRDFm0pa/YWPzZm6S+FTdy3HsA2r0kQxsGB
         GgJW/nHSKaoXb0q3bq1bnvIz5FYEKQBIG4qOLqlBQTUftNoMOfUUTCsZRop30UQvYIMs
         Ozpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738008197; x=1738612997;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ElMEa4TpDlJAmltJa4zV/nZvlxgxguJc+5ckDk6g+Sc=;
        b=d3haeGcfUnYzMMFhXXDMRxhn7u/s+PP0S9R660N4tYzsWHyZe32naT0jwUEEkLKoDu
         0jkqvCyYpDUwZJbDZGGAA8+AHvwSLU84kKCOe+xKUBsZKuyv+WhMPb/oz1ghUQEbFr14
         ic32pezuvWvnLByoE2NYoZWBT7+er8+nI32P7jXZUPmFyCuLRsSZhublPV+3h6uObxXH
         T23BvlLcNZOcWcV7f7drivoH74zChrUmmHP5hVuJ1ihLb41l/rUC9nacHi7hhrGVwmMf
         mGd1TZqJXAvYvN4QRE1i5xExgnOOjwkzVbnVXBK15Ew3qk0ScW1jKnnC2ReUt8NK/jBS
         B1bw==
X-Gm-Message-State: AOJu0YxenoZoHqnMfvB7/8RzqZ6atmgcGe2KXNe2WHs0P3/qaLq0QmYY
	X+xl4SmG7J2SE+q73vUsXxd9cXlfizsaeYeIrVvrnl/mVDn809q7l9DsXfGsMQ7WOF/+9Ln72ba
	MEv9BEdF4IHOhtWaFSY+HIHmRxvuGI6EF
X-Gm-Gg: ASbGncsNANE1pyGmgm0Rwty8iGf9Ry+6ZdaHnyx7hAJ3dofzMMb6tT/fj580Bowkt5M
	IX4pJcNEBu0ZY3/KQ0ShcB+49nZ2dg84bpfEaT/ys1ot9uWn/vdehraigbdAkCMu9
X-Google-Smtp-Source: AGHT+IFXAyOIuZ7BTSeR/NpcRrGCOolxLgsaFkxARRTTJEf+nwEg6bfhDJPKl27k3qeVewHF9pX7ha1McIylBqmxuU4=
X-Received: by 2002:a2e:bc83:0:b0:2ff:a89b:4348 with SMTP id
 38308e7fff4ca-3072ca609cfmr174352341fa.1.1738008197212; Mon, 27 Jan 2025
 12:03:17 -0800 (PST)
MIME-Version: 1.0
References: <b69d48e5-7062-443a-be53-521852cbd10e@gmail.com> <15793.1738003555647274530@lists.yoctoproject.org>
In-Reply-To: <15793.1738003555647274530@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 27 Jan 2025 21:03:04 +0100
X-Gm-Features: AWEUYZmlGSj6YQO_8dj6E5jw8tDs1FReZcVyvS9rrFwfP97mgqRAJkBeHXLRu7E
Message-ID: <CA+chaQccQt04-1U-QJVO33fnZfZXKxs87ZENuvw4CjGviP9JFw@mail.gmail.com>
Subject: Re: [yocto] [yocto scarthgap] do_configure failed for pth-2.0.7
 package #scarthgap #yocto #autotools #bitbake
To: yocto@lists.yoctoproject.org, kavita.mnnit@gmail.com
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 20:03:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64648

Why don't you try npth instead, as mentioned in:
https://git.openembedded.org/openembedded-core/commit/meta/recipes-support/=
pth/pth_2.0.7.bb?id=3D22c0b4c5034f929a1b1145f49b835387856e80b1

On Mon, Jan 27, 2025 at 7:46=E2=80=AFPM kavita.mnnit via
lists.yoctoproject.org <kavita.mnnit=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Here is the path to the recipe which is unable to build with the autoconf=
 2.72e recipe
>
> https://git.openembedded.org/openembedded-core/tree/meta/recipes-support/=
pth/pth_2.0.7.bb?h=3Dfido
>
> Please let me know, if you need any other information.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64647): https://lists.yoctoproject.org/g/yocto/messag=
e/64647
> Mute This Topic: https://lists.yoctoproject.org/mt/110840172/3617156
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarth=
gap
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #autotools:https://lists.yoctoproject.org/g/yocto/mutehashtag/autoto=
ols
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

