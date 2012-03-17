Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C12E9E01206
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 22:32:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2012 22:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129982631"
Received: from unknown (HELO localhost) ([10.255.15.231])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2012 22:32:10 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Sat, 17 Mar 2012 00:30:55 -0500
Message-Id: <cover.1331961098.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/8] Yocto BSP tools, version 2
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
X-List-Received-Date: Sat, 17 Mar 2012 05:32:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset implements the 'yocto-bsp' and 'yocto-kernel' BSP tools
previously described in some detail in this RFC posting:

https://lists.yoctoproject.org/pipermail/yocto/2011-December/006111.html

For version 2, I think I've addressed all the comments I got from Darren
as well as the other comments from private e-mails.  The most visible changes:

- removed the "depends-on" properties and values
- plumbing changes to allow for better choicelist deferrals
- plumbing changes to allow for proper qemu branch defaults
- greatly simplified the kernel recipe templates
- made defaults consistent throughout
- better layer parsing
- copyright fixes
- removed topic branches from branch listings
- fixed various bugs

I've also created a couple wiki pages that show step-by-step examples
of how to create a new BSP using the tools and how to add, remove, and
list kernel patches and config items:

https://wiki.yoctoproject.org/wiki/Transcript:_Using_the_Yocto_BSP_tools_to_create_a_qemu_BSP
https://wiki.yoctoproject.org/wiki/Transcript:_Using_the_Yocto_BSP_tools_to_manage_kernel_patches_and_config_items

With the functionality implemented by this patchset, you can:

- create a new Yocto BSP for any architecture supported Yocto, as well
  as qemu versions of the same.  The default mode of operation when
  invoked from the command-line is to prompt the user for information
  needed to generate the BSP.  For the current set of BSPs, the user
  is prompted for various important parameters such as which kernel to
  use, which branch of that kernel to use (or re-use), whether or not
  to use X, and if so, which drivers to use, whether to turn on SMP,
  whether the BSP has a keyboard, touchscreen, etc.

  There's also an option (-i) that allows all the necessary
  information to be supplied directly as a JSON object instead, which
  allows the built-in prompting to be bypassed.  This is mainly for
  use by developers of alternate UIs, such as the ADT integration that
  should now be possible with what's provided here.

  (available via the 'yocto-bsp create' command)

- list the architectures available for BSP generation (using the
  'yocto-bsp list karch' command).  You can also list the properties
  and possible values for those properties for all the input items
  needed for a given architecture in order to create a bsp.  The
  latter is mainly useful for developers of alternate UIs.  See the
  documention in the built-in help system for details of the extensive
  data displayed by this command.

  (available via the 'yocto-bsp list' command)

- add and remove kernel patches to/from the BSP, as well as list the
  kernel patches attached to the active kernel recipe for the BSP.

  (available via the 'yocto-kernel patch add/rm/list' commands)

- add and remove kernel config items to/from the BSP, as well as list
  the user-defined config items attached to the active kernel recipe
  for the BSP.

  (available via the 'yocto-kernel config add/rm/list' commands)

The built-in help system that makes it easy to drill down at any time
and remind oneself of the syntax required for any specific command:

Simply entering the name of the command, or the command along with
'help' will display a list of the available sub-commands. For example:

$ yocto-bsp
$ yocto-bsp help

Usage:

 Create a customized Yocto BSP layer.

 usage: yocto-bsp [--version] [--help] COMMAND [ARGS]

 The most commonly used 'yocto-bsp' commands are:
    create	      Create a new Yocto BSP
    list	      List available values for options and BSP properties

 See 'yocto-bsp help COMMAND' for more information on a specific command.


Options:
  --version    show program's version number and exit
  -h, --help   show this help message and exit
  -D, --debug  output debug information


Similarly, entering just the name of the subcommand will show the
detailed usage for that command:

$ yocto-bsp create

Usage:

 Create a new Yocto BSP

 usage: yocto-bsp create <bsp-name> <karch> [-o <DIRNAME> | --outdir <DIRNAME>]
	    [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]

 This command creates a Yocto BSP based on the specified parameters.
 The new BSP will be a new Yocto BSP layer contained by default within
 the top-level directory specified as 'meta-bsp-name'.	The -o option
 can be used to place the BSP layer in a directory with a different
 name and location.

 ...


For any subcommand, you can also use the word 'help' just before the
subcommand to get more extensive documentation on the subcommand:

$ yocto-bsp help create

NAME
    yocto-bsp create - Create a new Yocto BSP

SYNOPSIS
    yocto-bsp create <bsp-name> <karch> [-o <DIRNAME> | --outdir <DIRNAME>]
	[-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]

DESCRIPTION
    This command creates a Yocto BSP based on the specified
    parameters.  The new BSP will be a new Yocto BSP layer contained
    by default within the top-level directory specified as
    'meta-bsp-name'.  The -o option can be used to place the BSP layer
    in a directory with a different name and location.

    The value of the 'karch' parameter determines the set of files
    that will be generated for the BSP, along with the specific set of
    'properties' that will be used to fill out the BSP-specific
    portions of the BSP.

    ...

    NOTE: Once created, you should add your new layer to your
    bblayers.conf file in order for it to be subsquently seen and
    modified by the yocto-kernel tool.

    NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
    presence of the of the meta-intel layer, so you should also have a
    meta-intel layer present and added to your bblayers.conf as well.


