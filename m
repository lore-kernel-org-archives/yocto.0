Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D54DC4C8005F
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 17:03:39 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Jun 2011 15:03:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,340,1304319600"; d="scan'208";a="10916450"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by orsmga002.jf.intel.com with ESMTP; 08 Jun 2011 15:03:38 -0700
Message-ID: <4DEFF1BA.2020701@linux.intel.com>
Date: Wed, 08 Jun 2011 15:03:38 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Yocto Project Discussions <yocto@yoctoproject.org>
References: <4DEEEEA0.4020900@windriver.com>
In-Reply-To: <4DEEEEA0.4020900@windriver.com>
Subject: Re: Fullpass Test Report for Beagleboard 1.1 M1 20110602 Build
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
X-List-Received-Date: Wed, 08 Jun 2011 22:03:40 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit

On 06/07/2011 08:38 PM, Zhao Yi wrote:
> Hi Jiajun,
> This is the fullpass test report for Beagleboard 1.1 M1 20110602 build. 
> For sato-sdk image, 2 bugs (bug1130: qt4-x11-free build failed and bug 
> 1131: init error) had been fixed in this build. The Beagleboard lsb-sdk 
> image still build failed. The USB does not work with this build, so we 
> reopened bug 765. The udevd daemon doesn't start up since second boot, 
> report as bug 1146.
> 
Ok, so we resolved the build issue and we now have a bootable
beagleboard image, with 2 issues:

1146: udevd does not start on second boot was a known issue and has a
resolution pending.

765: This is a larger issue related to potentially the new compiler and
the upgraded Kernel.  Since beagleboard and the compiler are currently
works in progress, it does not make sense to step back fix M1 and then
move forward to fix M2, we should focus on this issue for M2.

That being said, I think we give M1 a go with the beagleboard caveat of
know problems with USB.  There is active discussion of this on the poky
alias currently.

Any objections?

Sau!

> 
> *Test Summary
> -------------------------*
> *Test Result Summary*
> *Component* 	*Target* 	*Status* 	*Comments*
> *BSP
> * 	Beagleboard 	BUGGY
> 	USB does not work. Udevd daemon doesn't exist since second boot.
> 
> 
> BLOCK 	Critical bugs, more than 50% test cases are blocked
> GOOD 	Only Normal, Minor or Enhancement bugs, less than 10% test cases 
> failed
> BUGGY 	Normal, Major and Critical bugs, more than 10% test cases failed
> 
> 
> *Detailed Test Result for each component*
> *Target* 	*Total TCs*
> 	*Not Run
> * 	*Passed
> * 	*Failed
> * 	*Not testable (Blocked)*
> *Beagleboard Sato-SDK
> * 	18 	0 	14
> 	4 (bug 765)
> 	0
> 
> 
> * You can check the detailed test result in attachment for each target.
> ** The failed/blocked case number is listed with failed cases¡¯ bug number.
> 
> 
> *Commit information
> --------------------------------*
> Tree/Branch: Poky/1.1_M1
> Poky Commit: b4a215bd94cf1508782e49b1a3f8c6b1f7effbb9
> *
> Issue Summary
> -------------------------------------*
> *Component*
> 	*Bug Number*** 	*Target Milestone*
> *System & Core OS*** 	*System Usage*
> 	Bug 765: [beagleboard] USB does not work on beagleboard
> 	1.0 PointRelease
> *Others*
> 	Bug 1146: udevd daemon doesn't exist since second boot
> 	---
> 
> 
> 
> 
> Thanks & Best Regards,
> Yi
> 
> 
> 
> 
> 
> 

