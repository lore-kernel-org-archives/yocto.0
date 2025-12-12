Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE15D59D93
	for <webhook@archiver.kernel.org>; Fri, 12 Dec 2025 20:21:03 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3051.1765570860433279943
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Dec 2025 12:21:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=q+uqSN0Y;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.177, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-787da30c50fso16878227b3.3
        for <yocto@lists.yoctoproject.org>; Fri, 12 Dec 2025 12:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1765570859; x=1766175659; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sK+87JlSLThLSxvqL+WTwsrx472699Gm2AeCSreMAp0=;
        b=q+uqSN0YplVjNBfW1NhO1nQXZS0EeKJ5mSqtry6eBqTbdNDDMlcXYo8ZolCSLSQKTv
         1pJcvpEz8PCjSgFxNMPJEsSMWRxvUPl23CR/QvBxFu2rSyITMG4KxGsMuldyM1Uzc1Tz
         VHEf8bPDyJAS8abDY7GW5J3KNULhzzCIbUPxDCQJeAaY5lv/0QiAwQprs9Xq9EGYYxWv
         Xh4ykgIPwiTviN9znyWdzrO4mcpBVDohzI07vnDU++HkO7vz87OPTEnRk9V6OCwUk5+Q
         DbcVtVgWKAkb6oav9ttjA0cSQkuKDeAMSFuHPC7MLCz2SqZ3C3/oGFStbJVs0TEsSj8t
         hcVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765570859; x=1766175659;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sK+87JlSLThLSxvqL+WTwsrx472699Gm2AeCSreMAp0=;
        b=eQ/lwk9X45me+cVb+o9QhY5OeNtVbuCBJ9JAWmZRA8EIqNBGiW3Mq690PWpn7HOiZz
         d/vH9H3g13J0pYraRUj9fFD2dB7fuFB4RCX+SDF4D6YoVMaz565HMs3imYiLnTvZxMAp
         01eCkOGMZmlmyAYcavPRWDcCF7jZPlz7wYm0zVPAGtt+k+MKAvYBi3dTe4nvKAV7D3hR
         W5cWSNCJGzccD6ClmvMyfW2vuBWRVEfPdiG6Q4Y55XMIk/9LntSY+JQW9OPk6QHWOck0
         t4Bsvmx5D17JX+Sr9Qusf16tcsW2iMKexgBE0Na/Z4fJ5g0WIcDlZRfMVjhZ4u/5filS
         u4sA==
X-Gm-Message-State: AOJu0YxXzmIWPbvjHRt+RZ+dt5NPyZPMbLGXwm9sFC5BPXF7dewJ5xA9
	ubIGuEjWolhWLdx3paguQamIxvliNpZizVy2v0DXNLOxAHLNriTi9cVoGw2lGFKiYSHxfmEOQRT
	NA5mpCj0iKz+Byd7vWPmMHPy9K0mYAjkbdF1CmqoSGqCr82LipEDo
X-Gm-Gg: AY/fxX4IEngKtvU0hgzGNwAaP/B5hzTgVFF8t6XIq6poXr6zcvKfbeYuD6CcImklvIy
	Ayl0r8/PrZmpeaRwgNiKaP2pcFEiZKWR90YoBIAlOWE5jocS+xowyb3hMC4uMg8xyPWbglujNll
	y3fehJfjm9rca4X4GiZFPKdqDNRzVcjhfk50qq9y45giHdBgoaHQWflvd2raJWE+IRgCQ56QZcF
	3iWXzqYz6QrIMRI6+mlmDFbDVUPn+Mbm6ATyXZRT/tPlZ8MBBJqVrCwS0qtYAvysKtLeKbw7cd8
	j5oWMBZujfpD4iHDjzaM6QyC+ds=
X-Google-Smtp-Source: AGHT+IG0C0AB0XMU6rtxgOcm5SkuTDDAU3xt0jZXEHqtt/NiyZ+C19wJmNcSBIG3AMvf+ygcklIzH1hTbq+tDTCQ6Js=
X-Received: by 2002:a05:690c:7489:b0:786:7a54:4624 with SMTP id
 00721157ae682-78e66ca5ea5mr56606877b3.7.1765570859385; Fri, 12 Dec 2025
 12:20:59 -0800 (PST)
MIME-Version: 1.0
References: <0101019b14356c46-c067d30b-d4f1-4c27-9264-0144cc80b869-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019b14356c46-c067d30b-d4f1-4c27-9264-0144cc80b869-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 12 Dec 2025 12:20:48 -0800
X-Gm-Features: AQt7F2pjEe74FE1UG8zcGGLc_4POqtJmL42Gr1FknwDa1FxkvDTaFwk_AcFOA8I
Message-ID: <CAOSpxdZOWKydf+zdwawyPSpf1A+yopNynPMQoJzZy1g2g72uRQ@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-4.0.32.rc1)
To: yocto@lists.yoctoproject.org, pokybuild@yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Dec 2025 20:21:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66110

This was an "all green" build, OK to proceed with QA

Steve

On Fri, Dec 12, 2025 at 12:16=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.32.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.32.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/2852
>
> Build hash information:
>
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: 3dc8b04c14305720cf7e92bbb9e541e03403764c
> meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
> meta-aws: e27c0573a292038f33f8d1fca05f02257ab1011d
> meta-clang: 26de1c560ef3caf3cf641cd54ed0b7cbdc219ed9
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 97d4be2839754dadfc326c21948472c2fc2985ce
> meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
> meta-yocto: 77b40877c179ea3ce5c37c7ba1831e9c0e289266
> oecore: 2ed3f8b938579dbbb804e04c45a968cc57761db7
> poky: 2c05660b21c7cc1082aeac8b75d8a2d82e249f63
> yocto-docs: 4b9df539fa06fb19ed8b51ef2d46e5c56779de81
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
> View/Reply Online (#66109): https://lists.yoctoproject.org/g/yocto/messag=
e/66109
> Mute This Topic: https://lists.yoctoproject.org/mt/116752727/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

