Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16F39E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:03:18 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2012 09:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132433999"
Received: from unknown (HELO [10.255.15.122]) ([10.255.15.122])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2012 09:03:17 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F50F43C.7010307@linux.intel.com>
References: <cover.1330663414.git.tom.zanussi@intel.com>
	<4F50F43C.7010307@linux.intel.com>
Date: Fri, 02 Mar 2012 11:02:50 -0600
Message-ID: <1330707770.2319.64.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/8] Yocto BSP tools
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
X-List-Received-Date: Fri, 02 Mar 2012 17:03:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-02 at 08:24 -0800, Darren Hart wrote:
> 
> On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > This patchset implements the 'yocto-bsp' and 'yocto-kernel' BSP tools
> > previously described in some detail in this RFC posting:
> > 
> > https://lists.yoctoproject.org/pipermail/yocto/2011-December/006111.html
> > 
> > With the functionality implemented by this patchset, you can:
> > 
> > - create a new Yocto BSP for any architecture supported Yocto, as well
> >   as qemu versions of the same.  The default mode of operation when
> >   invoked from the command-line is to prompt the user for information
> >   needed to generate the BSP.  For the current set of BSPs, the user
> >   is prompted for various important parameters such as which kernel to
> >   use, which branch of that kernel to use (or re-use), whether or not
> >   to use X, and if so, which drivers to use, whether to turn on SMP,
> >   whether the BSP has a keyboard, touchscreen, etc.
> > 
> >   There's also an option (-i) that allows all the necessary
> >   information to be supplied directly as a JSON object instead, which
> >   allows the built-in prompting to be bypassed.  This is mainly for
> >   use by developers of alternate UIs, such as the ADT integration that
> >   should now be possible with what's provided here.
> > 
> >   (available via the 'yocto-bsp create' command)
> 
> This -i approach is adequate for an initial pass. However, a python
> module API would be preferable. However, if the ADT integration is
> written in java.... perhaps -i is the best way as I'm not sure if any of
> the Python bindings for Java (JPI, JPE, ...) are robust enough for our use.
> 

Agreed - this first pass as far as the input I/O was mainly to enable
the ADT developers to start integrating now, and I believe they're
starting out using the command-line versions.  This can easily be
changed to something more appropriate, but I'll wait on actual need to
make those changes.

> > 
> > - list the architectures available for BSP generation (using the
> >   'yocto-bsp list karch' command).  You can also list the properties
> >   and possible values for those properties for all the input items
> >   needed for a given architecture in order to create a bsp.  The
> >   latter is mainly useful for developers of alternate UIs.  See the
> >   documention in the built-in help system for details of the extensive
> >   data displayed by this command.
> > 
> >   (available via the 'yocto-bsp list' command)
> > 
> > - add and remove kernel patches to/from the BSP, as well as list the
> >   kernel patches attached to the active kernel recipe for the BSP.
> > 
> >   (available via the 'yocto-kernel patch add/rm/list' commands)
> > 
> > - add and remove kernel config items to/from the BSP, as well as list
> >   the user-defined config items attached to the active kernel recipe
> >   for the BSP.
> > 
> >   (available via the 'yocto-kernel config add/rm/list' commands)
> > 
> > The built-in help system that makes it easy to drill down at any time
> > and remind oneself of the syntax required for any specific command:
> > 
> > Simply entering the name of the command, or the command along with
> > 'help' will display a list of the available sub-commands. For example:
> > 
> > $ yocto-bsp
> > $ yocto-bsp help
> > 
> > Usage:
> > 
> >  Create a customized Yocto BSP layer.
> > 
> >  usage: yocto-bsp [--version] [--help] COMMAND [ARGS]
> > 
> >  The most commonly used 'yocto-bsp' commands are:
> >     create	      Create a new Yocto BSP
> >     list	      List available values for options and BSP properties
> > 
> >  See 'yocto-bsp help COMMAND' for more information on a specific command.
> > 
> > 
> > Options:
> >   --version    show program's version number and exit
> >   -h, --help   show this help message and exit
> >   -D, --debug  output debug information
> > 
> > 
> > Similarly, entering just the name of the subcommand will show the
> > detailed usage for that command:
> > 
> > $ yocto-bsp create
> > 
> > Usage:
> > 
> >  Create a new Yocto BSP
> > 
> >  usage: yocto-bsp create <bsp-name> <karch> [-o <DIRNAME> | --outdir <DIRNAME>]
> > 	    [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
> > 
> >  This command creates a Yocto BSP based on the specified parameters.
> >  The new BSP will be a new Yocto BSP layer contained by default within
> >  the top-level directory specified as 'meta-bsp-name'.	The -o option
> >  can be used to place the BSP layer in a directory with a different
> >  name and location.
> > 
> >  ...
> > 
> > 
> > For any subcommand, you can also use the word 'help' just before the
> > subcommand to get more extensive documentation on the subcommand:
> > 
> > $ yocto-bsp help create
> > 
> 
> I believe it is more typical to have the "help" argument after the command:
> 
> git branch -h, for example (since you used git-like in your
> description). Not a big deal, but some might trip over this.
> 

Since it's advertised as a git-like tool, it's behaves as expected ;-)

