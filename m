Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C24E006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 12:36:27 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:22377
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qu8OL-00017r-MV
	for yocto@yoctoproject.org; Thu, 18 Aug 2011 20:36:37 +0100
Message-Id: <4BDA6AE3-9B00-450A-912D-83BDFC7B0CC2@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <E9678BA8-C7CD-4C9B-A32E-944193AB9956@keylevel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 18 Aug 2011 20:36:35 +0100
References: <E9678BA8-C7CD-4C9B-A32E-944193AB9956@keylevel.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Thu, 18 Aug 2011 19:36:28 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 18 Aug 2011, at 09:19, Chris Tapp wrote:

> I'm running on a platform using the Vortex86DX SoC which includes a  
> CM119 USB audio interface.
>
> I've got a kernel configuration that recognizes and initializes this  
> ok (dmesg reports it as an ALSA device). However, this is only the  
> case if I also have a USB storage device connected when it boots!
>
> 1) The audio works if I boot the kernel from the USB device;
> 2) The audio works if I boot from the system SD card and any USB  
> storage device is connected (it's not booting from this accidentally);
> 3) The audio does not work if I boot from the SD card without a USB  
> storage device.
>
> Can anyone give me an idea where I should start looking to try and  
> understand what's going on here?
>
> Kernel is a modified 'common-pc' 2.6.34 wrs that has been built  
> using Yocto 0.9.

Looks like this is just a kernel load order issue.

The USB storage device seems to cause the sound device to initialise  
earlier in the boot so it's ready when ALSA loads. Without it, it's  
not loaded before ALSA, so a 'No sound card' message is produced in  
the log - but there is one once the system is up.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




