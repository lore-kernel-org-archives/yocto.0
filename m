Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43871E0032E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 14:30:42 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Nov 2012 14:30:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,252,1352102400"; d="scan'208";a="217928838"
Received: from unknown (HELO envy.home) ([10.255.12.66])
	by azsmga001.ch.intel.com with ESMTP; 14 Nov 2012 14:30:41 -0800
Message-ID: <50A41B91.9040504@linux.intel.com>
Date: Wed, 14 Nov 2012 14:30:41 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121029 Thunderbird/16.0.2
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <50A2EFC0.3090908@am.sony.com> <50A3CB53.5040101@linux.intel.com>
	<50A3E650.5010900@am.sony.com>
	<50A3E7F1.3090306@linux.intel.com> <50A3E99A.20908@am.sony.com>
	<50A3EB5D.1080606@linux.intel.com> <50A41184.2050705@am.sony.com>
In-Reply-To: <50A41184.2050705@am.sony.com>
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
X-List-Received-Date: Wed, 14 Nov 2012 22:30:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/14/2012 01:47 PM, Tim Bird wrote:
> On 11/14/2012 11:05 AM, Darren Hart wrote:

...

>>>> I really need to get the poky-tiny docs going... right after I finish
>>>> these kernel docs I guess... anyone want to volunteer?
>>>
>>> I'd be happy to write some stuff up.  It wouldn't
>>> be exhaustive, but I could document what I've found out about
>>> (the LIBC_FEATURE stuff, and some of the dependencies I've found,
>>> as well as invocation tips and some of the differences between
>>> the poky default and poky-tiny packages and features).
>>>
>>> Where would you like it?  Is there a wiki page or a doc already started?
>>
>> Not yet, how about here:
>>
>> https://wiki.yoctoproject.org/wiki/Projects/Poky-Tiny
>>
>> And we'll link to it here:
>>
>> https://wiki.yoctoproject.org/wiki/Projects
>>
>> Thanks for volunteering, very much appreciated!
> 
> There's some initial stuff there now.

This is awesome Tim, thank you very much!

I moved it to https://wiki.yoctoproject.org/wiki/Poky-Tiny as that is
more consistent with the other Project pages (which became apparent when
I saw the Projects/Poky-Tiny link on the main Projects page). Sorry for
the bad info above.

A couple points to consider.

1) You might want to add tiny-init as being a integral part of poky-tiny
2) You can also inherit from poky tiny using "include poky-tiny.conf"
rather than duplicating it wholesale. You can then update things like
the various DISTRO_LIBC_* items to adjust how libc is built, and
otherwise keep your tiny distribution definition small and make it
easier to maintain (so long as you want to continue to inherit changes
made to poky-tiny).

Again, thank you for doing this!

--
Darren


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