$ git

See 'git help COMMAND' for more information on a specific command.

> > NAME
> >     yocto-bsp create - Create a new Yocto BSP
> > 
> > SYNOPSIS
> >     yocto-bsp create <bsp-name> <karch> [-o <DIRNAME> | --outdir <DIRNAME>]
> > 	[-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
> > 
> > DESCRIPTION
> >     This command creates a Yocto BSP based on the specified
> >     parameters.  The new BSP will be a new Yocto BSP layer contained
> >     by default within the top-level directory specified as
> >     'meta-bsp-name'.  The -o option can be used to place the BSP layer
> >     in a directory with a different name and location.
> > 
> >     The value of the 'karch' parameter determines the set of files
> >     that will be generated for the BSP, along with the specific set of
> >     'properties' that will be used to fill out the BSP-specific
> >     portions of the BSP.
> > 
> >     ...
> > 
> >     NOTE: Once created, you should add your new layer to your
> >     bblayers.conf file in order for it to be subsquently seen and
> >     modified by the yocto-kernel tool.
> > 
> >     NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
> >     presence of the of the meta-intel layer, so you should also have a
> >     meta-intel layer present and added to your bblayers.conf as well.
> > 
> > 
> > So, armed simply with the knowledge that there are two Yocto BSP
> > commands, 'yocto-bsp' and 'yocto-kernel', with the help of the help
> > system and what's implemented by those commands, you should be able to
> > create a BSP from scratch and do basic configuration and maintenance
> > of the kernel without ever seeing a Yocto metadata file.
> > 
> > What's not implemented, or what still needs work:
> > 
> > - No support yet for kernel features.
> > - The 'publish' mechanism isn't yet implemented; currently this is all
> >   done in 'recipe-space'.
> > - The template data (the BSP-specific files in the bsp/substrate dir) for
> >   some specific architectures is untested and probably woefully
> >   incomplete or too specific (I didn't test what I don't have hardware
> >   for)
> > - I need to document the template 'language' in order to make that
> >   easier.  Conceptually, it should be relatively easy to understand by
> >   looking at the other template files - basically they're just
> >   straight Yocto metadata files marked up with variable replacement
> >   tags {{=xxx}} and inline Python in any other tag.
> > 
> > I have tested all the commands for the entire workflow - BSP creation,
> > kernel patch and configuration commands - for the following
> > architectures, and have successfully built and booted the generated
> > and modified BSPs for each:
> > 
> > - qemuarm
> > - qemux86
> > - x86
> > - x86_64
> > 
> > Aside from any other bugs, some work probably still needs to be done
> > for some of the other non-qemu architectures in order to get them to a
> > point where BSPs generated for them would stand a reasonable chance of
> > booting as do the machines tested above.
> > 
> > My plans are to implement the missing functionality as follow-on
> > patches shortly.  In the meantime, I think the tools should be
> > functional enough to allow people to accomplish the basic tasks
> > related to BSP creation and kernel configuration for a Yocto BSP.
> > 
> > To provide a starting point for using the tools and as a quick
> > illustration of their basic capabilities, I've captured the output of
> > a couple different sessions below.
> > 
> > The first thing you need to do is source the build environment just as
> > you would when building an image.  Because the tools are contained in
> > the /scripts directory, doing so makes them directly available:
> > 
> > $ source oe-init-build-env
> > 
> > Once you've done that, you can invoke the 'yocto-bsp create' command
> > to create the BSP.  The example below uses 'myarm' as the machine
> > name, and tells it to use the 'qemu' architecture (the specific qemu
> > machine architecture to use will be prompte for).  You can use the
> > 'yocto-bsp list karch' command to list the aviailable architectures
> > for BSP creation:
> > 
> > $ yocto-bsp list karch
> > Architectures available:
> >     arm
> >     powerpc
> >     i386
> >     mips
> >     x86_64
> >     qemu
> > 
> > The 'yocto-bsp create' command for the qemu architecture will display
> > the following prompts along the way to gather the input required for
> > BSP generation.  Each prompt asks for input, but has a default value
> > [in brackets].  If you press 'enter' (or any invalid value), the
> > default value will automatically be used.
> > 
> > In the case of the qemu architecture, the first prompt asks which
> > emulated architecture to use.  It then asks if the default (3.2) is
> > ok, and we press enter, essentially telling it 'yes'.  Once we've
> > selected the kernel, the prompt asks whether we need to have a new
> > branch in the Yocto kernel git repository created for this BSP, which
> > is where any patches we add can later be pushed (once we have publish
> > functionality).  For now, the patches and configuration live only in
> > recipe-space, but we generate different code for later use in that
> > regard depending on the answer.  We're then given the opportunity to
> > select a particular machine branch to use (or re-use if we elected not
> > to create a new branch).  Because we're generating an arm BSP, we
> > choose #3 at that prompt to select the arm-versatile branch.  The rest
> > of the prompts are routine, and once all the questions have been
> > completed, the BSP is generated along with a message telling you so.
> > 
> > $ yocto-bsp create myarm qemu
> > Which qemu architecture would you like to use? [default: x86]
> > 	1) common 32-bit x86
> > 	2) common 64-bit x86
> > 	3) common 32-bit ARM
> > 	4) common 32-bit PowerPC
> > 	5) common 32-bit MIPS
> > 3
> > Would you like to use the default (3.2) kernel? (Y/n)
> 
> 
> You mentioned default value being in [] square brackets. Here it appears
> to be the Capital Y..
> 
> > Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [Y/n]
> 
> And here capital again, but in square brackets. This should be made
> consistent.
> 

