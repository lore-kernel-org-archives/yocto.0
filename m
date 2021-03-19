Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6839.1616162857874675959
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 07:07:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4E04E38C06B0
	for <yocto@yoctoproject.org>; Fri, 19 Mar 2021 14:07:37 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:58000 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lNFmp-00Eyc7-6f; Fri, 19 Mar 2021 10:07:35 -0400
Date: Fri, 19 Mar 2021 10:07:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Mike Looijmans <mike.looijmans@topic.nl>
cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] does current bitbaking of core-image-minimal still need docbook stuff?
In-Reply-To: <5470ba1f-0458-6098-075c-83a2d9802fbc@topic.nl>
Message-ID: <3ffbd33e-77cb-3d25-105c-3c099c4d1e5@crashcourse.ca>
References: <51f8bfd1-43-c9e4-e67d-dbcc1f62a840@crashcourse.ca> <CAP71WjyS1OzSaJEcOA9boq0=x6x9b3fk-TqXRriTdpLiw052HQ@mail.gmail.com> <229395f5-42a-b2fc-1de6-879737c3879d@crashcourse.ca>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.9ee507ea-fec1-4143-9201-c16404865c89@emailsignatures365.codetwo.com> <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.5d9b3c12-31b9-4962-9937-06c86ad9fd73@emailsignatures365.codetwo.com>
 <5470ba1f-0458-6098-075c-83a2d9802fbc@topic.nl>
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

On Fri, 19 Mar 2021, Mike Looijmans wrote:

>
> Met vriendelijke groet / kind regards,
>
> Mike Looijmans
> System Expert
>
>
> TOPIC Embedded Products B.V.
> Materiaalweg 4, 5681 RJ Best
> The Netherlands
>
> T: +31 (0) 499 33 69 69
> E: mike.looijmans@topicproducts.com
> W: www.topic.nl
>
> Please consider the environment before printing this e-mail
> On 19-03-2021 11:45, Robert P. J. Day via lists.yoctoproject.org wrote:
> > On Fri, 19 Mar 2021, Nicolas Dechesne wrote:
> >
> >> On Fri, Mar 19, 2021 at 10:47 AM Robert P. J. Day <rpjday@crashcourse.ca>
> >> wrote:
> >>>
> >>>    testing building qemuarm64 core-image-minimal from scratch, and
> >>> noticed it fetching for docbook-xml and docbook-xsl stuff ... is there
> >>> something that still needs docbook support? i'm about to take a quick
> >>> look to see what's demanding that, does anyone know?
> >> It's not related to yp-docs at least. most likely some recipes that
> >> use docbook for their docs/man pages, no?
> >    most likely, but as i'm explicitly not installing any documentation,
> > i'm now poking around to see what insists on building that for no
> > apparent reason.
> >
> My favorite method for that is to just remove the recipe that provides it and
> then see where it breaks...

  it appears (after a *very* cursory investigation) that
shared-mime-info-native is included, which drags in xmlto-native,
which then drags in docbook stuff. i'll confirm that later.

rday
