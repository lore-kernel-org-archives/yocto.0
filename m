Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0365FED2FF
	for <webhook@archiver.kernel.org>; Thu, 12 Mar 2026 10:20:05 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18310.1773310801889703348
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Mar 2026 03:20:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=fO/K0msP;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fUuVz78nm53z3TraLu1KGJNkyhXK1y22Qnteath3P44=; b=fO/K0msPCBBbNR0Qnp6CF8PBDi
	2Q3JxATBiLum02YQ30G7zUMKAbpRbXijd1k+CkzqrcNWgsQkHEC7tXNuXuFatvAoUNFXAW5+QQ/4r
	tYlD0AmfZmLpaXRGmq7SKRACngg2h1oeVLMQ1DaCyKNsLaUrYnBHEm+9fPnQiRM+aBBXqLXV54v/g
	5vkIkr5JswFXj2DouV0eah4+6aFHFl4XkdJG7RoJ7pPSNF2zfCLp/pMN5TDAxYaEiyau2xPOg/TJa
	QBHf9Jpwc3EWyC3PwVMN6W3NgG/9aY6CWZ1/fnw3E6frt2hNd4SQWGtTBNUDWNllTfkY+j3pMwRPx
	HDWEqhrA==;
Received: from [147.129.179.166] (port=54034 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1w0d94-00000004IbE-3gB9;
	Thu, 12 Mar 2026 06:20:00 -0400
Date: Thu, 12 Mar 2026 06:19:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
cc: Josef Holzmayr <jester@theyoctojester.info>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] are there some recent examples of building .NET recipes
 for YP?
In-Reply-To: <0ce0bdc6-bbce-44f3-b010-112739b8b87d@dynamicdevices.co.uk>
Message-ID: <c258a893-b246-d8e8-4394-aa05f6b4875c@crashcourse.ca>
References: <32336316-50a9-9193-9c85-d5e6973505c4@crashcourse.ca> <CAEt6Nwpi5DBYBvcWO6UTdo9YNm1oie1GVbusOSqkgkuq-LO9fQ@mail.gmail.com> <0ce0bdc6-bbce-44f3-b010-112739b8b87d@dynamicdevices.co.uk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-233636311-1773310802=:536312"
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
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Mar 2026 10:20:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66328

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-233636311-1773310802=:536312
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 10 Mar 2026, Alex J Lennon wrote:

>
> On 10/03/2026 21:28, Josef Holzmayr wrote:
> > Channeling @Alex J Lennon
> >
> > On Tue, Mar 10, 2026 at 3:19 PM Robert P. J. Day via
> > lists.yoctoproject.org <rpjday=crashcourse.ca@lists.yoctoproject.org>
> > wrote:
> > >
> > >    colleague wants to add a .NET package as a (systemd) service to a YP
> > > image -- google keeps promoting this 10-year-old page:
> > >
> > > https://wiki.yoctoproject.org/wiki/Building_and_running_embedded_Linux_.NET_applications_from_first_principles
> > >
> > >    does someone have a link or two to something more recent? thank you
> > > kindly.
> > >
> > > rday
>
> Hi folks. I felt a vibration in the force....
>
> I continue to maintain meta-mono and you're right this desperately needs an
> update.
>
> I guess that's on me but if you fancy collaborating it might go faster :)

  let me peruse this on the weekend. although i have no interest in
becoming a .NET developer, i'm probably going to have to support the
developers on my team who will be. i guess the simplest approach is to
try to replicate that documented work on my debian 13 system with
recent YP release.

rday
--8323329-233636311-1773310802=:536312--

