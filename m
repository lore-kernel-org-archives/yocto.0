Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C8D7E009AA; Wed, 22 Apr 2015 13:44:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61AD9E00994;
	Wed, 22 Apr 2015 13:44:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 22 Apr 2015 13:44:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,626,1422950400"; d="scan'208";a="699386464"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2015 13:44:30 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Wed, 22 Apr 2015 13:44:29 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.208]) by
	ORSMSX154.amr.corp.intel.com ([10.22.226.12]) with mapi id
	14.03.0224.002; Wed, 22 Apr 2015 13:44:29 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>
Thread-Topic: [ANNOUNCEMENT] Yocto Project 1.8 (fido 13.0.0) Released
Thread-Index: AQHQfT0gRmWCrZLzmEW8wxrBQ2ku8A==
Date: Wed, 22 Apr 2015 20:44:28 +0000
Message-ID: <D15D563B.4E39C%tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.252.195.97]
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 1.8 (fido 13.0.0) Released
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
X-List-Received-Date: Wed, 22 Apr 2015 20:44:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6C43CED671EACC4EAE744CF7F7D5C98E@intel.com>
Content-Transfer-Encoding: quoted-printable

Hello,

The latest release of the Yocto Project 1.8 (fido-13.0.0) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/poky-fido-13.0.0
.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8/poky-fido-13.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/Ww14_-_2015-04-03_-_Full_Pass_1.8_M4.rc2

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Tracy Graydon
Yocto Project
Build and Release

---------------------
yocto-1.8 Errata
---------------------

Release Name: poky-fido-13.0.0
Branch: fido
Tag: fido-13.0.0
Hash: 90d943ae6246ef75f31062f52bee2a32e12ac329
md5: 2d92a34887c4c051aa9e754d0205df1d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/poky-fido-13.0.0
.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8/poky-fido-13.0.0.tar.bz2

Release Name: eclipse-poky-juno-fido-13.0.0
Branch: fido
Tag: fido-13.0.0
Hash: f5e33fc79a3f77b0013c005019b72430d8998e8b
md5: b5d6d44346c815a2e3a070b4dbbdd90a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/eclipse-poky-jun
o-fido-13.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8/eclipse-poky-juno-fido-13.0
.0.tar.bz2

Release Name: eclipse-poky-kepler-fido-13.0.0
Branch: fido
Tag: fido-13.0.0
Hash: 92f81a5b75ef184a88ba3aded5941dafced0e4cc
md5: ed487c0dbf7b899aeba4dde9242e2361
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/eclipse-poky-kep
ler-fido-13.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8/eclipse-poky-kepler-fido-13
.0.0.tar.bz2

Release Name: meta-qt3-fido-13.0.0
Branch: fido
Tag: fido-13.0.0
Hash: 3016129d90b7ac8517a5227d819f10ad417b5b45
md5: ed487c0dbf7b899aeba4dde9242e2361
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/meta-qt3-fido-13
.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8/meta-qt3-fido-13.0.0.tar.bz
2

