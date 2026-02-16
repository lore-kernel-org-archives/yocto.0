Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DEB8E81A49
	for <webhook@archiver.kernel.org>; Mon, 16 Feb 2026 17:06:14 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.24457.1771261567200919909
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Feb 2026 09:06:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=FohKewto;
 spf=pass (domain: smile.fr, ip: 209.85.221.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4362507f0feso2228717f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Feb 2026 09:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1771261565; x=1771866365; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7NijkVtAZLCPyfFRMMvgt2pll+CCQjpEgFTG18HI8FU=;
        b=FohKewtokLIwKagngnws7lO3C/iJWNdtswSlO5HaEH0/dUk66urIxGRXzCrwK5jQTA
         Heg1RYtJkXyNdtYeIq6i4jGXwxcjU08aBFfbYfbfFR0R8j2dd0Hr9dWF0euLXmHhP5kl
         J7O7NYLEuv8we79yMxAGjGHXIYIHI+BdKVRSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771261565; x=1771866365;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7NijkVtAZLCPyfFRMMvgt2pll+CCQjpEgFTG18HI8FU=;
        b=EWTzzZ8/sQOGT+wDnpaqVY3X8MJOZObnca3dLCCBdOZvy8kdldvE9MfSFgoTChvTv1
         rwK9yQmuIWMKqQCeVzstvG89SRDKiQU5tsx3q//q+fGcnT1Hl5q3bcsofNDrRuEaOl0y
         mOb/cEBFBDIWUziWsGg0U49zLWfev+ptdT0CBNoGonMUWnDdUZBALP/CyPmvlkSEFkDk
         cNWVLPXYI6mhNiPmMtJRDFDx+sVo9ueuO3hZ4X1F4G55FHUvxAkwy+P5kVDkMK6dGOZz
         UzsklvCPEi937WyBNqM5UWzxIulEzecc4UZ3WOtgrLo1KkQGhKYDIT9+l+yO5OsrQ8rp
         sLrA==
X-Forwarded-Encrypted: i=1; AJvYcCXWD/5p/P8j6KptzWsWBJnsRvuUYzWNjyTMDHev9U4vLVtG9TiPVvwdv50bBC77eXjnANYeLA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyO/XyeI854wdpXvfKJUAh882JpPdOeCSRnZAAnJuw8wnKvs95X
	SQhF77AshAZ0lg0x6Z3n7M3Zkpn/C7bPeR7bdUN6TO0HnACO8InyiBL81WfeuwR75fs=
X-Gm-Gg: AZuq6aKcPlQctvXhxmfYy7G9tv/ouQJ6vnudVPUGGmVwyJIPMhIbsHHVJV2uV1maWgo
	ecooYBDF1JUMTJ9dw9Sgc8UG782lfvez93IkQy0yj6Mxyv3t4LQxj+F7AbQ7zUpXG/IN0JQeU15
	YbMuUBodJEiB8U1WSdX4VNe1Yq4eqJkQNcnUhyzn5tadwc/J0wVlyAzgPt9NvlAB0VEPBWz14jl
	IjUXcw4XFNuFf5P/EEmm9DTzt0xJcuFyedrVupwnEdVrsYaqeWcla7fJwVdccsZXnQT+jJFtG4w
	lgYAGg86tW4XGSul0gpcrnh11G6jzWoS0jIDPXWFggKKrf16Qj6BWj2RRQZIV9RomhpTLywyz0c
	SqRmvW4drIV/3HIz2+TenZidqvgl1xJ0ZacdPnLP7zEt2Lk0Zia6iSeCO3apvthgHCs78Yp7Icj
	Sk3d44QG472YGkleKKdFDLoAprIB8Uxem3lzX/MT01WvBGkJQ8Z4sTtSGEgS4oiGy9zQM4c5mBF
	z24HXCAmfo4Nmk=
X-Received: by 2002:a05:6000:2005:b0:436:1946:c186 with SMTP id ffacd0b85a97d-43796ab19ebmr21975835f8f.10.1771261565256;
        Mon, 16 Feb 2026 09:06:05 -0800 (PST)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ad0166sm28652556f8f.35.2026.02.16.09.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 09:06:04 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Feb 2026 18:06:04 +0100
Message-Id: <DGGJTLFHMYYA.15VNQ8O8A10LR@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.16.rc2)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <0101019c6759c149-effcd63a-6c4d-496b-9059-b54370d7c341-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019c6759c149-effcd63a-6c4d-496b-9059-b54370d7c341-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Feb 2026 17:06:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66244

On Mon Feb 16, 2026 at 5:47 PM CET, Pokybuild User via lists.yoctoproject.o=
rg wrote:
>
>     A build flagged for QA (yocto-5.0.16.rc2) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.16.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3228
>
>     Build hash information:=20
>
>     bitbake: 10118785e4a670bce4980e1044c0888a8b6e84af
> meta-agl: 8611917335f6d1f5b29ea495c8f4c2c914183e8a
> meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
> meta-aws: 1a9605b6c4787bf20fc90c8801c36822760b4bc9
> meta-clang: 613362523f3bf85ff4862e2f1f00113b8d2028be
> meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: 7a5075cef77b5f7af454e9868e1d0019f2fd1394
> meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
> meta-virtualization: 8b1543e121deda2445f80f74d85c10316d5b31f4
> meta-yocto: 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535
> oecore: a1f4ae4e569bc0e36c27c1e4651e502e54d63b28
> poky: 1d54d1c4736a114e1cecbe85a0306e3814d5ce70
> yocto-docs: 369f3307368eaea605983e80047377fd19ebd6bf

This was an "all green" build, so OK to proceed with QA.
--=20
Yoann Congal
Smile ECS


