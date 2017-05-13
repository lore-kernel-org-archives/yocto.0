Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC20AE00ACE; Fri, 12 May 2017 17:20:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31079E00826;
	Fri, 12 May 2017 17:20:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 May 2017 17:20:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,332,1491289200"; d="scan'208";a="1168478707"
Received: from kbloop-mobl.amr.corp.intel.com ([10.254.57.164])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2017 17:20:00 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <59165130.4000409@intel.com>
Date: Fri, 12 May 2017 17:20:00 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.3 (pyro 17.0.0) Released
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
X-List-Received-Date: Sat, 13 May 2017 00:20:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello,

The latest release of the Yocto Project 2.3 (pyro-17.0.0) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/poky-pyro-17.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3/poky-pyro-17.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/2.3_QA_Status

Thank you to everyone for all your hard work on this release!

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.3 Errata
------------------

Release Name: eclipse-poky-mars-pyro-17.0.0
Branch: mars/pyro
Tag: mars/pyro-17.0.0
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: a42d4540e744651b8ededa1cdffef2d8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/eclipse-poky-mars-pyro-17.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3/eclipse-poky-mars-pyro-17.0.0.tar.bz2

Release Name: eclipse-poky-neon-pyro-17.0.0
Branch: neon/pyro
Tag: neon/pyro-17.0.0
Hash: 83e0083ef3a71e10039ace7d18057dddc154408b
md5: dc99a5c66980fb6fe2880be22390fd54
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/eclipse-poky-neon-pyro-17.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3/eclipse-poky-neon-pyro-17.0.0.tar.bz2

Release Name: meta-qt3-pyro-17.0.0
Branch: pyro
Tag: pyro-17.0.0
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f 
md5: 09d11c5281fe707f9803baa2c81313d5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/meta-qt3-pyro-17.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3/meta-qt3-pyro-17.0.0.tar.bz2

Release Name: meta-qt4-pyro-17.0.0
Branch: pyro
Tag: pyro-17.0.0
Hash: e120a2193be3982d55741fb9e51472db6ab9a5cd
md5: 4c5af189c711ff11de279e833306f681
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/meta-qt4-pyro-17.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3/meta-qt4-pyro-17.0.0.tar.bz2

Release Name: poky-pyro-17.0.0
Branch: pyro
Tag: pyro-17.0.0
Hash: 381897c64069ea43d595380a3ae913bcc79cf7e1
md5: 717ba46001eebb2ea52c2f38ba58bf7a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/poky-pyro-17.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3/poky-morty-17.0.0.tar.bz2


-----------------------------
New Features / Enhancements
-----------------------------

* Linux kernel 4.10, 4.9 (LTS/LTSI), 4.4 (LTS), and 4.1 (LTSI)
* glibc 2.25
* gcc 6.3.0
* Major improvements to build robustness:
 - Recipe Specific Sysroots: we now use a sysroot per recipe instead of sharing one per machine, in order to avoid non-determinisic build results and intermittent failures as a result of any undeclared dependencies.
 - PATH is now filtered within build tasks, using symlinks to only allow calling whitelisted tools from the build host in order to reduce the possibility of host contamination
* Replaced smart+rpm5 with dnf+rpm4 for more standard and widely-supported RPM functionality
* Added recipes for golang compilers and tools
* Added yocto-compat-layer.py script to validate Yocto Project compatible status
* New recipes: acpica, go, go-native, go-cross, gstreamer1.0-vaapi, lzip, ovmf, python3-pycurl, python-pygpgme, python-iniparse, python-backports-lzma, libcomps, libpcre2, librepo, vulkan
* Extended recipes to native: libbsd, time, expect, socat, gpgme, python-ptyprocess, python-pexpect, net-tools, python3-pip
* Kernel-related changes:
 - kernel-yocto: add Link Time Optimization features for poky-tiny
 - kernel-yocto: firewire and audio configuration updates
 - kernel-yocto/features: enable TPM
 - kernel-yocto: ecryptfs, NFC and CAN bus config updates
 - kern-tools: flag CONFIG options with invalid spaces
 - kernel.bbclass: Give sanity check function an opt-out variable
 - kernel.bbclass: introduce INITRAMFS_IMAGE_NAME
 - kernel-module-split: Append KERNEL_VERSION string to kernel module package name
 - module.bbclass: allow overriding the location of Module.symvers
 - kernel-fitimage: Use compressed ramdisks in FIT images if available
 - linux-yocto: add dm-verity
 - Added support for Intel Memory Protection Extensions in linux-yocto and gcc-runtime 
 - New tool scripts/tiny/ksum.py generates a combined summary of vmlinux and module sizes for a built kernel
