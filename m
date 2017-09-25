Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D7B7E009F5; Mon, 25 Sep 2017 10:56:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9845E009F5;
	Mon, 25 Sep 2017 10:56:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 25 Sep 2017 10:56:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,437,1500966000"; d="scan'208";a="1175639738"
Received: from geswarax-mobl5.gar.corp.intel.com ([10.254.187.103])
	by orsmga001.jf.intel.com with ESMTP; 25 Sep 2017 10:56:05 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <59C94334.7060203@intel.com>
Date: Mon, 25 Sep 2017 10:56:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.2.2 (morty 16.0.2) Released
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
X-List-Received-Date: Mon, 25 Sep 2017 17:56:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.2.2 (morty-16.0.2) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.2/poky-morty-16.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.2/poky-morty-16.0.2.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.2/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-_Full_Point_Release_Test_Cycle_2.2.2_rc2

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com



--------------------
yocto-2.2.2 Errata
--------------------

Release Name: eclipse-poky-mars-morty-16.0.2
Branch: mars/morty
Tag: mars/morty-16.0.2
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: a4090d5ca39f9fbe256a975e275855d0
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.2/eclipse-poky-mars-morty-16.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.2/eclipse-poky-mars-morty-16.0.2.tar.bz2

Release Name: eclipse-poky-neon-morty-16.0.2
Branch: neon/morty
Tag: neon/morty-16.0.2
Hash: 83e0083ef3a71e10039ace7d18057dddc154408b
md5: a5966c547946858abc7145cbef4bf9e7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.2/eclipse-poky-neon-morty-16.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.2/eclipse-poky-neon-morty-16.0.2.tar.bz2

Release Name: meta-qt3-morty-16.0.2
Branch: morty
Tag: morty-16.0.2
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: c20650532eba08fe1c8001e9ddec8df2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.2/meta-qt3-morty-16.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.2/meta-qt3-morty-16.0.2.tar.bz2

Release Name: meta-qt4-morty-16.0.2
Branch: morty
Tag: morty-16.0.2
Hash: f389368dc86e745df14cab9eeb9a94bc02bd273e
md5: bfcd270937944d1c48a356a50cb6dfb7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.2/meta-qt4-morty-16.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.2/meta-qt4-morty-16.0.2.tar.bz2

Release Name: poky-morty-16.0.2
Branch: morty
Tag: morty-16.0.2
Hash: 60402978fe3648bf560b3386c6e9dd661cdf2083
md5: d09e757d5d73093062f59a07ec51b4f6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.2/poky-morty-16.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.2/poky-morty-16.0.2.tar.bz2


---------------
 Known Issues
---------------
N/A

---------------
Security Fixes
---------------
connman: Fix for CVE-2017-12865
systemd: refuse to load units with errors (CVE-2017-1000082)
glibc: Security fix CVE-2016-6323
bash: CVE-2016-0634
libxslt: Fix CVE-2017-5029
binutils: fix CVE-2017-7210
binutils: fix CVE-2017-7209 in readelf
binutils: fix CVE-2017-6969 in readelf
libgcrypt: fix CVE-2017-7526
libgcrypt: fix CVE-2017-9526
ghostscript : CVE-2016-10219, CVE-2016-10220, CVE-2017-5951
ghostscript: CVE-2017-7207
libxml2: CVE-2016-9318
bind: Security fix CVE-2016-6170
bind: Security fix CVE-2016-8864
busybox: Security fix CVE-2016-6301
binutils: Fix CVE-2017-6965 and CVE-2017-6966
tar: CVE-2016-6321
bash: fix CVE-2016-9401


