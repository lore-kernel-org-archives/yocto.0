Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AEA7E0124A
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 01:30:18 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 166CC22D09
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 08:09:03 +0100 (BST)
Message-ID: <4E96A198.9030109@communistcode.co.uk>
Date: Thu, 13 Oct 2011 09:30:16 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95C787.3020000@linux.intel.com>
In-Reply-To: <4E95C787.3020000@linux.intel.com>
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
X-List-Received-Date: Thu, 13 Oct 2011 08:30:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/10/2011 17:59, Darren Hart wrote:
>
> On 10/11/2011 04:49 PM, Tim Bird wrote:
>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>> As part of working on meta-tiny, I've come across a need (want?) to
>>> present users with the ability to select some set of features in a 
>>> local
>>> configuration file that will impact the build of the image and a set of
>>> recipes.
>> Can you tell me more about meta-tiny?  this is the first I've heard
>> about this (sorry if discussion went by on the mailing list and I
>> missed it), and I'm very interested.
>>
>> I'm currently doing some size-related work for Sony (including
>> some work to support 4K stacks).
>>
> Perhaps while I have the attention of a few interested parties, it would
> be a good time for a poll. I'm interested in your motivation for smaller
> images.
>
> Are you building SoC's with memory on die and needing to keep the memory
> footprint down to save precious die real-estate?

no

>
> Are you looking at creating mass-market products and saving a few
> pennies on the flash storage translates to real money, so you want to
> minimize the physical size?

no

>
> Are you concerned with boot time, and have connected larger image sizes
> with longer boot times?

I am concerned with boot time, but don't believe it is image size that 
ramps it up.

>
> Is there another motivating factor for your interest in small images?

Yes, a smaller system which is easier to check, build and maintain. In 
my office I am the leading driver for using linux in a team of 3 (two 
software, one fpga developer) so the less time I spend building, 
rebuilding and checking features I don't need, to ensure they don't 
comprimise the stability of the system, the more faith they have in the 
system I'm putting forward.

>
> Thanks,
>