-------------------------------
New Features / Enhancements
-------------------------------
* Linux kernel 3.19
* glibc 2.21
* Toaster web UI enhancements:
- - Ability to configure and run builds
- - Ability to bring in layers and related information from a layer index
- - Documentation: new Toaster manual
* Kernel improvements:
- - Major kernel build performance improvements
- - Introduce core-image-kernel-dev for kernel testing & development
- - Create kernel-devsrc package for kernel development both on and
off-target
- - linux-yocto: allow in-tree defconfigs
- - linux-yocto: make kernel configuration audit user visible
* Developer workflow tools:
- - Add development helper tool (devtool) to make adding new recipes and
modifying source for existing ones easier
- - Add new recipe auto-creation script (recipetool)
- - Add preview of extensible SDK
* Add machine qemuarm64 and improved aarch64 support
* Add bsp support for UNIVAC 1230
* Provide a proper mechanism for selecting between bluez4/bluez5
* bitbake-layers: add subcommands for adding and removing layers
* bitbake-layers: add ability to fetch layers and their dependencies from
layer index
* Doubled release engineering resources
* wic image creator enhancements:
- - rawcopy: support skipping
- - add fsimage plugin
- - add GPT support
- - properly label filesystems
- - allow to configure overhead factor per partition
- - allow to configure extra space per partition
- - add rawcopy source plugin
- - allow creation of partitions not in table
- - account for mmcblk device partition naming
* read-only-rootfs now works with systemd
* uboot-config.bbclass: Allow multiple U-Boot config for machine
* build-compare: add recipe to support package comparisons
* Enabled gcc-sanitizers and add to on-target SDK
* syslinux: support ext2/3/4 device
* chrpath.bbclass: handle RUNPATH as well as RPATH
* busybox-mdev: Support automatic mounting of block devices
* Make PR server update PKGV, not PV
* gst-plugins-*, gstreamer1.0-plugins-*: make installing main package pull
in all plugins
* image.bbclass: make kernel depmod data optional
* rootfs.py: add log checking ability for deb and ipk
* binconfig-disabled: try harder to prevent usage of config scripts
* bitbake: fetch2: add .lz compression support
* bitbake: re-validate SRC_URI checksums when changed within recipe
* Enable using 'make clean' for rebuilds within do_configure
* Use prebuilt manpages for coreutils and git
* Replace owl-video/gaku with gst-player
* Ensure if python appears in SDK, all of Python is installed
* cronie: Added default crontab
* watchdog: Provide and install initscript
* terminal.py: add tmux new window option
* lib/oe/terminal: add support for Terminology terminal emulator
* Improved layer dependencies mechanism
* Import recipes: libpostproc, debianutils (from meta-oe) and
python-pexpect (from meta-python)
* Add gptfdisk 0.8.10+git recipe
* cmake: supply CMAKE_AR in toolchain file
* udev-cache: Update cache asynchronously
* e2fsprogs: Add a patch to speedup mkfs
* machine/qemu: Switch from ext3 to ext4
* yocto-bsp: Get rid of 'strange' filenames
* externalsrc enhancements: avoid need to force builds every time, handle
recipes that fetch local files, handle SRCPV in PV, show warning on
compiling
* runqemu minor enhancements:
- - Add cpio support for qemux86 so that we can boot poky-tiny images
- - Allow FSTYPE to be changed from the environment
- - Add option for BIOS binary filename
* combo-layer enhancements:
- - partial import for '--history init'
- - init with full history
- - allow excluding files
- - let user choose where properties get updated
* Enabled ptest for lzo, clutter, gdk-pixbuf
* PACKAGECONFIG enhancements in in bind, connman, curl, glew,
gst-plugins-bad, gst-plugins-good, kmod, libav, libsm, lighttpd,
lttng-tools, mesa, mesa-demos, ofono, patch, pciutils, qemu, rpcbind,
rxvt-unicode, screen, systemd, util-linux, weston, wget, xserver-xorg