Definitely, the boolean inputs missed that...

> > Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.2...
> > Please choose a machine branch to base this BSP on => [default: standard/default/common-pc]
> 
> Hrm.... I think I'd prefer to see the default be "standard/base" which
> includes all our patches that go into every BSP, but does not impose and
> configuration on the BSP.
> 

This is only for the qemu architecture - the other architectures do use
standard base.  The defaults can be different per-architecture and here
are.

> Perhaps your thinking is that making the default include some basic
> hardware support new users will have less trouble? If they select
> arch=ARM, is the default still standard/default/common-pc? If so, I
> think the best fix is moving to something common to all architectures,
> "standard/base".
> 

You're right, currently for the qemu architecture it doesn't choose a
different default for a different qemu architecture, but it should.  The
'real' architectures do use standard/base though (or can be whatever
they need to be, it's all easily modifiable.)

And, yeah, the goal so far has been to give the user something to start
with that stands a reasonable chance of booting.  That may mean some
things over and above the absolute minimum, which we could also do
instead, but then it may limit out-of-box usefulness and user
gratification.

> > 	1) base
> > 	2) standard/base
> > 	3) standard/default/arm-versatile-926ejs
> > 	4) standard/default/base
> > 	5) standard/default/beagleboard
> > 	6) standard/default/cedartrail
> > 	7) standard/default/common-pc-64/base
> > 	8) standard/default/common-pc-64/jasperforest
> > 	9) standard/default/common-pc-64/romley
> > 	10) standard/default/common-pc-64/sugarbay
> > 	11) standard/default/common-pc/atom-pc
> > 	12) standard/default/common-pc/base
> > 	13) standard/default/crownbay
> > 	14) standard/default/emenlow
> > 	15) standard/default/fishriver
> > 	16) standard/default/fri2
> > 	17) standard/default/fsl-mpc8315e-rdb
> > 	18) standard/default/mti-malta32-be
> > 	19) standard/default/mti-malta32-le
> > 	20) standard/default/preempt-rt
> > 	21) standard/default/qemu-ppc32
> > 	22) standard/default/routerstationpro
> > 	23) standard/preempt-rt/base
> > 	24) standard/preempt-rt/qemu-ppc32
> > 	25) standard/preempt-rt/routerstationpro
> > 	26) standard/tiny
> > 3
> > Do you need SMP support? (Y/n)
> > Does your BSP have a touchscreen? (y/N)
> > Does your BSP have a keyboard? (Y/n)
> 
> Same default consistency comments.
> 
> > New qemu BSP created in meta-myarm
> > 
> > Now that we have our BSP created, we need to add it to our
> > bblayers.conf.  This of course is required in order to build the BSP,
> > but it's also required in order for the 'yocto-kernel' tool to be able
> > to find the layer and other metadata it needs to operate on.
> > 
> > $ emacs -nw conf/bblayers.conf
> > Add the BSP layer to e.g. BBLAYERS
> > /home/trz/bsptest/build/meta-myarm \
> > 
> > We can now use the 'yocto-kernel' command to add patches and config
> > items to the BSP's kernel.
> > 
> > First, let's see what's available via in 'yocto-kernel' command:
> > 
> > $ yocto-kernel
> > Usage:
> > 
> >  Modify and list Yocto BSP kernel config items and patches.
> > 
> >  usage: yocto-kernel [--version] [--help] COMMAND [ARGS]
> > 
> >  The most commonly used 'yocto-kernel' commands are:
> >    config list	     List the modifiable set of bare kernel config options for a BSP
> >    config add	     Add or modify bare kernel config options for a BSP
> >    config rm	     Remove bare kernel config options from a BSP
> >    patch list	     List the patches associated with a BSP
> >    patch add	     Patch the Yocto kernel for a BSP
> >    patch rm	     Remove patches from a BSP
> > 
> >  See 'yocto-kernel help COMMAND' for more information on a specific command.
> > 
> > 
> > Let's add a couple patches:
> > 
> > $ yocto-kernel patch add myarm//home/trz/junk.patch
> > Added patches:
> > 	junk.patch
> > 
> > $ yocto-kernel patch add myarm /home/trz/yocto-testmod.patch
> > Added patches:
> > 	yocto-testmod.patch
> > 
> > 
> > We can list the patches associated with the kernel and verify what we
> > added:
> > 
> > $ yocto-kernel patch list myarm
> > The current set of machine-specific patches for myarm is:
> > 	1) junk.patch
> > 	2) yocto-testmod.patch
> > 
> > 
> > Let's remove one of the patches, junk.patch:
> > 
> > $ yocto-kernel patch rm myarm
> > Specify the patches to remove:
> > 	1) junk.patch
> > 	2) yocto-testmod.patch
> > 1
> > Removed patches:
> > 	junk.patch
> > 
> > 
> > Listing again shows that it's been removed:
> > 
> > $ yocto-kernel patch list myarm
> > The current set of machine-specific patches for myarm is:
> > 	1) yocto-testmod.patch
> > 
> > 
> > Similarly, we can add kernel config items by using the 'yocto-kernel
> > config add' command:
> > 
> > $ yocto-kernel config add myarm CONFIG_MISC_DEVICES=y
> > Added items:
> > 	CONFIG_MISC_DEVICES=y
> > 
> > $ yocto-kernel config add myarm KCONFIG_YOCTO_TESTMOD=y
> > Added items:
> > 	CONFIG_YOCTO_TESTMOD=y
> > 
> > 
> > Finally, we can list the config items now associated with the BSP and
> > see the config items we added along with some others.
> > 
> > $ yocto-kernel config list myarm
> > The current set of machine-specific kernel config items for myarm is:
> > 	1) CONFIG_FTRACE_SYSCALLS=y
> > 	2) CONFIG_SCHED_TRACER=y
> > 	3) CONFIG_IRQSOFF_TRACER=y
> > 	4) CONFIG_PREEMPT_TRACER=y
> > 	5) CONFIG_MISC_DEVICES=y
> > 	6) CONFIG_YOCTO_TESTMOD=y
> > 
> > 
> > Finally, as an example of a BSP for some actual hardware, below we
> > generate an i386 BSP for an Atom board.  We specify the 3.0 kernel
> > instead of the default 3.2 kernel and in this case specify that we'll
> > re-use an existing branch and take the default kernel branch
> > suggested.  We also specify that we want to use the Atom tuning and
> > that we also want support for X and in this case we'll start by using
> > the vesa driver.  Again, the remaining items are straightforward, and
> > finally, building this BSP might stand a good chance of actually
> > booting and running on the actual Atom hardware, or it may not (most
> > likely).  If it's the kernel that needs tweaking, then of course, the
> > 'yocto-kernel' command can be used to make those modifications.
> > 
> > 
> > $ yocto-bsp create myatom i386
> > Would you like to use the default (3.2) kernel? (Y/n) n
> > Please choose the kernel to use in this BSP => [default: linux-yocto_3.2]
> > 	1) linux-yocto-rt_3.2
> > 	2) linux-yocto_3.2
> > 	3) linux-yocto_3.0
> > 	4) linux-yocto-rt_3.0
> > 3
> 
> 
> Oh very cool!
> 
> > Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [Y/n] n
> 
> 
> defaults...
> 
> > Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.0...
> > Please choose a machine branch to base this BSP on => [default: yocto/standard/base]
> 
> Hrm, so this time it is yocto/standard/base.... what changed?
> 

