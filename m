Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D649E00CDF; Wed,  1 May 2019 15:35:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	TO_NO_BRKTS_PCNT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  2.5 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEF6CE00AD5;
	Wed,  1 May 2019 15:35:24 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 May 2019 15:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,419,1549958400"; d="scan'208";a="342539854"
Received: from fgomesdx-mobl1.amr.corp.intel.com ([10.255.73.122])
	by fmsmga005.fm.intel.com with ESMTP; 01 May 2019 15:35:23 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <6f015507-85b3-1c68-1cd0-cc3c6ea458c1@intel.com>
Date: Wed, 1 May 2019 15:35:23 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.7 (warrior 21.0.0) Released
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
X-List-Received-Date: Wed, 01 May 2019 22:35:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

We are pleased to announce the latest release of the Yocto Project 2.7 (warrior-21.0.0) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/poky-warrior-21.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7/poky-warrior-21.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/RELEASENOTES

Full test report is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

-----------------------
yocto-2.7 Release Notes
-----------------------

----------
Downloads
----------

Release Name: poky-warrior-21.0.0
Branch: warrior
Tag: warrior-21.0.0
Hash: 0e392026ffefee098a890c39bc3ca1f697bacb52
md5: 5b9ea9d4017f85148b1476e026ac8544
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/poky-warrior-21.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7/poky-warrior-21.0.0.tar.bz2

Release Name: oecore-warrior-21.0.0
Branch: warrior
Tag: warrior-21.0.0
Hash: f571b188177788d8ed0a7f3efe3569f153b1b0d3
md5: cb1eafef6c055838afddc505e6df7a74
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/oecore-warrior-21.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7/oecore-warrior-21.0.0.tar.bz2

Release Name: meta-mingw-warrior-21.0.0
Branch: warrior
Tag: warrior-21.0.0
Hash: 10695afe8cd406844e0d0dd868c11677e07557d4
md5: d69c92745ea9959f3bb7a5d35f4b9fbc
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/meta-mingw-warrior-21.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7/meta-mingw-warrior-21.0.0.tar.bz2

Release Name: meta-intel-warrior-21.0.0
Branch: warrior
Tag: warrior-21.0.0
Hash: cd2c3bfca97655999cbde645b73be712675dba92
md5: 3c300918d246c9902150dc2e2b9dd756
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/meta-intel-warrior-21.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7/meta-intel-warrior-21.0.0.tar.bz2

Release Name: meta-gplv2-warrior-21.0.0
Branch: warrior
Tag: warrior-21.0.0
Hash: 106ba6d2a4d08a276205c305f8485d701fe8a8f3
md5: 94bb8a8ed9b11d2693aaa373f93625dd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/meta-gplv2-warrior-21.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7/meta-gplv2-warrior-21.0.0.tar.bz2

Release Name: bitbake-warrior-21.0.0
Branch: warrior
Tag: warrior-21.0.0
Hash: cb185efe9e88cfb12b7a3fd08f3086ca0b69c8e2
md5: 4c69bb5e8ffb29bb40bb105920838441
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7/bitbake-warrior-21.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7/bitbake-warrior-21.0.0.tar.bz2

---------------------------
New Features / Enhancements
---------------------------
* Linux kernel 5.0/4.19, gcc 8.3, glibc 2.29 and ~230 other recipe upgrades
* Added support for virgl GL acceleration within QEMU / runqemu
* Added support SLiRP user-space networking in runqemu for easier networking within containers
* New "packagegroup-core-base-utils" packagegroup to easily bring in full-featured versions of standard system utilities
* New "ccmake" class to enable the CMake curses UI
* New "mcextend" class to enable easily creating multiconfig recipe variants
* New "xmlcatalog" class to update the XML catalogue
* New recipes: eglinfo-wayland, inetutils, libdazzle, libjitterentropy, libmodulemd, libpsl, vim, virglrenderer
* Architecture-specific changes:
 - linux-yocto: add baseline ARC support
 - qemuarm64: Add graphics support
 - qemuarm: Swap for an arm7ve (A15) configuration
 - qemumips64: change tune to mips64r2
 - qemumips: Enable the poweroff driver
 - arch-armv7*.inc: Add Cortex vfpv4-d16 support
 - arch-armv8a.inc: add tune include for armv8
 - arm-tunes: Remove -march option if mcpu is already added
 - ThunderX: update the armv8a rules
 - tune-cortexa32: add tunes for ARM Cortex-A32
 - tune-cortexa35: add tunes for ARM Cortex-A35
 - tune-cortexa53: add tunes for ARM Cortex-A53
 - tune-cortexa5.inc: Add tune options for vfpv4
 - tune-cortexa72: add tunes for ARM Cortex-A72
 - linux-yocto/4.19: introduce qemuriscv64 and qemuarma15 BSP definitions
 - gcc: Enable secureplt for powerpc64 target too
 - goarch: Add riscv64
 - gstreamer: Add RISC-V support
 - kernel-fitimage: support RISC-V
 - lib/oe/elf.py: Add powerpc64 architecture definition for musl
 - webkitgtk: Enable building for ARC architecture
 - linux-yocto: pinctrl config change for cannonlake
 - mdadm: add mdmon service to support Intel VROC
 - mesa: Allow building the r600 driver
 - locale: Allow usage of cross-localedef for ARC
 - Added armeb support to meson class
