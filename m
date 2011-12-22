Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF85E00720
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 13:34:28 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Dec 2011 13:34:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="90620165"
Received: from unknown (HELO [10.255.12.82]) ([10.255.12.82])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2011 13:34:26 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4EF3902A.6060509@windriver.com>
References: <1324313709.12454.34.camel@elmorro>
	<4EF3902A.6060509@windriver.com>
Date: Thu, 22 Dec 2011 15:31:37 -0600
Message-ID: <1324589497.30886.101.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Yocto BSP and kernel usability tools
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
X-List-Received-Date: Thu, 22 Dec 2011 21:34:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-12-22 at 15:16 -0500, Bruce Ashfield wrote:
> On 11-12-19 11:55 AM, Tom Zanussi wrote:
> > Hi,
> >
> > This is what I hope to implement in the M2 timeframe.
> >
> > Any and all comments welcome...
> >
> > Thanks,
> >
> > Tom
> >
> > ---
> >
> > Getting Yocto running on a new board is often a prerequisite task to
> > the real task of interest for new users, which is creating new
> > applications designed to run on the board, or creating new
> > board-specific embedded systems.  In other words, most users just want
> > to get the hardware up and running and not have to think too much
> > about it before moving on to what they're really interested in, which
> > is the stuff running on top of it.
> >
> > While there really can't be any such thing as a magic-bullet
> > application that would do that automatically i.e. generate and
> > maintain a guaranteed-working Yocto BSP for any given piece of
> > hardware, it should at least be possible to provide a tool that would
> > generate a base BSP usable as a starting point for that, and which
> > would additionally allow the user to tweak various BSP settings,
> > including kernel configuration options and simple kernel patches.
> > Such a tool should be usable with only a minimal understanding of the
> > Yocto build system and metadata, and with no knowledge at all of
> > kernel internals or the Yocto kernel recipe bindings, or of the
> > details of the internals of yocto kernel repositories, or in fact any
> > knowledge of git or any other specific build-related tool.
> >
> > This document provides the design for such a tool.  At a high level,
> > the goal of the tool is to provide a user the means of creating a new
> > Yocto BSP from which it should be possible (assuming a perfect
> > run-time outcome, admittedly unlikely on a first pass) to submit a
> > 'pull request' for inclusion into any repo(s) that would accept an
> > 'official' Yocto BSP.  For example, the output of the tool should
> > produce metadata and kernel configuration that would be directly
> > mergeable into the meta-intel and the linux-yocto kernel repos.  The
> > tool should also allow the BSP maintainer to afterwards at any time
> > make changes to the kernel configuration and/or submit kernel patches
> > for the BSP.
> >
> > Note that although knowledge of the Yocto kernel or kernel internals
> > is not expected, the user is expected to know the basics of how to
> > deal with the linux kernel at the 'user' level, specifically
> > understanding and determining the specific kernel config options
> > needed for the user's BSP.
> >
> > Specifically, the tool will allow for the following high-level tasks,
> > which are discussed in more detail below:
> >
> > - create a new BSP from scratch from a set of user-settable parameters
> > - manage individual kernel config settings
> > - create and use groups of kernel config settings as KERNEL_FEATUREs
> > - apply patches to a BSP's machine branch
> >
> > The following capabilities are specifically not provided by the tool:
> >
> > - help in determining a 'correct' set of kernel config options to set.
> >    The tool assumes the user already knows that, either through diffs
> >    of .config files before and after using 'bitbake -c menuconfig', or
> >    some other means.
> 
> Other means could also include the output of kconf_check. I could break
> it out into something that could be iteratively run, if we think that
> would be useful.
> 

Yeah, definitely, anything to remove the guesswork as to whether a set
of options will actually make it to the final .config.  For the first
iteration I kind of wanted to avoid any UI issues like invoking
menuconfig and also wanted to avoid the extra complexity of taking
config diffs etc. but I think you're right - at minimum we should be
able to tell the user immediately if the options they're trying to use
don't make sense, and I'll make use of any easily invokable kconf check
functions that might exist for that purpose. ;-)

> >
> > - modification of the BSP metadata after BSP creation.  The tool
> >    provides an initial 'write-once' BSP-generation capability, but
> >    doesn't allow it to be read in and modified after the initial pass.
> >    The user will have to make further modifications manually.  The one
> >    exception to this is kernel features, which can be added to an
> >    already existing kernel bbappend file.
> >
> > - a guarantee or even expectation that the generated BSP will work on
> >    the actual hardware it's targeted for - it's highly unlikely the BSP
> >    will work 'out-of-the-box' and it's the developer's reponsibility to
> >    do the often hard work of figuring out what settings and/or code are
> >    actually needed to get the hardware to work as expected.  The goal
> >    of the tool is to make that job easier, not to actually do that job.
> >
> > Also, though it's not explicitly a requirement of this tool, the
> > design should be sufficiently modular to allow for its participation
> > in generic logical pipelines.  For instance, while the tool may
> > present to the user a text-based UI for gathering information, it
> > should also be able to operate without any kind of user interaction
> > and retrieve the data it needs from a file, for instance e.g.:
> >
> >   $ yocto-bsp create<  x86-input.json
> >
> > Another example that the design should not preclude would be its use
> > at the end of a bsp-import pipeline e.g.:
> >
> >   $ cat 3rdparty.bsp | 3rdparty2yocto | yocto-bsp create
> 
> Setting expectations! ;) That would be nice though.
> 

