Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62011CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 07:09:58 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.33313.1697180992854866844
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 00:09:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=uIZoe9sr;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vWNxvi+KekCgec6INFhtLE3RhsKXM6M5szgdhG7OW4o=; b=uIZoe9srLEVW8jrBu3+IVaWB8j
	wTEOTdKn98JZLo2c79PsAfFD/evHkD7UjE8tjtHFYHUFndC7gvXIw3PJSLH6y5o9QdUjxPN2yZJ8i
	ij8jTd2e0oq2/xkDwFIMRS4r0iaiHfwt2MjYEB+1g+MaWDIIob7U1BySk7XDIIOjVznjBKSAyhPAZ
	iQ1OXrPV+TAaQzLT3ZncGb5Hg6AoGU9pu+gQUvA5efDsKib/ocNVzGjj5SE0hSx+FiqRNCV6n0ba6
	cqWP71g7Pcsu/Mgj8JEn16iyQRoJxyLfuWu2bCtKqeBByHftkA1bA6AoZFCBx7gilCkpzrvocixKj
	/dccVCSA==;
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.102.5]:53492 helo=fedora)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1qrCIu-00Al50-1k;
	Fri, 13 Oct 2023 03:09:50 -0400
Date: Fri, 13 Oct 2023 03:09:37 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Josef Holzmayr <jester@theyoctojester.info>
cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] are there any plans for a RISC-V reference board?
In-Reply-To: <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com>
Message-ID: <943d42b1-8628-e247-77b1-692f5ada7d5f@crashcourse.ca>
References: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca> <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-541123633-1697180991=:867647"
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
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 07:09:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61327

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-541123633-1697180991=:867647
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 10 Oct 2023, Josef Holzmayr wrote:

> Hi Robert,

> It has been discussed at numerous occasions. The main blocker is: we
> need a commitment for the maintenance. So if a high-ranking member
> decides to push forwards with this and allocate resources, or a new
> member from the RISC-V ecosystem steps up to make it happen, then
> the project is all ears.
>
> Greetz,
> Josef

   Ask and ye shall receive. I just got the following private note
from jiaqi.dong@starfivetech.com, who obviously saw my earlier post
(and agreed to let me reproduce his response to me to the list):

> I think VisionFive 2 is an appropriate reference board. We offer
> Long Term Support for JH7110 and VisionFive 2. After being upgraded,
> VisionFive 2 with big improvements in the processor work frequency,
> multimedia processing capabilities, and scalability. Since August of
> last year, we have continued to promote the ecosystem of VF2, it has
> successively adapted to Deepin OS, Ubuntu OS, UEFI EDK2, OpenWrt,
> PPSSPP…you can check out the RVspace forum. So we would like to work
> with the developers and provide LTS if there are specific project
> requirements.

  Sound promising?

rday
--8323328-541123633-1697180991=:867647--

