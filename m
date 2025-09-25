Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0361CAC5B0
	for <webhook@archiver.kernel.org>; Thu, 25 Sep 2025 23:02:16 +0000 (UTC)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
 by mx.groups.io with SMTP id smtpd.web10.4573.1758841333938940729
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Sep 2025 16:02:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=GkeG6qHc;
 spf=softfail (domain: sakoman.com, ip: 74.125.224.51, mailfrom: steve@sakoman.com)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-63605f6f64eso915536d50.1
        for <yocto@lists.yoctoproject.org>; Thu, 25 Sep 2025 16:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1758841333; x=1759446133; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5gwAQTXSakhZvQOQM08TD3GgH49CZaXuvWMWE4dsR7I=;
        b=GkeG6qHcEZeHXtWDDiG0y5vMXvUfUOqsVMwkWJrrL4GkqiFmvnOdVn23tBV8dcitvB
         VJXpIKumMBNJcWmDicB/0XfUXNIVvdte0gay/51T9x67KD56VYo9U8AsIvRZBlPky45C
         mvbiL+gp9EQj/3J6AD2YnSVUCK6HX5zcYvGjwXN1dunzcRkay0yYj6uuj025yRa1P7rs
         uWR4HV2Pol1yHBIzAsYyOxG+QPxcLBV8sa5WzxBMihFUOIw8y3FG91q7ubu4NIe6aaU/
         KpJVhBLMQ8H4w/nTH15V0eeDWoOgpQ3EQq4A07IRIx9uleGBSpFP6H3K7q6D6W1udaER
         UcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758841333; x=1759446133;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5gwAQTXSakhZvQOQM08TD3GgH49CZaXuvWMWE4dsR7I=;
        b=T07N/vauRxZOxGT4x2PkSlV0I0qtEJuMnTVqj8isDsai99NGQFdyElDEaw+VL7cuD7
         2A85wYBTa8Dq3M4WEXgXc26jwobGyqjDVW4hI15//4AQwemAim8JptBXkF1fDCqwBpEP
         t9NtwFTTQe/05rUCeaBnLO1PS1fvTx9G3rQIjBW26XCRfENZ1pAvgVbyU+xJqDAnNyu2
         D7V0VSh3zMWTHX9OaZIpf/RkIetS/Nd62PVQ4C5sBfTyD4fOFMNnmvIH2r/lFN+vQ7uH
         hR1iOW6n8q/9MwmVo1jXNEkpiUYOuorhZNG9BIAK7U/q34P/bwUnCtIMmuAA40Sb0Mlz
         ST5g==
X-Gm-Message-State: AOJu0YzxghEWSUYwVeYZb0+aBMT/9Zo5taajpzLfLYe5txD3Cl1OdPjE
	RJtU5ogXu3szQMTN5kVJga0WlA4FL/pojQd8yRJhB+BWkBQFyoEFDqkpW9/oDeOtPvwwK+3ebOf
	FvVJu9NXl2O/ZOZkLeCUfKWNDk32aaVrvAh2t/4reF9EcZzRPTUAI
X-Gm-Gg: ASbGncu4NXrsHayeL5b26okoV1Gmh4+c9QntU5hPrqZUspELJiEU6oUOCYTz7RPPbEy
	WbNLScB7xGNa6dbGnbPTJ+JmeG6YE3ni+Ix/vU7Luqyw6EX6RI+/5kYktCLvC97YC3ChIWkS/Xy
	rtaInoZ65b3qJmmEl13zKksI+lFkK22g4E1HkiD8m/8e5r7qp6vBZhLmLDdlg8M9vAeIvn3/bIX
	y167KL80/Xh8t7V6SwoZbmO2wuR88ko77Yq5XAP1QRsw3l0xA==
X-Google-Smtp-Source: AGHT+IHk2A/wBiYcsVkWdlKpIRTGZ88EuyiOoeoL211b/lPx5O2MEEx2ktjlWl62ydD63a7nkhbYvO5GqN2tDrLK02U=
X-Received: by 2002:a05:690e:1343:b0:635:4928:f9a3 with SMTP id
 956f58d0204a3-6361a85bbacmr4293092d50.31.1758841332327; Thu, 25 Sep 2025
 16:02:12 -0700 (PDT)
MIME-Version: 1.0
References: <01010199830727cd-45a08af7-e323-4a81-99d2-eae1a97a1a6f-000000@us-west-2.amazonses.com>
In-Reply-To: <01010199830727cd-45a08af7-e323-4a81-99d2-eae1a97a1a6f-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Thu, 25 Sep 2025 16:02:01 -0700
X-Gm-Features: AS18NWDclngW_g03NSNm5Wv-dVGP_kINq-mz8cpHIigTgOclKN8td0LeSQQE9Qc
Message-ID: <CAOSpxdZdx+k=EyHuPS66FfQgok4y4OwRzxh6fDWFyzFB-3P0_Q@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-5.2.4.rc1)
To: yocto@lists.yoctoproject.org, pokybuild@yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Sep 2025 23:02:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65877

This was an "all green" build, so OK to proceed with QA

Steve

On Thu, Sep 25, 2025 at 3:38=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.2.4.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.2.4.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2442
>
>     Build hash information:
>
>     bitbake: ac097300921590ed6a814f2c3fa08a59f4ded92d
> meta-agl: cc6c5d45fc4b637c3efe4b8d1c7c76935607cea9
> meta-arm: 21894cc2ea3197e6bfc1a56d889f757a09dc8b31
> meta-aws: 69902e35f283195a87a3746f91177f0a361f6746
> meta-clang: 003cba92e982bdd565a6889f28799f8bba14957e
> meta-intel: a75e59bdba66fa6dcab8f2208e73fbf2fc576457
> meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
> meta-openembedded: 80ab58cc404959ae2f0e8b2e68935b3bfd8e8cfe
> meta-virtualization: 898239e810acbb7db93299f20deec8afe434f11b
> oecore: ff1c54df4e7b15df2e2c9fced59d9ad3e92ed565
> poky: d0b46a6624ec9c61c47270745dd0b2d5abbe6ac1
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
> View/Reply Online (#65876): https://lists.yoctoproject.org/g/yocto/messag=
e/65876
> Mute This Topic: https://lists.yoctoproject.org/mt/115439655/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

