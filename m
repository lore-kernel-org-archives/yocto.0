Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.4905.1628669888093461585
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 01:18:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 290CDFF803;
	Wed, 11 Aug 2021 08:18:05 +0000 (UTC)
Subject: Re: [yocto] New Override Syntax
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Darcy Watkins <dwatkins@sierrawireless.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
 <1699FF2DD7128D19.12542@lists.yoctoproject.org>
 <7595a925-97e3-03c2-6e51-48d732031c21@bootlin.com>
 <13A7932E-8B64-45EA-827E-B9EB8C787239@sierrawireless.com>
 <d23e3d7bee796884ee58c54cea558bc4566de1b6.camel@linuxfoundation.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <ccd0e6f2-73bf-fcde-6898-8cb129fce2ca@bootlin.com>
Date: Wed, 11 Aug 2021 10:18:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <d23e3d7bee796884ee58c54cea558bc4566de1b6.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Richard,

On 8/10/21 10:21 PM, Richard Purdie wrote:
> On Tue, 2021-08-10 at 17:51 +0000, Darcy Watkins wrote:
>> My apologies.  I don't think I made my question clear.  I am asking about the 
>> compatibility of old style override syntax moving forward (and new style syntax
>> in old versions).
>>
>> So if I continue using the old style override syntax (to ensure sure 
>> compatibility for use with older Yocto versions), at what future Yocto/OE 
>> release do you expect that old style override syntax will become erroneous 
>> (as opposed to say triggering deprecation warnings, etc)?
>>
>> Is support for the new style override syntax present in any existing 
>> Yocto/OpenEmbedded releases (in other words, has it been there for a while, 
>> but we are just now actively migrating to use it)?  If so, how far back does it go?
> The new syntax will work on the dunfell, gatesgarth, hardknott, master and new 
> release branches going forward. That applies now and that support will be in the
> next point releases for dunfell (3.1.11) and hardknott (3.3.3).


Thank you for the clarification.

Why do you mention Gatesgarth (3.2) while no update release is in sight?
According to https://wiki.yoctoproject.org/wiki/Releases, it's already
end of life.

Cheers,
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