* Kernel-related changes:
 - kernel: defaults for KBUILD_BUILD_USER and KBUILD_BUILD_HOST are now soft
 - kernel-fitimage: Introduce a way to provide external dtb
 - kernel-yocto: allow kernel-meta repositories to be patched
* Introduced sstate hash equivalence server to accelerate subsequent builds by matching compatible sstate
* New "resulttool" for managing and storing test results and executing manual tests
* Significant cleanup of ptests, 100% pass rate for python3, and new ptests for json-glib, opkg, ruby
* devtool improvements:
 - Handle exporting generated kernel config fragments
 - Support kmeta directory usage with devtool modify/finish
 - Add "check-upgrade-status" command to print an overall list of recipes that can be updated
 - Allow allow use of alternate ssh command with devtool deploy-target
* Changed default debug split to make separate source packages
* Add "src-pkgs" IMAGE_FEATURES item to install all debug sources (default enabled for the SDK)
* Extended recipes to native: libaio, libepoxy, gtk+3, mesa, adwaita-icon-theme, hicolor-icon-theme, liberation-fonts, libxi, libxtst, at-spi2-atk, at-spi2-core, vte
* Extended recipes to nativesdk: gtk+3, libepoxy, fontconfig, libice, libsm, libxft, libxml-namespacesupport-perl, libxml-sax-base-perl, libxml-sax-perl, libxt, mesa, gdk-pixbuf, adwaita-icon-theme, hicolor-icon-theme, cairo, harfbuzz, libjpeg-turbo, pango, liberation-fonts, libxcomposite, libxdamage, libxi, libxtst, at-spi2-atk, at-spi2-core, atk, vte
* Added meson to standard SDK host packages
* Moved a number of recipes from autotools to meson
* Bitbake's gitsm fetcher reworked to support MIRRORS and BB_NO_NETWORK
* Removed site_config and glibc-initial
* Dropped gcc-cross-initial and use gcc-cross instead
* Perl now builds for the target using perl-cross for better maintainability and improved build performance
* libpcre: enable JIT compilation by default for improved performance
* asciidoc: use Python 3 port
* bind-utils: Install nslookup
* busybox: Enable domain search list support
* busybox: Enable mountpoint and setsid applets
* Enable ccache to work properly for several recipes and allow it to be shared between different builds
* classes/buildhistory: display modified git branches
* classes/icecc: Add ICECC_REMOTE_CPP variable
* classes/testsdk: Split implementation into classes
* cmake: Support Eclipse and other cmake generators
* classes/devicetree: Add support to compile overlays separately
* classes/devicetree: Add virtual provider for dtb
* initramfs-framework: add lvm module
* sqlite3: add PACKAGECONFIG options to allow disabling functions to enable shrinking for very small targets
* Added PACKAGECONFIG options to alsa-plugins, consolekit, curl, gconf, gst-plugins-bad, gtk+3, json-glib, libpcre, libsdl2, mesa, mtd-utils, openssl, pulseaudio, squashfs-tools, systemd, sqlite3, util-linux, wget
* initscripts: Add support for /etc/default/timestamp
* libusb1: Add udev support
* libunwind: Enable building static archive on musl
* linux-firmware: recommend split up packages
* linux-firmware: split out liquidio firmware
* mdadm: add init and service scripts
* meson: support multiple cross configuration files
* native: Enable RDEPENDS handling
* opkg: add --ignore-recommends flag and use it for BAD_RECOMMENDATIONS
* patch/insane: Rework patch fuzz handling
* ptest.bbclass: Add feature to populate a binary directory
* python: add tk support
* testimage: Add possibility to pass parameters to qemu/runqemu
* runqemu: Make QB_MEM easier to set
* qemu: split the native version into usermode and system parts
* scripts: Add oe-pylint
* runqemu: Add serialstdio mode
* image_types: add base64 conversion
* u-boot: Add mkenvimage tool
* u-boot: Support menuconfig for u-boot
* u-boot: install dumpimage and fit_check_sign in u-boot-tools
* util-linux: package each binary separately
* wic: allow bitbake variables in kickstart files
* wic: bootimg-efi: add a title source parameter
* gsettings: allow the schemas to be in any package
* insane.bbclass: Add configure-unsafe and configure-gettext
* insane.bbclass: support unrecognized configure checking for Meson
* insane: Clarify GNU_HASH warning
* base.bbclass: Display name of licenses which caused SkipRecipe
* distro_features_check.bbclass: show all error info at one time
* bitbake: Allow arguments in FAKEROOTCMD
* bitbake: bitbake-diffsigs: Support recursive deps with signature files
* bitbake: fetch2: Print SCMs list when SRCREV_FORMAT is not set
* rpm: produce sane amount of logging when creating a rootfs
* licence: Add license file CC-BY-SA-4.0
* Set default CONNECTIVITY_CHECK_URIS for OE-Core
* Enabled config cache for gettext, ncurses & gcc-runtime for a slight speedup in do_configure
* cmake-native: Set --parallel for configure for significant speedup
* lib/oe/recipeutils.py: parallelize upstream version checks
* sstate: add support for caching shared workdir tasks
* sstate: two improvements to performance for large sstate caches
* Removed lrzsz from packagegroup-self-hosted and packagegroup-core-tools-testapps
* glibc-locale: enable progress meter for the do_package task
* Eclipse Plugin - no longer being tested/released due to lack of developers
* meta-qt4 and meta-qt3 layers dropped from the release process
* Automated testing changes:
- oe-selftest is now tested on each major supported host
- meta-mingw tested automated
- ptest execution automated
- results collection automated and included in release (see testresults/)
- automated report generation of results
- choice of quick and full builds for testing
- inclusion of build performance testing within the autobuilder testing framework
- generate pylint report for bitbake and oe python library code
- generate buildhistory reports for builds
- split target definitions out for more parallelism

