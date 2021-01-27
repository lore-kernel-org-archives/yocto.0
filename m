Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.13768.1611777849753563541
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 12:04:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8A0C538C084C
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 20:04:09 +0000 (UTC)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:58918 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1l4r2t-0001Et-IZ; Wed, 27 Jan 2021 15:04:08 -0500
Date: Wed, 27 Jan 2021 15:04:03 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Jack Mitchell <ml@embed.me.uk>
cc: Yocto discussion list <yocto@yoctoproject.org>, 
    Konrad Weihmann <kweihmann@outlook.com>
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
In-Reply-To: <a3853032-18b9-af2d-bc38-1c5c12e003f6@embed.me.uk>
Message-ID: <20a136f6-280-1f43-f3c-88af76a77b51@crashcourse.ca>
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca> <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk> <4d3d282c-60d8-e6c8-3c9-671e2f8b1f4@crashcourse.ca> <a3853032-18b9-af2d-bc38-1c5c12e003f6@embed.me.uk>
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


  regarding the proposed "meta-rubygems" layer --- which sounds like
it's going to take off as it can be initialized quite a lot just from
konrad's existing meta-sca layer, what are the options for "official"
YP hosting?

  i notice that quite a number of layers live at git.yoctoproject.org
-- would this proposed layer even be eligible for that and, if so,
what are the benefits of living under the git.YP.org umbrella?

  if not there, then github would be the obvious alternative.
thoughts?

rday
