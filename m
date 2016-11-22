Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF62EE007DA; Mon, 21 Nov 2016 16:50:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D0B4E007DA;
	Mon, 21 Nov 2016 16:50:48 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 21 Nov 2016 16:50:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,678,1473145200"; d="scan'208";a="1088667795"
Received: from pjfrieds-mobl3.amr.corp.intel.com ([10.254.113.38])
	by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2016 16:50:48 -0800
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <58339667.4040601@intel.com>
Date: Mon, 21 Nov 2016 16:50:47 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.1.2 (Krogoth 15.0.2) Released
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
X-List-Received-Date: Tue, 22 Nov 2016 00:50:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello,

The latest release of the Yocto Project 2.1.2 (krogoth-15.0.2) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.2/poky-krogoth-15.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.2/poky-krogoth-15.0.2.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.2/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW46_-_2016-11-10_-_Test_Cycle_2.1.2_rc1

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Tracy Graydon
Yocto Project
Build and Release


------------------
yocto-2.1.2 Errata
------------------

Please note that we have added support for Eclipse Neon and have removed Luna support, as reflected below.

Release Name: eclipse-poky-mars-krogoth-15.0.2
Branch: mars/krogoth
Tag: mars/krogoth-15.0.2
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: 10c736f97fd1e7c519e27d9c987173c2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.2/eclipse-poky-mars-krogoth-15.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.2/eclipse-poky-mars-krogoth-15.0.2.tar.bz2

Release Name: eclipse-poky-neon-krogoth-15.0.2
Branch: neon/krogoth
Tag: neon/krogoth-15.0.2
Hash: a751bfdcb095bdc7bf8008b205b06adfdaad294f
md5: e9613760c1b4b71eae120e53f9b21f57
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.2/eclipse-poky-neon-krogoth-15.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.2/eclipse-poky-neon-krogoth-15.0.2.tar.bz2

Release Name: meta-qt3-krogoth-15.0.2
Branch: krogoth
Tag: krogoth-15.0.2
Hash: d5d5225ef78e403301a429d0f64bd4a262b0fa4d
md5: c854634cf76c2e0a21d3f941684e6af6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.2/meta-qt3-krogoth-15.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.2/meta-qt3-krogoth-15.0.2.tar.bz2

Release Name: meta-qt4-krogoth-15.0.2
Branch: krogoth
Tag: krogoth-15.0.2
Hash: 92a72a790a427af5f85ce86fea4fce86a72c7b58
md5: 8ec0b619765d7caa3d514c5e4141e5ba
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.2/meta-qt4-krogoth-15.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.2/meta-qt4-krogoth-15.0.2.tar.bz2

Release Name: poky-krogoth-15.0.2
Branch: krogoth
Tag: krogoth-15.0.2
Hash: cca8dd15c8096626052f6d8d25ff1e9a606104a3
md5: 8c1821e1c4b1b06e6114eab4f7544a0f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.2/poky-krogoth-15.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.2/poky-krogoth-15.0.2.tar.bz2


---------------
 Known Issues
---------------
N/A

---------------
Security Fixes
---------------
python3: Security fix CVE-2016-1000110
python: Security fix CVE-2016-1000110
perl: fix CVE-2016-1238
openssl: Security fix CVE-2016-6306
openssl: Security fix CVE-2016-6304
openssl: Security fix CVE-2016-6303
openssl: Security fix CVE-2016-6302
openssl: Security fix CVE-2016-2182
openssl: Security fix CVE-2016-2181
openssl: Security fix CVE-2016-2180
openssl: Security fix CVE-2016-2179
openssl: Security fix CVE-2016-2178
cracklib: Apply patch to fix CVE-2016-6318
wpa_supplicant: Security Advisory-CVE-2016-4477
wpa_supplicant: Security Advisory-CVE-2016-4476
perl: fix CVE-2015-8607
perl: fix CVE-2016-6185
perl: fix CVE-2016-2381
qemu: Secuirty fix for CVE-2016-5403
qemu: Security fix for CVE-2016-4002
qemu: Security fix CVE-2016-6351
qemu: Security fix CVE-2016-4439
qemu: Security Fix CVE-2016-3712
qemu: Security Fix CVE-2016-3710
util-linux: Security fix for CVE-2016-5011
wget: Security fix CVE-2016-4971
openssh: Security fix CVE-2015-8325
openssh: Security fix CVE-2016-5615
openssh: Security fix CVE-2016-6210
curl: security fix for CVE-2016-7141
sudo: CVE-2015-8239
tiff: Security fix CVE-2016-5323
tiff: Security fix CVE-2016-5321
tiff: Security fix CVE-2016-3186
tiff: Security fix CVE-2015-8784
tiff: Security fix CVE-2015-8781
curl: security fix for CVE-2016-5421
curl: security fix for CVE-2016-5420
curl: security fix for CVE-2016-5419


