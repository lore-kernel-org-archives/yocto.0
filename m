Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93FC8E00BA1; Mon,  2 May 2016 12:42:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E53D1E00AF4;
	Mon,  2 May 2016 12:42:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 02 May 2016 12:42:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,569,1455004800"; d="scan'208";a="971023776"
Received: from bjruiz-mobl.amr.corp.intel.com ([10.254.9.178])
	by fmsmga002.fm.intel.com with ESMTP; 02 May 2016 12:42:47 -0700
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <5727ADB6.5020307@intel.com>
Date: Mon, 2 May 2016 12:42:46 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.1 (krogoth 15.0.0) Released
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
X-List-Received-Date: Mon, 02 May 2016 19:42:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Resending with the weird line breaks/wrapping fixed.

Hello,

The latest release of the Yocto Project 2.1 (krogoth-15.0.0) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/poky-krogoth-15.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1/poky-krogoth-15.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/2.1_QA_Status

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Tracy Graydon
Yocto Project Build and Release
<tracy.graydon@intel.com>

-----------------
yocto-2.1 Errata
-----------------

Release Name: eclipse-poky-kepler-krogoth-15.0.0
Branch: kepler/krogoth
Tag: kepler/krogoth-15.0.0
Hash: cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
md5: 929b8cfb1250ccc4b53c252c4b30ca9e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/eclipse-poky-kepler-krogoth-15.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1/eclipse-poky-kepler-krogoth-15.0.0.tar.bz2

Release Name: eclipse-poky-luna-krogoth-15.0.0
Branch: luna/krogoth
Tag: luna/krogoth-15.0.0
Hash: 45aa5c77523bdf051d548fff4305382942db2ebb
md5: 84d8cc8468a3f3618a06f795d14bca37
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/eclipse-poky-luna-krogoth-15.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1/eclipse-poky-luna-krogoth-15.0.0.tar.bz2

Release Name: eclipse-poky-mars-krogoth-15.0.0
Branch: mars/krogoth
Tag: mars/krogoth-15.0.0
Hash: 1d179ddcbd1983bf7bcfe98efdcbb186bdccca4f
md5: 1790a188b98c16fc95440c1e9799a369
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/eclipse-poky-mars-krogoth-15.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1/eclipse-poky-mars-krogoth-15.0.0.tar.bz2

Release Name: meta-qt3-krogoth-15.0.0
Branch: krogoth
Tag: krogoth-15.0.0
Hash: 7d958b928a4a38a186746fabbc0d8169dd8bb3a6
md5: c7c07b46b2e8f68085fca50c6efe09c1
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/meta-qt3-krogoth-15.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1/meta-qt3-krogoth-15.0.0.tar.bz2

Release Name: meta-qt4-krogoth-15.0.0
Branch: krogoth
Tag: krogoth-15.0.0
Hash: 4058b0773381f894d915ea3dfac5fe052d82a9a7
md5: 4e96e502beb7158543e41d59a9e91c1b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/meta-qt4-krogoth-15.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1/meta-qt4-krogoth-15.0.0.tar.bz2

Release Name: poky-krogoth-15.0.0
Branch: krogoth
Tag: krogoth-15.0.0
Hash: 6c1c01392d91f512e2949ad1d57a75a8077478ba
md5: cd5c9f6e03228d61b372cc71eb5c71eb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/poky-krogoth-15.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1/poky-krogoth-15.0.0.tar.bz2


----------------------------
New Features / Enhancements
----------------------------

