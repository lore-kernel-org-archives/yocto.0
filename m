Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web09.86.1628613311615633410
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 09:35:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B12141C0009;
	Tue, 10 Aug 2021 16:35:08 +0000 (UTC)
Subject: Re: [yocto] New Override Syntax
To: Darcy Watkins <dwatkins@sierrawireless.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <84fb092f-bc13-2b45-0b8f-908e688a749e@bootlin.com>
Date: Tue, 10 Aug 2021 18:35:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Darcy,

On 8/10/21 6:16 PM, Darcy Watkins wrote:
>
> Hi,
>
>  
>
> Does anyone know how long (or how many releases) that the old override
> syntax will still be supported?  (Like a deprecation EOL cycle).
>
>  
>
> A corollary question: How far back in old releases is the new syntax
> supported?
>
>  
>
> This potentially affects layers that have a single branch that support
> multiple versions of Yocto/OE.
>

IANTM (I Am Not The Maintainers!), but I know that the old override
syntax will be supported in the maintained releases as long as they are
supported:

  * Dunfell 3.1, Long Term Support
  * Gatesgarth 3.2, now reaching end of life as written on
    https://wiki.yoctoproject.org/wiki/Releases
  * Hardknott 3.3, the latest version, still supported.

I know I haven't replied to your first question yet, so here's a
question for other people on the list...

Where can we find until when the current releases are going to be
supported? Such information doesn't appear on
https://wiki.yoctoproject.org/wiki/Releases

To reply to your second question, I believe the new syntax will be
supported in the upcoming updates to  Dunfell 3.1, Gatesgarth 3.2
(provided an update release is made), Hardknott 3.3 and of course in the
upcoming Honister 3.4 release.

I hope this helps. I'm trying to get an answer to the end-of-life question.

Cheers,
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

