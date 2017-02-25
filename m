Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC433E00924; Fri, 24 Feb 2017 16:30:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F1DDE00546;
	Fri, 24 Feb 2017 16:30:43 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Feb 2017 16:30:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,202,1484035200"; d="scan'208";a="1102060730"
Received: from sanyogit-mobl.amr.corp.intel.com ([10.252.143.34])
	by orsmga001.jf.intel.com with ESMTP; 24 Feb 2017 16:30:42 -0800
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <58B0D031.5060107@intel.com>
Date: Fri, 24 Feb 2017 16:30:41 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.2.1 (Morty 16.0.1) Released
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
X-List-Received-Date: Sat, 25 Feb 2017 00:30:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.2.1 (morty-16.0.1) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/poky-morty-16.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.1/poky-morty-16.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW07_-_2017-02-13_-_Full_Point_Release_Test_Cycle_2.2.1_rc1

Thanks to everyone for all their work on this release!

Sincerely,

Tracy Graydon
Yocto Project
Build and Release


-------------------
yocto-2.2.1 Errata
---------------------

Release Name: eclipse-poky-mars-morty-16.0.1
Branch: mars/morty
Tag: mars/morty-16.0.1
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: bb415aad88df2a752b5a0e9e7d6ef2e9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/eclipse-poky-mars-morty-16.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.1/eclipse-poky-mars-morty-16.0.1.tar.bz2

Release Name: eclipse-poky-neon-morty-16.0.1
Branch: neon/morty
Tag: neon/morty-16.0.1
Hash: 83e0083ef3a71e10039ace7d18057dddc154408b
md5: 55ab5f6c4e3d98005a0d0b0d0dff83db
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/eclipse-poky-neon-morty-16.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.1/eclipse-poky-neon-morty-16.0.1.tar.bz2

Release Name: meta-qt3-morty-16.0.1
Branch: morty
Tag: morty-16.0.1
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 4f0320eafabe2ad95d916c820ac4b783
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/meta-qt3-morty-16.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.1/meta-qt3-morty-16.0.1.tar.bz2

Release Name: meta-qt4-morty-16.0.1
Branch: morty
Tag: morty-16.0.1
Hash: 2c7f8df9039be498f8a2232d1428adb7f4e5e800
md5: 12d3398170b7e440ce90f4a83b8aae10
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/meta-qt4-morty-16.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.1/meta-qt4-morty-16.0.1.tar.bz2

Release Name: poky-morty-16.0.1
Branch: morty
Tag: morty-16.0.1
Hash: 6a1f33cc40bfac33cf030fe41e1a8efd1e5fad6f
md5: 3d9dcc4c150f99503ace308f78c7e03d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/poky-morty-16.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.1/poky-morty-16.0.1.tar.bz2


----------------
 Known Issues
----------------
n/a

----------------
Security Fixes
----------------
openssl: CVE: CVE-2017-3731
libx11: CVE-2016-7943
libX11: CVE-2016-7942
libXrandr: fix for CVE-2016-7947 and CVE-2016-7948
libxrender: CVE-2016-7949
libxml2: fix CVE-2016-4658 Disallow namespace nodes in XPointer points and ranges
libxml2: Necessary changes before fixing CVE-2016-5131
curl: set CVE_PRODUCT
tiff: set CVE_PRODUCT
linux-yocto/4.x: CVE-2016-8655
tiff: Fix several CVE issues
tiff: Security fix CVE-2016-9538
tiff: Security fix CVE-2016-9535
tiff: set CVE NAME
libxml2: Security fix CVE-2016-5131
tiff: Security fix CVE-2016-9539
tiff: Security fix CVE-2016-9540
tiff: Security fix CVE-2016-3632
openssl: Security fix CVE-2016-7055
OpenSSL: CVE-2004-2761 replace MD5 hash algorithm
tiff: Security fix CVE-2016-3658
qemu: fix CVE-2016-7909
cve-check.bbclass: CVE-2014-2524 / readline v5.2
openssh: fix CVE-2016-8858
qemu: fix CVE-2016-7423 and CVE-2016-7908
qemu: supplementary fix of CVE-2016-5403
tiff: Security fix CVE-2016-3622
tiff: Security fix CVE-2016-3623
tiff: Security fix CVE-2016-3991
tiff: Security fix CVE-2016-3990
tiff: Security fix CVE-2016-3945
systemd: CVE-2016-7795


