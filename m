Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D300CE00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 14:51:59 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Dec 2011 14:51:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="45756605"
Received: from unknown (HELO envy.home) ([10.255.12.30])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Dec 2011 14:51:58 -0800
Message-ID: <4EE2911E.3090708@linux.intel.com>
Date: Fri, 09 Dec 2011 14:52:14 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>, 
	Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.3
Subject: linux-yocto: ktypes/tiny and some questions along the way
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
X-List-Received-Date: Fri, 09 Dec 2011 22:52:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Bruce,

I'm looking at introducing a new kernel type, ktypes/tiny.

Tiny will define a core set of kernel policy options, such as proc, sys,
devtmpfs, futex, epoll, elf bin format, etc. It will not enable any
drivers, filesystems, debug options, or networking options by default.
This would be the responsibility of the BSP to add a named feature
implementing this.

Taking a look at the ktypes we have now resulted in some questions:

dvhart@envy:~/source/linux/linux-yocto-3.0/meta/cfg/kernel-cache/ktypes
$ tree
.
├── base
│   ├── base.cfg
│   ├── base.scc
│   ├── hardware.cfg
│   ├── hardware.kcf
│   ├── non-hardware.cfg
│   └── non-hardware.kcf
├── preempt-rt
│   ├── preempt-rt.cfg
│   └── preempt-rt.scc
├── standard
│   ├── perf-force-include-of-stdbool.h.patch
│   ├── perf-hard-code-NO_LIBPERL-NO_LIBPYTHON.patch
│   ├── standard-patches.scc
│   ├── standard.cfg
│   ├── standard.scc
│   └── x86-add-TIF_32BIT-compatibility-define.patch

These form a hiearchy, each inheriting from the layer beneath like so:

base/standard/preempt-rt

As I dig into this I see that some policy is infact laid down by base,
including things like:

CONFIG_MODULES=y
CONFIG_INET=y
CONFIG_PREEMPT=y
CONFIG_NFS_FS=y
CONFIG_MSDOS_PARTITION=y

These pull in the IP stack, the block layer, etc. Because of this, I
can't really inherit from base for ktypes/tiny. I would like to inherit
the hardware and non-hardware kcf files though, as well as any patches
that might make their way into base. Which leads me to standard. I would
like to see a much smaller set of config policy options set in base.
Most likely these should be exactly what we agree on for tiny, and tiny
wouldn't add any additional policy as it implements only what is
required for a Yocto Project built kernel.

NOTE: kernel version is 3.0+
$ cat base/base.scc | head -n 1
set_kernel_version 2.6.37

There are three patches in standard, only two of which (the perf ones)
are listed in the standard.scc. As I believe any kernel we build should
have these, I would like to see any global patches applied to base,
leaving standard to define policy, and include named features.

With these changes, I could add ktypes/tiny as follows:
$ cat tiny/tiny.scc
include ktypes/base
branch tiny
include features/xyz/xyz.scc
include cfg/abc.scc

Another point of interest is preempt-rt, as I can see people wanting to
build tiny preempt-rt. I think the best approach here is to create
ktypes/tiny/preempt-rt-tiny/preempt-rt-tiny.scc.

Note: I believe this fails with .patch.patch
$ cat features/rt/rt.scc | grep patch
patch rt-apply-patch-3.0.10-rt27.patch.patch

I'm working on a patch series that implements the suggestions I've made
above. Bruce, do you have any issues with this approach?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

