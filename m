Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7061E00C77; Mon, 23 Jul 2018 11:59:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5358E00A04;
	Mon, 23 Jul 2018 11:59:20 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Jul 2018 11:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,394,1526367600"; d="scan'208";a="60018932"
Received: from rkowshik-mobl.amr.corp.intel.com ([10.254.2.237])
	by orsmga006.jf.intel.com with ESMTP; 23 Jul 2018 11:59:18 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <cd20304f-5fa1-ef6c-c12f-f0aef30d6753@intel.com>
Date: Mon, 23 Jul 2018 11:59:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.3.4 (pyro 17.0.4) Released
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
X-List-Received-Date: Mon, 23 Jul 2018 18:59:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.3.4 (pyro-17.0.4) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.4/poky-pyro-17.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.4/poky-pyro-17.0.4.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.4/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW25_-_2018-06-22-_Full_Test_Cycle_-_2.3.4_rc1

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


-------------------
yocto-2.3.4 Errata
---------------------

Release Name: eclipse-poky-neon-pyro-17.0.4
Branch: neon/pyro
Tag: neon/pyro-17.0.4
Hash: a5dbc01b96be55c4ec2f774af9996a8086e402ab
md5: db1ce34974dd42b1b65ccfe844bf4f8c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.4/eclipse-poky-neon-pyro-17.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.4/eclipse-poky-neon-pyro-17.0.4.tar.bz2

Release Name: eclipse-poky-oxygen-pyro-17.0.4
Branch: oxygen/pyro
Tag: oxygen/pyro-17.0.4
Hash: 020fc5814d2028654879356296b647002caf30b6
md5: 7753cfd309b8d9113a9106b5b5f380ff
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.4/eclipse-poky-oxygen-pyro-17.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.4/eclipse-poky-oxygen-pyro-17.0.4.tar.bz2

Release Name: meta-qt3-pyro-17.0.4
Branch: pyro
Tag: pyro-17.0.4
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 1e00f9b5cdcfecddc9387632485afb9b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.4/meta-qt3-pyro-17.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.4/meta-qt3-pyro-17.0.4.tar.bz2

Release Name: meta-qt4-pyro-17.0.4
Branch: pyro
Tag: pyro-17.0.4
Hash: 88989ae3abe98b30089e7518d3adabe990c40a10
md5: ae741cba79b1166b54b96757e90785cb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.4/meta-qt4-pyro-17.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.4/meta-qt4-pyro-17.0.4.tar.bz2

Release Name: poky-pyro-17.0.4
Branch: pyro
Tag: pyro-17.0.4
Hash: ebb42af2829edfca1a23c7a51a431c656ffc2090
md5: cc8378a3f0dc763bbc6f154e64d9d602
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.4/poky-pyro-17.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.4/poky-pyro-17.0.4.tar.bz2


----------------
 Known Issues
----------------
N/A

----------------
Security Fixes
----------------
libvorbis: CVE-2018-5146
libvorbis: CVE-2017-14632
libvorbis: CVE-2017-14633
libtirpc: Fix CVE-2017-8779
bluez5: fix out-of-bounds access in SDP server (CVE-2017-1000250)


