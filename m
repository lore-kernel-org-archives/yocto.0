Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.224.1628615836176328306
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 10:17:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 589B32000A;
	Tue, 10 Aug 2021 17:17:14 +0000 (UTC)
Subject: Re: [yocto] New Override Syntax
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
 <1699FF2DD7128D19.12542@lists.yoctoproject.org>
Organization: Bootlin
Message-ID: <7595a925-97e3-03c2-6e51-48d732031c21@bootlin.com>
Date: Tue, 10 Aug 2021 19:17:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1699FF2DD7128D19.12542@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi again Darcy,

On 8/10/21 6:35 PM, Michael Opdenacker wrote:
> Where can we find until when the current releases are going to be
> supported? Such information doesn't appear on
> https://wiki.yoctoproject.org/wiki/Releases

I haven't managed to get such information yet, so I opened a bug to make
sure I get an answer by Thursday, when we have our bug triage meeting.

Here's the bug: https://bugzilla.yoctoproject.org/show_bug.cgi?id=14503
Don't hesitate to subscribe to it.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

