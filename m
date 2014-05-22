Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8FE5E00B85; Thu, 22 May 2014 01:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C47EE0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 01:29:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 6EECD860E7;
	Thu, 22 May 2014 08:29:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id YqdPEWIbEuVF; Thu, 22 May 2014 08:29:29 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9B351860E6;
	Thu, 22 May 2014 08:29:29 +0000 (UTC)
Message-ID: <537DB568.4060904@dynamicdevices.co.uk>
Date: Thu, 22 May 2014 09:29:28 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>		<537CF707.4060506@mlbassoc.com>		<CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>		<537D0964.9090208@dynamicdevices.co.uk>	
	<CANr+NRsnNeBtkJOB-EVNzsGWOOH6YG1cnw11FOcbo9V78-8vPg@mail.gmail.com>	
	<537D3560.2040702@dynamicdevices.co.uk>
	<1400746996.17834.26.camel@ted>
In-Reply-To: <1400746996.17834.26.camel@ted>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, gary@mlbassoc.com
Subject: Re: meta-mono core-image-mono failing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 May 2014 08:29:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 22/05/2014 09:23, Richard Purdie wrote:
> On Thu, 2014-05-22 at 00:23 +0100, Alex J Lennon wrote:
>> Thanks Stefan.  > daisy was my suspicion but that seemed unlikely so I
>> have a clean Fedora build underway with daisy / meta-mono /
>> core-image-mono to prove it to myself as a first pass before trying master.
>>
>> As I do this I am thinking it would be nice if there were canonical
>> images of Yocto-X.Y available to run up on Amazon/Azure/elsewhere to
>> prove these things out in the background without mashing my SSDs.
>>
>> I am guessing somebody has done this already but I hunted around Amazon
>> and couldn't see any community images that looked useful (?)
>>
>> Similarly (and I confess I haven't yet had time to understand
>> AutoBuilder as I should) presumably there are a number of daily builds
>> in the cloud, on each of the supported host platforms, for each of the
>> advertised layers, and if they fail then maintainers are kicked? Is that
>> how things work? If so, can you advise how I request to add meta-mono to
>> the kick-list?
> Its a nice idea but right now we struggle to test and keep OE-Core
> building, let alone trying to define tests for every other layer :(. The
> amount of time I and others spend on this for OE-Core is phenomenal.

I can well imagine Richard! I've often wondered how the team(s) manage
to keep everything running along so smoothly.

>
> If we had more people and resources, sure but right now there is no such
> setup.

Like you I'm very time constrained here unfortunately, but I like the
idea of having some baseline VM images ready to go on Amazon or Azure as
a starting point for testing at least.

If such a thing hasn't already been done I might try to put those
together. If I do get around to it I'll you know (if of interest)

Cheers,

Alex


