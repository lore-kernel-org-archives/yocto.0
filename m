Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12A6BEB64DC
	for <webhook@archiver.kernel.org>; Sun,  9 Jul 2023 00:26:00 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web10.9404.1688862354069427674
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Jul 2023 17:25:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=jq7U+ipn;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.180, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-56fff21c2ebso39468517b3.3
        for <yocto@lists.yoctoproject.org>; Sat, 08 Jul 2023 17:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1688862353; x=1691454353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FiG6ezFkRYYcEsJPq2O1by0JRoVv7Z66BHkUPTh5lsM=;
        b=jq7U+ipnrSmPi/T+D/U2fg7cQcCEYd2Namwkm5upjdjqPLEbrWqoIxtdGcrIBlfFGJ
         d9T9aRWsD9W+SBP50TxbMqOgOiTVmq4xBpwatp9H8DRLnYCLrMGtjQYWhfymb0xlouWd
         hhY6duL1++oYbvuxrHkjCmBoDTBY6mB8ZRNMmGar06WJgecG7ByIoSVE6Pkl4I/RPBwU
         Sc2Q/z+ZcpHhnJi3vkFviK7iPEP/Eg6Zn/LJW/4SIQF6NhlX12My5hoGWBObJaGf2nBH
         LZwJP0e+Sv2fewWUsQbjO/+YTjfQM9ZPVvM/R0oZl9POekAjpUqG/qDEPBjMqGCeJoGi
         jGpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688862353; x=1691454353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FiG6ezFkRYYcEsJPq2O1by0JRoVv7Z66BHkUPTh5lsM=;
        b=b+wKWe6dKYnS9Zq9JQ5VnP5/31HZxyrviB9yK2wtEXvhhbdDY+8+ajHHYg0pHy9G9P
         yVEZwgakJuc/rrB3vdjKTBzBrCKLIqI2ay1/+CAoE7bM52RYxPZgAJdWr6ObWc5E1Alc
         akP3g2M22AHy9H8FhThRpbuW/wFzVQwLdF7eJnnPTVTVwBeDAP2jrX8Wt1GWaiIJkTFI
         UU0Qtp6GT65LnM8LcE6s5mcG61qd3BgTEJBP5SIaFOtygVaLmnns80RGHlWpM1PX+lkr
         QDobyvON0uTaOadsT2Xlrv+O742e3aR7+y5OCAEnkrvMF6bkUiwegd7j66/DgsPKtfZv
         Kw0A==
X-Gm-Message-State: ABy/qLZlKv1O4EJFPcEdlyekua3b0SPfQbVAZoOO8JO41TREIs9GAJET
	GIXzSOpkKa9a87Iw7aFAV/RWMu/8b/Z2bZLmuhqupg==
X-Google-Smtp-Source: APBJJlHPO26JSj7X/rIkz2tarnmP3SG+gM9hMUixCPbs7ZFp5f650ORuv1HX7nOAn4uN5Z4XH1oTj02zmZ4/4yEHYd4=
X-Received: by 2002:a81:6d45:0:b0:579:fd23:5946 with SMTP id
 i66-20020a816d45000000b00579fd235946mr8740136ywc.22.1688862352995; Sat, 08
 Jul 2023 17:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <0101018937e7039c-06f98c3d-58fd-45c2-9032-397dda013bea-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018937e7039c-06f98c3d-58fd-45c2-9032-397dda013bea-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 8 Jul 2023 14:25:41 -1000
Message-ID: <CAOSpxdbKyeRjf8gJRxf9t2s5NORFfC72TbpN+pEp4CtVhcA0Ew@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-4.2.2.rc1)
To: Pokybuild User <pokybuild@yoctoproject.org>
Cc: yocto@lists.yoctoproject.org, qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Jul 2023 00:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60543

There was one known autobuilder intermittent issue on qemuarm64-ptest:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15070

A subsequent retest passed as expected:

https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5127

So this rc1 build is good for testing.

Steve

On Sat, Jul 8, 2023 at 1:47=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-4.2.2.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-4.2.2.rc1
>
>
>     Build hash information:
>
>     bitbake: 08033b63ae442c774bd3fce62844eac23e6882d7
> meta-agl: f1bb0ee68b18a39917e06bfbb08d677bbf8bdf25
> meta-arm: 1a15a5b052d488c9f02ab8279b24003666312c96
> meta-aws: 8fb078b20eac38a7472f5e476114f4283fad3beb
> meta-intel: e31edebd4166a7b58ec11c00f9364d9f5f50484f
> meta-mingw: 4608d0bb7e47c52b8f6e9be259bfb1716fda9fd6
> meta-openembedded: d71a08b3d8fc69d3213c10885af9cc693056a8bd
> meta-virtualization: a19092ce81339a129edce745522eebf577efc744
> oecore: 3ef283e02b0b91daf64c3a589e1f6bb68d4f5aa1
> poky: 6e17b3e644ca15b8b4afd071ccaa6f172a0e681a
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
> View/Reply Online (#60542): https://lists.yoctoproject.org/g/yocto/messag=
e/60542
> Mute This Topic: https://lists.yoctoproject.org/mt/100032562/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

