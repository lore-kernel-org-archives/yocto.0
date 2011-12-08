Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 382AAE005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 10:49:36 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Dec 2011 10:49:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84408637"
Received: from sharon1-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.161])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 10:49:34 -0800
Message-ID: <4EE106CB.6080104@linux.intel.com>
Date: Thu, 08 Dec 2011 10:49:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
	<CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
In-Reply-To: <CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: =?ISO-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Thu, 08 Dec 2011 18:49:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 12/08/2011 06:31 AM, Bruce Ashfield wrote:
> On Thu, Dec 8, 2011 at 2:24 AM, David Nyström <David.Nystrom@enea.com> wrote:
>>
>> ________________________________________
>> From: Koen Kooi [koen@dominion.thruhere.net]
>> Sent: Wednesday, December 07, 2011 15:07
>> To: Paul Eggleton
>> Cc: Chris Larson; David Nyström; yocto@yoctoproject.org
>> Subject: Re: [yocto] Variable locality too restricted.
>>
>> Op 7 dec. 2011, om 15:05 heeft Paul Eggleton het volgende geschreven:
>>
>>> On Wednesday 07 December 2011 06:52:25 Chris Larson wrote:
>>>> On Wed, Dec 7, 2011 at 6:44 AM, David Nyström <David.Nystrom@enea.com>
>>> wrote:
>>>>> I'm trying to create a setup for qemuppc.
>>>>>
>>>>> Goals:
>>>>> core-image-minimal + virtual/kernel.
>>>>> core-image-minimal + virtual/kernel with modified .config for debug
>>>>> flavoured kernel.
>>>>>
>>>>> Problems:
>>>>> PREFERRED_PROVIDER seems to be restricted to local.conf, distro and
>>>>> machine.
>>>> This is incorrect. It can be anywhere in the configuration metadata.
>>>> bitbake.conf includes a variety of config files, not just
>>>> distro/machine. Read that to see other existing files which get
>>>> included. Further, you could create a .conf/.inc which you include
>>>> from your machine .conf, if your goal is just to avoid duplication.
>>>
>>> Changing MACHINE has other implications though; do we not have any other way
>>> to switch out the kernel on a per-image basis?
>>
>> And how would that work from a packaging perspective? AIUI changing DISTRO/MACHINE flags in an image is a recipe for failure.
>>
>> regards,
>>
>> Koen
>> Op 7 dec. 2011, om 15:10 heeft Paul Eggleton het volgende geschreven:
>>
>> --
>>> On Wednesday 07 December 2011 15:07:54 Koen Kooi wrote:
>>>>> Changing MACHINE has other implications though; do we not have any other
>>>>> way to switch out the kernel on a per-image basis?
>>>>
>>>> And how would that work from a packaging perspective? AIUI changing
>>>> DISTRO/MACHINE flags in an image is a recipe for failure.
>>>
>>> I'm not suggesting changing the kernel configuration for the existing kernel;
>>> naturally you would need a different kernel recipe. Surely you should just be
>>> able to have a different kernel that is built and installed for a different
>>> image file? No invalidated packages necessary.
>>
>> A kernel buld will generate packages and thanks to kernel.bbclass they will have similar names. So what will happen when I do:
>>
>> bitbake foo-image bar-image
>>
>> ? Will it build 2 kernels? Which kernel will end up being packaged or will there be a mix of both in deploy?
>>
>> regards,
>>
>> Koen
>>
>> --
>>
>> Different virtual/kernel recipies depending on kernel configuration might not be the best resolution path for this issue.
>>
>> How would it be problematic to have multiple binary flavour packages(Still a single source package)
>> of the same kernel with the same linux-headers in the distro packages ?
>> In deploy/images a similiar notation as for rootfs could be used.
>> Perhaps there are no mechanisms today to do this, but perhaps there could/should be ?
>> What about a pkgconfig style approach ?
>>
>> poky configuration contains a logical separation of IMAGE, MACHINE and DISTRO. (Probably more, but this is unrelated to my point below).
>> What is the roadmap and future of this separation ?
>>
>> image:
>> The IMAGE may contain user applications that will not function without the proper kernel modules.(Or possibly non-module available .config items).
>> i.e. RDEPENDS = kernel-module-xxxx will is impossible to automate since it only scans kernel build for its existence.(if it was configured by kernel .config monolith selected by MACHINE)
>> This is solved in most recipies as RRECOMMENDS = kernel-module-xxx to avoid build breakage.
>>
>> So you need to configure your kernel to support all your IMAGEs, from core-image-smaller-than-minimal to core-image-huge-system(or in my case debug, profiling)
>> This is especially problematic for small embedded systems when it comes to debug and profiling, where included kernel configuration(depending on exactly what)
>> will have varying degrees of performance impact.(some huge, others we can probably live with).
>>
>> machine:
>> In my head, this would contain machine specific configuration and not deal with other kernel configuration.
>> In edison, the kernel configuration is treated as a monolith, perhaps we can improve this by allowing for a more dynamic configuration model of the kernel, where the
>> machine logical layer would depend on _only_ the machine specific parts of the kernel configuration. In the current(edison) case, it usually uses a defconfig.
>> Great, but let the build modify it.
>>
>> pipedream:
>> 1. MACHINE selects a defconfig.
>> 2. IMAGE selects packets on rootfs, some depend on kernel-module-xx, or kernel-config-xx.
>> 3. When building image, fist stage scans included recipes for kernel-module-* and kernel-config-* and adds this to the MACHINE selected defconfig before building kernel.
> 
> Hi David,
> 
> For what it's worth, if you use the linux-yocto tooling/base kernel,
> there are alternate
> and modular ways to do something that sounds like what you are
> describing with the
> kernel configuration. I won't claim to have all the answers with how
> this impacts
> packaging, image creation, etc. I'm simply talking as a "kernel guy",
> and my understanding
> of what you are trying to do.
> 
> In this scenario, the base BSP inherits the standard/policy kernel configuration
> fragments that are part of the kernel tree. It then adds board
> specific (hardware) options
> and overrides of optional functionality (where optional is defined by
> the base configuration).
> 
> If you want to then modify the configuration slightly using either
> in-tree or add on kernel
> configuration fragments you can simply add a .cfg to the SCR_URI or set the
> KERNEL_FEATURES variable, just like Darren did recently.
> 
>    KERNEL_FEATURES_append_fri2 += " cfg/smp.scc cfg/efi-ext.scc"


