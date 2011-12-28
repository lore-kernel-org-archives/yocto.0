Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE005.bigfish.com (am1ehsobe005.messaging.microsoft.com
	[213.199.154.208])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D17A8E00744
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2011 16:36:23 -0800 (PST)
Received: from mail25-am1-R.bigfish.com (10.3.201.247) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.23; Wed, 28 Dec 2011 00:36:01 +0000
Received: from mail25-am1 (localhost [127.0.0.1])	by mail25-am1-R.bigfish.com
	(Postfix) with ESMTP id 72E1E5000AA;
	Wed, 28 Dec 2011 00:35:41 +0000 (UTC)
X-SpamScore: -5
X-BigFish: VS-5(zz9371I1432N98dK4015L853kzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9n)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail25-am1 (localhost.localdomain [127.0.0.1]) by mail25-am1
	(MessageSwitch) id 1325032540368984_20139;
	Wed, 28 Dec 2011 00:35:40 +0000 (UTC)
Received: from AM1EHSMHS005.bigfish.com (unknown [10.3.201.252])	by
	mail25-am1.bigfish.com (Postfix) with ESMTP id 549863C0243;
	Wed, 28 Dec 2011 00:35:40 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS005.bigfish.com
	(10.3.207.105) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 28 Dec 2011 00:36:00 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Tue, 27 Dec 2011 18:36:18 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Thread-Topic: [yocto] RFC: Yocto BSP and kernel usability tools
Thread-Index: AQHMxPi2+jsJZnw7/UuElWLTUmIg4A==
Date: Wed, 28 Dec 2011 00:36:17 +0000
Message-ID: <CAEsOVNdfWJCUwkOk7n+2YzKpU5JCEF=q2Fm0x3n708Vo3Ap9eQ@mail.gmail.com>
References: <1324313709.12454.34.camel@elmorro>
In-Reply-To: <1324313709.12454.34.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Yocto BSP and kernel usability tools
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Dec 2011 00:36:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <709EA847939478408B2D82A8F04DFC62@freescale.net>
Content-Transfer-Encoding: quoted-printable

(This probably belongs somewhere inline but I got lost on the long email)

A lot of times users would already have a git tree containing linux
and/or u-boot already working for their boards. Perhaps you could let
the user point at external linux and/or u-boot trees with defconfigs,
u-boot configs, device trees, etc for their target BSP?

-M

