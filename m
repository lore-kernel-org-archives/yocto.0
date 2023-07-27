Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AF79C001DC
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 09:53:49 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.3854.1690451618531034590
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 02:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FN+ZZOPE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-307d20548adso802916f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 02:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1690451617; x=1691056417;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tHm0H2ZeBoWqZscjVIx5mXcgYVuJgSavvlIPkNPG9rI=;
        b=FN+ZZOPES+j9VhGy98nG6oFWhumxjv+EYl31e6QDy3iUOoq6dyDj4WptswAdd56H7N
         1V76UjaWpVZSqgdStArS4teTPDMo0y5j549ZpACxBM+0TLqjwdtrszFUFhdJIDvZBG26
         nX+HSlga/CybfKlG+CgVMPcpy6WJSoeYfKZK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690451617; x=1691056417;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tHm0H2ZeBoWqZscjVIx5mXcgYVuJgSavvlIPkNPG9rI=;
        b=hHRBUEPd7Y9xKoAuXxZ6OUxHCsU6cB6zEYSmbicNHjSEwHOQkj1hdADrdKyZPgPm74
         HsdEikZdK4AzcA34mB8Amq24gPDFs88IKIuTYBD7Cd+DP/vl/5x4gZc6kn/MricFRQAB
         swO3IXrbLTBYN/Gr0tJ4vUwu/txPSfZT2C32PgO/cBrNiTy37vPSDJKi94Aib3y8Qf+a
         EL2oK2eM7QWwbHEFqbEltZNCaEY4YukLSninfnRh69AqNk/WogMxW+yLEbtLlWFmPh9d
         zKdUKLf3kVpfQ0aao8D1MfvIzvs0EhUhRttOwFVix60IyiooCPoYASO8yizHDBPBbw9o
         SVLw==
X-Gm-Message-State: ABy/qLZCQlpaI3X2Vc4whA7OcsV+6WbhpJ5abyb8svegrFDCrJc89At6
	SNTMOCEgb3GYScl7DQu7uoPqTQ==
X-Google-Smtp-Source: APBJJlH0kLXeJioJka0hsP8O12j3dq6jRJhtnq5JAFZHpPJyEq8n8uLByhxXxLIw2WTRofgfgmuiVA==
X-Received: by 2002:adf:fa8a:0:b0:317:5181:90b3 with SMTP id h10-20020adffa8a000000b00317518190b3mr1380574wrr.55.1690451616626;
        Thu, 27 Jul 2023 02:53:36 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:efd1:4b49:509f:a1e1? ([2001:8b0:aba:5f3c:efd1:4b49:509f:a1e1])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe8d1000000b003143867d2ebsm1548040wrn.63.2023.07.27.02.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 02:53:36 -0700 (PDT)
Message-ID: <cdb3ab7109b3d449d171bc925c3e9a1f261afd7d.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3_M2.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: "alexis.lothore" <alexis.lothore@bootlin.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ross Burton <ross.burton@arm.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>
Date: Thu, 27 Jul 2023 10:53:35 +0100
In-Reply-To: <0101018994c968db-984564f2-0172-43ae-a91a-82b306fdc587-000000@us-west-2.amazonses.com>
References: 
	<0101018994c968db-984564f2-0172-43ae-a91a-82b306fdc587-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 09:53:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60661

On Thu, 2023-07-27 at 00:39 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-4.3_M2.rc2) was completed on the autobu=
ilder and is available at:
>=20
>=20
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2
>=20
>=20
>     Build hash information:=20
>=20
>     bitbake: 64bc00a46d1aacc23fe7e8d9a46a126f3a4bc318
> meta-agl: 25410a640b879405d4f93585f3d74c328f487cad
> meta-arm: cfcc8a4d13c26793ecab2d8da9274eb98b8cb4ce
> meta-aws: 86966086b2dfabd7113253bc5647f87fd6d42423
> meta-intel: f2bcad2943b11b8c9d9ecdd25551a841ba98eda0
> meta-mingw: 92258028e1b5664a9f832541d5c4f6de0bd05e07
> meta-openembedded: 74e70284acb2eb2f2a47a1ab1aa5ee0928d46344
> meta-virtualization: c5079557091b215663458807a8f617752614a6bd
> oecore: 6ac110c8954e5fdb71d5495e3eebc1ca3958dc19
> poky: 3eff0eb5ea77de20d85a2ffc64652579cbd7755c
>=20
>=20
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20

The regression report for rc2 looks better!

https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2/testresults/test=
result-regressions-report.txt

I particularly liked:

"""
  Additionally, 124114 previously failing test(s) is/are now passing
"""

:)

It does more clearly show where changes occurring which is really
helpful.

Not sure why the duplicates appeared in=C2=A0

https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2/testresults/test=
result-report.txt

it appears the arm build was triggered twice from the same a-full:

https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5203
https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5204

and I have no idea why it did that. I'd suggest we just filter the
duplicates messages out the final report.

I am a bit puzzled by the ltp test counts and need to talk to Ross
about that.

Cheers,

Richard



