Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDE4CE00D34; Thu, 26 Oct 2017 14:27:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	TO_NO_BRKTS_PCNT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FD52E00D30;
	Thu, 26 Oct 2017 14:26:59 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Oct 2017 14:26:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,301,1505804400"; d="scan'208";a="165476351"
Received: from lhan5-mobl.amr.corp.intel.com ([10.254.177.89])
	by orsmga005.jf.intel.com with ESMTP; 26 Oct 2017 14:26:57 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <55c94304-c46b-6001-89dc-9ca106aacaa4@intel.com>
Date: Thu, 26 Oct 2017 14:26:57 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.4 (rocko 18.0.0) Released
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
X-List-Received-Date: Thu, 26 Oct 2017 21:27:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.4 (rocko-18.0.0) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/poky-rocko-18.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4/poky-rocko-18.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW43_-_2017-10-23_-_Full_Test_Cycle_2.4_RC3

Thank you to everyone for all your hard work on this release!

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


-------------------
yocto-2.4 Errata
-------------------

Release Name: eclipse-poky-mars-rocko-18.0.0
Branch: mars/rocko
Tag: mars/rocko-18.0.0
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: a948420534a1e1eb6c1eb3b5858eb599
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/eclipse-poky-mars-rocko-18.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4/eclipse-poky-mars-rocko-18.0.0.tar.bz2

Release Name: eclipse-poky-neon-rocko-18.0.0
Branch: neon/rocko
Tag: neon/rocko-18.0.0
Hash: 83e0083ef3a71e10039ace7d18057dddc154408b
md5: 7a47832683c63cd1dd1c82078f886220
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/eclipse-poky-neon-rocko-18.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4/eclipse-poky-neon-rocko-18.0.0.tar.bz2

Release Name: eclipse-poky-oxygen-rocko-18.0.0
Branch: oxygen/rocko
Tag: oxygen/rocko-18.0.0
Hash: 126e707a6de212feeaaf093edc170aaa74192ce7
md5: 50c5d209e11d0ae84de6046be8d50d2c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/eclipse-poky-oxygen-rocko-18.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4/eclipse-poky-oxygen-rocko-18.0.0.tar.bz2

Release Name: meta-qt3-rocko-18.0.0
Branch: rocko
Tag: rocko-18.0.0
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 3755300f0f46b519735bf8be1e022515
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/meta-qt3-rocko-18.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4/meta-qt3-rocko-18.0.0.tar.bz2

Release Name: meta-qt4-rocko-18.0.0
Branch: rocko
Tag: rocko-18.0.0
Hash: f313dbee2ac3d5fcc9801407947d3cb6cfb90b5d
md5: 5af43b99008f9e33469b98621545cb0d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/meta-qt4-rocko-18.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4/meta-qt4-rocko-18.0.0.tar.bz2

Release Name: poky-rocko-18.0.0
Branch: rocko
Tag: rocko-18.0.0
Hash: 65d23bd7986615fdfb0f1717b615534a2a14ab80
md5: 69f9f9ffcb2a7b7002d625c79eb93763
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4/poky-rocko-18.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4/poky-rocko-18.0.0.tar.bz2


------------------------------
New Features / Enhancements
------------------------------

* Linux kernel 4.12, 4.10, 4.9 (LTS/LTSI), 4.4 (LTS)
* gcc 7.2
* glibc 2.26
* Significant work on binary reproducibility - >98% of packages generated when building core-image-sato are now reproducible.
* Support for Vulkan 3D graphics/compute API, enabled by default in poky distro configuration
* New "distrooverrides" class to selectively turn DISTRO_FEATURES into overrides (enabling bbappends with functionality conditional upon DISTRO_FEATURES)
* New VOLATILE_LOG_DIR variable to allow making /var/log persistent
* Support for merged / and /usr with "usrmerge" DISTRO_FEATURES item
* Parallelised rpm/ipk/deb package creation for improved performance
* Go improvements:
 - Added Go toolchain support
 - Added support for ARMv5 targets
 - Enhancements to go.bbclass for go-based recipes:
  - Added do_unpack function to handle common cases
  - Added GO_INSTALL_FILTEROUT variable
  - Separate source and build directories
  - Enable parallel build
  - Use global Go build flags
  - Split out the Go runtime into a separate go-runtime recipe
  - Build the Go runtime as a shared library
