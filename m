Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4304C531C9
	for <webhook@archiver.kernel.org>; Fri, 24 Jul 2026 05:57:33 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13395.1784872648553280790
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jul 2026 22:57:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=asgxwIRJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-49554ebb87dso545055e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jul 2026 22:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1784872647; x=1785477447; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=DvgJKPMLmpV+R1hFgQJtauYFvy6eP8QlrDw3YYTXr6g=;
        b=asgxwIRJa0sIFfHpGYb3TmYow1m8/ZG05YxKS0ztm+yPrGVr1AwaDpfM9hFLkbonht
         Y4qVvWwOITybFJT0hO4nsa6TITdVDo5kTh7Ye0iEoUVG1eEblAmPVYeeBYHFeraG8p3q
         hWheZbckiy/bzsrD8gEjhfV06+4t3Dn+FXbH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784872647; x=1785477447;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DvgJKPMLmpV+R1hFgQJtauYFvy6eP8QlrDw3YYTXr6g=;
        b=bM8i1ugGyU/2mLwWZkRI5Y14OGhIkN8y+Pm5SdhyxtGMDwzIbRdMXvucyKTDceAEHx
         WPJCpjoGmsJWUTfcX4I4la2E3bDY2syzU9P8r/eYhy/WLlorXFmrUluhVUlIPkmm49rF
         cFx3lLbfGpRHJgIzaIypaIaXhCIh7BPOqKqp4QNOwoMIlsporSBs0oHVYinqq1cN0lL9
         TaxETaY00bTcIz79z2PHsEYLcJSNIFPIskXarUI2cE+1YEOXwYdJyh88D7x/oYCCjeU+
         ioT35A6VxQsiuKvP+G1xquV4Gp8Uy2NjtxIV7aLl25PQFf3yQSZgo0stLLrAA0YwSbjl
         j86g==
X-Forwarded-Encrypted: i=1; AHgh+Rpco6dcham9yUtPZSPsEGRPgWyO4Qt50vqgdT0rhAd+vBJrSy4MZJSOUwBKegQGGQ0eVYqfPQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwmqU0CqvtEt1ivG1gzYZofoB8GTf2o+NrI5aftXPMLO2MjmpQK
	T2vZ75+bOY1ukZyAUN9WK0UN36Z59v712rNmDUolHQNDdSGnnO59aRnHiO0Gn2kRg8o=
X-Gm-Gg: AR+sD12JwEiunZEuwMl0BjEp52XFXz2JFk8jVqWhCwHfQU0D3iSJ4cKbgSi7wCWEeo3
	0Lm65cZNXazCiMV74+4KzIRG32bn7E3xgXykyfQFmgOEkAxSZw9Lb4z2xWjezk+LBLrQfZd5+DM
	/ZaEQfFBKQ17yRhzYa2eX/0OrLgmaP2hp1bQt8Q3/iyzgfFG7SAOhk1O38y1T+E1xZCqKVK/JHu
	7gIlRUy7jFIUbDmalFw8dX0ERUHKmFxV/qa4cZoShnmOdrgNXkShd6JAM4/WFBSM2kXZWhAE4Kq
	HR6ODEI5UEQWaD/xB3rHVKIaOUDZ3TPhVhKhOOFKBd6KNVsmDdh4FRbGy/bulmtprHj+WIt7jg4
	HRbGtTNy8C42CU9429dbdUtScFqz402k9kAwT5gRcSyy3XX2AYnPkwXUgSSUB7N7R0EIq2WKpdn
	6vlear8kmygIoxXyaD0jM+c+5l/TvpwIq9cnqZS+SFx+8IY5bPXa1CSuZgql2mevYdlcmGVelAG
	8aHfQ==
X-Received: by 2002:a05:600c:35d0:b0:493:f442:3dd4 with SMTP id 5b1f17b1804b1-49573d3e4b3mr62084665e9.39.1784872646680;
        Thu, 23 Jul 2026 22:57:26 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:73bf:a453:c7da:5e98? ([2001:8b0:aba:5f3c:73bf:a453:c7da:5e98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4957af78639sm43062075e9.7.2026.07.23.22.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 22:57:26 -0700 (PDT)
Message-ID: <bcb8e9d6ef10a03f17b67baa7aacf7bdba848f0c.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.1_M2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>
Date: Fri, 24 Jul 2026 06:57:25 +0100
In-Reply-To: <0101019f915a92a8-79648cca-c930-4256-9147-708fad3e7515-000000@us-west-2.amazonses.com>
References: 
	<0101019f915a92a8-79648cca-c930-4256-9147-708fad3e7515-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Jul 2026 05:57:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66660

On Thu, 2026-07-23 at 23:40 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.1_M2.rc1) was complete=
d on the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.1_M2.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/4274
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: c251833d2062ef92fc7e77ab6456af928ad1d31a
> meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
> meta-arm: 167661762b7d3985751fff066b5e7355325f3ecc
> meta-aws: 64aaf5c905b47bff49060e217ee96bdd8423707f
> meta-clang: 0baedd06e78d26d3b927471cfd91960b7229a178
> meta-intel: 8877caca6b1fe6efe33c756698ce6ecdcaea2238
> meta-mingw: e2aac06ec74e46d08b7e68f61043047c761ae9f9
> meta-openembedded: 2dc51e7171cc94b55ae8cd72cac183bc7293ea35
> meta-qcom: 2eb6cef3b3c25cf80c57e8b76b1b573770465a2b
> meta-virtualization: a4987f0af6f30883e1dcd52cec66311343241d6f
> meta-yocto: e4690557fb0fffcb5e9a86d1c1ebc550bb0da090
> oecore: c0508fbea8d26242e0c761d412d727943f9d6355
> yocto-docs: 358519ca6406a89fee42c45dcaf63a37a374f33c

This build did have some issues:
  * meta-qcom failure - from recent updates needing updates in the layer
  * meta-aws and meta-virt showing license warnings from recent changes
  * weird selftest commit hash issue
    https://autobuilder.yoctoproject.org/valkyrie/#/builders/23/builds/4412
  * warning from alma8 workers being offline

however I believe we should proceed with QA and none should block
release. Can the rest of the TSC please let us know ASAP if anyone
disagrees?

The regression report does also look large from lots of ptest
mismatches. This was from the musl/glibc split which is confusing the
code. This will need some further thought, they're not real
regressions.

Cheers,

Richard

