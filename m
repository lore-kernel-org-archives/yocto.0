Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7457AE00307
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2012 07:46:29 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Jan 2012 07:46:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95527933"
Received: from unknown (HELO [10.255.13.225]) ([10.255.13.225])
	by azsmga001.ch.intel.com with ESMTP; 13 Jan 2012 07:46:26 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4F1050A8.4040802@windriver.com>
References: <4BD43A85686FC34D819098DB1C3999D901900BC33C@orsmsx502.amr.corp.intel.com>
	<4EE7DA4D.4080500@windriver.com> <4EE7DC81.6030609@intel.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC38A@orsmsx502.amr.corp.intel.com>
	<4EE7DEC2.5050803@windriver.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC3A3@orsmsx502.amr.corp.intel.com>
	<4EE83092.5000500@windriver.com> <4EE83861.4060607@intel.com>
	<4EE8AD93.8040100@windriver.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E255@orsmsx502.amr.corp.intel.com>
	<4EEB9CD5.7060004@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E281@orsmsx502.amr.corp.intel.com>
	<4EEBA792.9030404@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E3BE@orsmsx502.amr.corp.intel.com>
	<4EEBCF40.1050208@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E569@orsmsx502.amr.corp.intel.com>
	<4EEBF18C.3050302@intel.com>  <4EEC068C.6080906@windriver.com>
	<1326400782.2413.192.camel@elmorro>  <4F1050A8.4040802@windriver.com>
Date: Fri, 13 Jan 2012 09:45:51 -0600
Message-ID: <1326469551.2413.256.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
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
X-List-Received-Date: Fri, 13 Jan 2012 15:46:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-01-13 at 10:41 -0500, Bruce Ashfield wrote:
> On 12-01-12 03:39 PM, Tom Zanussi wrote:
> > On Fri, 2011-12-16 at 19:03 -0800, Bruce Ashfield wrote:
> >> On 11-12-16 8:34 PM, Darren Hart wrote:
> >>> On 12/16/2011 05:22 PM, Bodke, Kishore K wrote:
> >>>>
> >>>> With the attached Darren's kern-tools-native_git.bb file, build was success.
> >>>> Thanks
> >>>> Kishore.
> >>>
> >>> See the patch I just sent:kern-tools: Include do_install() in bbappend
> >>> for what I believe to be the solution.
> >>>
> >>> I suppose the proper solution would be to version the kern-tools-native
> >>> recipe when major things like that change, but given the nature of this
> >>> layer, I think the above patch is adequate.
> >>
> >> That's not the solution to either problem (well, yes, it's a solution
> >> and there's nothing inherently wrong with it, it's just covering up
> >> the underlying issue) which is a layer dependency issue. In this case,
> >> meta-kernel-dev tracks the master branch of poky, not any other branch
> >> or version. And that is implicit, not explicit, hence why it got into
> >> this tangle.
> >>
> >> We could simply branch meta-kernel-dev and have an edison branch for
> >> it, not modify the appends to contain something that will just break
> >> again in the future.
> >>
> >> But meta-kernel-dev isn't officially used by much at the moment, so
> >> I'm not convinced that branching it is worth the trouble (but I can
> >> be convinced otherwise). I'd rather either just remove the kern-tools
> >> bbappend (I'm probably the only one on the planet that really needs
> >> it), or just trust people to know what they are up to with the
> >> meta-kernel-dev layer.
> >>
> >
> > Revisiting this - meta-kernel-dev is used in the documentation, and
> > Scott has now run up against this when testing and updating it.  Since
> > the documentation does use edison, and the walk-throughs have the user
> > check out edison branches of both poky and the BSP layers, it would be
> > consistent to have the user also do the same for meta-kernel-dev.
> > Probably just an edison branch with the kern-tools bbappend removed
> > would work fine...
> 
> I opted to simply repeat the SRCREV from the main kern-tools
> repository in the meta-kernel-dev bbappend. This gave me a chance
> to add a bit of warning around changing the SRCREV when working
> on a non-master branch.
> 
> It should be present in an new edison branch of the extras
> repo. So anyone seeing this problem, can do a pull and take it
> for a spin.
> 

Thanks Bruce!

Tom