The architecture - different architectures provide different starting
points and different defaults.

> > 	1) yocto/base
> > 	2) yocto/eg20t
> > 	3) yocto/emgd
> > 	4) yocto/emgd-1.10
> > 	5) yocto/gma500
> > 	6) yocto/pvr
> > 	7) yocto/standard/arm-versatile-926ejs
> > 	8) yocto/standard/base
> > 	9) yocto/standard/beagleboard
> > 	10) yocto/standard/cedartrail
> > 	11) yocto/standard/common-pc-64/base
> > 	12) yocto/standard/common-pc-64/jasperforest
> > 	13) yocto/standard/common-pc-64/romley
> > 	14) yocto/standard/common-pc-64/sugarbay
> > 	15) yocto/standard/common-pc/atom-pc
> > 	16) yocto/standard/common-pc/base
> > 	17) yocto/standard/crownbay
> > 	18) yocto/standard/emenlow
> > 	19) yocto/standard/fishriver
> > 	20) yocto/standard/fri2
> > 	21) yocto/standard/fsl-mpc8315e-rdb
> > 	22) yocto/standard/mti-malta32-be
> > 	23) yocto/standard/mti-malta32-le
> > 	24) yocto/standard/pandaboard
> > 	25) yocto/standard/preempt-rt/base
> > 	26) yocto/standard/preempt-rt/qemu-ppc32
> > 	27) yocto/standard/preempt-rt/routerstationpro
> > 	28) yocto/standard/qemu-ppc32
> > 	29) yocto/standard/routerstationpro
> > 
> > Do you need SMP support? (Y/n)
> > Which machine tuning would you like to use? [default: tune_core2]
> > 	1) Atom tuning optimizations
> > 	2) Core2 tuning optimizations
> > 1
> > Do you need support for X? (Y/n)
> > Please select an xserver for this machine [default: xserver_i915]
> > 	1) VESA xserver support
> > 	2) EMGD xserver support (proprietary)
> > 	3) i915 xserver support
> > 1
> > Does your BSP have a touchscreen? (y/N)
> > Does your BSP have a keyboard? (Y/n)
> > New i386 BSP created in meta-myatom
> > 
> 
> defaults...
> 

