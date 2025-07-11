Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7319C83F1B
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 14:46:28 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.15818.1752245187935934654
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 07:46:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=FQwsTQju;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bfBNAU2aGxH40OGyjPBbBTVXI/TK+TitKMC8ZCm9Wwo=; b=FQwsTQju0MLcotP7iUWF/1+b2V
	pQiMU1OCA7DBWUMT38YwgaMvHOGu2QdqSn4PyyY8vqW25EinmVq9pxxcN1FHuhtbv3rxFhmMOldtj
	rukuyJuCUFjxntQ55/p5mikEl6N0STQJKuWfaTbKVb9crYjHkPNMIKwx10mRU7fVcPWTFDZiaruuT
	ElBjdcHwnznXB9TV3dW1ObV7qXadaXXJjcyZMC7xYoHYUWTn1dV7pQVqywtGz1u406txUS8HxMVNM
	D/+TkzY4kOau67y3cc4Yd5gwlrNsybHh406VKXvF9hX2rEVSpfLqIisvSP6FSnqMmQK/NKFCfK0LA
	vzZHIHPA==;
Received: from pool-174-115-41-146.cpe.net.cable.rogers.com ([174.115.41.146]:58186 helo=asus)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1uaF14-000000014oM-2gOC;
	Fri, 11 Jul 2025 10:46:25 -0400
Date: Fri, 11 Jul 2025 10:46:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Ross Burton <Ross.Burton@arm.com>
cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
    Josef Holzmayr <jester@theyoctojester.info>, 
    "raj.khem@gmail.com" <raj.khem@gmail.com>, 
    Jeffrey Osier-Mixon <jefro@redhat.com>
Subject: Re: [yocto] Is there a YP RISC-V specific mailing list?
In-Reply-To: <0924DCB8-B1A3-431E-84FD-6A428B9F3950@arm.com>
Message-ID: <e95f463f-0165-44a1-d386-4c3f0cccc087@crashcourse.ca>
References: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca> <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com> <CAEt6NwpDEcFXJDHF7QhkV63k0D6sXOSErEuYNmiEt9TSPwOcJg@mail.gmail.com> <5600b61e-0170-b159-e31d-729ba350d0c4@crashcourse.ca>
 <0924DCB8-B1A3-431E-84FD-6A428B9F3950@arm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-637363133-1752245185=:1205088"
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 14:46:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65643

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-637363133-1752245185=:1205088
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Fri, 11 Jul 2025, Ross Burton wrote:

> On 10 Jul 2025, at 12:22, Robert P. J. Day via lists.yoctoproject.org <rpjday=crashcourse.ca@lists.yoctoproject.org> wrote:
> >
> >
> > On Thu, 10 Jul 2025, Josef Holzmayr wrote:
> >
> >> Hi Robert,
> >> It depends a bit (classic engineering answer).
> >> The obvious choices are
> >> - oe-core
> >> - oe-devel
> >> - yocto
> >> - oe-architecture.
> >>
> >> So far my understanding is that meta-riscv is hosted on GitHub under
> >> the reign of Khem, but maybe this could/should be reconsidered
> >> moving to yp.org too? In that case the yocto-patches list would be a
> >> good place to discuss. Looping in @Jeffrey Osier-Mixon, I think this
> >> is a good opportunity to move visibility forwards.
> >
> >  That is clearly a decision to be made by someone way above my pay
> > grade and Candy Crush score, but I think there's justification for a
> > separate YP-hosted mailing list for RISC-V devoted to YP
> > build-*specific* issues so as to not duplicate all of the generic
> > RISC-V content over at riscv.org. After all, OE-Core has machine conf
> > files for 32- and 64-bit RISC-V QEMU, so one can say it's OE
> > "official."
> >
> >  Anyway, that's my +1 for a YP/OE RISC-V mailing list.
>
> Why is riscv so special? We don’t have a list for Arm-specific or
> x86-specific issues.
>
> I’d say use the existing channels until there’s a sufficiently huge
> amount of traffic that it needs its own list.  If we get to that
> point then I’d be asking why though...

  but we *do* have some arch-specific MLs:

https://www.yoctoproject.org/community/mailing-lists/

or am i confused about those mailing lists?

rday
--8323329-637363133-1752245185=:1205088--

