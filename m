Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4288E01515
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 05:38:54 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:43636 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUyyL-0003OV-Ni; Wed, 24 Apr 2013 08:38:53 -0400
Date: Wed, 24 Apr 2013 08:38:50 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <5177D167.6010909@windriver.com>
Message-ID: <alpine.DEB.2.02.1304240837370.29691@oneiric>
References: <alpine.DEB.2.02.1304240744050.31988@oneiric>
	<5177D167.6010909@windriver.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how the &^$%^%@%^#$ does "file://defconfig" work?
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
X-List-Received-Date: Wed, 24 Apr 2013 12:38:55 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 24 Apr 2013, Bruce Ashfield wrote:

> On 13-04-24 07:50 AM, Robert P. J. Day wrote:
> >
> >    been fighting with this for a couple of hours, so i'll start with
> > the short version -- here's the current explanation for "Changing the
> > Configuration" of your kernel:
> >
> > http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration
> >
> >    the salient bit:
> >
> > "If you have a complete Linux kernel .config file you want to use,
> > copy it to a directory named files, which must be in your layer's
> > recipes-kernel/linux directory, and name the file "defconfig"."
> >
> >    first, that clearly suggests that file://defconfig is to be used
> > *only* when you have a complete .config file you want to use, which
> > also implies that if you use that, you should not be picking up any
> > other snippets. that's how i read that -- the use of
> > "file://defconfig" means that that is *exactly* the final form of my
> > eventual .config file. if that's not true, then that wording needs to
> > change.
> >
> >    also, i've been trying to do just that for a couple hours now, and i
> > am definitely *not* getting that as my final .config file used for the
> > kernel configuration. so what should be happening here? thanks.
>
> What sort of delta are you seeing ? Just because something is a
> defconfig, doesn't mean that will be exactly what you see in the final
> .config.
>
> It also could vary a bit based on the kernel recipe you are using,
> i.e. if there are configure prepends or appends, or any input
> conditioning.
>
> The kernel's configuration routines will take all that input and
> potentially select, deselect or take defaults for values that are
> not in the defconfig .. hence why you'll see a delta.

  i'm starting to follow the logic, i think it's just the wording in
that section that needs tweaking. or maybe i just didn't get enough
sleep ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