* General image generation improvements:
 - Enable generation of wic.bmap for genericx86/genericx86-64, beaglebone & edgerouter
 - Produce wic images for mpc8315e-rdb
 - Add support for compressing initramfs with lz4
 - Add support for lzo compressed initial ramdisk
 - Add a core-image-tiny-initramfs image for creating image artifacts for use by tools such as wic
 - Add basic "container" image type
 - Allow configuring output file name with image-buildinfo class
* wic changes:
 - Support 'msdos' fstype
 - Add WKS_FILE_DEPENDS variable
 - bootimg-pcbios: add support for syslinux vesamenu
 - Add --exclude-path option to rootfs source plugin.
 - image_types.bbclass: look for wks files in <layer>/wic
 - Add --fixed-size wks option
 - Add machine-specific kickstart files for mpc8315e-rdb, beaglebone, genericx86 & edgerouter under meta-yocto-bsp/wic to make them easier to find
* runqemu / QEMU changes:
 - Add user mode (SLIRP) support to x86 QEMU targets
 - Allow using qemu from the host
 - Allow bypassing of network setup
 - Let command line parameters override defaults
 - Support UEFI with OVMF firmware
 - Support virtual TPM
 - Output network configuration
* SDK changes:
 - Add cmake
 - Add libssp (if available) by default for stack-smashing protection
 - Add documentation packages to SDK if api-documentation is in DISTRO_FEATURES
 - Extended recipes to nativesdk: libbsd, libyaml, time, net-tools, libxml-parser-perl, libgcrypt, libgpg-error, tcl, gawk, json-glib, libcheck
* devtool/recipetool changes:
 - Add --port/-P argument to devtool deploy for target connection
 - Optional npm install of devDependencies
 - Show recipetool create output in real time in "devtool add"
 - New "devtool rename" subcommand
 - Support postinst scripts when importing .deb packages
* Build statistics (buildstats) improvements:
 - Added task-time, a simple buildstats analysis script
 - Record disk space usage and render in pybootchartgui
 - Show system utilization in pybootchartgui
* BitBake changes:
 - New Task Explorer ("taskexp") UI replaces "depexp" acting as a more accurate viewer reflecting task dependencies
 - Monitor disk space at regular time intervals
 - New --runall command-line option to run all tasks in specific build target (obviates the need to create a do_*all task, e.g. do_fetchall or do_cleanall)
 - Better sanity checking for basehash changing
 - New multiconfig '*' syntax support
 - Made -q/--quiet option a level option, specify multiple times for more quiet output
 - Added Amazon AWS S3 fetcher
 - Reworked tinfoil API for utility scripts
* Improved the ability to analyse signature/input changes:
 - Improved output readability and reliability of bitbake-diffsigs
 - classes/buildhistory: optionally collect task input/output signatures on every build
 - buildhistory-diff: add option to compare task signatures
 - bitbake-diffsigs: add an option to find and compare specific signatures
 - bitbake-dumpsig: Allow recipe and task to be specified
* buildhistory-diff: report directory renames
* classes/buildhistory: add layer name to source recipe data
* Added acl to default DISTRO_FEATURES
* Native/nativesdk recipes now built with their own DISTRO_FEATURES values to avoid unnecessary rebuilds
* Allow udev-hwdb to be optional so you can remove it to save space (now an RRECOMMENDS)
* Support xz-compressed patches
* Added devupstream class to make it easy to add recipe variants that track an upstream development repository
* ovmf: provide option and image recipe to enable Secure Boot
* externalsrc.bbclass: Add task do_buildclean
* rm_work.bbclass: allow preserving additional content
* rm_work.bbclass: introduce do_build_without_rm_work
* bitbake-layers: show-appends: add optional argument to limit package list
* libdrm: enable etnaviv experimental support
* Use xf86-input-libinput by default
* webkitgtk: Add an option to disable opengl support
* xserver-xorg: Enable glamor by default
* u-boot: add support for timeout & default in extlinux.conf
* u-boot: add option to specify FDT argument in extlinux.conf
* Add oe-git-archive script for simply archiving and pushing build stats or other output to a git repo
* terminal.bbclass: export configure vars
* libc-package.bbclass: split binary localedata even more if asked to
* openssl: Add support for many MIPS configurations
* arch-mips: Add MIPS 64r6 N32 tune
* initscripts: mount configfs if present
* apt: enable scheduled maintenance scripts
* opkg: enabled libsolv backend by default for more accurate dependency resolution
* musl: enabled GObject introspection
* package.bbclass: Add SHLIB detection support for mingw targets
* gcc: create symlinks for gcov and gcov-tool for the target
* Add QAPKGTEST, a package-wide equivalent to QAPATHTEST, for more efficient package QA tests
* sstate: Make SSTATE_SCAN_CMD configurable using weak defaults
* sstate: update .siginfo atime for local mirrors
* cve-check: allow recipes to override the product name
* Added manpages class to enable building documentation via api-documentation being in DISTRO_FEATURES
* Include license text in LIC_FILES_CHKSUM validation error messages