----------------
Fixes
----------------
build-appliance-image: Update to morty head revision
classes: Fix alternatives and rc.d ordering
bitbake: tinfoil: clean environment when starting up cooker
bitbake: bitbake-worker: Handle cooker/worker IO deadlocking
yocto-project-qs, poky.ent: Added "pexpect" to essential packages
nspr: set correct version in pkg-config file
attr/ea-acl: pass --disable-gettext when USE_NLS=no
linux-dtb: strip DTB extension properly in postinst/postrm
libxtst: 1.2.2 -> 1.2.3
binutils-2.27.inc: Fix alignment frags for aarch64
populate_sdk_ext: whitelist do_package tasks
populate_sdk_ext: fix working with uninative sstate
zlib: update SRC_URI to fix fetching
build-appliance-image: Update to morty head revision
Bump version for 2.2.1 morty release
documentation: Prepare for 2.2.1 release
dev-manual: Added cross-reference for tool-chain installation.
dev-manual: Updated "Building an Initial RAM Filesystem (initramfs) Image" section
dev-manual: Fixed "recipetool create" example
dev-manual, ref-manual: Created new section on initramfs
ref-manual, dev-manual: Removed term "wic-partitioned"
dev-manual: Updated to the "Creating Partitioned Images" section
ref-manual: Added WKS_FILE description for new variable
sdk-manual: Added note about nullpointer error for launch eclipse
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
edgerouter.py: avoid python3 exception
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.8
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
meta-yocto-bsp: bump to the latest stable linux kernel for the non-x86 BSPs
bitbake: cookerdata: Convert multiconfig to use BB_CURRENT_MC
bitbake: runqueue: Only start fakeroot workers when needed
bitbake: runqueue: Ensure setscene tasks with overlapping stamps don't parallel execute
bitbake: runqueue: Fix setscene issues with multiconfig
bitbake: siggen: Fix clean_basepath to work with multiconfig
bitbake: build/uihelper: Show better information about multiconfig tasks on UI
bitbake: runqueue: Ensure pseudo executes from the correct place (use the right datastore with multiconfig)
bitbake: bitbake: cooker: Handle inofity queue overflows more gracefully
bitbake: bitbake: cooker: Fix world taskgraph generation issue
bitbake: bitbake: utils: Avoid traceback errors
libgcc-common: Don't apply symlinks for nativesdk
bitbake.conf: Add inclusion of BB_CURRENT_MC.conf after local.conf
uninative: Parameterise the use of STAGING_DIR
selftest: wic: fix test_qemu
utils: Always use datastore's PATH for host_gcc_version
valgrind: make ld-XXX.so strlen intercept optional
uninative: rebuild uninative for gcc 4.8 and 4.9
libxml2: Fix more NULL pointer derefs
lib/oe/rootfs: fix log_check warnings being printed twice with RPM packaging
libtiff: Update to 4.0.7
kernel-yocto: explicitly trap subcommand errors
linux-yocto/4.8: update to -rt7
glibc: Enable backtrace from abort on ARM
Use weak assignment for SERIAL_CONSOLES in qemu configuration files
archiver: don't change directory when generating tarball
grub2: fix some quirks and div by zero
wic: Create a logical partition only when it is really mandatory
libarchive: fix ALTERNATIVE_PRIORITY to avoid conflict
cve-check: allow recipes to override the product name
targetloader.py: drop test for ClassType
linux-yocto-rt/4.4: update to -rt43
kern-tools: ensure that no shared directories are used
linux-yocto/4.8: update to v4.8.12
linux-yocto/4.4: update to v4.4.36
linux-yoct/4.1: update to v4.1.36
linux-yocto/4.4/4.8: Fix remaining kernel_configcheck warnings in Intel BSPs
linux-yocto/4.8: aufs warning and ixgbe calltrace
diffutils: do_configure: fix "Argument list too long"
kernel.bbclass: fix kernel_do_compile for KERNEL_IMAGETYPE = "vmlinux.gz" on mips
kernel.bbclass: do not copy bundled initramfs to /boot
kernel.bbclass: Avoid wildcards for kernel images
kernel.bbclass: Use real filenames in kernel packages
kernel.bbclass: allow uncompressed initramfs archives
recipetool: fix encoding-related errors creating python recipes
grub2: enforce -no-pie if supported by compiler
subversion: Fix issues in LDFLAGS sed manipulation
attr: Convert SSTATEPOSTINSTFUNCS to a do_install_append
staging: Drop unused SYSROOT_LOCK
kernel-yocto: exit on non-zero return code
kern-tools: fix processing for no branch meta-data
linux-yocto-dev: update to 4.9-rcX
linux-yocto/4.8: update to v4.8.10
parselogs: Whitelist GPT warnings as the device is fully functional
parselogs.py: Whitelist iwlwifi firmware load error messages
scripts/send-pull-request: Avoid multiple chain headers
terminal.py: Pass string instead of bytes to ExecutionError to avoid exception
slang: Disable parallel make install
systemd.bbclass: don't block on service restart
perl: Fix ptest update hash of ExtUtils/Liblist/Kid.pm in customized.dat
qemux86*.conf: set wic-related parameters
pseudo: include fix for xattr corruption
mesa: make sure GLES3 headers are installed
insane: rewrite the expanded-d test as a QAPKGTEST
insane: add QAPKGTEST, a package-wide equivilant to QAPATHTEST
insane: factor out the test matrix processing
insane: fix expanded-d test
insane: Add aarch64 baremetal mappings to the QA arch test
arch-arm64.inc: Include arch-armv7ve.inc
kern-tools: error checking and tree generation fixes
linux-yocto/4.4: update to v4.4.32
linux-yocto/4.8: update from v4.8.6 -> v4.8.8
linux-yocto/4.8: update to v4.8.6-rt5
linux-yocto/4.1: update to v4.1.35
linux-yocto/4.4: update to v4.4.30
linux-yocto/4.8: fix cryptodev compilation error
linux-yocto/4.8: update to 4.8.6
conf: add C++ flags for uninative interoperatility
binutils: Fix build for c293pcie PPC machine
wic: fix function comment typos
wic: check that filesystem is specified for a rootfs partition
wic: make sure that partition size is always an integer in internal processing
nfs-utils: fix protocol minor version fall-back
cmake.bbclass: Set CXXFLAGS and CFLAGS
qemu: update run-ptest script
openssl: fix bashism in c_rehash shell script
systemtap: fix native linking on recent Ubuntu
systemtap: remove explicit msgfmt check
systemd-bootdisk.wks: use PARTUUID
libbsd: Fix build with musl
db: disable the ARM assembler mutex code
qemuarm64.conf: make runqemu's graphics work
weston: Add no-input-device patch to 1.11.0.
libbsd 0.8.3: BBCLASSEXTEND to native and nativesdk
tzdata: update to 2016i
tzcode: update to 2016i
lib/oe/qa: handle binaries with segments outside the first 4kb
Revert "epiphany: remove unnecessary libwnck3 dependency"
Revert "libwnck3: remove the recipe"
ref-manual: Added KERNEL_IMAGE_BASE_NAME change to 2.2 migration
ref-manual: Updated KERNEL_IMAGE_BASE_NAME glossary description
dev-manual: Added note about RPM not dealing with post-install
ref-manual, dev-manual: Added references to SYSROOT_DIRS
sdk-manual: Updated the section on adding docs to standard SDK
bitbake: toaster: settings set ALLOWED_HOSTS to * in debug mode
documentation: Added new appendix for customizing standard SDK
ref-manual: Added api-documentation to distro features
dev-manual: Fixed typo for "${INC_PR}.0"
ref-manual: Fixed presentation of "openSUSE" in supported distros
ref-manual: Updated the RDEPENDS variable description.
dev-manual: Updated "Exporting Tests" section
ref-manual: Updated the supported distro list for Morty.
yocto-project-qs: Fixed typo
ref-manual: Fixed tense issue for migration 2.2 section
yocto-project-qs: Fixed the minnowboard example to use .wic and base
bitbake: bitbake-worker: print full traceback instead of message only
bitbake: data: fix exception handling in exported_vars()
bitbake: siggen: Ensure taskhash mismatches don't override existing data
bitbake: siggen: Pass basehash to worker processes and sanity check reparsing result
bitbake: build: Ensure we preserve sigbasedata files as well as sigdata ones
rm_work: Ensure we don't remove sigbasedata files
sstate: Ensure we don't remove sigbasedata files
gdb: update 7.11+git1a982b689c -> 7.11.1
subversion: fix "svnadmin create" fail on x86
classes/populate_sdk_ext: prevent invalid TEMPLATECONF entering eSDK
oe-setup-builddir: fix TEMPLATECONF error message
bash_3.2.x: update recipe version to match what we're shipping
oe-pkgdata-util: Use standard verb form in help info.
tzdata: Update to 2016h
tzcode-native: update to 2016h
testsdk.bbclass: Clean up comments, clarify image choices.
texi2html: Allow compiling out-of-source
valgrind: update to 3.12.0
libarchive: update to 3.2.2
libwnck3: remove the recipe
epiphany: remove unnecessary libwnck3 dependency
rt-tests: fix the recipe version to match upstream
webkitgtk: remove lib_package inherit as executables are now installed in libexecdir
gnome-desktop3: fix dependencies
lttng-tools: do not install shared libraries in ptest package
shadow: add nologin.8 to alternatives
util-linux: add su.1 to update-alternatives
busybox/mdev.conf: Ignore eMMC RPMB and boot block devices
package_manager.py: correctly remove all dependent packages
insane.bbclass:buildpaths: open() file with 'rb'
classes/nativesdk: set SDK_OLDEST_KERNEL appropriately
classes/populate_sdk_base: fix usage of & character in SDK_TITLE
oe/copy_buildsystem.py: dereference symlink
openssl: rehash actual mozilla certificates inside rootfs
uboot-sign: fix do_concat_dtb for .img, .rom
rpm: fix file location of rpm2cpio.real
boost: disable 'wave' in MIPS16e mode
slang: clean up options and dependencies
slang: add PREMIRRORS to handle upstream moving tarballs
classes/license: fix handling of symlinks pointed to in LIC_FILES_CHKSUM
connman: fix bad file descriptor initialisation
build-appliance-image: Fix incorrect PATH
python: fix python-tests rdepends
binutils-2.27: Fix linker segfaults when linking binary files
bitbake: toaster: buildinfohelper Handle regex paths