----------------
Fixes
----------------
poky.ent: Updated release month variable to "June 2018"
documentation: Updated release date scheme to use variable.
documentation: Updated Manual Notes
build-appliance-image: Update to pyro head revision
poky: Update version to 2.3.4
ruby: Update to 2.4.4
ruby: fix typo in gmp PACKAGECONFIG option
ruby: remove spurious db build dependency
ruby: upgrade to 2.4.2
ruby: upgrade to 2.4.1
scripts/test-dependencies.sh: remove
sstate-diff-machines.sh: Replace MACHINE_ARCH only at the beginning and separated with dash
sstate-sysroot-cruft.sh: Extend the whitelist
libpng: update SRC_URI to use osl
mpfr: Update SRC_URI to use gnu
byacc: Fic SRC_URI to use yocto sources loc.
libpng: fix MIRRORS usage
neon: update SRC_URI
libpng: use SourceForge mirror
gdb: fix header ordering for TRAP_HWBKPT
glibc: add missing TRAP_BRANCH/TRAP_HWBKPT definitions
libmpc: fix SRC_URI
distcc: Change SRC_URI
e2fsprogs: fix compatibility with glibc 2.27
qemu: fix memfd_create with glibc 2.27
package_manager.py: Explicit complementary fail
sdk: streamline locale removal
cross-localedef-native: add way to specify which locale archive to write
package-manager: add install_glob()
package_manager: improve install_complementary
sdk: generate locale archive and remove packages
populate_sdk_base: depend on nativesdk-glibc-locale
populate_sdk: install UTF-8 locales in SDKs
sdk: only install locales if we're using glibc
sdk: install specified locales into SDK
glibc: relocate locale paths in nativesdk
glibc: don't use host locales in nativesdk
default-distrovars: don't rename locales for nativesdk
bitbake.conf: Add comm to HOSTTOOLS
world-broken.inc: blacklist portmap on musl
uninative: Add compatiblity version check
yocto-uninative: Upgrade to 1.8 version with glibc 2.27
unfs3: Fix libtirpc usage for unfs3-native version
unfs3: Fix build with musl
libtirpc: Extend to native and nativesdk recipes
libtirpc: stop dropping in NIS headers
libtirpc: upgrade to 1.0.2
libtirpc: Fix build error due to missing stdint.h> include
libtirpc: Enable des APIs for musl
libtirpc: Expose key_secretkey_is_set API
libtirpc: Backport fixes from 1.0.2rc3
gcc: Remove patch causing ICE on x86_64 valgrind compile
gcc6: Backport few more patches
gcc6: enable FL_LPAE flag for armv7ve cores
gcc7/gcc6: Fix unaligned STRD issue on ARM
gcc6: Upgrade to 6.4
gcc-6.3: Backport patch to fix ICE on ARM
gcc-runtime: Disable libitm on riscv
bitbake: providers: Fix determinism issue
openssh: Atomically generate host keys
linux-yocto-rt/4.1: update to include spectre fixes
linux-yocto/4.1: updated to include spectre fixes
linux-yocto-tiny/4.1: update with spectre fixes
linux-yocto-tiny/4.1: update to 4.1.49 plus meltdown
linux-yocto-rt/4.1: update to 4.1.49 plus meltdown
linux-yocto/4.1: update to 4.1.49 plus meltdown
bitbake.conf: add tools required by testimage to HOSTTOOLS conditionally
bitbake.conf: add ssh to HOSTTOOLS_NONFATAL
oeqa/runtime/buildcpio: Use our own mirror for source
qemurunner: Simplify binary data handling
oeqa: Clean up logger handling
oeqa/targetcontrol: Drop unused get_target_controller function
testimage: Pass the logger into OERuntimeTestContextExecutor.getTarget()
oeqa/qemurunner: Use logger.debug, not logger.info
qemurunner: Ensure logging handler is removed
sshcontrol.py: in copy_to() always use scp
qemurunner: fix bad indentation in serial login
qemurunner: print tail qemu log in case bootlog is empty
qemurunner.py: wait for PID to appear in procfs
qemurunner.py: refactor searching for QEMU PID
oeqa/qemurunner: Improve logging
qemurunner: Tweak qemu pid starting timeout code
ovmf-native: fix compile issue on new OS like FC27 and Ubuntu 17
openssl: Upgrade from 1.0.2k to 1.0.2n
p11-kit: take source code from official git
package_rpm.bbclass: Fix matching of architecture independent packages
image_types_wic.bbclass: Ensure '-c image_wic' works
kernel-yocto/4.9: update to v4.9.82
distutils-base.bbclass: Do not use -pie with hardening
python3-nose: rename ${bindir}/nosetests into ${bindir}/nosetests3
grub: Fix device mapper dependency
linux-firmware: Add reference to iwlwifi-8000C firmware
python3-setuptools: extend to nativesdk
tzdata: update to 2018c
tzcode: update to 2018c
tzdata: update 2017c
tzcode-native: update to 2017c
linux-yocto/4.9: update to v4.9.78
linux-yocto/4.4: update to v4.4.113
linux-yocto/4.4: update to 4.4.99
linux-yocto/4.9: fix aufs build
linux-yocto/4.9: update to v4.9.71
linux-yocto/4.x: configuration updates
linux-yocto/4.9: update to v4.9.65
linux-yocto/4.9: update to v4.9.61
linux-yocto/4.9: update to v4.9.57
linux-yocto/4.4: update to v4.4.93
linux-yocto-tiny: Enable qemux86-64 on linux-yocto-tiny 4.10
linux-yocto-tiny: Enable qemux86-64 on linux-yocto-tiny 4.9
linux-yocto-tiny: Enable qemux86-64 on linux-yocto-tiny 4.4
pax-utils: update SRC_URI
documentation: Updated manual revision table for 2.3.4 release date
dev-manual: Fixed variable link to DEFAULTTUNE variable
documentation: Updates to support a 2.3.4 point release
ref-manual, yocto-project-qs, poky.ent: Fixed CentOS package
ref-manual: Updated Note to use bullet forms
populate_sdk_ext: Set cleandirs correctly
lib/oe/package_manager/sdk: Ensure do_populate_sdk_ext and do_populate_sdk repos don't conflict
python3-native: Add python3-misc-native to RPROVIDES
insane: consider INSANE_SKIP without package-specifier too
linux-firmware: Bump to bf04291 revision
linux-firmware: Split out the QAT firmware
linux-firmware: make i.MX SDMA split complete
linux-firmware: Split i.MX SDMA firmwares
linux-firmware: package Broadcom BCM43362 firmware
linux-firmware: bump to latest linux-firmware git revision
linux-firmware: package Marvell PCIe WiFi firmwares
linux-firmware: package ibt-firmware
linux-firmware: package iwlfifi-3160-[10-17] firmware
linux-firmware: add support for mt7601u WiFi chip
linux-firmware: package Qualcomm QCA firmware
linux-firmware: enable netronome firmware
image: Expand PV to avoid AUTOREV parsing failures
bitbake: bitbake-user-manual: Fixed porno hack for hello world example
webkitgtk: update to 2.18.5 (includes Spectre mitigations; see commit description)
libunwind: Disable documentation explicitly
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


