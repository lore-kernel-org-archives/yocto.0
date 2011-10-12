Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3104E004CF
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 08:40:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2011 08:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62247752"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2011 08:40:14 -0700
Message-ID: <4E95B4DD.5090401@linux.intel.com>
Date: Wed, 12 Oct 2011 08:40:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E933C41.4000207@linux.intel.com> <1318371311.23801.128.camel@ted>
In-Reply-To: <1318371311.23801.128.camel@ted>
X-Enigmail-Version: 1.3.2
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 15:40:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/11/2011 03:15 PM, Richard Purdie wrote:
> On Mon, 2011-10-10 at 11:41 -0700, Darren Hart wrote:
>> As part of working on meta-tiny, I've come across a need (want?) to
>> present users with the ability to select some set of features in a local
>> configuration file that will impact the build of the image and a set of
>> recipes.
>>
>> It is currently possible to affect which packages are installed in an
>> image with variables like POKY_EXTRA_INSTALL. What I'm not finding a way
>> to do is specify some set of features that will impact how a recipe is
>> built.
>>
>> For example, a user may or may not want networking support or virtual
>> terminal support in their image. This impacts both the kernel and
>> busybox (at least). The linux-yocto infrastructure provides us with
>> config fragment functionality, something similar will need to be added
>> to busybox. Access to that is still bound to the machine config by means
>> of the SRC_URI machine override mechanism, but it would be useful to be
>> able to influence it from the image config or the user's local config.
>>
>> For example, when building a tiny image I may decide I do not want VT
>> nor INET support. I might wish to specify this like this (by removing
>> them from the default features):
>>
>> local.conf:
>> #CORE_IMAGE_TINY_FEATURES = "VT INET MDEV"
>> CORE_IMAGE_TINY_FEATURES = "MDEV"
>>
>> I would want this to affect linux-yocto-tiny by dropping the vt.cfg and
>> inet.cfg fragments from the SRC_URI (or from the .scc descriptor files
>> assembled by the linux-yocto meta indrastructure).
>>
>> Busybox would need a similar configuration mechanism, and would also
>> need to add a "no-vt-support.patch" patch to the SRC_URI to avoid a
>> bug/oversight in the busybox init routine.
>>
>> I'd appreciate some help determining the proper bitbake way of doing
>> this. I want to avoid having to create a new machine.conf and/or recipes
>> for every possible combination of features that a user may want to turn
>> on or off.
> 

Hi RP,

Thanks for the thoughts, gives me some places to look for examples and
flesh this idea out more.

> We have a few mechanisms around for this but its a difficult problem to
> do totally generically since everyone has their own ideas about what
> should/shouldn't happen.
> 
> One tricky aspect is that some people care about package feeds and the
> output into those needs to be deterministic. This is why DISTRO_FEATURES
> exist which state things like "does x11 make sense"? This means dbus may
> or may not be compiled with X but given a set of policy decisions by the
> distro, the output is determined.
> 
> Recently we've taken the idea of PACKAGECONFIG on board. This is recipe
> level policy which can enable/disable features in a given recipe (e.g.
> does gsteamer depend on and build flac or not?). Whilst we have a high
> level setup for this for autotools recipes, this is probably something
> we need to do a more custom implementation of for busybox and the
> features you mention above would map well to this. It would be good to
> have a standardised way of representing this (and we may also want to
> look at moving the kernel feature control towards this variable name
> too).
> 
> What we need to be really really careful about is getting the
> namespacing right and your CORE_IMAGE_TINY_FEATURES = "VT INET MDEV"
> example above scares me as it mixes up several different things. My

Sure, I'm not attached to it, it was just for illustration.

> worry is for example trying to build two different versions of busybox
> in the same tmpdir depending on what image you build, for example what
> does "bitbake core-image-tiny core-image-sato" do?

Yes, I see the problem. I notice that uclibc uses a different tmp space
that the eglibc build.

> 
> Contrast this to some settings:
> 
> PACKAGECONFIG_pn-linux-yocto = "vt inet"
> PACKAGECONFIG_pn-busybox = "mdev"

OK, but it would need to be:

PACKAGECONFIG_pn-linux-yocto = "vt inet"
PACKAGECONFIG_pn-busybox = "vt inet mdev"

Since busybox needs to disable various vt support configs if the kernel
doesn't support vt. If don't support networking in the kernel, we might
as well disable it in busybox (and eglibc or uclibc for that matter).
The idea behind the single features variable was to avoid having to keep
them all in sync. Perhaps the busybox one could also read
PACKAGECONFIG_pn-virtual/kernel, but if they have explicitly different
settings - because someone wants a generic busybox recipe for multiple
kernels for example - I'm not sure how we would reconcile that.

> 
> which then mean you have one set of configuration for these recipes and
> its clear what the bitbake command above would result in.
> 
> One of the bigger problems we're going to have with tiny is its
> effectively a different set of distro settings to our normal builds. The
> side effect of that is that you couldn't share a tmpdir with a "big"
> build but I'm not sure that is an issue in practise, we just need to do
> it in a way which doesn't give us the nasty configuration corner cases.

For now it has been working alright. I wrote a task-core-tiny task and a
core-image-tiny image recipe which just install less stuff, so those
work out fine, and get us all the way down to a 3.2M rootfs (down from
11M with minimal) without rewriting recipes or reconfiguring them. So we
can do a lot in the existing tmp space.

Obviously with reconfigured recipes or altered sources, we'd either need
a new tmp space, or perhaps renamed recipes. I already use
linux-yocto-tiny, perhaps busybox-tiny would make sense (although it
sounds a tad redundant ;). I don't much like the -tiny recipes as they
duplicate code - and the PACKAGECONFIG should do all we need.

> 
> So I guess what I'm saying is the end result of your work is likely a
> "poky-tiny" distro setting which would take the "poky" distro but tweak
> some pieces for really small images. It would need a separate tmpdir and
> we should look in the PACKAGECONFIG variable direction for handling
> recipe specific customisations...

Thanks RP,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

