Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAEC9E00E6E; Fri, 27 May 2016 16:24:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7345AE00DEC;
	Fri, 27 May 2016 16:24:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2016 16:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,376,1459839600"; d="scan'208";a="976052905"
Received: from unknown (HELO tgraydon-mac01.local) ([10.254.7.25])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2016 16:24:45 -0700
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <5748D73C.6040401@intel.com>
Date: Fri, 27 May 2016 16:24:44 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 1.8.2 (Fido 13.0.2) Released
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
X-List-Received-Date: Fri, 27 May 2016 23:24:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 1.8.2 (fido-13.0.2) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.2/poky-fido-13.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.2/poky-fido-13.0.2.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.2/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW21_-_2016-05-13_-_Full_Pass_1.8.2

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Tracy Graydon
Yocto Project
Build and Release

-------------------
yocto-1.8.2 Errata
---------------------

Release Name: eclipse-poky-kepler-fido-13.0.2
Branch: kepler/fido
Tag: kepler/fido-13.0.2
Hash: cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
md5: dbc764d5c8687d29480b165997ad516e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.2/eclipse-poky-kepler-fido-13.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.2/eclipse-poky-kepler-fido-13.0.2.tar.bz2

Release Name: eclipse-poky-luna-fido-13.0.2
Branch: luna/fido
Tag: luna/fido-13.0.2
Hash: 45aa5c77523bdf051d548fff4305382942db2ebb
md5: 619373f7c5b57d6e8e1f059a8fc2beb0
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.2/eclipse-poky-luna-fido-13.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.2/eclipse-poky-luna-fido-13.0.2.tar.bz2

Release Name: meta-qt3-fido-13.0.2
Branch: fido
Tag: fido-13.0.2
Hash: 83bcdf8ee8c194707daa34d852f619844d30f287
md5: 871c02a81702de34be4571b3f9601272
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.2/meta-qt3-fido-13.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.2/meta-qt3-fido-13.0.2.tar.bz2

Release Name: poky-fido-13.0.2
Branch: fido
Tag: fido-13.0.2
Hash: c9f0a99050ec0050f0dbcd55d0cd2ab18848113f
md5: 9eaa656682e0e76b2d051ff50d272ac2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.2/poky-fido-13.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.2/poky-fido-13.0.2.tar.bz2


----------------
 Known Issues
----------------
n/a

----------------
Security Fixes
----------------
openssl: 1.0.2d -> 1.0.2h (mainly for CVEs)
bind: CVE-2016-1285 CVE-2016-1286
dhcp: CVE-2015-8605
openssl: Security fix CVE-2016-0800
wpa-supplicant: Fix CVE-2015-8041
git: Security fixes CVE-2015-7545
nettle: Security fix CVE-2015-8804
nettle: Security fix CVE-2015-8803 and CVE-2015-8805
bind: Security fix CVE-2015-8461
rpcbind: Security Advisory - rpcbind - CVE-2015-7236
curl: Secuirty fix CVE-2016-0755
curl: Security fix CVE-2016-0754
libgcrypt: Security fix CVE-2015-7511
libpng: Security fix CVE-2015-8472
libpng: Security fix CVE-2015-8126
gdk-pixbuf: Security fix CVE-2015-7674
librsvg: Security fix CVE-2015-7558
tiff: Security fix CVE-2015-8784
tiff: Security fix CVE-2015-8781
foomatic-filters: Security fixes CVE-2015-8327
foomatic-filters: Security fix CVE-2015-8560
qemu: Security fix CVE-2016-2198
libbsd: Security fix CVE-2016-2090
glibc: Security fix CVE-2015-7547
dpkg: Security fix CVE-2015-0860
bind: Security fix CVE-2015-8704
libxml2: Security fix CVE-2015-8710
libxml2: Security fix CVE-2015-8241
qemu: Security fix CVE-2015-7295
qemu: Security fix CVE-2016-1568
qemu: Security fix CVE-2015-8345
qemu: Security fix CVE-2015-7512
qemu: Security fix CVE-2015-7504
qemu: Security fix CVE-2015-8504
subversion: fix CVE-2015-3187
subversion: fix CVE-2015-3184
openssl: Security fix CVE-2016-0701
openssl: Security fix CVE-2015-3197
glibc: CVE-2015-8776
glibc: CVE-2015-9761
glibc: CVE-2015-8779
glibc: CVE-2015-8777
openssh: CVE-2016-077x
libxml2: security fix CVE-2015-5312
libxml2: security fix CVE-2015-8242
libxml2: security fix CVE-2015-7500
libxml2: security fix CVE-2015-7499
libxml2: security fix CVE-2015-7497
libxml2: security fix CVE-2015-7498
libxml2: security fix CVE-2015-8035
libxml2: security fix CVE-2015-7942
libxml2: security fix CVE-2015-8317
libxml2: security fix CVE-2015-7941
openssl: fix for CVE-2015-3195
openssl: fix for CVE-2015-3194
openssl: fix for CVE-2015-3193
grub2: Fix CVE-2015-8370
bind: CVE-2015-8000
libxml2: fix CVE-2015-7942 and CVE-2015-8035
readline: actually apply readline63-003 (aka CVE-2014-2524)
openssh: Backport CVE-2015-5600 fix
unzip: CVE-2015-7696, CVE-2015-7697
libxslt: CVE-2015-7995


