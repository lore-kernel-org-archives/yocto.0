Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0E0DE00723
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 16:46:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Apr 2012 16:46:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150176119"
Received: from unknown (HELO envy.home) ([10.255.12.143])
	by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2012 16:46:27 -0700
Message-ID: <4F7E2EAB.7080900@linux.intel.com>
Date: Thu, 05 Apr 2012 16:45:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>
References: <30B122B8-C6E4-46CE-87A9-AF7F61A06643@keylevel.com>
	<4F7DFC36.5040108@mlbassoc.com>
	<8E003040-BCBA-43ED-82B3-9C7BF771AB44@keylevel.com>
	<20120405210547.GC11087@denix.org>
In-Reply-To: <20120405210547.GC11087@denix.org>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: kernel26 'machine feature'
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
X-List-Received-Date: Thu, 05 Apr 2012 23:46:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/05/2012 02:05 PM, Denys Dmytriyenko wrote:
> On Thu, Apr 05, 2012 at 09:17:28PM +0100, Chris Tapp wrote:
>> On 5 Apr 2012, at 21:10, Gary Thomas wrote:
>>
>>> On 2012-04-05 14:02, Chris Tapp wrote:
>>>> Quite a few machine conf files specify the kernel26 machine feature. e.g., crownbay.conf has:
>>>>
>>>> MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
>>>>                     acpi serial usbgadget"
>>>>
>>>> What does this do? It's not listed at http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#ref-features-machine and seems to be at odds with:
>>>>
>>>> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>>> PREFERRED_VERSION_linux-yocto = "3.0%"
>>>
>>> I don't think it does anything any more.  I'm pretty sure it used
>>> to be used to select which style of kernel module utilities to
>>> install (there was a change in kernel module format between 2.4
>>> and 2.6), but it seems that's gone now.  At least in the Poky/Yocto
>>> tree (oe-core + meta-yocto), there is no active use of this feature.
> 
> Yes, Classic OE (unlike OE-Core) used to support 2.4 and 2.6 kernels, hence 
> the use flag.
> 
>> Thanks, I was hoping it was something as simple as that.
>>
>> Another (possibly related) question - when the kernel built I noticed that 
>> linux_libc_headers_yocto-2.6.37 was 'mentioned' in the log output. Why was 
>> this used and not the headers for 3.0.18 ? The host is 2.6.32, so it doesn't 
>> look like is was for the tool chain.
> 
> Those are "user-space" kernel headers for libc. Those usually don't need to 
> match the exact kernel version, as APIs don't change that often between the 
> kernel and user-space. Unless you need some specific new API that got added in 
> the latest kernel...
> 

It's done this way to speed the build process as it uses a simple
tarball download of the kernel sources to do this. Ultimately I believe
we should build this package as part of the kernel build and PROVIDE it
as well.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