- ---------------
Recipe Upgrades
- ---------------
* acpid: Upgrade to 2.0.23
* apr-util: upgrade to 1.5.4
* atk: upgrade to 2.14.0
* at-spi2-atk: upgrade to 2.14.1.
* at-spi2-core: upgrade to 2.14.1
* at: Upgrade to 3.1.16
* autogen-native: upgrade to 5.18.4
* automake: upgrade to 1.15
* babeltrace: Update to 1.2.4
* bluez5: upgrade to 5.28
* boost: Upgrade to 1.57
* btrfs-tools: update to 3.18.2
* busybox: update to 1.23.1 release
* byacc: Upgrade to 20141128
* ca-certificates: Upgrade to 20141019 (git based)
* cairo: upgrade to 1.12.8
* clutter-1.0: upgrade to v1.20.0
* connman: upgrade to 1.28
* coreutils: upgrade to 8.23
* cracklib: upgrade to 2.9.2
* cronie: Upgrade to 1.4.12
* cups: Upgrade to 2.0.2
* curl: upgrade to 7.40
* dbus-glib: Upgrade to 0.102
* dbus: Upgrade to 1.8.10
* dhcp: upgrade to 4.3.1
* directfb: upgrade to 1.7.6
* dpkg: Upgrade to 1.17.21
* dropbear: upgrade to 2014.66
* dtc: Upgrade to 1.4.1 (git based)
* elfutils: upgrade to 0.161
* ethtool: Upgrade to 3.16
* file: upgrade to 5.22
* findutils: Upgrade to 4.5.14
* flac: upgrade to 1.3.1
* freetype: upgrade to 2.5.4.
* gcc: Upgrade 4.9.1 -> 4.9.2
* gdb: 7.7.1 -> 7.8.1
* gettext: upgrade to 0.19.4
* ghostscript: upgrade to 9.15
* git: 2.2.0 -> 2.3.0
* glew: Upgrade to 1.12
* glib-2.0: Upgrade to 2.42.1
* glibc: Upgrade 2.20 -> 2.21
* gnome-common: Upgrade to 3.14.0
* gnu-efi: upgrade to 3.0.1
* gnupg: upgrade to 2.1.1
* gnutls: update to 3.3.12
* grep: upgrade to 2.21
* gst-fluendo-mp3: upgrade to 0.10.31
* gst-fluendo-mpegdemux: update to 0.10.85
* gstreamer1.0-libav: upgrade to 1.4.5
* gstreamer1.0-plugins-bad: upgrade to 1.4.5
* gstreamer1.0-plugins-base: upgrade to 1.4.5
* gstreamer1.0-plugins-good: upgrade to 1.4.5
* gstreamer1.0-plugins-ugly: upgrade to 1.4.5
* gstreamer1.0-rtsp-server: upgrade to 1.4.5
* gstreamer1.0: upgrade to 1.4.5
* gtk+: upgrade to 2.24.25
* harfbuzz: upgrade to 0.9.38
* hdparm: Upgrade to 9.45
* help2man: Upgrade to 1.46.4
* hicolor-icon-theme: upgrade to 0.14
* icu: Upgrade to v54
* iproute2: upgrade to 3.17.0
* json-c: Upgrade to 0.12
* json-glib: upgrade to 1.0.2
* kernelshark: Update to version 2.5.3
* kexec-tools: 2.0.7 -> 2.0.9
* kmod: upgrade to 19
* less: Upgrade to 471
* libaio: Upgrade to 0.3.110
* libassuan: Upgrade to 2.2.0
* libcap: Upgrade to 2.24
* libdrm: upgrade to 2.4.59
* libevdev: upgrade to 1.3
* libffi: Upgrade to 3.2.1
* libfm: update to 1.2.3
* libgcrypt: Ugrade to 1.6.2
* libgpg-error: Upgrade to 1.18
* libinput: add 0.6.0 version
* libinput: update to 0.7.0
* libksba: Upgrade to 1.3.2
* libnewt/libnewt-python: upgrade to 0.52.18
* libpcap: upgrade to 1.6.2
* libpciaccess 0.13.2 -> 0.13.3
* libpcre: Upgrade to 8.36
* libpng12: upgrade to 1.2.52
* libpng: Upgrade to 1.6.16
* librsvg: upgrade to 2.40.6
* libtool: upgraded to 2.4.6
* libunistring: 0.9.3 -> 0.9.4
* liburcu: Ugrade to 0.8.5
* liburcu: Upgrade to 0.8.6
* libxcb, xcbproto: upgrade to version 1.11
* libxext: upgrade to 1.3.3
* libxkbcommon: Upgrade to 0.5.0
* libxml2: upgrade to 2.9.2
* libxml-parser-perl: upgrade to 2.44
* linux-firmware: upgrade to git rev 0e5f637
* linux-libc-headers: update to 3.19
* linux-yocto/3.14: update to 3.14.29
* linux-yocto/3.17: update to v3.17.8
* linux-yocto-dev: update to v3.19+
* linux-yocto: introduce 3.19 versioned recipes
* linux-yocto-tiny_3.17: Update to actually use 3.17 git repo
* logrotate: upgrade to 3.8.8
* lsbinitscripts: Upgrade to 9.61
* lsof: Upgrade to 4.88
* ltp: update to 20150119 release
* lttng-modules: Update along 2.6 stable branch
* lttng-tools: upgrade to 2.6.0
* lttng-ust: upgrade to 2.6.0
* lz4: update to r127
* lzo: Upgrade to 2.09 and add ptest
* make: upgrade to 4.1
* man-pages: upgrade to 3.76
* mc: Upgrade to 4.8.13
* mdadm: 3.3.1 -> 3.3.2
* menu-cache: update to 1.0.0
* mesa: Upgrade to 10.4.4
* midori: update to 0.5.8
* mkfontscale: Upgrade to 1.1.2
* mklibs-native: upgrade to 0.1.40
* mmc-utils: update to latest git version
* msmtp: Upgrade to 1.6.1
* nasm: 2.11.05 -> 2.11.06
* neard: upgrade to 0.15
* neon: update 0.30.0 -> 0.30.1
* netbase: upgrade to 5.3
* nfs-utils: Upgrade to 1.3.1
* npth: Upgrade to 1.1
* nspr: Upgrade to 4.10.8
* nss: Upgrade to 3.17.2
* ofono: upgrade to 1.16
* openssh: upgrade to 6.7p1
* openssl: upgrade to 1.0.2a
* opkg: Upgrade to v0.2.4
* opkg-utils: Update SRCREV
* oprofile: 0.9.9 -> 1.0.0
* orc : Update to 0.4.23.
* pango: upgrade to 1.36.8
* parted: upgrade to 3.2
* pax-utils: upgrade to 0.9.2
* pciutils: upgrade to 3.3.0
* pcmanfm: update to 1.2.3
* pigz: Upgrade to 2.3.3
* pinentry: update 0.9
* powertop: update version number from 2.6.1 to 2.7
* ppp: upgrade 2.4.7
* procps: Upgrade to 3.3.10
* pseudo_1.6.x.bb/pseudo_git.bb: Pseudo 1.6.4
* psplash: update to latest git version
* pulseaudio: upgrade to 6.0
* python-gitdb: upgrade to 0.6.4
* python-git: upgrade to 0.3.6
* python-pycurl: 7.19.3.1 -> 7.19.5.1
* python-scons: 2.3.2 -> 2.3.4
* python: upgrade 2.7.x from 2.7.3 to 2.7.9
* qemu: upgrade to 2.2.0
* quilt: 0.63 -> 0.64
* resolvconf: Upgrade to 1.76
* rgb: upgrade to 1.0.6.
* rpcbind: upgrade to 0.2.2
* rsync: upgrade to 3.1.1
* rxvt-unicode: Add Upgraded version 9.21
* sbc: upgrade to 1.3
* serf: 1.3.6 -> 1.3.8
* sqlite3: Upgrade to 3.8.7.4
* strace: Upgrade to 4.9
* subversion: upgrade to 1.8.11
* sudo: upgrade to latest state version 1.8.11p2
* sysklogd: upgrade to 1.5.1
* syslinux: Update to 6.0.3
* sysstat: upgrade to stable version 11.0.2
* systemd: Upgrade to 219
* systemtap: Upgrade to 2.7
* tar: upgrade to 2.18
* tcl: Upgrade to 8.6.3
* texinfo: integrate texinfo 4.8
* trace-cmd: Update to version 2.5.3
* tzcode: update to 2015b
* tzdata: update to 2015b
* u-boot: update to version 2015.01
* unifdef: remove fork, package upstream
* usbutils: Add version 008
* util-linux: upgrade to 2.25.2
* vala: upgrade to 0.26.1
* valgrind: update to 3.10.1
* watchdog: Upgrade to 5.14
* wayland: update version to 1.6.0
* weston: update to version 1.6.0
* wget: upgrade to 1.16
* wget: upgrade to 1.16.1
* wpa-supplicant: upgrade to 2.3
* xcb-util-image: upgrade to 0.4.0
* xcb-util-keysyms: upgrade to 0.4.0
* xcb-util: upgrade to 0.4.0
* xf86-input-evdev: upgrade to 2.9.1
* xf86-input-synaptics: upgrade to 1.8.1
* xf86-video-intel: upgrade to 2.99.917
* xf86-video-modesetting: upgrade to 0.9.0
* xinit: upgrade to 1.3.4
* xkbcomp: upgrade to 1.3.0
* xkeyboard-config: upgrade to 2.13
* xmlto: upgrade to 0.0.25
* xorg-xserver: Upgrade to 1.16.2
* xrandr: Upgrade to 1.4.3
* xserver-xorg: Update to 1.16.3
* xtrans: upgrade to 1.3.5
* xz: upgrade to latest stable release 5.2.0

