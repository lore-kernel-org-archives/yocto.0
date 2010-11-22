Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03AC14C80052
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 13:09:14 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAMJ9Emx015559
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 11:09:14 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 22 Nov 2010 11:09:13 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 22 Nov 2010 11:09:14 -0800
Message-ID: <4CEABFD8.5090703@windriver.com>
Date: Mon, 22 Nov 2010 13:09:12 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CEABE21.40406@intel.com>
In-Reply-To: <4CEABE21.40406@intel.com>
X-OriginalArrivalTime: 22 Nov 2010 19:09:14.0557 (UTC)
	FILETIME=[C0CD26D0:01CB8A78]
Subject: Re: When is it ok to link to host libraries?
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
X-List-Received-Date: Mon, 22 Nov 2010 19:09:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/22/10 1:01 PM, Scott Garman wrote:
> Hello,
> 
> I'd like to get some better clarity about what constitutes host 
> contamination when it comes to building packages. Could someone with 
> deeper knowledge of these issues clarify or comment on the following?
> 
> My understanding is that when building non -native recipes, there should 
> be absolutely no linking to the libraries on the host system - meaning 
> that autotols configure scripts and so on should not be determining 
> which features are available based on what packages are installed on the 
> host OS. The only exceptions to this are the use of some core system 
> utilities (cp, mv, etc).

In general this is true.... however there are cases where a helper application
needs to be built, i.e. to generate a structure list... to compile some
specialized code, etc..  This can use the host system's compiler and libraries..
but needs to be closely monitored to make sure it won't introduce other
host-system contamination.  (Usually BUILD_CC or HOST_CC is used instead of the
regular CC).

> However, when it comes to -native recipes, is it acceptable to link to 
> the host libraries? Since the package is intended to run on the same 
> host, I would think this would be acceptable, but I'm not certain.

Depends, if the item being linked to is part of the Poky -native recipes it
should be just fine.

If it's part of the host system itself, we need to decide if it's a "common
enough", or a Poky host system requirement.  If so, then we can generally link
to it..  if it doesn't fall into either of those categories, then we need to
evaluate if the item should have a -native added for it, should it be added to
the poky requirements, or is it "an exception" for some other reason.

> The problem I'm working on which prompted this inquiry is a segfault 
> that is occurring with QEMU in certain circumstances. The latest Ubuntu 
> (10.10, Maverick) with the proprietary NVIDIA Xorg driver also installs 
> its own version of libGL, which is linked by qemu-native. If I uninstall 
> the proprietary NVIDIA driver and rebuild qemu-native from scratch, the 
> segfault does not occur.

Thats not surprising.  Generally applications will link to the mesa libGL/libGLU
drivers.  Then an optimized version will replace it and assume it's API and
functionality.  My guess is there is a difference in the way the item is linked
-- or the symbols are resolved between the NVIDIA and the non-NVIDIA version.
(likely a compatibility defect in the proprietary version...)  Something like
weak or aliased symbol resolution might be the cause...

Either way, I'd recommend we document these, and if it's truly a host system
issue we add a list of know problems.

(In this particular case, I'd consider the mesa GL interface to be a "required
host component", if we have graphics enabled in QEMU.  Since the host's version
is broken.. a documented way to identify the failure and how to work around it
is likely a very good idea...  perhaps even adding something to the Poky host
checking classes might be reasonable in this case -- or alternatively to the
QEMU-native build.. have it verify it won't be building a broken version.)

--Mark

> Thanks,
> 
> Scott
> 