* Python improvements:
 - python 2 -> 3 migration for bmap-tools, libxml2, opkg-utils, parted.
 - The main "python3" package now brings in all of the standard Python 3 distribution rather than just a subset, matching the typical expected behaviour based on traditional Linux distributions.
* wic image creator enhancements:
 - New 'wic cp' command to copy files into an ext/vfat partition
 - New 'wic ls' command to list files in an ext/vfat partition
 - New 'wic rm' command to delete files in an ext/vfat partition
 - New 'wic write' command to write an image to a device (e.g. SD card)
 - New wks option --mkfs-extraopts
 - Added option to skip changing fstab
 - Allow multiple /boot partitions with different content
 - Switch to using --use-uuid by default
* devtool/recipetool enhancements:
 - devtool add now has explicit options to specify source revision and branch when fetching from a repository
 - devtool deploy-target can now strip binaries when deploying
 - New "devtool export" and "devtool import" subcommands to enable exchanging work-inprogress workspace content between users/build machines
 - New "devtool find-recipe" subcommand to simply find a recipe and print its path
 - recipetool create plugins can now set LICENSE, LIC_FILES_CHKSUM, PN and PV more easily
 - recipetool create / devtool add / devtool upgrade will check/set the branch when a revision is provided
 - recipetool create / devtool add can now detect Eclipse licenses
 - recipetool create / devtool add will disable PREMIRRORS and MIRRORS by default
 - recipetool create / devtool add will use the repository name as a fallback for the new recipe name
* BitBake improvements:
 - Reworked memory resident mode into persistent mode, making it practically usable (set BB_SERVER_TIMEOUT to a time in seconds to stay resident between commands)
 - "require" and "include" directives can now accept multiple files
 - "require" and "include" directives can now accept no parameter (making dynamic includes easier)
 - New BBFILES_DYNAMIC variable which allows activating layer content only when some other layers are present - i.e. allowing extension of content provided by other layers without creating hard dependencies
 - Now fires a BuildStarted event for each configuration when multiconfig is enabled
 - Support shallow mirror tarballs
 - Support keeping extra refs for shallow git fetches
 - Support removing arbitrary revs for shallow git fetches
 - Support per-branch/per-url depths for shallow git fetches
 - New "git-make-shallow" script to make a git repo shallow
 - Tinfoil API can now run full builds
 - Tinfoil API gained functions for getting cached recipe information
* Package QA improvements:
 - INSANE_SKIP will now work without a package specifier (i.e. will affect all packages within the recipe)
 - Added extensible framework for recipe-wide QA tests
 - Added package QA check for uppercase recipe names
 - Added package QA check for merged /usr
 - Improved handling of runtime file dependencies
* RPM packaging improvements:
 - RPM feed signing now re-enabled
 - RPM dependency generation now re-enabled
 - Support for signing files in the RPM payload
 - Use multithreaded xz compression (instead of single-threaded gz) for better performance and reduced disk space usage
* systemd improvements:
 - Enable resolved and networkd by default when systemd enabled
 - Added systemd service files to rng-tools, watchdog, dhcp (for dhclient)
 - Import systemd-machine-units recipe from meta-systemd
 - Added knobs for compiler specific nn, ar, ranlib
* Image generation improvements:
 - Make vmdk/vdi/qcow2 into conversion types
 - Make u-boot signed images more versatile by making "u-boot" a conversion type
 - Support lz4-compressed squashfs (squashfs-lz4 in IMAGE_FSTYPES)
 - Allow different filesystems to be used for live images
 - Made it easier to override image LICENSE by making "MIT" a weak default
 - ROOTFS_RO_UNNEEDED is now a weak default allowing it to be changed more easily
* Kernel-related improvements:
 - Move Device Tree support to kernel.bbclass
 - Support appending device tree to kernel
 - kernel-yocto: configuration updates: x86 features
 - linux-yocto: added usb-net configs by default
 - linux-yocto/meta: bluetooth: Adds BT_BREDR and BT_LE, which are needed as dependencies
 - linux-yocto/meta: configuration feature additions (bpf, sysrq, kexec, kdump, virtualbox)
 - linux-yocto/meta: configuration changes (wifi, kexec and nft)
 - linux-yocto: use weak default for LINUX_VERSION_EXTENSION and LINUX_KERNEL_TYPE to make them easier to override
