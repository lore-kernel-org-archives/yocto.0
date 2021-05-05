Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.4931.1620203002616933698
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 01:23:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1887838C04F0
	for <yocto@yoctoproject.org>; Wed,  5 May 2021 08:23:22 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:37926 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1leCoQ-0000JP-FF; Wed, 05 May 2021 04:23:19 -0400
Date: Wed, 5 May 2021 04:23:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: akuster808 <akuster808@gmail.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] what OE/YP layers should be considered "supported"?
In-Reply-To: <cac05b3c-8876-de8b-ef1d-5b894f9d467d@gmail.com>
Message-ID: <f42bebb4-ac57-623d-edb0-b8bce6b05e44@crashcourse.ca>
References: <f0f1c2d4-ef14-a211-6bff-8f7b876fdc7c@crashcourse.ca> <cac05b3c-8876-de8b-ef1d-5b894f9d467d@gmail.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=1.0
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

On Tue, 4 May 2021, akuster808 wrote:

> Helllo Robert,
>
> On 5/4/21 2:03 PM, Robert P. J. Day wrote:
> >   related to something that richard purdie mentioned on the OE list,
> > if one wanted to do a YP-wide "cleanup" of some indeterminate form,
> > what are the layers that would be considered mandatory to cover in
> > such a cleanup?

> I don't have an context in the email you are referring to. Can you
> include it please? Supported will mean different things to different
> people.
>
> -Armin

  granted, that Q was a bit vague ... based on a suggestion of
richard's, i was going to do an "audit" of OE/YP layers to see the
effect of doing a particular minor cleanup, but it's not clear the
requirement for wide-sweepingness that would represent a sufficient
audit.

  would that necessarily cover every single layer identified at
layers.openembedded.org? that seems a bit onerous. so is there some
moderately vague definition of what constitutes a minimally
representative collection of layers?

rday
