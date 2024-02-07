Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FCCBC4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 16:33:38 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.2054.1707323616301266721
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 08:33:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y4SLZOvI;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5114b1e8819so1249954e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 08:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707323614; x=1707928414; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SMIheBJNsHspKlUFOJCSxXZhz9D9N1Ohih8lcTAmJ5c=;
        b=Y4SLZOvItKPy/6VEJDAih+S6/DkIjz6FgGshsXA2qaL77xbOCbdk4u82J1Ypt9dxKO
         /X3p5ohMpnVaM33u4jpi625VMApXpasKac22yWj44FkBvee2B1DvCAjW3Fj6e2SqaYRB
         hkrE+Lxhpmpw4vJys9Obt1ePvR8DKPnAj9ZtFJuivQ/ViQ9y/a45z17F8tFFssOQ4QEv
         EBUMwlZua3XBjX9UgTRqJwku5o2HQS1KDa2+6g4kh/fjbDdGwkBjt6EjS/q/ElB19sJ2
         5SziAD2dR0qUc//EmOi7MlLCkLMpGnZFegCNEF0XRQyr4Zo9RQTk1w9cQ6eqNwxEXHT0
         83Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707323614; x=1707928414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SMIheBJNsHspKlUFOJCSxXZhz9D9N1Ohih8lcTAmJ5c=;
        b=advp/ZGV5qibonLzAzMPuaIo4sYb2cHPxbX6mxBmXUQGHoa4jpMGent6ny1Ap9vbcq
         hmbOpUZ2FK+ThKYB9iU1FSMSz0CwedNqndI0q2OJKrI/HVxyPhFg58ZsFo1bcBhZN9EJ
         RM3s1r8Q1GFbOXf0nWbIQ7U4MVPONetdO2dn2eAp1joqCcQmSBwrglnzWe/MS01ALU9E
         uQeyqIz1PRNT/dQ/RVN04m8ruo0+aTDTd8o7FY7trAd2JNtnGrJEy4XX99ujQ9kRcr93
         l3EwvFbXk2o0rKylt8AhvTktC8zNfcdAQBr/R+0F6B5IGDPW8rpiP2irfrTTiNDtY03S
         WFZQ==
X-Gm-Message-State: AOJu0YxCgh6ybSsOmoF3Q+pcL94hfQiYqRTk0i1rrFaBkbA++7Hp4/oj
	NVU8tQNXYDz7Z4913NZAvP6KRZusiXJsKMusWXyWphQJd0/78u3zugEcDv/Fd1Qp8F5I/56s6x0
	2h85qvDNVJgQTln3vF+iZxl1FnPw=
X-Google-Smtp-Source: AGHT+IF7HxTadRdqSmGkivvAcQhAlTOzB5wpGyRjusfTcIX5CPSAFkxTIB0u3SCYgoEUq/drOZS4NVvFmkabUyTX0EY=
X-Received: by 2002:a05:6512:706:b0:511:4f8f:fcc2 with SMTP id
 b6-20020a056512070600b005114f8ffcc2mr4648469lfs.14.1707323613932; Wed, 07 Feb
 2024 08:33:33 -0800 (PST)
MIME-Version: 1.0
References: <ZVzTDrwC3WEn4xCu@hohnstaedt.de>
In-Reply-To: <ZVzTDrwC3WEn4xCu@hohnstaedt.de>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 7 Feb 2024 09:33:22 -0700
Message-ID: <CAJdd5GbE2Gk6HNjmvEUkNNFVSF-m=3PguR9fEaYr_JcVkyk5bg@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] [PATCH] Do not reset error counter before
 each test
To: Christian Hohnstaedt <christian@hohnstaedt.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 16:33:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62419

LGTM

Reviewed-by: Joshua Watt <JPEWhacker@gmail.com>

On Tue, Nov 21, 2023 at 8:56=E2=80=AFAM Christian Hohnstaedt
<christian@hohnstaedt.de> wrote:
>
> Hi,
>
> Commit 56ed1082c4914c0ef3c72bfd609d68cc850557f1 moved
> the pipe-creation into the loop and resetted rc before each test,
> such that only the result code of the last test was taken into
> account for the final verdict.
>
> Only set rc =3D -1 if pipe() fails to keep collected test-errors.
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61726): https://lists.yoctoproject.org/g/yocto/messag=
e/61726
> Mute This Topic: https://lists.yoctoproject.org/mt/102730915/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