* BSP improvements:
 - Added dtb for Beaglebone Green board to beaglebone BSP
 - Support for musl-x32 targets
 - Added wic.bmap to IMAGE_FSTYPES for mpc8315e-rdb
 - u-boot: enable dhcp for MPC8315 board
 - u-boot: update nios2 device tree for 10m50 board
 - Enabled pci feature for qemux86 / qemux86-64
 - Added nios2 to list of qemu targets (poky-only)
 - systemd-boot: Make EFI_CC overridable
* Buildhistory improvements:
 - Now makes a single commit per build rather than one per subdirectory in the repository (assuming commits are enabled with BUILDHISTORY_COMMIT = "1")
 - ptest results can now be included in buildhistory, allowing you to see improvements/regressions
 - buildhistory-diff now excludes paths from the output to make it easier to read
* Layer management improvements:
 - bitbake-layers now has a "create-layer" subcommand to create new empty layers (via a plugin / template in OE-Core)
 - bitbake-layers now checks layer dependencies before adding
 - New LAYERSERIES_COMPAT and LAYERSERIES_CORENAMES variables, allowing layers to specify which versions of the core project they are compatible with
* SDK improvements:
 - Added support for generating manifest files for extensible SDKs
 - Added support for executing pre-target commands
 - Added check for LD_LIBRARY_PATH in the SDK environment setup script to avoid interference
 - Extended recipes to nativesdk: python3-pip, python3-setuptools, shared-mime-info
* Symlinks can now be used for DEPLOY_DIR_IPK/RPM/DEB and other path variables
* Added recipes: assimp, autoconf-archive, go-dep, kmscube, libnsl2, libva-utils, llvm, ninja, re2c, vulkan, vulkan-demos
* Extended recipes to native: debianutils, gawk, libpcap
* Default mirrors class now provides git repo fallbacks using the https protocol
* File system permissions now easier to append to with FILESYSTEM_PERMS_TABLES (default now set in bitbake.conf)
* openssh: allow overriding OpenSSL HostKeys when read-only-rootfs
* busybox: made SYSLOGD optional
* cmake.bbclass: use `cmake --build` to build & install, allowing make replacements such as ninja to be used
* runqemu improvements:
 - Automatically add a TFTP directory for slirp boot
 - Use virtio to mount cdrom drives
 - Added --debug and --quiet
 - Support tar.bz2 and .tar.gz images
* cve-check class improvements:
 - Detect patched CVEs also from patch file names
 - Make warning contain CVE IDs
 - Use weak assignment for default CVE_PRODUCT 
 - Set correct CVE_PRODUCT in numerous recipes
* cross-canadian.bbclass: added ilp32 support
* gcc: Introduce a knob to configure gcc to default to PIE
* glibc-package.inc: added support for armeb of multilib
* initramfs-framework: include install-efi module in recipe for installation
* initramfs-framework: module to support boot live image
* initscripts: Populate volatile from existing file
* iproute2: added tipc support
* linuxloader.bbclass: added musl libc support
* module.bbclass: Added devshell support
* live-vm-common: added MKDOSFS_EXTRAOPTS variable
* oe-pkgdata-util: added unescape option to read-value subcommand
* oe-pkgdata-util: package-info: Allow extra variables to be displayed
* Added new PACKAGE_DEBUG_SPLIT_STYLE = "debug-with-srcpkg" option to split debug source out to a separate package
* Drop Qt4 and a number of perl recipes from the LSB images
* README.LSB has been added to describe the level of compatibility with LSB
* perf: enable libunwind
* rootfsdebugfiles.bbclass: added a optional parameter to choose file mode
* rootfs-postcommands: added test for unsatisfied RRECOMMENDS
* scripts/contrib/patchtest.sh: new script to run patchtest on local branch
* scripts/contrib/patchreview.py: new script to report recipe patch upstreamability statistics
* oe-setup-builddir's initial message is now entirely in conf-notes.txt making it completely overridable
* report-error class now includes the host distro identifier string when using uninative
* distrodata.bbclass: added UPSTREAM_VERSION_UNKNOWN and UPSTREAM_CHECK_UNRELIABLE
* Packaging enhancements:
 - Split packages out of linux-firmware for mt7601u WiFi chip, netronome, Broadcom BCM43362, Intel Bluetooth, Marvell PCIe WiFi, iwlwifi-3160-[10-17], Qualcomm QCA, i.MX SDMA
 - binutils: libbfd is now packaged in a separate "libbfd" package in order to save space when some tools (notably perf) are installed.
 - util-linux: su is now packaged in a separate "util-linux-su" package (only built when "pam" is in DISTRO_FEATURES), since su is normally provided by shadow and thus the util-linux version shouldn't be installed unless it is needed. The main util-linux package RDEPENDS on this package when "pam" is in DISTRO_FEATURES.
 - util-linux: switch_root is now packaged in a separate "util-linux-switch-root" package for small initramfs images which don't need the whole util-linux package (nor the busybox binary which is much larger than switch_root). The main util-linux package RRECOMMENDS this package.
 - util-linux: ionice is now packaged in a separate "util-linux-ionice" package for convenience. The main util-linux package RRECOMMENDS this package.
 - initscripts: sushell is now package in a separate "initscripts-sushell" package to allow systemd to pull it in when selinux is enabled without needing to pull in the entire initscripts package.
 - glib-2.0 now RRECOMMENDS shared-mime-info, as large portions of GIO are not that useful without the MIME database. This can be removed using BAD_RECOMMENDATIONS if shared-mime-info is too large and isn't required.