* Linux kernel 4.4 (and 4.1 LTSI)
* gcc 5.3
* glibc 2.23
* udev upgraded to eudev 3.1.5
* Formfactor defaults changed to assume keyboard/pointer not touchscreen (See migration guide)
* Full support for building with the musl size-optimised C library
* Added full support for GObject introspection (where QEMU is available)
* "Uninative" feature to allow shared state to be used across different host distributions more effectively (used by default in poky)
* Added support for ipk package signing
* Added support for recursive release note easter eggs
* Added ability to sign shared state artifacts
* Added npm module fetcher to BitBake and corresponding support class in OE-Core (requires separate nodejs recipe)
* Added standard inc file to disable most static library building (used by default in poky)
* Troublesome "-e MAKEFLAGS=" removed from default EXTRA_OEMAKE
* libexecdir reverted to ${prefix}/libexec
* Toaster Improvements:
    * Image customization: Toaster now allows you to create you own custom images, by modifying the package content of existing ones. 
      Toaster provides dependency information for easy package addition and removal, builds your custom images, and generates a recipe 
      (.bb) file that you can download.
    * Isolated project configurations: Toaster now creates a separate build directory per project, avoiding build failures caused by 
      the reuse of intermediate build artifacts. This provides cleaner configurations that can be easily shared, and improves build 
      reliability. Shared state artifacts and downloads are still shared by default but this can be configured per project if desired.
    * Cancel builds from the Toaster web interface: you can now cancel the builds you start from the Toaster web interface with a single 
      click, without having to switch to the command line interface.
    * Improved interaction with BitBake: we have removed the need for the BitBake observer process, and we run the BitBake server only 
      during the build, stopping it once the build is done. We have also returned to executing the BitBake server from the selected project 
      release (Yocto Project 2.0 or 2.1), while the BitBake client runs from the same codebase used to start Toaster. This allows us to 
      provide backward compatibility with the previous stable release of the Yocto Project (2.0), enabling the next feature in this list
    * Support for building two stable releases: Yocto Project 2.1 "Krogoth" and Yocto Project 2.0 "Jethro" releases, and/or the OpenEmbedded 
      jethro and krogoth branches. Toaster also builds the development branch (master).
    * Upgrade to Django 1.8.x from 1.6.x: Django 1.8 has been designated as a Long Term Support release, with extended support until at least 
      April 2018.
    * Improved build statistics data: following changes to buildstats, Toaster now provides a more accurate measure of Disk I/O per task, and 
      displays both system and user CPU time.
    * Fix date filters for builds: ensure you can retrieve a subset of builds by specifying a date range.
    * Show PROVIDES information in recipe dependencies: Toaster now identifies recipe build dependencies satisfied via the PROVIDES variable. 
* Extensible SDK (bitbake -c populate_sdk_ext) now solidified with the following added features:
    * Support building a minimal (~35MB) SDK installer with the rest installed on-demand from shared state
    * Add ability to bring in pkgdata for world (improves "devtool add" dependency mapping and "devtool search" results)
    * Add a better config extension mechanism
    * Add ability to produce a derivative SDK containing items in the workspace
* Improvements to devtool:
    * Proper support for modifying the kernel source
    * New "edit-recipe" subcommand to quickly edit created recipes
    * New "configure-help" subcommand to make setting configure arguments easier
    * New "sync" command to synchronise source with upstream
    * Improved help text, and simplified command-line usage for add/modify
    * deploy-target: now preserves existing files and writes deployed files list to target
    * undeploy-target: supports undeploying all deployed recipes at once
    * modify: create a commit for extra tasks that modify source when extracting
    * build-image: allow specifying packages to add to image
    * search: print SUMMARY value next to recipe name
* Improvements to devtool add / recipetool create including:
    * Support for extracting dependencies from cmake
    * Improved autotools support
    * Basic support for generating custom kernel recipes
    * Support for new npm fetcher/class
    * Support for out-of-tree kernel modules
    * Extract name/version from filename, github/bitbucket URLs, build scripts
    * Extract SRC_URI from local git repositories
    * Handle https://....git URLs
    * Improve license detection
    * Support creating native variants or standalone native/nativesdk recipes
    * Support specifying a subdirectory within the fetched source
    * Allow extension through additional layers e.g. meta-qt5
