Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB715E00CFD; Fri,  9 Sep 2016 19:33:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 860A5E00CF3
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 19:33:27 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8A2XNwb000675
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Sep 2016 19:33:24 -0700 (PDT)
Received: from server.local (147.11.117.113) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 9 Sep 2016 19:33:23 -0700
To: "Clark, Mark A" <Mark.Clark2@nov.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BY1PR15MB00382741A7D3DA82030653F0BCFA0@BY1PR15MB0038.namprd15.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <6975b684-022e-e06f-5c57-d126f0259878@windriver.com>
Date: Fri, 9 Sep 2016 22:33:22 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <BY1PR15MB00382741A7D3DA82030653F0BCFA0@BY1PR15MB0038.namprd15.prod.outlook.com>
Subject: Re: Poky/krogoth core-image-rt
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
X-List-Received-Date: Sat, 10 Sep 2016 02:33:30 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-09-09 2:33 PM, Clark, Mark A wrote:
> All, I am still running into issues on building the RT image.   I was
> able to configure poky/jethro to create the core-image-rt.  That being
> said the kernel boot would hang at switching clock source “Switching to
> clocksource tsc”.   I was attempting to run down the issue there when
> the 2.1 krogoth came along and looked promising given the kernel version
> advance.
>
>
>
> It is very unclear which items need to be tweaked to get a rt build as
> the other recipes just work.  Granted changing the kernel-source makes
> sense due to it being a modified kernel.
>
>
>
> Prior to Yocto I used Gentoo and patched the compatible kernel for
> real-time before building the target.   Yocto seems promising in that it
> is more cohesive.
>
>
>
> The two requirements I need are 1) real-time kernel and 2) genericx86
> arch.   Beyond changing local.conf to facilitate this I am at a loss as
> to what needs changing to accomplish this.

The thing that is missing is a valid board definition for genericx86
and preempt-rt.

What I mean by "valid", is described in the Yocto project kernel manual
and BSP guide.

It is essential the entry point to the kernel configuration and patching
process and is what I had provided in that example .scc file.

For whatever reason, your build isn't picking up the board definition
while mine is (hence why you were getting a warning about an auto
generated BSP).

If you navigate your way to the kernel source directory (aka ${S},
which should be work-shared/genericx86/kernel-source), and look
in the .kernel-meta subdirectory, there's a file called "top_tgt".
If that isn't pointing at the the .scc file I sent, then the autogen
one is being used.

I can do another build on Monday, but it did work for me, and without
access to exactly your layers, it is hard to debug more.

Cheers,

Bruce