On Mon, Dec 19, 2011 at 10:55 AM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> Hi,
>
> This is what I hope to implement in the M2 timeframe.
>
> Any and all comments welcome...
>
> Thanks,
>
> Tom
>
> ---
>
> Getting Yocto running on a new board is often a prerequisite task to
> the real task of interest for new users, which is creating new
> applications designed to run on the board, or creating new
> board-specific embedded systems. =A0In other words, most users just want
> to get the hardware up and running and not have to think too much
> about it before moving on to what they're really interested in, which
> is the stuff running on top of it.
>
> While there really can't be any such thing as a magic-bullet
> application that would do that automatically i.e. generate and
> maintain a guaranteed-working Yocto BSP for any given piece of
> hardware, it should at least be possible to provide a tool that would
> generate a base BSP usable as a starting point for that, and which
> would additionally allow the user to tweak various BSP settings,
> including kernel configuration options and simple kernel patches.
> Such a tool should be usable with only a minimal understanding of the
> Yocto build system and metadata, and with no knowledge at all of
> kernel internals or the Yocto kernel recipe bindings, or of the
> details of the internals of yocto kernel repositories, or in fact any
> knowledge of git or any other specific build-related tool.
>
> This document provides the design for such a tool. =A0At a high level,
> the goal of the tool is to provide a user the means of creating a new
> Yocto BSP from which it should be possible (assuming a perfect
> run-time outcome, admittedly unlikely on a first pass) to submit a
> 'pull request' for inclusion into any repo(s) that would accept an
> 'official' Yocto BSP. =A0For example, the output of the tool should
> produce metadata and kernel configuration that would be directly
> mergeable into the meta-intel and the linux-yocto kernel repos. =A0The
> tool should also allow the BSP maintainer to afterwards at any time
> make changes to the kernel configuration and/or submit kernel patches
> for the BSP.
>
> Note that although knowledge of the Yocto kernel or kernel internals
> is not expected, the user is expected to know the basics of how to
> deal with the linux kernel at the 'user' level, specifically
> understanding and determining the specific kernel config options
> needed for the user's BSP.
>
> Specifically, the tool will allow for the following high-level tasks,
> which are discussed in more detail below:
>
> - create a new BSP from scratch from a set of user-settable parameters
> - manage individual kernel config settings
> - create and use groups of kernel config settings as KERNEL_FEATUREs
> - apply patches to a BSP's machine branch
>
> The following capabilities are specifically not provided by the tool:
>
> - help in determining a 'correct' set of kernel config options to set.
> =A0The tool assumes the user already knows that, either through diffs
> =A0of .config files before and after using 'bitbake -c menuconfig', or
> =A0some other means.
>
> - modification of the BSP metadata after BSP creation. =A0The tool
> =A0provides an initial 'write-once' BSP-generation capability, but
> =A0doesn't allow it to be read in and modified after the initial pass.
> =A0The user will have to make further modifications manually. =A0The one
> =A0exception to this is kernel features, which can be added to an
> =A0already existing kernel bbappend file.
>
> - a guarantee or even expectation that the generated BSP will work on
> =A0the actual hardware it's targeted for - it's highly unlikely the BSP
> =A0will work 'out-of-the-box' and it's the developer's reponsibility to
> =A0do the often hard work of figuring out what settings and/or code are
> =A0actually needed to get the hardware to work as expected. =A0The goal
> =A0of the tool is to make that job easier, not to actually do that job.
>
> Also, though it's not explicitly a requirement of this tool, the
> design should be sufficiently modular to allow for its participation
> in generic logical pipelines. =A0For instance, while the tool may
> present to the user a text-based UI for gathering information, it
> should also be able to operate without any kind of user interaction
> and retrieve the data it needs from a file, for instance e.g.:
>
> =A0$ yocto-bsp create < x86-input.json
>
> Another example that the design should not preclude would be its use
> at the end of a bsp-import pipeline e.g.:
>
> =A0$ cat 3rdparty.bsp | 3rdparty2yocto | yocto-bsp create
>
> The tool will initially be implemented as a set of command-line tools
> which will essentially be thin layers on top of a modular Python API;
> future tools may be GUI-based but would make use of the functionality
> exposed through the same API. =A0There might also be an opportunity for
> future integration into existing tools such as hob; this isn't
> explicitly catered for in the current design, but it should be
> possible to do that based either on the functionality provided by the
> command-line interface or equivalently via the Python module API.
>
>
> A Quick Overview
> ----------------
>
> The initial set of tools will comprise 'yocto-bsp', for creating Yocto
> BSPs, and 'yocto-kernel', for BSP and BSP-related Yocto kernel
> maintenance tasks on existing BSPs.
>
> The interface and detailed description of each tool are described
> below, and the underlying templating mechanism is described following
> that, but it would be good for context to first try to give an overall
> picture of how the tools were designed to work and be used together.
>
> The envisioned usage model is that a user would first start out by
> creating a new BSP for a given architecture by invoking the 'yocto-bsp
> create' command. =A0Choosing the architecture essentially chooses a set
> of files that the BSP will be based on. =A0This set of files is a
> combination of a set of 'common' files that all BSPs inherit and a set
> of architecture-specific files that match the specified architecture.
>
> Neither set of files can be used unmodified on their own as simple
> static copies of the originals in order to create a working BSP for a
> real machine - many of those files need to be tailored for the
> hardware using information supplied by the user. =A0To accomplish this
> in an automated way, both the specific portions of the BSP files that
> need to be filled in with user input, and the means of (optionally)
> getting that input from the user are included as in-line annotations
> to the BSP files themselves using a simple templating scheme based on
> conventions used by web2py. =A0Essentially, in the default case, the
> templating system is used to generate a series of text-based prompts
> that ask the user questions about the BSP being created. =A0The data
> supplied by the user is then used to fill in the missing information
> in the BSP files. =A0The user can also choose to specify all the
> information needed directly to the 'yocto-bsp create' command
> invocation itself; the 'yocto-bsp list' command exists to provide the
> user the list of 'properties' and enumerations of possible values for
> those properties, which taken together represent the data items needed
> to generate the BSP. =A0The user can even more directly supply the
> information as a json object representing a serialized python
> dictionary, which is what the templating interface uses natively to
> represent properties and values needed for BSP generation.
>
> The end result is a Yocto-compliant BSP that should be directly
> buildable by the Yocto build system. =A0The generated BSP is completely
> self-contained - it includes not only the BSP metadata, but also the
> necessary kernel components, which are normally for BSPs contained in
> the linux-yocto repo's meta and machine branches for the BSP. =A0In
> order to help make the tool more efficient for the user, the tool does
> everything it needs to locally by initially using the linux-yocto
> SRC_URI; once ready, the user can then migrate the kernel components
> to an actual linux-yocto repo by using the 'yocto-kernel migrate'
> command. =A0Once that's done, the user is in a position to submit both
> the BSP metadata and the linux-yocto commits upstream.
>
> Once a BSP is created, the job of 'yocto-bsp' is done (in the initial
> version of the tools - it may have sub-commands added later that could
> possibly manage the non-kernel aspects of a BSP) and the
> 'yocto-kernel' command can be used going forward to maintain the
> kernel portion of a BSP. =A0'yocto-kernel' allows both bare kernel
> config items and higher-level 'kernel features' to be created, used
> and removed, patches to be added to a BSP's machine branch, and the
> kernel changes to a BSP migrated to a linux-yocto repo. =A0These
> have typically been difficult tasks for many users; the hope is that
> 'yocto-kernel' will make those tasks more manageable for everyone.
>
> The sections below describe each tool in detail.
>
> Following those sections is a detailed description of the templating
> mechanism, useful for anyone who needs to create templates for
> creating new BSPs using the 'yocto-bsp create' tool.
>
>
> The top-level bsp-creation tool, 'yocto-bsp'
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> All of the functionality of the Yocto bsp-creation tool is available
> via the single 'yocto-bsp' command. =A0Access to the specific functions
> provided by the tool is accomplished by specifying sub-commands to the
> main 'yocto-bsp' command. =A0The design of the command-line interface is
> based on similar interfaces provided by git and perf, which is
> familiar to many users and is easily extensible.
>
> Usage help is always available for the command itself as well as for
> all sub-commands. =A0Executing the top-level command displays a list of
> the available sub-commands, with descriptions:
>
> =A0$ yocto-bsp
>
> =A0usage: yocto-bsp [--version] [--help] COMMAND [ARGS]
>
> =A0The most commonly used 'yocto-bsp' commands are:
> =A0 create =A0 =A0 =A0 =A0 =A0 =A0Create a new Yocto BSP
> =A0 list =A0 =A0 =A0 =A0 =A0 =A0 =A0List available values for options and=
 BSP properties
