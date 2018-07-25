Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4112BE00CE7; Wed, 25 Jul 2018 14:11:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 942BAE00CC8;
	Wed, 25 Jul 2018 14:11:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jul 2018 14:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,402,1526367600"; d="scan'208";a="57166062"
Received: from kkkarthi-mobl.amr.corp.intel.com ([10.254.99.63])
	by fmsmga007.fm.intel.com with ESMTP; 25 Jul 2018 14:11:42 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <a73ddecc-38cd-edaa-52c5-8ebf097171d8@intel.com>
Date: Wed, 25 Jul 2018 14:11:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.2.4 (morty 16.0.4) Released
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
X-List-Received-Date: Wed, 25 Jul 2018 21:11:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.2.4 (morty-16.0.4) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.4/poky-morty-16.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.4/poky-morty-16.0.4.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.4/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW28_-_2018-07-13_-_Full_Test_Cycle_2.2.4_rc1

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.2.4 Errata
--------------------

Release Name: eclipse-poky-neon-morty-16.0.4
Branch: neon/morty
Tag: neon/morty-16.0.4
Hash: a5dbc01b96be55c4ec2f774af9996a8086e402ab
md5: 729602a68642b33c340209e02caad8e2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.4/eclipse-poky-neon-morty-16.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.4/eclipse-poky-neon-morty-16.0.4.tar.bz2

Release Name: eclipse-poky-oxygen-morty-16.0.4
Branch: oxygen/morty
Tag: oxygen/morty-16.0.4
Hash: 020fc5814d2028654879356296b647002caf30b6
md5: f247ab6afc58ab04cdac5edce1149f7f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.4/eclipse-poky-oxygen-morty-16.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.4/eclipse-poky-oxygen-morty-16.0.4.tar.bz2

Release Name: meta-qt3-morty-16.0.4
Branch: morty
Tag: morty-16.0.4
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: d3fcb000c74c412cc74afc39e3f0e365
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.4/meta-qt3-morty-16.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.4/meta-qt3-morty-16.0.4.tar.bz2

Release Name: meta-qt4-morty-16.0.4
Branch: morty
Tag: morty-16.0.4
Hash: f389368dc86e745df14cab9eeb9a94bc02bd273e
md5: 22f8f65ac57f88525c37a5be13e0f6ab
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.4/meta-qt4-morty-16.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.4/meta-qt4-morty-16.0.4.tar.bz2

Release Name: poky-morty-16.0.4
Branch: morty
Tag: morty-16.0.4
Hash: df76669bdd70aa0d903c4211dde731221c7e756d
md5: c3c59465832e77ea79fe7aa9f9bd0742
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.4/poky-morty-16.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.4/poky-morty-16.0.4.tar.bz2


---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
libvorbis: CVE-2018-5146
libvorbis: CVE-2017-14632
libvorbis: CVE-2017-14633
libtirpc: Fix CVE-2017-8779
gcc: Fix CVE-2016-6131 in libiberty
glib.inc: set CVE_PRODUCT to glib
glibc-common.inc: set CVE_PRODUCT to glibc
sqlite3.inc: set CVE_PRODUCT to sqlite
python.inc: set CVE_PRODUCT to python
icu.inc: set CVE_PRODUCT to international_components_for_unicode
bluez5.inc: set CVE_PRODUCT to bluez
acpid.inc: set CVE_PRODUCT to acpid2
binutils: CVE-2017-15938
binutils: CVE-2017-15024
binutils: CVE-2017-14729
binutils: CVE-2017-9955
binutils: CVE-2017-9954
binutils: CVE-2017-9745
binutils: CVE-2017-9756
binutils: CVE-2017-9755
binutils: CVE-2017-9753_and_CVE-2017-9754
binutils: CVE-2017-9752
binutils: CVE-2017-9750
binutils: CVE-2017-9747
binutils: CVE-2017-9748
binutils: CVE-2017-9746
binutils: CVE-2017-9749
binutils: CVE-2017-9751
binutils: CVE-2017-7299
binutils: CVE-2017-8398
binutils: CVE-2017-8394
binutils: CVE-2017-8421
binutils: CVE-2017-8396
binutils: CVE-2017-8397
binutils: CVE-2017-8395
binutils: CVE-2017-8393
binutils: CVE-2017-7304
binutils: CVE-2017-7303
binutils: CVE-2017-7302
binutils: CVE-2017-7301
binutils: CVE-2017-7227
binutils: CVE-2017-7225
binutils: CVE-2017-7224
binutils: CVE-2017-7223
binutils: CVE-2017-12450_12452_12453_12454_12456
binutils: CVE-2017-12451
binutils: CVE-2017-12449, CVE-2017_12455, CVE-2017-12457, CVE-2017-12458, CVE-2017-12459
binutils: CVE-2017-12448
binutils: CVE-2017-7226
binutils: Security Fix CVE-2017-9041
binutils: Security fix for CVE-2017-9040 and 2017-9042
binutils: Security Fix CVE-2017-9039
binutis: Security fix CVE-2017-9038
binutis: Security fix CVE-2017-7614


