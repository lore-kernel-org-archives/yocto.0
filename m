Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C46E005A1
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 11:33:47 -0700 (PDT)
Received: from dlep33.itg.ti.com ([157.170.170.112])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id p9DIXgw3005797
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 13 Oct 2011 13:33:44 -0500
Received: from dlep26.itg.ti.com (smtp-le.itg.ti.com [157.170.170.27])
	by dlep33.itg.ti.com (8.13.7/8.13.8) with ESMTP id p9DIXgCe023377;
	Thu, 13 Oct 2011 13:33:42 -0500 (CDT)
Received: from DLEE74.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9DIXgGo028137;
	Thu, 13 Oct 2011 13:33:42 -0500 (CDT)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Thu, 13 Oct 2011 13:33:41 -0500
Received: from [172.24.16.43] (h16-43.vpn.ti.com [172.24.16.43])	by
	dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9DIXfJ4020148;
	Thu, 13 Oct 2011 13:33:41 -0500
Message-ID: <4E972F04.4030908@ti.com>
Date: Thu, 13 Oct 2011 14:33:40 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Jack Mitchell <ml@communistcode.co.uk>
References: <4E933C41.4000207@linux.intel.com>
	<4E94D624.1020107@am.sony.com>	<4E95C787.3020000@linux.intel.com>
	<4E96A198.9030109@communistcode.co.uk>
In-Reply-To: <4E96A198.9030109@communistcode.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Thu, 13 Oct 2011 18:33:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 10/13/2011 04:30 AM, Jack Mitchell wrote:
> On 12/10/2011 17:59, Darren Hart wrote:
>>
>> On 10/11/2011 04:49 PM, Tim Bird wrote:
>>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>>> As part of working on meta-tiny, I've come across a need (want?) to
>>>> present users with the ability to select some set of features in a 
>>>> local
>>>> configuration file that will impact the build of the image and a 
>>>> set of
>>>> recipes.
>>> Can you tell me more about meta-tiny?  this is the first I've heard
>>> about this (sorry if discussion went by on the mailing list and I
>>> missed it), and I'm very interested.
>>>
>>> I'm currently doing some size-related work for Sony (including
>>> some work to support 4K stacks).
>>>
>> Perhaps while I have the attention of a few interested parties, it would
>> be a good time for a poll. I'm interested in your motivation for smaller
>> images.
>>
>> Are you building SoC's with memory on die and needing to keep the memory
>> footprint down to save precious die real-estate?
>
> no
>
>>
>> Are you looking at creating mass-market products and saving a few
>> pennies on the flash storage translates to real money, so you want to
>> minimize the physical size?
>
> no
>
>>
>> Are you concerned with boot time, and have connected larger image sizes
>> with longer boot times?
>
> I am concerned with boot time, but don't believe it is image size that 
> ramps it up.
>
>>
>> Is there another motivating factor for your interest in small images?
>
> Yes, a smaller system which is easier to check, build and maintain. In 
> my office I am the leading driver for using linux in a team of 3 (two 
> software, one fpga developer) so the less time I spend building, 
> rebuilding and checking features I don't need, to ensure they don't 
> comprimise the stability of the system, the more faith they have in 
> the system I'm putting forward.
>

Ahhh, nice one Jack.

I had a similar thought this morning.  As the target system gets smaller 
the tolerance for spending X amount of time building non-target code 
goes down and the expectation of being able to use a "modest machine" 
goes up.

What is a modest machine?  Yocto quotes build times for a "refernce 
machine" that is pretty up to date and not on the low end.  To me, a 
modest machine is the laptop Mom & Dad bought "Stacy" when she graduated 
from High School and went off to College.  Stacy is now a junior and is 
exploring embedded Linux.  This might be an i3 2 GB machine.  A China 
based startup may also give its engineers modest machines.  I think many 
TI'ers would claim they have been stuck on modest machines for long periods.

So If a sato image takes 1 hour to build on the reference machine it may 
take 4 hours to build on a modest machine.  Of that time perhaps 1 hr is 
spent building host side stuff.

If your image is just kernel, busybox, and uclibc you probably only 
spend 1/2 hour building that on a modest machine.  Question is does 
oe-core/poky still make you build 1 hr worth of host stuff?

I know Richard's answer will be shared state but I want to see how that 
really works out.  This is an area we plan on playing with over the next 
release cycle.


>> Thanks,
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