---------------------
Security fixes
---------------------
bind:
     CVE-2014-8500
binutils:
     CVE-2014-8484, CVE-2014-8485, CVE-2014-8501, CVE-2014-8502,
CVE-2014-8503, CVE-2014-8504, CVE-2014-8737
busybox:
     CVE-2014-9645
cpio:
     CVE-2014-9112, CVE-2015-1197
curl:
     CVE-2014-3613, CVE-2014-3620
e2fsprogs:
     CVE-2015-0247
elfutils:
     CVE-2014-9447
glibc:
     CVE 2014-7817, CVE-2012-3406, CVE-2014-9402
gnutls:
     CVE-2014-8564
gst-ffmpeg:
     CVE-2014-8548, CVE-2014-8541
libxml2:
     CVE-2014-3660
nss:
     CVE-2014-1569
openssl:
     CVE-2014-3571, CVE-2015-0206, CVE-2014-3569, CVE-2014-3572,
CVE-2015-0204, CVE-2015-0205, CVE-2014-8275, CVE-2014-3570, CVE-2015-0291,
CVE-2015-0290, CVE-2015-0207, CVE-2015-0286, CVE-2015-0208, CVE-2015-0287,
CVE-2015-0289, CVE-2015-0293, CVE-2015-1787, CVE-2015-0285, CVE-2015-0209,
CVE-2015-0288 patch: CVE-2015-1196
python:
     disable SSLv3, CVE-2014-7185
qt4:
     add patch for BMP denial-of-service vulnerability
serf:
     CVE-2014-3504
subversion:
     CVE-2014-3522, CVE-2014-3528
util-linux:
     CVE-2014-9114
wget:
     CVE-2014-4877


-----------------------
Toaster Known Issues
-----------------------

Bug ID: 7318
Summary: Managed mode must use sessions to remember user search/order by
preferences
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7318

Bug ID: 7504
Summary: Layer details page is not populated after your build the layer
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7504

Bug ID: 7330
Summary: Inconsistency between recipe file and layer directory information
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7330

Bug ID: 7618
Summary: Django admin interface for toaster not working
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7618

Bug ID: 7523
Summary: Recipe file not showing in recipe details page
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7523

Bug ID: 7577
Summary: distrodata/distro_check should use BPN
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7577

Bug ID: 7603
Summary: Toaster is not storing in its database information about SDK
artifacts
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7603

Bug ID: 7620
Summary: Poor validation of subpath=3D value in git fetcher leads to
unexpected
file deletions
Link: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7620





