Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.7538.1631612430770660661
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 02:40:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D6090E0011;
	Tue, 14 Sep 2021 09:40:28 +0000 (UTC)
Subject: Re: [yocto] Upgrading Nodejs from 10.x to 14.x in yocto Zeus #zeus #yocto #zeus
To: poornesh@elmeasure.com, yocto@lists.yoctoproject.org
References: <0Pnp.1631595312416265108.PoCm@lists.yoctoproject.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <3743602e-bced-9d01-cdd9-ea98792fcea2@bootlin.com>
Date: Tue, 14 Sep 2021 11:40:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <0Pnp.1631595312416265108.PoCm@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi

On 9/14/21 6:55 AM, poornesh@elmeasure.com wrote:
> Greetings !
>
> I am using yocto zeus for my project . I am having a requirement of
> Nodejs 14.x but the available Nodejs version in yocto zeus is 10.x .
> Can anyone help me by sharing the steps to upgrade Nodejs 10.x to 14.x
> in yocto zeus.


I am not an expert and my experience is limited, but I would try to
create my own custom layer (see
https://docs.yoctoproject.org/dev-manual/common-tasks.html, you probably
already have one), and add a copy of the current Nodejs recipe in
meta-oe:
https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-devtools/nodejs

Then try and see what's missing in Zeus in terms of dependencies or
versions, and add more custom recipes if needed.

Note that the latest versions of recipes (and bitbake of course) now use
a new syntax (see
https://docs.yoctoproject.org/migration-guides/migration-3.4.html#override-syntax-changes).
You'll have to restore the old syntax for the recipes to be usable in Zeus.

I cannot suggest to upgrade to a newer version of Yocto Project yet,
because we don't have any release yet that supports Nodejs 14.x.

If others have better solutions to propose, don't hesitate to reply to
this thread.

Cheers,
Michael.
-- 

Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