* Check and error during build startup if filesystem is case-insensitive
* utils.py: added helper function for optional include files
* create-pull-request: support format-patch options


------------------
 Known Issues
------------------

* On systems with Python 3.6, devtool modify, devtool upgrade and devtool extract will fail with an error "FileNotFoundError: [Errno 2] No such file or directory: '.../initial_rev". On such systems, the same underlying issue will also prevent bitbake from noticing any bbappends and recipes that are added while bitbake is resident in memory (i.e. BB_SERVER_TIMEOUT is set), but changes to existing files are unaffected.  There is a bitbake patch for the issue here: https://patchwork.openembedded.org/patch/145092/. This fix is planned to be incorporated in a point release. For more information see https://bugzilla.yoctoproject.org/show_bug.cgi?id=12185


-------------------------
Migration instructions
-------------------------

For details on changes that you might need to make when migrating to the
Yocto Project 2.4 release from previous releases, please see the following
manual section:
 
http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.4-release


------------------
Security Fixes
------------------

* bash: CVE-2016-0634, CVE-2017-5932
* binutils: CVE-2017-6969, CVE-2017-7209, CVE-2017-7210, CVE-2017-8392, CVE-2017-12448, CVE-2017-12449. CVE-2017-12451, CVE-2017-12452, CVE-2017-12454, CVE-2017-12455, CVE-2017-12456, CVE-2017-12457
* bluez5: CVE-2017-1000250
* cairo: CVE-2017-7475, CVE-2017-9814
* connman: CVE-2017-12865
* curl: CVE-2017-1000099, CVE-2017-1000100, CVE-2017-1000101 CVE-2017-12458, CVE-2017-12459, CVE-2017-12799, CVE-2017-12967, CVE-2017-13710
* elfutils: CVE-2017-7607, CVE-2017-7608, CVE-2017-7609, CVE-2017-7610, CVE-2017-7611, CVE-2017-7612, CVE-2017-7613, CVE-2016-10254,  CVE-2016-10255
* ffmpeg: CVE-2017-14054, CVE-2017-14055, CVE-2017-14056, CVE-2017-14057, CVE-2017-14058, CVE-2017-14059, CVE-2017-14169, CVE-2017-14170, CVE-2017-14171, CVE-2017-14222, CVE-2017-14223, CVE-2017-14225
* ghostscript: CVE-2017-7975, CVE-2016-7977, CVE-2016-7978, CVE-2016-7979, CVE-2016-8602, CVE-2017-9216, CVE-2017-9611, CVE-2017-9612, CVE-2017-9739, CVE-2017-9726, CVE-2017-9727, CVE-2017-9835, CVE-2017-11714
* lame: CVE-2017-13712
* libarchive: CVE-2017-14166, CVE-2017-14502
* libgcrypt: CVE-2017-0379, CVE-2017-7526
* libpcre2: CVE-2017-7186, CVE-2017-8786
* libsndfile1: CVE-2017-6892, CVE-2017-8361, CVE-2017-8362, CVE-2017-8363, CVE-2017-8365
* libsoup: CVE-2017-2885
* libtasn1: CVE-2017-10790
* libtirpc: CVE-2017-8779
* libxml2: CVE-2017-0663, CVE-2017-5969, CVE-2017-8872, CVE-2017-9047, CVE-2017-9048, CVE-2017-9049, CVE-2017-9050
* libxslt: CVE-2017-5029
* linux-yocto/4.4: CVE-2017-1000251
* linux-yocto/4.9: CVE-2017-1000251
* linux-yocto/4.10: CVE-2017-7346, CVE-2017-7541, CVE-2017-8890, CVE-2017-10911, CVE-2017-11472, CVE-2017-1000251, CVE-2017-1000363, CVE-2017-1000380
* linux-yocto/4.12: CVE-2017-1000251
* ncurses: CVE-2017-13732, CVE-2017-13734, CVE-2017-13730, CVE-2017-13729, CVE-2017-13728, CVE-2017-13731
* python-numpy, python3-numpy: CVE-2017-12852
* qemu: CVE-2017-13672, CVE-2017-13673, CVE-2017-13711, CVE-2017-14167
* rpcbind: CVE-2017-8779
* ruby: CVE-2017-9224, CVE-2017-9226, CVE-2017-9227, CVE-2017-9228, CVE-2017-9229, CVE-2017-14064
* shadow: CVE-2017-12424
* sqlite3: CVE-2017-10989, CVE-2017-13685
* subversion: CVE-2017-9800
* systemd: CVE-2017-1000082
* taglib: CVE-2017-12678
* tiff: CVE-2017-9147, CVE-2017-9936, CVE-2017-10668, CVE-2017-11335, CVE-2017-13726, CVE-2017-13727
* webkitgtk: CVE-2017-2538
* wget: CVE-2017-6508
* wpa_supplicant: CVE-2017-13077, CVE-2017-13078, CVE-2017-13079, CVE-2017-13080, CVE-2017-13081, CVE-2017-13082, CVE-2017-13086, CVE-2017-13087, CVE-2017-13088 (KRACK)
* xserver-xorg: CVE-2017-10971


