Return-Path: <denis@denix.org>
Received: from vms173021pub.verizon.net (vms173021pub.verizon.net
	[206.46.173.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31000E00C1E
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 17:14:14 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173021.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N4700HIB9YZG540@vms173021.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 17 Apr 2014 19:13:58 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 6B0F52036B; Thu,
	17 Apr 2014 20:13:44 -0400 (EDT)
Date: Thu, 17 Apr 2014 20:13:44 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Khem Raj <raj.khem@gmail.com>
Message-id: <20140418001344.GM11339@denix.org>
References: <3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org> <20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <534DBB9E.2030608@mlbassoc.com>
	<20140417191042.GK11339@denix.org> <5350483C.6060400@ti.com>
	<CAMKF1so9KGnhQKiHvXu-Uh2zJDyYZs1psM6QQAP-y_Uzp53Ytg@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAMKF1so9KGnhQKiHvXu-Uh2zJDyYZs1psM6QQAP-y_Uzp53Ytg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBB doesn't boot
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Apr 2014 00:14:17 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, Apr 17, 2014 at 04:25:51PM -0700, Khem Raj wrote:
> On Thu, Apr 17, 2014 at 2:31 PM, William Mills <wmills@ti.com> wrote:
> > On 04/17/2014 03:10 PM, Denys Dmytriyenko wrote:
> >>
> >> On Tue, Apr 15, 2014 at 05:07:10PM -0600, Gary Thomas wrote:
> >>>
> >>> On 2014-04-15 13:43, Denys Dmytriyenko wrote:
> >>>>
> >>>> On Tue, Apr 15, 2014 at 01:41:12PM -0400, Denys Dmytriyenko wrote:
> >>>>>>>>>
> >>>>>>>>> Some other things I tried with a "long" TMPDIR path (note that it's
> >>>>>>>>> the
> >>>>>>>>> TMPDIR path that makes the difference - in my tests I've been using
> >>>>>>>>> /home/paul/poky/build2/much/longer/path/to/tmp). None of this
> >>>>>>>>> helped:
> >>>>>>>>>
> >>>>>>>>> * kernel built with gcc 4.7.2 and binutils 2.23.2
> >>>>>>>>> * u-boot built with gcc 4.7.2 and binutils 2.23.2
> >>>>>>>>> * u-boot from
> >>>>>>>>> http://downloads.angstrom-distribution.org/demo/beaglebone/
> >>>>>>>>> * earlyprintk and CONFIG_DEBUG_LL - no additional output printed
> >>>>>>>>>
> >>>>>>>>> I think we're now at the point where we'd benefit from someone with
> >>>>>>>>> better
> >>>>>>>>> knowledge debugging the issue.
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> Ok, should we expand the search area? Since this is supposed to be
> >>>>>>>> vanilla
> >>>>>>>> 3.14 kernel, can we try other platforms and see if they are
> >>>>>>>> similarly
> >>>>>>>> affected? I'll try pinging our kernel guys for any ideas...
> >>>>>>>
> >>>>>>>
> >>>>>>> As far as I know it has only been observed with beaglebone (both
> >>>>>>> white and
> >>>>>>> black, if it makes a difference). FWIW, qemuarm images from the
> >>>>>>> autobuilder
> >>>>>>> boot just fine, and apparently the same is true of edgerouter
> >>>>>>> (different
> >>>>>>> architecture but also uses u-boot).
> >>>>>>
> >>>>>>
> >>>>>> But do those other platforms use uImage or zImage?
> >>>>
> >>>>
> >>>> I don't yet know what is going on, but building in the same directory
> >>>> with
> >>>> sources (B = S) makes it work regarless of the path length:
> >>>>
> >>>>
> >>>> /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111/22222222222222222222222222222222222222222222222222222222222222222222/3333333333333333333333333333333333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
> >>>>
> >>>> So, I just commented out setting kernel-specific B in linux-yocto.inc
> >>>> and any
> >>>> kernel now boots with long path:
> >>>>
> >>>> #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
> >>>>
> >>>> I'm copying Richard and Bruce directly to see if they may have a quick
> >>>> insight
> >>>> and/or accept it as a workaround for the release. I'll keep digging
> >>>> further,
> >>>> but if anyone cares to verify the above workaround works for them, I
> >>>> would
> >>>> appreciate. Thanks!
> >>>>
> >>>
> >>> Verified - I rebuilt the kernel in a working tree with a longer
> >>> path (one in fact that had failed before) and it boots fine.
> >>>
> >>> Wonder what ${B} != ${S} is doing wacky...?
> >>
> >>
> >> Gary, et al,
> >>
> >> I've just submitted a patch to oe-core and yocto MLs that fixes this issue
> >> -
> >> could you please test it in your setup and confirm? Thanks!
> >>
> >
> > I updated Stefan's bug w/ more explanation.
> > I verified that Stefan's uImage-bad failed for me and then added the
> > following to uEnv.txt:
> > fdtaddr=0x88000000
> 
> hmmm so it seems kernel size grew enough to overwrite the area where
> uboot would put divice tree ?

Exactly! The overall kernel size was very close to the limit of previous space 
allocation in U-boot and enabling another feature or growing the build path a 
bit would overflow into and corrupt the device tree.


> has happened to me on ppc with kernel+initramfs where initramfs kept growing

I was told no other platforms were affected, including qemuarm! :) Yeah, I 
know, it can happen to anyone, even though by default it works fine...


> > uImage-bad (and uImage-good) worked w/ the above change to uEnv.txt.
> > Denys' patch fixes all the defaults in u-boot so that no uEnv.txt change is
> > needed.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 

