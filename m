Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4548.1616150741305860958
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 03:45:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A8B3238C083A
	for <yocto@yoctoproject.org>; Fri, 19 Mar 2021 10:45:38 +0000 (UTC)
Received: from bras-base-otwaon0916w-grc-29-64-229-255-220.dsl.bell.ca ([64.229.255.220]:56916 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lNCdM-00ELPE-GQ; Fri, 19 Mar 2021 06:45:36 -0400
Date: Fri, 19 Mar 2021 06:45:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] does current bitbaking of core-image-minimal still need docbook stuff?
In-Reply-To: <CAP71WjyS1OzSaJEcOA9boq0=x6x9b3fk-TqXRriTdpLiw052HQ@mail.gmail.com>
Message-ID: <229395f5-42a-b2fc-1de6-879737c3879d@crashcourse.ca>
References: <51f8bfd1-43-c9e4-e67d-dbcc1f62a840@crashcourse.ca> <CAP71WjyS1OzSaJEcOA9boq0=x6x9b3fk-TqXRriTdpLiw052HQ@mail.gmail.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Fri, 19 Mar 2021, Nicolas Dechesne wrote:

> On Fri, Mar 19, 2021 at 10:47 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >
> >   testing building qemuarm64 core-image-minimal from scratch, and
> > noticed it fetching for docbook-xml and docbook-xsl stuff ... is there
> > something that still needs docbook support? i'm about to take a quick
> > look to see what's demanding that, does anyone know?
>
> It's not related to yp-docs at least. most likely some recipes that
> use docbook for their docs/man pages, no?

  most likely, but as i'm explicitly not installing any documentation,
i'm now poking around to see what insists on building that for no
apparent reason.

rday
