Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 209DCE0072A
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 10:43:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBEIhcii005823
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Dec 2011 10:43:38 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 14 Dec 2011 10:43:38 -0800
Message-ID: <4EE8EE57.1060608@windriver.com>
Date: Wed, 14 Dec 2011 13:43:35 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4EE2911E.3090708@linux.intel.com> <4EE58DA5.9070301@windriver.com>
	<4EE68B9A.8080602@linux.intel.com> <4EE8D5D9.5070201@windriver.com>
	<4EE8E5D8.7060800@linux.intel.com>
In-Reply-To: <4EE8E5D8.7060800@linux.intel.com>
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
X-List-Received-Date: Wed, 14 Dec 2011 18:43:40 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11-12-14 01:07 PM, Darren Hart wrote:
>
>
> On 12/14/2011 08:59 AM, Bruce Ashfield wrote:
>> On 11-12-12 06:17 PM, Darren Hart wrote:
>>> On 12/11/2011 09:14 PM, Bruce Ashfield wrote:
>>>> On 11-12-09 5:52 PM, Darren Hart wrote:
>>>>> Bruce,
>>>>>
>>>>> I'm looking at introducing a new kernel type, ktypes/tiny.
>>>>>
>>>>> Tiny will define a core set of kernel policy options, such as proc, sys,
>>>>> devtmpfs, futex, epoll, elf bin format, etc. It will not enable any
>>>>> drivers, filesystems, debug options, or networking options by default.
>>>>> This would be the responsibility of the BSP to add a named feature
>>>>> implementing this.
>>>>>
>>>>> Taking a look at the ktypes we have now resulted in some questions:
>>>>>
>>>>> dvhart@envy:~/source/linux/linux-yocto-3.0/meta/cfg/kernel-cache/ktypes
>>>>> $ tree
>>>>> .
>>>>> ├── base
>>>>> │   ├── base.cfg
>>>>> │   ├── base.scc
>>>>> │   ├── hardware.cfg
>>>>> │   ├── hardware.kcf
>>>>> │   ├── non-hardware.cfg
>>>>> │   └── non-hardware.kcf
>>>>> ├── preempt-rt
>>>>> │   ├── preempt-rt.cfg
>>>>> │   └── preempt-rt.scc
>>>>> ├── standard
>>>>> │   ├── perf-force-include-of-stdbool.h.patch
>>>>> │   ├── perf-hard-code-NO_LIBPERL-NO_LIBPYTHON.patch
>>>>> │   ├── standard-patches.scc
>>>>> │   ├── standard.cfg
>>>>> │   ├── standard.scc
>>>>> │   └── x86-add-TIF_32BIT-compatibility-define.patch
>>>>>
>>>>> These form a hiearchy, each inheriting from the layer beneath like so:
>>>>>
>>>>> base/standard/preempt-rt
>>>>>
>>>>> As I dig into this I see that some policy is infact laid down by base,
>>>>> including things like:
>>>>>
>>>>> CONFIG_MODULES=y
>>>>> CONFIG_INET=y
>>>>> CONFIG_PREEMPT=y
>>>>> CONFIG_NFS_FS=y
>>>>> CONFIG_MSDOS_PARTITION=y
>>>>>
>>>>> These pull in the IP stack, the block layer, etc. Because of this, I
>>>>> can't really inherit from base for ktypes/tiny. I would like to inherit
>>>>> the hardware and non-hardware kcf files though, as well as any patches
>>>>> that might make their way into base. Which leads me to standard. I would
>>>>> like to see a much smaller set of config policy options set in base.
>>>>> Most likely these should be exactly what we agree on for tiny, and tiny
>>>>> wouldn't add any additional policy as it implements only what is
>>>>> required for a Yocto Project built kernel.
>>>>>
>>>>> NOTE: kernel version is 3.0+
>>>>> $ cat base/base.scc | head -n 1
>>>>> set_kernel_version 2.6.37
>>>>
>>>> FYI: nothing uses this at the moment. But I fixed that here.
>>>>
>>>>>
>>>>> There are three patches in standard, only two of which (the perf ones)
>>>>> are listed in the standard.scc. As I believe any kernel we build should
>>>>> have these, I would like to see any global patches applied to base,
>>>>> leaving standard to define policy, and include named features.
>>>>
>>>> standard only includes 3 patches because they were a bit hard to
>>>> classify elsewhere. In a more fully populated kernel, it does include
>>>> quite a bit more directly.
>>
>> Sorry for the slow reply, I got bogged down trying to write some
>> python code yesterday.
>>
>>>
>>> directly = git repository commits?
>>
>>
>> Sort of. Or what I meant by directly was the "patch<foo>" right
>> in standard.scc. As you well know, for the most part, standard pulls in
>> patches by including other features, and those are just as direct
>> as a patch/commit listed right in the standard kernel .scc file.
>>
>> The yocto kernels have thus far had relatively few additional features,
>> but if that changes, the standard kernel will have more direct changes
>> being applied to the branches.
>
>
> I'm seeing a problem with the coupling of patches and configs. I
> understand why it made sense to do at the time, but if we want to base
> all branches off the same sources (and it's clear we do) then our
> infrastructure should allow us to prepare that source base separately
> from the config. Applying the config and then clearing it out is a
> rather ugly solution IMO.

There are configs that absolutely should be coupled with patches,
and configs that don't need to be. We are obviously talking about
configs that don't need to be, and we definitely have the flexibility
to keep them apart.

>
>
>>
>>>
>>>>>
>>>>> With these changes, I could add ktypes/tiny as follows:
>>>>> $ cat tiny/tiny.scc
>>>>> include ktypes/base
>>>>> branch tiny
>>>>> include features/xyz/xyz.scc
>>>>> include cfg/abc.scc
>>>>>
>>>>> Another point of interest is preempt-rt, as I can see people wanting to
>>>>> build tiny preempt-rt. I think the best approach here is to create
>>>>> ktypes/tiny/preempt-rt-tiny/preempt-rt-tiny.scc.
>>>>>
>>>>> Note: I believe this fails with .patch.patch
>>>>> $ cat features/rt/rt.scc | grep patch
>>>>> patch rt-apply-patch-3.0.10-rt27.patch.patch
>>>>
>>>> Love my "patch.patch". Script went wild on that one, luckily the content
>>>> in the branch is king :) I fixed that here when I was auditing 3.0.12+rt
>>>> so that looks more sane now.
>>>>
>>>>>
>>>>> I'm working on a patch series that implements the suggestions I've made
>>>>> above. Bruce, do you have any issues with this approach?
>>>>
>>>> Allow me to ramble a bit below ...
>>>>
>>>> No big issues. At some level(s) it is just a shell game. We can move
>>>> configs and patches around to the appropriate level to get the building
>>>> blocks that we need and get common functionality into a common location.
>>>>
>>>> base was (is) intended to document the branch point from the mainline
>>>> kernel, and contain largely configuration and very few patches. Any
>>>> important or larger size functional additions go into the standard
>>>> kernel.
>>>
>>> What is the value of having base and standard as separate branches?
>>> Isn't base easily derivable from the standard git history? Still if it
>>> isn't used anywhere, then the branch is a no-op and adds no complexity,
>>> so that's fine.
>>
>> base can definitely be derived from git history, or via git merge-base,
>> but the branch is a very clear delineation of the jumping point
>> and contains things like the initial commits to .gitignore. It also
>> provides a common branch point for the meta branch and standard, so
>> really basic things can be shared. It has also been used in the past
>> for a simple branch to build the stock korg kernel from where we jump
>> into added content.
>>
>> It also reduces complexity in the tools by having a defined/known
>> branch name that can be used to detect the type of a repo.
>>
>> So nothing earth shattering, but a series of smaller reasons.
>
> OK... I can certainly work with it.
>
>>
>>>
>>>>
>>>> So branching from base for a new kernel type is something we can do, but
>>>> it will risk missing additions (say for example tracing fixes, or the
>>>> next super-duper debug via kprobes patch series), since they'll go into
>>>> the standard kernel.
>>>
>>> OK, that's no good. My moving patches down to base was intended to avoid
>>> just that problem. And given the above, leaving them in standard is
>>> preferred. OK, that poses some issues.... discussed below.
>>>
>>>> If I just slide all the patches down into base,
>>>> why not just call 'base' 'standard' or just make standard have the
>>>> configuration you are working on for tiny.
>>>>
>>>> The point I'm attempting to make, is that the base/common point can be
>>>> whatever we decide it needs to be, "standard" can be renamed, content
>>>> moved up and down, etc. i.e. standard could have it's config changed,
>>>> a new branch created off standard ( and options moved there), or
>>>> standard  could be streamlined and the boards include more common
>>>> config options manually vs inheriting them, etc.
>>>>
>>>> I need a bit more time to think about that myself.
>>>
>>> The above is fine. Or rather, any of the above can work. Let's discuss
>>> which one :-)
>>
>> Indeed. It is just a matter of shifting things around to where
>> we want them.
>>
>>>
>>>>
>>>> Another option is to let tiny inherit from standard, but force a
>>>> new baseline for configuration options. i.e. your allnoconfig
>>>> technique buried in the middle of inheritance tree. With the
>>>> optional/required designations I'm finishing up for 1.2 you won't get
>>>> hit with reams of redefined configuration warnings. With that set, you
>>>> can then go about adding kernel type specific options/features/patches
>>>> as we see fit .. and you'll pickup those features that I was talking
>>>> about above. If you bear with me by doing some of this manually for
>>>> now (setting the baseline), it is easy to add a construct to do that
>>>> reset automagically.
>>>
>>> I really want to avoid setting a base config, and then backtracking to
>>> reset it to something else in a derived branch. Chasing those overrides,
>>> etc can be a massive pain. Much better to get the main SOURCES and
>>> essential policy into a single branch, then let standard and tiny branch
>>> from there. Intuitively, Standard and Tiny should be siblings, not
>>> ancestors of eachother. Keeping this relationship apparent in the
>>> branching and source and config inheritance should help keep things
>>> clear and maintainable.
>>
>> Agreed, and that's the trick, we have source changes and configuration
>> changes. We want to inherit (not cherry pick) both where possible, but
>> in the end, we sometimes have to chose.
>>
>> BSPs are an example of this. We try and drive the patches for boards
>> down as far as possible until they are common. But sometimes, they are
>> so evil that they have to locked into a room by themselves. To share
>> those BSP changes between kernel types, they are essentially cherry
>> picks, as are their config values.
>>
>>      yocto/standard/my-bsp
>>      yocto/standard/preempt-rt/my-bsp
>>
>> Have the same patches (as can be checked by git patch-id), but they don't
>> have the same git hash.
>>
>> The good news is of course that these changes are on the end of branches,
>> are largely orthogonal to the rest of the kernel (and hence don't
>> conflict, or need to be shared) and they are automatically done when
>> updating the kernel. Also to deal with this, the BSPs are split into
>> kernel type specific options and common options. That way we only
>> maintain one common set of configuration values for a board and share
>> it via scc includes.
>>
>> So I see this as a similar situation/choice, do we go with:
>>
>> a)
>>      yocto/standard/tiny
>>
>> b)
>>      yocto/standard
>>      yocto/tiny
>>
>> c)
>>      yocto/standard/standard-config-items/
>>      yocto/standard/tiny
>>
>> In all options, we'd drive a decent/common configuration into the base
>> and both standard and tiny would inherit that, so consider that a
>> constant.
>>
>> The rest of the issues/properties of the options are:
>>
>> a) tiny would inherit standard, patches and config. We'd have to
>>      back off (or exclude (we can do that!)) standard's config values.
>>      But we get the patch inheritance that we want.
>
> Barf.
>
>>
>> b) tiny and standard are peers, but tiny needs individual merges
>>      of all features and there aren't any common commits between the
>>      two outside of base (or korg). So this is the 'source complexity'
>>      issue.
>
> Double barf.


