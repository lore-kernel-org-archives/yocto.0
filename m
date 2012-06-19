Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9E6BE0070B
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 10:17:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jun 2012 10:17:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="155558013"
Received: from unknown (HELO [10.255.12.52]) ([10.255.12.52])
	by orsmga001.jf.intel.com with ESMTP; 19 Jun 2012 10:17:18 -0700
Message-ID: <1340126238.1618.21.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Dallas Clement <dallas.a.clement@gmail.com>
Date: Tue, 19 Jun 2012 12:17:18 -0500
In-Reply-To: <CAE9DZUQfaJMmdo9TVMNR3XjyW+UrzoQnfKcFky_HwrTZCBJKiA@mail.gmail.com>
References: <CAE9DZUTAMXWnc2hJPvVyzwWaRPR3jWvKvxKez5cw8UHktNF9Mg@mail.gmail.com>
	<CAE9DZUS1iRhOfFygpPnCCdr+NJsyjLg6_fU0xKSnpPs0JGERLg@mail.gmail.com>
	<1340118223.1618.5.camel@trz-ThinkPad-T420>
	<CAE9DZURnk3b+fXKiXBh+PvfCzYQAhism5WWvf=kV61-TmDXntg@mail.gmail.com>
	<1340119149.1618.10.camel@trz-ThinkPad-T420>
	<CAE9DZUS3Mxt5dvE1j1OKRsQwjUtMo2j8n05QCMLL6Ty_0x489Q@mail.gmail.com>
	<CAE9DZUQfaJMmdo9TVMNR3XjyW+UrzoQnfKcFky_HwrTZCBJKiA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: trouble building bsp for arm
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
X-List-Received-Date: Tue, 19 Jun 2012 17:17:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-06-19 at 10:29 -0500, Dallas Clement wrote:
> Okay, using the git poky, I was able to build the bsp.  It seems that
> the tarball version is not able to complete this step:
> 
> Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.2...
> 

OK, glad that the git poky worked for you.  I just did a download of the
denzil tarball and wasn't able to reproduce the problem, so I'm not sure
why the git update would work for you but tarball wouldn't.  There was a
fix for Yocto bug 2219 as mentioned in the denzil release notes that
would be the only difference in the yocto-bsp tool, but it doesn't sound
like that's what you hit.

Regarding master, you should note that I submitted a patch yesterday to
fix a problem with the qemu machines and X in master, Yocto bug 2559:

http://comments.gmane.org/gmane.linux.embedded.yocto.general/7087

So if you have problems with X in the generated qemu bsp image, that
should fix it (and should be pulled into poky/master soon).

Thanks,

Tom


> On Tue, Jun 19, 2012 at 10:23 AM, Dallas Clement
> <dallas.a.clement@gmail.com> wrote:
> > That's correct.  I have not been successful with "yocto-bsp create"
> > yet.  I'm trying with the git version of poky now.
> >
> > On Tue, Jun 19, 2012 at 10:19 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> >> On Tue, 2012-06-19 at 10:13 -0500, Dallas Clement wrote:
> >>> Hi Tom,
> >>>
> >>> The first thing I tried is building a minimal distro with "bitbake
> >>> core-image-minimal".  That completed successfully and I was able to
> >>> execute it with qemu.
> >>>
> >>> Then I tried to build a bsp for ARM, which failed with errors shown
> >>> earlier.  I just tried now for x86_64.  It failed too with the same
> >>> errors.
> >>>
> >>> I am using the latest poky tarball - poky-denzil-7.0.tar.bz2
> >>>
> >>
> >> OK, so what you did was successfully build a minimal image from the BSP
> >> tarball for x86-64, but that wasn't using a BSP generated from
> >> yocto-bsp, since you haven't been able to successfully generate a BSP
> >> using yocto-bsp yet.  If that's not the case please clarify, otherwise
> >> I'll try what you're doing using the denzil tarball...
> >>
> >> Tom
> >>
> >>> Thanks,
> >>>
> >>> Dallas
> >>>
> >>> On Tue, Jun 19, 2012 at 10:03 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> >>> > On Tue, 2012-06-19 at 09:37 -0500, Dallas Clement wrote:
> >>> >> Hi all,  Please bear with me as I am a newb to both yocto and building
> >>> >> bsp's.   I was able to run bitbake core-image-minimal for x86-64, just fine and
> >>> >> run it in qemu.
> >>> >>
> >>> >> Then I got gutsy and tried to build a bsp for ARM.  Didn't go so well.
> >>> >>  I must be missing something.
> >>> >>
> >>> >
> >>> > Hi,
> >>> >
> >>> > So if I read the above correctly, you were able to create a new x86-64
> >>> > bsp using yocto-bsp and build and boot the minimal image?
> >>> >
> >>> > If so, then the below should also work - at the point you are in the
> >>> > creation script, there's nothing arm-specific yet.
> >>> >
> >>> > If not, did you source oe-init-build-env first?  Or do you have some
> >>> > kind of network problem?
> >>> >
> >>> > I can't think of anything else - I just tried the same thing here and it
> >>> > worked fine.  Let me also try the same thing but using the denzil
> >>> > tarball (using git denzil branch), which is what I assume your using?
> >>> >
> >>> > Thanks,
> >>> >
> >>> > Tom
> >>> >
> >>> >> dallasc ~/development/yocto/poky-denzil-7.0] scripts/yocto-bsp create
> >>> >> marvell-armada-xp-mv78260 qemu
> >>> >> Which qemu architecture would you like to use? [default: i386]
> >>> >>        1) i386    (32-bit)
> >>> >>        2) x86_64  (64-bit)
> >>> >>        3) ARM     (32-bit)
> >>> >>        4) PowerPC (32-bit)
> >>> >>        5) MIPS    (32-bit)
> >>> >> 3
> >>> >> Would you like to use the default (3.2) kernel? (y/n) [default: y]
> >>> >> Do you need a new machine branch for this BSP (the alternative is to
> >>> >> re-use an existing branch)? [y/n] [default: y]
> >>> >> Getting branches from remote repo None...
> >>> >> Traceback (most recent call last):
> >>> >>  File "scripts/yocto-bsp", line 137, in <module>
> >>> >>    ret = main()
> >>> >>  File "scripts/yocto-bsp", line 132, in main
> >>> >>    invoke_subcommand(args, parser, yocto_bsp_help_usage, subcommands)
> >>> >>  File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/help.py",
> >>> >> line 73, in invoke_subcommand
> >>> >>    subcommands.get(args[0], subcommand_error)[0](args[1:], usage)
> >>> >>  File "scripts/yocto-bsp", line 76, in yocto_bsp_create_subcommand
> >>> >>    yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir,
> >>> >> options.codedump, options.properties_file)
> >>> >>  File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/engine.py",
> >>> >> line 1243, in yocto_bsp_create
> >>> >>    run_program_lines(program_lines, codedump)
> >>> >> SyntaxError: function specified for 'gen' property returned nothing :
> >>> >> input type:"choicelist" name:"new_kbranch"
> >>> >> gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine
> >>> >> branch to base this BSP on:" default:"standard/default"
> >>> >>
> >>> >> Can anyone recommend what I should do to get past this?
> >>> >>
> >>> >> Thanks,
> >>> >>
> >>> >> Dallas
> >>> >> _______________________________________________
> >>> >> yocto mailing list
> >>> >> yocto@yoctoproject.org
> >>> >> https://lists.yoctoproject.org/listinfo/yocto
> >>> >
> >>> >
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



