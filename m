Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 903FBE01617; Fri, 11 May 2018 14:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	TO_NO_BRKTS_PCNT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F496E01399;
	Fri, 11 May 2018 14:22:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 May 2018 14:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,390,1520924400"; d="scan'208";a="54455085"
Received: from jwenck-mobl.amr.corp.intel.com ([10.255.229.135])
	by fmsmga001.fm.intel.com with ESMTP; 11 May 2018 14:22:35 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <17a502b9-5ddf-e703-8df6-4fc83742aac4@intel.com>
Date: Fri, 11 May 2018 14:22:35 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.5 (sumo 19.0.0) Released
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
X-List-Received-Date: Fri, 11 May 2018 21:22:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

We are pleased to announce the latest release of the Yocto Project 2.5 (sumo-19.0.0) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/poky-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/poky-sumo-19.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.5_Status#Milestone_4.2FFinal_-_Target_Apr._27.2C_2018

Thank you for everyone's contributions to this release.

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

------------------
yocto-2.5 Errata
------------------

Release Name: poky-sumo-19.0.0
Branch: sumo
Tag: sumo-19.0.0
Hash: da3625c52e1ab8985fba4fc3d133edf92142f182
md5: 99f4ec64f8c4e7bcd141658a07bbe11b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/poky-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/poky-sumo-19.0.0.tar.bz2

Release Name: eclipse-poky-neon-sumo-19.0.0
Branch: neon/sumo
Tag: neon/sumo-19.0.0
Hash: a5dbc01b96be55c4ec2f774af9996a8086e402ab
md5: 884ceedc37c7c04e89d031c3d913a88e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/eclipse-poky-neon-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/eclipse-poky-neon-sumo-19.0.0.tar.bz2

Release Name: eclipse-poky-oxygen-sumo-19.0.0
Branch: oxygen/sumo
Tag: oxygen/sumo-19.0.0
Hash: fbb91e5c5ad06470cd50ce1daa407a5f7d13c6ca
md5: c1212bb0489b1b2681033624f739e086
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/eclipse-poky-oxygen-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/eclipse-poky-oxygen-sumo-19.0.0.tar.bz2

Release Name: oecore-sumo-19.0.0
Branch: sumo
Tag: 2018-04
Hash: 1b03cdf290c3c8b7f903aef696b0e1bfe763cbe0
md5: ffbdbdec1c6ce5c031a520dda469a40b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/oecore-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/oecore-sumo-19.0.0.tar.bz2

Release Name: bitbake-sumo-19.0.0
Branch: sumo
Tag: 1.38.0
Hash: 82ea737a0b42a8b53e11c9cde141e9e9c0bd8c40
md5: a6661fd48cb8cf2be6063793c744df72
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/bitbake-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/bitbake-sumo-19.0.0.tar.bz2

Release Name: meta-qt3-sumo-19.0.0
Branch: sumo
Tag: sumo-19.0.0
Hash: 02f273cba6c25f5cf20cb66d8a417a83772c3179
md5: 06247992d8a1efb27bd508e151277f4e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/meta-qt3-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/meta-qt3-sumo-19.0.0.tar.bz2

Release Name: meta-qt4-sumo-19.0.0
Branch: sumo
Tag: sumo-19.0.0
Hash: c0d1a3cfd24b62674dae9e6abd78ac7c3aa95be5
md5: fbe892f3cabff10cebd705b5fab5951a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/meta-qt4-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/meta-qt4-sumo-19.0.0.tar.bz2

Release Name: meta-gplv2-sumo-19.0.0
Branch: sumo
Tag: sumo-19.0.0
Hash: 36a4b0243831d36310826d51579cf1e47d959251
md5: dd712734f5d28d4bb162f0d1d442ebc9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/meta-gplv2-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/meta-gplv2-sumo-19.0.0.tar.bz2

Release Name: meta-mingw-sumo-19.0.0
Branch: sumo
Tag: sumo-19.0.0
Hash: 6106b73926394e054b8433c0a9e24149470d1baf
md5: 39094e2b4b9c010ffff28a83568076f0
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5/meta-mingw-sumo-19.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5/meta-mingw-sumo-19.0.0.tar.bz2


-----------------------------
New Features / Enhancements
-----------------------------