They were options .. just not good ones :)

>
>>
>> c) tiny inherits standard, but we move out standard's config values
>>      into another branch (they are cheap after all). That way
>>      tiny gets the patches and features, but not the config of standard.
>>      In this example, we might want to kill "base", since we are adding
>>      another layering of branches, although one that would be trivial/small.
>
> This seems the obvious choice to me. Bare with me for some context:

To me as well.

>
> I had a discussion with Richard yesterday regarding distros, images,
> policies, etc. The kernel-type selection really belongs to the DISTRO
> definition. The preempt-rt is selected currently by manually setting
> PREFERRED_PROVIDER in a local config file. This is lame. The right way
> to have done this would have been to define a poky-rt distribution which
> specified linux-yocto-rt as the PREFERRED_PROVIDER and added rt-tests
> (and taskset and chrt to RDEPENDS). Then people set their DISTRO in the
> local.conf (this actually makes sense!) and build one of the standard
> images like core-image-minimal or core-image-sato, and they get an RT
> enabled kernel and the tools commonly needed to work with and analyze
> this kernel. It's a much better mechanism.

Yup. I agree with that as well. "distro" seems like a heavy term,
but that's because I'm not a traditional OE kinda-guy. But the
concept is bang on.

>
> So what does that mean here? Well, I suggest we put all the sources in
> standard (minus evil BSP patches obviously) and then create a ktype per
> DISTRO definition:

And minus -rt at the moment. It still has issues with being enabled
and turned completely off, and it makes merging other out of tree
functionality difficult/manual .. not something I want to take on
everywhere. In the future, we both well know that this will likely be
doable, I'm just saying 'not yet' .. but that doesn't impact what we
are proposing here much (only for the -rt patches themselves).

>
> yocto/base
> yocto/standard/base
> yocto/standard/poky
> yocto/standard/poky-rt
> yocto/standard/poky-tiny

I'd want the distro not to be named in the branches, but yes,
that looks ok to me.

>
> Combinatorix become a bit of an issue, as we will likely have need for:
>
> yocto/standard/poky-tiny/base
> yocto/standard/poky-tiny/poky-tiny-rt
>
> or something like that.
>
> This clearly delineates the line between common sources (standard/base)
> and distro defined policy (poky, poky-rt, and poky-tiny) which includes
> the standard kernel config.

I'd still s/poky/something else/g .. but I'd agree with that.

>
>
>>
>> It may not be obvious, but we will need to have BSPs hanging off
>> the new tiny kernel type as well.
>>
>>      yocto/standard/qemuppc
>>      yocto/tiny/qemppc
>
> yocto/standard/poky/qemuppc
> yocto/standard/poky-rt/qemuppc
> yocto/standard/poky-tiny/qemuppc
>
> Yes, understood. If we couple this with my earlier email about deleting
> unecessary branches, I think this is managable. I believe we should
> consider any BSP specific branch to be a problem in need of solving -
> e.g. an upstream solution is needed.