>
> =A0See 'yocto-bsp help COMMAND' for more information on a specific comman=
d.
>
>
> 'yocto-bsp create' - Create a new Yocto BSP
> -------------------------------------------
>
> NAME
> =A0 =A0yocto-bsp-create - Create a new Yocto BSP
>
> SYNOPSIS
> =A0 =A0yocto-bsp create <bsp-name> <karch> <kmachine>
> =A0 =A0 =A0 =A0[--property <NAME:VAL> | -p <NAME:VAL>]
>
> DESCRIPTION
> =A0 =A0This command creates a Yocto BSP based on the specified
> =A0 =A0parameters. =A0The new BSP will be a new Yocto BSP layer contained
> =A0 =A0within the top-level directory specified as bsp-name i.e. not
> =A0 =A0'meta-bsp-name'. =A0The value of the 'karch' parameter determines
> =A0 =A0the set of files that will be generated for the BSP, along with
> =A0 =A0the specific set of 'properties' that will be used to fill out the
> =A0 =A0BSP-specific portions of the BSP.
>
> =A0 =A0The BSP-specific properties that define the values that will be
> =A0 =A0used to generate a particular BSP can be specified on the
> =A0 =A0comman-line using the --property option for each property, which
> =A0 =A0is a colon-separated name:value pair.
>
> =A0 =A0The set of properties and enumerations of their possible values
> =A0 =A0can be displayed using the 'yocto-bsp list' command.
>
> =A0 =A0It isn't necessary however for the user to explicitly specify the
> =A0 =A0property values using --property options - if none are specified
> =A0 =A0in the 'yocto-bsp create' invocation, the user will be
> =A0 =A0interactively prompted for each of the required property values,
> =A0 =A0which will then be used as values for BSP generation.
>
> =A0 =A0The 'kmachine' parameter names the 'machine branch' that the BSP's
> =A0 =A0machine branch will be based on; the list of branches meaningful
> =A0 =A0for that purpose can also be listed using the 'yocto-bsp list'
> =A0 =A0command.
>
> =A0 =A0The 'yocto-bsp list' command can also be used to list the possible
> =A0 =A0values for the 'karch' parameter.
>
> =A0 =A0An typical example that would query the user for property values
> =A0 =A0would be:
>
> =A0 =A0$ yocto-bsp create meta-foo i386 yocto/standard/common-pc/foo
>
> =A0 =A0Because the user hasn't specified any values for the BSP
> =A0 =A0properties, yocto-bsp will query the user for each of the
> =A0 =A0unspecified property values required to create the BSP i.e. the
> =A0 =A0properties listed by 'yocto-bsp list properties'.
>
> =A0 =A0Here's an example using explicitly-specified properties:
>
> =A0 =A0$ yocto-bsp create meta-foo i386 yocto/standard/common-pc/foo
> =A0 =A0 =A0 --property tunefile:tune-atom --property touchscreen:true
> =A0 =A0 =A0 --property kfeature:cfg/smp [...]
>
>
> 'yocto-bsp list' - List available values for options and BSP properties
> -----------------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-bsp-list - List available values for options and BSP propert=
ies
>
> SYNOPSIS
> =A0 =A0yocto bsp list <karch | kmachine>
> =A0 =A0yocto bsp list <karch> properties
> =A0 =A0yocto bsp list <karch> property <xxx>
>
> DESCRIPTION
> =A0 =A0This command enumerates the complete set of possible values for a
> =A0 =A0specified option or property needed by the BSP creation process.
>
> =A0 =A0The first form enumerates all the possible values that exist and
> =A0 =A0can be specified for the 'karch' or 'kmachine' parameters to the
> =A0 =A0'yocto bsp create' command. =A0Example output for those options:
>
> =A0 =A0 $ yocto-bsp list karch
> =A0 =A0 =A0 =A0 i386
> =A0 =A0 =A0 =A0 x86_64
> =A0 =A0 =A0 =A0 arm
> =A0 =A0 =A0 =A0 powerpc
> =A0 =A0 =A0 =A0 mips
>
> =A0 =A0 $ yocto-bsp list kmachine
> =A0 =A0 =A0 =A0 yocto
> =A0 =A0 =A0 =A0 yocto/standard
> =A0 =A0 =A0 =A0 yocto/standard/common-pc
> =A0 =A0 =A0 =A0 yocto/standard/common-pc-64
> =A0 =A0 =A0 =A0 yocto/standard/preempt-rt
>
> =A0 =A0The second form enumerates all the possible properties that exist
> =A0 =A0and must have values specified for them in the 'yocto bsp create'
> =A0 =A0command for the given 'karch'. =A0Example output for that command:
>
> =A0 =A0 $ yocto-bsp list i386 properties
> =A0 =A0 =A0 =A0 "machine": boolean,
> =A0 =A0 =A0 =A0 =A0"kmachine": choice,
> =A0 =A0 =A0 =A0 =A0"tunefile": choicelist,
> =A0 =A0 =A0 =A0 =A0"smp": boolean,
> =A0 =A0 =A0 =A0 =A0"xserver": choicelist
> =A0 =A0 =A0 =A0 =A0 =A0 =A0["xserver-choice": choice]
> =A0 =A0 =A0 =A0 =A0"kfeatures": choicelist
> =A0 =A0 =A0 =A0 =A0 =A0 =A0["kfeature": choice]
> =A0 =A0 =A0 =A0 =A0 "touchscreen": boolean,
> =A0 =A0 =A0 =A0 =A0 "keyboard": boolean
>
> =A0 =A0The third form enumerates all the possible values that exist and
> =A0 =A0can be specified for any of the enumerable properties of the given
> =A0 =A0'karch' in the 'yocto bsp create' command. =A0Example output for
> =A0 =A0those properties:
>
> =A0 =A0 $ yocto-bsp list i386 property xserver
> =A0 =A0 =A0 =A0 =A0xserver-vesa
> =A0 =A0 =A0 =A0 =A0xserver-i915
> =A0 =A0 =A0 =A0 =A0xserver-emgd
>
> =A0 =A0 $ yocto-bsp list i386 property kfeatures
> =A0 =A0 =A0 =A0 =A0features/taskstats
> =A0 =A0 =A0 =A0 =A0cfg/sound
>
> =A0 =A0 $ yocto-bsp list i386 property tunefile
> =A0 =A0 =A0 =A0 =A0i386
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-atom
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-core2
>
> =A0 =A0 $ yocto-bsp list x86_64 property tunefile
> =A0 =A0 =A0 =A0 =A0x86_64
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-x86_64
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-corei7
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ivb
>
> =A0 =A0 $ yocto-bsp list powerpc property tunefile
> =A0 =A0 =A0 =A0 =A0powerpc
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ppc603e
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ppce300c2
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ppce500
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ppce500mc
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ppce500v2
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ppce5500-32b
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-ppce5500-64b
>
> =A0 =A0 $ yocto-bsp list arm property tunefile
> =A0 =A0 =A0 =A0 =A0arm
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-arm1136jf-s
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-arm920t
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-arm926ejs
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-arm9tdmi
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-armv7
>
> =A0 =A0 $ yocto-bsp list mips property tunefile
> =A0 =A0 =A0 =A0 =A0mips
> =A0 =A0 =A0 =A0 =A0 =A0 =A0tune-mips32
>
>
> The top-level kernel usability tool, 'yocto-kernel'
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> All of the functionality of the Yocto kernel usability tool is
> available via the single 'yocto-kernel' command. =A0Access to the
> specific functions provided by the tool is accomplished by specifying
> sub-commands to the main 'yocto-kernel' command. =A0The design of the
> command-line interface is based on similar interfaces provided by git
> and perf, which is familiar to many users and is easily extensible.
>
> Usage help is always available for the command itself as well as for
> all sub-commands. =A0Executing the top-level command displays a list of
> the available sub-commands, with descriptions:
>
> =A0$ yocto-kernel
>
> =A0usage: yocto-kernel [--version] [--help] COMMAND [ARGS]
>
> =A0The most commonly used 'yocto-kernel' commands are:
> =A0 feature-list =A0 =A0 =A0List available Yocto KERNEL_FEATUREs
> =A0 feature-define =A0 =A0Define a new Yocto KERNEL_FEATURE
> =A0 feature-add =A0 =A0 =A0 Add Yocto KERNEL_FEATUREs to a BSP
> =A0 feature-rm =A0 =A0 =A0 =A0Remove Yocto KERNEL_FEATUREs from a BSP
> =A0 config-list =A0 =A0 =A0 List the modifiable set of bare kernel config=
 options for a BSP
