Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEFFC4332F
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 14:35:00 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web09.75.1652366091059279174
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 07:34:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com
 ([174.114.107.13]:38830 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1np9ty-00006E-JJ;
	Thu, 12 May 2022 10:34:49 -0400
Date: Thu, 12 May 2022 10:34:46 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Khem Raj <raj.khem@gmail.com>
cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] are there any plans for meta-riscv support for StarFive
 VisionFive?
In-Reply-To: 
 <CAMKF1srMGpfHOng4nw4o8f6nGKPwdNATwyPA7G4MpO_FoV5b4g@mail.gmail.com>
Message-ID: <c3a8b6ca-3568-dcda-2542-5ea643c7cd51@crashcourse.ca>
References: <38d98d22-b1c5-7b53-dfd-b12bcbe96a92@crashcourse.ca>
 <CAMKF1srMGpfHOng4nw4o8f6nGKPwdNATwyPA7G4MpO_FoV5b4g@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 14:35:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57081

On Thu, 12 May 2022, Khem Raj wrote:

> On Thu, May 12, 2022 at 2:00 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>       https://shop.allnetchina.cn/products/starfive-visionfive-ai-single-board-computer?variant=39522167783526
>
>
> Yes There already is beagleV machine and it will be derived from
> that I have plans to add it if Someone is working on it please let
> me know

  not working on the machine definition myself, but have already
ordered one of those boards so certainly willing to test once it
arrives.

rday