---------------
Fixes
---------------
glibc-locale: add runtime dependency on glibc
neard: Fix parallel build issue
oeqa/selftest: Drop http sstate sharing
selftest/eSDK.py: Cleanup when there is an error in setUpClass
oeqa/selftest: Adds test case for sdk-update eSDK
selftest/eSDK.py: fix sstate dir not found error
uninative: Update to 1.7 uninative release
yocto-uninative: Update to the 1.6 release
yocto-uninative: Update to the 1.5 release
python3-native: Avoid use of getentropy/getrandom
python-numpy: Fix issues with recent glibc versions
qemu: Backport a patch for recent glibc versions
recipes-kernel: Skip kernel version check on kernel templates
scripts/runqemu: avoid overridden user input for bootparams
kernel, license, sstate, rootfs.py: Remove deploy directory README
insane.bbclass: fix override handling in RDEPENDS QA
icecc.bbclass: prevent nativesdk builds depending on target specific KERNEL_CC
sstate-sysroot-cruft: Add /etc/ld.so.conf to whitelist
test-dependencies.sh: Strip also '\.bb: .*' before adding failed recipe to list of failed
image: Fix "metadata is not deterministic" when chaining 2+ CONVERSION_CMDs
image.bbclass: Correct chaining compression support
systemd: remove upstreamed patch
archiver: Escape recipe name in regex
libpng12: move SRC_URI back to SOURCEFORGE_MIRROR
systemd: Disable DefaultDependencies for sysv scripts on rcS runlevel
lsof: update SRC_URI
lsof: minor recipe cleanup
lsof: clear setuid
ed: update SRC_URI to OSL
rng-tools: update SRC_URI to SOURCEFORGE_MIRROR
pcre: update SRC_URI to SOURCEFORGE_MIRROR
glibc: fix pthread_cond_broadcast issue (arm)
wic: fix calculation of partition number
docbook-utils: update SRC_URI from fedora to osl
sgml-common: update SRC_URI from fedora to OSL
automake: Backport perl 5.22 fix
GNU_MIRROR: switch from ftp to https
DEBIAN_MIRROR: switch from ftp to http
libxslt: Add build fix (with ld-is-gold)
eudev: set LGPL-2.1+ for libudev package
elfutils: fix building elfutils-native with GCC7
gcc-6.2: backport fix of check for empty string in ubsan.c
openssl-native: Compile with -fPIC
packagegroup-core-standalone-sdk-target: add libssp
wic: partition: Run fsck on EXT file systems
e2fsprogs: Fix wrong error code after optimization
systemtap: Add patch to remove quotes
systemtap: update to 3.1
linux-yocto/4.8: update to 4.8.24
bitbake: wget: Fix handling of urls with user/password
bitbake: codeparser.py: support deeply nested tokens
bitbake: siggen: Make calc_taskhash match get_taskhash for file checksums
oe/path.py: fix for "Argument list too long"
ref-manual: uClibc Replaced by musl from Yocto 2.2
package_ipk: Clean up Source entry in ipk packages
scripts/lib/bsp/kernel.py: force patching when branch is machine branch is re-use
yocto-project-qs, poky.ent: Fixed pip3 and pexpect package names
sstate.bbclass: check if mirror directory is writable
oeqa/selftest: lock down Meson git revision for reliability
elfutils: update homepage and upstream souce
libnewt: replace fedorahosted.org SRC_URI with pagure.io source
xmlto: replace fedorahosted.org SRC_URI with pagure.io source
libuser: replace fedorahosted.org SRC_URI with pagure.io source
liberation-fonts: replace fedorahosted.org SRC_URI with pagure.io source
cronie: replace fedorahosted.org SRC_URI with github.com source
chkconfig: replace fedorahosted.org SRC_URI with github.com source
selftest/recipetool: replace fedorahosted.org SRC_URI with github.com source
perf: add perf-feature for systemtap
build-appliance-image: Update to morty head revision
cryptodev-linux: update SRC_URI
selftest: Avoid sstate corruption by calling cleansstate
selftest: Disable SSTATE_MIRRORS for sstate signing test
build-appliance-image: Update to morty head revision
poky: Update distro version to 2.2.2
oeqa/selftest: remove test_sanity_unsafe_binary_references
insane: remove broken unsafe-references-in-binaries test
selftest: do not perform a full build in test_continue
documentation: Prepared for YP 2.2.2 release of the manuals
glibc: Fix use after free in pthread_create()
xorg-font-common.inc: Remove x11 requirement for -native
mkfontscale: Remove x11 requirement for -native
mkfontdir: Remove x11 requirement for -native
linux-yocto/4.4: update to v4.4.60
linux-yocto/4.4: update to v4.4.56
linux-yocto/4.4: update to v4.4.53
linux-yocto/4.1: update to v4.1.38
linux-yocto/4.8: update to v4.8.18
linux-yocto/4.8: update to -rt10
linux-yocto/4.1: update to v4.1.37
linux-yocto/4.8: -stable update to v4.8.17
linux-yocto/4.4: update to v4.4.41
busybox: Security fix BUG9071
busybox: ifupdown:pass interface device name for ipv6 route command
busybox: allow libiproute to handle table ids larger than 255
base-files: resize only serial tty's in profile
logrotate: replace fedorahosted.org SRC_URI with github.com source
volatile-binds: correct some errors reported by systemd
parselogs: Whitelist NUC6 firmware load error message on genericx86-64
sstate.bbclass: update .siginfo atime
rootfs.py: Respect OPKGLIBDIR variable
package_manager.py: respect OPKGLIBDIR
python-3-manifest: fix adding imp to importlib
runqemu: support multiple qemus running when nfs
runqemu-export-rootfs: fix inconsistent var names
sanity.bbclass: modify check for shell
image_types.bbclass: fix image dependency chain collection
image_types.bbclass: IMAGE_TYPEDEP_ now adds deps for conversion types
gmp: Disable assembly for MIPS R6
openssl: Add support for many MIPS configurations
busybox: refresh the flock patch
wic: plugins: rawcopy: Fixed wrong variable type
wic: filemap: Fixed spared_copy skip
tzcode-native: Set cc to ${CC}
tzdata: update to 2017a
tzcode-native: update to 2017a
tzcode-native: update to 2016j
tzdata: update to 2016j
bitbake: lib/bs4: Fix imports from html5lib >= 0.9999999/1.0b8
Revert "file: update SRCREV for 5.28 to fix fetch fail on missing commit"
file: update SRCREV for 5.28 to fix fetch fail on missing commit
bitbake: cooker.py: run sanity checks for multiconfig
bitbake: cooker.py: new multiconfig '*' syntax support
bitbake: data_smart: Fix unneeded variable manipulation
lib/oe/gpg_sign: fix rpm signing with gpg > 2.1
lib/oe/gpg_sign: make gpg version a property of the signer
rpm: support customizing gpg command line
lib/oe/gpg_sign: sign rpm packages in chunks of 100
e2fsprogs: have configure expand @mkdir_p@
python-3.5-manifest: Add imp to importlib
gdb-cross-canadian: Depend on nativesdk-python3-importlib