-----------------
 Known Issues
-----------------

* Signing of remote package feeds using PACKAGE_FEED_SIGN is not currently supported. See bug 11209 for details.

* As detailed in bugs https://bugzilla.yoctoproject.org/show_bug.cgi?id=10832
and https://bugzilla.yoctoproject.org/show_bug.cgi?id=10881, an eSDK built on
a machine with the host gcc version >= 5.0 cannot be installed on a machine
where the host gcc version is 4.8 or 4.9. Therefore, the eSDK’s available on
the downloads.yoctoproject.org site in release 2.3 are only for machines with
host gcc version >= 5.0. As a workaround, if you need an eSDK for a machine
with a gcc version < 5.0, you can build your own on a machine with that gcc
version. To be explicit, an eSDK built on a machine with host gcc version of
4.8 will work on a machine with gcc version 4.8 or 4.9 or 5.0 or greater and
one built on gcc version 4.9 will work on a machine with gcc version 4.9 or
5.0 or greater.

------------------------
Migration instructions
------------------------

For details on changes that you might need to make when migrating to the
Yocto Project 2.3 release from previous releases, please see the following
manual section:
 
http://www.yoctoproject.org/docs/2.3/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.3-release


-----------------
Security Fixes
-----------------

* bash: fix CVE-2016-9401
* binutils: Fix CVE-2017-6965 and CVE-2017-6966
* busybox: Security fix BUG9071
* busybox: Security fix CVE-2016-6301
* cmake: Backport fix to enable -Wformat-security
* console-tools: fix string formatting issue
* curl: Update to version 7.51.0 (fixes  CVE-2016-8615, CVE-2016-8616, CVE-2016-8617, CVE-2016-8618, CVE-2016-8619, CVE-2016-8620, CVE-2016-8621, CVE-2016-8622, CVE-2016-8623, CVE-2016-8624, CVE-2016-8625)
* expect: resolve string formatting issues
* gcc: Fix CVE-2016-6131 in libiberty
* gettext: fix formatting issues
* ghostscript: CVE-2017-7207
* glibc: fix CVE-2016-6323
* gstreamer: update to 1.10.4 (CVE-2017-5847, CVE-2017-5848)
* kexec-tools: Add patches to enable format-security
* libpng12: Upgrade 1.2.56 -> 1.2.57
* libpng: Upgrade 1.6.26 -> 1.6.28
* libxml2: fix CVE-2016-4658
* libxml2: Fix more NULL pointer derefs
* libxml2: Security fix CVE-2016-5131
* linux-yocto/4.1: fix CVE-2016-5195 (dirtycow)
* linux-yocto/4.4: update to v4.4.26 (CVE-2016-5195 - dirtycow)
* linux-yocto/4.4: update to v4.4.32 (CVE-2016-8630)
* linux-yocto/4.x: CVE-2016-8655
* musl: Security fix CVE-2016-8859
* openssh: fix CVE-2016-8858
* openssl: CVE-2004-2761
* openssl: Security fix CVE-2016-7055
* qemu: display: CVE-2016-9908
* qemu: display: CVE-2016-9912
* qemu: fix CVE-2016-7423 and CVE-2016-7908
* qemu: fix CVE-2016-7909
* qemu: supplementary fix of CVE-2016-5403
* screen: update to 4.5.1 (CVE-2017-5618)
* systemd: CVE-2016-7795
* tar: CVE-2016-6321
* tiff: Update to 4.0.7 (fixes CVE-2016-9297, CVE-2016-9448, CVE-2016-9273, CVE-2014-8127, CVE-2016-3658, CVE-2016-5875, CVE-2016-5652, CVE-2016-3632)
* tiff: Fix CVE-2016-9533, CVE-2016-9534, CVE-2016-9536 and CVE-2016-9537
* tiff: fix CVE-2017-5225
* tiff: Security fix CVE-2016-3622
* tiff: Security fix CVE-2016-3623
* tiff: Security fix CVE-2016-3945
* tiff: Security fix CVE-2016-3990
* tiff: Security fix CVE-2016-3991
* tiff: Security fix CVE-2016-9535
* tiff: Security fix CVE-2016-9538
* tiff: Security fix CVE-2016-9539
* tiff: Security fix CVE-2016-9540
* unzip: CVE-2014-9913 CVE-2016-9844