Yeah, this has actually been asked for already, so I need to make sure
it's possible, which I think it will be - in fact once the tools are in
a working state, I'll probably try something like that pretty quickly.

> >
> > The tool will initially be implemented as a set of command-line tools
> > which will essentially be thin layers on top of a modular Python API;
> > future tools may be GUI-based but would make use of the functionality
> > exposed through the same API.  There might also be an opportunity for
> > future integration into existing tools such as hob; this isn't
> > explicitly catered for in the current design, but it should be
> > possible to do that based either on the functionality provided by the
> > command-line interface or equivalently via the Python module API.
> >
> >
> > A Quick Overview
> > ----------------
> >
> > The initial set of tools will comprise 'yocto-bsp', for creating Yocto
> > BSPs, and 'yocto-kernel', for BSP and BSP-related Yocto kernel
> > maintenance tasks on existing BSPs.
> >
> > The interface and detailed description of each tool are described
> > below, and the underlying templating mechanism is described following
> > that, but it would be good for context to first try to give an overall
> > picture of how the tools were designed to work and be used together.
> >
> > The envisioned usage model is that a user would first start out by
> > creating a new BSP for a given architecture by invoking the 'yocto-bsp
> > create' command.  Choosing the architecture essentially chooses a set
> > of files that the BSP will be based on.  This set of files is a
> > combination of a set of 'common' files that all BSPs inherit and a set
> > of architecture-specific files that match the specified architecture.
> 
> I haven't read below yet, but is the use case covered for extending/cloning
> an exiting BSP ? I find this to be a common case as well.
> 

Not really.  I mean, I don't see a big problem with making a copy of an
existing BSP, doing a search and replace of the obvious things that need
fixing up for a new BSP, having it either re-use or create a new kernel
branch and fixing up the new BSP to point to either the new or existing
branch, but it wasn't the plan for this tool - doing much more than
those simple things for any given BSP out in the wild seems too
ambitious, but I may be misunderstanding the use case or obvious ways of
accommodating it...