* Linux kernel 4.15/4.14/4.12, gcc 7.3, glibc 2.27 and ~240 other recipe upgrades
* Simplified enabling binary reproducible builds (reproducible_build and reproducible_build_simple classes)
* Support for installing multiple kernels at runtime and selecting between them
* Support for the Meson build system (imported from meta-oe)
* Reworked EFI boot support
* Added support to IMAGE_FSTYPES for F2FS flash filesystem generation
* A shared state mirror is now being published on yoctoproject.org in order to accelerate builds where compatible. You will need to configure the build system to point to these - details in the auto-generated local.conf (or meta-poky/local.conf.sample).
* Specific architecture support:
 - Added support for RISC-V architecture (riscv32 and riscv64)
 - Added Xilinx MicroBlaze architecture support
 - Added support for ARM64 ILP32
 - Added new tune-i686.inc for better support of 686-class CPUs
 - Added support for Intel CoffeeLake-S within linux-yocto and xf86-video-intel
 - Added support for stratix10 SoC development board within linux-yocto
 - systemtap can now also be built for MIPS and MicroBlaze
* wic image creator improvements:
 - Introduced --fsuuid option and have --use-uuid make use of UUID too
 - Updated canned-wks for systemd to use file system UUID everywhere
 - Added --part-name option for naming GPT partitions
 - Added a do_post_partition hook for plugins to post-process a partition (useful for e.g. package signing)
 - Added a template wks file to make use of exclude-path functionality (useful for e.g. splitting a single image into multiple partitions)
 - wic can now be used from within in the Extensible SDK (eSDK)
* bitbake-layers improvements:
 - add-layer/remove-layer: added support for adding and removing multiple layers at once
 - show-recipes/show-appends: support specifying more than one recipe
* devtool improvements:
 - Added a 'devtool latest-version' subcommand to get the latest available version upstream for a recipe
 - devtool upgrade now defaults to latest upstream version/commit when upgrading recipes
 - devtool upgrade now automatically handles a change in source subdirectory in the upstream archive
 - devtool upgrade will now handle and report license checksum changes
 - devtool upgrade has improved performance and now shows progress when adding files
 - devtool find-recipe and edit-recipe now always work with any recipe
 - devtool finish now ensures the source repository is clean before proceeding
 - devtool finish now has a dry-run option so you can see the changes that will be made before applying them
 - devtool finish now has a --force-patch-refresh option to allow refreshing patch context
 - devtool can now deal with conditional patches (those added to SRC_URI using an override)
 - devtool search will now also look in the recipe cache, so it can show unbuilt recipes in the results
* initramfs improvements:
 - core-image-minimal-initramfs now uses initramfs-framework for initialization
 - New 'initramfs-live-boot-tiny' uses busybox-mdev instead of udev for a smaller footprint
 - New 'exec' initramfs-framework module allows executing a set of arbitrary scripts
 - initramfs-live-install can now be built for aarch64
 - initramfs-framework: allow use of LABEL= to find the rootfs using its partition label
 - live image build will now show a warning if the initramfs is invalid
* cmake integration improvements:
 - Allow the generator to be changed and default to Ninja for faster builds for cmake-using recipes
 - Allow target names for compile and install to be overridden
 - Always put cmake package files in -dev packages
* BitBake changes:
 - Reworked --runall option and added --runonly option
 - Graph (dot) files produced by bitbake -g are now sorted for easier comparisons
 - Make contrib/dump_cache.py dump everything
* Toaster web UI improvements:
 - Updated to Django 1.11
 - Added a "nobuild" command-line option to disable building from the UI (whilst still enabling sharing of build statistics)
 - Highlight capture of command-line builds on frontpage
* Icecream distributed compilation improvements:
 - Add Icecream support to SDK if icecc class is inherited by the build
 - icecc-create-env: add option to add arbitrary extra tools
 - icecc-create-env: allow multiple tool aliases
 - icecc-create-env: allow logging to a file
 - Add ICECC_ENV_DEBUG variable to allow passing extra debug options to icecc-create-env
* Miscellaneous script improvements:
 - oe-pkgdata-util: Add support for RPROVIDES
 - oe-pkgdata-util: add --long option to list-pkg-files to show sizes
 - oe-depends-dot: add script to make handling .dot files (produced by bitbake -g or buildhistory) easier
 - runqemu: Allow the user to override the device tree option
 - crosstap: replace script with new python based implementation
 - buildhistory-diff: add support for colourising the output
 - scripts/contrib/bbvars.py: rewritten to use tinfoil