>
>
>
> Enclosed are the files Bruce created as a scratch example of the recipes
> and my local.conf file.
>
>
>
> genericx86-preempt-rt.scc:
> ============================
>
> define KMACHINE genericx86
>
> define KTYPE preempt-rt
>
> define KARCH i386
>
>
>
> # no new branch required, re-use the ktypes/preempt-rt/preempt-rt.scc branch
>
> include ktypes/preempt-rt/preempt-rt.scc
>
>
>
> include bsp/common-pc/common-pc.scc
>
>
>
> # default policy for preempt-rt kernels
>
> include cfg/boot-live.scc
>
> include cfg/usb-mass-storage.scc
>
> include features/latencytop/latencytop.scc
>
> include features/profiling/profiling.scc
>
> include cfg/virtio.scc
>
>
>
> linux-yocto_4.4.bbappend:
>
> ===============================================
>
> KBRANCH_genericx86  = "standard/base"
>
> KBRANCH_genericx86-64  = "standard/base"
>
>
>
> KMACHINE_genericx86 ?= "common-pc"
>
> KMACHINE_genericx86-64 ?= "common-pc-64"
>
> KBRANCH_edgerouter = "standard/edgerouter"
>
> KBRANCH_beaglebone = "standard/beaglebone"
>
> KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>
>
>
> SRCREV_machine_genericx86    ?= "3d2455f9da30f923c6bd69014fad4cc4ea738be6"
>
> SRCREV_machine_genericx86-64 ?= "3d2455f9da30f923c6bd69014fad4cc4ea738be6"
>
> SRCREV_machine_edgerouter ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
>
> SRCREV_machine_beaglebone ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
>
> SRCREV_machine_mpc8315e-rdb ?= "df00877ef9387b38b9601c82db57de2a1b23ce53"
>
>
>
> COMPATIBLE_MACHINE_genericx86 = "genericx86"
>
> COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
>
> COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>
> COMPATIBLE_MACHINE_beaglebone = "beaglebone"
>
> COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>
>
>
> LINUX_VERSION_genericx86 = "4.4.3"
>
> LINUX_VERSION_genericx86-64 = "4.4.3"
>
>
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto-4.4:"
>
> SRC_URI += " file://genericx86-preempt-rt.scc"
>
>
>
>
>
> local.conf:
>
> ==========================================
> #
>
> # This file is your local configuration file and is where all local user
> settings
>
> # are placed. The comments in this file give some guide to the options a
> new user
>
> # to the system might want to change but pretty much any configuration
> option can
>
> # be set in this file. More adventurous users can look at
> local.conf.extended
>
> # which contains other examples of configuration which can be placed in
> this file
>
> # but new users likely won't need any of them initially.
>
> #
>
> # Lines starting with the '#' character are commented out and in some
> cases the
>
> # default values are provided as comments to show people example syntax.
> Enabling
>
> # the option is a question of removing the # character and making any
> change to the
>
> # variable as required.
>
>
>
> #
>
> # Machine Selection
>
> #
>
> # You need to select a specific machine to target the build with. There
> are a selection
>
> # of emulated machines available which can boot and run in the QEMU
> emulator:
>
> #
>
> #MACHINE ?= "qemuarm"
>
> #MACHINE ?= "qemumips"
>
> #MACHINE ?= "qemuppc"
>
> #MACHINE ?= "qemux86"
>
> #MACHINE ?= "qemux86-64"
>
> #
>
> # There are also the following hardware board target machines included for
>
> # demonstration purposes:
>
> #
>
> #MACHINE ?= "beaglebone"
>
> MACHINE ?= "genericx86"
>
> #MACHINE ?= "genericx86-64"
>
> #MACHINE ?= "mpc8315e-rdb"
>
> #MACHINE ?= "edgerouter"
>
> #
>
> # This sets the default machine to be qemux86 if no other machine is
> selected:
>
> MACHINE ??= "qemux86"
>
>
>
> #
>
> # Where to place downloads
>
> #
>
> # During a first build the system will download many different source
> code tarballs
>
> # from various upstream projects. This can take a while, particularly if
> your network
>
> # connection is slow. These are all stored in DL_DIR. When wiping and
> rebuilding you
>
> # can preserve this directory to speed up this part of subsequent
> builds. This directory
>
> # is safe to share between multiple builds on the same machine too.
>
> #
>
> # The default is a downloads directory under TOPDIR which is the build
> directory.
>
> #
>
> #DL_DIR ?= "${TOPDIR}/downloads"
>
>
>
> #
>
> # Where to place shared-state files
>
> #
>
> # BitBake has the capability to accelerate builds based on previously
> built output.
>
> # This is done using "shared state" files which can be thought of as
> cache objects
>
> # and this option determines where those files are placed.
>
> #
>
> # You can wipe out TMPDIR leaving this directory intact and the build
> would regenerate
>
> # from these files if no changes were made to the configuration. If
> changes were made
>
> # to the configuration, only shared state files where the state was
> still valid would
>
> # be used (done using checksums).
>
> #
>
> # The default is a sstate-cache directory under TOPDIR.
>
> #
>
> #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
>
>
>
> #
>
> # Where to place the build output
>
> #
>
> # This option specifies where the bulk of the building work should be
> done and
>
> # where BitBake should place its temporary files and output. Keep in
> mind that
>
> # this includes the extraction and compilation of many applications and
> the toolchain
>
> # which can use Gigabytes of hard disk space.
>
> #
>
> # The default is a tmp directory under TOPDIR.
>
> #
>
> TMPDIR = "${TOPDIR}/realtime"
>
>
>
> #
>
> # Default policy config
>
> #
>
> # The distribution setting controls which policy settings are used as
> defaults.
>
> # The default value is fine for general Yocto project use, at least
> initially.
>
> # Ultimately when creating custom policy, people will likely end up
> subclassing
>
> # these defaults.
>
> #
>
> DISTRO ?= "poky"
>
> # As an example of a subclass there is a "bleeding" edge policy
> configuration
>
> # where many versions are set to the absolute latest code from the upstream
>
> # source control systems. This is just mentioned here as an example, its not
>
> # useful to most new users.
>
> # DISTRO ?= "poky-bleeding"
>
>
>
> #
>
> # Package Management configuration
>
> #
>
> # This variable lists which packaging formats to enable. Multiple
> package backends
>
> # can be enabled at once and the first item listed in the variable will
> be used
>
> # to generate the root filesystems.
>
> # Options are:
>
> #  - 'package_deb' for debian style deb files
>
> #  - 'package_ipk' for ipk files are used by opkg (a debian style
> embedded package manager)
>
> #  - 'package_rpm' for rpm style packages
>
> # E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
>
> # We default to rpm:
>
> PACKAGE_CLASSES ?= "package_rpm"
>
>
>
> #
>
> # SDK/ADT target architecture
>
> #
>
> # This variable specifies the architecture to build SDK/ADT items for
> and means
>
> # you can build the SDK packages for architectures other than the
> machine you are
>
> # running the build on (i.e. building i686 packages on an x86_64 host).
>
> # Supported values are i686 and x86_64
>
> SDKMACHINE ?= "i686"
>
>
>
> #
>
> # Extra image configuration defaults
>
> #
>
> # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to
> the generated
>
> # images. Some of these options are added to certain image types
> automatically. The
>
> # variable can contain the following options:
>
> #  "dbg-pkgs"       - add -dbg packages for all installed packages
>
> #                     (adds symbol information for debugging/profiling)
>
> #  "dev-pkgs"       - add -dev packages for all installed packages
>
> #                     (useful if you want to develop against libs in the
> image)
>
> #  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
>
> #                     (useful if you want to run the package test suites)
>
> #  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
>
> #  "tools-debug"    - add debugging tools (gdb, strace)
>
> #  "eclipse-debug"  - add Eclipse remote debugging support
>
> #  "tools-profile"  - add profiling tools (oprofile, exmap, lttng, valgrind)
>
> #  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord
> etc.)
>
> #  "debug-tweaks"   - make an image suitable for development
>
> #                     e.g. ssh root access has a blank password
>
> # There are other application targets that can be used here too, see
>
> # meta/classes/image.bbclass and meta/classes/core-image.bbclass for
> more details.
>
> # We default to enabling the debugging tweaks.
>
> EXTRA_IMAGE_FEATURES = "debug-tweaks"
>
>
>
> #
>
> # Additional image features
>
> #
>
> # The following is a list of additional classes to use when building
> images which
>
> # enable extra features. Some available options which can be included in
> this variable
>
> # are:
>
> #   - 'buildstats' collect build statistics
>
> #   - 'image-mklibs' to reduce shared library files size for an image
>
> #   - 'image-prelink' in order to prelink the filesystem image
>
> #   - 'image-swab' to perform host system intrusion detection
>
> # NOTE: if listing mklibs & prelink both, then make sure mklibs is
> before prelink
>
> # NOTE: mklibs also needs to be explicitly enabled for a given image,
> see local.conf.extended
>
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>
>
>
> #
>
> # Runtime testing of images
>
> #
>
> # The build system can test booting virtual machine images under qemu
> (an emulator)
>
> # after any root filesystems are created and run tests against those
> images. To
>
> # enable this uncomment this line. See classes/testimage(-auto).bbclass for
>
> # further details.
>
> #TEST_IMAGE = "1"
>
> #
>
> # Interactive shell configuration
>
> #
>
> # Under certain circumstances the system may need input from you and to
> do this it
>
> # can launch an interactive shell. It needs to do this since the build is
>
> # multithreaded and needs to be able to handle the case where more than
> one parallel
>
> # process may require the user's attention. The default is iterate over
> the available
>
> # terminal types to find one that works.
>
> #
>
> # Examples of the occasions this may happen are when resolving patches
> which cannot
>
> # be applied, to use the devshell or the kernel menuconfig
>
> #
>
> # Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x
> only), none
>
> # Note: currently, Konsole support only works for KDE 3.x due to the way
>
> # newer Konsole versions behave
>
> #OE_TERMINAL = "auto"
>
> # By default disable interactive patch resolution (tasks will just fail
> instead):
>
> PATCHRESOLVE = "noop"
>
>
>
> #
>
> # Disk Space Monitoring during the build
>
> #
>
> # Monitor the disk space during the build. If there is less that 1GB of
> space or less
>
> # than 100K inodes in any key build location (TMPDIR, DL_DIR,
> SSTATE_DIR), gracefully
>
> # shutdown the build. If there is less that 100MB or 1K inodes, perform
> a hard abort
>
> # of the build. The reason for this is that running completely out of
> space can corrupt
>
> # files and damages the build in ways which may not be easily recoverable.
>
> BB_DISKMON_DIRS = "\
>
>     STOPTASKS,${TMPDIR},1G,100K \
>
>     STOPTASKS,${DL_DIR},1G,100K \
>
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>
>     ABORT,${TMPDIR},100M,1K \
>
>     ABORT,${DL_DIR},100M,1K \
>
>     ABORT,${SSTATE_DIR},100M,1K"
>
>
>
> #
>
> # Shared-state files from other locations
>
> #
>
> # As mentioned above, shared state files are prebuilt cache data objects
> which can
>
> # used to accelerate build time. This variable can be used to configure
> the system
>
> # to search other mirror locations for these objects before it builds
> the data itself.
>
> #
>
> # This can be a filesystem directory, or a remote url such as http or
> ftp. These
>
> # would contain the sstate-cache results from previous builds (possibly
> from other
>
> # machines). This variable works like fetcher MIRRORS/PREMIRRORS and
> points to the
>
> # cache locations to check for the shared objects.
>
> # NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to
> add PATH
>
> # at the end as shown in the examples below. This will be substituted
> with the
>
> # correct path within the directory structure.
>
> #SSTATE_MIRRORS ?= "\
>
> #file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH
> \n \
>
> #file://.* file:///some/local/dir/sstate/PATH"
>
>
>
>
>
> #
>
> # Qemu configuration
>
> #
>
> # By default qemu will build with a builtin VNC server where graphical
> output can be
>
> # seen. The two lines below enable the SDL backend too. This assumes
> there is a
>
> # libsdl library available on your build system.
>
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
>
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
>
> ASSUME_PROVIDED += "libsdl-native"
>
>
>
>
>
> # CONF_VERSION is increased each time build/conf/ changes incompatibly
> and is used to
>
> # track the version of this file when it was generated. This can safely
> be ignored if
>
> # this doesn't mean anything to you.
>
> CONF_VERSION = "1"
>
> COMPATIBLE_MACHINE_genericx86 = "genericx86"
>
> PREFERED_PROVIDER_virtual/kernel = "linux-yocto-rt"
>
>
>
> *Mark Clark*
>
> Embedded Software Engineer
>
> Embedded Software, Cedar Park, TX
>
> Description: Description: Description: Description: National Oilwell
> Varco Logo Color CMYK.jpg
>
>  Wellbore Technologies – Dynamic Drilling Solutions
>
> Global Software Engineering
>
> Office: (512) 340-5435
>
> Mobile: (512) 736-9396
>
> /“One Team – Infinite Solutions”/
>
>
>
>
>


