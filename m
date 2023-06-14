Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BDF3EB64D8
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 14:32:36 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.13764.1686753147877913288
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 07:32:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=Gc3oNXlv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-30fcde6a73cso1508496f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 07:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686753146; x=1689345146;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LZf8ZvTaaggu/PEHbXE/3U8MddrH6n7IIcstgJe9KSU=;
        b=Gc3oNXlvoJ4QJIDj6RQeRUG4+MYyqP7vg1ph7ik5Q0L2b/KtZZmqqCRTP3vI3Eg7Sp
         R0IE2PmA3t++A0OpYKHpUOPaF83N0K2eZAp50J56Yae90ym0miACA8kIQ3bLqo8ToWyj
         Oj4FdmYxkH7kd5hW+kprfBgkks+X3CXWLIG2E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686753146; x=1689345146;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LZf8ZvTaaggu/PEHbXE/3U8MddrH6n7IIcstgJe9KSU=;
        b=TIGfpNOp8dyOTOYwJNVoSQsnBt3prnMKMPhpTc4QPPQ9k8jJATixi8dlGL/5qe/j+O
         MWCdZc1ZOonrUepRkDWsN/CiItaHjN8pHbyLsO91ejkaaaeUYk7ip9F+qF0KljXCpt50
         fUCV99B007oy9Ll1OYHABXMJTpelnXM03nkIgPOMx9xsQuF7cq4bmgOVNirFoapq5MPR
         wBmSHFJwRIvxwb0RFugU5WO0IEsqW3Jy8PchMcOg1MrTPfZwdl/fn1HlrF4ZWjMDirbl
         t/rzLVZoU2DsQy703clOdfshInccXh6+MUJH7caQ648wCQEfqAqbpEYeZcKTGQEi1OYt
         EJyA==
X-Gm-Message-State: AC+VfDwq8EnEDqv1DCwjt04UGCA/FcSJXoNHxhqAqid34x0TjfKCjY5I
	tRWg9NdoG76BavvfjB8+KISZBQ==
X-Google-Smtp-Source: ACHHUZ5jpS8jp9+Pk3ff1lLuRoMaqi68MSyc0EXhbQyX2GbBfqHS6sOHbtGES93Bpt6A92wvZgy27g==
X-Received: by 2002:adf:ef0b:0:b0:30a:e9cb:1a2e with SMTP id e11-20020adfef0b000000b0030ae9cb1a2emr8240784wro.65.1686753146301;
        Wed, 14 Jun 2023 07:32:26 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b? ([2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b])
        by smtp.gmail.com with ESMTPSA id i7-20020adffc07000000b0030631a599a0sm18601928wrr.24.2023.06.14.07.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 07:32:25 -0700 (PDT)
Message-ID: <534877efea9b78bfbe9a539b57588bf2b692b1a8.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Alexis
	=?ISO-8859-1?Q?Lothor=E9?=
	 <alexis.lothore@bootlin.com>
Cc: yocto@lists.yoctoproject.org, Thomas Petazzoni
	 <thomas.petazzoni@bootlin.com>
Date: Wed, 14 Jun 2023 15:32:25 +0100
In-Reply-To: <20230614142959bbebf1d3@mail.local>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
	 <895aca2cd720d61c4a1f5a5eabaf606c00117546.camel@linuxfoundation.org>
	 <122697e4-887c-7262-a359-e046914d80db@bootlin.com>
	 <20230614142959bbebf1d3@mail.local>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 14:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60304

On Wed, 2023-06-14 at 16:29 +0200, Alexandre Belloni wrote:
> On 14/06/2023 14:15:54+0200, Alexis Lothor=C3=A9 wrote:
> > On 6/14/23 12:31, Richard Purdie wrote:
> > > On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothor=C3=A9 via
> > > lists.yoctoproject.org wrote:
> > > > From: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> > > >=20
> > > > This series is a follow-up for the 4.3_M1.rc1 regression report iss=
ue.
> > > >=20
> > > > It has been observed that the report is empty. This issue is linked=
 to
> > > > configuration description in yocto-autobuilder-helper, and has been
> > > > identified through the following steps:
> > > > - empty report is supposed to be a comparison between yocto-4.2 (4.=
2.rc3)
> > > >   and 4.3_M1.rc1
> > > > - yocto-4.2 results are almost empty: we only find test results fro=
m Intel
> > > >   QA (pushed _after_ the AB build) and not the AB test results
> > > > - tests results are managed by send-qa-email.send-qa-email uses res=
ulttool
> > > >   to systematically gather and store test results in local git dire=
ctory
> > > > - however, it looks for basebranch/comparebranch to know if those r=
esults
> > > >   can be pushed onto git server, and those variables depend on conf=
ig.json
> > > >   content
> > > > - yocto-4.2 (4.2.rc3) has been built on release branch mickledore
> > > >   (https://autobuilder.yoctoproject.org/typhoon/#/builders/83/build=
s/5212)
> > > > - since mickledore is not yet described in config.json, send-qa-ema=
il
> > > >   considers it as a "work" branch (contrary to a "release" branch) =
and does
> > > >   not push test results
> > > >=20
> > > > As a consequence:
> > > > - first commit brings in python logger
> > > > - second commit adds a warning when such case happen, since we are =
able to
> > > >   detect it
> > > > - third fix actually adds mickledore as a release branch to properl=
y store
> > > >   again test results
> > > >=20
> > > > There must be a more robust rework to do (because the issue will li=
kely
> > > > happen on each major delivery), but I aimed for the quick and small=
 fix to
> > > > quickly bring back tests results storage without breaking other thi=
ngs in
> > > > the process
> > > >=20
> > > > Alexis Lothor=C3=A9 (3):
> > > >   scripts/send-qa-email: use logger instead of raw prints
> > > >   scripts/send-qa-email: print warning when test results are not st=
ored
> > > >   config.json: add mickledore as direct push branch for test result=
s
> > >=20
> > > Thanks for the analysis. I agree we need to somehow fix this properly=
.
> > > One solution might be to always push for poky if the branch name
> > > doesn't end with -next?
> >=20
> > That might work indeed. If we are sure enough that no custom/feature br=
anch will
> > be used in poky with send-qa-email (ie, only in poky-contrib), I can do=
 the fix
> > this way
>=20
> I sometimes use a different branch name when testing things out (like 64
> bit time) but as long as we all know, we can probably ensure this ends in
> -next.

That would always be in poky-contrib though?

Cheers,

Richard