---------------
Fixes
---------------
bsp-guide: Updated the yocto-bsp create selections in the example.
yocto-project-qs: Fixed Minnow MAX build example
yocto-project-qs: Altered MinnowBoard MAX example
bsp-guide: Fixed the yocto-bsp create example output
binutils: fix AR issue when opkg is unpacking IPKs containing empty entries
multilib_header: avoid sstate checksum issues for -nativesdk recipes
tzdata: update to 2016g
tzcode-native: Update to 2016g
pulseaudio: Disable unit tests
pigz: Update SRC_URI
useradd: Fix infinite build loop
libarchive: respect disable-acl configuration option
useradd.bbclass: Strip trailing ';' in cmd params
useradd: use bindir_native for pseudo PATH
oeqa/buildiptables: Switch from netfilter.org to yoctoproject.org mirror
python3: Fixes several python3 dependency problems
documentation: Changes to support a 2.1.2 krogoth release.
tiff: Update download URL
perl: Correct perl path for ptest
perl-native: backport libnm link fix
perl: fix several perl test failures
perl: some perl tests require libssp
perl: set proper perl subversion number in config files
dropbear: upgrade to 2016.72
busybox: Avoid race building libbb
busybox: fix "sed n (flushes pattern space, terminates early)" testcase failure
rpm: manually cleanup sysck
rpm: ensure rpm2cpio call rpm relocation code
rpm: make --nosignature work
python-smartpm: use md5 as the digest for rpm_sys channel
python-smartpm_git.bb: Add patch for debugging random errors
python-smartpm: add support to check signatures
python-smartpm: Avoid locale issue with bitbake python3
xserver-xf86-config: pre-load int10 and exa modules
arch-mips.inc: Disable QEMU usermode usage when building with n32 ABI
gobject-introspection.bbclass: disable introspection for -native and -nativesdk recipes
cmake.bbclass: call cmake with a relative path
useradd_base: avoid unintended expansion for useradd parameters
binutils: advance SRCREV to obtain versioned symbols
base.bbclass wipe ${S} before unpacking source
bitbake.conf: set READELF for cross compilation
Fix random python backtrace in mutlilib handling code.
cml1: fix tasks after default [dirs] changed
bitbake.conf/toolchain-scripts.bbclass: Remove debug prefix mappings in SDK
gdb: Cache gnu gettext config vars for musl builds
initramfs-live-boot: Make sure we kill udev before switching root when live booting
e2fsprogs: Fix missing check for permission denied.
busybox: Add parallel make fix
busybox: Backport makefile fix from upstream
busybox: Fix busybox-init on non-tty consoles
npm: npm.bbclass now adds nodejs to RDEPENDS
pulseaudio: fix crash when disconnecting bluetooth devices
systemd: allow add users as a rootfs postprocess cmd
systemd: Create missing sysusers offline
meta/classes: fix bb.build.FuncFailed typos
python{3}-numpy: Predefine of sizeof off_t on mips/mipsel/ppc
gcc, qemuppc: Explicitly disable forcing SPE flags for 4.9
bitbake: lib/bb/tests/fetch: remove URL that doesn't exist anymore
bitbake: toaster: Fix adding of bitbake variables containing ':'
python3: update manifest RDEPENDS for importlib and compression packages
python-3.5-manifest: Add argparse module
python-3.5-manifest: Rename Queue module to queue
python3-native: Extend python3-native rproviders
python3-native: Change code style for rprovides
yocto-uninative: Update to 1.0.1 tarball
mesa-demos: Fix OpenGL ES configurability
lzop: Fix build with gcc-6
musl: Fix mips regressions in 1.1.15
glibc: use the host locale archive in nativesdk builds
base-files: restrict resize to run on serial consoles only in profile â”‚Â·
documentation: Updated manual revision list tables for August
ref-manual: Fixed typo in the "Shared State" section.
ref-manual: Review edits to the PR variable in glossary.
ref-manual: Updated the RDEPENDS variable description in the glossary
ref-manual: Updated the PR variable description.
dev-manual: Review edits to the package installation section
documentation: Updated manual revision tables for July 2016 date
ref-manual: Updated the flag descriptions for shared state details
dev-manual: Edits to the package feed creation section.
ref-manual: Updated the DISTRO_FEATURES description of Bluez5
ref-manual: Updated SSTATE_MIRRORS examples to match reality
dev-manual: Updated Runtime Testing for Package Installation
dev-manual: Updated the method to set SimpleHTTPServer for testing
ref-manual: Fixed a typo for installing "python3-git"
dev-manual: Applied edits to the package feed section.
ref-manual: Updated the UPSTREAM_CHECK_* variables.
ref-manual: Review edits to the UPSTREAM_CHECK_* variables.
dev-manual: Updated Host Server Machine Setup for package feeds
ref-manual: Added note about installing Git-Python package
ref-manual: Updates to the UPSTREAM_CHECK_* variables
dev-manual: Review edits applied to the package feed build considerations.
ref-manual: Edits to UPSTREAM_CHECK_* variables.
ref-manual: Added descriptions for three UPSTREAM* variables.
dev-manual: Updated Package Feed Creation sections
ref-manual: Updated the INHIBIT_PACKAGE_STRIP variable
ref-manual: Added BlueZ version 5 feature to distro feature section.
sdk-manual: Fixed three broken links to sections within manual.
sdk-manual: Updated configure.ac file in helloworld example.
documentation: Set up for the 2.1.1 YP Release
kernel-dev: Fix the locations of .config and source directory
profile-manual: Added cross-reference links to INHIBIT_PACKAGE_STRIP
ref-manual: Fixed *[doc] string for INHIBIT_PACKAGE_DEBUG_SPLIT

