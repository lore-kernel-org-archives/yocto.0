Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF1F9E00509; Tue,  1 Nov 2016 12:48:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34487E0049B;
	Tue,  1 Nov 2016 12:48:04 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP; 01 Nov 2016 12:48:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,433,1473145200"; d="scan'208";a="26229433"
Received: from jjschmit-mobl4.amr.corp.intel.com ([10.254.23.249])
	by fmsmga006.fm.intel.com with ESMTP; 01 Nov 2016 12:48:03 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
Message-ID: <5818F173.7020204@intel.com>
Date: Tue, 1 Nov 2016 12:48:03 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.2 (morty 16.0.0) Released
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
X-List-Received-Date: Tue, 01 Nov 2016 19:48:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.2 (morty-16.0.0) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/2.2_QA_Status

Thank you to everyone for all your hard work on this release!

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com



-------------------
yocto-2.2 Errata
---------------------

Release Name: eclipse-poky-mars-morty-16.0.0
Branch: mars/morty
Tag: mars/morty-16.0.0
Hash: 9fc40886f01b60cc6d9eccd579fc5becaa20a40e
md5: 59908d0f347da1fb50acbf51f309e231
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/eclipse-poky-mars-morty-16.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2/eclipse-poky-mars-morty-16.0.0.tar.bz2

Release Name: eclipse-poky-neon-morty-16.0.0
Branch: neon/morty
Tag: neon/morty-16.0.0
Hash: ac3640df697a20bb16cb0f99db58106522a09206
md5: 0aedaa6e12b453e988c4d5bc633c37b5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/eclipse-poky-neon-morty-16.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2/eclipse-poky-neon-morty-16.0.0.tar.bz2

Release Name: meta-qt3-morty-16.0.0
Branch: morty
Tag: morty-16.0.0
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 6d15020b15d7f78be1a9cd91f8f0fd47
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/meta-qt3-morty-16.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2/meta-qt3-morty-16.0.0.tar.bz2

Release Name: meta-qt4-morty-16.0.0
Branch: morty
Tag: morty-16.0.0
Hash: fc9b050569e94b5176bed28b69ef28514e4e4553
md5: 839725824247db1b33c611e3975e6169
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/meta-qt4-morty-16.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2/meta-qt4-morty-16.0.0.tar.bz2

Release Name: poky-morty-16.0.0
Branch: morty
Tag: morty-16.0.0
Hash: dc8508f609974cc99606b9042bfa7f870ce80228
md5: aaf20f103131fb5f757ccf8343319b16
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2


-----------------------------
New Features / Enhancements
-----------------------------