This has the same original variable scope issue as before however. It
would be nice to be able to do this:

$ bitbake core-image-minimal
$ bitbake core-image-minimal-debug

The latter image would use the same machine, but it would build perf,
add "debug" and other configurable options to "APPEND", and add a
configurable set of KERNEL_FEATURES. We should also update the base
kernel tools (non-Yocto) to use merge_config.sh so fragments can be used
in those recipes as well.

The problem I've run into here in the past has been that I cannot
specify things like PREFERRED_PROVIDER in the image recipe. So, for
example, to build RT, the current documented approach is to first add a
PREFERRED_PROVIDER line to either local.conf or bblayers to select
linux-yocto-rt and then to build core-image-rt which merely adds some
relevant packages. It would be much preferable to be able to specify
just an image target and not have to change your configuration because
the image is the intuitive distinguishing factor for people.

--
Darren

> 
> Cheers,
> 
> Bruce
>> Possibly, all kernel related stuff can be located to kernel-profiling-flavour.bb, where recipes are depending on a flavour instead of directly to the kernel-config-xxx.
>> 4. Continues with otherwise normal build-flow.
>> 5. deploy/ipk..rpm..deb: Kernel binary packages are given a flavour.(Still the same kernel source package).
>> 6. deploy/images: keeping a scheme of images similiar to rootfs:es.
>>
>> Impossible ?
>>
>> Best Regards,
>> David
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

