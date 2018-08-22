Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DA76E009AA; Tue, 21 Aug 2018 17:39:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D018E008D9;
	Tue, 21 Aug 2018 17:39:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Aug 2018 17:39:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,271,1531810800"; d="scan'208";a="68067882"
Received: from rnagise-mobl3.amr.corp.intel.com ([10.252.137.24])
	by orsmga006.jf.intel.com with ESMTP; 21 Aug 2018 17:39:46 -0700
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <7d60ef04-c945-e953-808f-5454065b9746@intel.com>
Date: Tue, 21 Aug 2018 17:39:46 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.5.1 (sumo 19.0.1) Released
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
X-List-Received-Date: Wed, 22 Aug 2018 00:39:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

We are pleased to announce the latest release of the Yocto Project 2.5.1 (sumo-19.0.1) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.1/poky-sumo-19.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.1/poky-sumo-19.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW33_-_2018-08-16-_Full_Test_Cycle_-_2.5.1_rc1

Thank you for everyone's contributions to this release.

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


-------------------
yocto-2.5.1 Errata
--------------------

Release Name: eclipse-poky-neon-sumo-19.0.1
Branch: neon/sumo
Tag: neon/sumo-19.0.1
Hash: 303e46a6848f1937d12541a7fd58e61aa1361225
md5: e461c1a9d569ec3012b1cc5cae5b772b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.1/eclipse-poky-neon-sumo-19.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.1/eclipse-poky-neon-sumo-19.0.1.tar.bz2

Release Name: eclipse-poky-oxygen-sumo-19.0.1
Branch: oxygen/sumo
Tag: oxygen/sumo-19.0.1
Hash: 50528fa7874825b2ef5433e1ffab9326caaa72cb
md5: 2e50d8c4f7b387c798e2d6bf2c0f8fed
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.1/eclipse-poky-oxygen-sumo-19.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.1/eclipse-poky-oxygen-sumo-19.0.1.tar.bz2

Release Name: meta-qt3-sumo-19.0.1
Branch: sumo
Tag: sumo-19.0.1
Hash: 02f273cba6c25f5cf20cb66d8a417a83772c3179
md5: a183f583d3b8c098f53c616679ddf188
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.1/meta-qt3-sumo-19.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.1/meta-qt3-sumo-19.0.1.tar.bz2

Release Name: meta-qt4-sumo-19.0.1
Branch: sumo
Tag: sumo-19.0.1
Hash: 8e791c40140460825956430ba86b6266fdec0a93
md5: b11143810a04f202041db77b561e9785
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.1/meta-qt4-sumo-19.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.1/meta-qt4-sumo-19.0.1.tar.bz2

Release Name: poky-sumo-19.0.1
Branch: sumo
Tag: sumo-19.0.1
Hash: 24a833f40d837407baa4e8192f372d998a776b6c
md5: 8078539b50b4151dd0bf95d662ac4a25
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.1/poky-sumo-19.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.1/poky-sumo-19.0.1.tar.bz2


---------------
 Known Issues
---------------
N\A


---------------
Security Fixes
---------------
binutls: Security fix CVE-2018-10534
binutls: Security fix CVE-2018-10535
binutls: Security fix CVE-2018-10372
binutls: Security fix CVE-2018-10373
binutls: Security fix CVE-2018-7568
binutls: Security fix CVE-2018-7569
binutls: Security fix CVE-2018-7208
binutls: Security fix CVE-2018-7642
binutls: Security fix CVE-2018-6759
binutls: Security fix CVE-2018-6872
binutls: Security fix CVE-2018-7643
binutils: Security fix CVE-2018-8945
shadow: fix CVE-2017-2616
tiff: security fix CVE-2018-7456
tiff: security fix CVE-2018-8905
tiff: security fix CVE-2018-10963
Qemu: CVE-2018-11806 slirp-heap-buffer-overflow
glibc: fix CVE-2017-18269 and CVE-2018-11236
cpio: fix CVE-2016-2037
qemu: fix CVE-2017-16845
perl: fix CVE-2017-12837