> >
> > Neither set of files can be used unmodified on their own as simple
> > static copies of the originals in order to create a working BSP for a
> > real machine - many of those files need to be tailored for the
> > hardware using information supplied by the user.  To accomplish this
> > in an automated way, both the specific portions of the BSP files that
> > need to be filled in with user input, and the means of (optionally)
> > getting that input from the user are included as in-line annotations
> > to the BSP files themselves using a simple templating scheme based on
> > conventions used by web2py.  Essentially, in the default case, the
> > templating system is used to generate a series of text-based prompts
> > that ask the user questions about the BSP being created.  The data
> > supplied by the user is then used to fill in the missing information
> > in the BSP files.  The user can also choose to specify all the
> > information needed directly to the 'yocto-bsp create' command
> > invocation itself; the 'yocto-bsp list' command exists to provide the
> > user the list of 'properties' and enumerations of possible values for
> > those properties, which taken together represent the data items needed
> > to generate the BSP.  The user can even more directly supply the
> > information as a json object representing a serialized python
> > dictionary, which is what the templating interface uses natively to
> > represent properties and values needed for BSP generation.
> >
> > The end result is a Yocto-compliant BSP that should be directly
> > buildable by the Yocto build system.  The generated BSP is completely
> > self-contained - it includes not only the BSP metadata, but also the
> > necessary kernel components, which are normally for BSPs contained in
> > the linux-yocto repo's meta and machine branches for the BSP.  In
> > order to help make the tool more efficient for the user, the tool does
> > everything it needs to locally by initially using the linux-yocto
> > SRC_URI; once ready, the user can then migrate the kernel components
> > to an actual linux-yocto repo by using the 'yocto-kernel migrate'
> > command.  Once that's done, the user is in a position to submit both
> > the BSP metadata and the linux-yocto commits upstream.
> 
> Nice. This is the best case scenario.
> 
> >
> > Once a BSP is created, the job of 'yocto-bsp' is done (in the initial
> > version of the tools - it may have sub-commands added later that could
> > possibly manage the non-kernel aspects of a BSP) and the
> > 'yocto-kernel' command can be used going forward to maintain the
> > kernel portion of a BSP.  'yocto-kernel' allows both bare kernel
> > config items and higher-level 'kernel features' to be created, used
> > and removed, patches to be added to a BSP's machine branch, and the
> > kernel changes to a BSP migrated to a linux-yocto repo.  These
> > have typically been difficult tasks for many users; the hope is that
> > 'yocto-kernel' will make those tasks more manageable for everyone.
> >
> > The sections below describe each tool in detail.
> >
> > Following those sections is a detailed description of the templating
> > mechanism, useful for anyone who needs to create templates for
> > creating new BSPs using the 'yocto-bsp create' tool.
> >
> >
> > The top-level bsp-creation tool, 'yocto-bsp'
> > ============================================
> >
> > All of the functionality of the Yocto bsp-creation tool is available
> > via the single 'yocto-bsp' command.  Access to the specific functions
> > provided by the tool is accomplished by specifying sub-commands to the
> > main 'yocto-bsp' command.  The design of the command-line interface is
> > based on similar interfaces provided by git and perf, which is
> > familiar to many users and is easily extensible.
> >
> > Usage help is always available for the command itself as well as for
> > all sub-commands.  Executing the top-level command displays a list of
> > the available sub-commands, with descriptions:
> >
> >   $ yocto-bsp
> >
> >   usage: yocto-bsp [--version] [--help] COMMAND [ARGS]
> >
> >   The most commonly used 'yocto-bsp' commands are:
> >     create            Create a new Yocto BSP
> >     list              List available values for options and BSP properties
> >
> >   See 'yocto-bsp help COMMAND' for more information on a specific command.
> >
> >
> > 'yocto-bsp create' - Create a new Yocto BSP
> > -------------------------------------------
> >
> > NAME
> >      yocto-bsp-create - Create a new Yocto BSP
> >
> > SYNOPSIS
> >      yocto-bsp create<bsp-name>  <karch>  <kmachine>
> >          [--property<NAME:VAL>  | -p<NAME:VAL>]
> >
> > DESCRIPTION
> >      This command creates a Yocto BSP based on the specified
> >      parameters.  The new BSP will be a new Yocto BSP layer contained
> >      within the top-level directory specified as bsp-name i.e. not
> >      'meta-bsp-name'.  The value of the 'karch' parameter determines
> >      the set of files that will be generated for the BSP, along with
> >      the specific set of 'properties' that will be used to fill out the
> >      BSP-specific portions of the BSP.
> >
> >      The BSP-specific properties that define the values that will be
> >      used to generate a particular BSP can be specified on the
> >      comman-line using the --property option for each property, which
> >      is a colon-separated name:value pair.
> >
> >      The set of properties and enumerations of their possible values
> >      can be displayed using the 'yocto-bsp list' command.
> >
> >      It isn't necessary however for the user to explicitly specify the
> >      property values using --property options - if none are specified
> >      in the 'yocto-bsp create' invocation, the user will be
> >      interactively prompted for each of the required property values,
> >      which will then be used as values for BSP generation.
> >
> >      The 'kmachine' parameter names the 'machine branch' that the BSP's
> >      machine branch will be based on; the list of branches meaningful
> >      for that purpose can also be listed using the 'yocto-bsp list'
> >      command.
> 
> This may essentially be the BSP clone/extend I was asking about. In
> fact, I'm almost sure of it!
> 

Not sure - if the extent of it is basically to create a new branch based
on an existing one, then yeah.

[ ... ]

> >
> > 'yocto-kernel feature list' - List available Yocto KERNEL_FEATUREs
> > ------------------------------------------------------------------
> >
> > NAME
> >      yocto-kernel-feature-list - List available Yocto KERNEL_FEATUREs
> >
> > SYNOPSIS
> >      yocto-kernel feature list<bsp-name>  --used
> >
> > DESCRIPTION
> >      This command lists all the kernel features available to a BSP.
> >      This includes any features temporarily attached to the named BSP
> >      via the 'feature define' command and thus the reason this command
> >      takes bsp-name as a parameter.
> 
> .. and in yocto 1.2, we'll make sure there's either an embedded .gitconfig
> style file this can use, or some sort of standardized naming system
> that can be scraped. I'm actually in favour of both.
> 

Yeah, whatever makes sense here.  In my template examples, I assumed the
existence of a fetch-kernel-features() function that would do that,
hadn't considered the implementation yet, though.

