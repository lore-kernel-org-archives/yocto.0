Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CD2AC27C53
	for <webhook@archiver.kernel.org>; Fri,  7 Jun 2024 12:52:30 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.40826.1717764740271199552
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jun 2024 05:52:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dlidn9ba;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-421757d217aso1956765e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 07 Jun 2024 05:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1717764738; x=1718369538; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ckX2fe/0nUY6L2C4WBSX7GEjozWmkTSlrAaSjRZr63M=;
        b=dlidn9baV37tM8l47T4goe6H9+ha3jj4I1fLK3FkA2FHlSldGwFTA2vtixA1zYyA2f
         DQpHMXMR/X67sbNMFnlEZO0koplpdBlf+oPlQFMnfUj8d0+cU9V4TU5HB449Y2a9AeP3
         x3/lIdgOg2JUyfEj4KDi9ssbGqn0F0XutVLb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717764738; x=1718369538;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ckX2fe/0nUY6L2C4WBSX7GEjozWmkTSlrAaSjRZr63M=;
        b=u/4vZPu8SXWtozEDm3yl0gnYnnTHNU68BnR/XGiKJ7n3sgAd8K4q0vzW9REe2+Pgsd
         9+m+P1sRAqgeeZaBcz8qRJ5glIYQaS16SH9DxwkW5ruD2mSoNLaDl5sJv+VHlxJPgXFI
         ftu9jV1nsp+w9K0tEHoXTrHKix/NO2isUHcLVqS6Yq8Ttq7I0kTI8nTD1SCp8uScYzJb
         m6rQUPQ/TzqGFh86L8+l0QJz/Z91wZ+Yhg9HstNVDU2CN3TVDDxgbFT+rCkHG1cqNwip
         VsN4tQBg9XAgKLXnt+Ye6drffzJF6FXTUJIhEZ2IMK+LhCFrcNLWqXSCbL0+KQ5wcOJB
         HP4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWyWKrsNtxd2USQhpU+Ziq6XOmqcS8dIMVSHuSHmBUSd3tXeLrnSGy8cH9xLXlWQXjq25wjx71sIGTmAVqJehsP/UbnweHU24uA2oJE
X-Gm-Message-State: AOJu0Yxt5gNDZj2/lOOSru1fNGLs6j12Hh9fMk+a1h1sQrI6O47Rv8hb
	cNTMFsFUr/H83shIzOLi8vnnCti8QhCzxwSH0I05QwRHRghpA3a0z+7N5uWyPw97GmFrLY1F0Il
	j
X-Google-Smtp-Source: AGHT+IHOK4KG3+L4o5ZWuLbGCmy4JrBD+foCiPR2e+VYwCL24YWLPUECu9ogFMTPsBm55TboFBFFpQ==
X-Received: by 2002:a05:600c:1913:b0:421:756f:b2e8 with SMTP id 5b1f17b1804b1-421756fb522mr4719685e9.11.1717764738254;
        Fri, 07 Jun 2024 05:52:18 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:910f:5798:f456:d86d? ([2001:8b0:aba:5f3c:910f:5798:f456:d86d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2cd2d3sm51889605e9.41.2024.06.07.05.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 05:52:17 -0700 (PDT)
Message-ID: <a4e84e2597a18eb31644476e38bc0b65da47c375.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.1_M1.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Fri, 07 Jun 2024 13:52:17 +0100
In-Reply-To: <0101018fe7819c42-92849e6f-1a80-409e-9100-713586c8ea4a-000000@us-west-2.amazonses.com>
References: 
	<0101018fe7819c42-92849e6f-1a80-409e-9100-713586c8ea4a-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jun 2024 12:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63297

On Wed, 2024-06-05 at 08:26 +0000, Pokybuild User via
lists.yoctoproject.org wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-5.1_M1.rc2) was complete=
d on the
> autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://autobuilder.yocto.io/p=
ub/releases/yocto-5.1_M1.rc2
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7008
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 23681775e5941e54ebead469addf708fca1e6beb
> meta-agl: f65060f370e8834de0229c6074c6e4326bdd04a6
> meta-arm: f5ebb36c59b6eb847f45713a1f9b08a88f9978e1
> meta-aws: 15bb71aff6bcdcbeeaa21a0e7ec915e0e90fae39
> meta-clang: ce7d354da7a498f90ba260c006d29a4d23e3b4f7
> meta-intel: 4f4e6d763cf2e7d04eaa8db65c0bd3e8c3b689a4
> meta-mingw: e4d377d5ddb62b265536bd33dbccfbb0904f8701
> meta-openembedded: 446560ab41de5e29ef5dfb556de1149e76a80367
> meta-virtualization: e96da98e4038f5388596b4294ac3d8425b2dacb2
> oecore: e068ba7d6b91237f9dabc2050c9473bed311690c
> poky: 5fc59beaec099cd4a78b38fb0686f377bbe7dadd

There was a failing bitbake-selftest which affected multiple builds in
this release build but it should be ok to release since that issue is
well understood and has since been resolved.

The meta-arm and meta-agl-core layers are also failing but this is also
a known issue related to recent changes in master which those layers
are still catching up on.

Cheers,

Richard

