Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E063E00303
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 16:08:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jan 2012 16:08:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112612374"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2012 16:08:01 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F2870A5.90400@linux.intel.com>
References: <1324313709.12454.34.camel@elmorro>
	<4F2870A5.90400@linux.intel.com>
Date: Tue, 31 Jan 2012 18:07:58 -0600
Message-ID: <1328054878.2304.71.camel@elmorro>
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
X-List-Received-Date: Wed, 01 Feb 2012 00:08:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-01-31 at 14:52 -0800, Darren Hart wrote:
> Hi Tom,
> 
> This is really late in coming, my apologies. This looks to be the
> beginnings of a very powerful set of tools, and the detail you started
> with should help ensure a successful initial version. Nice work.
> 
> Some general questions that don't belong in any one particular place inline:
> 
> o You mention the use of json files. Is there a web UI planned for this?
> Or did you just decide that the requirements for the UI were the same as
> a web UI so you opted to use an established format rather than create a
> new one?
> 
> o As a follow-on to the previous, it is always nice if the input files
> to tools such as this can be easily human readable (and IMO this
> excludes things like XML and serialized python objects). A simple INI
> type config seems like it might be more accessible and python has a
> module for this. I imagine you've considered this, I'm curious as to
> your rationale for the method outlined below.
> 

As a design point, I've tried to completely decouple the user interface
from the back-end, so that yes, in the future a web UI could easily
replace the current command-line user interface.  I decided to use json
because it's pretty standard for web applications, and Python also has
json parsers available.  And it's human-readable, unlike XML or
serialized Python.  But it really doesn't need to be any of those, if
something else makes sense.

> o I have some concern about yet another description format of BSPs and
> essentially kernel configuration. We already ask users to think in terms
> of SCC and CFG fragments, rather than defconfigs. This effectively asks
> users to start thinking in terms of json name value pairs to map to
> bitbake syntax to describe scc and cfg fragments so we can assemble a
> .config. Having the tools and structure in place eliminates a lot of the
> guesswork, so in the end I think it is probably worth it ... I just
> worry about so many levels of abstraction - and I do not have a better
> alternative in mind.
> 

No, users never see json or any description format (UI tool or webapp
developers do though).  The json format (or whatever it ends up being)
is only used as a way of feeding user input values into the back-end in
the absence of a user interface (e.g. sent from a browser, or specified
as a group on the command-line).  Regardless of where the input comes
from, in any case it's finally translated it into the .scc and .cfg
fragments we all know and love.

Actually, the point of all this is that the end user doesn't even need
to know about .scc files or .cfg fragments, and deals only at a
high-level with 'features' or config items or patches; this whole scheme
allows UI developers to creat UIs that do that.

> o I see the tools for KMACHINE but nothing for KBRANCH. The distinction
> here is subtle and not described in any of our documentations (BSP
> guide, Kernel Arch and Usage, or Yocto Developer guide). Ideally we use
> standard/default/base for new BSPs and only add the meta-data to the
> linux-yocto kernel. Is this workflow supported? I ask because I'm
> failing to accomplish this with the sys940x and seem to have to add the
> sys940x branch in order for kernel_configme to pick up the sys940x meta
> data.
> 

In the current implementation of the cmd-line UI, the user can specify
any branch ending with base e.g.

  standard/base
  standard/default/base
  standard/default/common-pc-64/base
  standard/default/common-pc/base
  standard/preempt-rt/base

'base' is removed from the branch name and replaced with the machine
name e.g.

standard/default/foo

The 'publish' function will end up creating that branch in the repo and
adding the .scc/.cfg files as a bsp/ in the meta branch.  Also, new
features (.cfg and .scc contained in subdirs in the SRC_URI) will be
created under features/ and referenced in the bsp .scc.

I've also run into the same thing you describe - the current tools seem
to require a 1-1 mapping between KBRANCH/KMACHINE and the machine's
metadata, but I don't see a problem with that and it seems more
intuitive to the user (and allows a place to commit bsp-specific
branches immediately without explicitly having to force a new branch
first).

Tom