* New recipes: glide, gst-validate, initramfs-live-boot-tiny, libpipeline, libtest-needs-perl, meson, musl-utils, systemd-bootconf
* Replaced outdated man with man-db
* Restructured python/python3 packaging and replaced it with autopackaging for better maintainability
* Added pypi class to simplify python recipes that fetch from pypi.org (from meta-python)
* Added ptest-perl class and use to enable ptest functionality for a number of perl recipes
* SDK generation now runs package postinstall scripts
* SDK now provides a post-relocate script hook
* Enabled ptests as part of runtime tests by default (where possible)
* kern-tools: make fuzzy matching of machine optional
* kernel-uboot: support Image kernel type for arm64
* kexec-tools: add systemd support for kdump
* godep.bbclass: Add helper class to enable go-dep tool
* Added new glide class to make using Glide for Go packaging easier
* Ensure that rootfs gets mounted ro when read-only-rootfs is active
* Extend recipes to nativesdk: diffutils, libcroco, libtirpc
* Extend recipes to native: diffutils, libmnl, libtirpc
* qemu: use upstream swtpm support
* coreutils: add PACKAGECONFIG for single-binary feature
* libarchive: Enable xz and lzo by default
* grub-efi: add configfile as default built-in
* systemd: add systemd-bootconf recipe
* systemd-boot: add package that installs to boot
* cve-check: provide CVE_VERSION variable to allow recipes to override their version
* oe-init-build-env now searches for bitbake outside of oe-core
* Added the addto_recipe_sysroot task for cross recipes (in addition to native)
* SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS now supports a wildcard on the left side of a dependency (to exclude anything depending on a particular recipe)
* distrodata: make upstream version check more useful for git upstreams
* distrodata: added a utility script to compare list of recipes
* image: add image-combined-dbg helper class
* connman: Implement subnet route in session
* useradd-staticids: improve error messages to suggest corrective action for missing user/group IDs
* sstate.bbclass: added progress bars when removing items from the sysroots
* waf.bbclass: added progress reporting for compile task
* bin_package: error out if source directory doesn't actually contain anything
* Refreshed patches across a number of recipes
* common-licenses: added BSD-1-Clause

 
-----------------
 Known Issues
-----------------

* Whilst recipes for Go 1.10.x are provided, the default version of Go remains at 1.9.x, as there is a serious bug in Go 1.10 when it comes to using the shared runtime support which causes problems in multiple projects. If you need to you can switch to 1.10 by setting GOVERSION to "1.10%" in your configuration. For more details on the issue upstream see: 
https://github.com/golang/go/issues/24640
* The BitBake version remains at 1.37.0 rather than being bumped to 1.38.0 as it should have been.
* The sumo release is missing from the branch selection in Toaster. This has been corrected on the sumo branch and will be in the next point release.
* The environment setup script produced by meta-ide-support has an incorrect PATH setup - see bug 12695. This has been corrected on the sumo branch and will be in the next point release.


------------------------
Migration instructions
------------------------

For details on changes that you might need to make when migrating to the
Yocto Project 2.5 release from previous releases, please see the following
manual section:
 
http://www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.5-release


-----------------
Security Fixes
-----------------

