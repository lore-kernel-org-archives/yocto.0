Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FB0EC83F1D
	for <webhook@archiver.kernel.org>; Thu, 10 Jul 2025 11:22:33 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.6525.1752146542807405018
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jul 2025 04:22:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=NiHRaPHJ;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tX9M8hgAsv3aRMOEmLwohfhvuBBvOnx55RzgGYh2VMA=; b=NiHRaPHJTrZOllvTFZv6h+6rDc
	jTgRG6cxs4Hra3Hs+91iJGks/k4/xYyXRIDNUVfGbE+LvwyW+H7FBfcDAbJGG37fwWv6PIOkhuwwy
	Yx4gxQADqElEf0cczuUKH/VDQXGIT8ZaThKZdRRKZ5XZ7bcLb454GUqFSupQS2WP8WQsHuKx408LD
	QKk8pOU5ei48ZLCV/ow/D7j7BxRl9T4FS10yeSUnmveHn6Nn3cadAKBL17bmtBy9RzSkHZdAMgL7e
	Kvyq6FegzS3KBySen8BEKuX69Hx0zCrypWyewugF2C2mONEnVtAEKle5K2jB29mRcYvYiAY5+vn7e
	xYJanq1g==;
Received: from pool-174-114-102-5.cpe.net.cable.rogers.com ([174.114.102.5]:32848 helo=asus)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1uZpLz-0000000EHmH-2Wpt;
	Thu, 10 Jul 2025 07:22:21 -0400
Date: Thu, 10 Jul 2025 07:22:11 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Josef Holzmayr <jester@theyoctojester.info>
cc: yocto@lists.yoctoproject.org, raj.khem@gmail.com, 
    Jeffrey Osier-Mixon <jefro@redhat.com>
Subject: Re: [yocto] Is there a YP RISC-V specific mailing list?
In-Reply-To: <CAEt6NwpDEcFXJDHF7QhkV63k0D6sXOSErEuYNmiEt9TSPwOcJg@mail.gmail.com>
Message-ID: <5600b61e-0170-b159-e31d-729ba350d0c4@crashcourse.ca>
References: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca> <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com> <CAEt6NwpDEcFXJDHF7QhkV63k0D6sXOSErEuYNmiEt9TSPwOcJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-122388161-1752146538=:989804"
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
 <yocto@lists.yoctoproject.org>; Thu, 10 Jul 2025 11:22:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65638

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-122388161-1752146538=:989804
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT


On Thu, 10 Jul 2025, Josef Holzmayr wrote:

> Hi Robert,
> It depends a bit (classic engineering answer).
> The obvious choices are
> - oe-core
> - oe-devel
> - yocto
> - oe-architecture.
>
> So far my understanding is that meta-riscv is hosted on GitHub under
> the reign of Khem, but maybe this could/should be reconsidered
> moving to yp.org too? In that case the yocto-patches list would be a
> good place to discuss. Looping in @Jeffrey Osier-Mixon, I think this
> is a good opportunity to move visibility forwards.

  That is clearly a decision to be made by someone way above my pay
grade and Candy Crush score, but I think there's justification for a
separate YP-hosted mailing list for RISC-V devoted to YP
build-*specific* issues so as to not duplicate all of the generic
RISC-V content over at riscv.org. After all, OE-Core has machine conf
files for 32- and 64-bit RISC-V QEMU, so one can say it's OE
"official."

  Anyway, that's my +1 for a YP/OE RISC-V mailing list.

rday
--8323329-122388161-1752146538=:989804--

