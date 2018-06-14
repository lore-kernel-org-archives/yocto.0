Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6437AE012F3; Thu, 14 Jun 2018 15:08:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2182E01281;
	Thu, 14 Jun 2018 15:08:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Jun 2018 15:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,224,1526367600"; d="scan'208";a="208199957"
Received: from tgraydon-mac01.jf.intel.com ([10.24.9.51])
	by orsmga004.jf.intel.com with ESMTP; 14 Jun 2018 15:08:09 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <e1cb225c-7cfa-ad44-21e4-c37bb55bd553@intel.com>
Date: Thu, 14 Jun 2018 15:08:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.4.3 (rocko-18.0.3) Released
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
X-List-Received-Date: Thu, 14 Jun 2018 22:08:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.4.3 (rocko-18.0.3) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.3/poky-rocko-18.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.3/poky-rocko-18.0.3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.3/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW24_-_2018-06-12-_Full_Test_Cycle_-_2.4.3_rc2

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Release Engineering
tracy.graydon@intel.com


------------------
yocto-2.4.3 Errata
--------------------

Release Name: eclipse-poky-neon-rocko-18.0.3
Branch: neon/rocko
Tag: neon/rocko-18.0.3
Hash: a5dbc01b96be55c4ec2f774af9996a8086e402ab
md5: 54e8fca5fa246c43845721ec9e0c709b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.3/eclipse-poky-neon-rocko-18.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.3/eclipse-poky-neon-rocko-18.0.3.tar.bz2

Release Name: eclipse-poky-oxygen-rocko-18.0.3
Branch: oxygen/rocko
Tag: oxygen/rocko-18.0.3
Hash: 020fc5814d2028654879356296b647002caf30b6
md5: f61add93dc74f864a4d66d62249b4bf7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.3/eclipse-poky-oxygen-rocko-18.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.3/eclipse-poky-oxygen-rocko-18.0.3.tar.bz2

Release Name: meta-qt3-rocko-18.0.3
Branch: rocko
Tag: rocko-18.0.3
Hash: 8ef7261a331e0869a0461ab2fb44e39980cedc02
md5: d9fc8c6550d7352dd9176a1ce980bdf4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.3/meta-qt3-rocko-18.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.3/meta-qt3-rocko-18.0.3.tar.bz2

Release Name: meta-qt4-rocko-18.0.3
Branch: rocko
Tag: rocko-18.0.3
Hash: e290738759ef3f39c9e079eaa9b606a62107e5ba
md5: df426f563fca33a943aa9cef5bd20903
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.3/meta-qt4-rocko-18.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.3/meta-qt4-rocko-18.0.3.tar.bz2

Release Name: poky-rocko-18.0.3
Branch: rocko
Tag: rocko-18.0.3
Hash: 7e7ee662f5dea4d090293045f7498093322802cc
md5: fabf3fa0506a8a487b1b79c8f108de0b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.3/poky-rocko-18.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.3/poky-rocko-18.0.3.tar.bz2


---------------
 Known Issues
---------------
Toaster for Rocko:  

- There are two patches that fix toaster issues that did not make it into this release. These fixes are on the Poky rocko and bitbake rocko/1.36 branches.
The first patch fixes an error that breaks the initialization of Toaster. The second patches fixes a change in behavior for Django that creates
an extra thread that blocks Toaster from shutting down. These issues only affect Toaster and do not affect the rest of the release.


- https://bugzilla.yoctoproject.org/show_bug.cgi?id=12751: django fails for 'optional' fixture 'custom.xml'

Toaster looks for and will include the optional fixture file "custom.xml". The test for this file relied on a passive fail if the file was not found. This is now a hard fail that breaks Toaster startup.
Solution is to wrap the load command with a "try" and passive "except".

Fix is on Rocko branch:
http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=rocko&id=9c3da34ec6c2c9a9abc30c72d6a8f9b996250862


---------------
Security Fixes
---------------
libnl: fix CVE-2017-0553
perl: Security fix CVE-2017-12883
patch: fix CVE-2018-1000156
patch: fix CVE-2018-6951
dhcp: Security Advisory - CVE-2017-3144
libvorbis: CVE-2018-5146
libvorbis: CVE-2017-14632
libvorbis: CVE-2017-14633
lame: revert "lame: fix CVE-2017-13712"


------
Fixes
------
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