---------------
Fixes
---------------
documentation: Updated manual revision tables with 2.2.4 release date
documentation: Updated title page notes.
build-appliance-image: Update to morty head revision
poky: Bump distro version to 2.2.4
ruby: Update to 2.4.4
ruby: fix typo in gmp PACKAGECONFIG option
ruby: remove spurious db build dependency
test-dependencies.sh: remove /sysroots* between component builds
sstate-diff-machines.sh: Replace MACHINE_ARCH only at the beginning and separated with dash
sstate-sysroot-cruft.sh: Extend the whitelist
byacc: Fic SRC_URI to use yocto sources loc.
oe-selftest: no need to parse gpg output to determine the name of the signing key
libmpc: fix SRC_URI
sanity.bbclass: Improved error message
package_manager: fix install_glob to use morty sdk pkgdir
glibc-package: Avoid race sstate races with do_stash_locale
image/packagegroup/populate_sdk: Drop do_populate_sysroot task properly
toolchain-shar-extract: compare SDK and host gcc versions
populate_sdk_base.bbclass: add documentation packages to SDKs if api-documentation is in DISTRO_FEATURES
sdk: streamline locale removal
sdk: generate locale archive and remove packages
distcc: Change SRC_URI
buildhistory: fix latest_srcrev in the common case
selftest/signing: add --batch to gpg invocation when importing keys
grub-efi: fix build failure
lib/oe/terminal.py: use an absolute path to execute oe-gnome-terminal-phonehome
e2fsprogs: fix compatibility with glibc 2.27
qemu: fix memfd_create with glibc 2.27
libc-package.bbclass: split binary localedata even more if asked to
glibc: Separate locale files to their own sstate task
glibc-locale.inc: avoid duplicate packages
glibc-locale.inc: fix typo in comment
archiver: avoid archiving source for glibc-locale
cross-localedef-native: add way to specify which locale archive to write
populate_sdk_base: depend on nativesdk-glibc-locale
populate_sdk: install UTF-8 locales in SDKs
sdk: only install locales if we're using glibc
sdk: install specified locales into SDK
package-manager: add install_glob()
package_manager: improve install_complementary
package_manager: flush installed_pkgs file before oe-pkgdata-util uses it
package_manager: don't race on a file when installing complementary packages
lib/oe/package_manager/sdk: Ensure do_populate_sdk_ext and do_populate_sdk repos don't conflict
lib/oe/package_manager: bail if createrepo can't be found
package_manager: remove strings and migrate to direct arrays
lib/oe/package_manager: .deb pre/postinst args
glibc: relocate locale paths in nativesdk
glibc: don't use host locales in nativesdk
default-distrovars: don't rename locales for nativesdk
linux-firmware: Add reference to iwlwifi-8000C firmware
linux-yocto-rt/4.1: update to include spectre fixes
linux-yocto/4.1: updated to include spectre fixes
linux-yocto-tiny/4.1: update with spectre fixes
linux-yocto-tiny/4.1: update to 4.1.49 plus meltdown
linux-yocto-rt/4.1: update to 4.1.49 plus meltdown
linux-yocto/4.1: update to 4.1.49 plus meltdown
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
gcc6: Fix unaligned STRD issue on ARM
gcc6: Upgrade to 6.4
gcc: Fix libssh_nonshared linker specs for ppc/musl
gcc: Link libssp_nonshared.a only on musl targets
gcc-runtime: Disable libitm on riscv
gcc-6.3: Backport patch to fix ICE on ARM
gcc-6.3.inc: Use ucontext_t not struct ucontext.
gcc: Remove unused patch
gcc-6: Add fix for missing no-PIE flags
gcc-6: Sync gcc stddef.h with musl stddef.h
gcc6: Upgrade to 6.3.0
buildstats.bbclass: Avoid index exception in /proc/PID/io parsing
gnutls_3.5.3.bb: Fix native build on distro with kernel < 3.4.17
bitbake: providers: Fix determinism issue
p11-kit: take source code from official git
ruby: update to 2.4.3
insane: consider INSANE_SKIP without package-specifier too
portmaper: checkuri fails.
gnu-efi: Fix build with gcc7
linux-yocto/4.4: update to v4.4.113
linux-yocto/4.4: update to 4.4.99
linux-yocto/4.4: update to v4.4.93
tzdata: update to 2018c
tzcode: update to 2018c
tzdata: update 2017c
tzcode-native: update to 2017c
tzcode-native: quote ${CC}
tzdata: Install zone1970.tab
tzdata: update to 2017b
tzcode: update to 2017b
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
linux-firmware: Remove iwlwifi-8000C-19 SRC_URI
linux-firmware: Avoid a dependency on python-core
linux-firmware: Fix build failure when update SRCREV to latest HEAD
linux-firmware: Set the license for carl9170 to GPLv2
linux-firmware: update to revision a4dde74b
firmware: use ${nonarch_base_libdir} for firmware installation.
firmware: use ${nonarch_base_libdir} for firmware installation.
linux-firmware: Add Marvell sd88xx WiFi firmwares
linux-firmware: relocate ath9k_htc blobs to correct package
Revert "linux-firmware: Modify firmware installation path"
linux-firmware: Modify firmware installation path
linux-firmware: remove alternatives for brcmfmac-stdio.bin
linux-firmware: Split out Realtek chipsets rtl8188 rtl8723 rtl8821
pax-utils: update SRC_URI
documentation: Updated manual revision table for 2.2.4 release date
dev-manual: Fixed variable link to DEFAULTTUNE variable
documentation: Prepared for a 2.2.4 point release
ref-manual, yocto-project-qs, poky.ent: Fixed CentOS package
populate_sdk_ext: Set cleandirs correctly
lib/oe/package_manager/sdk: Ensure do_populate_sdk_ext and do_populate_sdk repos don't conflict
image: Fix previous broken commit to set expand parameter to getVar
image: Expand PV to avoid AUTOREV parsing failures
bitbake: bitbake-user-manual: Fixed porno hack for hello world example
libunwind: Disable documentation explicitly
webkitgtk: update to 2.18.5 (includes Spectre mitigations; see commit description)
ruby: update to 2.4.0
cmake: avoid configure failures if CFLAGS contains -Wstrict-prototypes
Fix seg-fault in the linker when examining a corrupt binary.
local.conf.sample: Weakly set BB_DISKMON_DIRS
bitbake: toaster: remove cut and paste cruft
bitbake: toaster: move sqlite database to TOASTER_DIR
bitbake: toaster: bin/toaster whitelist TOASTER_DIR
bitbake: fetch2: Do not fail to create symbolic links if they already exist
bitbake: bitbake-layers: fix layerindex-fetch for Python 3