> Let me know if this doesn't work for some reason.
> 
> Cheers,
> 
> Bruce
> 
> >
> > Tom
> >
> >> Alternatively, we wait for layer dependency tooling and use that :)
> >>
> >> Cheers,
> >>
> >> Bruce
> >>
> >>>
> >>> --
> >>> Darren
> >>>
> >>>>
> >>>> -----Original Message-----
> >>>> From: Bodke, Kishore K
> >>>> Sent: Friday, December 16, 2011 5:07 PM
> >>>> To: Hart, Darren
> >>>> Cc: Bruce Ashfield; yocto@yoctoproject.org
> >>>> Subject: RE: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
> >>>>
> >>>> Hi,
> >>>> I still get the same error below after changing the kern-tools-native_git.bb file.
> >>>>
> >>>> SRCREV ?= "364437739c45a5e771d1f7b3ac73c35f1328fd97"
> >>>> PR = r11
> >>>>
> >>>>
> >>>> ERROR: Function 'do_kernel_configme' failed (see /usr/local/src/yocto_1_1/poky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.27942 for further information)
> >>>> ERROR: Logfile of failure stored in: /usr/local/src/yocto_1_1/poky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.27942
> >>>> Log data follows:
> >>>> | [INFO] doing kernel configme
> >>>> | [INFO] Branch yocto/standard/preempt-rt/base used by common-pc-preempt-rt.scc
> >>>> | [INFO] collecting configs in ./meta/meta-series
> >>>> | mv: cannot stat `/usr/local/src/yocto_1_1/poky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-rt-build/.tmp.config*': No such file or directory
> >>>> | creation of pre-processed config data failed
> >>>> | config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.scc) failed
> >>>> | ERROR: Function 'do_kernel_configme' failed (see /usr/local/src/yocto_1_1/poky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.27942 for further information)
> >>>> NOTE: package linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1: task do_kernel_configme: Failed
> >>>> NOTE: package gcc-cross-4.6.1+svnr175454-r10: task do_configure: Started
> >>>> ERROR: Task 716 (/usr/local/src/yocto_1_1/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb, do_kernel_configme) failed with exit code '1'
> >>>>
> >>>> Thanks
> >>>> Kishore.
> >>>>
> >>>> -----Original Message-----
> >>>> From: Hart, Darren
> >>>> Sent: Friday, December 16, 2011 3:08 PM
> >>>> To: Bodke, Kishore K
> >>>> Cc: Bruce Ashfield; yocto@yoctoproject.org
> >>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
> >>>>
> >>>> On 12/16/2011 02:12 PM, Bodke, Kishore K wrote:
> >>>>> I am building core-image-sato.
> >>>>> I have not changed any boot parameters.
> >>>>> Everything was default settings.
> >>>>
> >>>> By image format I mean are you using a live image?
> >>>> core-image-sato-*.hddimg or are you formatting a disk and copying over
> >>>> contents of the rootfs? The kernel parameters are specified in
> >>>> meta-intel and meta-romley.
> >>>>
> >>>> My guess is something has gone wrong in the kernel config and the kernel
> >>>> you built is missing things like vfat, ramfs support, etc.
> >>>>
> >>>> Can you make your .config available as well as the various log.do* from
> >>>> the linux-yocto temp directory and the meta-series from the linux source
> >>>> directory?
> >>>>
> >>>> --
> >>>> Darren
> >>>>
> >>>>>
> >>>>> Thanks
> >>>>> Kishore.
> >>>>>
> >>>>> -----Original Message-----
> >>>>> From: Hart, Darren
> >>>>> Sent: Friday, December 16, 2011 12:18 PM
> >>>>> To: Bodke, Kishore K
> >>>>> Cc: Bruce Ashfield; yocto@yoctoproject.org
> >>>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
> >>>>>
> >>>>> On 12/16/2011 11:39 AM, Bodke, Kishore K wrote:
> >>>>>> I will try out with the Bruce's patch.
> >>>>>>
> >>>>>> It stops after these below boot messages.
> >>>>>>
> >>>>>> Failed to execute /init
> >>>>>> Kernel panic - Not syncing: No init found. Try passing init=option to kernel
> >>>>>> Pid: 1 comm: swapper not tainited. 3.0.12-rt30-yocto-standard-prempt-rt+
> >>>>>
> >>>>> Sounds like it isn't mounting the root filesystem. What image format are
> >>>>> you using? What filesystem are you using for your rootfs? What are the
> >>>>> kernel parameters you pass at boot?
> >>>>>
> >>>>> --
> >>>>> Darren
> >>>>>
> >>>>>>
> >>>>>> Thanks
> >>>>>> Kishore.
> >>>>>> -----Original Message-----
> >>>>>> From: Hart, Darren
> >>>>>> Sent: Friday, December 16, 2011 11:33 AM
> >>>>>> To: Bodke, Kishore K
> >>>>>> Cc: Bruce Ashfield; yocto@yoctoproject.org
> >>>>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
> >>>>>>
> >>>>>> On 12/16/2011 11:27 AM, Bodke, Kishore K wrote:
> >>>>>>> Hi,
> >>>>>>> Just wanted to know if this got fixed?
> >>>>>>
> >>>>>> Bruce sent a patch to test, it's included in the history below. Did you
> >>>>>> try this without the cherry-picked patches to see if it works for you?
> >>>>>> If not, could you please do so and let Bruce know? If it works for you,
> >>>>>> we can push it into the meta-kernel-dev layer.
> >>>>>>
> >>>>>>> Everytime I give the build I have to cerry-pick the patches.
> >>>>>>> But even after applying the patches, the build went through, but the image does not boot.
> >>>>>>
> >>>>>> Can you provide some more details here? Does the bootloader come up?
> >>>>>> Does the kernel output anything? What is the last thing displayed?
> >>>>>>
> >>>>>> --
> >>>>>> Darren
> >>>>>>
> >>>>>>>
> >>>>>>> Thanks
> >>>>>>> Kishore.
> >>>>>>>
> >>>>>>> -----Original Message-----
> >>>>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> >>>>>>> Sent: Wednesday, December 14, 2011 6:07 AM
> >>>>>>> To: Hart, Darren
> >>>>>>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
> >>>>>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
> >>>>>>>
> >>>>>>> On 11-12-14 12:47 AM, Darren Hart wrote:
> >>>>>>>> On 12/13/2011 09:13 PM, Bruce Ashfield wrote:
> >>>>>>>>> On 11-12-13 6:26 PM, Bodke, Kishore K wrote:
> >>>>>>>>>> Yes.
> >>>>>>>>>> Its with poky Edison with poky-extras/meta-kernel-dev master branch I am using for my build.
> >>>>>>>>>
> >>>>>>>>> This is likely the problem. I use and test meta-kernel-dev everyday,
> >>>>>>>>> but that's always against master. I keep them in lockstep, since
> >>>>>>>>> meta-kernel-dev never really 'releases'.
> >>>>>>>>>
> >>>>>>>>> That being said, we can figure out a combination that works. The
> >>>>>>>>> best thing to do, would be to remove the kern-tools-native bbappend
> >>>>>>>>> from your meta-kernel-dev layer (for now). You don't want the new
> >>>>>>>>> tools.
> >>>>>>>>
> >>>>>>>> That won't work.  He is using the latest kernel which has needs
> >>>>>>>> merge_config.sh - as I ran into myself last week. I had Kishore
> >>>>>>>
> >>>>>>> There's still a way it will work, merge_config.sh is only ever
> >>>>>>> called from the kern-tools. There shouldn't be any non kern-tools
> >>>>>>> calls to merge_config.sh, the error:
> >>>>>>>
> >>>>>>>     mv: cannot stat
> >>>>>>>     `/usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-
> >>>>>>> poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-rt-build/.tmp.config*':
> >>>>>>>     No such file or directory
> >>>>>>>
> >>>>>>> Could only come from using the latest configme script from the
> >>>>>>> kern-tools. So *something* newer than any SRCREV found on the
> >>>>>>> edison branch is being used there.
> >>>>>>>
> >>>>>>>> cherry-pick the last two patches to kern-tools-native from master and
> >>>>>>>> that got things going for him. So again, the question is: Why didn't the
> >>>>>>>> kern-tools-native bbappend do that for him?
> >>>>>>>
> >>>>>>> Aha. I may know the answer to that. The meta variant of the recipe looks
> >>>>>>> to assign the SRCREV in a way that the bbappend can't change. I did
> >>>>>>> this change during the day, but completely forgot when sending the
> >>>>>>> email. Can someone try this to see if it's the fix ?
> >>>>>>>
> >>>>>>> index fb66211..bc9a6b9 100644
> >>>>>>> --- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> >>>>>>> +++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> >>>>>>> @@ -4,8 +4,8 @@ LIC_FILES_CHKSUM =
> >>>>>>> "file://git/tools/kgit;beginline=5;endline=9;md5=e2bf4415f3d8
> >>>>>>>
> >>>>>>>     DEPENDS = "git-native guilt-native"
> >>>>>>>
> >>>>>>> -SRCREV = "eb3ed64cea80d23ffb28dfeaeb02cdfe3fb29340"
> >>>>>>> -PR = r12
> >>>>>>> +SRCREV ?= "eb3ed64cea80d23ffb28dfeaeb02cdfe3fb29340"
> >>>>>>> +PR = r13
> >>>>>>>     PV = "0.1+git${SRCPV}"
> >>>>>>>
> >>>>>>> .. and Then I'll do a pull request.
> >>>>>>>
> >>>>>>> But as to why it's happening, I have no idea, autorev should pick it
> >>>>>>> up. That's down in the guts of bitbake, and for some reason the old
> >>>>>>> downloaded variant doesn't seem to be updating.
> >>>>>>>
> >>>>>>> Bruce
> >>>>>>>
> >>>>>>>>
> >>>>>>>> --
> >>>>>>>> Darren
> >>>>>>>>
> >>>>>>>>>
> >>>>>>>>> If that doesn't fix the problem, look for merge_log.txt in your
> >>>>>>>>> linux/meta/cfg/ directory structure and that will tell us exactly
> >>>>>>>>> what is going wrong.
> >>>>>>>>>
> >>>>>>>>> Bruce
> >>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> Thanks
> >>>>>>>>>> Kishore.
> >>>>>>>>>>
> >>>>>>>>>> -----Original Message-----
> >>>>>>>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> >>>>>>>>>> Sent: Tuesday, December 13, 2011 3:25 PM
> >>>>>>>>>> To: Bodke, Kishore K
> >>>>>>>>>> Cc: Hart, Darren; yocto@yoctoproject.org
> >>>>>>>>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
> >>>>>>>>>>
> >>>>>>>>>> On 11-12-13 6:17 PM, Bodke, Kishore K wrote:
> >>>>>>>>>>> Yeah.  I am using local bare clone for the linux-yocto-3.0 and using poky-extras/meta-kernel-dev in my bblayers.conf for my build.
> >>>>>>>>>>> Sorry for not mentioning this before.
> >>>>>>>>>>
> >>>>>>>>>> Aha. This is completely different then. As Darren mentioned, the bbappend
> >>>>>>>>>> should be getting the latest tools, I can look into that.
> >>>>>>>>>>
> >>>>>>>>>> But to be clear, is this an edison branch + meta-kernel-dev ? That
> >>>>>>>>>> will cause problems at some point (and I'm not sure if that is what
> >>>>>>>>>> is happening here yet), since recipe updates to use the new tools
> >>>>>>>>>> wouldn't be reflected in that branch while you are fed the new tools.
> >>>>>>>>>>
> >>>>>>>>>> Cheers,
> >>>>>>>>>>
> >>>>>>>>>> Bruce
> >>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> Thanks
> >>>>>>>>>>> Kishore.
> >>>>>>>>>>>
> >>>>>>>>>>> -----Original Message-----
> >>>>>>>>>>> From: Hart, Darren
> >>>>>>>>>>> Sent: Tuesday, December 13, 2011 3:15 PM
> >>>>>>>>>>> To: Bruce Ashfield
> >>>>>>>>>>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
> >>>>>>>>>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
> >>>>>>>>>>>
> >>>>>>>>>>> On 12/13/2011 03:05 PM, Bruce Ashfield wrote:
> >>>>>>>>>>>> On 11-12-13 5:50 PM, Bodke, Kishore K wrote:
> >>>>>>>>>>>>> Hi,
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> I get failure for the linux-yoctort_3.0.bb file for the poky Edison branch.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Darren told that it was fixed and merged to master.
> >>>>>>>>>>>>
> >>>>>>>>>>>> This shouldn't be happening on edison at all. The changes to the
> >>>>>>>>>>>> kernel recipes/tools to use the merge_config.sh should never have
> >>>>>>>>>>>> showed up in edison. That's yocto 1.2 development work.
> >>>>>>>>>>>>
> >>>>>>>>>>>> So the fix for this is to find out what leaked into edison and
> >>>>>>>>>>>> revert it. I'll have a look at that later tonight.
> >>>>>>>>>>>
> >>>>>>>>>>> No no. Kishore is using meta-kernel-dev. As such he is getting the
> >>>>>>>>>>> latest linux-yocto repository and SRC_REVs. The question, I think, is
> >>>>>>>>>>> really why isn't the kern-tools-native bbappend from meta-kernel-dev
> >>>>>>>>>>> doing this for him.
> >>>>>>>>>>>
> >>>>>>>>>>> --
> >>>>>>>>>>> Darren
> >>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>> Bruce
> >>>>>>>>>>>>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> I wanted to bring to the list about this error message.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> ERROR: Function 'do_kernel_configme' failed (see
> >>>>>>>>>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502
> >>>>>>>>>>>>> for further information)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> ERROR: Logfile of failure stored in:
> >>>>>>>>>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Log data follows:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> | [INFO] doing kernel configme
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> | [INFO] Branch yocto/standard/preempt-rt/base used by
> >>>>>>>>>>>>> common-pc-preempt-rt.scc
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> | [INFO] collecting configs in ./meta/meta-series
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> | mv: cannot stat
> >>>>>>>>>>>>> `/usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-rt-build/.tmp.config*':
> >>>>>>>>>>>>> No such file or directory
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> | creation of pre-processed config data failed
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> | config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.scc) failed
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> | ERROR: Function 'do_kernel_configme' failed (see
> >>>>>>>>>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502
> >>>>>>>>>>>>> for further information)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package
> >>>>>>>>>>>>> linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1:
> >>>>>>>>>>>>> task do_kernel_configme: Failed
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> ERROR: Task 716
> >>>>>>>>>>>>> (/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb,
> >>>>>>>>>>>>> do_kernel_configme) failed with exit code '1'
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Waiting for 7 active tasks to finish:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 4: bison-native-2.5-r1 do_configure (pid 20206)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 6: opensp-native-1.5-r2 do_configure (pid 20213)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Waiting for 6 active tasks to finish:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 4: bison-native-2.5-r1 do_configure (pid 20206)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package opensp-native-1.5-r2: task do_configure: Succeeded
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Waiting for 5 active tasks to finish:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 3: bison-native-2.5-r1 do_configure (pid 20206)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 4: dbus-native-1.4.12-r0 do_configure (pid 20209)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package font-util-native-1.2.0-r2.1: task do_configure: Succeeded
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Waiting for 4 active tasks to finish:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 3: bison-native-2.5-r1 do_configure (pid 20206)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package dbus-native-1.4.12-r0: task do_configure: Succeeded
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Waiting for 3 active tasks to finish:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 1: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 2: bison-native-2.5-r1 do_configure (pid 20206)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package acl-native-2.2.51-r2: task do_configure: Succeeded
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Waiting for 2 active tasks to finish:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 1: bison-native-2.5-r1 do_configure (pid 20206)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package kbproto-native-1_1.0.5-r0: task do_configure: Succeeded
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Waiting for 1 active tasks to finish:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> 0: bison-native-2.5-r1 do_configure (pid 20206)
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package elfutils-native-0.148-r3: task do_install: Succeeded
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> NOTE: package bison-native-2.5-r1: task do_configure: Succeeded
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> ERROR:
> >>>>>>>>>>>>> '/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb'
> >>>>>>>>>>>>> failed
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Thanks
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Kishore.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>
> >>>>>>
> >>>>>
> >>>>>
> >>>>
> >>>>
> >>>> --
> >>>> Darren Hart
> >>>> Intel Open Source Technology Center
> >>>> Yocto Project - Linux Kernel
> >>>
> >>>
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> 