* bind: CVE-2017-3142 and CVE-2017-3143, CVE-2017-3141, CVE-2017-3140
* binutils: CVE-2017-15939, CVE-2017-15938, CVE-2017-15225, CVE-2017-15025, CVE-2017-15024, CVE-2017-15023, CVE-2017-15022, CVE-2017-15021, CVE-2017-15020, CVE-2017-14974, CVE-2017-14940, CVE-2017-14939, CVE-2017-14938, CVE-2017-14934, CVE-2017-14933, CVE-2017-14932, CVE-2017-14930, CVE-2017-14745, CVE-2017-14729, CVE-2017-14529, CVE-2017-14333, CVE-2017-14130, CVE-2017-14129, CVE-2017-14128, CVE-2017-13757, CVE-2017-13716, CVE-2017-13710, CVE-2017-12967, CVE-2017-12799, CVE-2017-12459, CVE-2017-12458, CVE-2017-12457, CVE-2017-12456, CVE-2017-12455, CVE-2017-12454, CVE-2017-12453, CVE-2017-12452, CVE-2017-12451, CVE-2017-12450, CVE-2017-12449, CVE-2017-12448
* bluez5: CVE-2017-1000250   
* busybox: CVE-2011-5325, CVE-2017-16544, CVE-2017-15873
* curl: CVE-2017-1000254
* dhcp: CVE-2017-3144
* glibc: CVE-2017-15671, CVE-2017-16997, CVE-2017-17426
* icu: CVE-2017-14952
* lame: CVE-2017-9412, CVE-2017-9410, CVE-2017-9411, CVE-2017-13712
* libpcre2: CVE-2017-8399
* libvorbis: CVE-2017-14633, CVE-2017-14632, CVE-2018-5146
* libxcursor: CVE-2017-16612
* libxfont: CVE-2017-16611
* libxfont2: CVE-2017-16611
* libxres: CVE-2013-1988
* nss: CVE-2017-7805
* openssl: CVE-2017-3736, CVE-2017-3735
* openssl10: CVE-2017-3736, CVE-2017-3735
* patch: CVE-2018-6951, CVE-2018-1000156
* perl: CVE-2017-12883
* python3: CVE-2017-1000158
* python3-native: CVE-2017-1000158
* qemu: CVE-2017-17381, CVE-2017-15124
* tiff: CVE-2017-99935, CVE-2017-18013, CVE-2018-5784
* webkitgtk: CVE-2017-5753 and CVE-2017-5715
* wget: CVE-2017-13089 CVE-2017-13090 CVE-2017-6508
* xorg-xserver: CVEs 2017-12176, CVE-2017-12177, CVE-2017-12178, CVE-2017-12179, CVE-2017-12180, CVE-2017-12181, CVE-2017-12182, CVE-2017-12183, CVE-2017-12184, CVE-2017-12185, CVE-2017-12186, CVE 2017-12187


-----------------
Recipe Upgrades
-----------------