-----------------
Recipe Upgrades
-----------------

* acpid: Upgrade 2.0.27 -> 2.0.28
* adwaita-icon-theme: Upgrade 3.20 -> 3.22.0
* alsa-lib: 1.1.2 -> 1.1.3
* alsa-tools: 1.1.0 -> 1.1.3
* alsa-utils-scripts: update 1.1.2 -> 1.1.3
* alsa-utils: update 1.1.2 -> 1.1.3
* atk: Upgrade 2.20.0 -> 2.22.0
* at-spi2-atk: Upgrade 2.20.1 -> 2.22.0
* at-spi2-core: Upgrade 2.20.2 -> 2.22.0
* autogen-native: Update to version 5.18.12
* babeltrace: update to 1.5.2
* bash-completion: update to 2.5
* binutils: Upgrade to 2.28 release
* bluez5: Upgrade 5.41 -> 5.43
* boost: update to 1.63.0
* btrfs-tools: update to 4.9.1
* byacc: upgrade to 20161202
* ca-certificates: update to 20161130
* cairo: Upgrade 1.14.6 -> 1.14.8
* ccache: Upgrade to v3.3.4
* clutter-gst-3.0: Update to version 3.0.22
* clutter-gtk-1.0: Update to version 1.8.2
* cmake: Update to 3.7.2
* cogl-1.0: Upgrade 1.22.0 -> 1.22.2
* coreutils: upgrade to 8.26
* cryptodev: update to handle 4.10 kernel API
* cups: upgrade to 2.2.2
* curl: upgrade to 7.53.1
* dbus/dbus-test: upgrade to 1.10.14
* dbus-glib 0.106 -> 0.108
* debianutils: 4.8 -> 4.8.1
* dhcp: 4.3.4 -> 4.3.5
* diffutils: 3.4 -> 3.5
* dosfstools: upgrade to 4.1
* dpkg: Upgrade to 1.18.10
* dtc: update to 1.4.2
* e2fsprogs 1.43 -> 1.43.4
* ed: update to 1.14.1
* elfutils: 0.166 -> 0.168
* epiphany: update to 3.22.6
* ethtool: Upgrade 4.6 -> 4.8
* eudev: Upgrade to 3.2.1
* ffmpeg: update to 3.2.4
* file: 5.28 -> 5.30
* flac: 1.3.1 -> 1.3.2
* flex: upgrade to 2.6.2
* freetype: Upgrade 2.6.5 -> 2.7.1
* gawk: Update to version 4.1.4
* gcc6: Upgrade to 6.3.0
* gdb: Upgrade to 7.12.1
* gdk-pixbuf: 2.34.0 -> 2.36.5
* ghostscript 9.19 -> 9.20
* git: upgrade to 2.11.1
* glib-2.0: Upgrade 2.48.2 -> 2.50.3
* glibc: Update to 2.25 release
* glib-networking: Upgrade 2.48.2 -> 2.50.0
* gmp: Update to 6.1.2
* gnome-desktop3: update to 3.22.2
* gnome-themes-standard: Upgrade 3.20.2 -> 3.22.2
* gnu-efi: 3.0.4 -> 3.0.5
* gnupg: 2.1.14 -> 2.1.18
* gnutls: update to 3.5.9
* gobject-introspection: update to 1.50.0
* gpgme: 1.6.0 -> 1.8.0
* grep: upgrade to 3.0
* grub-git: Upgrade to tip of master
* gsettings-desktop-schemas: Upgrade 3.20.0 -> 3.22.0
* gst-player: Upgrade to recent git revision
* gstreamer: update to 1.10.4
* gtk+3: Upgrade 3.20.9 -> 3.22.8
* gtk-icon-utils-native: Upgrade 3.20.9 -> 3.22.1
* gtk+: Upgrade 2.24.30 -> 2.24.31
* guile: 2.0.12 -> 2.0.14
* harfbuzz: Upgrade 1.3.0 -> 1.4.1
* hdparm: 9.48 -> 9.51
* icu: update to 58.2
* ifupdown: upgrade to 0.8.16
* iproute2: upgrade to 4.10.0
* iptables: upgrade to 1.6.1
* iso-codes: update to 3.74
* iw: upgrade to 4.9
* kbd: update to 2.0.4
* kexec-tools: Update to 2.0.14
* less: 481 -> 487
* libarchive: update to 3.2.2
* libdrm: Upgrade 2.4.70 -> 2.4.75
* libepoxy: upgrade to 1.4.0
* libevdev: Upgrade 1.5.2 -> 1.5.6
* libfm: update to 1.2.5
* libgcrypt: 1.7.3 -> 1.7.6
* libgpg-error: Update to version 1.26
* libgudev: Upgrade 230 -> 231
* libinput: Upgrade 1.4.1 -> 1.6.1
* libjpeg-turbo: Upgrade 1.5.0 -> 1.5.1
* libksba: update to 1.3.5
* libnl: update to 3.2.29
* libnotify : 0.7.6 -> 0.7.7
* libpcap: Update to version 1.8.1
* libpcre: 8.39 -> 8.40
* libpng12: Upgrade 1.2.56 -> 1.2.57
* libpng: Upgrade 1.6.24 -> 1.6.28
* libproxy: update to version 0.4.14
* libsamplerate0: 0.1.8 -> 0.1.9
* libsdl2: update to 2.0.5
* libsolv: upgrade to 0.6.26
* libsoup-2.4: Upgrade 2.54.1 -> 2.56.0
* libtasn1: Upgrade 4.9 -> 4.10
* libunistring: Update version 0.9.6 -> 0.9.7
* liburcu: update to 0.9.3
* liburi-perl: update to 1.71
* libusb1: upgrade 1.0.20 -> 1.0.21
* libva: Import from meta-intel and update to 1.7.3
* libwebp: update to 0.6.0
* libx11-diet: Upgrade 1.6.3 -> 1.6.4
* libx11: Upgrade 1.6.3 -> 1.6.4
* libxfixes: Upgrade 5.0.2 -> 5.0.3
* libxfont2: Add recipe
* libxfont: Upgrade 1.5.1 -> 1.5.2
* libxi: Upgrade 1.7.6 -> 1.7.9
* libxkbcommon: 0.6.1 -> 0.7.1
* libxpm: Upgrade 3.5.11 -> 3.5.12
* libxrandr: Update to version 1.5.1
* libxrender: Upgrade 0.9.9 -> 0.9.10
* libxtst: Upgrade 1.2.2 -> 1.2.3
* libxvmc: Upgrade 1.0.9 -> 1.0.10
* libxv: Upgrade 1.0.10 -> 1.0.11
* lighttpd: Upgrade 1.4.42 -> 1.4.45
* linux-firmware: update to revision a4dde74b
* linux-libc-headers: introduce 4.10 and set as default
* linux-yocto/4.10: update to v4.10.9
* linux-yocto/4.1: update to v4.1.38
* linux-yocto/4.4: update to v4.4.60
* linux-yocto/4.9: update to v4.9.21
* linux-yocto-dev: update to v4.11+
* linux-yocto-rt/4.4: update to -rt43
* linux-yocto-rt/4.9: update to 4.9-rt6
* ltp: upgrade to 20170116
* lttng-modules: update to 2.9.1
* lttng-tools: update to 2.9.4
* lttng-ust: upgrade to 2.9.0
* m4: 1.4.17 -> 1.4.18
* man-pages: 4.07 -> 4.09
* matchbox-wm: Upgrade 1.2.1 -> 1.2.2
* mc: Upgrade 4.8.17 -> 4.8.18
* mdadm: upgrade to version 4.0
* menu-cache: Upgrade 1.0.1 -> 1.0.2
* mesa: Update to 17.0.2
* mklibs-native: 0.1.41 -> 0.1.43
* mmc-utils: Upgrade to latest git version
* mpfr: 3.1.4 -> 3.1.5
* mpg123: update to 1.23.8
* msmtp: update to 1.6.6
* mtd-utils: Upgrade to 2.0.0
* musl: Upgrade to 1.1.16+ on master (54807d47ace)
* ncurses: 6.0+20160625 -> 6.0+20161126
* neon: Upgrade 0.30.1 -> 0.30.2
* netbase: upgrade to version 5.4
* nettle: Update to version 3.3
* nfs-utils: 1.3.3 -> 1.3.4
* npth: update to 1.3
* nspr: update to 4.13.1
* nss: update to 3.28.1
* ofono: update 1.18 -> 1.19
* openssh: upgrade to 7.4p1
* openssl: Updgrade 1.0.2j -> 1.0.2k
* opkg: upgrade to v0.3.4
* opkg-utils: bump to 0.3.4+git1a708fd73d10c
* orc: Upgrade 0.4.25 -> 0.4.26
* pango: Upgrade 1.40.1 -> 1.40.3
* pax-utils: 1.1.6 -> 1.2.2
* pciutils: 3.5.1 -> 3.5.2
* pcmanfm: upgrading to 1.2.5
* perl: Upgrade to 5.24.0
* perl: Upgrade to 5.24.1
* piglit: Upgrade to current master
* pigz: Update to version 2.3.4
* poky: make 4.10 the qemu* default
* poky-tiny: Bump default kernel version to 4.9
* presentproto: Upgrade 1.0 -> 1.1
* pseudo: update to 1.8.2
* pulseaudio: 9.0 -> 10.0
* puzzles: Upgrade and fix with clang
* python3-docutils: upgrade to 0.13.1
* python3-numpy: upgrade to 1.11.2
* python3-pip: upgrade to 9.0.1
* python3-pygobject: upgrade to 3.22.0
* python3-setuptools: upgrade to 31.1.1
* python*-git: Upgrade to version 2.1.1
* python*-mako: upgrade to 1.0.6
* python-numpy: upgrade to 1.11.2
* python-pexpect: upgrade to 4.2.1
* python-scons*: upgrade to 2.5.1
* python: Upgrade both python and python-native to 2.7.13
* qemu: Upgrade to 2.8.0
* quilt: 0.64 -> 0.65
* readline: Update to version 7.0
* rpcbind: 0.2.3 -> 0.2.4
* ruby: upgrade to 2.4.0
* screen: update to 4.5.1
* serf: Update to version 1.3.9
* shared-mime-info 1.6 -> 1.8
* slang: 2.3.0 -> 2.3.1a
* socat: 1.7.3.1 -> 1.7.3.2
* sqlite3: 3.14.1 -> 3.17.0
* strace: 4.13 -> 4.16
* subversion: Upgrade 1.9.4 -> 1.9.5
* sudo: 1.8.17p1 -> 1.8.19p2
* swig: 3.0.8 -> 3.0.12
* sysprof: update to 3.22.3
* sysstat: upgrade to 11.5.4
* systemd-bootchart: upgrade to 231
* systemd: Upgrade to 232
* systemtap: update to 3.1
* taglib: Update to 1.11.1
* texinfo: upgrade from 6.0 to 6.3
* tiff: Update to 4.0.7
* tzcode-native: update to 2017b
* tzdata: update to 2017b
* u-boot: Update to 2017.01 release
* util-linux: 2.28.1 -> 2.29.1
* util-macros: Upgrade 1.19.0 -> 1.19.1
* vala: update to 0.34.4
* valgrind: update to 3.12.0
* vte: Upgrade 0.44.2 -> 0.46.1
* wayland: upgrade from 1.11.0 to 1.13.0
* webkitgtk: update to 2.14.5
* weston: Upgrade 1.11.0 -> 2.0.0, separate libweston
* wget: 1.18 -> 1.19.1
* wpa-supplicant: 2.5 -> 2.6
* x264: Update to latest on stable branch (2b741f81e5)
* xauth: Upgrade 1.0.9 -> 1.0.10
* xf86-input-evdev: Upgrade 2.10.3 -> 2.10.5
* xf86-input-keyboard: Upgrade 1.8.1 -> 1.9.0
* xf86-input-libinput: Upgrade 0.19.0 -> 0.24.0
* xf86-input-mouse: Upgrade 1.9.1 -> 1.9.2
* xf86-input-synaptics: Upgrade 1.8.3 -> 1.9.0
* xf86-video-intel: Upgrade to recent git revision
* xf86-video-omap: Upgrade 0.4.4 -> 0.4.5
* xf86-video-vmware: Upgrade 13.1.0 -> 13.2.1
* xinput-calibrator: use up-to-date git version
* xkeyboard-config: 2.18 -> 2.20
* xproto: Upgrade 7.0.29 -> 7.0.31
* xserver-xorg: Upgrade 1.18.4 -> 1.19.1
* xz: upgrade to 5.2.3
* yocto-uninative: Update to the 1.6 release
* zlib: Upgrade 1.2.8 -> 1.2.11


