Return-Path: <paulg@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EBEC83F18
	for <webhook@archiver.kernel.org>; Thu, 10 Jul 2025 08:36:12 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by mx.groups.io with SMTP id smtpd.web11.3856.1752136569622222152
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jul 2025 01:36:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R93SGcfC;
 spf=pass (domain: kernel.org, ip: 172.234.252.31, mailfrom: paulg@kernel.org)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DC653436C8;
	Thu, 10 Jul 2025 08:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41A0CC4CEE3;
	Thu, 10 Jul 2025 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752136568;
	bh=5lwjfjf4C1WQ1s9SCedum2Ea+eAycurdTZX4K/fHyt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R93SGcfC3yQXI12bPM300UrCNXALUp9B3rtngWbZqoGzGt+CkrkDHoG7XqBSCgSpb
	 6ZM4OJlrkA92Wj4moBzvveczH3v6ae/DBslYxlFLXzQFAaGl4Fv+m9tInyggOUY7CP
	 btE2Lf1PkCPelCCznHSAGpCeqwLGgtZDkclSjQeIGXCdDjUFJ/cQwgcxMa2+4oo9MH
	 SGBWcG/GYqc6D/IbW5uv24wd6mejeR3xTVyGzREq0Y+M7u4NMD+vdIa3a96r1s+3Y1
	 bDGu/kf5vlnTmi3RuKiS+eFEa6t6lntMo6xFdw9deaaQkia5cp78g4fjfd6YmUn02r
	 9cSvYplJq2gtw==
Date: Thu, 10 Jul 2025 04:36:06 -0400
From: Paul Gortmaker <paulg@kernel.org>
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com,
	alperyasinak1@gmail.com
Cc: pkl2000us@gmail.com
Subject: Re: [yocto] Custom Kernel Recipe Compilation Error.
Message-ID: <20250710083606.GA398892@kernel.org>
References: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
 <0a3017ff-19f4-4e18-a338-32450acfa8ee@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0a3017ff-19f4-4e18-a338-32450acfa8ee@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Jul 2025 08:36:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65636

[Re: [yocto] Custom Kernel Recipe Compilation Error.] On 08/07/2025 (Tue 11:06) Gyorgy Sarvari via lists.yoctoproject.org wrote:

> On 7/7/25 22:10, C Larbi via lists.yoctoproject.org wrote:
> > Hello all
> > I am a newbie to the yocto project and on a journey to understand the basics.
> >
> > My reference hardware for my learning journey is the Orange pi 3b (RK3566 soc)
> >
> > I have created a bsp layer containing my machine configuration and a
> > recipe to build a custom kernel.
> >
> > The kernel recipe build throws an error on the "do_compile_kernelmodules" task.
> > Before writing this, i went through the manual process of compiling
> > the same kernel source on my machine and i was able to produce a
> > vmlinux file and build the modules.
> >
> > This is the error from the yocto build process.
> >
> > |   GEN     Makefile
> > |   CALL    /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/checksyscalls.sh
> > |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o
> > |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/siutils.o
> > | /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.c:44:10:
> > fatal error: typedefs.h: No such file or directory
> > |    44 | #include <typedefs.h>
> > |       |          ^~~~~~~~~~~~
> > | compilation terminated.

I saw this, and I'm thinking that include shouldn't be there at all.
You might in turn ask "Why would you say that?" -- well, experience?

Let us have a quick look at a current kernel.

	linux-head$ git grep '#include <typedefs.h>'
	linux-head$ git grep '#include .*typedefs.h>'
	linux-head$ git grep '#include .*module.h>' | wc -l
	14342
	linux-head$ 

No instances of <typedefs.h>.  Also no instances of <somepath/typedefs.h>.
And if I search for a common include, like module.h, there are tens of
thousands of instances, so my search isn't somehow fundamentally broken.

> > | make[7]: *** [/home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/Makefile.build:250:
> > drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o] Error 1
> > | make[7]: *** Waiting for unfinished jobs....
> >
> > Will really appreciate if i can get some pointers as to what i may be
> > doing wrong.
> 
> This seems to be a recurring problem with this particular vendor kernel
> unfortunately. Take a look at this patch which solves the same issue on
> a different branch:
> https://github.com/riscv/meta-riscv/blob/master/recipes-kernel/linux/linux-orangepi/orangepi-rv2/bcmdhd-fix-typedefs-header-not-found.patch

So this patch amounts to the one line change as follows:

	 EXTRA_CFLAGS += -I$(BCMDHD_ROOT)/include/ -I$(BCMDHD_ROOT)/
	+EXTRA_CFLAGS += -I$(srctree)/$(src)/include
	 ifeq ($(CONFIG_BCMDHD),m)

OK, that probably does put a (semi random) instance of typedefs.h into
the header search path, but given what I've shown above in the mainline
kernel tree, I would ask if anyone has checked what happens if the
offending typedefs.h include line was simply *removed*?  Does the error
go away, or does it give a more informative error on exactly what
specific definition is missing - so that folks can fix it "properly"?

You generally don't want the kernel and kernel drivers pulling in
include paths from random locations outside the kernel. The kernel is
designed to be self-contained, with the exception of the few user space
utilities that happen to be bundled with the kernel for convenience.

In a case like this, the patch risks causing additional errors elsewhere.
Things like "conflicting definitions for XYZ".  Or worse, you could get
an instance where an added include presents a "struct foo" that is
different from the kernel's view of what "struct foo" is - say for
example the kernel's version uses a u64 instead of a u32, or has padding
for cache line alignment and performance reasons.  Then your stuff will
just silently compile, but explode at runtime.  Kind of a classic case
of "two wrongs don't make a right".

This is one (of many) problems with not-in-mainline drivers like this.
The various SoC engineers tasked with creating a driver develop their
own ways of doing things, but it remains largely unreviewed by the
larger group of people out there, including the subsystem maintainers
who would spot things like this and require it to be done properly
before accepting it into their local tree and then requesting it to be
merged upwards into mainline.

Paul.
--

> 
> I think adapting this to your branch should solve your problem too.
> 
> 
> >
> > KERNEL RECIPE
> > https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/recipes-kernel/linux/linux-orangepi.bb
> >
> > MACHINE CONFIGURATION
> > https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/conf/machine/opi3b.conf
> >
> > Best Regards
> > Cerezo
> >


