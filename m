Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8710BE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 17:29:21 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 30 Mar 2012 17:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83722717"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Mar 2012 17:29:20 -0700
Message-ID: <4F764FB7.2080508@linux.intel.com>
Date: Fri, 30 Mar 2012 17:28:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
In-Reply-To: <1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 31 Mar 2012 00:29:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/30/2012 05:08 PM, Koen Kooi wrote:
> 
> Op 30 mrt. 2012, om 16:52 heeft Darren Hart het volgende geschreven:
> 
> [snip]
> 
>> On 03/30/2012 02:11 PM, Richard Purdie wrote:
>>> 
>>> The criteria I see for being part of the Yocto Project are:
>>> 
>>> a) Sharing the project's objectives (e.g. making embedded Liunx 
>>> development easier) b) Willing to be part of the Yocto Project's
>>> governance structure c) Bringing something new/beneficial to the
>>> Yocto Project (often with mutual benefit) d) Have some kind of
>>> sustainable resource plan
>>> 
>> 
>> I'll take a couple careful steps into this arena to offer just one
>> more possible criteria.
>> 
>> One of the touted goals/advantages/benefits of using the Yocto
>> Project is to work with a vetted set of sources that are known to
>> all work together, having had some level of QA performed. This is
>> something the poky repository accomplishes by bringing specifc
>> versions of bitbake and oe-core together (along with some other
>> tooling). At some point, this gets rolled up into a release of the
>> Yocto Project: 0.9, 1.1, and soon 1.2. It's common for someone to
>> refer to these release points as the base for their BSP.
>> 
>> It therefor seems reasonable to me for a distribution definition
>> (which is how I think of Angstrom - but feel free to correct me
>> Koen) to make a statement like "This release of Angstrom builds
>> with the Yocto Project X.Y release."
> 
> Yes, but see below
> 
>> I believe this is the sort of language that most outside
>> developers would immediately understand and associate with being
>> part of the Yocto Project.
> 
> What does a 'yocto project release' actually mean? Right now it looks
> more like a 'poky (the distro) release'. Since angstrom builds on
> oe-core and bitbake directly the statement (in the current situation)
> would be more like:
> 

/me hands koen a real MUA that wraps at < 80 characters...
and wraps his mail for him...

(everyone else gets a pass, but you?  ;-)

I see the "poky" distro definition as only a part of the poky
repository, the naming is unfortunate, but I think we can all see past
that for the purposes of this discussion. This is part of meta-yocto
which will at some point be it's own repository.

So I don't agree with the assertion that it looks more like a "poky the
distro release".

> "This release of angstrom builds on oe-core 2012.1, bitbake
> 1.something.x, which matches the YP 1.x release".


OK. Donning my "Yeah but I have a XYZ and things to get done" hat, I
think people will respond more positively to:

"Download the 1.2 Yocto Project release, add meta-angstrom to your
bblayers.conf, and build $IMAGE_TARGET"

than they will to

Download bitbake X.Y, Angstrom X.Y, OE Core X.Y, etc. instructions on
setting up the layers, the local.conf, etc etc.

I believe there are some other details the poky repository helps out
with (someone more familiar with working with the individual components
would have to enumerate these, I honestly don't know what they all are).

And yes, there are the BSP layers to add to each of these scenarios, but
that effects each equally.

All that environment setup is something that can make or break the
initial experience. I believe lots of users appreciate not having to
pull all the pieces together themselves. (especially those that don't
even know what they're not having to do!)


> 
> If we move more things under the YP banner and convince subprojects
> to adopt the same schedule, we could make statements like:
> 
> "The Yocto Project 1.x release consist of the following modules:
> 
> * bitbake 1.x * oe-core 2012.x * poky $DOTT_character * eglibc 2.17 *
> pseudo 1.2 * angstrom 2012.04 * meta-xilinx 6.5 ... etc"
> 

With the exception of eglibc (I wouldn't want to have to list every
package from oe-core and the layers!) this doesn't seem out of line to me.

> I think that would make it fit better with the "umbrella project"
> idea. "consists" might be a bad choice of words, I blame the
> unlimited coffee refills at the diner across the street :)


And I blame any perceived snarkiness on the migraine and the 4 different
medications the doc's got me on to try and patch me up to fly on Monday ;-)


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