+1 .. completely agree. anyone building on the kernel tree as a base
has full flexibility to do what they want for new branches, and they
can be dynamically be created at build time .. so we can keep things
simple and not impact flexibility.

>
>>
>> So it comes down to this:
>>
>>     - Is tiny a full kernel type, and takes the "responsibilities" that
>>       this entails, or is it a refinement and streamlining of existing
>>       BSPs and kernel types ... i.e. is it a last minute overlay.
>
> ktype.

that's the right choice :)

>
>>
>> I've made both choices in the past and depending on the choice, we
>> arrange the tree differently.
>>
>>>
>>>>
>>>> It's the features and patch balancing that's the hard part, not getting
>>>> the configs how we want them. I've lived the madness of the other!
>>>
>>> I agree the source-work should not be duplicated.
>>>
>>>
>>>> What we don't want to get into (I've been there, with an old "small"
>>>> kernel type) is having a different stack of patches and fixes on
>>>> multiple kernel types. The patches start failing, and you end up always
>>>> merging a fix in two different ways due to changes in the feature mix
>>>> on each kernel type.
>>>
>>> Agreed
>>>
>>>> (This comment more applies to the tiny and -rt
>>>> mix). Better mileage might be gained by doing.
>>>>
>>>>      yocto/standard/preempt-rt/tiny
>>>>
>>>> versus moving the big patch onto yocto/tiny/preempt-rt, but that implies
>>>> that tiny is providing a set of configuration values that clobber what
>>>> has been set by both standard and -rt .. something that trades patch
>>>> maintenance with config maintenance.
>>>
>>> I intend to keep Tiny as config options as much as possible (but I can
>>> see some new Kconfig options from linux-tiny (or tiny-linux, whatever it
>>> is) creeping their way in. Still, I prefer tiny/preempt-rt for the
>>> reasons stated above.
>>
>> We may need to normalize the names to keep things straight.
>> There are currently two kernel types in yocto: "standard" and
>> "preempt-rt". (Other instances of the tooling have more kernel
>> types).
>>
>> In this discussion we are talking about adding another kernel
>> type "tiny". So it would be a peer to preempt-rt, and thus
>> we wouldn't want to re-use the term "preempt-rt".
>>
>> Internally in the kernel-cache directories preempt-rt is the "kernel
>> type" and "rt" is the feature.
>>
>> So we'd want something more like:
>>
>>      yocto/standard
>>      yocto/standard/tiny
>>      yocto/standard/tiny/rt
>>      yocto/standard/preempt-rt
>
> See above, but I think we are in agreement here.

Yep, I'm not sold on a distro name, but if you change this to:

       yocto/base
       yocto/standard/cfg (bad name, but I wanted something)
       yocto/standard/rt
       yocto/standard/tiny

Then the tree is more of a common base ... they are just names after
all! We already have 'yocto' in there, so that's enough specifics for
my taste.

or we flip it around ...

    base
    standard/yocto
    standard/yocto-rt
    standard/yocto-tiny

Which looks more like what you proposed, but without the double
specific names.

>
>>
>> (That's just a suggestion, and yes, I admit that can also be
>>    confusing to someone simply reading the branches).
>>
>> No matter how you slice it, there will be some duplication between
>> tiny/rt and preempt-rt, since you'll want both the kernel configs
>> and the patches from the rt feature (which is most of the preempt-rt
>> kernel type). So they will have to be merged twice (automatically
>> during tree generation of course).
>>
>> .. and BTW. The names (even "standard", are not hardcoded anywhere),
>> so if adding new options, kernels, etc, makes some name just seem
>> wrong, we can change it (in a new release). i.e. standard could become
>> the (over used) "core" branch .. if it makes things read better.
>>
>> That begs the question. If a patch is good enough for tiny, and it
>> is properly #ifdef'd, it can be merged to the standard branch, and
>> once that is done, we'll have a much easier time maintaining tiny +
>> stacked features, since those features will already have adapted
>> to the tiny imported features/source changes.
>
> Agreed.
>
>>
>>>
>>>>
>>>> Working through all that, what I'm saying is that I'd prefer to make
>>>> standard do what you want, and keep the base similar to what it is.
>>>> We can shuffle undesirable standard configuration items up versus
>>>> shuffling all patches and functionality down to yocto/base. But the
>>>> approach is fundamentally the same.
>>>>
>>>> i.e. I see no reason why the tiny config wouldn't be fine as
>>>> the standard config or as something that makes significant changes
>>>> to standard's configuration. But definitely something that wants the
>>>> patches and features in standard.
>>>
>>> Agreed.
>>
>> This is the way forward. Some variant of the options that I've listed
>> above.
>>
>> I've been through a lot of this in the past, so I can make suggestions
>> and having a discussion like this is very helpful if anyone peering
>> in wonders what's going on behind the covers, since this is largely
>> unseen effort.
>
> Let me know what you think of the distro:branch mapping I have defined
> above. I think this is the cleanest way forward. Going to wait to hear
> from you before I proceed. Let's make sure we have an agreed upon
> approach first.

See above. I'm thinking more about names, but wanted to get
an answer out sooner.

Cheers,

Bruce

>


