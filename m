Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFFFAE01404
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:37:58 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2012 07:37:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,267,1355126400"; d="scan'208";a="230540198"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 07:37:54 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 12 Dec 2012 07:37:53 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.144]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.43]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 07:37:52 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Otavio Salvador
	<otavio@ossystems.com.br>,
	McClintock Matthew-B29882 <B29882@freescale.com>, 
	Hollis Blanchard <hollis_blanchard@mentor.com>, Robert Berger
	<robert.berger@reliableembeddedsystems.com>, Fredrik Hugosson
	<fredrik.hugosson@axis.com>, "Zanussi, Tom" <tom.zanussi@intel.com>,
	"Ashfield, Bruce" <Bruce.Ashfield@windriver.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "Wold, Saul" <saul.wold@intel.com>,
	William Mills <wmills@ti.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>, "Toomey, John" <john.toomey@intel.com>, 
	"Herbert, Marc" <marc.herbert@intel.com>, Koen Kooi
	<koen@dominion.thruhere.net>, Khem Raj <raj.khem@gmail.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: New Documentation: Linux Kernel Development with the Yocto
	Project
Thread-Index: AQHN1/l3NkHaA8kj3kiOpZ8TRV1u1ZgV5DMA
Date: Wed, 12 Dec 2012 15:37:52 +0000
Message-ID: <CCEE6353.18A16%david.c.stewart@intel.com>
In-Reply-To: <50C7C541.40602@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.3.120616
x-originating-ip: [10.237.25.17]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 12 Dec 2012 09:43:18 -0800
Subject: Re: New Documentation: Linux Kernel Development with the Yocto Project
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
X-List-Received-Date: Wed, 12 Dec 2012 15:37:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A78927D33BF7E04A9BACFD35AD18767F@intel.com>
Content-Transfer-Encoding: quoted-printable

A good read, thanks!

Dave

On 12/12/12 12:44 AM, "Darren Hart" <dvhart@linux.intel.com> wrote:

