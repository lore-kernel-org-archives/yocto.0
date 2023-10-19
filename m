Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DAACDB465
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 13:47:20 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.28054.1697723239666823035
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 06:47:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Fq1WDUJK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40839652b97so18384485e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 06:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697723238; x=1698328038; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Uxf6UwuoCFbsqqm4EE/49SyL9zwiwPZm4/cRtINimvs=;
        b=Fq1WDUJKENsdWgNqH1VmknkXYvtWDsMn29U0g6STYJn6eSVXyzaFC1X8cEkPykBQJV
         h3sxgrFYjJHa33aGudMej9vH+/4ct8/nAY2UBoJNf5fb9kAaeld82w5r9uOs2p9gFPwb
         DSXHESbeCoF3Z8KwFL9kiBBZkph2XJj6a8er4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697723238; x=1698328038;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uxf6UwuoCFbsqqm4EE/49SyL9zwiwPZm4/cRtINimvs=;
        b=VA7Do2d7ISK1qC7w9LEM/4cPHVU/yu990qE5k940mJhHVDQVsPlRV8W7KuOnHH4hOF
         Hx7TmCmqL2hckHZ+yi1VxXQzmdCDx2S7a6vT9XFv43lgF+kdn5/2EofnV0536uD2yHuK
         FmWyXq5juOmnrnKr4b6rqK1N8d70CF3clV0bSi9rCyt8zMiYb2PpTN4Rkyx+fRtXjwyx
         yADCcEngfOK+/KISade7rX1wAZK3kMhtvSUXyVQd9GJbXnspgjSx3RlBDrBvXtNo8xjF
         h4K1TjQh8S2M0/6HQp0yFGOqWO5wNpHPQQGAbLoKFfbd7K+bD4kDneBBotCdFQihsVEr
         +WFg==
X-Gm-Message-State: AOJu0YwT5athSVMwJ/YsnP8UjpFfcJT0gPzh48xw+97mz3Xy9Xs3xsEE
	zsHfnWdg/BM6MvYnINIrXlybsg==
X-Google-Smtp-Source: AGHT+IG0lRrdZjPoH+mO3HyeqQBgj5i/+MrSsz1klQkgAbUicBBXFdq3/rZILUR5XsOAq+scYxmH7g==
X-Received: by 2002:adf:faca:0:b0:32d:b051:9a27 with SMTP id a10-20020adffaca000000b0032db0519a27mr1395859wrs.20.1697723238004;
        Thu, 19 Oct 2023 06:47:18 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb? ([2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb])
        by smtp.gmail.com with ESMTPSA id i11-20020a5d630b000000b00327bf4f2f14sm4513516wru.88.2023.10.19.06.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 06:47:17 -0700 (PDT)
Message-ID: <65837329489090e581e8080b549647c2dcc5abdc.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] meta-oe-mirror:
 Use a 2 step job to fetch and verify meta-openembedded mirror.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org, 
	Khem Raj <raj.khem@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>, Steve Sakoman <steve@sakoman.com>
Date: Thu, 19 Oct 2023 14:47:16 +0100
In-Reply-To: <178F8004D1FBCB68.20272@lists.yoctoproject.org>
References: <20231018134638.608387-1-david.pierret@smile.fr>
	 <178F7D157564D399.11247@lists.yoctoproject.org>
	 <178F8004D1FBCB68.20272@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 13:47:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61416

On Thu, 2023-10-19 at 12:52 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Thu, 2023-10-19 at 11:58 +0100, Richard Purdie via
> lists.yoctoproject.org wrote:
> > On Wed, 2023-10-18 at 15:46 +0200, David Pierret wrote:
> > > Inspired from trigger-build and trigger-build-post-trigger
> > > The branch must be selected on build configuration.
> > >=20
> > > Signed-off-by: David Pierret <david.pierret@smile.fr>
> > > Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> > > ---
> > >  config.json | 30 ++++++++++++++++++++++++++++++
> > >  1 file changed, 30 insertions(+)
> >=20
> > I fixed a json parsing issue and merged. I also added the autobuilder2
> > config to support it. A test build is now running here:
> >=20
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/1
>=20
> That failed with a single fetch failure which isn't related to this
> patch.
>=20
> I've therefore pulled the patch into the dunfell, kirkstone and
> mickledore branches.
>=20
> Autobuilder enabling is here:
>=20
> https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D93c034d436cb=
e631db2354a945850c3e97dd46bd
>=20
> with scheduling for the all branches here:
>=20
> https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D94f2878f64f1=
1993e8de8295bb1b46202b741019

Master reran and succeeded this time but is showing a lot of warnings:

https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/2/steps/=
12/logs/warnings

Kirkstone has an issue with grubby-git and a missing SRCREV:

https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/3/steps/=
13/logs/stdio
(plus warnings)

Mickledore has an issue with uutils-coreutils:

https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/5
(plus warnings)

Dunfell broke with space issues so I reran it here:

https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/6

So we're making progress but the meta-oe layer maintainers may need
some tweaks on the same branches or we need to see some missing files
into the mirror for those branches. We also need to find a way to
address the warnings.

Cheers,

Richard