----------------
Fixes
----------------
build-appliance-image: Update to fido head revision
openssl: prevent ABI break from earlier fido releases
conf/local.conf.sample: comment out ASSUME_PROVIDED=libsdl-native
build-appliance-image: Update to fido head revision
bitbake: tests/fetch: ensure fetch tests preserve current dir
bitbake: bb/tests/fetch: Update cups url
gtk+_2.24.25: backport a fix for building with newer host perl
tzdata: update to 2016d
tzcode: update to 2016d
tzcode: update to 2016c
tzdata: update to 2016c
tzcode: update to 2016b
tzdata: update to 2016b
busybox_git: Fix SRCREV
busybox: Backport patch to fix zcip false-conflict
populate_sdk_base: Ensure PKGDATA_DIR exists
scripts/oe-pkgdata-util: Fix variable name in error handling
xorg-lib: allow native building without x11 DISTRO_FEATURES
base: check for existing prefix when expanding names in PACKAGECONFIG
libsdl: expand PACKAGECONFIG and enable native builds
libsdl: depends on libglu when both x11 and opengl
testimage: Handle ipk/deb packaging format tests correctly
build-appliance-image: Update to fido head revision
poky.conf: Bump version for 1.8.2 fido release
build-appliance-image: Update to fido head revision
documentation: Final bits for the 1.8.2 manual set
nettle: The variable named p in the patch file was incorrectly named.
kernel.bbclass: do not mv/link sources when externalsrc enabled
libpcre: Security fixes and package update.
tzdata: remove 2015d version
rpmresolve.c: Fix unfreed pointers that keep DB opened
tzdata: reinstate changes reverted in 2014c upgrade
tzdata: update to 2016a
tzcode: update to 2016a
logrotate: do not move binary logrotate to /usr/bin
libxml2: remove files for easier maintenance
texinfo: don't create dependency on INHERIT variable
openssl: fix SRC_URI
gcc-4.9: backport from gcc trunk r212178
feature-arm-thumb.inc: Fix ARMPKGSFX_THUMB value
allarch: Force TARGET_*FLAGS variable values
layer.conf: Add missing dependency for allarch package initramfs-framework
layer.conf: Add several allarch dependency exclusions
linux-dtb.inc: drop unused DTB_NAME variable from do_install
linux-firmware: rtl8192cx: Add latest available firmware
bitbake: toaster: Rework mimetype guessing to fix artifact downloads
toasterconf: remove master as a branch option from fido release
bash: Disable custom memory allocator
tzdata: reinstate changes reverted in 2014c upgrade
tzdata: update to 2015g
tzcode: update to 2015g
glibc: fix the big endian loader name on AArch64
fontcache: allow to pass extra parameters and environment to fc-cache
gettext_0.16.1: add -lrt and -lpthread to LDFLAGS for uclibc builds
gettext_0.16.1: remove obsolete uclibc specific patch
libiconv_1.11.1: fix LICENSE declaration, LGPL -> LGPLv2.0
libiconv_1.11.1: merge build and packaging fixes from libiconv_1.14
uclibc: backport upstream fix for SH4
oprofile: update --with-kernel option to find perf_event.h
init-install-efi.sh: Avoid /mnt/mtab creation if already present
systemd: fix networking setup when ipv6 modules are missing
systemd: add PACKAGECONFIG for qrencode
systemd: fix tmpfiles location when multilib in use
documentation: Updates to support a 1.8.1 YP manual release.
toaster-manual: Updated to remove 'master' as the default branch
ref-manual: Corrected example to modify extrauser root password example
bitbake: toaster: buildinfohelper Skip packages we have no build info about
ref-manual: Fixed typo in 1.6 migration section for BitBake
poky.ent: Added "findutils" and "which" packages to Fedora essentials.
ref-manual: Fix to QA error message.
ref-manual: Fixed grammar issue in the oelint.bbclass section.
ref-manual: Updated UNKNOW_CONFIGURE_WHITELIST variable
kernel-dev: Added kernel-devsrc information for building on target
poky.ent: Updated the YOCTO_RELEASE_NOTES variable
ref-manual: Updated the UNKNOWN_CONFIGURE_WHITELIST variable.
kernel-dev: Added new requirement for working with yocto-linux-custom.bb
ref-manual: Updated ARCHIVER_MODE and archiver.bbclass
ref-manual: Fixed "TBD" section cross-reference in KBUILD_DEFCONFIG
kernel-dev: Added new "in-tree" defconfig file section.
dev-manual: Added new section on "defconfig" files.
kernel-dev: Added detail to start of generating config file
documentation: Updated customization layers to point to XSL mirrors
ref-manual: Removed PRINC entry from the glossary
toaster-manual: Added detail for the URL to access Web Interface
ref-manual: Added new variable description UNKNOWN_CONFIGURE_WHITELIST
ref-manual: Updated EXTRA_IMAGE_FEATURES variable
dev-manual: Updates to kernel configuration in the "Kernel Modification Workflow" section
dev-manual: Added a link to reference defconfig files.
dev-manual: Minor edits to "Configuring the Kernel" section.
ref-manual: Added new glossary description for KBUILD_DEFCONFIG.
adt-manual: Updated the "Getting the Images" section for eclipse-debug
ref-manual: Added and updated variables to support calling functions
ref-manual: Added 'ptest' to the list of Distro Features
ref-manual: Updates to the "Speeding Up the Build" section
ref-manual, dev-manual: Added info about make race work-around
ref-manual: Formatting fixes and tag fix.
ref-manual: Updates to BB_NUMBER_THREADS and PARALLEL_MAKE
ref-manual: Added descriptions for four new variables
adt-manual: Emphasis on populate_sdk as bitbake method for building toolchain
dev-manual: Updated requirements for writing a new test.
ref-manual: Added new variable description for ARCHIVER_MODE