> --
> Darren
> 
> On 12/19/2011 08:55 AM, Tom Zanussi wrote:
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
> >   The tool assumes the user already knows that, either through diffs
> >   of .config files before and after using 'bitbake -c menuconfig', or
> >   some other means.
> > 
> > - modification of the BSP metadata after BSP creation.  The tool
> >   provides an initial 'write-once' BSP-generation capability, but
> >   doesn't allow it to be read in and modified after the initial pass.
> >   The user will have to make further modifications manually.  The one
> >   exception to this is kernel features, which can be added to an
> >   already existing kernel bbappend file.
> > 
> > - a guarantee or even expectation that the generated BSP will work on
> >   the actual hardware it's targeted for - it's highly unlikely the BSP
> >   will work 'out-of-the-box' and it's the developer's reponsibility to
> >   do the often hard work of figuring out what settings and/or code are
> >   actually needed to get the hardware to work as expected.  The goal
> >   of the tool is to make that job easier, not to actually do that job.
> > 
> > Also, though it's not explicitly a requirement of this tool, the
> > design should be sufficiently modular to allow for its participation
> > in generic logical pipelines.  For instance, while the tool may
> > present to the user a text-based UI for gathering information, it
> > should also be able to operate without any kind of user interaction
> > and retrieve the data it needs from a file, for instance e.g.:
> > 
> >  $ yocto-bsp create < x86-input.json
> > 
> > Another example that the design should not preclude would be its use
> > at the end of a bsp-import pipeline e.g.:
> > 
> >  $ cat 3rdparty.bsp | 3rdparty2yocto | yocto-bsp create
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
> >  $ yocto-bsp
> > 
> >  usage: yocto-bsp [--version] [--help] COMMAND [ARGS]
> > 
> >  The most commonly used 'yocto-bsp' commands are:
> >    create            Create a new Yocto BSP
> >    list              List available values for options and BSP properties
> > 
> >  See 'yocto-bsp help COMMAND' for more information on a specific command.
> > 
> > 
> > 'yocto-bsp create' - Create a new Yocto BSP
> > -------------------------------------------
> > 
> > NAME
> >     yocto-bsp-create - Create a new Yocto BSP
> > 
> > SYNOPSIS
> >     yocto-bsp create <bsp-name> <karch> <kmachine>
> >         [--property <NAME:VAL> | -p <NAME:VAL>]
> > 
> > DESCRIPTION
> >     This command creates a Yocto BSP based on the specified
> >     parameters.  The new BSP will be a new Yocto BSP layer contained
> >     within the top-level directory specified as bsp-name i.e. not
> >     'meta-bsp-name'.  The value of the 'karch' parameter determines
> >     the set of files that will be generated for the BSP, along with
> >     the specific set of 'properties' that will be used to fill out the
> >     BSP-specific portions of the BSP.
> > 
> >     The BSP-specific properties that define the values that will be
> >     used to generate a particular BSP can be specified on the
> >     comman-line using the --property option for each property, which
> >     is a colon-separated name:value pair.
> > 
> >     The set of properties and enumerations of their possible values
> >     can be displayed using the 'yocto-bsp list' command.
> > 
> >     It isn't necessary however for the user to explicitly specify the
> >     property values using --property options - if none are specified
> >     in the 'yocto-bsp create' invocation, the user will be
> >     interactively prompted for each of the required property values,
> >     which will then be used as values for BSP generation.
> > 
> >     The 'kmachine' parameter names the 'machine branch' that the BSP's
> >     machine branch will be based on; the list of branches meaningful
> >     for that purpose can also be listed using the 'yocto-bsp list'
> >     command.
> > 
> >     The 'yocto-bsp list' command can also be used to list the possible
> >     values for the 'karch' parameter.
> > 
> >     An typical example that would query the user for property values
> >     would be:
> > 
> >     $ yocto-bsp create meta-foo i386 yocto/standard/common-pc/foo
> > 
> >     Because the user hasn't specified any values for the BSP
> >     properties, yocto-bsp will query the user for each of the
> >     unspecified property values required to create the BSP i.e. the
> >     properties listed by 'yocto-bsp list properties'.
> > 
> >     Here's an example using explicitly-specified properties:
> > 
> >     $ yocto-bsp create meta-foo i386 yocto/standard/common-pc/foo
> >        --property tunefile:tune-atom --property touchscreen:true
> >        --property kfeature:cfg/smp [...]
> > 
> > 
> > 'yocto-bsp list' - List available values for options and BSP properties
> > -----------------------------------------------------------------------
> > 
> > NAME
> >     yocto-bsp-list - List available values for options and BSP properties
> > 
> > SYNOPSIS
> >     yocto bsp list <karch | kmachine>
> >     yocto bsp list <karch> properties
> >     yocto bsp list <karch> property <xxx>
> > 
> > DESCRIPTION
> >     This command enumerates the complete set of possible values for a
> >     specified option or property needed by the BSP creation process.
> > 
> >     The first form enumerates all the possible values that exist and
> >     can be specified for the 'karch' or 'kmachine' parameters to the
> >     'yocto bsp create' command.  Example output for those options:
> > 
> >      $ yocto-bsp list karch
> >          i386
> >          x86_64
> >          arm
> >          powerpc
> >          mips
> > 
> >      $ yocto-bsp list kmachine
> >          yocto
> >          yocto/standard
> >          yocto/standard/common-pc
> >          yocto/standard/common-pc-64
> >          yocto/standard/preempt-rt
> > 
> >     The second form enumerates all the possible properties that exist
> >     and must have values specified for them in the 'yocto bsp create'
> >     command for the given 'karch'.  Example output for that command:
> > 
> >      $ yocto-bsp list i386 properties
> >          "machine": boolean,
> >           "kmachine": choice,
> >           "tunefile": choicelist,
> >           "smp": boolean,
> >           "xserver": choicelist
> >               ["xserver-choice": choice]
> >           "kfeatures": choicelist
> >               ["kfeature": choice]
> >            "touchscreen": boolean,
> >            "keyboard": boolean
> > 
> >     The third form enumerates all the possible values that exist and
> >     can be specified for any of the enumerable properties of the given
> >     'karch' in the 'yocto bsp create' command.  Example output for
> >     those properties:
> > 
> >      $ yocto-bsp list i386 property xserver
> >           xserver-vesa
> >           xserver-i915
> >           xserver-emgd
> > 
> >      $ yocto-bsp list i386 property kfeatures
> >           features/taskstats
> >           cfg/sound
> > 
> >      $ yocto-bsp list i386 property tunefile
> >           i386
> >               tune-atom
> >               tune-core2
> > 
> >      $ yocto-bsp list x86_64 property tunefile
> >           x86_64
> >               tune-x86_64
> >               tune-corei7
> >               tune-ivb
> > 
> >      $ yocto-bsp list powerpc property tunefile
> >           powerpc
> >               tune-ppc603e
> >               tune-ppce300c2
> >               tune-ppce500
> >               tune-ppce500mc
> >               tune-ppce500v2
> >               tune-ppce5500-32b
> >               tune-ppce5500-64b
> > 
> >      $ yocto-bsp list arm property tunefile
> >           arm
> >               tune-arm1136jf-s
> >               tune-arm920t
> >               tune-arm926ejs
> >               tune-arm9tdmi
> >               tune-armv7
> > 
> >      $ yocto-bsp list mips property tunefile
> >           mips
> >               tune-mips32
> > 
> > 
> > The top-level kernel usability tool, 'yocto-kernel'
> > ===================================================
> > 
> > All of the functionality of the Yocto kernel usability tool is
> > available via the single 'yocto-kernel' command.  Access to the
> > specific functions provided by the tool is accomplished by specifying
> > sub-commands to the main 'yocto-kernel' command.  The design of the
> > command-line interface is based on similar interfaces provided by git
> > and perf, which is familiar to many users and is easily extensible.
> > 
> > Usage help is always available for the command itself as well as for
> > all sub-commands.  Executing the top-level command displays a list of
> > the available sub-commands, with descriptions:
> > 
> >  $ yocto-kernel
> > 
> >  usage: yocto-kernel [--version] [--help] COMMAND [ARGS]
> > 
> >  The most commonly used 'yocto-kernel' commands are:
> >    feature-list      List available Yocto KERNEL_FEATUREs
> >    feature-define    Define a new Yocto KERNEL_FEATURE
> >    feature-add       Add Yocto KERNEL_FEATUREs to a BSP
> >    feature-rm        Remove Yocto KERNEL_FEATUREs from a BSP
> >    config-list       List the modifiable set of bare kernel config options for a BSP
> >    config-add        Add or modify bare kernel config options for a BSP
> >    config-rm         Remove bare kernel config options from a BSP
> >    patch-add         Patch the Yocto kernel for a specific BSP
> >    migrate           Move local kernel config/patches to a git repo
> > 
> >  See 'yocto-kernel help COMMAND' for more information on a specific command.
> > 
> > 
> > 'yocto-kernel feature list' - List available Yocto KERNEL_FEATUREs
> > ------------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-feature-list - List available Yocto KERNEL_FEATUREs
> > 
> > SYNOPSIS
> >     yocto-kernel feature list <bsp-name> --used
> > 
> > DESCRIPTION
> >     This command lists all the kernel features available to a BSP.
> >     This includes any features temporarily attached to the named BSP
> >     via the 'feature define' command and thus the reason this command
> >     takes bsp-name as a parameter.
> > 
> >     If the --used param is specified, only the KERNEL_FEATURES used by
> >     the BSP are listed.
> > 
> > 
> > 'yocto-kernel feature define' - Define a new Yocto KERNEL_FEATURE
> > -----------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-feature-define - Define a new Yocto KERNEL_FEATURE
> > 
> > SYNOPSIS
> >     yocto-kernel feature define <bsp-name> <feature-name> <feature-desc>
> >     [<CONFIG_XXX=x> ...] [--dirname <dirname>] [--policy <hw|non-hw>]
> > 
> > DESCRIPTION
> >     This command defines a new kernel feature, resulting in the
> >     addition of two new files for feature xxx to the named BSP's
> >     SRC_URI.  If dirname is specified, the feature files will be named
> >     features_dirname_xxx.cfg and features_dirname_xxx.scc.  Otherwise,
> >     the features will be named cfg_xxx.cfg and cfg_xxx.scc.  The idea
> >     behind the naming is that the names reflect the user's intent to
> >     have the feature migrated to either the kernel-cache/cfg or
> >     kernel-cache/features directory if/when the kernel portion of the
> >     BSP is migrated into the linux-yocto kernel repo.
> > 
> >     The policy stating whether the new feature is considered to be a
> >     hardware or a non-hardware feature also needs to be specified in
> >     order to create a new feature, and a description of the new
> >     feature is also required; this will be added as a comment to the
> >     .scc file.
> > 
> >     NOTE: Although features are not BSP-specific, until the user has
> >     gone through the steps of migrating a feature to the linux-yocto
> >     repo, it needs to live somewhere accessible to the BSP metadata,
> >     which logically would be the kernel SRC_URI for the BSP using it.
> > 
> >     NOTE: It's up to the user to determine whether or not the config
> >     options for a feature being added make sense or not - this command
> >     does no sanity checking or verification of any kind to ensure that
> >     the config options contained in a kernel feature really make sense
> >     and will actually be set in in the final config.  For example, if
> >     a config option depends on other config options, it will be turned
> >     off by kconfig if the other options aren't set correctly.
> > 
> > 
> > 'yocto-kernel feature add' - Add Yocto KERNEL_FEATUREs to a BSP
> > ---------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-feature-add - Add Yocto KERNEL_FEATUREs to a BSP
> > 
> > SYNOPSIS
> >     yocto-kernel feature add <bsp-name> [<FEATURE> ...]
> > 
> > DESCRIPTION
> > 
> >     This command adds one or more kernel features to a BSP.  The set
> >     of features available to be added by this command for a BSP can be
> >     found via the 'yocto-kernel feature list' command.  This command
> >     essentially adds a new machine-specific KERNEL_FEATURE_append to
> >     the linux-yocto .bbappend for the BSP.
> > 
> > 
> > 'yocto-kernel feature rm' - Remove Yocto KERNEL_FEATUREs from a BSP
> > -------------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-feature-rm - Remove Yocto KERNEL_FEATUREs from a BSP
> > 
> > SYNOPSIS
> >     yocto-kernel feature rm <bsp-name> [<FEATURE> ...]
> > 
> > DESCRIPTION
> > 
> >     This command removes one or more kernel features from a BSP.  The
> >     set of features available to be removed by this command for a BSP
> >     can be found via the 'yocto-kernel feature list' command, if the
> >     --used option to that command is specified.  This command
> >     essentially removes a machine-specific KERNEL_FEATURE from the
> >     linux-yocto .bbappend for the BSP.
> > 
> > 
> > 'yocto-kernel config list' - List a BSP's modifiable config options
> > -------------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-config-list - List the modifiable set of bare kernel
> >     config options for a BSP
> > 
> > SYNOPSIS
> >     yocto-kernel config list <bsp-name>
> > 
> > DESCRIPTION
> >     This command lists the 'modifiable' config items for a BSP
> >     i.e. the items which are eligible for modification or removal by
> >     other yocto-kernel commands.
> > 
> >     'modifiable' config items are the config items contained a BSP's
> >     foo.cfg base config.
> > 
> > 
> > 'yocto-kernel config add' - Add or modify a BSP's kernel config options
> > -----------------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-config-add - Add or modify bare kernel config options
> >     for a BSP
> > 
> > SYNOPSIS
> >     yocto-kernel config add <bsp-name> [<CONFIG_XXX=x> ...]
> > 
> > DESCRIPTION
> >     This command adds one or more CONFIG_XXX=x items to a BSP's
> >     foo.cfg base config.  If a config item is already present, the new
> >     value will simply overwrite the old value.
> > 
> >     NOTE: It's up to the user to determine whether or not the config
> >     options being added make sense or not - this command does no
> >     sanity checking or verification of any kind to ensure that a
> >     config option really makes sense and will actually be set in in
> >     the final config.  For example, if a config option depends on
> >     other config options, it will be turned off by kconfig if the
> >     other options aren't set correctly.
> > 
> > 
> > 'yocto-kernel config rm' - Remove BSP kernel config options
> > -----------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-config-rm - Remove bare kernel config options from a
> >     BSP
> > 
> > SYNOPSIS
> >     yocto-kernel config rm <bsp-name> [<CONFIG_XXX> ...]
> > 
> > DESCRIPTION
> >     This command removes (turns off) one or more CONFIG_XXX items to a
> >     BSP's foo.cfg base config.
> > 
> >     The set of config items available to be removed by this command
> >     for a BSP can be found via the 'yocto-kernel config list'
> >     command.
> > 
> > 
> > 'yocto-kernel patch add' - Patch the Yocto kernel for a specific BSP
> > --------------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-patch-add - Patch the Yocto kernel for a specific BSP
> > 
> > SYNOPSIS
> >     yocto-kernel patch add <bsp-name> [<PATCH> ...]
> > 
> > DESCRIPTION
> >     This command adds one or more patches to a BSP's machine branch.
> >     The patch will be added to the BSP's linux-yocto kernel SRC_URI
> >     and will be guaranteed to be applied in the order specified.
> > 
> >     NOTE: It's up to the user to determine whether or not the patches
> >     being added makes sense or not - this command does no sanity
> >     checking or verification of any kind to ensure that a patch can
> >     actually be applied to the BSP's kernel branch; it's assumed that
> >     the user has already done that.
> > 
> > 
> > 'yocto-kernel migrate' - Move local kernel config/patches to a git repo
> > -----------------------------------------------------------------------
> > 
> > NAME
> >     yocto-kernel-migrate - Move local kernel config/patches to a git repo
> > 
> > SYNOPSIS
> >     yocto-kernel migrate <bsp-name> <local linux-yocto repo>
> > 
> > DESCRIPTION
> >     This command converts the kernel configuration changes, patches,
> >     and features collected in a BSP's linux-yocto SRC_URI into an
> >     equivalent set of commits in a local linux-yocto repo.  On
> >     success, the local files will named in the SRC_URI will be
> >     removed, and the linux-yocto .bbappend will be fixed up to point
> >     to the new repo.
> > 
> >     NOTE: The user is responsible for submitting the generated commits
> >     upstream and subsequently modifying the kernel .bbappend to
> >     use the upsteam kernel repo.
> > 
> > 
> > The design of the 'yocto-bsp create' templating mechanism
> > ==========================================================
> > 
> > This section describes the details of the templating mechanism used by
> > 'yocto-bsp' to generate BSPs.
> > 
> > Generating a new BSP is basically a templating exercise.  A given BSP
> > is comprised of a combination of a set of common files that all BSPs
> > share along with a set of files specific to a given BSP type.  Many of
> > the files in both sets need to be configured according to the needs of
> > the BSP; this also extends to the naming and existence of the files
> > themselves.
> > 
> > The templating scheme used in the Yocto tool is partly inspired by
> > ideas from web2py, but adapted to a more general input mechanism for
> > the specific problems posed by Yocto.
> > 
> > There are no special files, just marked-up BSP metadata and kernel
> > configuration, .scc, and patch files.
> > 
> > The Yocto BSP markup is meant to be extremely simple and limited to
> > pretty much this initial set of items; it is however designed to be
> > extensible enough to cover any future need.
> > 
> > Anything within double braces is considered to be a Yocto BSP markup
> > tag:
> > 
> > {{ foo }}
> > 
> > Anything within double braces and starting with {{= is considered to
> > implement simple variable replacement, where variables are by default
> > simply keys in a dictionary representing the BSP and containing values
> > for the whole BSP:
> > 
> > {{=machine}}
> > 
> > The above means that the whole expression will be replaced with the
> > value of the 'machine' entry in the BSP dictionary.  The syntax is
> > actually shorthand for the equivalent Python code for accessing the
> > value of a given key, but isn't restricted to that e.g. it could
> > reference a local variable defined in a previous tag, for instance.
> > 
> > In every other case, the 'yocto-bsp' tool will pre-process the
> > contents looking for certain keywords at the beginning.  The rest it
> > will treat as Python code.  As of now, there's only one keyword that's
> > meaningful:
> > 
> > {{ input }}
> > 
> > which signals that anything contained is input-related.  The
> > 'yocto-bsp' implementation will use this information to prompt the
> > user for input.  Under certain conditions e.g. when the user has
> > already supplied this information via a file for instance, anything
> > contained in this is considered a no-op and ignored.
> > 
> > Anything else is considered to be Python code and will be directly
> > incorporated into the BSP generation code.
> > 
> > {{ if keyboard == False: }}
> > 
> > Note also that any of the above can also be used in file and directory
> > names, which will also be processed in the same way; this allows us to
> > avoid extraneous files is consistent with the rest of the scheme.
> > 
> > Internally, the way things are envisioned to work is that the tool
> > will first read in the set of files that makes up the BSP for the
> > chosen architecture.  It will then pre-process all the 'input' tags it
> > finds and use that to prepare a series of text-based prompts to
> > retrieve the needed information from the user.  The end result of
> > presenting all that to the user will be a completd BSP dictionary
> > containing all the key/value pairs needed to fill in the BSP.  Once
> > that information is available, it will make a second pass over the
> > remaining tags and fill them in with the Python code needed to
> > retrieve and replace the remaining tags with their corresponding
> > values from the BSP dictionary (or any other source possibly
> > introduced by other tags).  The end result of this second pass will be
> > executed as Python code to produce the final BSP metadata.
> > 
> > For the first version, the 'input' tags will be used to construct a
> > series of text-based questions for the user.  The design, however,
> > should make it relatively trivial to create an application that could
> > create real GUI that would do the same thing at some later point.  For
> > example, such an application could use the input tags to generate a
> > web-based form, which would return the results gathered from the user
> > to a web service in the form of a json blob that could directly be
> > converted into the BSP Python dictionary needed. e.g. the browser
> > would return something like this to the web service, which would in
> > turn send it to the 'bsp-create' library function to create the final
> > BSP.
> > 
> > {
> >     "machine": "foo",
> >     "kmachine": "/yocto/standard/base",
> >     "tunefile": "tune-atom",
> >     "smp": true,
> >     "xserver": {
> >              "xserver-choice": "xserver-i915",
> >     },
> >     "kfeatures": [
> >              "kfeature": "features/taskstats", 
> >              "kfeature": "cfg/sound",
> >              ]
> >     },
> >     touchscreen: false,
> >     keyboard: true
> > }
> > 
> > Below are some concrete examples of specific tags and how they're used.
> > 
> > Here's a simple example of markup that describes information needed
> > from the user about touchscreen and keyboard capabilities in the
> > formfactor 'machconfig' file:
> > 
> > # Assume a USB mouse and keyboard are connected
> > {{ input type:"boolean" name:"touchscreen" msg:"Does your BSP have a touchscreen?" }}
> > HAVE_TOUCHSCREEN={{=touchscreen}}
> > {{ input type:"boolean" name:"keyboard" msg:"Does your BSP have a keyboard?" }}
> > HAVE_KEYBOARD={{=keyboard}}
> > 
> > For instance, the touchscreen 'input' tag above describes everything a
> > UI would need in order to retrieve an answer from the user as to
> > whether the hardware in question has a touchscreen or not.
> > 
> > The 'type' key comprises a small set of possible input types that
> > include things like 'boolean' (yes/no) choices and lists of choices
> > (type:"choicelist").
> > 
> > The 'name' key provides a means for later markup to access the value
> > of the variable containing the user's answer for that input.  For
> > example, the name:"touchscreen" simply references the value in the BSP
> > dictionary that was filled in with the user's response to the question
> > which was formed and presented to the user using the "msg" tag in the
> > input tag.
> > 
> > Below the input tag is the actual content that will be rendered into
> > the 'machconfig' file, but with the {{=}} portion replaced with the
> > 'touchscreen' value supplied by the user i.e.:
> > 
> > HAVE_TOUCHSCREEN={{=touchscreen}}
> > 
> > will be rendered as:
> > 
> > HAVE_TOUCHSCREEN=0
> > 
> > Assuming the user answered 'no'.
> > 
> > Another interesting thing to note about this example is that in Yocto
> > BSPs, the machconfig files are contained within a filesystem location
> > that includes the machine name in the path e.g.
> > 
> > recipes-bsp/formfactor/formfactor/foo/machconfig
> > 
> > To accomplish this, the directory names themselves contain markup that
> > gets processed and replaced by the tool:
> > 
> > recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
> > 
> > Here, the {{=machine} directory is renamed to /foo to match the
> > machine name of the BSP.
> > 
> > Here's a more involved example, markup included in the
> > i386/conf/{{=machine}}.conf file:
> > 
> > {{ input type:"boolean" name:"xserver" msg:"Do you need support for X?" }}
> > {{ if xserver: }}
> > XSERVER ?= "${XSERVER_IA32_BASE} \                                                                           
> >            ${XSERVER_IA32_EXT} \                                                                             
> > {{ input type:"choicelist" name:"xserver_choice" msg:"Please select an xserver for this machine" }}          
> > {{ input type:"choice" val:"xserver-vesa" msg:"VESA xserver support" }}                                      
> >            ${XSERVER_IA32_VESA} \                                                                            
> > {{ input type:"choice" val:"xserver-emgd" msg:"EMGD xserver support (proprietary)" }}                        
> >            ${XSERVER_IA32_EMGD} \                                                                            
> > {{ input type:"choice" val:"xserver-i915" desc:"i915 xserver support" }}                                     
> >            ${XSERVER_IA32_I915} \                                                                            
> >            "
> > 
> > In this case, we start off with a boolean 'input' question asking if
> > the BSP needs to support X.  The following line is straight Python
> > code which essentially skips the following sections (until a blank
> > line) if the user's answer was 'no', or if the answer was 'yes',
> > creates a further query to the user asking which xserver type to use.
> > In the latter case, the input type is a list of choices resulting in
> > the values specified by the 'val' tag appearing as the value for the
> > 'xserver_choice' dictionary key.
> > 
> > Code further down in the .conf file can also make use of this
> > information to include or exclude content based on the value of the
> > xserver_choice variable:
> > 
> > {{ if xserver_choice == "xserver-emgd": }}
> > PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> > PREFERRED_VERSION_mesa-dri ?= "7.11"
> > PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
> > 
> > {{ if xserver_choice == "xserver-vesa" or xserver_choice == "xserver-emgd": }}
> > APPEND += "video=vesafb vga=0x318"
> > 
> > Note again that the tags used to determine whether or not to include
> > content simply contain Python code used to directly implement the
> > needed logic.  Not only is there no need for the user to learn a
> > special-purpose language, but gives the tool the flexibility to add
> > essentially any kind of processing logic needed in the future.
> > 
> > In the case of xserver choices, we also need to use the value of
> > xserver_choice to determine which xorg.conf file to add to the BSP.
> > Again, consistent with the rest of the markup processing, this is
> > seamlessly accomplished by adding markup to the filenames themselves:
> > 
> > recipes-graphics/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == xserver_emgd: }} xorg.conf
> > recipes-graphics/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == xserver_vesa: }} xorg.conf
> > recipes-graphics/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == xserver_i915: }} xorg.conf
> > 
> > In this case, the filenames actually contain Python code that
> > describes the conditions needed to include those particular files.
> > 
> > Here's another example, again making use of general-purpose Python in
> > the markup to generate an open-ended list of choices for the user, in
> > this case in linux-yocto_3.0.bbappend, to generate a list of available
> > KERNEL_FEATURES for the user to choose from:
> > 
> > {{ input type:"checklist" name:"kfeatures" gen:"fetch-kernel-features()" msg:"Please choose the kernel features to use in this BSP on" }}
> > {{ for kfeature in kfeatures: }}
> > KERNEL_FEATURES_append_{{=machine}} += {{=kfeature}}
> > 
> > In this case an 'input' tag calls an internally-defined yocto-bsp
> > function named fetch_kernel_feature() that generates the list of
> > available KERNEL_FEATURES.  The output of that call is a Python list
> > containing the features, which is assigned to the 'kfeatures'
> > variable.  The next tag contains Python code that simply iterates over
> > that list, and uses the value of the current feature, 'kfeature', to
> > append the chosen kernel features to the list of features used by the
> > BSP.
> > 
> > Finally, because the kernel components are actually part of the BSP
> > metadata, the user-specified values are also available in the
> > processing of those files.  For instance, in the below case, we can
> > use the xserver_choice to include or exclude specific kernel
> > configuration settings in the
> > recipes-kernel/linux/linux-yocto/{{=machine}}.scc file associated with
> > the BSP:
> > 
> > {{ if xserver_choice == "xserver-emgd": }}
> > include features/drm-emgd/drm-emgd.scc
> > 
> > ---
> > 
> > For reference, here's an example of how the tools are expected to be
> > laid out.  Everything is contained within a 'bsp-tools' directory
> > under '/scripts'.  The 'common' portion, containing the files common
> > to every BSP are:
> > 
> > bsp-tools/
> > bsp-tools/yocto-bsp.py
> > bsp-tools/yocto-kernel.py
> > bsp-tools/bsp-cache
> > bsp-tools/bsp-cache/target
> > bsp-tools/bsp-cache/target/arch
> > bsp-tools/bsp-cache/target/arch/common
> > bsp-tools/bsp-cache/target/arch/common/README.sources
> > bsp-tools/bsp-cache/target/arch/common/binary
> > bsp-tools/bsp-cache/target/arch/common/binary/.gitignore
> > bsp-tools/bsp-cache/target/arch/common/recipes-kernel
> > bsp-tools/bsp-cache/target/arch/common/recipes-kernel/linux
> > bsp-tools/bsp-cache/target/arch/common/COPYING.MIT
> > bsp-tools/bsp-cache/target/arch/common/README
> > bsp-tools/bsp-cache/target/arch/common/recipes-graphics
> > bsp-tools/bsp-cache/target/arch/common/recipes-graphics/xorg-xserver
> > bsp-tools/bsp-cache/target/arch/common/recipes-graphics/xorg-xserver/{{ if xserver: }} xserver-xf86-config_0.1.bbappend
> > bsp-tools/bsp-cache/target/arch/common/conf
> > bsp-tools/bsp-cache/target/arch/common/conf/layer.conf
> > bsp-tools/bsp-cache/target/arch/common/recipes-core
> > bsp-tools/bsp-cache/target/arch/common/recipes-core/tasks
> > bsp-tools/bsp-cache/target/arch/common/recipes-core/tasks/task-core-tools.bbappend
> > bsp-tools/bsp-cache/target/arch/common/recipes-bsp
> > bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor
> > bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
> > bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor
> > bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}
> > bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
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
> > 
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



