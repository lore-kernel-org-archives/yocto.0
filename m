Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 477EDC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 08:57:24 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.40378.1702889840972027863
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 00:57:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RldbTpOM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33668163949so571887f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 00:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1702889839; x=1703494639; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9CjD0gc+D6gSDfjQNFksQ0z4lYno0K9n/WHSSGhEKy4=;
        b=RldbTpOMyfBjvbX/XDb5AS6UzzQnOOwCTNyBGhw6q7DKV1M0OAV5pCbet4ZziZNJQm
         Z9XCpGtU+3EhPATD1EkYmdr3ghFQwymuy617eui1MSscnTkfAcS/q+6oG0PiUS1hNM1u
         yCfcNnG0bantedvlEUHLfImisWr8S7+ueXZF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702889839; x=1703494639;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9CjD0gc+D6gSDfjQNFksQ0z4lYno0K9n/WHSSGhEKy4=;
        b=FT6ZpyM6Hj65xDnHDti4eBaqrNNdJkENX4WzC8nyQ+RxQ+7ZxiRHGzV87IL2lV2be5
         Vn3Owas1zpELQZs+UebEzLPANwtuvIuAjKS17V3FHpPV6U39Kz/vaDtytEZRaSQYhkIs
         VAZxttYoT8rZ4mHlw+ZYj82EqVSooU6gslz1V5vBS3v6tAS/XWB6FDh/Y4XK3e6vYGdt
         P7OG6SyRhBTS7UkliuC1v/McJpsj8lBJYQJapjtY4rTTA/dJiNUhQ29o5WeSO/O/3Xyz
         H+6cUs5eJJi3KD/hoCH28P51oAqsP4pIti7HdhYNE4idSANbdDaVPKrWxyQi8tSB2RA9
         HvKg==
X-Gm-Message-State: AOJu0YxwZA/Sh+W9CF1K8z96haeL/9/xEcHULlHqweepp2UEost93mMB
	Uvt27UJ6YoWJk2QbrIeFWoZ/Ig==
X-Google-Smtp-Source: AGHT+IHiXR49smgva7J0EIXgsoq3hdCeDfsqi8zfWpb6I+TE8cDtN60xSCvb4+q1QOx+f7hL3M5zcA==
X-Received: by 2002:a5d:4e0a:0:b0:336:44ce:5c95 with SMTP id p10-20020a5d4e0a000000b0033644ce5c95mr1953663wrt.135.1702889839128;
        Mon, 18 Dec 2023 00:57:19 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:a720:6e27:acc4:d591? ([2001:8b0:aba:5f3c:a720:6e27:acc4:d591])
        by smtp.gmail.com with ESMTPSA id z15-20020a5d4c8f000000b003366b500047sm968282wrs.50.2023.12.18.00.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 00:57:18 -0800 (PST)
Message-ID: <8b84b418dfc21a3a89e46439d64629e9476b4181.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0_M2.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Mon, 18 Dec 2023 08:57:17 +0000
In-Reply-To: <0101018c7aa9bfff-3d213d04-de48-4e71-84f8-3af5a9d3712b-000000@us-west-2.amazonses.com>
References: 
	<0101018c7aa9bfff-3d213d04-de48-4e71-84f8-3af5a9d3712b-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 08:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61955

On Mon, 2023-12-18 at 02:03 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-5.0_M2.rc2) was completed on the autobu=
ilder and is available at:
>=20
>=20
>         https://autobuilder.yocto.io/pub/releases/yocto-5.0_M2.rc2
>=20
>=20
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6344
>=20
>     Build hash information:=20
>=20
>     bitbake: 834e452243ff2eea6e8e2e7f4935b5233ffb4b00
> meta-agl: 266ac5373b4458d7fcb78b1e8948eb2b33f18b5d
> meta-arm: e6e7ac4d99f103d26a0ffefd6d0a5d2deef5b17c
> meta-aws: 7915e6bafd876ab3d654a26629dbf501479caae0
> meta-intel: 5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f
> meta-mingw: e01d47d183945caeaf3c5c086539af0a925ddc32
> meta-openembedded: 0a0ea87b8dda01a2887a525cef78eb6c3f4c2c32
> meta-virtualization: caa14c63f158fdd13382ccf1ff4e20a8ba6ad667
> oecore: bb9f2a9c0ff5dcdeaf1a0beb6a614d0d022a2481
> poky: a49de3ccc11faedf5a98963c39d67f8dd5bdf6e1
>=20
>=20
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

I somehow managed to select M2 instead of M1 for rc2 so this one should
be ignored.

The build has successful CDN testing but had two 2 outright qemuarm64
ptest failure issues and 1 failed test warning.

We could use rc1 or try an rc3, I'm open to input from QA on the
timings at this point.

Cheers,

Richard

