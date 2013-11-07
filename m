Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD66CE01822
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 10:49:44 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Nov 2013 10:49:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="431476035"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.196.57]) ([10.7.196.57])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2013 10:49:22 -0800
Message-ID: <1383850162.5378.53.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Markus Svilans <msvilans@aeonyx.ca>
Date: Thu, 07 Nov 2013 10:49:22 -0800
In-Reply-To: <5276EDAE.4000106@aeonyx.ca>
References: <52702B41.1040504@aeonyx.ca> <52703CE8.9020306@aeonyx.ca>
	<CAMKF1spWtCmptujJk_N3AUz3v961+T+JibJtbFpZmF7ZEB3VFA@mail.gmail.com>
	<52706EC2.1020409@aeonyx.ca> <5272DE46.7080005@aeonyx.ca>
	<CAMKF1soYjrHyP1dJ12nkc_9NQswwpzT2xW9mgGzeghO=K8yyTQ@mail.gmail.com>
	<5276EDAE.4000106@aeonyx.ca>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fail to build core-image-minimal when MACHINE=genericx86-64
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Nov 2013 18:49:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Sun, 2013-11-03 at 19:43 -0500, Markus Svilans wrote:
> Hi Khem,
> 
> Per your suggestion, I installed gcc-multilib and was able to build 
> syslinux and core-image-minimal. Wonderful!
> 
> Thank you for having a look at this problem and finding the fix.
> 
> May I suggest that the Ubuntu/Debian section in Yocto Quick Start 
> documentation 
> (https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html) 
> be updated with this new information? Should I file a bug report to help 
> this happen?
> 

Right, this is a known bug with Debian hosts:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5054

I didn't know about gcc-multilib though, thanks for calling that out.
Yes this should be added to the qs guide.

Scott can you add gcc-multilib to the package prereqs on the qs guide
for Ubuntu/Debian?

--
Darren

> Best regards,
> Markus
> 
> 
> 
> On 11/03/2013 03:37 PM, Khem Raj wrote:
> > On Thu, Oct 31, 2013 at 3:48 PM, Markus Svilans <msvilans@aeonyx.ca> wrote:
> >> With the help of a friend, have confirmed that 'core-image-minimal' cannot
> >> be built with Ubuntu 13.10 64-bit when MACHINE=genericx86-64. Attempted the
> >> build on a different machine in a different city, same results (failure to
> >> build).
> >>
> >> Confirmed that 'core-image-minimal' can be successfully built under an lxc
> >> and a chroot running Debian Wheezy, on Ubuntu 13.10 64-bit, with
> >> MACHINE=genericx86-64.
> >>
> >> Filed bug 5440 on Yocto Bugzilla.
> >> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5440
> >>
> > accidentally I was able to reproduce it. So it seems that syslinux
> > depends on compiler supporting 32bit+64bit mix
> > and it has probes to enquire the compiler for supporting the above.
> > Now if you have standard install of ubuntu you
> > do not have gcc-multilib installed and hence the problem.
> >
> > So, I would say the fix is to install gcc-multilib package on
> > debian-like systems and something similar for other distros
> >
> > sudo apt-get install gcc-multilib
> >
> > and then clean build syslinux-native should get you going
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



