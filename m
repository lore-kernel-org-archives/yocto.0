Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72727C0015E
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 11:01:39 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.4631.1690455695059700992
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 04:01:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bcbAMVWN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-31757edd9edso876642f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 04:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1690455693; x=1691060493;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YWsAT7qWOQIaNzMe7xAyeYCBBfWe26Q3fYlRtGnbLjg=;
        b=bcbAMVWNFIrpDx4a7xZwbifWSrBb2/ogKgfLrY4XCvq9c2Zt57x0Ppp8D4+6/eG3ws
         UvuMYvJ3V53H2ESGriz24R7HdPVoRn55pxqleW4wzvhVrUHMLXfDV8QR5+1ieJYNxq7A
         rxnuEEY8hldmWJ+BqqUqI0yv0FIKKrRqzYgg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690455693; x=1691060493;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YWsAT7qWOQIaNzMe7xAyeYCBBfWe26Q3fYlRtGnbLjg=;
        b=gtnUWXA7lHm5g4AuuWXv3W/BNbmIVo4Cqf004aOt95gM6yAOgTW1KByCpuClDONYth
         +xeflEEqXbR59ybPT6LD6CywYrS4rH5kAs3QaAKSN0C+EWw/V3LNI5JNcebT19VKFjtR
         JDfRYfRTvtuMOH/8RYRAS78uMmnfrA7QSWmvA/GR2r/qo8Qgt7lie7Fy4FLuPrZk/fHh
         cUj9NuH425v5kWGqGZg6ZMB1Fs0cPxH8ft75kiqLSBbZ0aCo6JCiskPwSdt8pvP+SvUP
         hD+BbqdT9ReRAMxCByEZxpzK64LAXDfgomwXfSX+MDoaJwZ9YkOkR+8KDudx2fszwYlZ
         kTRw==
X-Gm-Message-State: ABy/qLax0XseNPqHCXJDY3vuJjd6WI2kt4vDGeDziR5hmEcf3dY4faD6
	0YlgCLXZhiPgIx64dfhiDf3Fpw==
X-Google-Smtp-Source: APBJJlGms3D5LpKePGIzKmWZogiHo/MnqQ+axQK74f4GJxmt/N1WUV+U2/vb+WlQJrj2bSxoz4u3cg==
X-Received: by 2002:adf:e504:0:b0:311:162a:ce2a with SMTP id j4-20020adfe504000000b00311162ace2amr1425341wrm.29.1690455693198;
        Thu, 27 Jul 2023 04:01:33 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:efd1:4b49:509f:a1e1? ([2001:8b0:aba:5f3c:efd1:4b49:509f:a1e1])
        by smtp.gmail.com with ESMTPSA id z3-20020a5d4c83000000b002c70ce264bfsm1714196wrs.76.2023.07.27.04.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 04:01:32 -0700 (PDT)
Message-ID: <48a24f833c73507b52787d0752ebdecd0c5c09dd.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3_M2.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: "alexis.lothore" <alexis.lothore@bootlin.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ross Burton <ross.burton@arm.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>
Date: Thu, 27 Jul 2023 12:01:31 +0100
In-Reply-To: <1775B0CA80C59927.31298@lists.yoctoproject.org>
References: 
	<0101018994c968db-984564f2-0172-43ae-a91a-82b306fdc587-000000@us-west-2.amazonses.com>
	 <1775B0CA80C59927.31298@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 11:01:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60662

On Thu, 2023-07-27 at 10:53 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Thu, 2023-07-27 at 00:39 +0000, Pokybuild User wrote:
> >     A build flagged for QA (yocto-4.3_M2.rc2) was completed on the auto=
builder and is available at:
> >=20
> >=20
> >         https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2
> >=20
> >=20
> >     Build hash information:=20
> >=20
> >     bitbake: 64bc00a46d1aacc23fe7e8d9a46a126f3a4bc318
> > meta-agl: 25410a640b879405d4f93585f3d74c328f487cad
> > meta-arm: cfcc8a4d13c26793ecab2d8da9274eb98b8cb4ce
> > meta-aws: 86966086b2dfabd7113253bc5647f87fd6d42423
> > meta-intel: f2bcad2943b11b8c9d9ecdd25551a841ba98eda0
> > meta-mingw: 92258028e1b5664a9f832541d5c4f6de0bd05e07
> > meta-openembedded: 74e70284acb2eb2f2a47a1ab1aa5ee0928d46344
> > meta-virtualization: c5079557091b215663458807a8f617752614a6bd
> > oecore: 6ac110c8954e5fdb71d5495e3eebc1ca3958dc19
> > poky: 3eff0eb5ea77de20d85a2ffc64652579cbd7755c
> >=20
> >=20
> >    =20
> > This is an automated message from the Yocto Project Autobuilder
> > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > Email: richard.purdie@linuxfoundation.org
> >=20
>=20
> The regression report for rc2 looks better!
>=20
> https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2/testresults/te=
stresult-regressions-report.txt
>=20
> I particularly liked:
>=20
> """
>   Additionally, 124114 previously failing test(s) is/are now passing
> """
>=20
> :)
>=20
> It does more clearly show where changes occurring which is really
> helpful.
>=20
> Not sure why the duplicates appeared in=C2=A0
>=20
> https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2/testresults/te=
stresult-report.txt
>=20
> it appears the arm build was triggered twice from the same a-full:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5203
> https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5204
>=20
> and I have no idea why it did that. I'd suggest we just filter the
> duplicates messages out the final report.
>=20
> I am a bit puzzled by the ltp test counts and need to talk to Ross
> about that.

Curiously, downloading:

https://autobuilder.yocto.io/pub/non-release/20230726-18/testresults/qemuar=
m64-ltp/testresults.json

shows:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
qemuarm64 Ltp Test Result Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
---------------------------------------------------------------------------=
-----------------------------------
Recipe          | Passed    | Failed  | Skipped   | Time(s)  =20
---------------------------------------------------------------------------=
-----------------------------------
cap_bounds      | 1         | 0       | 0         | 4
commands        | 17        | 13      | 7         | 8
connectors      | 0         | 0       | 1         | 4
containers      | 65        | 0       | 17        | 3
controllers     | 227       | 4       | 55        | 2404
cve             | 46        | 2       | 31        | 1132
dio             | 30        | 0       | 0         | 981
fcntl-locktests | 1         | 0       | 0         | 10
filecaps        | 1         | 0       | 0         | 17
fs              | 61        | 1       | 5         | 947
fs_bind         | 84        | 11      | 0         | 26
fs_perms_simple | 18        | 0       | 0         | 0
fsx             | 1         | 0       | 0         | 1
input           | 5         | 1       | 0         | 2
io              | 2         | 0       | 0         | 1
ipc             | 6         | 0       | 0         | 5
math            | 10        | 0       | 0         | 9
mm              | 44        | 1       | 25        | 485
net.ipv6_lib    | 6         | 0       | 0         | 1
nptl            | 1         | 0       | 0         | 8
pty             | 6         | 0       | 3         | 312
sched           | 9         | 0       | 2         | 118
syscalls        | 281       | 11      | 19        | 701
---------------------------------------------------------------------------=
-----------------------------------

which is different to the main testreport. Something odd is going on.

Cheers,

Richard


