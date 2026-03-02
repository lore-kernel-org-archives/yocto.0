Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A90EEA4E21
	for <webhook@archiver.kernel.org>; Mon,  2 Mar 2026 15:19:56 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.163017.1772464792098087764
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2026 07:19:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=h2CHAnSM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.218.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b935a74b7c2so614942966b.3
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2026 07:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1772464790; x=1773069590; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nM9azLUAiQLKUNKWe/pbNNv4XPX4NCg4GwYeZ9/LEkw=;
        b=h2CHAnSMS03lQWlgi+mGGp9a7g/Uz82v/95VZBf+tcOTflWQMbH53uxp2t6FBWzqs/
         tc9gem0k7W349tvBzvvcusJUaBRSFazTx9V7L1EN5XQH0EkFNajAuM4gJjvAIh5umOHK
         e5/0okIS2l927C7+0IR73qKFcalIQKzMQFarY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464790; x=1773069590;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nM9azLUAiQLKUNKWe/pbNNv4XPX4NCg4GwYeZ9/LEkw=;
        b=aKmYkeJfb9iTHGS8Y366xzBYNnxiId479/g9pY2BtNieUZ70IfrvPcT2T+hjNu/yeO
         1whWrqoLBBrDiMHbLuIIQkgkWnFarjUzSqXqmSZpus6ochnKj2f4u8S1hN4FgWJYEfGE
         4LFMPp+43friR5dUKWBwfMHd7OKWZiMG0e9ZxrSswozJ3rCNTpEwgwhhYAsfl6A1rBcR
         CZ2Q+8jF+DLreJgY23F4d6nYyswLoL4YmCGiHuUT03/I58vjZlQjLvM/P5VTD9cikHJ6
         1K0BBHUO5AEi/BhULDTfmHg1v/17BBpoXhULenMJ6x+y5XeMnaLH/4aTjSG9OhgindeA
         Ww2A==
X-Forwarded-Encrypted: i=1; AJvYcCWuoVnz8EiLvQrTyuabT9OXtegIsiPaVN0CabOaAtZyFAhy+twy+EyJ2GgfJwNxWFCyao/hdQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyLsQ2jvvcJzTLR7/GYAuWjyv/o+45QcLjyqHT3TirwEIPLuwuq
	QMYkbGvgob1bx1oUmSm9PrDUzu67xrex6ccis8LOnO9B7LbbiDxwjH9OWtX21vhxxfTWGALad3K
	whb/BHjI=
X-Gm-Gg: ATEYQzyvIGljRh0lI1iwgk7K+j8jd0z/BKtiNEvSQZYR/s8KKE7coHPNNTCBkkHmPil
	ZoupYpSH3u+DMlM0ugIgC6zOtrz4qyN0y9ADV3QoYZt+Z2+lYdq3VbzqUAPPTqzBG/zSYhjjovZ
	k7DM6HzTON4AOY2paPjV3ADG+htdcW8j5v4B3armz9Y5Q3lzygi4I9AtaCuohw3lWeoD4QW6G7K
	mmbh8FZMkI6csWKts9VJnYh1L4nga0Kl6U8IaLcFdNLB4ipR7b8RTaWJPv9vKqVLa97Hb+m9nTU
	KFhTcb2BL/t2NyaSCaRoltBvUhe8fvNtPeg7kiP1DarEvyO+3vRIQUWhiqvF5G0zakhU37Z/iQn
	TTgLTYwFgFSoCjpLxPkRkYjCbl1tgknDzw76NJGt1v8/tQ2QjtaVVv9qXGPTRE/UUq5Wcj5T54C
	+wIImO/dO9KnOhgJCJYFHOIvPZ4PbYsF4R3xILzAD3eTRNLHJBeewvhcI1AfIkGHn3hHHwWsYFJ
	nkQTEmr2nVGZTA=
X-Received: by 2002:a17:907:9288:b0:b8f:7c0a:f955 with SMTP id a640c23a62f3a-b93763b77d3mr854865266b.21.1772464790194;
        Mon, 02 Mar 2026 07:19:50 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:dd78:7aff:8be3:3eb6? ([2001:8b0:aba:5f3c:dd78:7aff:8be3:3eb6])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd522a1sm3529819a12.15.2026.03.02.07.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:19:49 -0800 (PST)
Message-ID: <55ddd958fb39e440b7a45cd9c18aa175c3e893c6.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0_M2.rc3)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org, Yocto TSC <tsc@lists.yoctoproject.org>
Date: Mon, 02 Mar 2026 15:19:48 +0000
In-Reply-To: <0101019cae57f45a-ae8dfaae-ad81-4664-9a28-1121fc1fbcf0-000000@us-west-2.amazonses.com>
References: 
	<0101019cae57f45a-ae8dfaae-ad81-4664-9a28-1121fc1fbcf0-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2026 15:19:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66290

On Mon, 2026-03-02 at 11:38 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.0_M2.rc3) was complete=
d on the autobuilder and is available at:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.0_M2.rc3
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/3316
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: bc8be83aef0a6de85cd33a6f132f281d518594f7
> meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
> meta-arm: b00fe8862bc31cd4b6f0299b6a2edb244f19487a
> meta-aws: b570577bf3ae3752e27bac15faf8733e45a01360
> meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
> meta-intel: b6c23896d3eee0f925cbe189ff1e67b3c4953353
> meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767
> meta-openembedded: 6ba45c1f94e1c2015df940ec9efcd4568346df56
> meta-qcom: 1a7b6b0363fa75232d46ffb9fd706b9539872e10
> meta-virtualization: 506d5af230f0b41809dfe754e84d5611b75c6585
> meta-yocto: f3b63d0d6882af61020bd6f7150fae68a0322f63
> oecore: be8cdcf13a658e9e81ff2f7b71d1c8c37a920ce7
> yocto-docs: d97cfeaa55ed42722998d3313c1857aa377f6881
>=20
>=20
> =C2=A0=C2=A0=C2=A0=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

There were two error issues with this build:

a) A ruby reproducibility issue in the docs package. There is a patch
on the mailing list. A v1 of a patch was merged instead of a v2.

b) A failure with the regression report generation due to confusion
about tags.

As well as some warnings:

a) python3 ptest failure on qemuarm64

b) Warning about duplicate includes from meta-agl-core

c) warning about fedora-43 not being a supported host (patch now merged
to fix)


Since two issues have fixes ready or merged, one is easily fixed, and
the python3 ptest issue is known, that leaves the regression report
issue. That will need more investigation/work but I don't believe any
of these should further block M2 from entering QA.

Cheers,

Richard