* Improvements to image build process:
    * Image generation is now split out from filesystem generation
    * Create image license manifest (including other dependencies such as bootloaders)
    * Support chaining compression (aka conversion) commands and use to allow producing checksums for images
    * Allow vm and live image types to be built at the same time
    * Allow overriding .rootfs suffix
* Improvements to bitbake:
    * Set process names to be meaningful
    * Always prefix task messages with recipe/task name
    * Add support for unpacking 7-Zip archives
    * Add --setscene-only option
    * Add ability to build up to but not including a task
    * Provide more information with 'multiple .bb files are due to be built' message
    * List close matching runtime providers with close matches when invalid target specified
    * Allow BBMASK to contain multiple regular expressions
    * Adjust styling of graph lines for RRECOMMENDS and RDEPENDS in -g output
* wic: allow specifying a custom config for the bootloader
* wic: implement includes in wks files
* runqemu: add support for wic images
* runqemu: add support for qcow2 and vdi images
* Allow easily replacing dependencies on busybox with another provider (e.g. toybox)
* .debug directories are now automatically packaged in the -dbg package
* Add bash-completion (from meta-oe)
* Added recipes: cantarell-fonts, libsolv, xf86-input-libinput, pixz
* linux-yocto/qemuarm64: enable 32 bit compatibility
* linux-yocto: add overlayfs feature
* linux-yocto: add tmpfs-posix-acl feature
* mkefidisk.sh: add boot log on console
* mkefidisk.sh: add startup script for automated boot
* oe-git-proxy: also check all_proxy and http_proxy env variables
* oe-git-proxy: support username / password in http proxy
* oe-init-build-env*: Allow $OEROOT to be predefined
* classes/externalsrc: create shortcut symlinks for workdir and logs
* Make unneeded packages for a read-only rootfs configurable
* Allow "already-stripped" warning to be skipped through INSANE_SKIP
* Added debugging support for rpm scriptlet execution
* Added optional SDK sysroot dangling symlink check
* os-release: put double-quotes around variable contents to allow sourcing from scripts
* ptest-runner: Allow running of specific tests
* recipetool: newappend: add -e/--edit argument to edit new bbappend
* recipetool: added setvar subcommand to set a variable value in a file
* build-appliance-image: Support for VirtualBox guest additions
* buildhistory.bbclass: remove out-dated information on request
* buildhistory.bbclass: support extending the content of the build history
* buildstats: replace inaccurate I/O / CPU % with getrusage data and corrected IO stats
* autotools: add ability to specify configure script path
* udev-extraconf: introduce multiple mount blacklist files for more complex setups
* iproute2: install bridge tool by default
* busybox: enabled resize applet
* libarchive: Add bsdtar and bsdcpio packages
* Ensure switching PREFERRED_PROVIDER for virtual/* providers results in old files being removed from sysroot
* Sysroot build paths are now removed from debug files
* Add a mechanism for "unlocking" recipes with locked tasks
* combo-layer: introduce ability to exclude component from mass update
* Dropped old items including Hob and ADT - see migration guide for details

* The SoftWare UPDater — swupd:
    * swupd — from Clear Linux provides a new way of adding functionality to and updating a Linux-based OS. swupd uses binary-delta 
      technology to efficiently update only the files that have changed between OS updates. This means that updates are small, resulting 
      in fast downloads, and fast to apply. swupd is made available as a separate meta-swupd layer alongside the Yocto Project 2.1 release. 
      See https://wiki.yoctoproject.org/wiki/Meta-swupd for more information.

----------------
 Known Issues
----------------

* Extensible SDK
    * Under certain circumstances you may see signature check errors when installing or using the extensible SDK generated with 
      bitbake -c populate_sdk_ext <imagename>. To avoid these, set the following to a conf/sdk-extra.conf file (either in a layer or under 
      your build directory) before building the extensible SDK:

      SIGGEN_LOCKEDSIGS_TASKSIG_CHECK = "none"

* Toaster
    * Occasionally Toaster shows inconsistencies in the number of packages installed in custom images. Build information reports correct 
      numbers and lists of packages installed, but image configuration pages may show incorrect data 
      (https://bugzilla.yoctoproject.org/show_bug.cgi?id=9115)
    * Custom images created from the build information pages fail to build. If you create the same custom image from the "new custom image" 
      page, it builds without problems. (https://bugzilla.yoctoproject.org/show_bug.cgi?id=9494)
    * Toaster allows you to click the option to download the .bb file for a custom image before it is built, but throws an error when you click 
      it. After the custom image has been built, the .bb file is available. (https://bugzilla.yoctoproject.org/show_bug.cgi?id=9425)
    * It is not possible to add new image file system types to Toaster (https://bugzilla.yoctoproject.org/show_bug.cgi?id=7828)
    * hddimg and iso image files are not available for download, even though they exist inside the tmp/deploy/images directory 
      (https://bugzilla.yoctoproject.org/show_bug.cgi?id=9358)
    * There are still several issues in the display of variable history information (https://bugzilla.yoctoproject.org/show_bug.cgi?id=8188, 
      https://bugzilla.yoctoproject.org/show_bug.cgi?id=8189, https://bugzilla.yoctoproject.org/show_bug.cgi?id=8190)
    * Toaster displays do_shared_workdir task as a shared state task, when it's not (https://bugzilla.yoctoproject.org/show_bug.cgi?id=8886)

* User creation from package management scripts doesn't work on the target if util-linux isn't installed, due to a bug in busybox's flock 
  implementation.  This is fixed on the krogoth branch in git, and will be resolved in 2.1.1.

* Eclipse-poky
    * The mars version of the plugin will not install on Eclipse Mars due to upstream changes in plugins we depend upon.  We are developing 
      a new plugin architecture (CROPS) and are devoting resources toward that currently.  We are obsoleting the Mars version of the plugin 
      so please use Eclipse Luna and eclipse-poky-luna-krogoth-15.0.0.tar.bz2.
    * The documentation for the plugin is out of date. Please check the Yocto Wiki https://wiki.yoctoproject.org/wiki/Eclipse_Plug-in for 
      current setup instructions.

-----------------------
Migration instructions
-----------------------

For details on changes that you might need to make when migrating to the
Yocto Project 2.1 release from previous releases, please see the following
manual section:
 
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.1-release


----------------
Security Fixes
----------------
dhcp: CVE-2016-2774
bind: CVE-2016-2088
bind: CVE-2016-1285 CVE-2016-1286
nettle: Security fix CVE-2015-8804
nettle: Security fix CVE-2015-8803 and CVE-2015-8805
dhcp: CVE-2015-8605
glibc: Security fix CVE-2015-7547
glibc: CVE-2015-8776
glibc: CVE-2015-9761
glibc: CVE-2015-8779
glibc: CVE-2015-8777.patch
qemu: Security fix CVE-2016-2198
qemu: Security fix CVE-2016-2197
qemu: Security fix CVE-2016-1568
curl: update 7.46.0 -> 7.47.0 ( CVE-2016-0754 CVE-2016-0755 )
openssl: update 1.0.2e -> 1.0.2f ( CVE-2016-0701 CVE-2015-3197 )
dpkg: fix CVE-2015-0860
linux-yocto/4.4: CVEs and preempt-rt update
openssh: CVE-2016-1907
expat: CVE-2015-1283
grub2: Fix CVE-2015-8370
libpng: update 1.6.19 -> 1.6.20 (CVE-2015-8126)
rpcbind: Security Advisory - rpcbind - CVE-2015-7236
subversion: fix CVE-2015-3187
subversion: fix CVE-2015-3184
libxml2: fix CVE-2015-7942 and CVE-2015-8035
libsndfile: fix CVE-2014-9756
libxslt: CVE-2015-7995

----------------
Recipe Upgrades
----------------

* acpid: upgrade to 2.0.26
* adwaita-icon-theme: Upgrade 3.16.2.1 -> 3.18.0
* alsa-lib: 1.0.29 -> 1.1.0
* alsa-plugins: 1.0.29 -> 1.1.0
* alsa-tools: 1.0.29 -> 1.1.0
* alsa-utils: 1.0.29 -> 1.1.0
* at-spi2-atk: Upgrade 2.16.0 -> 2.18.1
* at-spi2-core: update to 2.18.3
* at: upgrade to 3.18
* atk-spi2-core: Upgrade 2.16.0 -> 2.18.1
* atk: Upgrade 2.16.0 -> 2.18.0
* autogen-native: 5.18.5 -> 5.18.6
* avahi: update to version 0.6.32
* babeltrace: update to 1.3.1
* bind: update to 9.10.3-P3
* binutils: Use tip of 2.26 branch
* bluez5: upgrade to 5.37
* boost: update to 1.60.0
* bootchart2: update to 0.14.8
* btrfs-tools: update to 4.4
* busybox: update 1.23.2 -> 1.24.1
* ca-certificates: update to 20160104
* cairo: update to 1.14.6
* ccache: update to 3.2.4
* cdrtools-native: update to 3.01 final
* clutter-1.0: Upgrade 1.24.2
* clutter-gst-3.0: update to 3.0.16
* clutter-gtk-1.0: Upgrade 1.6.2 -> 1.6.6
* cmake: Update to 3.4.3.
* cogl-1.0: Upgrade 1.20.0 -> 1.22.0
* connman: upgrade to 1.31
* coreutils: upgrade to 8.25
* cpio: update to 2.12
* cryptodev: update to 1.8
* cups: upgrade to 2.1.3
* curl: upgrade to 7.47.1
* dbus-glib: 0.104 -> 0.106
* dbus: upgrade to 1.10.6
* debianutils: Upgrade 4.5.1 -> 4.7
* dhcp: 4.3.2 -> 4.3.3
* diffstat: upgrade to 1.61
* dmidecode: update to 3.0
* dpkg: Update to 1.18.4
* dropbear: update to 2015.71
* e2fsprogs: 1.42.9 -> 1.43 (master)
* elfutils: 0.163 -> 0.164
* epiphany: upgrade to 3.18.3
* ethtool: bump version to 4.2
* ffmpeg: update to 3.0
* file: 5.24 -> 5.25
* findutils: upgrade to 4.6.0
* flex: update to 2.6.0
* freetype: update to 2.6.3
* gcc5: Upgrade gcc-5.2 -> gcc-5.3
* gcr: update to 3.18.0
* gdb: upgrade to 7.10.1
* gdk-pixbuf: update to 2.32.3
* gettext: Upgrade 0.19.4 -> 0.19.6
* ghostscript: 9.16 -> 9.18
* git: update to 2.7.4
* glew: upgrade to 1.13.0.
* glib-2.0: update to 2.46.2
* glib-networking: Upgrade 2.44.0 -> 2.46.1
* glibc: Upgrade to 2.23
* gmp: update to 6.1.0
* gnome-common: Upgrade 3.14.0 -> 3.18.0
* gnome-desktop3: update to 3.18.2
* gnupg: update to 2.1.11
* gnutls: update to 3.4.8
* gpgme: upgrade to 1.6.0
* gptfdisk: update to 1.0.1
* grep: upgrade to 2.23
* gsettings-desktop-schemas: upgrade to 3.19.3
* gstreamer1.0-libav: update git recipe to 1.7.2
* gstreamer1.0-libav: upgrade to version 1.6.3
* gstreamer1.0-plugins-bad: update git recipe to 1.7.2
* gstreamer1.0-plugins-bad: upgrade to version 1.6.3
* gstreamer1.0-plugins-base: update git recipe to 1.7.2
* gstreamer1.0-plugins-base: upgrade to version 1.6.3
* gstreamer1.0-plugins-good: update git recipe to 1.7.2
* gstreamer1.0-plugins-good: upgrade to version 1.6.3
* gstreamer1.0-plugins-ugly: update git recipe to 1.7.2
* gstreamer1.0-plugins-ugly: upgrade to version 1.6.3
* gstreamer1.0-rtsp-server: upgrade to version 1.6.2
* gstreamer1.0: update git recipe to 1.7.2
* gstreamer1.0: upgrade to version 1.6.3
* gtk+3: update to 3.18.8
* gtk+: update to 2.24.29
* gtk-icon-utils-native: update to 3.18.8
* harfbuzz: update to 1.2.3
* help2man-native: 1.47.1 -> 1.47.3
* icu: Upgrade 55.1 -> 56.1
* ifupdown: update to 0.8.2
* iproute2: update to version 4.4.0
* iptables: upgrade to 1.6.0
* iputils: s20121221 -> s20151218
* iso-codes: upgrade to 3.64
* iw: upgrade to version 4.3
* kbd: update to 2.0.3
* kexec-tools: update to 2.0.11
* kmod: upgrade to 22
* less: 479 -> 481
* libassuan: update to 2.4.2
* libbsd: upgrade to 0.8.1
* libcroco: upgrade to 0.6.11
* libdrm: update to 2.4.67
* libevdev: upgrade to 1.4.6
* libfm: update to 1.2.4
* libgcrypt: 1.6.3 -> 1.6.5
* libgpg-error: upgrade to 1.21
* libical: update to 2.0.0
* libidn: 1.30 -> 1.32
* libinput: Upgrade 0.21.0 -> 1.1.4
* libpcap: update to 1.7.4
* libpcre: upgrade to 8.38
* libpng12: upgrade to 1.2.56
* libpng: upgrade to 1.6.21
* librsvg: upgrade to 2.40.13
* libsdl2: update to 2.0.4
* libsecret: update to 0.18.4
* libsndfile1: 1.0.25 -> 1.0.26
* libsolv: update to 0.6.19
* libsoup-2.4: update to 2.52.2
* libtasn1: upgrade to 4.7
* libtirpc: upgrade to 1.0.1
* libunistring: upgrade to version 0.9.6
* liburcu: update to 0.9.1
* libusb1: upgrade from 1.0.19 to 1.0.20
* libwebp: upgrade to 0.5.0
* libwnck3: update to 3.14.1
* libxcb: Upgrade 1.11 -> 1.11.1
* libxi: upgrade to 1.7.6
* libxml-simple-perl: update to 2.22
* libxml2: upgrade to 2.9.3
* lighttpd: upgrade to 1.4.39
* linux-firmware: Update to latest HEAD
* linux-libc-headers: update to 4.4
* linux-yocto-dev: bump to v4.6-rcX
* linux-yocto-rt/4.1: update to -rt15
* linux-yocto/4.1: update to 4.1.18
* linux-yocto/4.4: update to 4.4.3
* ltp: Upgrade to 20160126
* lttng-modules: Upgrade to 2.7.1
* lttng-tools: Upgrade to 2.7.1
* lttng-ust: Upgrade to 2.7.1
* man-pages: 4.02 -> 4.04
* matchbox-keyboard: Update to latest HEAD to fix 64bit issue
* matchbox-wm: Update to fix XChangeProperty datatype issue
* mc: upgrade to 4.8.15
* mdadm: update to version 3.4
* menu-cache: upgrade to 1.0.1
* mesa: upgrade 10.6.3 -> 11.1.1
* mmc-utils: upgrade to latest git version
* mobile-broadband-provider-info: update to tagged release 20151214
* msmtp: update to 1.6.3
* mtd-utils: update to 1.5.2
* ncurses: update to 6.0+20160213
* nettle: update to 3.2
* nfs-utils: update to 1.3.3
* nspr: update to 4.12
* nss: update to 3.21
* ofono: upgrade to version 1.17
* openssh: update to 7.1p2
* openssl: update to 1.0.2f
* opkg: upgrade to v0.3.1
* orc: update to 0.4.24
* pango: Upgrade 1.36.8 -> 1.38.1
* pax-utils: update to 1.1.5
* pbzip2: update to 1.1.13
* pciutils: upgrade to 3.4.1
* pcmanfm: update to 1.2.4
* perl: Upgrade to 5.22.1
* piglit: upgrade SRCREV to latest at 2015-02-19
* pixman: Upgrade 0.32.6 -> 0.32.8
* pkgconfig: upgrade to version 0.29
* powertop: update to 2.8
* procps: update to 3.3.11
* pseudo: uprev to 1.7.5
* psplash: update to latest git version
* pulseaudio: 6.0 -> 8.0
* puzzles: update to current commit
* python-git: update to 1.0.2
* python-mako: upgrade to 1.0.3
* python-nose: upgrade to 1.3.7
* python-numpy: upgrade to 1.10.4
* python-pycurl: upgrade to 7.21.5
* python-pygobject: update to 3.18.2
* python-scons: upgrade to 2.4.1
* python-setuptools: Unify and upgrade python-setuptools and python3-setuptools to 19.4
* python3-pip: Upgrade to 8.0.0
* python3: Upgrade from 3.4.3 to 3.5.1
* python: Upgrade 2.7.9 > 2.7.11
* python-pexpect: update to 4.0.1
* qemu: upgrade to 2.5.0
* quota: update to version 4.03
* resolvconf: upgrade to 1.78
* rpm: Uprev to rpm-5.4.16 (pre) and rpm-5.4+cvs to current CVS head
* rsync: 3.1.1 -> 3.1.2
* rt-tests: upgrade to version 0.96
* rxvt-unicode: update to 9.22
* shared-mime-info: update to 1.6
* socat: upgrade to 1.7.3.1
* sqlite3: upgrade to version 3.11.0
* strace: update 4.10 -> 4.11
* subversion: update to 1.9.3
* sudo: upgrade to 1.8.15
* swig: upgrade to 3.0.8
* sysstat: upgrade to 11.2.0
* systemd: Upgrade to 229
* systemtap: update to 2.9
* tiff: update to 4.0.6
* trace-cmd: update to 2.6
* tzcode: update to 2016c
* tzdata: update to 2016c
* uclibc: Switch to using uclibc-ng, upgrade to 1.0.12
* udev: upgraded to eudev 3.1.5
* unfs3: update to r497
* unifdef: upgrade to 2.11
* uninative: Switch md5sum -> sha256
* util-linux: Upgrade to 2.27.1
* vala: update to 0.30.1
* valgrind: update to 3.11.0
* waffle: update to 1.5.2
* wayland: upgrade 1.8.1 -> 1.9.0
* webkitgtk: update to 2.10.7
* weston: upgrade 1.8.0 -> 1.9.0
* wget: Upgrade 1.16.3 -> 1.17.1
* wpa-supplicant: upgrade to 2.5
* xcursor-transparent-theme: upgrade to latest git revision
* xdg-utils: Upgrade to 1.1.1
* xf86-input-evdev: Upgrade 2.9.2 -> 2.10.1
* xf86-input-synaptics: Upgrade 1.8.2 -> 1.8.3
* xf86-video-omap: Upgrade 0.4.3 -> 0.4.4
* xinput: Upgrade 1.6.1 -> 1.6.2
* xkbcomp: Upgrade 1.3.0 -> 1.3.1
* xkeyboard-config: Upgrade 2.15 -> 2.16
* xmlto: 0.0.26 -> 0.0.28
* xserver-xorg: Upgrade 1.17.2 -> 1.18.0
* xvideo-tests: move to the latest release
* xz: upgrade to 5.2.2

