Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5458.1611738600320463133
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 01:10:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6781738C049A
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 09:09:59 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:34706 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1l4gpp-00006c-Ue; Wed, 27 Jan 2021 04:09:58 -0500
Date: Wed, 27 Jan 2021 04:09:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Jack Mitchell <ml@embed.me.uk>
cc: Yocto discussion list <yocto@yoctoproject.org>, 
    Konrad Weihmann <kweihmann@outlook.com>
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
In-Reply-To: <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk>
Message-ID: <4d3d282c-60d8-e6c8-3c9-671e2f8b1f4@crashcourse.ca>
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca> <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk>
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

On Wed, 27 Jan 2021, Jack Mitchell wrote:
... snip ...

> Hi Robert,
>
> This is something I would be interested in. I have a developed a
> much more basic rubygems class privately which I had intended to
> opensource and create a similar later, so it would be nice to have a
> central place to contribute Ruby/RubyGems improvements. As you have
> found there are many layers with spotty Ruby support and a
> particular copy of an old class that is being banded about which is
> often insufficient.

  cool ... care to share your rubygems.bbclass file? be great to
combine the best of both worlds.

rday