---------------
Fixes
---------------
multilib_header: recognize BPF as a target
glibc: Make bits/wordsize.h multilibbed again
oe-pkgdata-util: package-info: Re-add support for the --extra option
oe-pkgdata-util: Make parse_pkgdatafile() support package suffixed vars
oe-pkgdata-util: lookup-recipe, package-info: Don't finish prematurely
devtool/sdk.py: error out in case of downloading file failure
documentation: Updated for a 2.5.1 release
ref-manual: Removed non-existant variable from PACKAGE_WRITE_DEPS description
sdk-manual: Fixed bad anchor string.
sdk-manual: Updated section on minimizing eSDK installer size
sdk-manual: Converted bullet list to ordered list
sdk-manual: Updated "Providing Additional Installable Extensible SDK Content"
sdk-manual: Provided better wording for sharing HTTP or HTTPS server
sdk-manual: Updates to sections for updating installed Ext SDKs
sdk-manual: Changed title to updating the SDK after install
sdk-manual: Fixed grammar error
sdk-manual: Updated section on changing title of extensible SDK installer
ref-manual: Updated DISTRO_NAME variable description.
ref-manual: Updated the DISTRO variable description
sdk-manual: Grammar fix
sdk-manual: Updates to "Adjusting the Extensible SDK to Suit Build Host"
sdk-manual: Updates to "Configuring the Extensible SDK" section
ref-manual: Fixed cross-reference wording in SDK_LOCAL_CONF_WHITELIST
ref-manual: Fixed grammar error in SDK_INHERIT_BLACKLIST description
ref-manual: Added cross-reference to SDK_LOCAL_CONF_BLACKLIST var
ref-manual: Updated the SDK_INHERIT_BLACKLIST variable description
ref-manual: Updated the SDK_LOCAL_CONF_WHITELIST variable description
ref-manual: Updated the SDK_LOCAL_CONF_BLACKLIST variable description
sdk-manual, mega-manual: Updated the fig for installed ext. SDK
sdk-manual, mega-manual: Updated standard SDK install directory figure
sdk-manual: Final edits to the extracting root filesystem section
sdk-manual: Added note in step to set SDKMACHINE
build-appliance-image: Update to sumo head revision
poky.conf: Bump version for sumo 2.5.1
classes/sanity: Clean up getstatusoutput usage
linux-firmware: add separate packages for all brcm files
linux-firmware: update LICENSE for bcm43* packages according to WHENCE file
linux-firmware: add ${PN}-cypress-license handling from meta-raspberrypi
python2: Fix build with gcc8
libxml2: fix libxml2 ptest fails
u-boot: Fix pylibfdt generation
kdump: start kdump.service after basic.target
gcc-7.3: Backport fixes for std::pair high memory usage
gcc-7.3: Fix build on ppc64le hosts
glibc-locale: Fix host-user-contaminated QA errors
yocto-uninative: Upgrade to version 2.2
gio-module-cache.bbclass: disable update_gio_module_cache postinst script for nativesdk
glibc: Avoid multilibbing on wordsize.h
u-boot: Fix build race condition
curl: update 7.60.0 -> 7.61.0
bash: fix wrong exit status offset
gnutls: use HTTP instead of FTP
insane: optimise buildpath search
wic/engine: use up all free space when expanding partitions
wic/engine: fix errors when expanding partitions
perf: disable parallelism for 'make clean'
linux-yocto/4.12: update to v4.12.26
linux-yocto/4.12: bump to v4.12.25
linux-libc-headers: To fix build error when enable mutilib on aarch64 Big endian.
staging: Always use the default sysroot for allarch recipes
staging: Improve fixup processing code
staging/image: Fix multilib recipe sysroot issues
bmap-tools: Add python3-fcntl dependency
rpm: Avoid leaking temporary scriplet files
busybox: Add patch to ignore -c on umount command
go: Update 1.10.2 -> 1.10.3
go: Update 1.9.6 -> 1.9.7
linux-firmware: upgrade to d114732 revision
ovmf: set PARALLEL_MAKE for target as well
pcmciautils: depend on bison-native
cryptodev: Fix build errors with v4.17+
systemd: remove the group 'lock'
minicom: change SRC_URI to use Debian mirrors
mirrors: add Debian snapshot mirror for 2018
shadow: update SRC_URI now Alioth is down
chrpath: Alioth is dead, use DEBIAN_MIRROR
iso-codes: fix SRC_URI
oeqa/selftest/systemd_boot: Never use cleansstate in QA tests without special handling of SSTATE_DIR
sdk-manual: Updates to section on obtaining the SDK
sdk-manual: Updates to "Building an SDK Installer" section.
sdk-manual: Updates to the section for locating SDK installers
meta-yocto-bsp: bump to the latest linux stable kernel for edgerouter/beaglebone
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
linux-yocto: update genericx86* SRCREVs for 4.15
linux-yocto: update genericx86* SRCREVs for 4.14
linux-yocto: update genericx86* SRCREVs for 4.12
bitbake: fetch2: fix import error for Python 3.6.5
lame: remove LICENSE_FLAGS
mpg123: remove LICENSE_FLAGS
lttng-modules: upgrade 2.10.5 -> 2.10.6
bitbake-blayers/create: add version for example recipe
send-error-report: decode response from server
popt: update SRC_URI
xinetd: Fix systemd service for systemd>237
cpio: rely on texinfo.bbclass for texinfo-native dependency
cpio: move contents of cpio_v2.inc into the cpio recipe
Add license file EPL-2.0
wpa-supplicant: fix the bug for PATCHTOOL = "patch"
nettle: do the multilib_header magic for nettle-stdint.h and version.h
attr/acl: disable make clean
sysklogd: fix typo in RCONFLICTS
sqlite3: consistent set of features for nativesdk
coreutils: fix nativesdk install failure
ovmf: Fix build with gcc8
yocto-uninative: Update to version 2.1
linux-yocto/4.14/4.15: fix gcc8 mips compilation issues
linux-yocto/4.15: crypto: aes-generic - fix aes-generic regression on powerpc
linux-yocto/4.14: update to v4.14.48
linux-yocto: add kernel sample configuration fragment
linux-yocto/4.12: gcc8 + platform support
kern-tools: avoid merge_config concatenation issues
linux-yocto/4.12: fix ppc cryptodev build
linux-yocto/4.14/4.15: gcc8 fixes
linux-yocto/4.15: update to v4.15.18
linux-yocto/4.14: update to v4.14.30
shared-mime-info: fix license statement
dropbear: drop run time detection of read-only rootfs
busybox: Fix lzma segfaults
bitbake.conf: drop redundant -nv from FETCHCMD_wget
oeqa/core/target/ssh.py: increase maximum read bytes from 1024 to 4096
testimage.bbclass: move codes into testimage_main
bitbake.conf: fix HOSTTOOLS setting related to image testing
oeqa/runtime/cases/multilib.py: fix test_file_connman skipping logic
oeqa/runtime/cases/multilib.py: skip if needed packages are not available
oeqa/runtime/cases/rpm.py: skip if rpm not available
oeqa/core/decorator/data.py: fix skipIfNotInDataVar
testimage.bbclass: also check 'auto' to create rpm index
oeqa/runtime/cases/dnf_runtime.py: skip test if PACKAGE_FEED_URIS is not set
oeqa/core/decorator/__init__.py: use 'cls' instead of 'obj'
oeqa/core/decorator/__init__.py: set metaclass to ABCMeta
testimage.bbclass: fix behavior of empty TEST_SUITES
oeqa/core/loader.py: support the 'auto' keyword
wic/bootimg-efi.py: recognize initrd when using grub
wic/engine.py: improve error message when required tools are missing
qemu: refresh patches with devtool and make them applicable with git
nativesdk-python*: suppress user site dirs
qemux86-directdisk.wks: remove uvesafb.mode_option
qemux86*: change default wic wks to qemux86-directdisk
ltp: build open posix test suite
bitbake.conf: drop obsolete commented out value for TARGET_LDFLAGS
runqemu-extract-sdk: allow install debugfs on rootfs
init-install: add timeout for legacy grub
linux-firmware: package rtl8168 firmware
site/powerpc64-linux: add cvs_cv_func_printf_ptr
nativesdk-rpm: Add wrappers for nativesdk support
initscripts: Avoid starting rpcbind daemon twice
shadow: fix pam configs for chpasswd, newusers
at: add libselinux to PACKAGECONFIG
gawk: fix command location in ptest script
gawk: upgrade to 4.2.1
shadow: update ownership and permission of /var/spool/mail
sdk-manual: Updates to Depolying and Debugging
sdk-manual: Updates to neon section building the project
sdk-manual: Updates to configuring the cross-toolchains section.
sdk-manual: Updated Neon creating the project section
sdk-manual: Updates to configuring targe options sections
sdk-manual: Updates to configuring the cross compiler options
sdk-manual: Fixed section capitalization problem.
sdk-manual: Used ordered list for sequence-dependent items.
sdk-manual: Updates to Neon intalling YP plug-in from latest source
sdk-manual: Updated the step to install the pre-build YP plug-in
sdk-manual: Updated steps to configure Neon Eclipse IDE
sdk-manual: Updated the Neon step to unpack the tarball
sdk-manual: Updates to step to download Neon Eclipse.
sdk-manual: Fixed link in the intro section for Neon
sdk-manual: Updated the note in Eclipse configuration section
sdk-manual: Updated step to install Oxygen
sdk-manual: Removed superfluous text from Step 5 of the flow.
sdk-manual: Updated workflow step on getting the image
sdk-manual: Updates to Eclipse Workflow section
rpm: Restore performance in Docker containers
Revert "rpm: add a patch to help with Docker performance issues"
rpm: Fix patch to ensure variables aren't used uninitialised
linux-firmware: upgrade to 8fc2d4e5 revision
libxcrypt: Upgrade to 4.0.1
cmake: fix build issue with boost 1.66.0
sysvinit-inittab: do not use 'exit 1' to postpone to first boot
linux-yoct/4.12: update to v4.12.24
linux-yocto/4.12: update to v4.12.23
linux-yocto/4.12: update to v4.12.22
curl: update 7.59.0 -> 7.60.0
curl: update to 7.59.0
wget: upgrade 1.19.4 -> 1.19.5
perf: fix build with kernel older than 4.8
systemd: Define basename() for musl
systemd: Fix build with gcc8
systemd: fix build with util-linux 2.32
util-linux: update to 2.32
grub2: fix build with gcc8
depmodwrapper-cross: Add kmod-native to DEPENDS
systemd: backport patch to fix build when gcrypt is enabled
perl: native modules will not trigger build perl for target.
distcc-doc_3.2: improve reproducibility
ifupdown: correct the repository location
settings-daemon: Drop pointless apply=yes in SRC_URI
go: Update 1.9.4 -> 1.9.6
go: Upgrade 1.10.1 -> 1.10.2
alsa-utils: Fix error when removing unwanted udev rules
mtd-utils: Add mtd-utils-tests package
perf: make a copy of kernel source to perf workdir
python3-native: correctly invoke regen-importlib make target
image_types_wic: add do_image_wic before do_image_complete
grub-efi: add grub target and image for aarch64
mtd-utils: Complement update-alternatives scope
linux-libc-headers: multilib_header asm/kvm_para.h and asm/bpf_perf_event.h
glibc: use oe_multilib_header on bits/floatn.h
procps: Complement update-alternatives scope
llvm: Fix [compile-host-path] QA issue
recipetool: fixed uncaught NameError exception
tzdata: fix a typo.
sdk-manual: Small edits correcting bits and pieces in Eclipse chapter.
sdk-manual: Edits to the Oxygen section
sdk-manual: Updated the "Makefile-Based Projects" section.
sdk-manual: Created a new Makefile flow diagram
sdk-manual: Review edits to the "Autotools-Based Projects" section.
sdk-manual: Updates to the "Makefile-Based Projects" section.
sdk-manual: Added cross-reference to Makefile section. Fixed syntax
sdk-manual, mega-manual: Added Autotools flow figure
sdk-manual: Updated the Autotools workflow example.
sdk-manual: Changed "configure.ac" file in the autotools-based example
sdk-manual: Updated link to variables set for cross-toolchain script
sdk-manual: Updated formatting for "configure" script
sdk-manual: Replaced "configure.in" with "configure.ac"
sdk-manual: Added cross-referencing to "Autotools-Based Projects"
sdk-manual: Edits to "Running the SDK Environment Setup Script"
sdk-manual: Edits to standard SDK intro and install sections
sdk-manual: Edits to "Creating a Derivative SDK With Additional Components"
sdk-manual: Edits to "Installing Additional Items Into the Extensible SDK"
sdk-manual: Edits to "Restoring the Target Device to its Original State"
sdk-manual: Edits to "Packaging" section.
sdk-manual: Edits to "Sharing Files Between Recipes"
sdk-manual: Edits to "Finding Logs and Work Files"
sdk-manual: Added links to sample tasks to "Working With Recipes"
sdk-manual: Edits to "Adding Node.js Modules"
sdk-manual: Edits to "Adding Native Tools"
sdk-manual: Edits to "Adding Makefile-Only Software"
sdk-manual: Edits to "License Detection"
sdk-manual: Edits to "Dependency Detection and Mapping"
sdk-manual: Edits to "Name and Version"
sdk-manual: Edits to "A Closer look at devtool add" section.
sdk-manual, mega-manual: Updated devtool add and upgrade figures
sdk-manual: Changes to the devtool upgrade section.
sdk-manual, mega-manual: Updated the devtool upgrade flow diagram.
sdk-manual: Edits to the devtool add workflow section.
sdk-manual, mega-manual: Updated devtool add flow diagram
sdk-manual: Updated devtool add workflow section.
sdk-manual: Edits to section on running the sdk installation script
bitbake: bitbake: Update version to stable release branch version 1.38
sdk-manual: Updates to "Running the Extensible SDK Environment Setup Script"
sdk-manual: Updated the "Installing the Extensible SDK" section.
sdk-manual: Minor edits to the intro chapter.
bsp-guide: Fixed MACHINE_EXTRA_RRECOMMENDS syntax in conf file example
dev-manual: Removed "newbie" chapter.
dev-manual: Moved "Speeding Up the Build" and renamed it.
ref-manual: Finalized edits on the 2.5 Migration section
dev-manual: Moved "Building Software from an External Source" section.
dev-manual: Moved "Building Images for More than One Machine" section.
dev-manual: Moved "Building a Tiny System"
dev-manual: Moved "Building an Initial RAM Filesystem (initramfs) Image"
dev-manual: Moved "Building Targets with Multiple Configurations"
dev-manual: Moved the "Simple Build" section
dev-manual: Pulled cloning sections up into a parent section.
dev-manual: Updated intro paragraph to exclude removed sections
dev-manual: Changed "Working With Yocto Project Source Files" title
dev-manual: Changed title to remove redundancy
dev-manual: Moved section on setting up a team YP environment
dev-manual: Updated intro chapter
overview-manual, dev-manual: Moved licensing how-to stuff to dev-manual
dev-manual: Updated "Enabling Runtime Tests on QEMU"
overview-manual, dev-manual: Moved Wayland and Weston
ref-manual: Chanaged a link to Wayland topic.
ref-manual: Formatting pass of 2.5 Migration section
overview-manual, dev-manual: Moved sstate debug tips sections
overview-manual: Updated "Invalidating Shared State" section
overview-manual: Updated "Shared State" section.
overview-manual: Updated "Cross-Development Toolchain Generation"
documentation: Removed release date ENTITY
ref-manual: Added 2.5 Migration Section
ref-manual: Updated the SDK_OUTPUT variable
ref-manual: Updated SDK_HOST_MANIFEST variable.
overview-manual: Minor edits to the SDK generation section.
overview-manual, mega-manual: Updated the sdk figure
overview-manual: Minor wording changes to the "Images" section.
overview-manual, mega-manual: Updated the Images figure
overview-manual: Updates to the "Images" section.
overview-manual: Updates to "Setscene Tasks and Shared State"
ref-manual: Updated PACKAGE_CLASSES variable note.
overview-manual: Updated text for Image and SDK generation.
overview-manual, mega-manual: Updated image generation image
overview-manual, mega-manual: Updated SDK generation image
overview-manual: Updated the "Package Splitting" section.
overview-manual, mega-manual: Updated package splitting figure
overview-manual: Changed title for configure/compile section.
ref-manual: Updated the STAGING_DIR variable description.
overview-manual, mega-manual: Updated the config/compile figure
overview-manual, mega-manual: Updated the package splitting figure.
ref-manual: Updated the PKGDATA_DIR variable description
ref-manual: Updated STAGING_DIR_HOST variable description.
overview-manual: Updated the "Configuration and Compilation" section
overview-manual, mega-manual: Updated Config and Compile figure
ref-manual: Revision updates to BUILDHISTORY_FEATURES variable.
overview-manual: Small revisions to "Patching" section.
ref-manual: Updated the FILESPATH variable description
ref-manual: Added a link to the patching section in the SRC_URI variable
ref-manual: Review edits added to do_patch task
sdk-manual, mega-manual: Updated devtool modify workflow diagram
sdk-manual: Updated devtool modify workflow section.
ref-manual: Updated do_patch task description
overview-manual: Added a link to the do_patch task.
overview-manual: Updated "Patching" section.
overview-manual: Increased viewport for patching.png image.
ref-manual: Updated the BUILDHISTORY_FEATURES variable description
ref-manual: Added "Patching" section reference to do_patch task
overview-manual: Converted paragraph on figure to note
overview-manual: Updated the "patching.png" figure
overview-manual, mega-manual: Updated source-fetching.png figure
overview-manual: Updated "Source Fetching" section.
ref-manual: Updated the TARGET_OS variable description
ref-manual: Updated PACKAGE_ARCH variable description.
toaster-manual: Updated step 7 of the To "Installation" section
toaster-manual: Updated "Setting Up Toaster Without a Web Server"
mega-manual: Updated the package-feeds.png file
overview-manual: Updated the package-feeds.png figure
dev-manual: New section in QEMU for workaround under KVM
toaster-manual: Updated database schema step for Toaster
toaster-manual: Updated bad links and added two sections
documentation: Added ENTITY variable to track a release date and year
poky.ent: Added a new variable for the release month and year
overview-manual: Updated "Sources" section with minor edits.
overview-manual, mega-manual: Updated figures
overview-manual, mega-manual: Updates to layers discussion for build flow
eclipse-help.sed: Cleaned up delimiters for readability.
overview-manual: Updates to "User Configuration" section.
dev-manual: Updated "Enabling Your Layer" section.
overview-manual, mega-manual: Updated user-configuration.png image
overview-manual: Updates to "OpenEmbedded Build System Concepts"
Makefile: Removed the old version of the BitBake workflow figure.
overview-manual, mega-manual: Removed bitbake workflow figure
overview-manual: Bolstered the "Layers" section in the concepts chapter.
overview-manual: Updates to "Components" section.
brief-yoctoprojectqs: Removed all references to "OpenEmbedded"
brief-yoctoprojectqs: Added clarifying statement for the build system
overview-manual: Changed build workflow title
overview-manual: Added a link to OpenEmbedded-Core
overview-manual: Added intro text for the concepts chapter.
brief-yoctoprojectqs: Added reviewer feedback
overview-manual: Removed redundant paragraph.
overview-manual: Updated checkout example for Git based on a tag.
overview-manual: Better wording for a workflow summary paragraph.
overview-manual: Fixed wording for use of DOWNLOADS page.
overview-manual: Added clearer instructions for downloading software
overview-manual: Grammar fix.
overview-manual: Grammar fix and link to build system added.
overview-manual: Added a link to the "build host" term.
overview-manual: Fixed grammar issue.
overview-manual: Added link to layers section.
overview-manual: Fixed grammar issue.
overview-manual: Removed redundant text for "build system"
overview-manual: Fixed reference to "chapter" that was "section"
overview-manual: Fixed link to the matchbox repo.
overview-manual: Added a link to the Toaster User Manual
overview-manual: Added a few links to the "Poky" term.
overview-manual: Added a few links for "OpenEmbedded build system" term.
brief-yoctoprojectqs: Added link to "OpenEmbedded build system" term.
brief-yoctoprojectqs: Added more detail about layer greatness.
overview-manual: Added link to YP Compatible program section.
overview-manual: Added a link to the YP workflow area from "Challenges"
overview-manual: Added links to supplemental webpage docs.
overview-manual: Added link to license information.
overview-manual: Added link to release cycle
overview-manual: Updated "Supports Partial Builds" bullet
overview-manual: Added meaningful links to feature bullet
overview-manual: Cleaned up other reference paragraph.
overview-manual: Added a bullet intro topic for the new concepts chapt.
overview-manual: Updated title .PNG file
dev-manual: Updated wording for Manage Granular Level Packaging
brief-yoctoprojectqs: Added sections on layers
dev-manual: Updated managing granular level packaging discussion.
dev-manual: Changed Wic example paths to be consistent.
ref-manual: Updated the sections pointing to the YP Release Notes.
poky.ent: Deleted the ENTITY for the YP Release Notes
dev-manual: Updated Wic example
sdk-manual: Updated Eclipse Oxygen plugin instructions
toaster-manual: Fixed note formatting in "Useful Commands"
toaster-manual: Fixed capitalization on "Build Directory" term.
toaster-manual: Fixed some links.
toaster-manual: Fixed a couple links.
ref-manual: Updated the Bugzilla section
ref-manual: Removed redundant TMPDIR link.
ref-manual: Fixed link to the kickstart chapter
ref-manual: Fixed TARGET_ARCH formatting.
ref-manual: Removed redundant link to CXXFLAGS variable.
ref-manual: Removed some redundant links.
ref-manual: Added "class" as part of a link to a class.
ref-manual: Added "class" as part of a link reference to a class.
ref-manual: Created better wording for link ambiguity
ref-manual: Removed redundant links to the WORKDIR variable.
ref-manual: Removed the link to SDK_DIR in the example.
ref-manual: Fixed formatting in SDK_DIR example.
ref-manual: Updated SDK_DEPLOY variable description.
ref-manual: Removed redundant link to PACKAGES.
ref-manual: Removed redundant link to the distutils class.
ref-manual: Removed redundant link to DEPENDS
ref-manual: Removed redundant link to OVERRIDES variable.
ref-manual: Updated PACKAGECONFIG_CONFARGS variable description.
ref-manual: Removed redundant link to DEPENDS variable.
ref-manual: Fixed broken link.
ref-manual: Fixed capitalization in section title link
ref-manual: Added kernel-dev title to links
ref-manual: Added title to kernel-dev manual as part of a section link.
ref-manual: Removed redundant link to INITRAMFS_IMAGE
ref-manual: Removed redundant link to Source Directory
ref-manual: Fixed link manual title for BitBake User Manual
ref-manual: Removed manual title as part of a cross-reference.
ref-manual: Fixed broken link to TARGET_VENDOR
ref-manual: Removed redundant FILESEXTRAPATHS link.
ref-manual: Fixed title for BitBake User Manual reference.
ref-manual: Corrected link title in DISTRO_FEATURES_BACKFILL
ref-manual: Removed link to WORKDIR in the D variable description.
ref-manual: Removed redundant links in COMBINED_FEATURES var.
ref-manual: Updated example string for BUILDHISTORY_COMMIT_AUTHOR.
ref-manual: Provided more relevant link for Python documentation
ref-manual: Removed redundant link in BB_DISKMONS_DIR variable
ref-manual: Updated APPEPND variable.
ref-manual: Updated link to the Build Appliances page on the website.
ref-manual: Removed redundant link for the DISTRO_FEATURES variable.
ref-manual: Replaced two old links with general kickstart link
ref-manual: Fixed title name in link.
ref-manual: Fixed reference context from "section" to "chapter"
ref-manual: Removed redundant link to do_unpack task.
ref-manual: Enhanced link to the host-user-contaminated test.
ref-manual: Fixed broken link to do_image task.
ref-manual: Removed link to DEPLOY_DIR variable.
ref-manual: Removed redundant link to IMAGE_FSTYPES variable.
ref-manual: Removed redundant link to the C/C++ Compiler Cache.
ref-manual: Fixed wording on how autotools classes build by default
ref-manual: Removed redundant link for "Source Direcotory" term.
ref-manual: Removed redundant link to WORKDIR variable.
ref-manual: Removed redundant link to "Build Directory" term
ref-manual: Fixed link to "naked" bsp-guide reference
ref-manual: Added "section" as part of a reference to the bitbake-user-manual.
ref-manual: Removed several redundant links to variables.
ref-manual: Removed redundant links to the DISTRO_FEATURES variable.
ref-manual: Fixed bad title for the bitbake-user-manual
ref-manual: Fixed bad link to naked sdk-manual
ref-manual: Fixed bad title string for "Toaster User Manual"
ref-manual: Removed redundant paragraph for links to variables.
ref-manual: Fixed mis-matched title in link to ptest.
ref-manual: Removed redundant link to the BAD_RECOMMENDATIONS variable.
ref-manual: Removed redundant link to IMAGE_FEATURES variable.
ref-manual: Fixed a link to a naked manual reference
ref-manual: Updated buildtools example script
ref-manual: Updated example buildtools .sh file.
kernel-dev: Fixed a few links throughout manual.
overview-manual, dev-manual: Cleaned up links to source repos
kernel-dev: Minor fixes.
kernel-dev: Fixed link to a section head
kernel-dev: Fixed two broken links from bad syntax.
bsp-guide: Fixed broken link to Raspberry Pi README.md file.
ref-manual, poky.ent: Removed old ENTITY to kernel-manual
bsp-guide: Fixed bad link that was going to old kernel manual
bsp-guide: Shortened link to the YP Source Repositories.
sdk-manual: Removed redundant link to "Build Directory"
sdk-manual: Scrubbed "Neon" occurrences from the Oxygen chapter.
sdk-manual: Fixed minor wording problem.
sdk-manual: Fixed bad title in link.
dev-manual: Fixed broken link
dev-manual: Fixed broken link to WORKDIR variable.
dev-manual: Replaced SERIAL_CONSOLE with SERIAL_CONSOLES
dev-manual: Fixed broken link to Carna Botnet's article.
dev-manual: Fixed target for a link.
dev-manual: Removed non-functioning link to EXTERNAL_TOOLCHAIN
poky.ent: Updated some autobuilder ENTITY variables
dev-manual: Replaced "BSD" with "BSP" typo. Also small word change.
documentation: Terminology fix for "OpenEmbedded Layer Index"
dev-manual: Removed redundant link.
dev-manual: Fixed formatting issue.
dev-manual: Slight wording change and link to a list of items.
dev-manual: Fixed a broken Gitolite link.
dev-manual: Fixed link to Toaster User Manual.
dev-manual: Removed writer note about needing a figure.
dev-manual: Fixed grammar... missing word.
documentation: Cleaned up links to the source repositories
mega-manual.sed: Improved readability
ref-manual: Fixed a link.
overview-manual: Scrubbed links and fixed a few
brief-yoctoprojectqs: Added customization file for eclipse
overview-manual: Review feedback applied
documentation: Updated everything for new overview-manual
mega-manual.sed: Added overview manual and extra subst.
poky.ent: Added YOCTO_DOCS_OM_URL entity
dev-manual, ref-manual: Fixed two broken links.
bsp-guide: Removed redundant word.
brief-yoctoprojectqs: Fixed broken link
documentation: Changed getting-started manual titles
documentation: Fixed links to old concepts-manual
yocto-project-qs: Removed this manual.
Makefile: Removed yocto-project-qs
concepts-manual: Removed chapters.
mega-manual: removed chapters from concepts manual
getting-started: Moved concepts-manual-concepts.xml to getting-started
mega-manual.sed: Removed the concepts-manual.
mega-manual: Removed the concepts-manual.
poky.ent: Removed the ENTITY for the concepts-manual.
Makefile: Removed concepts-manual
documentation: Removed references to the concepts-manual
getting-started: Added figures from old concepts-manual
sdk-manual: Updated "Installing the Neon Eclipse IDE"
dev-mnaual: Changed "Dockers" to "Docker"
dev-manual: Fixed grammar error.
dev-manual: Corrected "Docker" typo.
sdk-manual: Fixed reference to the Neon Appendix.
sdk-manual: Removed non-eclipse option for Eclipse flow
sdk-manual: Added cross-reference to QEMU Emulator.
sdk-manual: Formatting change to list.
sdk-manual: Fixed capitalization issue in a list.
sdk-manual: Updated heads for list on Eclipse development
sdk-manual: Updates to the "Using SDK Toolchain Directly" chapter
sdk-manual: Updated SDK installation script naming explanation.
sdk-manual: Updated note about some tools being deprecated
sdk-manual: Updated Eclipse trademarking usage
concepts-manual: Updated Image Generation section.
documentation: Fixed links to concepts-manual.
documentation: Fixed "Getting Started" manual links
mega-manual: Fixed various links to the dev-manual
mega-manual.sed: Improved readability for strings in .sed file
documentation: Updated "OpenEmbedded-Core" terms.
ref-manual: Updated LAYERSERIES_COMPAT description.
ref-manual: Updated LAYERSERIES_COMPAT variable description.
ref-manual: Fixed two grammar errors.
mega-manual.sed: Added brief-yoctoprojectqs to the script
documentation: Added brief-yoctoprojectqs to mega-manual
sdk-manual: Cleaned up section IDs between Neon and Oxygen
documentation: Purged the YP Quick Start references from YP set
ref-manual: Deleted the "ref-bitbake.xml" chapter
dev-manual: Added new section on conserving disk space
brief-yoctoprojectqs: Changed title
bsp-guide: Swapped SERIAL_CONSOLES for SERIAL_CONSOLE
bsp-guide: Updated SPL_BINARY discussion.
brief-yoctoprojectqs: Updated wording to use ENTITY variables
poky.ent: Added variables for doc version minus one
brief-yoctoprojectqs: Added link to getting started manual.
sdk-manual: Fixed duplicate link
bsp-guide: Fixed note on title page to have correct title.
ref-manual: Updated the SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS variable
Documentation: Updated Manual Notes
bsp-guide: Added new section for creating layer using bitbake-layers
ref-manual: Added variable description for SPL_BINARY
ref-manual: Updated the IMAGE_BOOT_FILES varaible.
ref-manual: Updated SERIAL_CONSOLE and SERIAL_CONSOLES variables.
ref-manual: Updated IMAGE_INSTALL variable description.
ref-manual: Updated EXTRA_IMAGECMD variable.
dev-manual: Added an id tag for the create layer step.
dev-manual: Updated the "Create Your Own Layer" section
dev-manual: Updated the "Creating Your Own Layer" section.
dev-manual: Updated the "Creating Your Own Layer" section.
dev-manual: Updated layer creation example to use $HOME directory
ref-manual: Added new variable description LAYERSERIES_COMPAT
poky.ent: Added two Minus-1 variables for release code names
sdk-manual: Added new appendix for Neon
sdk-manual: Removed Mars Appendix
bitbake: bitbake-user-manual: Updated copyright year on title page to 2018
bitbake: toaster: add 'Sumo' to release selection
toolchain-scripts/meta-ide-support: Handle dash shells correctly
toolchain-scripts: preserve host path in environment setup script


