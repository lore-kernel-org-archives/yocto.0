Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE49C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 09:51:19 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.98835.1674813073925701016
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 01:51:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BGwu1eM6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id m7so4432711wru.8
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 01:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8LSPp7Ve2f+9dRE0t3fyYWuNCuV5VinY7OP7GEQzA6Q=;
        b=BGwu1eM6tlFaSDFPlxg7BBKFF/34zVuS6o0v07UrB7MMxW2OBbF9LhnNqepizP0Y4y
         wezFJZCfz5lqiIJk25dZZMiy7k1Lq2qLH4jMZSNmUNEpmzrx60c/RU1Vd6ZAbMk4gAOG
         +qcnSkUr/UyNWolYEKJ4Q0PkrQS8IMIZ9h3AY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8LSPp7Ve2f+9dRE0t3fyYWuNCuV5VinY7OP7GEQzA6Q=;
        b=Avx4pWUM5O1DbeakeWsKueRghbC8J54EY2TQwkfnWhzUi4X1clGx7PDnBHl5wrfPx6
         KJAX2K2n/xE+BmEQ4m2e9r+d3MUryOcz8MkWdRCMhOg0WpouaghUJe0rJYzahDmNykTr
         GA5mdkvzCev1GPY29hX0/zUIbLfJfEp6RFrluYlbZ2ga9pKqKITpgSejcW1nLi3eXTnD
         mHU9nwQe4LzzEkRn4Oq9fSZ/xv27hjcy+ALEfaKx69Bzhq5phK94rb9Df0x7RESBHyLJ
         BvLLHgWBQHDZcmhGdcrgRCOMuSIzAbF2FxmuiPJRuFxHsAPjykioYbZDaEBB4uofMq8R
         AFBg==
X-Gm-Message-State: AO0yUKWpOOBVhZOB4gfM/Dx0gZS6akHHd53PBKCgCZEpHoA1AsKtkSre
	3kwt4K+nPeTBuaIlcH37bWBs1g==
X-Google-Smtp-Source: AK7set+yW4wfZATtk1KuGpfa+iAY4YItvYnzbz8ogeseZTVZfwig9q5uO2rsknaSQ8o01nB+Uk6U5A==
X-Received: by 2002:a05:6000:128d:b0:2bf:b839:c47c with SMTP id f13-20020a056000128d00b002bfb839c47cmr8456464wrx.64.1674813072113;
        Fri, 27 Jan 2023 01:51:12 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3876:ca46:43a6:4b49? ([2001:8b0:aba:5f3c:3876:ca46:43a6:4b49])
        by smtp.gmail.com with ESMTPSA id a4-20020a056000100400b00286ad197346sm3460236wrx.70.2023.01.27.01.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 01:51:11 -0800 (PST)
Message-ID: <8f1a59823f6c4b29d6638f79fe778c2480984784.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH v3 0/5] generate regression reports
 against proper releases
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexis =?ISO-8859-1?Q?Lothor=E9?= <alexis.lothore@bootlin.com>, 
	yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Fri, 27 Jan 2023 09:51:11 +0000
In-Reply-To: <c24f0f04-93d5-07db-1aa3-809a0f3e972f@bootlin.com>
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
	 <6c9f63bbb86f39e3f2a24bbecd89499006edf7f9.camel@linuxfoundation.org>
	 <c24f0f04-93d5-07db-1aa3-809a0f3e972f@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 09:51:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59075

On Fri, 2023-01-27 at 09:26 +0100, Alexis Lothor=C3=A9 wrote:
> On 1/26/23 23:42, Richard Purdie wrote:
> > On Tue, 2023-01-24 at 18:30 +0100, Alexis Lothor=C3=A9 via
> > lists.yoctoproject.org wrote:
> > >=20
> > Thanks. Since I like living dangerously, I've put these on the master
> > branch for the M2 release build. I wanted to see how this does in a
> > real world test.
>=20
> Thanks. Please feel free to reach back if you observe any unwanted side e=
ffect,
> since most of my knowledge is based on scripts reading and autobuilder bu=
ilds
> history. I have tried to test it as much as possible on my machine, but a=
s I was
> discussing with Alexandre Belloni, the many stubs and fake data used do n=
ot make
> the tests as accurate as the real world case.

The result of the M2 build is here, specifically the regression report:

https://autobuilder.yocto.io/pub/releases/yocto-4.2_M2.rc2/testresults/test=
result-regressions-report.txt

(warning, it is a 13MB file, which may hint at some problems)

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/4844/step=
s/29/logs/stdio

was the log from running the script. It also suggests there may be a
few issues.

I think we need some improvements to the report. Firstly it should
state at the top which revisions are being compared and any tags they
correspond to.=C2=A0

Next, we need to understand why the large chunk of tests "disappeared".
it may be related to the "Failed to retrieved" messages?

I also happen to know the reproducibility tests failed in this build,
yet the regression report has no mention of that.

So the patches are a start but there is much more to do.

Cheers,

Richard

