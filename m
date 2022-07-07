Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3667FC43334
	for <webhook@archiver.kernel.org>; Thu,  7 Jul 2022 17:06:47 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web10.232.1657213602440125414
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 10:06:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com
 ([174.114.102.5]:35952 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1o9Uxc-0005yN-9m;
	Thu, 07 Jul 2022 13:06:41 -0400
Date: Thu, 7 Jul 2022 13:06:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Khem Raj <raj.khem@gmail.com>
cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-riscv: building curl, "undefined reference to
 '__atomic_exchange_1'
In-Reply-To: 
 <CAMKF1soKCkuBWU6Y=1Ck94zTwN7pSHagdgkVNLQDoftwesbinA@mail.gmail.com>
Message-ID: <a71569-6929-f149-127-6cf33ed4b925@crashcourse.ca>
References: <16FF8418B666136C.16989@lists.yoctoproject.org>
 <e36cc49e-3c94-6030-a25c-3751b292559e@crashcourse.ca>
 <CAMKF1soKCkuBWU6Y=1Ck94zTwN7pSHagdgkVNLQDoftwesbinA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id:
 rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Jul 2022 17:06:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57476

On Thu, 7 Jul 2022, Khem Raj wrote:

> On Thu, Jul 7, 2022 at 6:14 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> > On Thu, 7 Jul 2022, Robert P. J. Day wrote:
> >
> >
> > >   on admittedly unsupported ubuntu 22.04 platform but it's clear this
> > > is a known issue as it's pretty much identical to what one reads here:
> > >
> > >   https://github.com/advancedtelematic/aktualizr/issues/1427
> > >
> > > the explanation being that, "not every atomic operation is currently
> > > supported by GCC on RISC-V."
> > >
> > >   oddly, building a riscv64 core-image-minimal once upon a time on
> > > fedora worked just fine, so i'm assuming a difference in gcc versions
> > > is what is causing this.
> > >
> > >   what is the recommended workaround for this?
> >
> >   another data point, matches exactly what i'm referring to:
> >
> >   https://github.com/curl/curl/issues/9055
> >
>
> does backporting
>
> https://github.com/curl/curl/commit/50efb0822aa0e0ab165158dd0a26e65a2290e6d2
>
> to curl help ?

  as i read it, this issue is also related to -pthread versus
-lpthread:

https://blog.jiejiss.com/A-RISC-V-gcc-pitfall-revealed-by-a-glibc-update/

rday


