Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B26C79FB7
	for <webhook@archiver.kernel.org>; Wed,  9 Sep 2026 13:28:48 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12231.1788960518138251861
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2026 06:28:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=V49Ibows;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.218.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-c15e2dab83eso1020078666b.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2026 06:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1788960516; x=1789565316; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=G9imwrMA145o9crqrXXrQAa4dEaRkm8UE8MZcdy5FNo=;
        b=V49IbowstLtmZUVK3QSAisbJYShDIf/MMOnfs1uXaEhd9m3j04SSMkMhhH+Edalf3z
         b5HiIHw+VosrnbQvZkcweRjfnOicGGitbhSJAg0Ytdye3oEPkV5c7XiyZXCQnNQppFkR
         bUH8jGpcGmaFvqZ2jB3L3Ocn4JTfi2S3kPoXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788960516; x=1789565316;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G9imwrMA145o9crqrXXrQAa4dEaRkm8UE8MZcdy5FNo=;
        b=smIlNpl/u4Jlp3uJnGJAeoy+L82+drgsoDNFdvDBnbR19HYCuKJSHpghKwCC+sQlkI
         apY3nUQD6AW23GWHcRjiIxZ2wLqyqJpiK4Oj2xtP7eSx/Avm+NwoXiZ+cz5mzditdkSH
         dd1NQOAOPkOhVJ3mcELErrLngWiNmxm05Vpn0oR1M5QA0ogEGTS/sUcqlHXsO+s+N2MC
         IFhvM3qYkmNsUrSW3xccIGsISle2afI3f1qoVF1oekbJByX6P+fLp7h8JHXrjmT/luJk
         nVTWPtzz7ybk31akDdq0wg2tgrD0MMtr4uZoPEuOYIuztEZlcUAUUIEitw3FRHXYg7nU
         hVRQ==
X-Forwarded-Encrypted: i=1; AKwUvBzInZQk3eQQ9y5sckTwW3lT45tEJ3anwlj7q8TE+CpiQBp5zPK+r4Hh0dncyswDzf9Xe/1a0A==@lists.yoctoproject.org
X-Gm-Message-State: AFuF++mHkOviTNKXDHtElZouD6wjQzRLf9id+Rlqn67b+u7cWlb4CtZ7
	UI5OOMvTKpfvWrKPS2iQb8BrWH+PHDFeqjW81ReHfHIyGKApMJeVGT+6kYAAXrDXfDZFv6LIotb
	4UeDa5tc=
X-Gm-Gg: AYBFou34V34Jd5Bz19RMNtnGGLMmCUUlYMR6HmZ2FVm0lE/o8UAYNc7tq9ixBA12tGy
	bMSwZN23Lsx+SluiiDCBHqHJrv22QWkyjjeKoqUcnKtDdfMcrW1586MjxK2Lmr3KuTLUJx9RH7B
	IR6TacZJlRnKQlNlFvQfk1Y1xpM9lvZR+inS52/29Cf6MTMgcAE5+67xgQj9Nmawg/4vxchaAl+
	xuiROpbBk/CNP/lBMUJeSYVmgRUHhragl+JfsgaqkbcvHjjm8heOWrNC7H7U07eOLLYd8il4tyh
	vjiDNFamiPB90y9oHyjwVCC+mddTKVgpXqp0aj1dRgJ678SkkXrJZ/a90rQPGslkU8xRbVEREPC
	ND++aUKAvrXsN+f1guQZIKcYvqZ7q804AhqsKg6csyz1j7mRJCx4Cd5doYpaCAF94X17XXGeCRw
	+6Sy8zNzsYAXDJDHyOQsjJE1sLFRwhtjCY/7VN263xdgEHwxqBSBE3DhELEvjmCK5Tmkbq0YznR
	RzywRJeX8ELvogghse+5wa7ARUAC4u7JUGg5iuVkr0HFI2U9Vlmvl6C0na8Dw==
X-Received: by 2002:a17:907:7294:b0:c26:19de:9139 with SMTP id a640c23a62f3a-c2619dea0f1mr1375562466b.44.1788960516079;
        Wed, 09 Sep 2026 06:28:36 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a320:8b5c:de4:61f9? ([2001:8b0:aba:5f3c:a320:8b5c:de4:61f9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c262f97f1a3sm603976866b.19.2026.09.09.06.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 06:28:35 -0700 (PDT)
Message-ID: <06b45424dd58b926a8f976434d53ffd932f4ea76.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.1_M3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>
Date: Wed, 09 Sep 2026 14:28:34 +0100
In-Reply-To: <010101a086555523-a038a5bc-9dfd-4244-be4d-20771adeff60-000000@us-west-2.amazonses.com>
References: 
	<010101a086555523-a038a5bc-9dfd-4244-be4d-20771adeff60-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2026 13:28:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66712

On Wed, 2026-09-09 at 13:22 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.1_M3.rc1) was complete=
d on the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.1_M3.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/4701
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 046a90b0e9b7b914b7a95aec579cdc3fc9c7617a
> meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
> meta-arm: b0ff16aba48a197070daff28ef7ad67067fd3d88
> meta-aws: 3ab2281500fbf683cfbf4fd43e449e0ef14c1164
> meta-clang: 5e16f9749e210fe9d17f1302b089ee98f8b71a47
> meta-intel: 8877caca6b1fe6efe33c756698ce6ecdcaea2238
> meta-mingw: bab5f06f3f4ea50185a8ddbf5d61b46dad9aafed
> meta-openembedded: cbec9a20d78add94235042c601e991574151e36e
> meta-qcom: 2832e2bbabf9a71755e031d396f17652e95bbde1
> meta-virtualization: fd4fa494c9878346e913ca9a7788bac0063a3ba6
> meta-yocto: 7e41504cd63b099b214f10d92cfdaf358ab98c5f
> oecore: 544846662cdac370497d7c13a125d8730c7ebd47
> yocto-docs: e35e86e9aea4e4ae12e8e0ba8a6391f2b2555b63

There were failures in meta-aws and meta-arm, a warning for util-linux
ptest on qemuriscv64 and a warning about the fedora44 worker being
missing. We'll work on the ptest issue in M4, I don't believe any of
these issues should block QA/release of M3.

Thanks,

Richard

