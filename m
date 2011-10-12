Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E24C4E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 12:22:14 -0700 (PDT)
Received: from dlep36.itg.ti.com ([157.170.170.91])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id p9CJMBOP019808
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 12 Oct 2011 14:22:12 -0500
Received: from dlep26.itg.ti.com (smtp-le.itg.ti.com [157.170.170.27])
	by dlep36.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9CJMBgF012600;
	Wed, 12 Oct 2011 14:22:11 -0500 (CDT)
Received: from DFLE70.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9CJMBch002403;
	Wed, 12 Oct 2011 14:22:11 -0500 (CDT)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle70.ent.ti.com
	(128.247.5.40) with Microsoft SMTP Server id 14.1.323.3;
	Wed, 12 Oct 2011 14:22:11 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	p9CJMABC024458;	Wed, 12 Oct 2011 14:22:10 -0500
Message-ID: <4E95E8E2.5010202@ti.com>
Date: Wed, 12 Oct 2011 15:22:10 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95C787.3020000@linux.intel.com>
In-Reply-To: <4E95C787.3020000@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 12 Oct 2011 19:22:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 10/12/2011 12:59 PM, Darren Hart wrote:
>
>
> On 10/11/2011 04:49 PM, Tim Bird wrote:
>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>> As part of working on meta-tiny, I've come across a need (want?) to
>>> present users with the ability to select some set of features in a local
>>> configuration file that will impact the build of the image and a set of
>>> recipes.
>>
>> Can you tell me more about meta-tiny?  this is the first I've heard
>> about this (sorry if discussion went by on the mailing list and I
>> missed it), and I'm very interested.
>>
>> I'm currently doing some size-related work for Sony (including
>> some work to support 4K stacks).
>>
>
> Perhaps while I have the attention of a few interested parties, it would
> be a good time for a poll. I'm interested in your motivation for smaller
> images.

I am not on the front line but here is my take.

>
> Are you building SoC's with memory on die and needing to keep the memory
> footprint down to save precious die real-estate?

no.

However we sometimes run the full fileystem from DDR so there is no 
flash per say.  (Full filesystem image gets transfered at boot time). 
Board with N devices, all with DDR and ethernet and nothing else.  Don't 
use NFS for latency/performance consistency issues.

>
> Are you looking at creating mass-market products and saving a few
> pennies on the flash storage translates to real money, so you want to
> minimize the physical size?

Yes.

We still see flash size == to RAM size or 1/2 RAM.
32 MB RAM, 16 MB Flash
64 MB RAM, 32 MB flash

We had one EVM w/ 8 MB SPI flash and we fit a fairly decent headless 
system into that.  Not sure if that was customer driven or bad EVM 
definition.  Fortunity that EVM also had a MMC/SD card reader for the > 
8MB use case.

Of course once you go above a certain size (128/256 MB), people go 
MMC/SD and then minimums go way up.  1 GB is probably as cheap as 512MB.

We have not seen the situation Tim talked about with RAM < NVMEM (at 
least not for several years)

If you start getting into the oversize microcontroller area then you 
start getting very small.  However you are also probably only a kernel, 
uclibc, a very cut down busybox and one or two custom apps.

>
> Are you concerned with boot time, and have connected larger image sizes
> with longer boot times?
>

That is a nice benefit but not the main objective.

Better use case for seep cases is a partitioned NVMEM configuration with 
small faster flash (32MB-256MB parallel NAND) and slower larger storage 
(1+ GB SD Card etc).

With this config do you:
* treat the NAND as a dynamic FS cache
* use it to store the "core" os (/ but not /usr or /opt)
* use it to store only readahead like data

> Is there another motivating factor for your interest in small images?
>
> Thanks,
>