So, armed simply with the knowledge that there are two Yocto BSP
commands, 'yocto-bsp' and 'yocto-kernel', with the help of the help
system and what's implemented by those commands, you should be able to
create a BSP from scratch and do basic configuration and maintenance
of the kernel without ever seeing a Yocto metadata file.

What's not implemented, or what still needs work:

- No support yet for kernel features.
- The 'publish' mechanism isn't yet implemented; currently this is all
  done in 'recipe-space'.
- The template data (the BSP-specific files in the bsp/substrate dir) for
  some specific architectures is untested and probably woefully
  incomplete or too specific (I didn't test what I don't have hardware
  for)
- I need to document the template 'language' in order to make that
  easier.  Conceptually, it should be relatively easy to understand by
  looking at the other template files - basically they're just
  straight Yocto metadata files marked up with variable replacement
  tags {{=xxx}} and inline Python in any other tag.

I have tested all the commands for the entire workflow - BSP creation,
kernel patch and configuration commands - for the following
architectures, and have successfully built and booted the generated
and modified BSPs for each:

- qemuarm
- qemux86
- x86
- x86_64

Aside from any other bugs, some work probably still needs to be done
for some of the other non-qemu architectures in order to get them to a
point where BSPs generated for them would stand a reasonable chance of
booting as do the machines tested above.

My plans are to implement the missing functionality as follow-on
patches shortly.  In the meantime, I think the tools should be
functional enough to allow people to accomplish the basic tasks
related to BSP creation and kernel configuration for a Yocto BSP.

The following changes since commit 26a46938d3ea1821e7bec4fa6cc8379babad238b:
  Gary Thomas (1):
        bitbake/fetch2: Fix typo which broke use of tarballs

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-tools.v2
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/yocto-bsp-tools.v2

Tom Zanussi (8):
  yocto-bsp: add BSP template files
  yocto-bsp-tools: add bsp library
  yocto-bsp: add templating engine
  yocto-bsp: add kernel interface
  yocto-bsp-tools: add help/usage
  yocto-bsp: add some useful constants
  yocto-bsp: new script
  yocto-kernel: new script

 scripts/lib/bsp/__init__.py                        |   22 +
 scripts/lib/bsp/engine.py                          | 1436 ++++++++++++++++++++
 scripts/lib/bsp/help.py                            |  570 ++++++++
 scripts/lib/bsp/kernel.py                          |  723 ++++++++++
 .../target/arch/arm/conf/machine/{{=machine}}.conf |   87 ++
 .../{{ if xserver == \"y\": }} xorg.conf"          |   34 +
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
 .../linux/files/{{=machine}}-non_hardware.cfg      |   30 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |  336 +++++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    7 +
 .../arm/recipes-kernel/linux/kernel-list.noinstall |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +
 .../bsp/substrate/target/arch/common/COPYING.MIT   |   17 +
 .../lib/bsp/substrate/target/arch/common/README    |  118 ++
 .../substrate/target/arch/common/README.sources    |   17 +
 .../substrate/target/arch/common/conf/layer.conf   |   10 +
 .../formfactor/formfactor/{{=machine}}/machconfig  |    5 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../tasks/task-core-tools-profile.bbappend         |    2 +
 .../arch/i386/conf/machine/{{=machine}}.conf       |   48 +
 ...erver_choice == \"xserver_emgd\": }} xorg.conf" |   48 +
 ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 +
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 +
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |   54 +
 .../recipes-kernel/linux/files/{{=machine}}.scc    |   30 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +
 .../arch/mips/conf/machine/{{=machine}}.conf       |   28 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |    1 +
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    8 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |   53 +
 .../recipes-kernel/linux/files/user-config.cfg     |    4 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |  163 +++
 .../recipes-kernel/linux/files/{{=machine}}.scc    |   11 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +
 .../arch/qemu/conf/machine/{{=machine}}.conf       |   59 +
 .../xserver-xf86-config/{{=machine}}/xorg.conf     |   69 +
 ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 +
 .../recipes-kernel/linux/files/user-config.cfg     |    4 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |   30 +
 .../linux/files/{{=machine}}-standard.scc          |   30 +
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    6 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   61 +
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   61 +
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   63 +
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   63 +
 .../arch/x86_64/conf/machine/{{=machine}}.conf     |   32 +
 ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 +
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 +
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
 .../linux/files/{{=machine}}-standard.scc          |    8 +
 .../recipes-kernel/linux/files/{{=machine}}.cfg    |   47 +
 .../recipes-kernel/linux/files/{{=machine}}.scc    |   17 +
 .../recipes-kernel/linux/kernel-list.noinstall     |    4 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   39 +
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   39 +
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   41 +
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   39 +
 scripts/lib/bsp/tags.py                            |   47 +
 scripts/yocto-bsp                                  |  143 ++
 scripts/yocto-kernel                               |  232 ++++
 87 files changed, 5838 insertions(+), 0 deletions(-)
 create mode 100644 scripts/lib/bsp/__init__.py
 create mode 100644 scripts/lib/bsp/engine.py
 create mode 100644 scripts/lib/bsp/help.py
 create mode 100644 scripts/lib/bsp/kernel.py
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/README
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/README.sources
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/binary/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{=machine}}/machconfig
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"x86\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 scripts/lib/bsp/tags.py
 create mode 100755 scripts/yocto-bsp
 create mode 100755 scripts/yocto-kernel