Thanks for the comments!

Tom

> --
> Darren
> 
> > 
> > Hopefully the above examples along with the documentation contained in
> > the built-in help system are enough to start becoming productive with
> > these tools; please let me know of anything lacking, bugs, etc.  Any
> > and all input appreciated,
> > 
> > Tom
> > 
> > 
> > The following changes since commit 6b6aa170d5c618cfcd016dd1de926db647f7f932:
> >   Gary Thomas (1):
> >         busybox: Restore 'date' compatability
> > 
> > are available in the git repository at:
> > 
> >   git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-tools
> >   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=tzanussi/yocto-bsp-tools
> > 
> > Tom Zanussi (8):
> >   yocto-bsp: add BSP template files
> >   yocto-bsp-tools: add bsp library
> >   yocto-bsp: add templating engine
> >   yocto-bsp: add kernel interface
> >   yocto-bsp-tools: add help/usage
> >   yocto-bsp: add some useful constants
> >   yocto-bsp: new script
> >   yocto-kernel: new script
> > 
> >  scripts/lib/bsp/__init__.py                        |   17 +
> >  scripts/lib/bsp/engine.py                          | 1336 ++++++++++++++++++++
> >  scripts/lib/bsp/help.py                            |  588 +++++++++
> >  scripts/lib/bsp/kernel.py                          |  679 ++++++++++
> >  .../target/arch/arm/conf/machine/{{=machine}}.conf |   87 ++
> >  .../{{ if xserver == \"y\": }} xorg.conf"          |   34 +
> >  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
> >  .../linux/files/{{=machine}}-non_hardware.cfg      |   30 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |  336 +++++
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |    7 +
> >  .../arm/recipes-kernel/linux/kernel-list.noinstall |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 +
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 +
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 +
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 +
> >  .../bsp/substrate/target/arch/common/COPYING.MIT   |   17 +
> >  .../lib/bsp/substrate/target/arch/common/README    |  118 ++
> >  .../substrate/target/arch/common/README.sources    |   17 +
> >  .../substrate/target/arch/common/conf/layer.conf   |   10 +
> >  .../formfactor/formfactor/{{=machine}}/machconfig  |    5 +
> >  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
> >  .../tasks/task-core-tools-profile.bbappend         |    2 +
> >  .../arch/i386/conf/machine/{{=machine}}.conf       |   44 +
> >  ...erver_choice == \"xserver_emgd\": }} xorg.conf" |   48 +
> >  ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 +
> >  ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 +
> >  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |   54 +
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |   30 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 +
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 +
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 +
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 +
> >  .../arch/mips/conf/machine/{{=machine}}.conf       |   28 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |    1 +
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |    8 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 +
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 +
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 +
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 +
> >  .../arch/powerpc/conf/machine/{{=machine}}.conf    |   53 +
> >  .../recipes-kernel/linux/files/user-config.cfg     |    4 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |  163 +++
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |   11 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 +
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 +
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 +
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 +
> >  .../arch/qemu/conf/machine/{{=machine}}.conf       |   59 +
> >  .../xserver-xf86-config/{{=machine}}/xorg.conf     |   69 +
> >  ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 +
> >  .../recipes-kernel/linux/files/user-config.cfg     |    4 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |   30 +
> >  .../linux/files/{{=machine}}-standard.scc          |   30 +
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |    6 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   32 +
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   32 +
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   34 +
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 +
> >  .../arch/x86_64/conf/machine/{{=machine}}.conf     |   29 +
> >  ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 +
> >  ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 +
> >  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |   47 +
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |   17 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 +
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 +
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 +
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 +
> >  scripts/lib/bsp/tags.py                            |   39 +
> >  scripts/yocto-bsp                                  |  131 ++
> >  scripts/yocto-kernel                               |  219 ++++
> >  87 files changed, 5445 insertions(+), 0 deletions(-)
> >  create mode 100644 scripts/lib/bsp/__init__.py
> >  create mode 100644 scripts/lib/bsp/engine.py
> >  create mode 100644 scripts/lib/bsp/help.py
> >  create mode 100644 scripts/lib/bsp/kernel.py
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/.gitignore
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/README
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/README.sources
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/binary/.gitignore
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/.gitignore
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/.gitignore
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/.gitignore
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
> >  create mode 100644 scripts/lib/bsp/tags.py
> >  create mode 100755 scripts/yocto-bsp
> >  create mode 100755 scripts/yocto-kernel
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