* Linux kernel 4.8 (and 4.4/4.1 LTS/LTSI)
* glibc 2.24
* gcc 6.2.0
* Migrated BitBake and python functions in the OE metadata to Python 3
* runqemu script has rewritten in Python and refactored to move machine-specific knowledge to the machine configuration, making it possible to extend it easily in each BSP layer
* Created pre-configured Docker containers for the build system, Toaster and the Extensible SDK (available at https://github.com/crops/)
* Add cve-check class to catch missing known CVE fixes for recipes
* Sato example UI moved to GTK+3 and refreshed with updated/replaced applications and Adwaita icon set
* Put deploy directory (including images, SDKs and other files) under shared state control. This effectively makes removal of old images and SDKs the default behaviour, and provides a way to trace files in that directory back to their originating recipes which is useful for scripts and UIs such as Toaster.
* Musl libc can now build world for all primary architectures, ppc64 is now also supported
* BitBake improvements:
    * Basic support for multi-configuration builds. For example, this enables building for more than one MACHINE at a time, which may be useful if you have a board with two separate SoCs on it, each with their own OS, but you want to target both in the same build.
    * Show more progress during operation - added real-time task progress reporting for do_fetch, image creation, cmake-based do_compile; also show progress for "Preparing RunQueue" and sstate object availability check.
    * Show task elapsed time
    * Added a -q/--quiet output mode switch that only shows basic progress
    * Added an "unset VARNAME" syntax to clear a variable
    * Implemented support for per-task variable exports
    * Create a symlink to the latest console log
    * Added BB_SETSCENE_ENFORCE to enable enforcing that tasks are restored from sstate
    * Added LAYERRECOMMENDS to allow declaring recommended but not required layer dependencies in conf/layer.conf
    * Ported depexp UI to GTK+3
    * Output errors and warnings to stderr
    * Implement server autostart feature to avoid constantly holding a lock on the metadata when resident
    * Rework perforce fetcher to support SRCREV and P4CONFIG
    * Add BBPRECONF and BBPOSTCONF environment variables
* Toaster web UI improvements:
    * Improved image customisation
    * Improved BitBake to Toaster process communication
    * Upgraded Bootstrap UI framework to version 3 which provides a new look and more responsive design
    * Improved performance and consistency of table views in build analysis
    * Added visual feedback to the layerindex data fetcher
    * Improved the ability to download artifacts created by builds such as SDK artifacts
    * Added the ability to import a layer from a local directory and switch between local and git sources
    * Added ability to configure and customise Toaster using fixtures at setup time
    * Added layers to the backend admin interface
    * Added the ability to delete objects from Toaster's database such as builds, layers, customised images and projects.
    * Improved build progress reporting
    * Improved help and notification messages
* Image construction improvements:
    * Add variable FORCE_RO_REMOVE to force removal of unneeded packages specified by ROOTFS_RO_UNNEEDED even if rootfs is not read-only
    * Add variable VM_ROOTFS_TYPE to allow filesystems other than ext4 to be used for VM images (vmdk, vdi, qcow2, hdddirect)
    * Make the INITRD optional for "live" image type
    * Add bmap generation option to produce files that can be used with bmap-tools for sparse images
    * Add support for zip compression
    * wic improvements:
        * Produce wic images by default for beaglebone, edgerouter and genericx86/genericx86-64
        * image_types.bbclass: support template .wks.in files for wic
        * directdisk*.wks: add serial console support
        * Use GPT partition table for all EFI kickstart files
        * Add --system-id wks option to set partition system id
        * Add --bmap wks option to produce files that can be used with bmap-tools for sparse images
        * isoimage-isohybrid: add grubefi configfile support
        * Preserve sparseness of partitions when combining into an image
* Kernel improvements:
    * Kernel tools were streamlined, with patching/configuration overhead reduced or eliminated in most cases.
    * Kernel configuration audit was improved and runs as a standalone tool
    * Kernel configuration audit provides symbol resolution and dependency information to allow troubleshooting of missing/incorrect/invalid symbols
    * Kernel tools use upstream utilities directly, without local patches or wrappers
    * Added KERNEL_IMAGETYPES variable to build multiple kernel types at once
    * Check the kernel version in the recipe against the version in the source tree and warn if different
    * kernel-module-split: add a prefix for module package name pattern
    * kernel-module-split: generate dependencies across recipes
    * linux-dtb.inc: Support for .dtbo files for dtb overlays
* u-boot improvements:
    * Added uboot-extlinux-config class to enable generating extlinux.conf for U-Boot
    * u-boot: basic support of dtb append for verified boot
    * u-boot: deploy u-boot-nodtb and dtb files
    * kernel-fitimage: add initramfs support
    * kernel-fitimage: Add x86 support
    * kernel-fitimage: basic support for fitImage signature
    * kernel-fitimage: support device tree compiler options
* devtool improvements:
    * Add finish subcommand to finish working on a recipe in one command (i.e. move work back to a specified layer and then reset the recipe)
    * reset: allow specifying multiple recipes
    * Improve accuracy of patch header extraction used by devtool modify/upgrade/extract
    * devtool add / recipetool create improvements:
        * Detect python autoconf macros
        * Extract variable values from .deb/.ipk/.rpm
        * support extracting SUMMARY and HOMEPAGE
        * Support git short form URLs
        * Support git submodules
        * Support node.js code outside of npm
        * Build nodejs-native if npm is needed and not available (devtool add only)
        * Support specifying a file as the local source
        * Write a comment for unknown license files so you know which ones couldn't be mapped to a specific license
* Extensible SDK (eSDK) improvements:
    * Show progress when preparing build system during installation
    * Improve robustness of installation process
    * Allow including toolchain in eSDK on install
    * Enable use of eSDK with Yocto Project Eclipse plugin
* Added SYSROOT_DIRS* variables to make it easier to define which directories to stage
* Added a packagefeed-stability class to help reduce package feed churn by comparing packages to the last published version, and not publishing if the package contents have not materially changed
* Added mechanisms to extend QA and siteinfo machine-specific information from BSP layers
* Inherit armv7a tunes file in arch-armv7ve to allow producing binaries that are more widely compatible across armv7a superset machines
* Added mips64-o32, mips64r2 and mipsisa{32, 64}r6{el, } tunes
* kernel-arch.bbclass: Added xtensa and arc into valid_archs table
* qemu.bbclass: Allow using a different QEMU binary depending on target architecture
* gtk-doc class now enables properly building gtk-doc based API documentation if "api-documentation" is in DISTRO_FEATURES (off by default)
* initramfs-framework: Add support for PartUUIDs
* weston: Enable XWayland when X11 and Wayland support are available
* boost: added support for additional boost libs (container, context, coroutine, exception, graph_parallel, locale, math, mpi, wave)
* Added recipes: asciidoc, bmap-tools, cve-check-tool, gtk-doc, mpg123, python3-async, python3-git, python3-gitdb, python3-mako, python3-nose, python3-numpy, python3-smmap, python-six, source-highlight, systemd-boot, wayland-protocols
* ipv6 support across many recipes now controlled from "ipv6" in DISTRO_FEATURES
* Additional PACKAGECONFIG options in apr, apt, avahi-ui, boost, curl, dhcp, dropbear, enchant, eudev, gobject-introspection, gstreamer1.0-libav, gstreamer1.0-plugins-bad, gstreamer1.0-plugins-bad, gstreamer1.0-plugins-good.inc, libarchive, libcap, libice, libinput, libpcap, libsm, libsoup-2.4, libxfont, libxml2, libxmu, lighttpd, lttng-tools, matchbox-keyboard, mesa, nfs-utils, nspr, opkg, pciutils, psmisc, pulseaudio, qemu, rsync, sysprof, systemtap, vte, weston, wget, xauth, xhost, xserver-nodm-init, xserver-xorg
* Preserve packaging data in standard SDK when SDKIMAGE_FEATURES has "package-management"
* security_flags: turn potential string format security issues into an error
* sstate: skip packaging if SSTATE_SKIP_CREATION is set
* sstate: Add postrm command support
* systemd: allow adding users to groups in rootfs postprocess
* systemd: support systemd-boot as a stand-alone EFI bootloader
* perf: enable man pages for 'help' functionality
* Verify LICENSE_<pkg> values are present in LICENSE and warn if not
* LIC_FILES_CHKSUM is now no longer mandatory within a recipe if SRC_URI is empty
* Display names instead of ELF machine numbers in architecture mismatch QA errors
* useradd-staticids.bbclass: Allow missing UIDs/GIDs to generate warnings
* dropbear: Allow extra arguments for key generation in initscript
* cmake: enable verbose builds to make debugging easier
* Make it easier to have a shared site.conf by adding BBPATH_EXTRA to BB_ENV_EXTRAWHITE_OE
* Script improvements:
    * runqemu: Add snapshot support
    * ddimage: use 'pv' to show progress information if installed
    * oe-pkgdata-util: new "package-info" option to show full info for binary package(s)
    * scripts/contrib: introduce build-perf-test-wrapper.sh
    * scripts: introduce buildstats-diff
    * scripts: introduce oe-build-perf-test
    * scripts: add new script 'oe-run-native'
    * scripts: add oe-check-sstate script
    * scripts: add verify-bashisms script to scan for bashisms in recipe shell scripts
    * combo-layer: implement "update with history"
    * graph-tool: update to new networkx API, be iterative
* Test related improvements:
    * testexport.bbclass: Create tarballs for easy release
    * oe-selftest: introduce get_bb_vars()
    * oe-selftest: export test results via xmlrunner
    * oetest.py: Add install/uninstall functionality for DUTs
    * Add "uncovered" script to list python modules with no test coverage

* Obsolete / no longer needed items removed (please see "Migration instructions" below for
  further details:
    * uclibc, since musl has now matured and is better maintained
    * Swabber, as it has been unmaintained and unused for some time and was never particularly effective
    * BitBake's "goggle" UI and standalone image-writer tool
    * DirectFB (moved to meta-oe)
    * tslib and related recipes (moved to meta-oe)
    * gcc 4.9 (in favour of gcc 6.2 / 5.4)


-----------------
 Known Issues
-----------------

* devtool runqemu does not work unless DEPLOY_DIR_IMAGE is set
  https://bugzilla.yoctoproject.org/show_bug.cgi?id=10447


------------------------
Migration instructions
------------------------

For details on changes that you might need to make when migrating to the
Yocto Project 2.2 release from previous releases, please see the following
manual section:
 
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.2-release


-----------------
Security Fixes
-----------------

* boost: CVE-2012-2677
* busybox: CVE-2016-2147, CVE-2016-2148
* bzip2: CVE-2016-3189, CVE-2016-6318
* curl: CVE-2016-5419, CVE-2016-5420, CVE-2016-5421
* expat: CVE-2016-0718
* flex: CVE-2016-6354
* foomatic-filters: CVE-2015-8327, CVE-2015-8560
* gcc: CVE-2016-4490, CVE-2016-2226, CVE-2016-4488, CVE-2016-4489
* gnutls: CVE-2016-7444
* libpcre: CVE-2016-1283, CVE-2016-3191
* librsvg: CVE-2016-4347, CVE-2016-4348
* linux-yocto/4.1: CVE-2016-5195 (dirtycow)
* openssh: CVE-2015-8325, CVE-2016-3115, CVE-2016-6210, CVE-2015-8325
* openssl: CVE-2016-2105, CVE-2016-2106, CVE-2016-2109, CVE-2016-2176, CVE-2016-2177, CVE-2016-2178, CVE-2016-2179, CVE-2016-2180, CVE-2016-2181, CVE-2016-2182, CVE-2016-2183, CVE-2016-6302, CVE-2016-6303, CVE-2016-6304, CVE-2016-6306, CVE-2016-7052
* perl: CVE-2015-8607, CVE-2016-1238, CVE-2016-2381, CVE-2016-6185
* python: CVE-2016-5636, CVE-2016-1000110, CVE-2015-1283, CVE-2016-0772
* python3: CVE-2016-5636, CVE-2015-1283, CVE-2016-0772 CVE-2016-1000110
* qemu: CVE-2016-2857, CVE-2016-2858, CVE-2016-3710, CVE-2016-3712, CVE-2015-8619, CVE-2015-8558, CVE-2016-1981, CVE-2016-2857
* tiff: CVE-2015-8665, CVE-2015-8683, CVE-2015-8781, CVE-2015-8784, CVE-2016-3186, CVE-2016-5321, CVE-2016-5323
* wpa_supplicant: CVE-2016-4476, CVE-2016-4477
* Fixed potential string formatting security issues (-Wformat-security) in bash, libidn, libuser, ltp, makedevs, stat, unzip, zip


- ----------------
Recipe Upgrades
- ----------------

* acpid: upgrade to 2.0.27
* adwaita-icon-theme: 3.18.0 -> 3.20
* alsa-lib: 1.1.0 -> 1.1.2
* alsa-plugins: 1.1.0 -> 1.1.1
* alsa-utils: 1.1.0 -> 1.1.2
* apt: Upgrade to 1.2.12
* atk: Upgrade 2.18.0 -> 2.20.0
* at-spi2-atk: Upgrade 2.18.1 -> 2.20.1
* at-spi2-core: Upgrade 2.18.3 -> 2.20.2
* at: upgrade to 3.1.20
* autogen-native: 5.18.6 -> 5.18.10
* babeltrace: update to 1.4.0
* bash: 4.3.39 -> 4.3.46
* bash-completion: update to 2.4
* bdwgc: update to 7.6.0
* binutils: Upgrade to 2.27
* bluez5: upgrade to 5.41
* boost: update to 1.61.0
* btrfs-tools: update to 4.7.1
* byacc: upgrade to 20160606
* cantarell-fonts: update to 0.0.24
* ccache: 3.2.4 -> 3.2.5
* clutter-1.0: Upgrade 1.24.2 -> 1.26.0
* clutter-gst-3.0: Upgrade 3.0.16 -> 3.0.18
* clutter-gtk-1.0: Upgrade 1.6.6 -> 1.8.0
* cmake: upgrade to 3.6.1
* connman: upgrade to 1.33
* cronie: upgrade to 1.5.1
* cups: upgrade to 2.1.4
* curl: upgrade to 7.50.1
* db: Upgrade to 6.0.35
* dbus: upgrade to 1.10.10
* debianutils: 4.7 -> 4.8
* desktop-file-utils-native: update to 0.23
* dhcp: upgrade to 4.3.4
* diffutils: upgrade to 3.4
* distcc: Upgrade to 3.2
* docbook-xsl-stylesheets: Upgrade 1.78.1 -> 1.79.1
* dosfstools: Upgrade 3.0.28 -> 4.0
* dpkg: Upgrade to 1.18.7
* dropbear: Upgrade 2015.71 -> 2016.74
* e2fsprogs: 1.42.99+1.43+git -> 1.43
* elfutils: Upgrade to 0.166
* epiphany: update to 3.20.3
* ethtool: upgrade to 4.6
* eudev: upgrade to 3.2
* expat: Upgrade 2.1.0 -> 2.2.0
* ffmpeg: update to 3.1.3
* file: 5.25 -> 5.28
* fontconfig: Upgrade 2.11.94 -> 2.12.1
* freetype: Upgrade 2.6.3 -> 2.6.5
* gcc5: Upgrade to gcc 5.4
* gcc: add 6.2.0
* gcr: upgrade to 3.20.0
* gdbm: upgrade to 1.12
* gdb: Upgrade to 7.11
* gdk-pixbuf: Upgrade 2.32.3 -> 2.34.0
* gettext: 0.19.6 -> 0.19.8.1
* gettext-minimal-native: 0.19.4 -> 0.19.8.1
* ghostscript: upgrade to 9.19
* git: 2.7.4 -> 2.9.3
* glew: upgrade to 2.0.0
* glib-2.0: 2.46.2 -> 2.48.2
* glibc: Update to 2.24
* glib-networking: Upgrade 2.46.1 -> 2.48.2
* gmp: 6.1.0 -> 6.1.1
* gnome-desktop3: update to 3.20.2
* gnome-themes-standard: Upgrade 3.18.0 -> 3.20.2
* gnu-efi: 3.0.3 -> 3.0.4
* gnupg: upgrade to 2.1.14
* gnutls: update 3.4.9 -> 3.5.3
* gobject-introspection: update to 1.48.0
* grep: upgrade to 2.25
* grub_git: Upgrade to latest tip
* gsettings-desktop-schemas: Upgrade 3.19.3 -> 3.20.0
* gst-player: upgrade to latest HEAD
* gstreamer1.0: upgrade to 1.8.3
* gtk+3: Upgrade 3.18.8 -> 3.20.9
* gtk+: Upgrade 2.24.29 -> 2.24.30
* guile: 2.0.11 -> 2.0.12
* gzip: upgrade to 1.8
* harfbuzz: upgrade to 1.3.0
* help2man-native: upgrade to 1.47.4
* icu: update to 57.1
* inputproto: Upgrade 2.3.1 -> 2.3.2
* iproute2: update 4.5.0 -> 4.7.0
* iso-codes: update to 3.70
* iw: update to version 4.7
* json-glib: Upgrade 1.0.4 -> 1.2.2
* kexec-tools: update to 2.0.12
* kmod: upgrade to 23
* leafpad: replaced with l3afpad
* libarchive: Upgrade to v3.2.0
* libassuan: upgrade to 2.4.3
* libatomic-ops: upgrade to 7.4.4
* libbsd: 0.8.2 -> 0.8.3
* libcap: 2.24 -> 2.25
* libcap-ng: 0.7.7 -> 0.7.8
* libdrm: 2.4.67 -> 2.4.70
* libevdev: Upgrade 1.4.6 -> 1.5.2
* libgcrypt: upgrade to 1.7.3
* libgpg-error: Upgrade 1.21 -> 1.24
* libidn: 1.32 -> 1.33
* libinput: Upgrade 1.1.4 -> 1.4.1
* libjpeg-turbo: update to 1.5.0
* libksba: update to 1.3.4
* libmatchbox: Upgrade 1.11 -> 1.12
* libnewt/libnewt-python: upgrade to 0.52.19
* libnl: update to v3.2.28
* libpam: update to 1.3.0
* libpcre: 8.38 -> 8.39
* libpng: update to 1.6.24
* libproxy: update to version 0.4.13
* librsvg: upgrade to 2.40.15
* libsecret: upgrade to 0.18.5
* libsndfile1: 1.0.26 -> 1.0.27
* libsolv: upgrade to 0.6.23
* libsoup-2.4: Upgrade 2.52.2 -> 2.54.1
* libtasn1: upgrade to 4.9
* libunwind: Upgrade to 1.2rc1+
* liburcu: upgrade to 0.9.2
* libwebp: upgrade to 0.5.1
* libwnck3: upgrade to 3.20.1
* libxcb: upgrade to 1.12
* libxfixes: Upgrade 5.0.1 -> 5.0.2
* libxkbcommon: Upgrade 0.5.0 -> 0.6.1
* libxml2: upgrade to 2.9.4
* libxslt: update to 1.1.29
* libyaml: update to 0.1.7
* lighttpd: update to 1.4.41
* linux-firmware: update to revision 42ad5367
* linux-libc-headers: update to 4.8 final
* linux-yocto/4.1: update to 4.1.33
* linux-yocto/4.4: update to v4.4.22
* linux-yocto/4.8: update to 4.8 -final release
* linux-yocto-dev: bump to v4.8+
* linux-yocto-rt/4.1: update to rt23
* lsb: 4.1.0 -> 5.0
* lsbinitscripts: 9.64 -> 9.68
* lttng-modules: Update 2.7.3 -> 2.8.0+master
* lttng-tools: Update 2.7.1 -> 2.8.1
* lttng-ust: Update 2.7.1 -> 2.8.1
* make: 4.1 -> 4.2.1
* man-pages: upgrade to 4.07
* matchbox-config-gtk: Upgrade to 0.2
* matchbox-desktop: Ugrade to 2.1
* matchbox-keyboard: Upgrade to 0.1.1
* matchbox-panel-2: Upgrade to 2.11
* matchbox-terminal: Upgrade to 0.1
* matchbox-theme-sato: Upgrade to 0.2
* matchbox-wm: Upgrade to 1.2.1
* mc: update to 4.8.17
* mesa-demos: Upgrade 8.2.0 -> 8.3.0
* mesa: Upgrade 11.1.1 -> 12.0.1
* mklibs-native: 0.1.40 -> 0.1.41
* mmc-utils: update to latest git version
* mpfr: Upgrade to 3.1.4
* msmtp: update to 1.6.5
* musl: Update to v1.1.15 release
* nasm: 2.11.08 -> 2.12.02
* ncurses: upgrade to 6.0+20160625
* neard: upgrade to 0.16
* nss: update to 3.25
* ofono: update to 1.18
* openssh: Upgrade 7.1p2 -> 7.3p1
* openssl: Upgrade 1.0.2g -> 1.0.2j
* opkg: upgrade to v0.3.3
* opkg-utils: update SRCREV
* orc: upgrade to 0.4.25
* pango: Upgrade 1.38.1 -> 1.40.1
* patchelf: Update to version 0.9
* pax-utils: upgrade to 1.1.6
* pciutils: upgrade to 3.5.1
* piglit: Upgrade version, use python3
* pixman: Upgrade 0.32.8 -> 0.34.0
* pkgconfig: update to version 0.29.1
* prelink: Move to latest version of prelink
* procps: upgrade to 3.3.12
* pseudo: Upgrade to 1.8.1
* pulseaudio: 8.0 -> 9.0
* python3-native: Upgrade from 3.5.1 to 3.5.2
* python3-pip: Upgrade from 8.0.0 to 8.1.2
* python3-pygobject: Upgrade from 3.18.2 to 3.20.1
* python3: Upgrade from 3.5.1 to 3.5.2
* python-dbus: update to 1.2.4, port to python 3
* python-git: Upgrade python-git and python3-git to 2.0.7
* python-mako: Upgrade python-mako and python3-mako to 1.0.4
* python-native: Upgrade from 2.7.11 to 2.7.12
* python-numpy: Upgrade from 1.10.4 to 1.11.1
* python-pexpect: Upgrade from 4.0.1 to 4.2.0
* python-scons: Upgrade from 2.4.1 to 2.5.0
* python-setuptools: Upgrade to 22.0.5
* python: upgrade from 2.7.11 to 2.7.12
* qemu: 2.5.0 -> 2.7.0
* resolvconf: upgrade to 1.79
* rt-tests, hwlatdetect: upgrade to 2.0
* ruby: Upgrade to 2.2.5
* sato-screenshot: Upgrade to 0.3
* screen: upgrade to 4.4.0
* settings-daemon: Upgrade to 0.0.2
* slang: 2.2.4 -> 2.3.0
* sqlite3: upgrade to 3.14.1
* strace: 4.11 -> 4.13
* subversion: 1.9.3 -> 1.9.4
* sudo: upgrade to 1.8.17p1
* sysprof: Upgrade to git version slightly past 3.20
* sysstat: 11.3.4 -> 11.4.0
* systemd: upgrade to 230
* systemtap: update to 3.0
* tar: upgrade to 1.29
* tcf-agent: update to 1.4_neon_bugfix branch
* tcl: 8.6.4 -> 8.6.6
* tzcode-native: Update to 2016g
* tzdata: update to 2016g
* util-linux: upgrade to 2.28.1
* vala: update to 0.32.1
* videoproto: Upgrade 2.3.2 -> 2.3.3
* vte: Upgrade to 0.44.2
* watchdog: update to 5.15
* wayland: Upgrade 1.9.0 -> 1.11.0
* webkitgtk: upgrade to 2.12.5
* weston: Upgrade 1.9.0 -> 1.11.0
* wget: 1.17.1 -> 1.18
* xcb-proto: upgrade to 1.12
* xf86-input-evdev: Upgrade 2.10.1 -> 2.10.3
* xf86-input-libinput: Upgrade 0.16.0 -> 0.19.0
* xf86-video-intel: Upgrade to recent git
* xkeyboard-config: Upgrade to 2.18
* xproto: Upgrade 7.0.28 -> 7.0.29
* xrandr: Upgrade to 1.5.0
* xserver-xorg: update 1.18.4



