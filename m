Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E951E00D91; Mon, 12 Mar 2018 16:37:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31768E009CF;
	Mon, 12 Mar 2018 16:37:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Mar 2018 16:37:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,463,1515484800"; d="scan'208";a="25086514"
Received: from kschmid-mobl.amr.corp.intel.com ([10.252.129.13])
	by orsmga006.jf.intel.com with ESMTP; 12 Mar 2018 16:37:06 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <a7be3069-9890-6b80-5a9b-914b9f464906@intel.com>
Date: Mon, 12 Mar 2018 16:37:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.4.2 (rocko-18.0.2) Released
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
X-List-Received-Date: Mon, 12 Mar 2018 23:37:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.4.2 (rocko-18.0.2) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW10_-_2018-03-05-_Full_Test_Cycle_-_2.4.2_rc2

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.4.2 Errata
------------------

Release Name: eclipse-poky-neon-rocko-18.0.2
Branch: neon/rocko
Tag: neon/rocko-18.0.2
Hash: a5dbc01b96be55c4ec2f774af9996a8086e402ab
md5: d2a5c651c5680ee3cf4d5f757787d580
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/eclipse-poky-neon-rocko-18.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/eclipse-poky-neon-rocko-18.0.2.tar.bz2

Release Name: eclipse-poky-oxygen-rocko-18.0.2
Branch: oxygen/rocko
Tag: oxygen/rocko-18.0.2
Hash: 020fc5814d2028654879356296b647002caf30b6
md5: e646e74bbee029b2545a558e097a5c84
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/eclipse-poky-oxygen-rocko-18.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/eclipse-poky-oxygen-rocko-18.0.2.tar.bz2

Release Name: meta-qt3-rocko-18.0.2
Branch: rocko
Tag: rocko-18.0.2
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 4686bce6110b1c174423d04904e5b1ce
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/meta-qt3-rocko-18.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/meta-qt3-rocko-18.0.2.tar.bz2

Release Name: meta-qt4-rocko-18.0.2
Branch: rocko
Tag: rocko-18.0.2
Hash: f313dbee2ac3d5fcc9801407947d3cb6cfb90b5d
md5: 21ee0914b20dcdf9c665c231d3fd93c4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/meta-qt4-rocko-18.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/meta-qt4-rocko-18.0.2.tar.bz2

Release Name: poky-rocko-18.0.2
Branch: rocko
Tag: rocko-18.0.2
Hash: 342fbd6a3e57021c8e28b124b3adb241936f3d9d
md5: 375ccb80a87771a5664ab170b1ae9d7d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2


---------------
 Known Issues
---------------
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12587

Runtime providers were sometimes changing order during builds, resulting in non-deterministic build results. 

Example:

DEBUG: providers for lib32-initd-functions are: ['lib32-lsbinitscripts', 'lib32-initscripts']
    or
DEBUG: providers for lib32-initd-functions are: ['lib32-initscripts', 'lib32-lsbinitscripts']

This can lead to test failures.

This is fixed with Bitbake rev: 223a0f68530571d2280f526bddbc718fa803a3dc
This change ensures we don't rely on the random order of dictionaries in
memory and act deterministically. 

---------------
Security Fixes
---------------
glibc: Security fix CVE-2017-17426
glibc: Security Fix CVE-2017-16997
glibc: Security fix CVE-2017-15671
glibc: Security fix CVE-2017-15670


