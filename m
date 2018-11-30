Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9154E00C7E; Fri, 30 Nov 2018 15:39:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B9FE00BFD;
	Fri, 30 Nov 2018 15:39:06 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Nov 2018 15:39:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,300,1539673200"; d="scan'208";a="294387941"
Received: from kkubista-mobl1.amr.corp.intel.com ([10.251.149.166])
	by fmsmga006.fm.intel.com with ESMTP; 30 Nov 2018 15:39:02 -0800
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <98483ef1-19ba-c23a-4f8b-d67feba6ebad@intel.com>
Date: Fri, 30 Nov 2018 15:39:01 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.4.4 (rocko-18.0.4) Released
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
X-List-Received-Date: Fri, 30 Nov 2018 23:39:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.4.4 (rocko-18.0.4) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/poky-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/poky-rocko-18.0.4.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW46_-_2018-11-14_-_Full_Test_Cycle_2.4.4_RC1

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Release Engineering
tracy.graydon@intel.com


---------------------
yocto-2.4.4 Errata
----------------------

Release Name: bitbake-rocko-18.0.4
Branch: 1.36.0
Tag: 1.36.0
Hash: 8bd16328a9332c57b03198826e22b48fadcd21d9
md5: 3c4c66e1b5bb80fe45bb1dd80294c064
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/bitbake-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/bitbake-rocko-18.0.4.tar.bz2

Release Name: eclipse-poky-neon-rocko-18.0.4
Branch: neon/rocko
Tag: neon/rocko-18.0.4
Hash: 6d0598b1d567a07bd20c5c99c65a404844a8f8c3
md5: 9624d32667237ced5ede1373b5960911
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/eclipse-poky-neon-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/eclipse-poky-neon-rocko-18.0.4.tar.bz2

Release Name: eclipse-poky-oxygen-rocko-18.0.4
Branch: oxygen/rocko
Tag: oxygen/rocko-18.0.4
Hash: b9eef4c1b3e14cfc0c81c902c3e52d864dfc3a76
md5: ab821e7e34ea9494413367edf738bbe2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/eclipse-poky-oxygen-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/eclipse-poky-oxygen-rocko-18.0.4.tar.bz2

Release Name: meta-gplv2-rocko-18.0.4
Branch: rocko
Tag: rocko-18.0.4
Hash: f875c60ecd6f30793b80a431a2423c4b98e51548
md5: f6629dfd3f44395c84ad3f5321da36a2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/meta-gplv2-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/meta-gplv2-rocko-18.0.4.tar.bz2

Release Name: meta-intel-rocko-18.0.4
Branch: rocko
Tag: rocko-18.0.4
Hash: 4ee8ff5ebe0657bd376d7a79703a21ec070ee779
md5: 1adc2c75cff90201ef119e4a64e70d22
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/meta-intel-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/meta-intel-rocko-18.0.4.tar.bz2

Release Name: meta-mingw-rocko-18.0.4
Branch: rocko
Tag: rocko-18.0.4
Hash: 1cc620b38f6f30a0bdd181783297998fe073387f
md5: 04029fd36a6b5b88c2c75835c2b0996d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/meta-mingw-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/meta-mingw-rocko-18.0.4.tar.bz2

Release Name: meta-qt3-rocko-18.0.4
Branch: rocko
Tag: rocko-18.0.4
Hash: 8ef7261a331e0869a0461ab2fb44e39980cedc02
md5: aba8006f4be3b2c2fd6afc698e596ef2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/meta-qt3-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/meta-qt3-rocko-18.0.4.tar.bz2

Release Name: meta-qt4-rocko-18.0.4
Branch: rocko
Tag: rocko-18.0.4
Hash: e290738759ef3f39c9e079eaa9b606a62107e5ba
md5: a247c3e1913932fe91ea45ca26c8d18b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/meta-qt4-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/meta-qt4-rocko-18.0.4.tar.bz2

