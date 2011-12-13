Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6A96E006DF
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 17:24:08 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2011 17:24:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="85000628"
Received: from unknown (HELO envy.home) ([10.255.12.201])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2011 17:24:07 -0800
Message-ID: <4EE6A924.9030005@linux.intel.com>
Date: Mon, 12 Dec 2011 17:23:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Marc Ferland <marc.ferland@gmail.com>
References: <CAMRMzCDCBX15T8k+sAojLKiCwn_xReuFc-xyFCCGnBVYwzj7iQ@mail.gmail.com>
	<4EE11521.40100@linux.intel.com>
	<CAMRMzCC=OyJqpOPuzwEXG0EBY57eQSWq5YwjrFdzKgoFcyU=HQ@mail.gmail.com>
	<4EE125ED.7010201@linux.intel.com>
	<CAMRMzCDpxFyxE=XDunz+VhTrjw0K=aOqpUw_-4GYAJJgbOPXWw@mail.gmail.com>
In-Reply-To: <CAMRMzCDpxFyxE=XDunz+VhTrjw0K=aOqpUw_-4GYAJJgbOPXWw@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org, "Wold, Saul" <saul.wold@intel.com>
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
X-List-Received-Date: Tue, 13 Dec 2011 01:24:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/12/2011 08:11 AM, Marc Ferland wrote:
> 
> 
> On Thu, Dec 8, 2011 at 4:02 PM, Darren Hart <dvhart@linux.intel.com
> <mailto:dvhart@linux.intel.com>> wrote:
> 
> 
> 
>     On 12/08/2011 12:36 PM, Marc Ferland wrote:
>     > On Thu, Dec 8, 2011 at 2:50 PM, Darren Hart
>     <dvhart@linux.intel.com <mailto:dvhart@linux.intel.com>
>     > <mailto:dvhart@linux.intel.com <mailto:dvhart@linux.intel.com>>>
>     wrote:
>     >
>     >     On 12/08/2011 11:13 AM, Marc Ferland wrote:
>     >     > Hi,
>     >     >
>     >     > I have a crownbay based machine here and I would like to add the
>     >     > bluetooth machine feature to it. Do I have to create a whole new
>     >     BSP for
>     >     > this? I haven't seen any examples showing how to _modify_ a
>     machine
>     >     > description.
>     >
>     >
>     >     Have you tried modifying either MACHINE_FEATURES_crownbay or
>     >     KERNEL_FEATURES_crownbay from local.conf? I haven't attempted this
>     >     myself, but I believe it should work.
>     >
>     >
>     > Tried both.
>     >
>     > With MACHINE_FEATURES_crownbay += "bluetooth" I get:
>     > NOTE: Resolving any missing task queue dependencies
>     > ERROR: Nothing RPROVIDES 'modutils-depmod' (but
>     >
>     /home/marc/dev/poky/poky-src/meta/recipes-kernel/update-modules/update-modules_1.0.bb
>     <http://update-modules_1.0.bb>
>     > <http://update-modules_1.0.bb> RDEPENDS on or otherwise requires it)
>     > NOTE: Runtime target 'modutils-depmod' is unbuildable, removing...
> 
>     Hrm, yes, I don't see what provides modutils-depmod. I believe you may
>     have found a bug. Mind filing one?
> 
>     > Missing or unbuildable dependency chain was: ['modutils-depmod']
>     > NOTE: Runtime target 'perf' is unbuildable, removing...
>     > Missing or unbuildable dependency chain was: ['perf',
>     'update-modules',
>     > 'modutils-depmod']
>     > NOTE: Runtime target 'task-core-tools-profile' is unbuildable,
>     removing...
>     > Missing or unbuildable dependency chain was:
>     ['task-core-tools-profile',
>     > 'perf', 'update-modules', 'modutils-depmod']
>     > ERROR: Required build target 'sonatest-test-image' has no buildable
>     > providers.
>     > Missing or unbuildable dependency chain was: ['sonatest-test-image',
>     > 'task-core-tools-profile', 'perf', 'update-modules',
>     'modutils-depmod']
>     >
>     > With KERNEL_FEATURES_crownbay += "bluetooth", I get the following when
>     > recompiling the kernel:
>     > Log data follows:
>     > | Deleted branch meta-temp (was 620917d).
>     > | WARNING: addon feature "bluetooth" was not found
>     > | ERROR: required features were not found. aborting
>     >
>     > BTW, I did not find any precise kernel feature for bluetooth when
>     > looking in
>     >
>     builddir/tmp/work/crownbay-poky-linux/linux-yocto/linux/meta/cfg/kernel-cache/
> 
>     Right, you would need to add something if you need a driver that isn't
>     listed there or in the crownbay BSP.
> 
> Sorry to bring this up again, but since the documentation states that
> "bluetooth" is a valid MACHINE_FEATURE option and no configuration
> fragment is present to support this feature does that mean that it
> cannot really work by simply adding the option? Could this be a
> bug/missing feature?
> 
> BTW, I got bluetooth working but I add to create a config fragment like
> you suggested which is kind of confusing since a MACHINE_FEATURE already
> exists for this functionality.

The bug you filed needs to get fixed, when it does, the MACHINE_FEATURES
+= "bluetooth" combined with the stock linux-yocto kernel will combine
with the definition of task-base-bluetooth to give you what you are
looking for.

See meta/recipes-core/tasks/task-base.bb:

RDEPENDS_task-base-bluetooth = "\
    bluez4 \
    "

RRECOMMENDS_task-base-bluetooth = "\
    kernel-module-bluetooth \
    kernel-module-l2cap \
    kernel-module-rfcomm \
    kernel-module-hci-vhci \
    kernel-module-bnep \
    kernel-module-hidp \
    kernel-module-hci-uart \
    kernel-module-sco \
    ${@base_contains('COMBINED_FEATURES', 'usbhost',
'kernel-module-hci-usb', '',d)} \
    ${@base_contains('COMBINED_FEATURES', 'pcmcia',
'kernel-module-bluetooth3c-cs', '',d)} \
    ${@base_contains('COMBINED_FEATURES', 'pcmcia',
'kernel-module-bluecard-cs', '',d)} \
    ${@base_contains('COMBINED_FEATURES', 'pcmcia',
'kernel-module-bluetoothuart-cs', '',d)} \
    ${@base_contains('COMBINED_FEATURES', 'pcmcia',
'kernel-module-dtl1-cs', '',d)} \

What this does is include the required kernel module packages created by
the linux-yocto recipe in the package feed for your image.

Saul mentioned he would try and have a look at that bug, CC'ing him for
reference. Looking at that bug though, I see Richard has commented:

http://bugzilla.yoctoproject.org/show_bug.cgi?id=1814

Can you try with his suggestion, using:

MACHINE_FEATURES_append_crownbay = " bluetooth"

I believe the assignment you were using before explains why you hit the
original modutils-depmod failure. See:

$ git grep modutils-depmod
meta/recipes-kernel/update-modules/update-modules_1.0.bb:RDEPENDS_${PN}
= "${@base_contains("MACHINE_FEATURES", "kernel26",

Note that the recipe depends on kernel26 being part of MACHINE_FEATURES,
since you set MACHINE_FEATURES to "bluetooth", it failed to build.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

