Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F04B3E013BB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 14:10:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Jun 2012 14:10:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="153359162"
Received: from unknown (HELO envy.home) ([10.7.199.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jun 2012 14:10:50 -0700
Message-ID: <4FDA530E.3090508@linux.intel.com>
Date: Thu, 14 Jun 2012 14:09:34 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <4FD93175.7070202@linux.intel.com> <4FD98EA6.1050403@r-finger.com>
In-Reply-To: <4FD98EA6.1050403@r-finger.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 14 Jun 2012 21:10:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/14/2012 12:11 AM, Tomas Frydrych wrote:
> Hi Darren,
> 
> On 14/06/12 01:33, Darren Hart wrote:
>> o Do not include the standard Busybox init
> ...
>> o Do not provide inittab functionality
> 
> I am not entirely clear what you are hoping to gain by creating a home
> grown init solution?

Calling it an init "solution" is a bit of a stretch. It's really the
absence of an init system. It's what is there in place of an init
system. Just enough to get the system up.

The gain is really to allow people to do whatever they want here,
without having to undo a major piece like init first. Clean slate.

> 
> A system that runs nothing but a shell is really not useful for anything
> all, everyone using it will be adding some sort of services, so the
> question of how the extending works (or does not work), needs to be in
> the forefront of the design.

Agreed. I thought Tim's proposal of an rc.local script for customization
was a good answer to that question. Anything beyond this and people
should really just use the traditional init system.

> My main reservation is that you are
> suggesting to break one of the basic premisses behind the whole
> ecosystem, namely that if I add a package that provides a service to an
> image, I get that service running; 'fix by documentation' is never a fix.

This is a valid point. However, for something like poky-tiny that is
meant as a building block, and not an ultimate solution, documenting the
process of extending it seems to be a very reasonable thing to me (in
fact it's really required).

> So back to my original question, what are the expected benefits to the
> Poky users of not using initd in such minimal systems, and do you have
> any numbers to show it is worth it?

I don't have numbers for init specifically, and those would be good to
generate.

However, right now poky-tiny just executes /bin/sh, has no job control,
and panics if the shell exits. This solution improves the kick-the-tires
experience with poky-tiny, without pulling in all of init, and provides
a better defined launch point for custom development.

> Maybe the numbers are compelling,
> but considering that currently Poky does not even support systemd,
> adding yet another, home grown, init system seems like a step in the
> wrong direction

Again, we're talking about 14 lines of shell, so "init system" is
overstating it significantly.

> (perhaps sorting out the systemd mess is an opportunity
> to deal with the init sequence in a more generic way).

Agreed, that would be nice, but probably orthogonal to this.

> 
> (I hear what you are saying about a system that only includes packages
> you want and nothing else, but this is orthogonal to the system size;

If so, then it's an ample intersection where they cross :-)

> I
> for one want to be able to create a midsized system that includes only
> packages that I want and nothing else. :) )

I would think the default poky and core-image-minimal would serve that
goal very well.

Thank you for the comments.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