* adwaita-icon-theme: update to 3.26.0
* alsa-lib: 1.1.4.1 -> 1.1.5
* alsa-plugins: 1.1.4 -> 1.1.5
* alsa-tools: 1.1.3 -> 1.1.5
* alsa-utils: 1.1.4 -> 1.1.5
* apr: 1.6.2 -> 1.6.3
* apr-util: 1.6.0 -> 1.6.1
* assimp: upgrade to version 4.1.0
* atk: upgrade to version 2.26.1
* at-spi2-atk: 2.26.0 -> 2.26.1
* at-spi2-core: 2.26.0 -> 2.26.2
* avahi: upgrade to 0.7
* babeltrace: update to 1.5.4
* bash: 4.4 -> 4.4.12
* bind: update to 9.10.6
* binutils: Upgrade to 2.30 release
* blktrace: 1.1.0+gitX -> 1.2.0+gitX
* bluez5: 5.46 -> 5.48
* boost: update to 1.66.0
* btrfs-tools: update to 4.13.3
* busybox: 1.24.1 -> 1.27.2
* cairo: 1.14.10 -> 1.14.12
* ccache: 3.3.4 -> 3.3.5
* clutter-gtk-1.0: update to 1.8.4
* cmake: Upgrade to 3.10.3
* connman: upgrade 1.34 -> 1.35
* coreutils: upgrade to 8.29
* cups: upgrade to 2.2.6
* curl: upgrade to 7.58.0
* dbus-test: upgrade to 1.12.2
* dbus: upgrade to 1.12.2
* debianutils: update to 4.8.4
* dnf: update to 2.7.5
* dtc: update to 1.4.5
* e2fsprogs: 1.43.5 -> 1.43.8
* epiphany: upgrade to 3.26.6
* ethtool: upgrade to 4.13
* eudev: bump up to version 3.2.5
* expat: upgrade to 2.2.5
* expect: update to 5.45.4
* ffmpeg: update to 3.4.2
* file: 5.31 -> 5.32
* fontconfig: update to 2.12.6
* freetype: upgrade to version 2.9
* gawk: upgrade to 4.2.0
* gcc6: Upgrade to 6.4
* gcc: Upgrade 7.2 -> 7.3
* gdbm: 1.13 -> 1.14.1
* gdb: Upgrade to 8.0.1
* gdk-pixbuf: update to 2.36.11
* git: 2.13.3 -> 2.16.1
* glew: update to 2.1.0
* glib-2.0: upgrade to version 2.54.3
* glibc: Upgrade to 2.27 release + bugfixes
* glib-networking: update to 2.54.1
* gnome-desktop3: Update to 3.26.2
* gnupg: upgrade to 2.2.4
* gnutls: update to 3.6.1
* gobject-introspection: update to 1.54.1
* go-dep: Upgrade to 0.4.1
* go: add 1.10.1
* go: Upgrade 1.9 to 1.9.4 stable release
* gpgme: 1.9.0 -> 1.10.0
* gsettings-desktop-schemas: update to 3.24.1
* gst-examples: upgrade to latest revision
* gstreamer1.0-libav: upgrade to version 1.12.3
* gstreamer1.0-omx: upgrade to version 1.12.3
* gstreamer1.0-plugins-bad: upgrade to version 1.12.3
* gstreamer1.0-plugins-base: upgrade to version 1.12.3
* gstreamer1.0-plugins-good: upgrade to version 1.12.3
* gstreamer1.0-plugins-ugly: upgrade to version 1.12.3
* gstreamer1.0-python: upgrade to version 1.12.3
* gstreamer1.0-rtsp-server: upgrade to version 1.12.3
* gstreamer1.0: upgrade to version 1.12.4
* gstreamer1.0-vaapi: upgrade to version 1.12.3
* gtk+3: upgrade to version 3.22.28
* gtk-doc: update to 1.27
* gtk-icon-utils-native: upgrade to version 3.22.28
* gtk+: upgrade to version 2.24.32
* gzip: 1.8 -> 1.9
* harfbuzz: upgrade to version 1.7.5
* hdparm: 9.52 -> 9.53
* help2man-native: 1.47.4 -> 1.47.5
* hicolor-icon-theme: update to 0.17
* i2c-tools: upgrade to 4.0
* icu: 60.1 -> 60.2
* icu: update to 60.1
* iproute2: upgrade to 4.14.1
* iptables: 1.6.1 -> 1.6.2
* iputils: update to 20161105
* iso-codes: update to 3.77
* iw: 4.9 -> 4.14
* json-c: update to 0.13
* json-glib: update to 1.4.2
* kexec-tools: 2.0.14 -> 2.0.16
* kmod: 24 -> 25
* lame: 3.99.5 -> 3.100
* less: 487 -> 529
* libassuan: update to 2.5.1
* libatomic-ops: upgrade to 7.6.2
* libbsd: update to 0.8.7
* libcheck: Upgrade to 0.12.0
* libdnf: update to 0.11.1
* libdrm: upgrade to 2.4.91
* libepoxy: update to version 1.5.0
* liberror-perl: 0.17024 -> 0.17025
* libevdev: upgrade to version 1.5.8
* libgcrypt: update from version 1.8.0 to 1.8.2
* libgudev: update to 232
* libinput: upgrade to version 1.9.4
* libjpeg-turbo: upgrade to 1.5.3
* libmpc: upgrade to 1.1.0
* libnl: 3.2.29 -> 3.4.0
* libogg: upgrade to 1.3.3
* libpciaccess: update to 0.14
* libpcre2: update to 10.30
* libpng: Upgrade 1.6.31 -> 1.6.34
* libproxy: upgrade to 0.4.15
* librepo: update to 1.8.1
* librsvg: update to 2.40.20
* libsdl2: 2.0.5 -> 2.0.8
* libsolv: upgrade to version 0.6.32
* libsoup-2.4: upgrade to version 2.60.3
* libtasn1: upgrade to version 4.13
* libunistring: update version to 0.9.9
* libunwind: 1.2 -> 1.2.1
* liburcu: update to 0.10.1
* liburi-perl: upgrade 1.72 -> 1.73
* libva: upgrade to 2.1.0
* libva-utils: upgrade to 2.1.0
* libwebp: update to 0.6.1
* libxcursor: update to 1.1.15 plus sec fixes
* libxfont2: update to 2.0.3 with sec fix
* libxfont: update 1.5.4 with sec fix
* libxkbcommon: update to 0.8.0
* libxml2: 2.9.4 -> 2.9.7
* libxml-namespacesupport-perl: upgrade to 1.12.9
* libxslt: update to 1.1.32
* lighttpd: update to 1.4.48
* linux-firmware: upgrade to 4c0bf11 revision
* linux-libc-headers: update to 4.15.7
* linux-yocto/4.12: update to v4.12.21
* linux-yocto/4.14: update to v4.14.30
* linux-yocto/4.15: update to v4.15.13
* linux-yocto-dev: update to v4.16-rcX
* llvm: Upgrade to 6.0 release
* logrotate: 3.12.3 -> 3.13.0
* lsbinitscripts: update to 9.79
* lsb: update to 5.0
* ltp: bump to release 20180118
* lttng-modules: update to v2.10.5 for kernel 4.15
* lttng-ust: upgrade 2.9.1 -> 2.10.1
* man-db: replace the outdated man implementation
* man-pages: 4.11 -> 4.14
* mc: upgrade to 4.8.20
* mesa: Upgrade to 17.3.8
* meson: upgrade to 0.44.1
* mmc-utils: Upgrade to latest revision (7bcad17117)
* mpg123: update to 1.25.10
* mtd-utils: Bump revision to 1bfee866
* musl: Update to latest master (618b18c78e)
* nasm: upgrade 2.13.01 -> 2.13.03
* ncurses: 6.0+20170715 -> 6.0+20171125
* nettle: update to 3.4 and cleanup
* ninja: Upgrade from 1.7.2 to major release 1.8.2
* nspr: update to 4.19
* nss: update to 3.35
* ofono: upgrade to version 1.22
* openssh: update to 7.6
* openssl: update 1.1 version to 1.1.0h
* openssl: update to 1.0.2o
* opkg: upgrade to version 0.3.6
* opkg-utils: upgrade to version 0.3.6
* orc: upgrade to 0.4.28
* pango: upgrade to version 1.40.14
* patch:2.7.5 -> 2.7.6
* pciutils: upgrade to 3.5.6
* piglit: upgrade to current git master
* pigz: 2.3.4 -> 2.4
* pinentry: update to 1.1.0
* pkgconf: upgrade to version 1.4.2
* powertop: update to v2.9
* prelink_git.bb: Update recipe to newest commit
* pseudo: update to latest master
* psmisc: update to 23.0
* ptest-runner: Upgrade to 2.1.1
* pulseaudio: 10.0 -> 11.1
* puzzles: upgrade to latest revision
* python3-dbus: update to version 1.2.6
* python3-git: update to 2.1.8
* python3-native: update to version 3.5.5 to fix security issues
* python3-numpy: upgrade to 1.13.3
* python3-pip: update to 9.0.2
* python3-pycairo: update to 1.15.6
* python3-pygobject: update to 3.28.1
* python3-six: update to 1.11.0
* python3: update to version 3.5.5 to fix security issues
* python-gitdb: upgrade to v2.0.3
* python-numpy: update to 1.14.2
* python-scons: upgrade to v3.0.1
* python*-setuptools: update to 39.0.0
* python: Upgrade both python and python-native to 2.7.14
* qemu: upgrade to 2.11.1
* quota: upgrade to 4.04
* rpm: update to 4.14.1
* rsync: update to 3.1.3
* ruby: upgrade to 2.5.0
* screen: upgrade to version 4.6.2
* shared-mime-info: update to 1.9
* slang: 2.3.1a -> 2.3.2
* sqlite3: upgrade to version 3.22.0
* strace: 4.18 -> 4.20
* subversion: upgrade 1.9.6 -> 1.9.7
* sudo: upgrade to 1.8.22
* sysprof: update to 3.26.1
* sysstat: upgrade to 11.7.1
* systemd-bootchart: upgrade to v233
* systemd-boot: upgrade to 237
* systemd: upgrade to 237
* systemtap: 3.1 -> 3.2
* tar: 1.29 -> 1.30
* tcl: update to 8.6.8
* texinfo: upgrade to 6.5
* tiff: 4.0.8 -> 4.0.9
* time: 1.7 -> 1.8
* trace-cmd: update to 2.7
* tzcode-native: update to 2018d
* tzdata: update to 2018d
* u-boot: Upgrade to 2018.01 release
* usbutils: 008 -> 009
* util-linux: upgrade to 2.31
* vala: update to 0.38.8
* vte: upgrade to version 0.50.2
* vulkan: upgrade to version 1.0.65.2
* wayland : Bump to version 1.14.0
* wayland-protocols: upgrade to 1.13
* webkitgtk: update to 2.18.6
* weston: Bump version to 3.0.0
* wget: update to 1.19.4
* x264: upgrade to latest revision
* xdg-utils: update to 1.1.2
* xf86-input-libinput: update to 0.26.0
* xkeyboard-config: upgrade to 2.22
* xorg-xserver: update to 1.19.6

