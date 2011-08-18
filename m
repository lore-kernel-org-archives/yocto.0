Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5738E006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 14:21:19 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:43293
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1QuA1p-0003lw-Kf
	for yocto@yoctoproject.org; Thu, 18 Aug 2011 22:21:29 +0100
Message-Id: <D879C7E6-D06C-4706-B7AF-E02E3FC62177@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E4D7ECE.2080305@linux.intel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 18 Aug 2011 22:21:27 +0100
References: <E9678BA8-C7CD-4C9B-A32E-944193AB9956@keylevel.com>
	<4BDA6AE3-9B00-450A-912D-83BDFC7B0CC2@keylevel.com>
	<4E4D7ECE.2080305@linux.intel.com>
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
X-List-Received-Date: Thu, 18 Aug 2011 21:21:20 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 18 Aug 2011, at 22:06, Darren Hart wrote:

> I asked Sarah Sharp if she had any thoughts, she responded in part:
>
> One thing I might suspect is a problem with the host controller going
> into suspend.  I think 2.6.34 didn't have support for USB suspend for
> mass storage devices, so booting with a mass storage device would keep
> the USB host controller from going into suspend.  This would also be
> true of mice, since they did support suspend in 2.6.34, but it was
> disabled by default.
>
> Does it help if he disables USB device suspend in the kernel config?

I'll give it a try (will be a while as I've moved to the 5.0.1 release  
and the build has just started!).

Thanks for the suggestion :-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