-------------
 Known Issues
-------------
Bug 13309: qemuppc fails to shutdown intermittently
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13309

Bug 12991: Bitbake build-appliance-image fails during building image due to webkitgtk package
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991

Late in the release we found there an issue with the TCP backlog
queue coalescence changes in the 5.0 kernel which was the cause of a
couple of python3 ptest hangs. A fix is available upstream, and will be
ported to the 5.0.X stable kernel series. This is already in our master
branch and will be in our point release. We don't believe it to be
serious enough to warrant holding the release, particularly given
the spread of kernel versions people use.

------------------
License Compliance
------------------
The following corrections have been made to the LICENSE values set by recipes:

* socat: corrected LICENSE to be GPLv2 rather than GPLv2+
* libgfortran: Set license to GPL-3.0-with-GCC-exception
* elfutils: removed Elfutils-Exception and set GPLv2 for shared libraries

----------------------
Migration instructions
----------------------

For details on changes that you might need to make when migrating to the Yocto Project 2.7
release from previous releases, please see the following manual section:

http://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.7-release


--------------
Security Fixes
--------------
* avahi: CVE-2017-6519
* bind: CVE-2018-5738, CVE-2018-5740, CVE-2018-5744, CVE-2018-5745, CVE-2019-6465
* bluez5: CVE-2018-10910
* cairo: CVE-2018-19876, CVE-2019-6461, CVE-2019-6462
* curl: CVE-2018-16890, CVE-2019-3822, CVE-2019-3823
* gettext: CVE-2018-18751
* ghostscript: CVE-2019-6116, CVE-2019-3835, CVE-2019-3838
* glibc: CVE-2019-7309, CVE-2019-9169
* icu: CVE-2018-18928
* libarchive: CVE-2019-1000019, CVE-2019-1000020, CVE-2018-1000877, CVE-2018-1000878, CVE-2018-1000879, CVE-2018-1000880
* libcroco: CVE-2017-7961
* libexif: CVE-2016-6328, CVE-2018-20030
* libid3tag: CVE-2004-2779
* libpng: fix CVE-2019-7317
* libsndfile1: CVE-2017-14245, CVE-2017-14246, CVE-2017-12562, CVE-2018-19758, CVE-2017-17456, CVE-2017-17457, CVE-2018-19661, CVE-2018-19662, CVE-2018-19432, CVE-2019-3832
* linux-yocto/4.19: CVE-2019-7221, CVE-2019-6974, CVE-2019-7222
* nettle: CVE-2018-16868, CVE-2018-16869
* nss: CVE-2018-12404
* openssl: CVE-2019-1543
* python-native: CVE-2018-14647
* qemu: CVE-2018-16872, CVE-2018-20124, CVE-2018-20125, CVE-2018-20126, CVE-2018-20191, CVE-2018-20216, CVE-2019-3812
* sqlite3: CVE-2019-9936, CVE-2019-9937
* systemd: CVE-2019-6454, CVE-2018-16864, CVE-2018-16865, CVE-2018-16866