Release Name: oecore-rocko-18.0.4
Branch: rocko
Tag: 2018-11
Hash: 8a2c177c7dad5c838b3c6abd3088a2bc3896a6a3
md5: 388851d613eb59d449d3801695c5da45
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/oecore-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/oecore-rocko-18.0.4.tar.bz2

Release Name: poky-rocko-18.0.4
Branch: rocko
Tag: rocko-18.0.4
Hash: 940da2e688cc6ae3cc3d95842033c3e51bd9fe29
md5: 893a9c83293c99830b9ee69d6896b2c9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.4/poky-rocko-18.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.4/poky-rocko-18.0.4.tar.bz2

---------------
 Known Issues
---------------
N/A

---------------
Fixes
---------------
build-appliance-image: Update to rocko head revision
poky.conf: Bump version for 2.4.4 rocko release
linux-yoct-rt/4.4: update to 4.4.162
linux-yocto-tiny/4.4: update to 4.4.162
linux-yocto/4.4: update to 4.4.162
linux-yocto/4.12: update to v4.12.28
linux-yocto/4.12: update to v4.12.26
linux-yocto/4.12: bump to v4.12.25
linux-yocto/4.12: gcc8 + platform support
yocto-uninative: Upgrade to verson 2.3 which includes glibc 2.28
os-release: move to nonarch_libdir
os-release: fix to install in the expected location
tzdata: update to 2018f
tzcode: update to 2018f
tzdata: update to 2018e
tzcode-native: updatet to 2018e
tzcode-native: update to 2018d
tzdata: update to 2018d
tzcode: remove unused patch files
valgrind: fix compile ptest failure on mips32
valgrind: fix ptest compilation for PowerPC64
valgrind: fix the shared object issue while prelink ptest
valgrind: Mask CPUID support in HWCAP on aarch64
toolchain-scripts: preserve host path in environment setup script
lsb/lsbtests: Update package lists to use latest version of binary
perl: skip tests that are not useful
documentation: Updated release date for 2.4.4 release
make: add missing Signed-off-by
make: Backport fixes to not assume glibc internal glob implementation
recipes: Update git.gnome.org addresses after upstream changes
cryptodev: Fix build errors with v4.17+
shadow: update ownership and permission of /var/spool/mail
license.bbclass: be a bit more strict when searching ${PN}-${LICENSE_PACKAGE_SUFFIX} in packages
license.bbclass: Minor simplification of get_deployed_dependencies()
multilib_header: recognize BPF as a target
python2: Fix build with gcc8
python-native: add dependency for gdbm and db native packages
python: Upgrade both python and python-native to 2.7.14
bzip2: use Yocto Project mirror for SRC_URI
classes: sanity-check LIC_FILES_CHKSUM
module-base.bbclass: fix out-of-tree module builds with custom EXTRA_OEMAKE
bitbake: checksum: sanity check path when recursively checksumming
bitbake: utils/md5_file: don't iterate line-by-line
bitbake: tests/fetch: Update gnome.org urls after upstream changes
documentation: Preparation for 2.4.4 release
devtool/sdk.py: error out in case of downloading file failure
perf: disable parallelism for 'make clean'
glibc: Update 2.26 to tip
cryptodev: refresh patches
cryptodev: switch SRC_URI to git
cryptodev: Fix build errors with v4.13+
ovmf: set PARALLEL_MAKE for target as well
ovmf: Fix build with gcc8
ovmf: refresh patches
perf: fix build with kernel older than 4.8
perf: make a copy of kernel source to perf workdir
perf: enable support for libaudit
bintutils: Update to tip of 2.29 branch
linux-yocto-tiny/4.9: update to 4.9.113
linux-yocto-rt/4.9: update to 4.9.113
linux-yocto/4.9: update to 4.9.113
linux-stable-tiny/4.4: update to 4.4.141
linux-yocto-rt/4.4: update to 4.4.141
linux-yocto/4.4: update to 4.4.141
yocto-uninative: Upgrade to version 2.2
yocto-uninative: Update to version 2.1
lsof: Update SRC_URI
make-mod-scripts: add build requirements for external modules
make-mod-scripts/kernel-devsrc: Fix objtool issues
wic: if we can't get from ioctl, try from os.stat()
linux-firmware: package rtl8168 firmware
linux-firmware: upgrade to 8fc2d4e5 revision
linux-firmware: upgrade to 4c0bf11 revision
linux-firmware: fix typo
linux-firmware: package all ibt-17-x-x.sfi/ddc firmware
linux-firmware: package ibt-17-16-1 firmware
linux-firmware: package iwlwifi-9000 series fimware
linux-firmware: add packaging for QCOM firmware for APQ8016 and APQ8096
linux-firmware: Bump revision to 65b1c68c
systemd: remove the group 'lock'
minicom: change SRC_URI to use Debian mirrors
mirrors: add Debian snapshot mirror for 2018
shadow: update SRC_URI now Alioth is down
chrpath: Alioth is dead, use DEBIAN_MIRROR
popt: update SRC_URI
common-licenses: Add BSD-1-Clause
libxml2: fix makefile for ptests
oeqa/selftest/systemd_boot: Never use cleansstate in QA tests without special handling of SSTATE_DIR
bitbake: fetch2/__init__: Disable pseudo in runfetchcmd()
bitbake: fetch2: fix import error for Python 3.6.5
distcc-doc_3.2: improve reproducibility
ifupdown: correct the repository location
tzdata: fix a typo.
linux-yoct/4.12: update to v4.12.24
linux-yocto/4.12: update to v4.12.23
linux-yocto/4.12: update to v4.12.22
poky.ent: Updated poky version.
documentation: Prepped set for a 2.4.3 release
ref-manual: Updated SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS variable
bsp-guide: Fixed manual title in title page note
ref-manual: Updated the SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS variable
documentation: Updated manual notes
bitbake: toaster: do not fail on optional 'custom.xml' file
bitbake: Toaster: fix shutdown and extra threads
build-appliance-image: Update to rocko head revision
poky: Bump version to 2.4.3
meta-yocto-bsp: bump to the latest v4.12 stable kernel for the non-x86 BSPs
linux-yocto: update genericx86* SRCREVs for 4.12
ncurses: Abstract out termlib
ncurses: fix deletion of /usr/lib/terminfo
ncurses: fix do_install failure when base_libdir has more than one level
ncurses: 6.0+20170715 -> 6.0+20171125
package.py: use single quotes for path passed to file in is_elf()
package.bbclass: Add '-b' option to file call in isELF
package.bbclass: use single quotes for path passed to file in isELF()
Revert "package.bbclass: Add '-b' option to file call in isELF"
ruby: Update to 2.4.4
ruby: fix typo in gmp PACKAGECONFIG option
ruby: remove spurious db build dependency
ruby: upgrade to 2.4.2
grub/grub-efi: fix conflict
scripts/test-dependencies.sh: remove
Revert "waf.bbclass: explicitly pass bindir and libdir if supported"
perl: add patch to solve libcrypt incompatibility
rsync: update to 3.1.3
mpfr: Update SRC_URI to use gnu
uninative: Set the dynamic linker to use at compile time
uninative: Add allow-shlib-undefined to BUILD_LDFLAGS and drop other workarounds
bitbake.conf: Set and export TZ envvar to UTC
yocto-uninative: Update to version 1.9 (fedora28 compatible)
package.bbclass: Add '-b' option to file call in isELF
patch:2.7.5 -> 2.7.6
gio-module-cache.bbclass: pass in ${libexecdir}
uninative: add variables to the whitelist so that it does not re-triger recipe parsing
package_manager.py: Skip gpgcheck while using dnf on target
libpcre-ptest: skip locale test
openssl: update 1.1.0g -> 1.1.0h
openssl: update 1.0.2n -> 1.0.2o
openssl: fix libdir logic to allow multiarch style paths
openssl: drop openssl-1.0.2a-x32-asm.patch
openssl: refresh patches
package_rpm: set _builddir to B not S
linux-yocto/4.12: intel-socfpga, intel-pmc-core and ish support for CoffeeLake board
linux-yocto/meta: improve wifi driver granularity
linux-yocto/4.12: add ssl and utils native dependencies
linux-yocto/4.12: update to v4.12.21
mirrors.bbclass: change Debian anonscm to salsa
ca-certificates: change SRC_URI from Debian anonscm to salsa
ncurses: change SRC_URI from Debian anonscm to salsa
curl: DEPENDS on libidn2 (not libidn)
libxml2: 2.9.4 -> 2.9.5
curl: upgrade to 7.58.0
curl: 7.54.1 -> 7.57.0
logging.bbclass: Enclose the tr string in quotes
bitbake.conf: Add comm to HOSTTOOLS
lttng-modules: update to v2.10.5 for kernel 4.15
lttng-ust: upgrade 2.9.1 -> 2.10.1
lttng-modules: upgrade 2.9.5 -> 2.10.4
distcc: Change SRC_URI
e2fsprogs: fix compatibility with glibc 2.27
openssl_1.0.2n: improve reproducibility
checklayer: remove reference to undefined class
valgrind: Fix multilib header conflict - valgrind/config.h
tiff: Fix multilib header conflict - tiffconf.h
scripts/oe-build-perf-report: fix comparing arbitrary commits
ca-certificates: run postinst script only for -target package
linux-yocto/4.12: backport bugfixes for x86
linux-yocto/4.12: warning: drm/i915/cfl: Coffee Lake works on Kaby Lake PCH
linux-yocto/4.12: memleak and build warning fixes
linux-yocto/4.12: fix aufs compile warning
linux-yocto/4.12: add stratix10 SoC development board
qemu: fix memfd_create with glibc 2.27
package-manager: add install_glob()
package_manager: improve install_complementary
sdk: generate locale archive and remove packages
populate_sdk_base: depend on nativesdk-glibc-locale
populate_sdk: install UTF-8 locales in SDKs
sdk: only install locales if we're using glibc
sdk: install specified locales into SDK
cross-localedef-native: add way to specify which locale archive to write
glibc: relocate locale paths in nativesdk
glibc: don't use host locales in nativesdk
default-distrovars: don't rename locales for nativesdk
beaglebone: Find /boot partition on mmcblk0
gcc: Fix internal compiler error for PPC test case "gcc.dg/vmx/7d-02.c"
gcc: Fix test case issue when SSE is not enabled
maintainers.inc: add myself as maintainer for the new busybox-inittab
layer.conf: add busybox-inittab to SIGGEN_EXCLUDERECIPES_ABISAFE
busybox: separate inittab into own package, due to SERIAL_CONSOLES being machine-specific
package_manager.py: Explicit complementary fail
go: Upgrade 1.9 to 1.9.4 stable release
uninative: Add compatiblity version check
yocto-uninative: Upgrade to 1.8 version with glibc 2.27
unfs3: Fix libtirpc usage for unfs3-native version
libtirpc: Extend to native and nativesdk recipes
unfs3: Fix build with musl
gcc6: Patch to fix broken gcc-sanitizers build
gdb: fix header ordering for TRAP_HWBKPT
glibc: add missing TRAP_BRANCH/TRAP_HWBKPT definitions
gcc: Remove patch causing ICE on x86_64 valgrind compile
gcc6: Backport few more patches
gcc6: enable FL_LPAE flag for armv7ve cores
gcc7/gcc6: Fix unaligned STRD issue on ARM
gcc6: Upgrade to 6.4
gcc: Fix libssh_nonshared linker specs for ppc/musl
gcc: Link libssp_nonshared.a only on musl targets
gcc-runtime: Disable libitm on riscv
bitbake: providers: Fix determinism issue
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

