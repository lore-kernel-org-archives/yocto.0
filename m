Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36744E006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 14:06:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Aug 2011 14:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="39194006"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 18 Aug 2011 14:06:22 -0700
Message-ID: <4E4D7ECE.2080305@linux.intel.com>
Date: Thu, 18 Aug 2011 14:06:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <E9678BA8-C7CD-4C9B-A32E-944193AB9956@keylevel.com>
	<4BDA6AE3-9B00-450A-912D-83BDFC7B0CC2@keylevel.com>
In-Reply-To: <4BDA6AE3-9B00-450A-912D-83BDFC7B0CC2@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Strange USB behavior
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
X-List-Received-Date: Thu, 18 Aug 2011 21:06:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/18/2011 12:36 PM, Chris Tapp wrote:
> On 18 Aug 2011, at 09:19, Chris Tapp wrote:
> 
>> I'm running on a platform using the Vortex86DX SoC which includes a  
>> CM119 USB audio interface.
>>
>> I've got a kernel configuration that recognizes and initializes this  
>> ok (dmesg reports it as an ALSA device). However, this is only the  
>> case if I also have a USB storage device connected when it boots!
>>
>> 1) The audio works if I boot the kernel from the USB device;
>> 2) The audio works if I boot from the system SD card and any USB  
>> storage device is connected (it's not booting from this accidentally);
>> 3) The audio does not work if I boot from the SD card without a USB  
>> storage device.
>>
>> Can anyone give me an idea where I should start looking to try and  
>> understand what's going on here?
>>
>> Kernel is a modified 'common-pc' 2.6.34 wrs that has been built  
>> using Yocto 0.9.
> 
> Looks like this is just a kernel load order issue.
> 
> The USB storage device seems to cause the sound device to initialise  
> earlier in the boot so it's ready when ALSA loads. Without it, it's  
> not loaded before ALSA, so a 'No sound card' message is produced in  
> the log - but there is one once the system is up.
> 

I asked Sarah Sharp if she had any thoughts, she responded in part:

One thing I might suspect is a problem with the host controller going
into suspend.  I think 2.6.34 didn't have support for USB suspend for
mass storage devices, so booting with a mass storage device would keep
the USB host controller from going into suspend.  This would also be
true of mice, since they did support suspend in 2.6.34, but it was
disabled by default.

Does it help if he disables USB device suspend in the kernel config?

--
Darren

> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
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

