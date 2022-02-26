Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 031CCC433EF
	for <webhook@archiver.kernel.org>; Sat, 26 Feb 2022 11:46:41 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.5086.1645875999288722352
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 03:46:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com
 ([174.114.107.13]:59556 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1nNvX6-005CsS-5t; Sat, 26 Feb 2022 06:46:37 -0500
Date: Sat, 26 Feb 2022 06:46:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Khem Raj <raj.khem@gmail.com>
cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] looking to boot core-image-minimal on meta-riscv board
In-Reply-To: 
 <CAMKF1sqs1GKQJtMhJcFx6iRmODtDOd5AWMQNOJ7sLkouz4XpKw@mail.gmail.com>
Message-ID: <d4b6cb6c-77bf-52d-bdc5-6d3a9dfc2785@crashcourse.ca>
References: <7bac38ca-d9fd-b019-8d47-4a1a4f2d6a8@crashcourse.ca>
 <CAMKF1sqs1GKQJtMhJcFx6iRmODtDOd5AWMQNOJ7sLkouz4XpKw@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Sat, 26 Feb 2022 11:46:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56292

On Fri, 25 Feb 2022, Khem Raj wrote:

> On Fri, Feb 25, 2022 at 8:36 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >
> >   a friend of mine is diving into trying to boot linux on a meta-riscv
> > linux starter kit -- he's not using YP, and this is what he's
> > targeting:
> >
> >   https://www.aliexpress.com/item/1005003751298305.html
> >
> >   since i've wanted to jump into meta-riscv for a while, i figured i'd
> > play along and ordered something more substantial:
> >
> >   https://www.aliexpress.com/item/1005002796061251.html
> >
> > in any event, here's the story so far.
> >
> >   as a first pass, i just fired up YP and built for qemuriscv64 to
> > establish a baseline, and that seems to work just fine, booting with
> > "runqemu nographic." and that at least gives me a bunch of config info
> > i can look at later.
> >
> >   as for my actual target board, i know that the meta-riscv layer
> > defines support for two boards, neither of which is the one i will be
> > getting, but while i'm waiting for it, i can at least start
> > documenting all of the relevant settings and config values i'll want
> > to try.
> >
> >   i know precious little about meta-riscv, so is there a sane way to
> > prepare for the eventual arrival of my board? my plan is to get
> > familiar with how the meta-riscv layer builds for the two supported
> > boards, so i'll have a handle on what i'll need to configure.
> >
> >   any further advice would be most appreciated.
>
> We should add them to meta-riscv as reference BSPs. I have port of
> unmatched locally and have been trying to get the needed changes
> into meta-sifive which is still pending.

  so you have working BSPs for both of those? very cool. warning that
i know effectively nothing about RISC-V but this is apparently my
weekend project to dig into it. i don't see a meta-riscv-specific
mailing list, so i assume if i want to start sending simple patches
for meta-riscv, they would go here?

  already built and tested qemuriscv64, so i guess i'll work backwards
from there and examine the configuration and construction of the
components. opensbi, here we come ...

rday

