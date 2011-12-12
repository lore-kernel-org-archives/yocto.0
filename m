Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B59E006DF
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 15:18:06 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2011 15:18:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="85802996"
Received: from unknown (HELO envy.home) ([10.7.199.93])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2011 15:18:05 -0800
Message-ID: <4EE68B9A.8080602@linux.intel.com>
Date: Mon, 12 Dec 2011 15:17:46 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4EE2911E.3090708@linux.intel.com> <4EE58DA5.9070301@windriver.com>
In-Reply-To: <4EE58DA5.9070301@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto: ktypes/tiny and some questions along the way
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
X-List-Received-Date: Mon, 12 Dec 2011 23:18:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/11/2011 09:14 PM, Bruce Ashfield wrote:
> On 11-12-09 5:52 PM, Darren Hart wrote:
>> Bruce,
>>
>> I'm looking at introducing a new kernel type, ktypes/tiny.
>>
>> Tiny will define a core set of kernel policy options, such as proc, sys,
>> devtmpfs, futex, epoll, elf bin format, etc. It will not enable any
>> drivers, filesystems, debug options, or networking options by default.
>> This would be the responsibility of the BSP to add a named feature
>> implementing this.
>>
>> Taking a look at the ktypes we have now resulted in some questions:
>>
>> dvhart@envy:~/source/linux/linux-yocto-3.0/meta/cfg/kernel-cache/ktypes
>> $ tree
>> .
>> ├── base
>> │   ├── base.cfg
>> │   ├── base.scc
>> │   ├── hardware.cfg
>> │   ├── hardware.kcf
>> │   ├── non-hardware.cfg
>> │   └── non-hardware.kcf
>> ├── preempt-rt
>> │   ├── preempt-rt.cfg
>> │   └── preempt-rt.scc
>> ├── standard
>> │   ├── perf-force-include-of-stdbool.h.patch
>> │   ├── perf-hard-code-NO_LIBPERL-NO_LIBPYTHON.patch
>> │   ├── standard-patches.scc
>> │   ├── standard.cfg
>> │   ├── standard.scc
>> │   └── x86-add-TIF_32BIT-compatibility-define.patch
>>
>> These form a hiearchy, each inheriting from the layer beneath like so:
>>
>> base/standard/preempt-rt
>>
>> As I dig into this I see that some policy is infact laid down by base,
>> including things like:
>>
>> CONFIG_MODULES=y
>> CONFIG_INET=y
>> CONFIG_PREEMPT=y
>> CONFIG_NFS_FS=y
>> CONFIG_MSDOS_PARTITION=y
>>
>> These pull in the IP stack, the block layer, etc. Because of this, I
>> can't really inherit from base for ktypes/tiny. I would like to inherit
>> the hardware and non-hardware kcf files though, as well as any patches
>> that might make their way into base. Which leads me to standard. I would
>> like to see a much smaller set of config policy options set in base.
>> Most likely these should be exactly what we agree on for tiny, and tiny
>> wouldn't add any additional policy as it implements only what is
>> required for a Yocto Project built kernel.
>>
>> NOTE: kernel version is 3.0+
>> $ cat base/base.scc | head -n 1
>> set_kernel_version 2.6.37
> 
> FYI: nothing uses this at the moment. But I fixed that here.
> 
>>
>> There are three patches in standard, only two of which (the perf ones)
>> are listed in the standard.scc. As I believe any kernel we build should
>> have these, I would like to see any global patches applied to base,
>> leaving standard to define policy, and include named features.
> 
> standard only includes 3 patches because they were a bit hard to
> classify elsewhere. In a more fully populated kernel, it does include
> quite a bit more directly.

directly = git repository commits?