> =A0 config-add =A0 =A0 =A0 =A0Add or modify bare kernel config options fo=
r a BSP
> =A0 config-rm =A0 =A0 =A0 =A0 Remove bare kernel config options from a BS=
P
> =A0 patch-add =A0 =A0 =A0 =A0 Patch the Yocto kernel for a specific BSP
> =A0 migrate =A0 =A0 =A0 =A0 =A0 Move local kernel config/patches to a git=
 repo
>
> =A0See 'yocto-kernel help COMMAND' for more information on a specific com=
mand.
>
>
> 'yocto-kernel feature list' - List available Yocto KERNEL_FEATUREs
> ------------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-feature-list - List available Yocto KERNEL_FEATUREs
>
> SYNOPSIS
> =A0 =A0yocto-kernel feature list <bsp-name> --used
>
> DESCRIPTION
> =A0 =A0This command lists all the kernel features available to a BSP.
> =A0 =A0This includes any features temporarily attached to the named BSP
> =A0 =A0via the 'feature define' command and thus the reason this command
> =A0 =A0takes bsp-name as a parameter.
>
> =A0 =A0If the --used param is specified, only the KERNEL_FEATURES used by
> =A0 =A0the BSP are listed.
>
>
> 'yocto-kernel feature define' - Define a new Yocto KERNEL_FEATURE
> -----------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-feature-define - Define a new Yocto KERNEL_FEATURE
>
> SYNOPSIS
> =A0 =A0yocto-kernel feature define <bsp-name> <feature-name> <feature-des=
c>
> =A0 =A0[<CONFIG_XXX=3Dx> ...] [--dirname <dirname>] [--policy <hw|non-hw>=
]
>
> DESCRIPTION
> =A0 =A0This command defines a new kernel feature, resulting in the
> =A0 =A0addition of two new files for feature xxx to the named BSP's
> =A0 =A0SRC_URI. =A0If dirname is specified, the feature files will be nam=
ed
> =A0 =A0features_dirname_xxx.cfg and features_dirname_xxx.scc. =A0Otherwis=
e,
> =A0 =A0the features will be named cfg_xxx.cfg and cfg_xxx.scc. =A0The ide=
a
> =A0 =A0behind the naming is that the names reflect the user's intent to
> =A0 =A0have the feature migrated to either the kernel-cache/cfg or
> =A0 =A0kernel-cache/features directory if/when the kernel portion of the
> =A0 =A0BSP is migrated into the linux-yocto kernel repo.
>
> =A0 =A0The policy stating whether the new feature is considered to be a
> =A0 =A0hardware or a non-hardware feature also needs to be specified in
> =A0 =A0order to create a new feature, and a description of the new
> =A0 =A0feature is also required; this will be added as a comment to the
> =A0 =A0.scc file.
>
> =A0 =A0NOTE: Although features are not BSP-specific, until the user has
> =A0 =A0gone through the steps of migrating a feature to the linux-yocto
> =A0 =A0repo, it needs to live somewhere accessible to the BSP metadata,
> =A0 =A0which logically would be the kernel SRC_URI for the BSP using it.
>
> =A0 =A0NOTE: It's up to the user to determine whether or not the config
> =A0 =A0options for a feature being added make sense or not - this command
> =A0 =A0does no sanity checking or verification of any kind to ensure that
> =A0 =A0the config options contained in a kernel feature really make sense
> =A0 =A0and will actually be set in in the final config. =A0For example, i=
f
> =A0 =A0a config option depends on other config options, it will be turned
> =A0 =A0off by kconfig if the other options aren't set correctly.
>
>
> 'yocto-kernel feature add' - Add Yocto KERNEL_FEATUREs to a BSP
> ---------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-feature-add - Add Yocto KERNEL_FEATUREs to a BSP
>
> SYNOPSIS
> =A0 =A0yocto-kernel feature add <bsp-name> [<FEATURE> ...]
>
> DESCRIPTION
>
> =A0 =A0This command adds one or more kernel features to a BSP. =A0The set
> =A0 =A0of features available to be added by this command for a BSP can be
> =A0 =A0found via the 'yocto-kernel feature list' command. =A0This command
> =A0 =A0essentially adds a new machine-specific KERNEL_FEATURE_append to
> =A0 =A0the linux-yocto .bbappend for the BSP.
>
>
> 'yocto-kernel feature rm' - Remove Yocto KERNEL_FEATUREs from a BSP
> -------------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-feature-rm - Remove Yocto KERNEL_FEATUREs from a BSP
>
> SYNOPSIS
> =A0 =A0yocto-kernel feature rm <bsp-name> [<FEATURE> ...]
>
> DESCRIPTION
>
> =A0 =A0This command removes one or more kernel features from a BSP. =A0Th=
e
> =A0 =A0set of features available to be removed by this command for a BSP
> =A0 =A0can be found via the 'yocto-kernel feature list' command, if the
> =A0 =A0--used option to that command is specified. =A0This command
> =A0 =A0essentially removes a machine-specific KERNEL_FEATURE from the
> =A0 =A0linux-yocto .bbappend for the BSP.
>
>
> 'yocto-kernel config list' - List a BSP's modifiable config options
> -------------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-config-list - List the modifiable set of bare kernel
> =A0 =A0config options for a BSP
>
> SYNOPSIS
> =A0 =A0yocto-kernel config list <bsp-name>
>
> DESCRIPTION
> =A0 =A0This command lists the 'modifiable' config items for a BSP
> =A0 =A0i.e. the items which are eligible for modification or removal by
> =A0 =A0other yocto-kernel commands.
>
> =A0 =A0'modifiable' config items are the config items contained a BSP's
> =A0 =A0foo.cfg base config.
>
>
> 'yocto-kernel config add' - Add or modify a BSP's kernel config options
> -----------------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-config-add - Add or modify bare kernel config options
> =A0 =A0for a BSP
>
> SYNOPSIS
> =A0 =A0yocto-kernel config add <bsp-name> [<CONFIG_XXX=3Dx> ...]
>
> DESCRIPTION
> =A0 =A0This command adds one or more CONFIG_XXX=3Dx items to a BSP's
> =A0 =A0foo.cfg base config. =A0If a config item is already present, the n=
ew
> =A0 =A0value will simply overwrite the old value.
>
> =A0 =A0NOTE: It's up to the user to determine whether or not the config
> =A0 =A0options being added make sense or not - this command does no
> =A0 =A0sanity checking or verification of any kind to ensure that a
> =A0 =A0config option really makes sense and will actually be set in in
> =A0 =A0the final config. =A0For example, if a config option depends on
> =A0 =A0other config options, it will be turned off by kconfig if the
> =A0 =A0other options aren't set correctly.
>
>
> 'yocto-kernel config rm' - Remove BSP kernel config options
> -----------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-config-rm - Remove bare kernel config options from a
> =A0 =A0BSP
>
> SYNOPSIS
> =A0 =A0yocto-kernel config rm <bsp-name> [<CONFIG_XXX> ...]
>
> DESCRIPTION
> =A0 =A0This command removes (turns off) one or more CONFIG_XXX items to a
> =A0 =A0BSP's foo.cfg base config.
>
> =A0 =A0The set of config items available to be removed by this command
> =A0 =A0for a BSP can be found via the 'yocto-kernel config list'
> =A0 =A0command.
>
>
> 'yocto-kernel patch add' - Patch the Yocto kernel for a specific BSP
> --------------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-patch-add - Patch the Yocto kernel for a specific BSP
>
> SYNOPSIS
> =A0 =A0yocto-kernel patch add <bsp-name> [<PATCH> ...]
>
> DESCRIPTION
> =A0 =A0This command adds one or more patches to a BSP's machine branch.
> =A0 =A0The patch will be added to the BSP's linux-yocto kernel SRC_URI
> =A0 =A0and will be guaranteed to be applied in the order specified.
>
> =A0 =A0NOTE: It's up to the user to determine whether or not the patches
> =A0 =A0being added makes sense or not - this command does no sanity
> =A0 =A0checking or verification of any kind to ensure that a patch can
> =A0 =A0actually be applied to the BSP's kernel branch; it's assumed that
> =A0 =A0the user has already done that.
>
>
> 'yocto-kernel migrate' - Move local kernel config/patches to a git repo
> -----------------------------------------------------------------------
>
> NAME
> =A0 =A0yocto-kernel-migrate - Move local kernel config/patches to a git r=
epo
>
> SYNOPSIS
> =A0 =A0yocto-kernel migrate <bsp-name> <local linux-yocto repo>
>
> DESCRIPTION
> =A0 =A0This command converts the kernel configuration changes, patches,
> =A0 =A0and features collected in a BSP's linux-yocto SRC_URI into an
> =A0 =A0equivalent set of commits in a local linux-yocto repo. =A0On
> =A0 =A0success, the local files will named in the SRC_URI will be
> =A0 =A0removed, and the linux-yocto .bbappend will be fixed up to point
> =A0 =A0to the new repo.
>
> =A0 =A0NOTE: The user is responsible for submitting the generated commits
> =A0 =A0upstream and subsequently modifying the kernel .bbappend to
> =A0 =A0use the upsteam kernel repo.
>
>
> The design of the 'yocto-bsp create' templating mechanism
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> This section describes the details of the templating mechanism used by
> 'yocto-bsp' to generate BSPs.
>
> Generating a new BSP is basically a templating exercise. =A0A given BSP
> is comprised of a combination of a set of common files that all BSPs
> share along with a set of files specific to a given BSP type. =A0Many of
> the files in both sets need to be configured according to the needs of
> the BSP; this also extends to the naming and existence of the files
> themselves.
>
> The templating scheme used in the Yocto tool is partly inspired by
> ideas from web2py, but adapted to a more general input mechanism for
> the specific problems posed by Yocto.
>
> There are no special files, just marked-up BSP metadata and kernel
> configuration, .scc, and patch files.
>
> The Yocto BSP markup is meant to be extremely simple and limited to
> pretty much this initial set of items; it is however designed to be
> extensible enough to cover any future need.
>
> Anything within double braces is considered to be a Yocto BSP markup
> tag:
>
> {{ foo }}
>
> Anything within double braces and starting with {{=3D is considered to
> implement simple variable replacement, where variables are by default
> simply keys in a dictionary representing the BSP and containing values
> for the whole BSP:
>
> {{=3Dmachine}}
>
> The above means that the whole expression will be replaced with the
> value of the 'machine' entry in the BSP dictionary. =A0The syntax is
> actually shorthand for the equivalent Python code for accessing the
> value of a given key, but isn't restricted to that e.g. it could
> reference a local variable defined in a previous tag, for instance.
>
> In every other case, the 'yocto-bsp' tool will pre-process the
> contents looking for certain keywords at the beginning. =A0The rest it
> will treat as Python code. =A0As of now, there's only one keyword that's
> meaningful:
>
> {{ input }}
>
> which signals that anything contained is input-related. =A0The
> 'yocto-bsp' implementation will use this information to prompt the
> user for input. =A0Under certain conditions e.g. when the user has
> already supplied this information via a file for instance, anything
> contained in this is considered a no-op and ignored.
>
> Anything else is considered to be Python code and will be directly
> incorporated into the BSP generation code.
>
> {{ if keyboard =3D=3D False: }}
>
> Note also that any of the above can also be used in file and directory
> names, which will also be processed in the same way; this allows us to
> avoid extraneous files is consistent with the rest of the scheme.
>
> Internally, the way things are envisioned to work is that the tool
> will first read in the set of files that makes up the BSP for the
> chosen architecture. =A0It will then pre-process all the 'input' tags it
> finds and use that to prepare a series of text-based prompts to
> retrieve the needed information from the user. =A0The end result of
> presenting all that to the user will be a completd BSP dictionary
> containing all the key/value pairs needed to fill in the BSP. =A0Once
> that information is available, it will make a second pass over the
> remaining tags and fill them in with the Python code needed to
> retrieve and replace the remaining tags with their corresponding
> values from the BSP dictionary (or any other source possibly
> introduced by other tags). =A0The end result of this second pass will be
> executed as Python code to produce the final BSP metadata.
>
> For the first version, the 'input' tags will be used to construct a
> series of text-based questions for the user. =A0The design, however,
> should make it relatively trivial to create an application that could
> create real GUI that would do the same thing at some later point. =A0For
> example, such an application could use the input tags to generate a
> web-based form, which would return the results gathered from the user
> to a web service in the form of a json blob that could directly be
> converted into the BSP Python dictionary needed. e.g. the browser
> would return something like this to the web service, which would in
> turn send it to the 'bsp-create' library function to create the final
> BSP.
>
> {
> =A0 =A0"machine": "foo",
> =A0 =A0"kmachine": "/yocto/standard/base",
> =A0 =A0"tunefile": "tune-atom",
> =A0 =A0"smp": true,
> =A0 =A0"xserver": {
> =A0 =A0 =A0 =A0 =A0 =A0 "xserver-choice": "xserver-i915",
> =A0 =A0},
> =A0 =A0"kfeatures": [
> =A0 =A0 =A0 =A0 =A0 =A0 "kfeature": "features/taskstats",
> =A0 =A0 =A0 =A0 =A0 =A0 "kfeature": "cfg/sound",
> =A0 =A0 =A0 =A0 =A0 =A0 ]
> =A0 =A0},
> =A0 =A0touchscreen: false,
> =A0 =A0keyboard: true
> }
>
> Below are some concrete examples of specific tags and how they're used.
>
> Here's a simple example of markup that describes information needed
> from the user about touchscreen and keyboard capabilities in the
> formfactor 'machconfig' file:
>
> # Assume a USB mouse and keyboard are connected
> {{ input type:"boolean" name:"touchscreen" msg:"Does your BSP have a touc=
hscreen?" }}
> HAVE_TOUCHSCREEN=3D{{=3Dtouchscreen}}
> {{ input type:"boolean" name:"keyboard" msg:"Does your BSP have a keyboar=
d?" }}
> HAVE_KEYBOARD=3D{{=3Dkeyboard}}
>
> For instance, the touchscreen 'input' tag above describes everything a
> UI would need in order to retrieve an answer from the user as to
> whether the hardware in question has a touchscreen or not.
>
> The 'type' key comprises a small set of possible input types that
> include things like 'boolean' (yes/no) choices and lists of choices
> (type:"choicelist").
>
> The 'name' key provides a means for later markup to access the value
> of the variable containing the user's answer for that input. =A0For
> example, the name:"touchscreen" simply references the value in the BSP
> dictionary that was filled in with the user's response to the question
> which was formed and presented to the user using the "msg" tag in the
> input tag.
>
> Below the input tag is the actual content that will be rendered into
> the 'machconfig' file, but with the {{=3D}} portion replaced with the
> 'touchscreen' value supplied by the user i.e.:
>
> HAVE_TOUCHSCREEN=3D{{=3Dtouchscreen}}
>
> will be rendered as:
>
> HAVE_TOUCHSCREEN=3D0
>
> Assuming the user answered 'no'.
>
> Another interesting thing to note about this example is that in Yocto
> BSPs, the machconfig files are contained within a filesystem location
> that includes the machine name in the path e.g.
>
> recipes-bsp/formfactor/formfactor/foo/machconfig
>
> To accomplish this, the directory names themselves contain markup that
> gets processed and replaced by the tool:
>
> recipes-bsp/formfactor/formfactor/{{=3Dmachine}}/machconfig
>
> Here, the {{=3Dmachine} directory is renamed to /foo to match the
> machine name of the BSP.
>
> Here's a more involved example, markup included in the
> i386/conf/{{=3Dmachine}}.conf file:
>
> {{ input type:"boolean" name:"xserver" msg:"Do you need support for X?" }=
}
> {{ if xserver: }}
> XSERVER ?=3D "${XSERVER_IA32_BASE} \
> =A0 =A0 =A0 =A0 =A0 ${XSERVER_IA32_EXT} \
> {{ input type:"choicelist" name:"xserver_choice" msg:"Please select an xs=
erver for this machine" }}
> {{ input type:"choice" val:"xserver-vesa" msg:"VESA xserver support" }}
> =A0 =A0 =A0 =A0 =A0 ${XSERVER_IA32_VESA} \
> {{ input type:"choice" val:"xserver-emgd" msg:"EMGD xserver support (prop=
rietary)" }}
> =A0 =A0 =A0 =A0 =A0 ${XSERVER_IA32_EMGD} \
> {{ input type:"choice" val:"xserver-i915" desc:"i915 xserver support" }}
> =A0 =A0 =A0 =A0 =A0 ${XSERVER_IA32_I915} \
> =A0 =A0 =A0 =A0 =A0 "
>
> In this case, we start off with a boolean 'input' question asking if
> the BSP needs to support X. =A0The following line is straight Python
> code which essentially skips the following sections (until a blank
> line) if the user's answer was 'no', or if the answer was 'yes',
> creates a further query to the user asking which xserver type to use.
> In the latter case, the input type is a list of choices resulting in
> the values specified by the 'val' tag appearing as the value for the
> 'xserver_choice' dictionary key.
>
> Code further down in the .conf file can also make use of this
> information to include or exclude content based on the value of the
> xserver_choice variable:
>
> {{ if xserver_choice =3D=3D "xserver-emgd": }}
> PREFERRED_VERSION_xserver-xorg ?=3D "1.9.3"
> PREFERRED_VERSION_mesa-dri ?=3D "7.11"
> PREFERRED_VERSION_emgd-driver-bin ?=3D "1.8"
>
> {{ if xserver_choice =3D=3D "xserver-vesa" or xserver_choice =3D=3D "xser=
ver-emgd": }}
> APPEND +=3D "video=3Dvesafb vga=3D0x318"
>
> Note again that the tags used to determine whether or not to include
> content simply contain Python code used to directly implement the
> needed logic. =A0Not only is there no need for the user to learn a
> special-purpose language, but gives the tool the flexibility to add
> essentially any kind of processing logic needed in the future.
>
> In the case of xserver choices, we also need to use the value of
> xserver_choice to determine which xorg.conf file to add to the BSP.
> Again, consistent with the rest of the markup processing, this is
> seamlessly accomplished by adding markup to the filenames themselves:
>
> recipes-graphics/xserver-xf86-config/{{=3Dmachine}}/{{ if xserver_choice =
=3D=3D xserver_emgd: }} xorg.conf
> recipes-graphics/xserver-xf86-config/{{=3Dmachine}}/{{ if xserver_choice =
=3D=3D xserver_vesa: }} xorg.conf
> recipes-graphics/xserver-xf86-config/{{=3Dmachine}}/{{ if xserver_choice =
=3D=3D xserver_i915: }} xorg.conf
>
> In this case, the filenames actually contain Python code that
> describes the conditions needed to include those particular files.
>
> Here's another example, again making use of general-purpose Python in
> the markup to generate an open-ended list of choices for the user, in
> this case in linux-yocto_3.0.bbappend, to generate a list of available
> KERNEL_FEATURES for the user to choose from:
>
> {{ input type:"checklist" name:"kfeatures" gen:"fetch-kernel-features()" =
msg:"Please choose the kernel features to use in this BSP on" }}
> {{ for kfeature in kfeatures: }}
> KERNEL_FEATURES_append_{{=3Dmachine}} +=3D {{=3Dkfeature}}
>
> In this case an 'input' tag calls an internally-defined yocto-bsp
> function named fetch_kernel_feature() that generates the list of
> available KERNEL_FEATURES. =A0The output of that call is a Python list
> containing the features, which is assigned to the 'kfeatures'
> variable. =A0The next tag contains Python code that simply iterates over
> that list, and uses the value of the current feature, 'kfeature', to
> append the chosen kernel features to the list of features used by the
> BSP.
>
> Finally, because the kernel components are actually part of the BSP
> metadata, the user-specified values are also available in the
> processing of those files. =A0For instance, in the below case, we can
> use the xserver_choice to include or exclude specific kernel
> configuration settings in the
> recipes-kernel/linux/linux-yocto/{{=3Dmachine}}.scc file associated with
> the BSP:
>
> {{ if xserver_choice =3D=3D "xserver-emgd": }}
> include features/drm-emgd/drm-emgd.scc
>
> ---
>
> For reference, here's an example of how the tools are expected to be
> laid out. =A0Everything is contained within a 'bsp-tools' directory
> under '/scripts'. =A0The 'common' portion, containing the files common
> to every BSP are:
>
> bsp-tools/
> bsp-tools/yocto-bsp.py
> bsp-tools/yocto-kernel.py
> bsp-tools/bsp-cache
> bsp-tools/bsp-cache/target
> bsp-tools/bsp-cache/target/arch
> bsp-tools/bsp-cache/target/arch/common
> bsp-tools/bsp-cache/target/arch/common/README.sources
> bsp-tools/bsp-cache/target/arch/common/binary
> bsp-tools/bsp-cache/target/arch/common/binary/.gitignore
> bsp-tools/bsp-cache/target/arch/common/recipes-kernel
> bsp-tools/bsp-cache/target/arch/common/recipes-kernel/linux
> bsp-tools/bsp-cache/target/arch/common/COPYING.MIT
> bsp-tools/bsp-cache/target/arch/common/README
> bsp-tools/bsp-cache/target/arch/common/recipes-graphics
> bsp-tools/bsp-cache/target/arch/common/recipes-graphics/xorg-xserver
> bsp-tools/bsp-cache/target/arch/common/recipes-graphics/xorg-xserver/{{ i=
f xserver: }} xserver-xf86-config_0.1.bbappend
> bsp-tools/bsp-cache/target/arch/common/conf
> bsp-tools/bsp-cache/target/arch/common/conf/layer.conf
> bsp-tools/bsp-cache/target/arch/common/recipes-core
> bsp-tools/bsp-cache/target/arch/common/recipes-core/tasks
> bsp-tools/bsp-cache/target/arch/common/recipes-core/tasks/task-core-tools=
.bbappend
> bsp-tools/bsp-cache/target/arch/common/recipes-bsp
> bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor
> bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor_=
0.0.bbappend
> bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor
> bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor/=
{{=3Dmachine}}
> bsp-tools/bsp-cache/target/arch/common/recipes-bsp/formfactor/formfactor/=
{{=3Dmachine}}/machconfig
>
> The BSP-specific files are contained in directories named for the
> architecture. =A0In this case, only the i386 files are expanded as an
> example.
>
> bsp-tools/bsp-cache/target/arch/arm
> bsp-tools/bsp-cache/target/arch/powerpc
> bsp-tools/bsp-cache/target/arch/i386
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_=
3.0.bbappend
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto_3.0=
.bbappend
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=
=3Dmachine}}.cfg
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=
=3Dmachine}}.scc
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=
=3Dmachine}}-preempt-rt.scc
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto/{{=
=3Dmachine}}-standard.scc
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/=
{{=3Dmachine}}.cfg
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/=
{{=3Dmachine}}.scc
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/=
{{=3Dmachine}}-preempt-rt.scc
> bsp-tools/bsp-cache/target/arch/i386/recipes-kernel/linux/linux-yocto-rt/=
{{=3Dmachine}}-standard.scc
> bsp-tools/bsp-cache/target/arch/i386/recipes-graphics
> bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config
> bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config=
/{{=3Dmachine}}
> bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config=
/{{=3Dmachine}}/{{ if xserver-choice =3D=3D xserver-emgd: }} xorg.conf
> bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config=
/{{=3Dmachine}}/{{ if xserver-choice =3D=3D xserver-vesa: }} xorg.conf
> bsp-tools/bsp-cache/target/arch/i386/recipes-graphics/xserver-xf86-config=
/{{=3Dmachine}}/{{ if xserver-choice =3D=3D xserver-i915: }} xorg.conf
> bsp-tools/bsp-cache/target/arch/i386/conf
> bsp-tools/bsp-cache/target/arch/i386/conf/machine
> bsp-tools/bsp-cache/target/arch/i386/conf/machine/{{=3Dmachine}}.conf
> bsp-tools/bsp-cache/target/arch/mips
> bsp-tools/bsp-cache/target/arch/x86_64
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