----------------
Recipe Upgrades
----------------
* acpid: upgrade 2.0.30 -> 2.0.31
* adwaita-icon-theme: upgrade 3.28.0 -> 3.30.1
* alsa-lib: 1.1.6 -> 1.1.8
* alsa-plugins: 1.1.6 -> 1.1.8
* alsa-tools: 1.1.6 -> 1.1.7
* alsa-utils: 1.1.6 -> 1.1.8
* apr: upgrade 1.6.3 -> 1.6.5
* atk: upgrade 2.28.1 -> 2.30.0
* at-spi2-atk: upgrade 2.26.2 -> 2.30.0
* at-spi2-core: upgrade 2.28.0 -> 2.30.0
* at: upgrade to 3.1.23
* bind: update to 9.11.5-P4
* binutils: upgrade to 2.32
* blktool: update to 4-7.1
* bmap-tools: update from 3.4 to 3.5
* boost: update to 1.69.0
* btrfs-tools: update to 4.20.1
* busybox: update to 1.30.1
* ca-certificates: upgrade 20180409 -> 20190110
* cairo: upgrade 1.14.12 -> 1.16.0
* ccache: 3.4.2 -> 3.6
* clutter-gst-3.0: upgrade 3.0.26 -> 3.0.27
* cmake: update to 3.14.1
* connman: update to 1.36
* createrepo-c: update to 0.12.1
* cryptodev: 1.9 -> 1.10
* cups: upgrade to 2.2.10
* curl: upgrade to 7.64.0
* dbus-test: upgrade to 1.12.12
* dbus: upgrade to 1.12.12
* debianutils: update to 4.8.6.1
* diffutils: upgrade to 3.7
* dmidecode: update to 3.2
* dnf: update to 4.1.0
* dpkg: Upgrade to 1.19.4
* dropbear: update to 2019.77
* e2fsprogs: 1.44.3 -> 1.44.5
* ed: upgrade 1.14.2 -> 1.15
* eglinfo: upgrade SRCREV to 223817ee3798
* elfutils: 0.174 -> 0.176
* epiphany: update to 3.30.3
* ethtool: 4.17 -> 4.19
* eudev: upgrade 3.2.5 -> 3.2.7
* ffmpeg: update to 4.1.1
* file: upgrade 5.34 -> 5.36
* fts: Bump FTS to version 1.2.7
* gcc: Update to 8.3 latest on 8.x release
* gcr: upgrade 3.28.0 -> 3.28.1
* gdbm: update to 1.18.1
* gdb: Upgrade 8.2 -> 8.2.1
* gdk-pixbuf: update to 2.38.0
* ghostscript: 9.25 -> 9.26
* git: 2.18.1 -> 2.20.1
* glib-2.0: upgrade 2.58.0 -> 2.58.3
* glibc: Update to 2.29 release
* glib-networking: upgrade 2.54.1 -> 2.60.1
* gnome-desktop-testing: upgrade to 2018.1
* gnu-config: upgrade to 20181128 revision
* gnu-efi: upgrade 3.0.8 -> 3.0.9
* gnupg: upgrade 2.2.9 -> 2.2.13
* gnutls: update to 3.6.5
* go: add recipes for 1.12.1 and make it default
* go: Upgrade 1.11.1 -> 1.11.4 minor release
* gobject-introspection: update to 1.58.3
* gpgme: 1.11.1 -> 1.12.0
* grep: upgrade 3.1 -> 3.3
* gsettings-desktop-schemas: upgrade 3.28.0 -> 3.28.1
* gst-examples: upgrade to latest revision
* gstreamer1.0: upgrade to version 1.14.4
* gstreamer1.0-libav: upgrade to version 1.14.4
* gstreamer1.0-omx: upgrade to version 1.14.4
* gstreamer1.0-plugins-bad: upgrade to version 1.14.4
* gstreamer1.0-plugins-base: upgrade to version 1.14.4
* gstreamer1.0-plugins-good: upgrade to version 1.14.4
* gstreamer1.0-plugins-ugly: upgrade to version 1.14.4
* gstreamer1.0-python: upgrade to version 1.14.4
* gstreamer1.0-rtsp-server: upgrade to version 1.14.4
* gstreamer1.0-vaapi: upgrade to version 1.14.4
* gst-validate: upgrade 1.14.2 -> 1.14.4
* gtk+3: update to 3.24.5
* gzip: upgrade 1.9 -> 1.10
* harfbuzz: upgrade 1.8.8 -> 2.3.1
* hdparm: upgrade 9.56 -> 9.58
* i2c-tools: upgrade 4.0 -> 4.1
* icu: update to 63.1
* iproute2: 4.18.0 -> 4.19.0
* iso-codes: upgrade 4.1 -> 4.2
* json-glib: upgrade 1.4.2 -> 1.4.4
* kexec-tools: update 2.0.19
* kmod: upgrade to 26
* kmscube: update to latest commit
* less: upgrade 530 -> 550
* libassuan: update to 2.5.3
* libatomic-ops: upgrade 7.6.6 -> 7.6.8
* libcap: upgrade 2.25 -> 2.26
* libcomps: upgrade 0.1.8 -> 0.1.10
* libdnf: update to 0.26.0
* libdrm: Upgrade 2.4.94 -> 2.4.97
* libepoxy: upgrade 1.5.2 -> 1.5.3
* liberror-perl: upgrade 0.17026 -> 0.17027
* libevdev: upgrade 1.5.9 -> 1.6.0
* libfm-extra: upgrade 1.3.0.2 -> 1.3.1
* libfm: upgrade 1.3.0.2 -> 1.3.1
* libfontenc: update to 1.1.4
* libgcrypt: upgrade 1.8.3 -> 1.8.4
* libgpg-error: Bump to version 1.35
* libinput: upgrade 1.11.3 -> 1.12.6
* libjpeg-turbo: upgrade 2.0.0 -> 2.0.2
* libmodulemd: update to 2.1.0
* libpcap: upgrade 1.8.1 -> 1.9.0
* libpcre2: update to 10.32
* libpcre: upgrade to 8.43
* libpipeline: update to 1.5.1
* libpng: upgrade 1.6.35 -> 1.6.36
* librepo: update to 1.9.4
* libsdl2: upgrade 2.0.8 -> 2.0.9
* libsecret: upgrade 0.18.6 -> 0.18.7
* libsm: update to 1.2.3
* libsolv: update to 0.7.3
* libsoup: upgrade to 2.64.2
* libunwind: Upgrade to 1.3.1 release
* liburcu: upgrade 0.10.1 -> 0.10.2
* libva: update 2.2.0 -> 2.4.0
* libva-utils: 2.2.0 -> 2.4.0
* libwebp: update to 1.0.2
* libx11-diet: update to 1.6.7
* libx11: update to 1.6.7
* libxau: upgrade 1.0.8 -> 1.0.9
* libxcb: update to 1.13.1
* libxcomposite: update to 0.4.5
* libxcrypt: Upgrade to 4.4.2
* libxcursor: update 1.2.0
* libxdamage: update to 1.1.5
* libxkbcommon: update to 0.8.4
* libxslt: update to 1.1.33
* lighttpd: update to 1.4.53
* linux-firmware: Bump revision to 7bc2464
* linux-libc-headers: update to 5.x headers
* linux-yocto: introduce 4.19 recipes (4.19.30)
* linux-yocto: introduce 5.0.3 recipes
* linux-yocto-rt/4.19: update to -rt16
* llvm: upgrade to 8.0.0
* logrotate: upgrade 3.14.0 -> 3.15.0
* ltp: Bump to 20190115
* lttng-modules: upgrade 2.10.7 -> 2.10.8
* lttng-tools: Upgrade 2.9.5 -> 2.10.6
* lttng-ust: upgrade 2.10.1 -> 2.10.3
* lz4: upgrade 1.8.2 -> 1.8.3
* lzip: upgrade 1.20 -> 1.21
* lzop: upgrade 1.03 -> 1.04
* man-db: 2.8.3 -> 2.8.4
* mc: upgrade 4.8.21 -> 4.8.22
* mdadm: Upgrade to 4.1
* menu-cache: upgrade 1.0.2 -> 1.1.0
* mesa: Update 18.1.9 -> 19.0.1
* meson: update to 0.49.2
* mklibs-native: 0.1.43 -> 0.1.44
* mobile-broadband-provider-info: upgrade 20170310 -> 20190116
* mpfr: Upgrade to 4.0.2 release
* mtools: upgrade 4.0.18 -> 4.0.19
* musl: Upgrade to master beyond 1.1.21
* nasm: Upgrade 2.13.03 -> 2.14.02
* ncurses: upgrade 6.1 -> 6.1+20181013
* netbase: update to 5.6
* nettle: update to 3.4.1
* nfs-utils: Upgrade to 2.3.3
* ninja: update to 1.9.0
* nspr: update 4.21
* nss: update to 3.42.1
* ofono: upgrade 1.24 -> 1.25
* openssh: Update to 7.9
* openssl10: update to 1.0.2r
* openssl: update to 1.1.1b
* opkg: upgrade to version 0.4.0
* opkg-utils: upgrade to version 0.4.0
* p11-kit: upgrade 0.23.14 -> 0.23.15
* pcmanfm: upgrade 1.3.0 -> 1.3.1
* perl: add a version that builds the recipe using perl-cross, and update to 5.28.1
* piglit: upgrade to current HEAD
* pixman: upgrade 0.34.0 -> 0.38.0
* pkgconf: upgrade 1.5.3 -> 1.6.0
* powertop: update to 2.10
* pseudo: update to latest master
* psmisc: update to 23.2
* ptest-runner: Upgrade to 2.3.1
* python3-gitdb: upgrade 2.0.4 -> 2.0.5
* python3-pbr: upgrade to 5.1.2
* python3-pip: upgrade 18.0 -> 19.0.2
* python3-setuptools: upgrade 40.0.0 -> 40.8.0
* python3-six: upgrade 1.11.0 -> 1.12.0
* python3-smmap: upgrade to 2.0.5
* python3: upgrade to 3.7.2
* qemu: Bump to version 3.1
* readline: upgrade 7.0 -> 8.0
* rng-tools: 5 -> 6.6
* rpcbind: 0.2.4 -> 1.2.5
* rpm: update to 4.14.2.1
* ruby: upgrade 2.5.1 -> 2.5.3
* sbc: upgrade 1.3 -> 1.4
* sqlite3: Update to 3.27.2
* strace: upgrade to version 4.26
* subversion: upgrade 1.10.0 -> 1.11.1
* sudo: upgrade to 1.8.27
* syslinux: upgrade to 6.04-pre2
* sysprof: update to 3.30.2
* sysstat: upgrade to 12.1.3
* systemd-boot: upgrade to 241
* systemd: Update to systemd-stable v241-stable release
* systemtap: update to enable 5.0 kernel capabilities
* tar: upgrade to 1.31
* tcl: Upgrade to 8.6.9
* tiff: update to 4.0.10
* tzdata/tzcode-native: update to 2019a
* u-boot: Upgrade to 2019.01 release
* vala: update to 0.42.5
* wayland-protocols: upgrade 1.16 -> 1.17
* wayland: upgrade 1.16.0 -> 1.17.0
* webkitgtk: update to 2.22.7
* wget: upgrade 1.19.5 -> 1.20.1
* wpa-supplicant: update to 2.7
* x264: update to latest on stable branch
* xev: update to 1.2.3
* xf86-input-libinput: update to 0.28.2
* xf86-video-intel: update to latest
* xhost: update to 1.0.8
* xinit: update to 1.4.1
* xkeyboard-config: update to 2.26
* xmodmap: update to 1.0.10
* xprop: update to 1.2.4
* xserver-xorg: update to 1.20.4
* xvinfo: update to 1.1.4
* yocto-uninative: Update to 2.4




