Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B8AAE0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:49:58 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2011 08:49:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="90045821"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2011 08:49:58 -0800
Message-ID: <4EF20E24.8090901@linux.intel.com>
Date: Wed, 21 Dec 2011 08:49:40 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bob Cochran <yocto@mindchasers.com>
References: <4ECAF89E.1030505@mindchasers.com>
	<4ECC2718.50008@linux.intel.com>	<4ECD4CF8.4020005@linux.intel.com>
	<CAMKF1spQGcQM9NwTrHyntYMmZByS0ztkqUGUC6=3sZOztvqWBw@mail.gmail.com>
	<4EEE4581.7070700@mindchasers.com>
In-Reply-To: <4EEE4581.7070700@mindchasers.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: Atom netbook recommendation?
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
X-List-Received-Date: Wed, 21 Dec 2011 16:49:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/18/2011 11:56 AM, Bob Cochran wrote:
> On 11/23/2011 02:51 PM, Khem Raj wrote:
>> On Wed, Nov 23, 2011 at 11:43 AM, Darren Hart<dvhart@linux.intel.com>  wrote:
>>> We also have things working on the Toshiba NB305. The atom-pc machine
>>>
>>
>> FWIW I have asus eepc here and it works great with yocto/oe-core/meta-intel
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> 
> Thanks for the feedback everyone.  I now have a dual core Atom N570 
> netbook (Acer Aspire One model).
> 
> It didn't boot the hddimage off of a usb stick (SysLinux halted - I'll 

This is likely due to a buggy BIOS. See the README.hardware section
about formatting the disk as USBZIP format.

We hope to address this with a more robust live hddimg type in the future.

> figure out why later), but I have been having fun booting modified yocto 
> standard Linux images using grub.  I put a 2.5" 60 G OCZ SSD in it along 
> with loading Ubuntu.  It can build poky minimal from scratch in a few 
> hours and rebuilds the kernel fairly quick (should get downright good 
> once I upgrade the RAM from 1G).   At this point, I'm having fun playing 
> with the kernel and the initial ram disk with a custom init.
> 
> And the nice thing with the SSD installed is that it boots Ubuntu in a 
> few seconds for when I want to make mods to my poky image.  It makes for 
> a very cool little development system!
> 
> Bob
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

