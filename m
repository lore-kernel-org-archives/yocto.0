Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.30832.1608503573539590143
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Dec 2020 14:32:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:50470 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kr7Fz-00026m-UH; Sun, 20 Dec 2020 17:32:52 -0500
Date: Sun, 20 Dec 2020 17:32:49 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Rob Prowel <rprowel@comcast.net>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Can a single recipe .bb file be used to generate both Python2 and Python3 packages?
In-Reply-To: <5f347009-f38b-34d2-59c3-bae74032fe87@comcast.net>
Message-ID: <b6bf3a6-8da3-6426-4bb-33b01c91f165@crashcourse.ca>
References: <20201220084627.Horde.bD0u6njbQfLERYjsoqBMhWn@crashcourse.ca> <5f347009-f38b-34d2-59c3-bae74032fe87@comcast.net>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Sun, 20 Dec 2020, Rob Prowel wrote:

> On 12/20/20 8:46 AM, Robert P. J. Day wrote:
>
> > I asked if that is what she was thinking of, but she was adamant
> > that she remembers a single recipe .bb file that could do this.
> > Is there such a thing? I suspect one could hack something up,
> > but is such an approach considered standard? Or even doable?
>
> Doable?  Yes...Smart to do? IMHO, absolutely not.
>
> With the recipe class methods that accomplish each stage of the
> build you can customize them any way you want, but at the expense of
> maintaining clear intent and keeping it maintainable.
>
> Your initial approach of using common includes and a heirarchical
> inheritance for separate recipes makes more sense.

  i suspected as much, i just wanted to confirm there was no
super-clever way to do this.

rday
