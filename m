Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BD5EE00E46; Thu, 11 Jan 2018 17:04:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FCEBE0056D;
	Thu, 11 Jan 2018 17:04:35 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jan 2018 17:04:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,346,1511856000"; d="scan'208";a="10601227"
Received: from maggyibr-mobl.amr.corp.intel.com ([10.255.66.37])
	by orsmga006.jf.intel.com with ESMTP; 11 Jan 2018 17:04:34 -0800
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <aeafceb8-e84b-a52f-299c-a73240346a1f@intel.com>
Date: Thu, 11 Jan 2018 17:04:33 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.3.3 (pyro 17.0.3) Released
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
X-List-Received-Date: Fri, 12 Jan 2018 01:04:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.3.3 (pyro-17.0.3) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.3/poky-pyro-17.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.3/poky-pyro-17.0.3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.3/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-20-_Full_Test_Cycle_-_2.3.3_rc1

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.3.3 Errata
------------------

Release Name:  eclipse-poky-neon-pyro-17.0.3
Branch: pyro
Tag: pyro-17.0.3
Hash:  83e0083ef3a71e10039ace7d18057dddc154408b
md5: d6720856accbf2352f2af096a623b916  eclipse-poky-neon-pyro-17.0.3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.3/eclipse-poky-neon-pyro-17.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.3/eclipse-poky-neon-pyro-17.0.3.tar.bz2

Release Name:  eclipse-poky-oxygen-pyro-17.0.3
Branch: pyro
Tag: pyro-17.0.3
Hash:  126e707a6de212feeaaf093edc170aaa74192ce7
md5: 76fafcbc3e6652056a12de050652143d  eclipse-poky-oxygen-pyro-17.0.3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.3/eclipse-poky-oxygen-pyro-17.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.3/eclipse-poky-oxygen-pyro-17.0.3.tar.bz2

Release Name:  meta-qt3-pyro-17.0.3
Branch: pyro
Tag: pyro-17.0.3
Hash:  f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 9fc77e78dda20002c522f4bc17fab3a5  meta-qt3-pyro-17.0.3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.3/meta-qt3-pyro-17.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.3/meta-qt3-pyro-17.0.3.tar.bz2

Release Name:  meta-qt4-pyro-17.0.3
Branch: pyro
Tag: pyro-17.0.3
Hash:  88989ae3abe98b30089e7518d3adabe990c40a10
md5: e32fa92d28944161e168ed1c4b4e73cf  meta-qt4-pyro-17.0.3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.3/meta-qt4-pyro-17.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.3/meta-qt4-pyro-17.0.3.tar.bz2

Release Name:  poky-pyro-17.0.3
Branch: pyro
Tag: pyro-17.0.3
Hash:  022df4653576c72752156bef8fda0e1aa46733d2
md5: e9f90fc73e26ba613a78a755d600029d  poky-pyro-17.0.3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.3/poky-pyro-17.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.3/poky-pyro-17.0.3.tar.bz2

---------------
 Known Issues
---------------
N/A

--------------
Security Fixes
--------------
bluez5: fix out-of-bounds access in SDP server (CVE-2017-1000250)
binutls: Security fixes for CVE-2017-9955, CVE-2017-9954, CVE-2017-9756, CVE-2017-9755, CVE-2017-9753, CVE-2017-9752, CVE-2017-9751, CVE-2017-9750, CVE-2017-9749, CVE-2017-9748, CVE-2017-9747, CVE-2017-9746, CVE-2017-9745, CVE-2017-9744, CVE-2017-9742, CVE-2017-9040, CVE-2017-9042, CVE-2017-9039, CVE-2017-9038, CVE-2017-9044, CVE-2017-8421, CVE-2017-8398, CVE-2017-8396, CVE-2017-8397, CVE-2017-8395, CVE-2017-8394, CVE-2017-8393, CVE-2017-7614, CVE-2017-7223
ruby: Security fixed for CVE-2017-14064
curl: Security fix for CVE-2017-1000101 and CVE-2017-1000100
tiff: Security fixes for CVE-2017-7593, CVE-2017-7602, CVE-2017-7601, CVE-2017-7598, CVE-2017-7596, CVE-2017-7595, CVE-2017-7594, CVE-2017-7592, CVE-2016-10270, CVE-2016-10269, CVE-2016-10267, CVE-2016-10266, CVE-2016-10268, CVE-2016-10093, CVE-2016-10271
linuux-yocto/4.1: update to 4.1.43 plus bluetooth CVE-2017-1000251
linux-yocto/4.9: bluetooth: CVE-2017-1000251
linux-yocto/4.4: bluetooth: CVE-2017-1000251
linux-yocto/4.10: bluetooth: CVE-2017-1000251