>>
>> With these changes, I could add ktypes/tiny as follows:
>> $ cat tiny/tiny.scc
>> include ktypes/base
>> branch tiny
>> include features/xyz/xyz.scc
>> include cfg/abc.scc
>>
>> Another point of interest is preempt-rt, as I can see people wanting to
>> build tiny preempt-rt. I think the best approach here is to create
>> ktypes/tiny/preempt-rt-tiny/preempt-rt-tiny.scc.
>>
>> Note: I believe this fails with .patch.patch
>> $ cat features/rt/rt.scc | grep patch
>> patch rt-apply-patch-3.0.10-rt27.patch.patch
> 
> Love my "patch.patch". Script went wild on that one, luckily the content
> in the branch is king :) I fixed that here when I was auditing 3.0.12+rt
> so that looks more sane now.
> 
>>
>> I'm working on a patch series that implements the suggestions I've made
>> above. Bruce, do you have any issues with this approach?
> 
> Allow me to ramble a bit below ...
> 
> No big issues. At some level(s) it is just a shell game. We can move
> configs and patches around to the appropriate level to get the building
> blocks that we need and get common functionality into a common location.
> 
> base was (is) intended to document the branch point from the mainline
> kernel, and contain largely configuration and very few patches. Any
> important or larger size functional additions go into the standard
> kernel.

What is the value of having base and standard as separate branches?
Isn't base easily derivable from the standard git history? Still if it
isn't used anywhere, then the branch is a no-op and adds no complexity,
so that's fine.

> 
> So branching from base for a new kernel type is something we can do, but
> it will risk missing additions (say for example tracing fixes, or the
> next super-duper debug via kprobes patch series), since they'll go into
> the standard kernel.

OK, that's no good. My moving patches down to base was intended to avoid
just that problem. And given the above, leaving them in standard is
preferred. OK, that poses some issues.... discussed below.

> If I just slide all the patches down into base,
> why not just call 'base' 'standard' or just make standard have the
> configuration you are working on for tiny.
> 
> The point I'm attempting to make, is that the base/common point can be
> whatever we decide it needs to be, "standard" can be renamed, content
> moved up and down, etc. i.e. standard could have it's config changed,
> a new branch created off standard ( and options moved there), or
> standard  could be streamlined and the boards include more common
> config options manually vs inheriting them, etc.
> 
> I need a bit more time to think about that myself.

The above is fine. Or rather, any of the above can work. Let's discuss
which one :-)

> 
> Another option is to let tiny inherit from standard, but force a
> new baseline for configuration options. i.e. your allnoconfig
> technique buried in the middle of inheritance tree. With the
> optional/required designations I'm finishing up for 1.2 you won't get
> hit with reams of redefined configuration warnings. With that set, you
> can then go about adding kernel type specific options/features/patches
> as we see fit .. and you'll pickup those features that I was talking
> about above. If you bear with me by doing some of this manually for
> now (setting the baseline), it is easy to add a construct to do that
> reset automagically.

I really want to avoid setting a base config, and then backtracking to
reset it to something else in a derived branch. Chasing those overrides,
etc can be a massive pain. Much better to get the main SOURCES and
essential policy into a single branch, then let standard and tiny branch
from there. Intuitively, Standard and Tiny should be siblings, not
ancestors of eachother. Keeping this relationship apparent in the
branching and source and config inheritance should help keep things
clear and maintainable.

> 
> It's the features and patch balancing that's the hard part, not getting
> the configs how we want them. I've lived the madness of the other!

I agree the source-work should not be duplicated.


> What we don't want to get into (I've been there, with an old "small"
> kernel type) is having a different stack of patches and fixes on
> multiple kernel types. The patches start failing, and you end up always
> merging a fix in two different ways due to changes in the feature mix
> on each kernel type. 

Agreed

> (This comment more applies to the tiny and -rt
> mix). Better mileage might be gained by doing.
> 
>    yocto/standard/preempt-rt/tiny
> 
> versus moving the big patch onto yocto/tiny/preempt-rt, but that implies
> that tiny is providing a set of configuration values that clobber what
> has been set by both standard and -rt .. something that trades patch 
> maintenance with config maintenance.

I intend to keep Tiny as config options as much as possible (but I can
see some new Kconfig options from linux-tiny (or tiny-linux, whatever it
is) creeping their way in. Still, I prefer tiny/preempt-rt for the
reasons stated above.

> 
> Working through all that, what I'm saying is that I'd prefer to make
> standard do what you want, and keep the base similar to what it is.
> We can shuffle undesirable standard configuration items up versus
> shuffling all patches and functionality down to yocto/base. But the
> approach is fundamentally the same.
> 
> i.e. I see no reason why the tiny config wouldn't be fine as
> the standard config or as something that makes significant changes
> to standard's configuration. But definitely something that wants the
> patches and features in standard.

Agreed.

I'll re-work accordingly.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

