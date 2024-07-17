Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40614C3DA42
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 08:26:23 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.10395.1721204772996214450
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jul 2024 01:26:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TOI2K2AL;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-426717a2d12so3033385e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 01:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1721204771; x=1721809571; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zCIPUJFEkr4kGRB3xAVGZgIyD2lwDL6F+mZbM00AD94=;
        b=TOI2K2ALY6QDktgsO9YcbJy4qFr6ttgQxhLrzhhHWd8yh0OWkyalpEstzkHo/hspKS
         91ycBaL50+vAZu0w7hFQJsbgLYYc6cgR/yR1V+5Qa5l9EgGf6ouxjTU4gfy8zXu+YVdi
         BQWLc151iP/3Gk0q7N6BQ+4Wz/U1D1fFj6oms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721204771; x=1721809571;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zCIPUJFEkr4kGRB3xAVGZgIyD2lwDL6F+mZbM00AD94=;
        b=KTLPg+20mxBWK4P+fElsAWnUT/SsfkiVMJ0NpOLued6JIxRXCFTak8bhxJrV4WiqVq
         JkB3+4iI/9sOkTuR20SHymnGM38JehCWwdw/dBt2HJKmrK7zgE/X7mwEN54WvX25BLTW
         n+DB8h4xSPebI2qfefqRH6AJGMA6OYtz8vo3/GBrLQyL7fiWrt51aj5bi6oWggZl9Jmv
         b/8f0jHhaoM0WoPCsyIm6xx1uBKulxdzqhh6UK7fmRhV1fAP1pnQbwC5Rfkwz2+MNNE4
         qHTegWsLFUATzL21TESAXzqJAgyp8IDg0eXv6Yv01hGsDfqe8yz5iG3lfi45CzsCTbFK
         OiyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbVwi65aasfSsfI4mqBsu4GfT2parK0veB2JsyG91wIQqlP0FDoQ7RgKabR6WFG0XgkWJskh0hO36rh2eVG5brDdwD1pgNxx9x597b
X-Gm-Message-State: AOJu0YzhrSl4oAQL0j49WS2P8XymPTUu7hXYlqvFaZkkfzDO2Vyp2ZSi
	TpXPT/zUkAJqONJVtQkzzJy5FYTYGWH5pHEKd/UZSVq4bqayjx7iS6Vm7evO1JbZGNhCLs8XYK8
	U
X-Google-Smtp-Source: AGHT+IG8RklU4dhgB75TXn72ickq/FSI9vV4hl+/B2jXkdNDk777xbj/aM9xUtoleK+sgKBrA4dDIw==
X-Received: by 2002:a05:600c:1e29:b0:426:5cc7:82f with SMTP id 5b1f17b1804b1-427c294ae1amr7224055e9.13.1721204771134;
        Wed, 17 Jul 2024 01:26:11 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9a16:3e6:efff:89c6? ([2001:8b0:aba:5f3c:9a16:3e6:efff:89c6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a574e1f3sm162944925e9.0.2024.07.17.01.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 01:26:10 -0700 (PDT)
Message-ID: <4feaf895021c02ac49f0ad09d54857ec957bd442.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.1_M2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>
Date: Wed, 17 Jul 2024 09:26:10 +0100
In-Reply-To: <01010190bf027a1f-d75a0402-7be5-4a91-a98e-e1905f9e0340-000000@us-west-2.amazonses.com>
References: 
	<01010190bf027a1f-d75a0402-7be5-4a91-a98e-e1905f9e0340-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 08:26:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63520

On Wed, 2024-07-17 at 04:45 +0000, Pokybuild User via
lists.yoctoproject.org wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.1_M2.rc1) was complete=
d on the
> autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://autobuilder.yocto.io/p=
ub/releases/yocto-5.1_M2.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7144
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 1d7360031164f04887c792fb0b2dd86c6ccfcc23
> meta-agl: 3f3bbd3871e5a7a4e9e275e2c957b98515cc30c3
> meta-arm: 14d24b5526298cdfd6db65b6e11b54804a6a553f
> meta-aws: 4d048eacb5cbdaeb3f37d0427cc8a810a8ba7b69
> meta-clang: 1fdde55d951b7a8f1e537ccf56aca2dc90c40091
> meta-intel: e97386254712047f27f5554da6470fe3fb65d07a
> meta-mingw: e4d377d5ddb62b265536bd33dbccfbb0904f8701
> meta-openembedded: f8342855a440fa5c4194fc57285e8db9e034fcaa
> meta-virtualization: c138943fed29e768df990061c30d6f071b98ffc3
> oecore: 758508614541c68dd6a2b7084e07287c71f40a8f
> poky: e18d60deb0496f7c91f2de900d6c024b45b7910a

This build had three issues:

ubuntu cve-check database issue in oe-selftest:
https://autobuilder.yoctoproject.org/typhoon/#/builders/87/builds/6974

qemumips ssh test failure:
https://autobuilder.yoctoproject.org/typhoon/#/builders/102/builds/6318

meta-arm systemd boot issue:
https://autobuilder.yoctoproject.org/typhoon/#/builders/113/builds/5756

The ssh test failure on mips is likely load related. The meta-arm issue
was seen before and appears intermittent. The cve-check issue has been
seen periodically and needs investigation.

I'm not sure if any of these should block QA for M2 or not, input
welcome (TSC esp.). Sadly, I feel relatively powerless to do much about
them.

Cheers,

Richard

