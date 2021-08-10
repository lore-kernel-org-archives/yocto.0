Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web08.959.1628618802536205691
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 11:06:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id AB6B7C0007;
	Tue, 10 Aug 2021 18:06:40 +0000 (UTC)
Subject: Re: [yocto] New Override Syntax
To: Darcy Watkins <dwatkins@sierrawireless.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
 <1699FF2DD7128D19.12542@lists.yoctoproject.org>
 <7595a925-97e3-03c2-6e51-48d732031c21@bootlin.com>
 <13A7932E-8B64-45EA-827E-B9EB8C787239@sierrawireless.com>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <024ae9a5-4c4b-ba13-6f03-7b40a43c937f@bootlin.com>
Date: Tue, 10 Aug 2021 20:06:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <13A7932E-8B64-45EA-827E-B9EB8C787239@sierrawireless.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Darcy,

On 8/10/21 7:51 PM, Darcy Watkins wrote:
> Hi,
>
> My apologies.  I don't think I made my question clear.  I am asking about the compatibility of old style override syntax moving forward (and new style syntax in old versions).
>
> So if I continue using the old style override syntax (to ensure sure compatibility for use with older Yocto versions), at what future Yocto/OE release do you expect that old style override syntax will become erroneous (as opposed to say triggering deprecation warnings, etc)?

If I understood correctly, the old style will continue to be supported
in 3.1 and in 3.3, as long as these releases are supported (that's what
I'm trying to find out). These versions will support both syntaxes
actually.

However, from 3.4 on, only the new syntax will be supported.

>
> Is support for the new style override syntax present in any existing Yocto/OpenEmbedded releases (in other words, has it been there for a while, but we are just now actively migrating to use it)?  If so, how far back does it go?


No, we don't have any releases yet with the new syntax. The next dot
update to Dunfell is planned on 2021/9/24, and that's when you'll have a
release with both syntaxes supported. Dunfell is supposed to be
supported for at least 2 years, that is until Apr. 2022.

Cheers,
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

