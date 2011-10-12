Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F01E004CF
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 08:42:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Oct 2011 08:42:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62248135"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2011 08:41:56 -0700
Message-ID: <4E95B544.2020907@linux.intel.com>
Date: Wed, 12 Oct 2011 08:41:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Philip Balister <philip@balister.org>
References: <4E933C41.4000207@linux.intel.com> <1318371311.23801.128.camel@ted>
	<CAMKF1sp9tBJYzCBpo+zJr3Lhei1=StTGk2BkBmK13AZZwEZz5g@mail.gmail.com>
	<4E94DCD5.2060200@balister.org>
In-Reply-To: <4E94DCD5.2060200@balister.org>
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
X-List-Received-Date: Wed, 12 Oct 2011 15:42:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 10/11/2011 05:18 PM, Philip Balister wrote:
> On 10/11/2011 07:51 PM, Khem Raj wrote:
>> On Tue, Oct 11, 2011 at 3:15 PM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> On Mon, 2011-10-10 at 11:41 -0700, Darren Hart wrote:
>>>> As part of working on meta-tiny, I've come across a need (want?) to
>>>> present users with the ability to select some set of features in a local
>>>> configuration file that will impact the build of the image and a set of
>>>> recipes.
>>>>
>>>> It is currently possible to affect which packages are installed in an
>>>> image with variables like POKY_EXTRA_INSTALL. What I'm not finding a way
>>>> to do is specify some set of features that will impact how a recipe is
>>>> built.
>>>>
>>>> For example, a user may or may not want networking support or virtual
>>>> terminal support in their image. This impacts both the kernel and
>>>> busybox (at least). The linux-yocto infrastructure provides us with
>>>> config fragment functionality, something similar will need to be added
>>>> to busybox. Access to that is still bound to the machine config by means
>>>> of the SRC_URI machine override mechanism, but it would be useful to be
>>>> able to influence it from the image config or the user's local config.
>>>>
>>>> For example, when building a tiny image I may decide I do not want VT
>>>> nor INET support. I might wish to specify this like this (by removing
>>>> them from the default features):
>>>>
>>>> local.conf:
>>>> #CORE_IMAGE_TINY_FEATURES = "VT INET MDEV"
>>>> CORE_IMAGE_TINY_FEATURES = "MDEV"
>>>>
>>>> I would want this to affect linux-yocto-tiny by dropping the vt.cfg and
>>>> inet.cfg fragments from the SRC_URI (or from the .scc descriptor files
>>>> assembled by the linux-yocto meta indrastructure).
>>>>
>>>> Busybox would need a similar configuration mechanism, and would also
>>>> need to add a "no-vt-support.patch" patch to the SRC_URI to avoid a
>>>> bug/oversight in the busybox init routine.
>>>>
>>>> I'd appreciate some help determining the proper bitbake way of doing
>>>> this. I want to avoid having to create a new machine.conf and/or recipes
>>>> for every possible combination of features that a user may want to turn
>>>> on or off.
>>>
>>> We have a few mechanisms around for this but its a difficult problem to
>>> do totally generically since everyone has their own ideas about what
>>> should/shouldn't happen.
>>>
>>> One tricky aspect is that some people care about package feeds and the
>>> output into those needs to be deterministic. This is why DISTRO_FEATURES
>>> exist which state things like "does x11 make sense"? This means dbus may
>>> or may not be compiled with X but given a set of policy decisions by the
>>> distro, the output is determined.
>>>
>>> Recently we've taken the idea of PACKAGECONFIG on board. This is recipe
>>> level policy which can enable/disable features in a given recipe (e.g.
>>> does gsteamer depend on and build flac or not?). Whilst we have a high
>>> level setup for this for autotools recipes, this is probably something
>>> we need to do a more custom implementation of for busybox and the
>>> features you mention above would map well to this. It would be good to
>>> have a standardised way of representing this (and we may also want to
>>> look at moving the kernel feature control towards this variable name
>>> too).
>>>
>>> What we need to be really really careful about is getting the
>>> namespacing right and your CORE_IMAGE_TINY_FEATURES = "VT INET MDEV"
>>> example above scares me as it mixes up several different things. My
>>> worry is for example trying to build two different versions of busybox
>>> in the same tmpdir depending on what image you build, for example what
>>> does "bitbake core-image-tiny core-image-sato" do?
>>>
>>> Contrast this to some settings:
>>>
>>> PACKAGECONFIG_pn-linux-yocto = "vt inet"
>>> PACKAGECONFIG_pn-busybox = "mdev"
>>>
>>> which then mean you have one set of configuration for these recipes and
>>> its clear what the bitbake command above would result in.
>>>
>>> One of the bigger problems we're going to have with tiny is its
>>> effectively a different set of distro settings to our normal builds. The
>>> side effect of that is that you couldn't share a tmpdir with a "big"
>>> build but I'm not sure that is an issue in practise, we just need to do
>>> it in a way which doesn't give us the nasty configuration corner cases.
>>>
>>> So I guess what I'm saying is the end result of your work is likely a
>>> "poky-tiny" distro setting which would take the "poky" distro but tweak
>>> some pieces for really small images. It would need a separate tmpdir and
>>> we should look in the PACKAGECONFIG variable direction for handling
>>> recipe specific customisations...
>>>
>>
>> FWIW I agree it seems like a new distro to me. I think if we add more to mix
>> it just will complicate the customizations and may even make it
>> difficult to share
>> things.
> 
> Along the same line of thought, does this overlap with the micro distro?
> 

Hrm... the micro distro? What's this?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

