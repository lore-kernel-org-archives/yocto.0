Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A5C83F1B
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 15:00:18 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web11.16007.1752246015581871569
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 08:00:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=N9tyW/4F;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Tr/k3mR7sSO1zfapkAuDFG86MS/o7rdI5XdIC5T607o=; b=N9tyW/4FhLDDFj2y2oert6T3ED
	jOOKyThXXRSzjyyZ8AO/RNbY9c7sZbMR3I5kIpOa6Kemq9BYpwHZKAvCWzjo4Tb0rIYDIBGjte8ti
	mJHP2spFWrg7Xr7fa1y9vKLxdM6k7rFMIfvx+G6BP18PtxPldBvvA4j9Ul0U/uem3Kp0z7MK7v3sd
	qB5vczxsixYoB0ufROmubEULzZHOCn+Xtnb1EwqiomhIv30jCH4o6efbbNTVL7dayfEIyQgZ5MEWN
	td/VXJIwL2Ds7y1kOYp6adJnh1DvAtOXFeul4OJGkJ0Qv9EaFCepF81DIR4leyvAFsx6nPHwwHSOf
	wIP3wYQw==;
Received: from pool-174-115-41-146.cpe.net.cable.rogers.com ([174.115.41.146]:57282 helo=asus)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1uaFEJ-000000016vC-3Hqh;
	Fri, 11 Jul 2025 11:00:12 -0400
Date: Fri, 11 Jul 2025 11:00:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Ross Burton <Ross.Burton@arm.com>
cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
    Josef Holzmayr <jester@theyoctojester.info>, 
    "raj.khem@gmail.com" <raj.khem@gmail.com>, 
    Jeffrey Osier-Mixon <jefro@redhat.com>
Subject: Re: [yocto] Is there a YP RISC-V specific mailing list?
In-Reply-To: <D0E0DED9-A7EB-4BCE-9DCC-80625EED1C24@arm.com>
Message-ID: <4efbcddf-931d-8f5a-f021-4b62f576d40b@crashcourse.ca>
References: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca> <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com> <CAEt6NwpDEcFXJDHF7QhkV63k0D6sXOSErEuYNmiEt9TSPwOcJg@mail.gmail.com> <5600b61e-0170-b159-e31d-729ba350d0c4@crashcourse.ca>
 <0924DCB8-B1A3-431E-84FD-6A428B9F3950@arm.com> <e95f463f-0165-44a1-d386-4c3f0cccc087@crashcourse.ca> <D0E0DED9-A7EB-4BCE-9DCC-80625EED1C24@arm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-418526672-1752246006=:1207254"
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
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 15:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65645

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-418526672-1752246006=:1207254
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Fri, 11 Jul 2025, Ross Burton wrote:

> On 11 Jul 2025, at 15:46, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >  but we *do* have some arch-specific MLs:
> >
> > https://www.yoctoproject.org/community/mailing-lists/
> >
> > or am i confused about those mailing lists?
>
> They’re for specific layers (meta-intel, meta-arm, etc), not the architecture in general.
>
> meta-arm is specifically meta-arm contributions, when we discuss
> changes to the Arm tunes in core, that happens on oe-core@.

  ah, understood.

rday
--8323329-418526672-1752246006=:1207254--