------
Fixes
------
ovmf: Fix build with gcc7
portmaper: checkuri fails.
linux-firmware: Remove iwlwifi-8000C-19 SRC_URI
diffstat: use HTTP mirror for SRC_URI
liburi-perl: update SRC_URI to yoctoproject mirror
v86d: take tarball from debian
staging.bbclass: handle postinst-useradd-* fixmes
runqemu: Add workaround for APIC hang on pre 4.15 kernels on qemux86
cross.bbclass: Remove usage of host flags for cross-compilation
archiver: preserve sysroot paths in configured mode
archiver: avoid archiving source for glibc-locale
archiver.bbclass: adapt do_unpack_and_patch to RSS
archiver.bbclass: fix do_ar_original error for matchbox-desktop
archiver.bbclass: do not cause kernel rebuilds
archiver.bbclass: various fixes for original+diff mode
archiver.bbclass: enhance do_ar_recipe task signature
archiver: Escape recipe name in regex
classes: drop image dependencies on TOPDIR variable
image.bbclass: drop initramfs bundle related code
local.conf.sample: Weakly set BB_DISKMON_DIRS
documenation: Prepared docs for a 2.3.3 point release
build-appliance-image: Update to pyro head revision
poky: Update version to 2.3.3
cross-localedef-native: Include locale_t.h
glibc_2.25: fix building for x86 with -Os (or -fno-omit-frame-pointer)
weston: add patch to set pitch correctly for subsampled textures
lib/oe/terminal.py: use an absolute path to execute oe-gnome-terminal-phonehome
gcc: Use libssp_nonshared linker specs only for ppc/musl
dpkg: Add missing RDEPENDS for dpkg-perl
dpkg: Fix perl modules by moving them to the versioned perl directory
cpan-base.bbclass: Move PERLVERSION and get_perl_version to a new file
populate_sdk_ext: Use prebuilt uninative tarball
bitbake: toaster: allow dots in user path names
bitbake: toaster: reserve HEAD from imported layers
valgrind: enable on mips soft-float
oeqa/sdk: Replace buildiptables for buildlzip tests
oeqa/runtime: Replace buildiptables for buildlzip on runtime tests
image_types.bbclass: Make u-boot signed images more versatile
openssh: Fix key generation with systemd
json-c: backport patch to fix gcc7 compilation
useradd-staticids: don't create username-group if gid is specified
curl: enable threaded resolver
kernel-fitimage: support MIPS (compressed)
kernel-uboot: support compressed kernel on MIPS
kernel-uimage: optimise UBOOT_ENTRYSYMBOL support
kernel-fitimage: unbreak UBOOT_ENTRYSYMBOL support
kernel-fitimage: sanitize dtb section name (unbreak MIPS)
kernel-uimage.bbclass: Fix up generation of uImage from vmlinux
ca-certificates: Fix postinst dependency issues
debianutils: Add a native version (for run-parts)
copyleft_filter.bbclass: restore possiblity to filter on type
selftest/archiver: only execute deploy_archives task
selftest/archiver: add tests for recipe type filtering
openssh: allow to override OpenSSL HostKeys when read-only-rootfs
busybox: add backported patch to support iproute 'scope'
busybox: fix a linking issue
gdb: fix gdbserver not working in musl/mips context
oe-pkgdata-util: package-info: Allow extra variables to be displayed
binutils: apply mingw fix only for binutils-cross-canadian
oe-build-perf-report: use correct x-axis max value in html charts
oe-build-perf-report: allow slashes in {branch} field in tag names
oe-build-perf-report: accept parenthesis in tag names
oeqa/selftest/recipetool: use stable tarball for recipetool create test
wic: accept '-' in bitbake variables
useradd: don't override pseudo environment
bitbake: tests/fetch: handle network failures gracefully
bitbake: bitbake: Fix return value checks from subprocess.call()'s
bitbake: Replace deprecated git branch parameter "--set-upstream"
goarch.bbclass: Replace logic for setting GOARM
wpa_supplicant: fix WPA2 key replay security bug
bitbake: toaster/highlight.pack.js: Fix corrupted file
bitbake: toaster: Remove prettify
image.bbclass: Sorted ctypes to avoid basehash error
bitbake: cooker: add BB_CMDLINE to enable access to UI command line with memres
linux-yocto/4.1: generix86* bsp fix perf issue with gcc >=7
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
meta-yocto-bsp: bump 4.1 to latest linux stable kernel for the non-x86 BSPs
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.10
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
gcc-6.3.inc: Use ucontext_t not struct ucontext.
libproxy: use stable download URL
linux-yocto/4.9: update to v4.9.49
linux-yocto/4.4: update to v4.4.87
(PRE)MIRRORS: fix pattern for npm:// without slash
waffle: fix REQUIRED_DISTRO_FEATURES and PACKAGECONFIG virtual/libgl dependencies
rootfs-postcommands: add test for unsatisfied RRECOMMENDS
rootfs-postcommands: remove empty line
rootfs-postcommands.bbclass: Filter out dangling symlinks in ssh_allow_empty_password()
alsa-utils: Do not hardcode path to /lib/udev
package_rpm.bbclass: disable generation of .build-id links
package_rpm.bbclass: use multithreaded xz compression
rpm: allow arch-dependent binaries in noarch packages
bitbake: cooker.py: Fix layer priority processing
bitbake: toaster: recipe links broken for default layers
bitbake: toaster: edit column list not sorted
bitbake: toaster: set default pokydirname if no external layers
bitbake: toaster: debug message for lists layers missing separators
bitbake: toaster: Order column in Tasks selectable
bitbake: toaster: display error when the fstype select is empty
bitbake: cooker: ensure monkey-patching in collect_bbfiles() gets undone on error
bitbake: cooker: fix watching empty directories
bitbake: cooker: Track directories searched for bbappend/bb files
bitbake.conf: add bzr to HOSTTOOLS_NONFATAL
glibc-locale: add runtime dependency on glibc

