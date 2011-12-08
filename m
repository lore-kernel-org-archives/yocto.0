Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B00E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 13:02:24 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2011 13:02:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84451895"
Received: from sharon1-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.161])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 13:02:24 -0800
Message-ID: <4EE125ED.7010201@linux.intel.com>
Date: Thu, 08 Dec 2011 13:02:37 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Marc Ferland <marc.ferland@gmail.com>
References: <CAMRMzCDCBX15T8k+sAojLKiCwn_xReuFc-xyFCCGnBVYwzj7iQ@mail.gmail.com>
	<4EE11521.40100@linux.intel.com>
	<CAMRMzCC=OyJqpOPuzwEXG0EBY57eQSWq5YwjrFdzKgoFcyU=HQ@mail.gmail.com>
In-Reply-To: <CAMRMzCC=OyJqpOPuzwEXG0EBY57eQSWq5YwjrFdzKgoFcyU=HQ@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: Adding features to a machine
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
X-List-Received-Date: Thu, 08 Dec 2011 21:02:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/08/2011 12:36 PM, Marc Ferland wrote:
> On Thu, Dec 8, 2011 at 2:50 PM, Darren Hart <dvhart@linux.intel.com
> <mailto:dvhart@linux.intel.com>> wrote:
> 
>     On 12/08/2011 11:13 AM, Marc Ferland wrote:
>     > Hi,
>     >
>     > I have a crownbay based machine here and I would like to add the
>     > bluetooth machine feature to it. Do I have to create a whole new
>     BSP for
>     > this? I haven't seen any examples showing how to _modify_ a machine
>     > description.
> 
> 
>     Have you tried modifying either MACHINE_FEATURES_crownbay or
>     KERNEL_FEATURES_crownbay from local.conf? I haven't attempted this
>     myself, but I believe it should work.
> 
> 
> Tried both.
> 
> With MACHINE_FEATURES_crownbay += "bluetooth" I get:
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'modutils-depmod' (but
> /home/marc/dev/poky/poky-src/meta/recipes-kernel/update-modules/update-modules_1.0.bb
> <http://update-modules_1.0.bb> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'modutils-depmod' is unbuildable, removing...

Hrm, yes, I don't see what provides modutils-depmod. I believe you may
have found a bug. Mind filing one?

> Missing or unbuildable dependency chain was: ['modutils-depmod']
> NOTE: Runtime target 'perf' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['perf', 'update-modules',
> 'modutils-depmod']
> NOTE: Runtime target 'task-core-tools-profile' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['task-core-tools-profile',
> 'perf', 'update-modules', 'modutils-depmod']
> ERROR: Required build target 'sonatest-test-image' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['sonatest-test-image',
> 'task-core-tools-profile', 'perf', 'update-modules', 'modutils-depmod']
> 
> With KERNEL_FEATURES_crownbay += "bluetooth", I get the following when
> recompiling the kernel:
> Log data follows:
> | Deleted branch meta-temp (was 620917d).
> | WARNING: addon feature "bluetooth" was not found
> | ERROR: required features were not found. aborting
> 
> BTW, I did not find any precise kernel feature for bluetooth when
> looking in
> builddir/tmp/work/crownbay-poky-linux/linux-yocto/linux/meta/cfg/kernel-cache/

Right, you would need to add something if you need a driver that isn't
listed there or in the crownbay BSP.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

