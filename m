Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBB8EE00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 10:18:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Dec 2011 10:18:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="100562858"
Received: from unknown (HELO envy.home) ([10.255.12.30])
	by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2011 10:18:57 -0800
Message-ID: <4EE25120.5030302@linux.intel.com>
Date: Fri, 09 Dec 2011 10:19:12 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
	<CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
	<4EE106CB.6080104@linux.intel.com> <1323384424.5309.85.camel@ted>
	<4EE140AA.3040506@linux.intel.com> <1323385940.5309.106.camel@ted>,
	<4EE14DD6.9070805@linux.intel.com>
	<88701C38B5D07249817D428430999C910B7745B7@sestoex09.enea.se>
In-Reply-To: <88701C38B5D07249817D428430999C910B7745B7@sestoex09.enea.se>
X-Enigmail-Version: 1.3.3
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
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
X-List-Received-Date: Fri, 09 Dec 2011 18:18:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 12/09/2011 12:30 AM, David Nyström wrote:
> 
> ________________________________________
> From: Darren Hart [dvhart@linux.intel.com]
> Sent: Friday, December 09, 2011 00:52
> To: Richard Purdie
> Cc: Bruce Ashfield; David Nyström; Paul Eggleton; yocto@yoctoproject.org
> Subject: Re: [yocto] Variable locality too restricted.
> 
> On 12/08/2011 03:12 PM, Richard Purdie wrote:
>> On Thu, 2011-12-08 at 14:56 -0800, Darren Hart wrote:
>>> On 12/08/2011 02:47 PM, Richard Purdie wrote:
>>>> On Thu, 2011-12-08 at 10:49 -0800, Darren Hart wrote:
>>>>> On 12/08/2011 06:31 AM, Bruce Ashfield wrote:
>>>>>> If you want to then modify the configuration slightly using either
>>>>>> in-tree or add on kernel
>>>>>> configuration fragments you can simply add a .cfg to the SCR_URI or set the
>>>>>> KERNEL_FEATURES variable, just like Darren did recently.
>>>>>>
>>>>>>    KERNEL_FEATURES_append_fri2 += " cfg/smp.scc cfg/efi-ext.scc"
>>>>>
>>>>>
>>>>> This has the same original variable scope issue as before however. It
>>>>> would be nice to be able to do this:
>>>>>
>>>>> $ bitbake core-image-minimal
>>>>> $ bitbake core-image-minimal-debug
>>>>>
>>>>> The latter image would use the same machine, but it would build perf,
>>>>> add "debug" and other configurable options to "APPEND", and add a
>>>>> configurable set of KERNEL_FEATURES. We should also update the base
>>>>> kernel tools (non-Yocto) to use merge_config.sh so fragments can be used
>>>>> in those recipes as well.
>>>>>
>>>>> The problem I've run into here in the past has been that I cannot
>>>>> specify things like PREFERRED_PROVIDER in the image recipe. So, for
>>>>> example, to build RT, the current documented approach is to first add a
>>>>> PREFERRED_PROVIDER line to either local.conf or bblayers to select
>>>>> linux-yocto-rt and then to build core-image-rt which merely adds some
>>>>> relevant packages. It would be much preferable to be able to specify
>>>>> just an image target and not have to change your configuration because
>>>>> the image is the intuitive distinguishing factor for people.
>>>>
>>>> I'd like to give the bitbake perspective on this problem.
>>>>
>>>> PREFERRED_PROVIDER in images doesn't really make sense to bitbake.
>>>> Imagine you have:
>>>>
>>>> core-image-minimal setting PREFERRED_PROVIDER = "kernelA" and
>>>> core-image-minima-debug setting PREFERRED_PROVIDER = "kernelB". Both
>>>> would depend on "virtual/kernel". You then run:
>>>>
>>>> "bitbake core-image-minimal core-image-minimal-debug"
>>>>
>>>> What would you expect bitbake to do?
>>>
>>> What I _think_ most people would expect it to do is to build each kernel
>>> and install the right one in each image. I understand this doesn't work
>>> with the way bitbake currently handles kernels, as you describe below.
>>>
>>>> The kernel is special in that doesn't really stage output that is reused
>>>> by other parts of the system but we have to consider the general case
>>>> where output such as libraries would end up in a shared sysroot. Even
>>>> then, the kernel does generate packages which it places in a machine
>>>> specific feed and the names don't reflect the different inputs, there is
>>>> one kernel-image package for example and in the above case it would be a
>>>> race on which one built last.
>>>
>>> The names not reflecting different inputs seems like it should be
>>> something we can address. I appreciate it isn't trivial, and probably
>>> stomps on some pretty core assumptions dealing with how we build images,
>>
>> Images aren't the problem, those are easy. Its the packages. How do you
>> represent that kernel-image A is built with configuration X and
>> kernel-image B is built with configuration Y. How do you determine
>> whether you can switch between A and B or not? How do you decide which
>> one is the higher version?
> 
> I'd imagine we change the package name linux-yocto vs. linux-yocto-debug
> for example (this is how some of the Linux distributions handle it). I
> believe PREFERRED_PROVIDER can then distinguish based on the package
> name, and the versioning works the same as it does now.
> 
>>
>>> but I believe it would be valuable to be able to build multiple kernel
>>> versions for a given machine.
>>
>> Version on its own is easier as packages do have pretty clear ideas
>> about versions. I suspect you mean different configurations though.
> 
> Agreed, that was a generic "version", not PV :-) I believe being able to
> select the PN from PREFERRED_PROVIDER in the image recipe is what I'm
> saying I'd prefer.
> 
> 
>>
>>>  Many Linux distributions do this and I can
>>> see users of Yocto wanting to do the same with the distributions they build.
>>
>> How do different linux distributions do that exactly? Likely different
>> package feeds for each kernel?
> 
> They have different names. For example, Red Hat's MRG ships something like:
> 
> linux-rt
> linux-rt-vanilla
> linux-rt-debug
> linux-rt-vanilla-debug
> 
> It has been a while since I looked, but it was something along those lines.
> 
>>
>> As far as I can tell, to do this properly we'd need to:
>>
>> a) Adopt per recipe sysroots
> 
> Yes. And if the same recipe can be used to generate different PNs based
> on the config option, then that is treated as a separate recipe right?
> 
>> b) Adopt package feeds constructed per image
> 
> Does the term "feed" refer to "all the packages that can be installed"
> or "all the packages that will be installed" ? Note that the distros
> allow multiple kernels to be installed at once - which in the -debug
> case would probably be preferred, but I can see the argument of not
> wanting to go that route for Yocto.
> 
>> c) Drop support for anyone wanting traditional distro type package feeds
>>
> 
> I'm hoping b and c would not be required.... or could be made not required.
> 
>> These things would not be popular with the community due to a loss of
>> functionality and would utterly destroy any notion of build speed.
>>
>>>> Bitbake therefore takes PREFERRED_PROVIDER and VERSION decisions from
>>>> the core configuration (.conf / .inc / machine / distro / bitbake.conf /
>>>> base.bbclass). There is no easy solution to this problem, even recipe
>>>> specific sysroots would only get a part solution.
>>>
>>> Would this be something we should consider as a major feature
>>> development item for a future release?
>>
>> Not without some idea of how it could be made to work. I can't visualise
>> a way of making this work as you describe as long as we have packages
>> around to deal with in the conventional way.
>>
>> We've talked about special cases for the kernel above but any proposal
>> needs to work generically too which makes this trickier again :(.
> 
> Agreed. I'd like to discuss the package feed concept a bit more. Clearly
> more thought is required.
> 
> 
> --------------

Hi David,

When replying on mailing lists, please use proper quoting and inline
responses.

> Will this have implications really be as severe as this ?
> 
> We already have a model where normal packages are packaged according to the default scheme:
> 
> udev        - Symbol stripped pkg of udev.
> udev-dbg -  Non stripped pkg of udev.
> udev-dev -  Development pkg of udev.
> 
> A selectable in IMAGE_FEATURES controls what gets installed on rootfs, and 
> I guess all of them are available in sysroot with the added .debug directory for -dbg packages.

This really addresses a completely different problem, and we should not
overload the mechanism to handle different types of kernels.

...

> 
> The previous discussions of having different kernel recipes for different kernel configs, I dont particularly agree with.
> I guess this will lead to separate build directories directly hitting both build time and build disk space.
> Having three configs built in the same build directory with increasing selects, will take roughly the same 
> amount of time and space as the regular bloated .config monolith build.

No. We need separate build directories. We need to maintain the build
for each kernel and not overwrite it when building a different
configuration. Note that the "other" kernel might also contain
additional patches, not just .config changes. But even if it didn't,
.config changes are significant enough to warrant a new build tree.

> 
> Having multiple flavours, and being able to add a flavour with .bbappend would increase bitbake's modularity when it comes to 
> multiple meta-layers from different sources.
> 
> Lets say I want to create an custom image for mpc8536ds, which has a defined machine in meta-fsl-ppc.
> Image consists of :
> meta, meta-yocto,      meta-fsl-ppc       meta-davids-layer.
> |------YOCTO---------- | ----HW-vendor--- | ----SW-only-guys----- |
>     PACKAGES       DISTRO-MACHINE    IMAGES
> 
> When looking at poky-edison, to add changes to the kernel .config, I would have to edit meta-fsl-ppc sources and copy some of 
> their repo to my own, making the layer structure between HW vendor and SW-guys obsolete since meta-fsl-ppc wont(and shouldn't) accept my user specific modifications.
> This is not only related to .config, but also f.ex. MACHINE_FEATURES, KERNEL_IMAGETYPE which can't be overridden from images
> 
> Optimally, meta-davids-layer should contain different package configurations(kernel, busybox) and images only. 


I'm not following you here. As it stands now, you should be able to use
a bbappend of the kernel recipe to modify how the kernel is built
(without duplicating the recipe). This is easier with linux-yocto based
recipes with support for configuration fragments and feature descriptors.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