------------------
Recipe Upgrades
------------------

* acpica: upgrade 20150515 -> 20170303
* adwaita-icon-theme: Upgrade 3.22.0 -> 3.24.0
* alsa-lib: 1.1.3 -> 1.1.4.1
* alsa-plugins: 1.1.1 -> 1.1.4
* alsa-utils: 1.1.3 -> 1.1.4
* apr: 1.5.2 -> 1.6.2
* apr-util: 1.5.4 -> 1.6.0
* apt: Upgrade to 1.2.24
* atk-spi2-core: Upgrade 2.24.0 -> 2.24.1
* atk: Upgrade 2.22 -> 2.24
* at-spi2-atk : 2.22.0 -> 2.24.1
* at-spi2-core: 2.22.0 -> 2.24.0
* automake: 1.15 -> 1.15.1
* babeltrace: update to 1.5.3
* bash: 4.3.30 -> 4.4
* bash-completion: upgrade to 2.7
* bind: 9.10.3-P3 -> 9.10.5-P3
* binutils: Upgrade to 2.29
* bluez5: Upgrade 5.43 -> 5.46
* bmap-tools: upgrade to v3.4
* boost: Upgrade to 1.64.0
* btrfs-tools: update to 4.12
* ca-certificates: update to 20170717
* cairo: Upgrade 1.14.8 -> 1.14.10
* clutter-1.0: Upgrade 1.26.0 -> 1.26.2
* clutter-gst-3.0: Upgrade 3.0.22 -> 3.0.24
* cmake: Upgrade to 3.8.2
* connman: upgrade to 1.34
* coreutils: 8.26 -> 8.27
* cryptodev: 1.8 -> 1.9
* cups: upgrade to 2.2.4
* curl: update to 7.54.1
* curl: upgrade to 7.54.0
* dbus: upgrade to 1.10.20
* dbus-test: upgrade to 1.10.20
* debianutils: 4.8.1 -> 4.8.1.1
* dhcp: 4.3.5 -> 4.3.6
* diffutils: upgrade to 3.6
* dmidecode: update to 3.1
* dnf: update to 2.6.3
* dpkg: Upgrade to 1.18.24
* dropbear: upgrade 2016.74 -> 2017.75
* dtc: upgrade to 1.4.4
* e2fsprogs: 1.43.4 -> 1.43.5
* ed: update to 1.14.2
* elfutils: 0.168 -> 0.170
* epiphany: upgrade to 3.24.3
* ethtool: Upgrade to 4.11
* eudev: update to 3.2.2
* expat: Upgrade to 2.2.3
* ffmpeg: update to 3.3.3
* file: 5.30 -> 5.31
* fontconfig: Upgrade 2.12.1 -> 2.12.4
* freetype: 2.7.1 -> 2.8
* gcc: Upgrade to 7.2.0 release
* gdbm: update to 1.13
* gdb: Upgrade to 8.0 release
* gdk-pixbuf: Upgrade 2.36.5 -> 2.36.8
* ghostscript: move to version 9.21
* git: 2.11.1 -> 2.13.3
* glib-2.0: Upgrade 2.50.3 -> 2.52.3
* glibc: Upgrade to 2.26
* gnome-desktop3: update to 3.24.2
* gnome-themes-standard: Upgrade 3.22.2 -> 3.22.3
* gnu-efi: Upgrade package to 3.0.6 and refresh patches
* gnupg: 2.1.18 -> 2.2.0
* gnutls: Upgrade to 3.5.13
* gobject-introspection: update to 1.52.1
* go: upgrade to 1.9
* gperf: upgrade to 3.1
* gpgme: 1.8.0 -> 1.9.0
* gptfdisk: update to 1.0.3
* grep: upgrade to 3.1
* grub: Update to 2.02
* gstreamer1.0-libav: upgrade to version 1.12.2
* gstreamer1.0-omx: upgrade to version 1.12.2
* gstreamer1.0-plugins-bad: upgrade to version 1.12.2
* gstreamer1.0-plugins-base: upgrade to version 1.12.2
* gstreamer1.0-plugins-good: upgrade to version 1.12.2
* gstreamer1.0-plugins-ugly: upgrade to version 1.12.2
* gstreamer1.0-python: upgrade to version 1.12.2
* gstreamer1.0-rtsp-server: upgrade to version 1.12.2
* gstreamer1.0: upgrade to version 1.12.2
* gstreamer1.0-vaapi: upgrade to version 1.12.2
* gtk+3: 3.22.8 -> 3.22.17
* gtk-icon-utils-native: 3.22.16 -> 3.22.17
* harfbuzz: upgrade to 1.4.8
* hdparm: Upgrade to 9.52
* icu: update to 59.1
* iproute2: Upgrade 4.10.0 -> 4.11.0
* iso-codes: upgrade to 3.75
* json-c: Upgrade to 0.12.1 release
* json-glib: upgrade 1.2.2 -> 1.2.8
* kconfig-frontends: update to 4.10.0.1
* kmod: upgrade to 24
* libarchive: 3.2.2 -> 3.3.2
* libatomic-ops: Upgrade to 7.6.0
* libbsd: 0.8.3 -> 0.8.6
* linux-libc-headers: update to 4.12
* libcroco: Upgrade 0.6.11 -> 0.6.12
* libdnf: update to 0.9.3
* libdrm: 2.4.75 -> 2.4.83
* libepoxy: 1.4.0 -> 1.4.3
* liberation-fonts: update to 2.00.1
* libevdev: Upgrade 1.5.6 -> 1.5.7
* libevent: 2.0.22 -> 2.1.8
* libfakekey: upgrade to 0.3+gitAUTOINC+7ad885912e
* libgcrypt: upgrade to 1.8.0
* libgpg-error: 1.26 -> 1.27
* libinput: upgrade to 1.8.1
* libjpeg-turbo: upgrade to 1.5.2
* libnewt: 0.52.19 -> 0.52.20
* libpciaccess: 0.13.4 -> 0.13.5
* libpcre2: 10.22 -> 10.23
* libpcre: upgrade 8.40 -> 8.41
* libpng: 1.6.28 -> 1.6.31
* libpthread-stubs: upgrade to 0.4
* librsvg: 2.40.16 -> 2.40.18
* libsndfile1: 1.0.27 -> 1.0.28
* libsolv: upgrade to 0.6.28
* libsoup-2.4: Upgrade 2.56.0 -> 2.58.2
* libtasn1: upgrade 4.10 -> 4.12
* libtiff: Upgrade to 4.0.8
* libtirpc: upgrade to 1.0.2
* libunwind: update to 1.2
* liburcu: update to 0.10.0
* liburi-perl: Upgrade to 1.72
* libva: upgrade to 1.8.3
* libx11: 1.6.4 -> 1.6.5
* libx11-diet: 1.6.4 -> 1.6.5
* libxml-namespacesupport-perl: Upgrade 1.11 -> 1.12
* libxml-sax-base-perl: upgrade to 1.09
* libxml-simple-perl: Upgrade to 2.24
* linux-firmware: bump to latest linux-firmware git revision
* linux-yocto/4.10: update to v4.10.17
* linux-yocto/4.12: update to v4.12.12
* linux-yocto/4.4: update to v4.4.87
* linux-yocto/4.9: update to v4.9.49
* linux-yocto-dev: bump to 4.12+
* linux-yocto-rt: 4.9-rt18
* logrotate: Bump to 3.12.3
* lsbinitscripts: Upgrade to 9.72
* ltp: upgrade to upstream latest commit on 20170804
* lttng-modules: update to 2.9.3
* lttng-tools: update to 2.9.5
* lttng-ust: update to 2.9.1
* lz4: update to lastest 1.7.4
* lzip: Upgrade 1.18 -> 1.19
* lzo: Upgrade 2.09 -> 2.10
* man-pages: Upgrade to 4.11
* matchbox-desktop: Upgrade to 2.2
* mc: upgrade to 4.8.19
* mesa: Upgrade to 17.1.7 release
* minicom: upgrade to 2.7.1
* mmc-utils: Upgrade to latest git version
* mobile-broadband-provider-info: upgrade to 20170310
* mpeg2dec: upgrade to version 0.5.1
* mpg123: upgrade to 1.25.6
* musl: Upgrade to latest master
* nasm: Upgrade 2.12.02 -> 2.13.01
* ncurses: 6.0+20161126 -> 6.0+20170715
* nfs-utils: upgrade to 2.1.1
* npth: update to 1.5
* nspr: upgrade to 4.16
* nss: Update to 3.31.1
* ofono: upgrade to 1.20
* openssh: upgrade to 7.5p1
* openssl: add a 1.1 version (not selected by default)
* openssl: Upgrade 1.0.2k -> 1.0.2l
* opkg: upgrade to v0.3.5
* opkg-utils: rename recipe to follow versioned releases
* orc: upgrade to 0.4.27
* ovmf: Update to latest
* pango: 1.40.3 -> 1.40.6
* pciutils: upgrade to 3.5.5
* piglit: Update to current git master
* pinentry: update to 1.0.0
* pkgconfig: upgrade 0.29.1 -> 0.29.2
* poky: bump poky lsb to linux 4.9
* psplash: upgrade to latest git revision
* ptest-runner: Upgrade to to 2.1+gitAUTOINC+78afe246fb
* python3-docutils: update to 0.14
* python3-git: upgrade to 2.1.5
* python3-mako: update to 1.0.7
* python3-pygobject: update to 3.24.1
* python*-git: Upgrade to version 2.1.3
* python-numpy: Upgrade to 1.13.1
* python*-setuptools: update to 36.2.7
* python3: update to 3.5.3
* qemu: upgrade to version 2.10.0
* ruby: upgrade to 2.4.1
* screen: upgrade to 4.6.1
* speex: upgrade 1.2rc2 -> 1.2.0
* sqlite3: upgrade to 3.20.0
* strace: upgrade to 4.18
* subversion: Upgrade 1.9.5-> 1.9.6
* sudo: upgrade to 1.8.20p2
* sysprof: update to 3.24.1
* sysstat: upgrade to 11.5.7
* systemd: update to 234
* tcl: 8.6.6 -> 0.8.7
* trace-cmd: update to 2.6.1
* u-boot: Upgrade to 2017.09
* uninative: Update to 1.7 uninative release
* util-linux: upgrade to 2.30
* vala: upgrade to 0.36.4
* valgrind: Update 3.12.0 -> 3.13.0
* vte: Upgrade 0.46.1 -> 0.48.3
* wayland-protocols: upgrade to 1.10
* webkitgtk: update to 2.16.6
* xf86-input-libinput: Upgrade 0.24.0 -> 0.25.1
* xkbcomp: Upgrade 1.3.1 -> 1.4.0
* xkeyboard-config: Upgrade 2.20 -> 2.21
* xserver-xorg: Upgrade 1.19.1 -> 1.19.3