> >
> >      If the --used param is specified, only the KERNEL_FEATURES used by
> >      the BSP are listed.
> >
> >
> > 'yocto-kernel feature define' - Define a new Yocto KERNEL_FEATURE
> > -----------------------------------------------------------------
> >
> > NAME
> >      yocto-kernel-feature-define - Define a new Yocto KERNEL_FEATURE
> >
> > SYNOPSIS
> >      yocto-kernel feature define<bsp-name>  <feature-name>  <feature-desc>
> >      [<CONFIG_XXX=x>  ...] [--dirname<dirname>] [--policy<hw|non-hw>]
> >
> > DESCRIPTION
> >      This command defines a new kernel feature, resulting in the
> >      addition of two new files for feature xxx to the named BSP's
> >      SRC_URI.  If dirname is specified, the feature files will be named
> >      features_dirname_xxx.cfg and features_dirname_xxx.scc.  Otherwise,
> >      the features will be named cfg_xxx.cfg and cfg_xxx.scc.  The idea
> >      behind the naming is that the names reflect the user's intent to
> >      have the feature migrated to either the kernel-cache/cfg or
> >      kernel-cache/features directory if/when the kernel portion of the
> >      BSP is migrated into the linux-yocto kernel repo.
> >
> >      The policy stating whether the new feature is considered to be a
> >      hardware or a non-hardware feature also needs to be specified in
> >      order to create a new feature, and a description of the new
> >      feature is also required; this will be added as a comment to the
> >      .scc file.
> >
> >      NOTE: Although features are not BSP-specific, until the user has
> >      gone through the steps of migrating a feature to the linux-yocto
> >      repo, it needs to live somewhere accessible to the BSP metadata,
> >      which logically would be the kernel SRC_URI for the BSP using it.
> >
> >      NOTE: It's up to the user to determine whether or not the config
> >      options for a feature being added make sense or not - this command
> >      does no sanity checking or verification of any kind to ensure that
> >      the config options contained in a kernel feature really make sense
> >      and will actually be set in in the final config.  For example, if
> >      a config option depends on other config options, it will be turned
> >      off by kconfig if the other options aren't set correctly.
> 
> FYI: some changes that I'm making in 1.2, will allow just the .scc file
> to be listed on the SRC_URI and everything else left off, and the tools
> will pickup what they need from the source directory.
> 

Excellent, that'll make things much cleaner, thanks.


[ ... ]

> >
> >
> > 'yocto-kernel migrate' - Move local kernel config/patches to a git repo
> > -----------------------------------------------------------------------
> >
> > NAME
> >      yocto-kernel-migrate - Move local kernel config/patches to a git repo
> >
> > SYNOPSIS
> >      yocto-kernel migrate<bsp-name>  <local linux-yocto repo>
> >
> > DESCRIPTION
> >      This command converts the kernel configuration changes, patches,
> >      and features collected in a BSP's linux-yocto SRC_URI into an
> >      equivalent set of commits in a local linux-yocto repo.  On
> >      success, the local files will named in the SRC_URI will be
> >      removed, and the linux-yocto .bbappend will be fixed up to point
> >      to the new repo.
> >
> >      NOTE: The user is responsible for submitting the generated commits
> >      upstream and subsequently modifying the kernel .bbappend to
> >      use the upsteam kernel repo.
> 
> I like this one :)
> 

I thought you might be happy that I didn't go so far as to actually have
the tool automatically submitting the results. ;-)

[ ...]

> >
> > The BSP-specific files are contained in directories named for the
> > architecture.  In this case, only the i386 files are expanded as an
> > example.
> >
> > bsp-tools/bsp-cache/target/arch/arm
> > bsp-tools/bsp-cache/target/arch/powerpc
> > bsp-tools/bsp-cache/target/arch/i386
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto_3.0.bbappend
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=machine}}.cfg
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=machine}}.scc
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=machine}}-preempt-rt.scc
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=machine}}-standard.scc
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/{{=machine}}.cfg
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/{{=machine}}.scc
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/{{=machine}}-preempt-rt.scc
> > bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/{{=machine}}-standard.scc
> 
> Once my 1.2 updates are in (They are waiting for the patch list
> abstraction to merge), subdirectories for features will work fine
> as well.
> 

Also great news that will really simplify things, thanks.

> > bsp-tools/bsp-cache/target/arch/i386/recipes-graphics
> > bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config
> > bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config/{{=machine}}
> > bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config/{{=machine}}/{{ if xserver-choice == xserver-emgd: }} xorg.conf
> > bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config/{{=machine}}/{{ if xserver-choice == xserver-vesa: }} xorg.conf
> > bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config/{{=machine}}/{{ if xserver-choice == xserver-i915: }} xorg.conf
> > bsp-tools/bsp-cache/target/arch/i386/conf
> > bsp-tools/bsp-cache/target/arch/i386/conf/machine
> > bsp-tools/bsp-cache/target/arch/i386/conf/machine/{{=machine}}.conf
> > bsp-tools/bsp-cache/target/arch/mips
> > bsp-tools/bsp-cache/target/arch/x86_64
> 
> I made it to the end. Is there a prize ? This looks really good/interesting.
> 

Thanks for persevering, I really appreciate the input and comments!

Tom

> Cheers,
> 
> Bruce
> 
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



