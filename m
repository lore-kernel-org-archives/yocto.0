Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 358FDE0145F
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 16:16:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jun 2012 16:16:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="166293354"
Received: from unknown (HELO envy.home) ([10.255.12.88])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jun 2012 16:16:26 -0700
Message-ID: <4FDBC1FC.3050008@linux.intel.com>
Date: Fri, 15 Jun 2012 16:15:08 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <4FD93175.7070202@linux.intel.com>
	<4FD98EA6.1050403@r-finger.com>	<4FDA530E.3090508@linux.intel.com>
	<4FDAD6D1.4050605@r-finger.com> <4FDB91B1.2010706@am.sony.com>
	<4FDBA883.8030609@r-finger.com>
In-Reply-To: <4FDBA883.8030609@r-finger.com>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Fri, 15 Jun 2012 23:16:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/15/2012 02:26 PM, Tomas Frydrych wrote:
> 
> On 15/06/12 20:49, Tim Bird wrote:
>> On 06/14/2012 11:31 PM, Tomas Frydrych wrote:
>> IMHO, the whole notion of starting with a big system and
>> subtracting what you don't want in order to create a minimal
>> system is the wrong approach.
> 
> At no point in this discussion was such an approach advocated by anyone.

Well, that is the logical alternative. If we suggest using sysvinit now
because it's the standard, then soon we'll say that for systemd, which
means I'll have to include cgroups in my kernel, etc etc. I dont think
Tim's comment was wrong there. Of course "big system" is subjective, to
me that's anything over 4 MB of storage and 8MB of RAM, for Tim, that's
1 MB of RAM. And for the purposes of poky-tiny, anything that adds
functionality, complexity, storage or memory size, or runtime needs to
be considered for the chopping block.

> 
> 
>> I realize you said that with a smiley, so I'm not trying to be
>> dismissive or harsh, but I do think that if you want the features
>> of some other init system, then the right answer is to use them,
>> and not complain about this one.
> 
> I am not complaining, I have asked what the specific, quantifiable,
> objective of creating the home grown init 'procedure' is, IMHO that is
> an entirely reasonable question to an RFC, the answer to which should
> inform the design.

Agreed, a very valid question and one I am still working through the
numbers for. We save ~3k in busybox size by using SETSID and CTTYHACK
rather than the busybox INIT. This is less than 1% of the busybox
binary, not a huge savings. I'll look at the rest, but it's more
difficult to quantify as it is dependent on the number of sysvinit
scripts used - and of course the more that are used, the more likely the
image should be using sysvinit anyway. So... I'll look into this some more.

> 
> If we are talking about targeting 1MB of RAM then it is unavoidable that
> the system has to be hand crafted to a fair degree. It is not what I'd
> consider the typical Poky use case, but within those constrains, I'd
> probably be looking at eliminating shell scripts altogether in my
> customization of whatever Poky offers.

poky-tiny is looking to define a new typical use-case that differs from
the poky use case (poky and poky-tiny the DISTROs of course). Perhaps
you just meant Poky the project, in which case, I think the same point
applies, we're trying to extend the typical use cases to include very
small systems.

Your point on eliminating shell scripts is a good one though. My
approach here has been to make it as minimal as is practical while still
having a somewhat usable system "out of the box". To me this means a
shell is available, networking is supported, etc etc (see the poky
distro definition for more specifics).

Your main point is of course still valid: What do I get by dropping init
and is it worth being different for that? I'm still looking.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



