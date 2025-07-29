Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B56AC87FC9
	for <webhook@archiver.kernel.org>; Tue, 29 Jul 2025 12:50:02 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web11.6281.1753793397924643126
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jul 2025 05:49:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=dfTuTN5+;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=X2Jml52OyN3PgAYAA6YgJROuZ+N9gw5phD0ynGOr/98=; b=dfTuTN5+/muzE7EijzPfPtDLPI
	2/NLfpaRcP7iAIF/CnPlDU4zSBdhbnTnsXl6YV70jipKqZ8fyRa7LoBTokhvCeQuoUMp3PLxQTZ6Z
	k8yvdxe8iUqLtSYDc9tm2nUDvaveE2wBHqGDEHvBGAAlqOPHWwkbXgu/QkYQVWmjwoI0ZSFqTl2b0
	j4wYA+lMWWpJwHm+AWP3IM7/No6WRiOiwV/n0ncyO4bydq9+/SBxGi9gIqbgMYyMe4hQ5Ezov9TDE
	AzE11a5IuCL9+JonxDYJAbxktI3BImblX0quuXbPAk7JzCds36adwpJJSnU51qlqRPRmF3gEOSJ07
	ITa+7j+w==;
Received: from pool-174-114-102-5.cpe.net.cable.rogers.com ([174.114.102.5]:40582 helo=asus)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ugjmE-0000000G6sI-2wXG;
	Tue, 29 Jul 2025 08:49:56 -0400
Date: Tue, 29 Jul 2025 08:49:50 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Leon Woestenberg <leon@sidebranch.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] can anyone suggest a decent example of a SMARC-based YP
 build?
In-Reply-To: <CAMjhiJhy9m4-xOyUNPtf2NuET7fD0YFhwOcinc8wMUSppzP7xQ@mail.gmail.com>
Message-ID: <bb721a3f-72cf-526e-d740-f7d8aaf5bed9@crashcourse.ca>
References: <42aa178f-8b5e-1eb4-99a1-8e3a036580b5@crashcourse.ca> <CAMjhiJhy9m4-xOyUNPtf2NuET7fD0YFhwOcinc8wMUSppzP7xQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1087606235-1753793394=:2707189"
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
 <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 12:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65714

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1087606235-1753793394=:2707189
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 29 Jul 2025, Leon Woestenberg wrote:

> Hi Robert,
>
> On Tue, Jul 29, 2025 at 12:08 PM Robert P. J. Day via
> lists.yoctoproject.org <rpjday=crashcourse.ca@lists.yoctoproject.org>
> wrote:
> >   just started perusing the docs on "SMARC" SoMs:
> > ...
> > and then more than likely someone who wants to build a product around
> > that fairly standardized format and spec needs to design a (custom,
> > ...
> > so even if there's a wild variety of carrier boards, one would think
> > that the SMARC 2.2 spec will still mean a lot of the configuration is
> > consistent.
> >
>
> No. SMARC (loosely or more strictly, depending on who you ask)
> defines a common connector pin-out, voltages, and that's about it.
>
> Any "configuration" for the SoC, device tree, etc. are all different,
> let alone the Yocto build configuration.

  i've finally figured that out after reading more of the spec and
looking at various carrier boards.

rday
--8323329-1087606235-1753793394=:2707189--