>In response to much feedback on the linux-yocto recipes and the associated
>kernel tools, we have made a number of improvements in an attempt to
>make them
>more accessible. In particular, the tools now allow for using your own
>sources
>and configurations in a fairly simple manner, while providing a path to
>more
>complex meta-data management.
>
>The following document is intended to demystify the Yocto Project Linux
>Kernel
>Tools now that some of this work has been done.  Ultimately, the goal of
>this
>document is to provide a "task-based" approach to developing Linux kernel
>recipes and meta-data with the Yocto Project. It should present
>information more
>or less in the order a developer is likely to need it. Start off by
>changing a
>config and adding a patch, then using your own sources, incorporating
>out of tree
>drivers, then diving into more complex configuration and source
>management.
>
>This document has seen some review prior to this announcement. I wanted
>to thank
>everyone for the feedback provided. I have done my best to incorporate
>it. In a
>couple cases I felt the additions were better left to "How Do I" wiki
>pages or a
>separate manual (such as the Development Manual or the BSP Guide). The
>following
>is what I am submitting to Scott R, our tech writer, for a full review and
>docbookification for release with the 1.4 Yocto Project release.
>Eventually I
>would like to see the following sections added to the document.
>
>1) Workflow
>   * Group environements
>   * Local sources
>2) Advanced Source Management
>   * working outside of bitbake
>   * generating the git tree from the meta-data
>3) Examples
>
>For now, I feel this document should go a long way towards clarifying
>the use of
>the kernel tools and the linux-yocto recipes.
>
>I would still greatly appreciate any additional feedback and there is
>still
>plenty of time to incorporate that feedback prior to release. So if you
>haven't
>already and have the inclination, I'd welcome your review!
>
>
>
>Linux Kernel Development with the Yocto Project
>
>
>Table of Contents
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>INTRODUCTION
>  Yocto Project Linux Kernel Recipes
>
>COMMON TASKS
>  Preparing a Layer
>  Modifying an Existing Recipe (Mostly covered by the Dev Manual)
>  Applying Patches
>  Changing the Config
>  Iterative Development
>    Generating Configuration Files
>    Modifying Source Code
>  Working with Your Own Sources
>  Incorporating Out-of-tree Modules
>
>ADVANCED META-DATA
>  Using Meta-Data in a Recipe
>  Meta-Data Location
>    Recipe-Space Meta-Data
>    In-Tree Meta-Data
>  Meta-Data Syntax
>    Configuration
>    Patches
>    Features
>    Kernel Types
>    BSPs
>  Machine Branches
>  Feature Branches
>  SCC Reference
>
>EXAMPLES
>
>FAQ (Maybe put this online as a wiki?)
>  How do I use my own Linux kernel .config?
>  How do I create configuration fragments?
>  How do I use my own Linux kernel sources?
>  How do I install/not-install the kernel image on the rootfs?
>  How do install a specific kernel module?
>  How do I changed the Linux kernel command line?
>
>
>1 Introduction
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Regardless of how you intend to make use of the Yocto Project, chances
>are you
>are going to need to work with the Linux kernel. The Yocto Project
>provides a
>powerful set of tools for managing Linux kernel sources and
>configuration data.
>If you want to make a single configuration change, apply a couple of
>patches, or
>work with your own sources, the Yocto Project has tooling in place to
>help you
>do it.
>
>
>1.1 Yocto Project Linux Kernel Recipes
>--------------------------------------
>Each Yocto Project release introduces a new set of linux-yocto kernel
>recipes,
>tracking the latest upstream developments and introducing newly supported
>platforms. In addition to the new kernel recipes, the previous recipes are
>refreshed and supported for at least one additional release. As they
>align,
>these previous releases are updated to include the latest from the LTSI
>project.
>Besides these recipes, a linux-yocto-dev recipe is available for working
>with
>the very latest in upstream Linux kernel development as well as meta-data
>development.
>
>If you do not maintain your own kernel sources and need to make only
>minimal
>changes to the sources, these recipes provide a vetted base upon which
>to layer
>your changes. Doing so allows you to benefit from the continual kernel
>integration and testing performed during development of the Yocto Project.
>
>If, instead, you have a very specific Linux kernel source tree and are
>unable to
>align with one of the many official linux-yocto releases, an alternative
>exists by which you can use the Yocto Project Linux kernel tools with
>your own
>sources.
>
>The sections that follow provide instructions for completing specific
>Linux
>kernel development tasks. They assume familiarity with working with
>bitbake
>recipes and basic open-source development tools. Understanding these
>concepts
>will facilitate the process of working with the kernel recipes. If you
>find you
>need some additional background, please be sure to review and understand
>the
>following documentation:
>
>o Yocto Project Getting Started Guide
>o Yocto Project Development Manual
>  - 4.3 Modifying Temporary Source Code
>  - 5.1 Understanding and Creating Layers
>  - 4.1.2 Modifying the Kernel
>    (This section should be retired, as well as 5.6, 5.7 - with this
>document
>     providing the necessary information)
>
>Finally, while this document focuses on the manual creation of recipes,
>patches,
>and configuration files, the Yocto Project BSP tools are available to
>automate
>this process with existing content and work well to create the initial
>framework
>and boilerplate code. For details, refer to the Yocto Project BSP
>Developer's
>Guide.
>
>
>2 Common Tasks
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>
>2.1 Preparing a Layer
>---------------------
>Customizing recipes is best done in a layer with bbappend files. Layers
>also
>provide a convenient mechanism to create your own recipes. This guide
>assumes
>you will be working from within a layer independent from those released
>with the
>Yocto Project. For details on how to create and work with layers, refer to
>section 5.1 Understanding and Creating Layers in the Yocto Project
>Development
>Manual.
>
>(Kernel specific directions in 5.7.4)
>
>
>2.2 Modifying an Existing Recipe
>--------------------------------
>In many cases, you can customize an existing linux-yocto recipe to meet
>the
>needs of your project. Each release of the Yocto Project provides a few
>Linux
>kernel recipes to choose from. To get started, prepare a layer and a
>bbappend
>file corresponding to the recipe you wish to modify.
>
>See [New example in Dev Manual] for instructions to create a minimal
>layer.
>
>The bbappend will typical be located at the following location relative
>to the
>layer (if modifying the linux-yocto_3.4.bb recipe):
>
>	recipes-kernel/linux/linux-yocto_3.4.bbappend
>
>And should contain the following text initially:
>
>	FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
>
>The ${PN} will expand to "linux-yocto" in this example. Any new files
>added to
>modify the recipe should then be added to the following path within the
>layer:
>
>	recipes-kernel/linux/linux-yocto/
>
>NOTE: If you are working on a new machine BSP, be sure to refer to the
>Yocto
>Project Board Support Package Developer's Guide.
>
>
>2.2.1 Applying Patches
>----------------------
>If you have a patch, or a small series of patches, to apply to the Linux
>kernel
>source, you can do so just as you would with any other recipe. You first
>copy
>the patches to the path added to FILESEXTRAPATHS in the bbappend file as
>described in 2.2 and then reference them in the SRC_URI.
>
>For example, you can apply a three patch series by adding the following
>lines to
>your linux-yocto bbappend file in your layer:
>
>	SRC_URI +=3D "file://0001-first-change.patch"
>	SRC_URI +=3D "file://0002-first-change.patch"
>	SRC_URI +=3D "file://0003-first-change.patch"
>
>At the next build, bitbake will detect the change in the recipe and
>fetch and
>apply the patches before rebuilding the Linux kernel.
>
>
>2.2.2 Changing the Config
>-------------------------
>Making wholesale or incremental changes to the Linux kernel config can
>be made
>by including a defconfig or configuration fragments in the SRC_URI.
>
>If you have a complete Linux kernel .config file you want to use, copy it
>as
>"defconfig" to the ${FILES} directory and add the following line to your
>linux-yocto bbappend file in your layer:
>
>	SRC_URI +=3D "file://defconfig"
>
>Generally speaking, the preferred approach is to determine the incremental
>change you want to make and add that as a fragment. For example, if you
>wanted
>to add support for a basic serial console, create a file named
>"8250.cfg" in the
>${FILES} directory with the following content (without indentation):
>
>	CONFIG_SERIAL_8250=3Dy
>	CONFIG_SERIAL_8250_CONSOLE=3Dy
>	CONFIG_SERIAL_8250_PCI=3Dy
>	CONFIG_SERIAL_8250_NR_UARTS=3D4
>	CONFIG_SERIAL_8250_RUNTIME_UARTS=3D4
>	CONFIG_SERIAL_CORE=3Dy
>	CONFIG_SERIAL_CORE_CONSOLE=3Dy
>
>Then include this configuration fragment in the SRC_URI:
>
>	SRC_URI +=3D "file://8250.cfg"
>
>At the next build, bitbake will detect the change in the recipe and
>fetch and
>apply the new configuration before rebuilding the Linux kernel.
>
>
>2.3 Iterative Development
>-------------------------
>If you do not have existing patches or configuration files, you can easily
>generate them from within the bitbake build environment, as will be
>described
>below. As you do, running previously completed bitbake tasks will cause
>bitbake
>to invalidate the tasks that follow them in the build sequence, causing
>them to
>rebuild at the next invocation of the build. Throughout this section, be
>sure to
>substitute "linux-yocto" with the name of the Linux kernel recipe you are
>working with.
>
>
>2.3.1 Generating Configuration Files
>------------------------------------
>You can manipulate the config used to build a linux-yocto recipe with the
>"menuconfig" command.
>
>	$ bitbake linux-yocto -c menuconfig
>
>This will start the Linux kernel configuration tool, allowing you to
>prepare a
>new .config for the build. When you exit, be sure to save the changes when
>prompted. The resulting .config file will be located in the ${WORKDIR}
>under
>the linux-${MACHINE}-${KTYPE}-build directory. You can use this in its
>entirety
>as the defconfig file described in 2.2.2.
>
>Better still, would be to use the "menuconfig" command and take the
>difference
>of the new .config file with the previous one to generate a configuration
>fragment. To do this, be sure to complete a build at least through the
>kernel
>configuration task:
>
>	$ bitbake linux-yocto -c kernel_configme -f
>
>Then make a copy of the .config file, calling it "config.orig", for
>example. Run
>the "menuconfig" command as described above. Finally, prepare a
>configuration
>fragment from the difference between the files. Ultimately you want a
>list of
>Linux kernel CONFIG_ assignments, and not something in diff format.
>Something
>like the following will do that automatically (but plan on reviewing the
>output
>as you can usually remove some of the defaults):
>
>	$ diff -Nurp config.orig .config | sed -n "s/^\+//p" > frag.cfg
>
>You can use the output as a configuration fragment described in 2.2.2.
>This
>method can also be used to define a BSP configuration fragment (See
>3.3.5).
>
>The Yocto Project kernel tools provide some configuration validation
>tools which
>will warn when a configuration you requested does not appear in the final
>config, or when you override a policy configuration in a hardware
>configuration
>fragment. You can run these tools with the following command:
>
>	$ bitbake linux-yocto -c kernel_configcheck -f
>
>	...
>
>	NOTE: validating kernel configuration
>	This BSP sets 3 invalid/obsolete kernel options.
>	These config options are not offered anywhere within this kernel.
>	The full list can be found in your kernel src dir at:
>	meta/cfg/standard/mybsp/invalid.cfg
>
>	This BSP sets 21 kernel options that are possibly non-hardware related.
>	The full list can be found in your kernel src dir at:
>	meta/cfg/standard/mybsp/specified_non_hdw.cfg
>
>	WARNING: There were 2 hardware options requested that do not
>	         have a corresponding value present in the final ".config" file.
>	         This probably means you aren't getting the config you wanted.
>	The full list can be found in your kernel src dir at:
>	meta/cfg/standard/mybsp/mismatch.cfg
>
>The various problems that you can encounter are described in the output
>along
>with where to find the offending configuration items. You can use these
>logs to
>adjust your configuration files and repeat the "kernel_configme" and
>"kernel_configcheck" commands until no warnings are produced.
>
>
>2.3.2 Modifying Source Code
>---------------------------
>You can experiment with source code changes and create a simple patch
>without
>leaving the bitbake environment. To get started, be sure to complete a
>build at
>least through the kernel configuration task:
>
>	$ bitbake linux-yocto -c kernel_configme -f
>
>This step will ensure you have the sources prepared and the configuration
>completed. You will find the sources in the ${WORKDIR}/linux directory.
>
>You can edit the sources as you would any other Linux source tree, but
>keep in
>mind that your changes will be lost if you trigger the fetch task for the
>recipe. Avoid this by not issuing the "cleanall" or "cleansstate", or
>forcing
>the "fetch" command. Also be sure not to modify the recipe itself while
>working
>with temporary changes or bitbake may run the fetch command (depending
>on the
>changes to the recipe).
>
>To test your temporary changes, instruct bitbake to run the compile
>again. The
>-f option forces the command to run again even though bitbake may think
>it has
>already done so:
>
>	$ bitbake linux-yocto -c compile -f
>
>If the compile fails, you can update the sources and repeat the compile
>command. Once it compiles successfully, you can inspect and test the
>resulting
>build (kernel, modules, etc.) from the build directory at
>${WORKDIR}/linux-${MACHINE}-${KTYPE}-build. Alternatively, you can run the
>deploy command to place the kernel image in the tmp/deploy/images
>directory:
>
>	$ bitbake linux-yocto -c deploy
>
>And of course, you can run through all the remaining installation and
>packaging
>steps by issuing:
>
>	$ bitbake linux-yocto
>
>For rapid iterative development, the edit-compile-repeat loop is
>preferable to
>rebuilding the entire recipe as the installation and packaging tasks are
>very
>time consuming.
>
>Once you are happy with your modifications, you can make these permanent
>by
>generating patches and applying them to the SRC_URI as described in
>section
>2.2.1 Applying Patches. If you are not familiar with generating patches,
>refer
>to the Yocto Project Development Manual, section 5.7.3 Creating the Patch.
>
>
>2.4 Working with Your Own Sources
>---------------------------------
>If you find yourself unable to work with one of the Linux kernel versions
>supported by existing linux-yocto recipes, you can still make use of the
>Yocto
>Project Linux kernel tooling while working with your own sources. You
>will not
>be able to leverage the existing meta-data and stabilization work of the
>linux-yocto sources, but you will be able to manage your own meta-data
>in the
>same format as the linux-yocto sources which will facilitate converging
>with
>linux-yocto on a future mutually-supported kernel version.
>
>The linux-yocto-custom recipe, located in the poky repository at:
>
>	meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
>
>is provided as an example recipe which uses kernel.org sources and the
>Yocto
>Project Linux kernel tools for managing meta-data. To get started, copy
>this
>recipe to your layer and provide it with a meaningful name, such as
>linux-yocto-myproject_3.5.bb, where 3.5 is the base version of the Linux
>kernel
>you will be working with. In the same directory, create a matching
>directory,
>e.g. linux-yocto-myproject to store your patches and configuration files.
>
>Edit the following variables in the recipe as appropriate for your
>project:
>
>	o SRC_URI
>	o LINUX_VERSION
>	o LINUX_VERSION_EXTENSION
>	o SRCREV
>	o PR
>	o PV
>	o COMPATIBLE_MACHINE
>
>The SRC_URI should be a git repository, using one of the supported git
>fetcher
>protocols (file, git, http, etc.). The skeleton recipe provides an example
>SRC_URI as a syntax reference.
>
>Set LINUX_VERSION to the Linux kernel version you are using, such as
>"3.6.3".
>
>LINUX_VERSION_EXTENSION is used to define the Linux kernel
>CONFIG_LOCALVERSION
>which will be compiled in to the resulting kernel and visible via the
>uname
>command.
>
>Set SRCREV to the commit ID you wish to build from.
>
>Treat the PR as you would the PR of any other recipe. Increment it to
>indicate
>to the build system that the recipe has changed.
>
>The default PV assignment is typically adequate. It combines the
>LINUX_VERSION
>with the SCM revision (from the SRCPV variable) and results in a string
>something like:
>
>"3.4.11+git1+68a635bf8dfb64b02263c1ac80c948647cc76d5f_1+218bd8d2022b9852c6
>0d32f0d770931e3cf343e2"
>
>While lengthy, this extra verbosity helps ensure you are building from
>the exact
>sources you intend.
>
>Finally, the default COMPATIBLE_MACHINE assignment for
>linux-yocto-custom is set
>to a regular expression matching only the empty string, "(^$)". This will
>trigger an explicit build failure. You must change it to match a list of
>the
>machines supported by your new recipe, such as "(qemux86|qemux86-64)"
>
>With that in place, you can continue to customize this recipe as you
>would the
>existing linux-yocto recipes. See Section 2.2 Modifying an Existing
>Recipe for
>details.
>
>
>2.5 Incorporating Out-of-tree Modules
>-------------------------------------
>While it is always preferable to work with sources integrated into the
>Linux
>kernel sources, if you have need of an external kernel module, the
>hello-mod
>recipe is available as a template to create your own out-of-tree Linux
>kernel
>module recipe. It is available in the poky repository at:
>
>	meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb
>
>To get started, copy this recipe to your layer and provide it with a
>meaningful name, such as
>mymodule_1.0.bb. In the same directory, create a directory named "files"
>where
>you can store any source files, patches, or other files necessary for
>building
>the module which do not come with the sources. Finally, update the recipe
>as
>appropriate for the module. Typically you will need to set the following
>variables:
>
>	o DESCRIPTION
>	o LICENSE*
>	o SRC_URI
>	o PV
>
>Depending on the build system used by the module sources, you may need
>to make
>adjustments. For example, a typical module Makefile will look much like
>that
>provided with hello-mod:
>
>	obj-m :=3D hello.o
>=09
>	SRC :=3D $(shell pwd)
>=09
>	all:
>		$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)
>=09
>	modules_install:
>		$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install
>	...
>
>The important point to note here is the KERNEL_SRC variable. The module
>bbclass
>class sets this, as well as KERNEL_PATH, to ${STAGING_KERNEL_DIR} with the
>necessary Linux kernel build information to build modules. If your module
>Makefile uses a different variable, you may want to override the
>do_compile()
>step, or create a patch to the Makefile to work with the more typical
>KERNEL_SRC
>or KERNEL_PATH variables.
>
>After you have prepared the recipe, you will likely want to include the
>module
>in your images. To do this, see the documentation for the following
>variables in
>the Yocto Project Reference Manual and set one of them as appropriate in
>your
>machine config file:
>
>	MACHINE_ESSENTIAL_EXTRA_RDEPENDS
>	MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS
>	MACHINE_EXTRA_RDEPENDS
>	MACHINE_EXTRA_RRECOMMENDS
>
>As modules are often not required for boot and may be excluded from
>certain
>build configurations, the following allows for the most flexibility:
>
>	MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-module-mymodule"
>
>Where the value is derived by appending the module filename without the
>.ko
>extension to the string "kernel-module-".
>
>As it is an RRECOMMENDS (and not an RDEPENDS) variable, the build will
>not fail
>if this module is not available to include in the image.
>
>
>3 Advanced Meta-Data
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>In addition to configuration fragments and patches, the Yocto Project
>kernel
>tools support rich meta-data which you can use to define complex
>policies and
>BSP support. The purpose of the meta-data and the tools to manage it,
>known as
>the kern-tools (kern-tools-native_git.bb), is to assist in managing the
>complexity of the configuration and sources in support of multiple BSPs
>and
>Linux kernel types.
>
>In particular, the kernel tools allow you to specify only what you must,
>and
>nothing more.  Where a complete Linux kernel .config includes all the
>automatically selected CONFIG options, the configuration fragments only
>need to
>contain the highest level visible CONFIG options as presented by the Linux
>kernel menuconfig system. This reduces your maintenance effort and
>allows you
>to further separate your configuration in ways that make sense for your
>project.
>A common split is policy and hardware. For example, all your kernels may
>support
>the proc and sys filesystems, but only specific boards will require
>sound, usb,
>or specific drivers. Specifying these individually allows you to
>aggregate them
>together as needed, but maintain them in only one place. Similar logic
>applies
>to source changes.
>
>
>3.1 Using Meta-Data in a Recipe
>-------------------------------
>The meta-data provided with any linux-yocto style Linux kernel sources
>must
>define a BSP that corresponds to the definition laid out in the recipe.
>A BSP
>consists of an aggregation of kernel policy and hardware specific feature
>enablement. This can be influenced from within the recipe.
>
>Every linux-yocto style recipe must define the following variables:
>
>	KMACHINE
>
>KMACHINE is typically set to the same value as used within the
>recipe-space BSP
>definition, such as "routerstationpro" or "fri2". However, multiple BSPs
>can
>reuse the same KMACHINE name if they are built using the same BSP
>description
>(see 3.3.5). The meta-intel "fri2" and "fri2-noemgd" are good examples
>of such
>a situation where each specifies KMACHINE as "fri2".
>
>They may optionally define the following variables:
>	KBRANCH
>	KERNEL_FEATURES
>	KBRANCH_DEFAULT
>	LINUX_KERNEL_TYPE
>
>KBRANCH_DEFAULT defines the default source branch within the Linux
>kernel source
>repository to be used to build the Linux kernel. It is used as the
>default value
>for KBRANCH which may define an alternate branch, typically with a machine
>override, such as:
>
>KBRANCH_fri2 =3D "standard/fri2"
>
>Unless you specify otherwise, KBRANCH_DEFAULT is initialized to "master".
>
>LINUX_KERNEL_TYPE defines the kernel type to be used in assembling the
>configuration and defaults to "standard" if you do not specify otherwise.
>Together with KMACHINE, this defines the search arguments used by the
>Yocto
>Project Linux kernel tools to find the appropriate description within the
>meta-data with which to build out the sources and configuration. The
>linux-yocto
>recipes define "standard", "tiny", and "preempt-rt" kernel types. See
>3.3.4 for
>more inforation on kernel types.
>
>During the build, the kern-tools will search for the BSP description
>file that
>most closely matches the KMACHINE and LINUX_KERNEL_TYPE passed in from the
>recipe. It will use the first BSP description it finds matching both
>variables.
>Failing that it will issue a warning such as the following:
>
>	WARNING: Can't find any BSP hardware or required configuration fragments.
>	WARNING: Looked at meta/cfg/broken/fri2-broken/hdw_frags.txt and
>	         meta/cfg/broken/fri2-broken/required_frags.txt in directory:
>	         meta/cfg/broken/fri2-broken
>
>	In this example KMACHINE was set to "fri2-broken" and LINUX_KERNEL_TYPE
>	was set to "broken".
>
>It will then search first for the KMACHINE and then
>for the LINUX_KERNEL_TYPE. If it cannot find a partial match, it will
>use the
>sources from the KBRANCH and any configuration specified in the SRC_URI.
>
>KERNEL_FEATURES can be used to include features (configuration fragments,
>patches, or both) that are not already included by the KMACHINE and
>LINUX_KERNEL_TYPE combination. To include a feature specified as
>"features/netfilter.scc" for example, specify:
>
>KERNEL_FEATURES +=3D "features/netfilter.scc"
>
>To include a feature called "cfg/sound.scc" just for the qemux86 machine,
>specify:
>
>KERNEL_FEATURES_append_qemux86 =3D "cfg/sound.scc"
>
>The value of the entries in KERNEL_FEATURES are dependent on their
>location
>within the meta-data itself. The examples here are taken from the
>linux-yocto-3.4 repository where "features" and "cfg" are subdirectories
>of the
>meta-data directory. For details, see 3.3.
>
>	Note: The processing of the these variables has evolved some between the
>	      0.9 and 1.3 releases of the Yocto Project and associated
>	      kern-tools sources. The above is accurate for 1.3 and later
>	      releases of the Yocto Project.
>
>
>3.2 Meta-Data Location
>----------------------
>This meta-data can be defined along with the Linux kernel recipe
>(recipe-space)
>as partially described in section 2.2 as well as within the Linux kernel
>sources
>themselves (in-tree).
>
>Where you choose to store the meta-data depends on what you want to do
>and how
>you intend to work. If you are unfamiliar with the Linux kernel and only
>wish
>to apply a config and possibly a couple of patches provided to you by
>others,
>you may find the recipe-space mechanism to be easier to work with. This
>is also
>a good approach if you are working with Linux kernel sources you do not
>control
>or if you just don't want to maintain a Linux kernel git repository on
>your own.
>
>If you are doing active kernel development and are already maintaining a
>Linux
>kernel git repository of your own, you may find it more convenient to
>work with
>the meta-data in the same repository as the Linux kernel sources. This
>can make
>iterative development of the Linux kernel more efficient outside of the
>bitbake
>environment.
>
>Regardless of where the meta-data is stored, the syntax as
>described in the following sections applies equally.
>
>
>3.2.1 Recipe-Space Meta-Data
>----------------------------
>When stored in recipe-space, the meta-data files reside in a directory
>hierarchy
>below FILESEXTRAPATHS, which is typically set to ${THISDIR}/${PN} for a
>linux-yocto or linux-yocto-custom derived Linux kernel recipe. See 2.2.
>
>By way of example, a trivial tree of meta-data stored in recipe-space
>within a
>BSP layer might look like the following:
>
>meta/
>`-- recipes-kernel
>    `-- linux
>        `-- linux-yocto
>            |-- bsp-standard.scc
>            |-- bsp.cfg
>            `-- standard.cfg
>
>When the meta-data is stored in recipe-space, you must take steps to
>ensure
>bitbake has the necessary information to decide which files to fetch and
>when
>they need to be fetched again.
>
>It is only necessary to specify the .scc files on the SRC_URI; bitbake
>will
>parse them and fetch any files referenced in the .scc files by the
>include,
>patch, or kconf commands. Because of this, it is necessary to bump the
>recipe PR
>value when changing the content of files not explicitly listed in the
>SRC_URI.
>
>
>3.2.2 In-Tree Meta-Data
>-----------------------
>When stored in-tree, the meta-data files reside in the "meta" directory
>of the
>Linux kernel sources. They may be present in the same branch as the
>sources,
>such as "master", or in their own orphan branch, typically named "meta".
>An
>orphan branch in git is a branch with unique history and content to the
>other
>branches in the repository. This is useful to track meta-data changes
>independently from the sources of the Linux kernel, while still keeping
>them
>together in the same repository. For the purposes of this document, we
>will
>discuss all in-tree meta-data as residing below the
>"meta/cfg/kernel-cache"
>directory.
>
>By way of example, a trivial tree of meta-data stored in a custom Linux
>kernel
>git repository might look like the following:
>
>meta/
>`-- cfg
>    `-- kernel-cache
>        |-- bsp-standard.scc
>        |-- bsp.cfg
>        `-- standard.cfg
>
>To use a specific branch for the meta-data, specify the branch in the
>KMETA
>variable in your Linux kernel recipe, for example:
>
>	KMETA =3D "meta"
>
>To use the same branch as the sources, set KMETA to the empty string:
>
>	KMETA =3D ""
>
>If you are working with your own sources and want to create an orphan meta
>branch, you can do so using the following commands from within your
>Linux kernel
>git repository:
>
>	$ git checkout --orphan meta
>	$ git rm -rf .
>	$ git commit --allow-empty -m "Create orphan meta branch"
>
>
>3.3 Meta-Data Syntax
>--------------------
>The Yocto Project Linux kernel tools meta-data consists of three primary
>types
>of files: scc* description files, configuration fragments, and patches.
>The scc
>files define variables and include or otherwise reference any of the
>three file
>types. The description files are used to aggregate all types of
>meta-data into
>what ultimately describes the sources and the configuration required to
>build a
>Linux kernel tailored to a specific machine.
>
>The scc description files are used to define two fundamental types of
>meta-data:
>	o Features
>	o BSPs
>
>Features aggregate sources in the form of patches and configuration in
>the form
>of configuration fragments into a modular reusable unit. Features are
>used to
>implement conceptually separate meta-data descriptions like pure
>configuration
>fragments, simple patches, complex features, and kernel types (ktypes).
>Kernel
>types define general kernel features and policy to be reused in the BSPs.
>
>BSPs define hardware-specific features and aggregate them with kernel
>types to
>form the final description of what will be assembled and built.
>
>While the meta-data syntax does not enforce any logical separation of
>configuration fragments, patches, features or kernel types, best practices
>dictate a logical separation of these types of meta-data. The following
>meta-data file hierarchy is recommended:
>
>	<base>/
>		bsp/
>		cfg/
>		features/
>		ktypes/
>		patches/
>
>The bsp directory should contain the BSP descriptions, described in
>detail in
>3.3.5. The remaining directories all contain "features"; the separation
>is meant
>to aid in conceptualizing their intended usage.  A simple guide to
>determine
>where your scc description file should go is as follows. If it contains
>only
>configuration fragments, it belongs in cfg. If it contains only
>source-code
>fixes, it belongs in patches. If it encapsulates a major feature, often
>combining sources and configurations, it belongs in features. If it
>aggregates
>non-hardware configuration and patches in order to define a base kernel
>policy
>or major kernel type to be reused across multiple BSPs, it belongs in
>ktypes.
>The line between these can easily become blurred, especially as
>out-of-tree
>features are slowly merged upstream over time. Also remember that this
>is purely
>logical organization and has no impact on the functionality of the
>meta-data as
>all of cfg, features, patches, and ktypes, contain "features" as far as
>the
>Yocto Project Linux kernel tools are concerned.
>
>Paths used in meta-data files are relative to <base> which is either
>FILESEXTRAPATHS if you are creating meta-data in recipe-space (see
>3.2.1), or
>meta/cfg/kernel-cache/ if you are creating meta-data in-tree (see 3.2.2).
>
>* scc stands for Series Configuration Control, but the naming has less
>  significance in the current implementation of the tooling than it had
>in the
>  past. Consider it to be a description file.
>
>
>3.3.1 Configuration
>-------------------
>The simplest unit of meta-data is the configuration-only feature. It
>consists of
>one or more Linux kernel configuration parameters in a .cfg file (as
>described
>in section XYZ) and an scc file describing the fragment. The SMP fragment
>included in the linux-yocto-3.4 git repository consists of the following
>two
>files:
>
>cfg/smp.scc:
>	define KFEATURE_DESCRIPTION "Enable SMP"
>	kconf hardware smp.cfg
>
>cfg/smp.cfg:
>	CONFIG_SMP=3Dy
>	CONFIG_SCHED_SMT=3Dy
>
>See 2.3.1 for details on creating configuration fragments.
>
>KFEATURE_DESCRIPTION provides a short description of the fragment, the
>primary use is for higher level tooling, such as the Yocto Project BSP=20
>Tools
>(TODO:Citation).
>
>The "kconf" command is used to include the actual configuration fragment
>in an
>scc file, and the "hardware" keyword identifies the fragment as being
>hardware
>enabling, as opposed to general policy (which would use the keyword
>"non-hardware"). The distinction is made for the benefit of the
>configuration
>validation tools which will warn you if a hardware fragment overrides a
>policy
>set by a non-hardware fragment.
>
>As described in 2.3.1, the following bitbake command can be used to
>audit your
>configuration:
>
>	$ bitbake linux-yocto -c kernel_configcheck -f
>
>The description file can include multiple kconf statements, one per
>fragment.
>
>
>3.3.2 Patches
>-------------
>Patches are described in a very similar way to configuration fragments=20
>(see
>3.3.1). Instead of a .cfg file, they work with source patches. A typical
>patch
>includes a description file and the patch itself:
>
>patches/mypatch.scc:
>	patch mypatch.patch
>
>patches/mypatch.patch:
>	<typical patch created with 'diff -Nurp' or 'git format-patch'>
>
>The description file can include multiple patch statements, one per patch.
>
>
>3.3.3 Features
>--------------
>Features are a combination of configuration fragments and patches, or,=20
>more
>accurately, configuration fragments and patches are simple forms of a
>feature, a
>more complex meta-data type. In addition to the kconf and patch commands,
>features often aggregate description files with the include command.
>
>A hypothetical example of a feature description file might look like the
>following:
>
>features/myfeature.scc
>	define KFEATURE_DESCRIPTION "Enable myfeature"
>
>	patch 0001-myfeature-core.patch
>	patch 0002-myfeature-interface.patch
>
>	include cfg/myfeature_dependency.scc
>	kconf non-hardware myfeature.cfg
>
>Features are typically less granular than configuration fragments and
>are more
>likely than configurations fragments and patches to be the types of
>things you
>will want to specify in the KERNEL_FEATURES variable of the Linux kernel
>recipe
>(see 3.1).
>
>
>3.3.4 Kernel Types
>------------------
>Kernel types, or ktypes, are used to aggregate all non-hardware
>configuration
>fragments together with any patches you want to use for all Linux kernel
>builds
>of the specified ktype. In short, ktypes are where you define a high-level
>kernel policy. Syntactically, however, they are no different than
>features (see
>3.3.3).  preempt-rt, and tiny. The ktype is selected by the
>LINUX_KERNEL_TYPE
>variable in the recipe (see 3.1).
>
>By way of example, the linux-yocto-3.4 tree defines three ktypes:=20
>standard,
>tiny, and preempt-rt. The standard kernel type includes the generic
>Linux kernel
>policy of the Yocto Project linux-yocto kernel recipes. This includes=20
>things
>like which filesystems, which networking options, which core kernel
>features,
>and which debugging and tracing optoins are supported. The preempt-rt=20
>kernel
>type applies the PREEMPT_RT patches and the configuration options
>required to
>build a real-time Linux kernel. It inherits from standard. The tiny
>kernel type
>is independent from the standard configuration and defines a bare minimum
>configuration meant to serve as a base for very small Linux kernels.
>Tiny does
>not currently include any source changes, but it may in the future.
>
>The standard ktype is defined by standard.scc:
>	# Include this kernel type fragment to get the standard features and
>	# configuration values.
>=09
>	# Include all standard features
>	include standard-nocfg.scc
>=09
>	kconf non-hardware standard.cfg
>=09
>	# individual cfg block section
>	include cfg/fs/devtmpfs.scc
>	include cfg/fs/debugfs.scc
>	include cfg/fs/btrfs.scc
>	include cfg/fs/ext2.scc
>	include cfg/fs/ext3.scc
>	include cfg/fs/ext4.scc
>=09
>	include cfg/net/ipv6.scc
>	include cfg/net/ip_nf.scc
>	include cfg/net/ip6_nf.scc
>	include cfg/net/bridge.scc
>
>As with any scc file, a ktype definition can aggregate other scc files
>with the
>include command, or directly pull in configuration fragments and patches
>with
>the kconf and patch commands, respectively.
>
>Note: It is not strictly necessary to create a ktype scc file. The BSP
>file can
>      define the ktype implicitly with a "define KTYPE myktype" line.
>See 3.3.5.
>
>
>3.3.5 BSPs
>----------
>BSP descriptions combine kernel types (see 3.3.4) with hardware-specific
>features (see 3.3.3). The hardware specific portion is typically defined
>independently, and then aggregated with each supported kernel type.
>Consider a
>simple example:
>
>mybsp.scc:
>	define KMACHINE mybsp
>	define KTYPE standard
>	define KARCH i386
>
>	kconf mybsp.cfg
>
>Every BSP description should include the definition of the KMACHINE,
>KTYPE, and
>KARCH variables. These variables allow the build-system to identify this
>description as meeting the criteria set by the recipe being built. This
>particular description can be said to support the "mybsp" machine for the
>"standard" kernel type and the "i386" architecture. Note that there is
>no hard
>link between the KTYPE and a ktype description file. If you do not have
>kernel
>types defined in your meta-data, you only need to ensure that the recipe
>LINUX_KERNEL_TYPE and the KTYPE here match.
>
>NOTE: future versions of the tooling make the specification of KTYPE in
>the BSP
>      optional.
>
>If you did want to separate your kernel policy from your hardware
>configuration,
>you could do so by specifying a kernel type, such as "standard" (see
>3.3.4) and
>including that description in the BSP description. You might also have
>multiple
>hardware configurations that you aggregate into a single hardware
>description
>file which you could include here, rather than referencing a single .cfg
>file.
>Consider the following:
>
>mybsp.scc:
>	define KMACHINE mybsp
>	define KTYPE standard
>	define KARCH i386
>
>	include standard.scc
>	include mybsp.scc
>
>In the above example standard.scc aggregates all the configuration
>fragments,
>patches, and features that make up your standard kernel policy whereas
>mybsp.scc
>aggregates all those necessary to support the hardware available on the
>mybsp
>machine. For information on how to break a complete .config into the=20
>various
>fragments, see 2.3.1.
>
>Many real-world examples are more complex. Like any other scc file, BSP
>descriptions can aggregate features. Consider the Fish River Island II
>(fri2)
>BSP definitions from the linux-yocto-3.4 repository:
>
>fri2.scc:
>	kconf hardware fri2.cfg
>=09
>	include cfg/x86.scc
>	include features/eg20t/eg20t.scc
>	include cfg/dmaengine.scc
>	include features/ericsson-3g/f5521gw.scc
>	include features/power/intel.scc
>	include cfg/efi.scc
>	include features/usb/ehci-hcd.scc
>	include features/usb/ohci-hcd.scc
>	include features/iwlwifi/iwlwifi.scc
>
>The fri2.scc description file includes a hardware configuration fragment
>(fri2.cfg) specific to the fri2 BSP as well as several more general
>configuration fragments and features enabling hardware found on the
>fri2. This
>description is then included in each of the three machine-ktype=20
>descriptions
>(standard, preempt-rt, and tiny). Consider the fri2 standard description:
>
>fri2-standard.scc:
>	define KMACHINE fri2
>	define KTYPE standard
>	define KARCH i386
>=09
>	include ktypes/standard/standard.scc
>	branch fri2
>=09
>	git merge emgd-1.14
>=09
>	include fri2.scc
>=09
>	# Extra fri2 configs above the minimal defined in fri2.scc
>	include cfg/efi-ext.scc
>	include features/drm-emgd/drm-emgd.scc
>	include cfg/vesafb.scc
>=09
>	# default policy for standard kernels
>	include cfg/usb-mass-storage.scc
>
>Note the "include fri2.scc" line about midway through the file. By
>defining all
>hardware enablement common to the BSP for all kernel types, duplication is
>significantly reduced.
>
>This description introduces a few more variables and commands worthy of
>further
>discussion.  Note the "branch" command which is used to create a
>machine-specific branch into which source changes can be applied. With=20
>this
>branch set up, the "git merge" command uses the git SCM to merge in a
>feature
>branch "emgd-1.14".  This could also be handled with the patch command,
>but for
>commonly used features such as this, feature branches can be a convenient
>mechanism (see 3.5).
>
>Next consider the fri2 tiny description:
>
>fri2-tiny.scc:
>	define KMACHINE fri2
>	define KTYPE tiny
>	define KARCH i386
>=09
>	include ktypes/tiny/tiny.scc
>	branch fri2
>=09
>	include fri2.scc
>
>As you might expect, the tiny description includes quite a bit less. In
>fact,
>it includes only the minimal policy defined by the tiny ktype and the
>hardware-specific configuration required for boot and the most basic
>functionality of the system as defined in the base fri2 description
>file. Note
>again the three critical variables: KMACHINE, KTYPE, and KARCH. Of
>these, only
>the KTYPE has changed, now set to "tiny".
>
>
>3.4 Machine Branches
>--------------------
>Section 3.1 introduced the KBRANCH variable which defines the source
>branch to
>use from the Linux kernel git repository you are using. Many
>linux-yocto-custom
>derived recipes will be using Linux kernel sources with only a single
>branch:
>"master". However, when you are working with multiple boards and
>architectures,
>you are likely to run into the situation where a series of patches are
>needed
>for one board to boot. Sometimes these patches are works in progress or
>fundamentally wrong, yet still necessary for specific boards. In these
>situations, you most likely do not want to include these patches in
>every kernel
>you build. You have a couple of options.
>
>First, you could encapsulate these patches in a feature description and=20
>only
>include them in the BSP description for the board(s) that require them=20
>(see
>3.3.2 and 3.3.5).
>
>Alternatively, you can create a branch in your Linux kernel sources and
>apply
>the patches there. You can then specify this new branch as the KBRANCH
>to use
>for this board. You can do this in the recipe with the KBRANCH variable:
>=09
>	KBRANCH =3D "mynewbranch"
>=09
>or in the BSP description using the "branch" command:
>
>mybsp.scc:
>	define KMACHINE mybsp
>	define KTYPE standard
>	define KARCH i386
>	include standard.scc
>
>	branch mynewbranch
>
>	include mybsp.scc
>
>The decision of which approach to take, feature or branch, is entirely
>up to you
>and depends on what works best for your development model. If you are
>actively
>working on board support, you may find that working within a branch is=20
>more
>practical than trying to continually reintegrate your patches into a
>feature. On
>the other hand, if you are simply reusing some patches from an external
>tree and
>are not working on them, you may find the encapsulated feature to be
>appropriate
>as it does not require the additional complexity of branching in your=20
>Linux
>kernel sources.
>
>If you are supporting multiple boards and architectures and find
>yourself with
>numerous branches, you might consider using a hierarchical branching=20
>system
>similar to what the linux-yocto Linux kernel repositories use:
>
>	<common>/<ktype>/<machine>
>
>If you had two ktypes, standard and small for instance, and three
>machines, your
>git tree might look like this:
>
>	common/base
>	common/standard/base
>	common/standard/machine_a
>	common/standard/machine_b
>	common/standard/machine_c
>	common/small/base
>	common/small/machine_a
>
>This organization can help clarify the relationship of the branches to
>each other. In this case, "common/standard/machine_a" would include
>everything in
>"common/base" and "common/standard/base". The "standard" and "small"
>branches
>add sources specific to those kernel types that for whatever reason are=20
>not
>appropriate for the other branches.
>
>Note: The "base" branches are an artifact of the way git manages its data
>      internally on the filesystem: it will not allow you to use
>      "common/standard" and "common/standard/machine_a" because it would
>have to
>      create a file and a directory named "standard".
>
>
>3.5 Feature Branches
>--------------------
>During active development a new feature, it can be more efficient to
>work with
>that feature as a branch, rather than as a set of patches which have to be
>regularly updated. The Yocto Project Linux kernel tools provide for this
>with
>the "git merge" command.
>
>To merge a feature branch into a BSP, insert the "git merge" command
>after any
>branch commands:
>
>mybsp.scc:
>	define KMACHINE mybsp
>	define KTYPE standard
>	define KARCH i386
>	include standard.scc
>
>	branch mynewbranch
>	git merge myfeature
>
>	include mybsp.scc
>
>
>3.6 SCC Reference
>-----------------
>* branch [ref]
>
>  Create a new branch relative to the current branch (typically
>${KTYPE}) using
>  the currently checked-out branch, or "ref" if specified.
>
>  TODO: Bruce, we need to clarify the "relative to the current branch"=20
>bit.
>
>* define
>
>  Define variables, such as KMACHINE, KTYPE, KARCH, and
>KFEATURE_DESCRIPTION.
>
>* include SCC_FILE
>
>  Include an scc file in the current file. It will be parsed as if=20
>inserted
>  inline.
>
>* kconf [hardware|non-hardware] CFG_FILE
>
>  Queue a configuration fragment for merging into the final Linux
>.config file.
>
>* merge (or "git merge") GIT_BRANCH
>
>  Merge the feature branch into the current branch.
>
>* patch PATCH_FILE
>
>  Apply the patch to the current git branch.
>
>
>4. FAQ
>=3D=3D=3D=3D=3D=3D
>Q. How do I use my own Linux kernel .config?
>A. See 2.2.2.
>
>Q. How do I create configuration fragments?
>A. See 2.3.1.
>
>Q. How do I use my own Linux kernel sources?
>A. See 2.4.
>
>Q. How do I install/not-install the kernel image on the rootfs?
>A. The kernel image (e.g. vmlinuz) is provided by the kernel-image=20
>package.
>   Image recipes depend on kernel-base. To specify whether or no the=20
>kernel
>   image is installed in the generated root filesystem, override
>   RDEPENDS_kernel-base to include or not include "kernel-image".
>   See (TODO: development manual reference for overrides).
>
>Q. How do I install a specific kernel module?
>A. Linux kernel modules are packaged individually. To ensure a specific
>kernel
>   module is included in an image, include it in the appropriate
>   machine RRECOMMENDS variable. See the Yocto Project Reference Manual
>   glossary for details on:
>
>	MACHINE_ESSENTIAL_EXTRA_RDEPENDS
>	MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS
>	MACHINE_EXTRA_RDEPENDS
>	MACHINE_EXTRA_RRECOMMENDS
>
>   For example, set the following in the qemux86.conf file to include
>the ab123
>   kernel modules with images built for the qemux86 machine:
>
>	MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-module-ab123"
>
>   See 2.5 for details.
>
>Q. How do I changed the Linux kernel command line?
>A. The Linux kernel command line is typically specified in the machine
>config in
>   the APPEND variable. For example, you can add some helpful debug
>information:
>
>   APPEND +=3D "printk.time=3Dy initcall_debug debug"
>
>
>--=20
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Technical Lead - Linux Kernel


