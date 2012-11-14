Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24A3FE0032E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 11:05:03 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Nov 2012 11:05:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,252,1352102400"; d="scan'208";a="217770068"
Received: from unknown (HELO envy.home) ([10.255.12.66])
	by azsmga001.ch.intel.com with ESMTP; 14 Nov 2012 11:05:02 -0800
Message-ID: <50A3EB5D.1080606@linux.intel.com>
Date: Wed, 14 Nov 2012 11:05:01 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121029 Thunderbird/16.0.2
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <50A2EFC0.3090908@am.sony.com> <50A3CB53.5040101@linux.intel.com>
	<50A3E650.5010900@am.sony.com>
	<50A3E7F1.3090306@linux.intel.com> <50A3E99A.20908@am.sony.com>
In-Reply-To: <50A3E99A.20908@am.sony.com>
X-Enigmail-Version: 1.4.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem compiling diffutils on poky-tiny in danny
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
X-List-Received-Date: Wed, 14 Nov 2012 19:05:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/14/2012 10:57 AM, Tim Bird wrote:
> On 11/14/2012 10:50 AM, Darren Hart wrote:
>> runqemu doesn't quite know what to make of poky-tiny :-) Try the following:
>>
>> $ qemu-system-i386 -kernel path/to/kernel -initrd path/to/image.cpio.gz
>> -nographic -append "console=ttyS0 root=/dev/ram0"
> 
> Ahh.  That's helpful.  Thanks.
> 
>> I really need to get the poky-tiny docs going... right after I finish
>> these kernel docs I guess... anyone want to volunteer?
> 
> I'd be happy to write some stuff up.  It wouldn't
> be exhaustive, but I could document what I've found out about
> (the LIBC_FEATURE stuff, and some of the dependencies I've found,
> as well as invocation tips and some of the differences between
> the poky default and poky-tiny packages and features).
> 
> Where would you like it?  Is there a wiki page or a doc already started?

Not yet, how about here:

https://wiki.yoctoproject.org/wiki/Projects/Poky-Tiny

And we'll link to it here:

https://wiki.yoctoproject.org/wiki/Projects

Thanks for volunteering, very much appreciated!

--
Darren

> 
>>>>
>>>>>
>>>>> Has anyone seen this type of error before, or can provide some
>>>>> hints of what to check or adjust to fix this?
>>>>
>>>> Yup, it's wide characters being required by diffutils and being excluded
>>>> by the poky-tiny DISTRO_FEATURES_LIBC assignment. If supported by
>>>> diffutils, we might be able to test ENABLE_WIDEC in diffutils and
>>>> configure accordingly (see the ncurses recipes for an example).
>>>
>>> I'll poke around.  I'm curious why poky-tiny core-image-minimal built
>>> OK, but core-image-minimal-initramfs didn't.  I didn't expect
>>> any difference in target-side binaries between the two - only some
>>> changes in the image build steps.
>>>
>>> Thanks for the tips.  I'll check it out.
>>
>> Let me know what you find out. I thought the initramfs had the installer
>> in it, but maybe that's included by some other mechanism.
> 
> Will do.
>  -- Tim
> 
> =============================
> Tim Bird
> Architecture Group Chair, CE Workgroup of the Linux Foundation
> Senior Staff Engineer, Sony Network Entertainment
> =============================
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