---------------
Fixes
---------------
glibc: Update to tip of 2.26
glibc: Adapt do_install_append_aarch64() for usrmerge
libtirpc: refresh patches
libtirpc: stop dropping in NIS headers
libunwind: Fix multilib header conflict - libunwind.h
libmpc: fix SRC_URI
siteinfo: add aarch64_illp32 decode
update-rc.d: QA regression.
webkitgtk_2.18.6.bb: Fix configure failure for aarch64 build
eglinfo-fb: Pass -DMESA_EGL_NO_X11_HEADERS to cxxflags
openssl: remove patch from 1.0.2m left behind after update to 1.0.2n
p11-kit: take source code from official git
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
linux-yocto: update genericx86* SRCREVs for v4.4
linux-yocto: update genericx86* SRCREVs for v4.9
linux-yocto: update genericx86* SRCREVs for v4.12
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
linux-yocto/4.12: fix qemuarm64 boot failure
kernel-yocto/4.9: update to v4.9.82
linux-yocto/4.12: update to v4.12.20
libc6: improve reproducibility
musl: Disable thumb1 ISA
musl: prevent errors if do_install is run more than once
musl: Update to 1.1.18
musl: Update to latest
gcc-7.3: Drop upstreamed musl cpuinfo patch
packagegroup-core-tools-profile: disable valgrind on armeb
webkitgtk: update to 2.18.6
linux-yocto/4.12: pinctrl backports
package_rpm.bbclass: Fix matching of architecture independent packages
openssl: update to 1.0.2n
openssl-ptest: improve reproducibility
build-appliance-image: Update to rocko head revision
poky.conf: Bump version for 2.4.2 rocko release
documentation: Updated Manual Revision Table for 2.4.2 Release Date
yocto-project-qs: Fixed spelling error in Welcome section
dev-manual: Fixed variable link to DEFAULTTUNE variable
ref-manual: Removed Ubuntu 14.04 from Supported Linux Distribution
documentation: Prepared files for a 2.4.2 point release
ref-manual, yocto-project-qs, poky.ent: Fixed CentOS package
mega-manual: Updated sdk-manual figure used
ref-manual: Updated Note to use bullet form and fixed link to sdk-manual
ref-manual, yocto-project-qs: Fixed targets for sdk-manual links
mega-manual.sed: Fixed string for sdk-manual links
net-tools: change a '=' to '+='
kernel-uboot: support Image kernel type for arm64
libunwind: Fix PACKAGECONFIG option typo
glibc-locale.inc: avoid duplicate packages
tzdata: update to 2018c
tzcode: update to 2018c
grub: Move grub-editenv packaging to grub2.inc
grub-efi: Add loadenv and test as default built-in
grub-efi: Rework GRUB_BUILTIN variable as it is too long
grub-efi: Fix DEPENDS
libarchive: Enable xz and lzo by default
libepoxy: Fix build break for EGL_CAST dependency
image_types_wic.bbclass: Ensure '-c image_wic' works
uninative.bbclass: Fix broken symlink issue
linux-yocto/4.12: update to v4.12.19
linux-yocto/4.9: update to v4.9.78
linux-yocto/4.4: update to v4.4.113
linux-yocto/4.12: iwlwifi and pci id backports
kernel-yocto: make SRC_URI defconfig removal more specific
linux-yocto/4.12: drm & mips fixes
linux-yocto/4.12: coffeeLake-s graphics and audio support
linux-yocto/4.12: CQM and rdt backports
linux-yocto/4.4: update to 4.4.99
linux-yocto/4.9: fix aufs build
linux-yocto/4.9: update to v4.9.71
gcc: Upgrade 7.2 -> 7.3
lz4: remove ptest changes
lz4: fix upstream version check
glibc: fix C++ compile failures related to 'assert'
populate_sdk_ext: Set cleandirs correctly
lib/oe/package_manager/sdk: Ensure do_populate_sdk_ext and do_populate_sdk repos don't conflict
image: Expand PV to avoid AUTOREV parsing failures
webkitgtk: update to 2.18.5 (includes Spectre mitigations; see commit description)
pax-utils: update SRC_URI
linux-firmware: Bump to bf04291 revision
linux-firmware: Split out the QAT firmware
libunwind: Disable documentation explicitly
oeqa/runtime/buildcpio: Use our own mirror for source
binutils: Convert SRC_URI and SRCREV to weak defines
binutils: update to 2.29.1
acpica: fix build with x32
boost: fix build with x32 and musl
runqemu: Add workaround for APIC hang on pre 4.15 kernels on qemux86
glib-2.0: Add python3 modules required by gdbus-codegen
lib/oe/patch: add missing import
bmap-tools: fix RDEPENDS and update SRC_URI
rm_work: remove debugging statements
kernel-fitimage: Fix bad image type replacement for aarch64
image-live.bbclass: add MLPREFIX to core-image-minimal-initramfs
image-live.bbclass: print warn when initramfs is invalid
wic: Fix a path to a psuedo state directory (PSEUDO_LOCALSTATEDIR).
waf.bbclass: explicitly pass bindir and libdir if supported
kernel.bbclass: Fix do_sizecheck behaviour
image_types: btrfs use sparse file creation
rm_work: Handle race with -inital tasks
linux-yocto/4.12: CQM and kmemleak fixes
linux-yocto/4.12: common-pc*: enable X2APIC by default
linux-yocto/4.12: update to v.4.12.18
linux-yocto/4.12: bug fixes and feature backports
linux-yocto/4.x: configuration updates
linux-yocto/4.12: ipv4 stable backport and config changes
linux-yocto/4.12: bug fixes and VRF feature addition
linux-yocto/4.12: update to v4.12.16
systemd: fix segfault when terminating systemd --test
recipetool: create: fix conflict between SRCREV and tag
libxslt: use HTTP instead of FTP in SRC_URI
ovmf: Fix build failure for PARALLEL_MAKE with no space
kernel-yocto: ensure that only a single defconfig is processed
kernel-yocto: Stop the build if defconfig is missing
kernel-yocto: ensure sccs variable is set when using KBUILD_DEFCONFIG
linux-yocto/4.9: update to v4.9.65
linux-yocto/4.12: iwlwifi calltrace fixes and configuration warning cleanups
linux-yocto/4.9: update to v4.9.61
rootfs-postcommands.bbclass: ensure that rootfs gets mounted ro
connman.inc: do not check IMAGE_FEATURES
templates/layer.conf: remove backslash to enable bbappend setting
systemd: allow dots in arguments to template units
package_manager: force dnf to refresh the cache
meta-selftest: fix upstream version checks for devtool test recipes
mtd-utils: fix flash_eraseall installation conflict
wpa-supplicant: add a missing WPA_COMMON_CTRL_IFACE definition
update-alternatives.bbclass: refuse to manage SysV init scripts
Revert "classes: Fix alternatives and rc.d ordering"
initscripts: rrecommend initscripts-functions
lsbinitscripts: don't use update-alternatives
initscripts: don't use update-alternatives
sysklogd: don't use update-alternatives
install*.sh: add short sleep after parted commands
init-install: fix grub-install command
initramfs-module-install: Remove allarch and FILESEXTRAPATHS
initramfs-framework: add install module
initramfs-module-install-efi: update summary
initramfs-module-install-efi: point to original copy and delete new file
wic: support filesystem label for rawcopy
openssl: fix runtime errors with Thumb2 when using binutils 2.29
openssl: Upgrade 1.1.0f -> 1.1.0g
openssl10: fix runtime errors with Thumb2 when using binutils 2.29
openssl10: Upgrade 1.0.2l -> 1.0.2m
python[3]-setuptools: inherit setuptools
local.conf.sample: Weakly set BB_DISKMON_DIRS
documentation: Prepped manual set for a 2.4.1 point release
bitbake: toaster: add 'nobuild' option to Toaster
bitbake: toaster: landing page show cmdline capture
bitbake: toaster: enable custom env support for shell calls
bitbake: toaster: some recipe events do not include packages
bitbake: toaster: update Toaster for Django 1.11
bitbake: toaster: unset BBPATH before starting bbserver for backwards compatibility
populate_sdk_ext: Use prebuilt uninative tarball
makefile: Removed "yocto-environment.png" from tar list of mega-manual
ref-manual: Fixed redundant link for "build system"
ref-manual: Added new terms to Yocto Project Terms section.
dev-manual: Updated bitbake-layers overview section.
ref-manual: 2.4 Migration Revisions
build-appliance: Fix branch name

