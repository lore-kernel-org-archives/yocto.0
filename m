Return-Path: <denis@denix.org>
Received: from vms173001pub.verizon.net (vms173001pub.verizon.net
	[206.46.173.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 947C9E0044D
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 14:06:22 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173001.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M20007CUYLNG7J3@vms173001.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 05 Apr 2012 16:06:03 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id C71AE201AE; Thu,
	05 Apr 2012 17:05:47 -0400 (EDT)
Date: Thu, 05 Apr 2012 17:05:47 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Chris Tapp <opensource@keylevel.com>
Message-id: <20120405210547.GC11087@denix.org>
References: <30B122B8-C6E4-46CE-87A9-AF7F61A06643@keylevel.com>
	<4F7DFC36.5040108@mlbassoc.com>
	<8E003040-BCBA-43ED-82B3-9C7BF771AB44@keylevel.com>
MIME-version: 1.0
In-reply-to: <8E003040-BCBA-43ED-82B3-9C7BF771AB44@keylevel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: kernel26 'machine feature'
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
X-List-Received-Date: Thu, 05 Apr 2012 21:06:22 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, Apr 05, 2012 at 09:17:28PM +0100, Chris Tapp wrote:
> On 5 Apr 2012, at 21:10, Gary Thomas wrote:
> 
> > On 2012-04-05 14:02, Chris Tapp wrote:
> >> Quite a few machine conf files specify the kernel26 machine feature. e.g., crownbay.conf has:
> >> 
> >> MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> >>                     acpi serial usbgadget"
> >> 
> >> What does this do? It's not listed at http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#ref-features-machine and seems to be at odds with:
> >> 
> >> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> >> PREFERRED_VERSION_linux-yocto = "3.0%"
> > 
> > I don't think it does anything any more.  I'm pretty sure it used
> > to be used to select which style of kernel module utilities to
> > install (there was a change in kernel module format between 2.4
> > and 2.6), but it seems that's gone now.  At least in the Poky/Yocto
> > tree (oe-core + meta-yocto), there is no active use of this feature.

Yes, Classic OE (unlike OE-Core) used to support 2.4 and 2.6 kernels, hence 
the use flag.

> Thanks, I was hoping it was something as simple as that.
> 
> Another (possibly related) question - when the kernel built I noticed that 
> linux_libc_headers_yocto-2.6.37 was 'mentioned' in the log output. Why was 
> this used and not the headers for 3.0.18 ? The host is 2.6.32, so it doesn't 
> look like is was for the tool chain.

Those are "user-space" kernel headers for libc. Those usually don't need to 
match the exact kernel version, as APIs don't change that often between the 
kernel and user-space. Unless you need some specific new API that got added in 
the latest kernel...

-- 
Denys

