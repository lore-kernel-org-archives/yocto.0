Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B082E00E3F; Tue, 27 Feb 2018 15:02:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31EAEE00843;
	Tue, 27 Feb 2018 15:02:08 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Feb 2018 15:02:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,403,1515484800"; d="scan'208";a="21278189"
Received: from bwendlin-mobl.amr.corp.intel.com ([10.252.202.69])
	by orsmga008.jf.intel.com with ESMTP; 27 Feb 2018 15:02:07 -0800
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <c418d3a9-f61e-acd8-bd56-fd235ca6b941@intel.com>
Date: Tue, 27 Feb 2018 15:02:04 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.2.3 (morty 16.0.3) Released
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
X-List-Received-Date: Tue, 27 Feb 2018 23:02:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.2.3 (morty-16.0.3) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.3/poky-morty-16.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.3/poky-morty-16.0.3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.3/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW06_-_2018-02-08_-_Full_Point_Release_Test_Cycle_2.2.3_rc2

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.2.3 Errata
------------------

Release Name: eclipse-poky-neon-morty-16.0.3
Branch: neon/morty
Tag: neon/morty-16.0.3
Hash: f4d0e8a939e2e34bea910b251f5d5087180733c3
md5: 96baf616a1bc8abba1157cc1b7c8cb6b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.3/eclipse-poky-neon-morty-16.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.3/eclipse-poky-neon-morty-16.0.3.tar.bz2

Release Name: eclipse-poky-oxygen-morty-16.0.3
Branch: oxygen/morty
Tag: oxygen/morty-16.0.3
Hash: 126e707a6de212feeaaf093edc170aaa74192ce7
md5: 41702878b4259aff66ae01bac70d554d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.3/eclipse-poky-oxygen-morty-16.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.3/eclipse-poky-oxygen-morty-16.0.3.tar.bz2

Release Name: meta-qt3-morty-16.0.3
Branch: morty
Tag: morty-16.0.3
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: cf296376970262bff5527957e6e78121
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.3/meta-qt3-morty-16.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.3/meta-qt3-morty-16.0.3.tar.bz2

Release Name: meta-qt4-morty-16.0.3
Branch: morty
Tag: morty-16.0.3
Hash: f389368dc86e745df14cab9eeb9a94bc02bd273e
md5: 6a66289eadc6b22ad1a83861b44f7375
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.3/meta-qt4-morty-16.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.3/meta-qt4-morty-16.0.3.tar.bz2

Release Name: poky-morty-16.0.3
Branch: morty
Tag: morty-16.0.3
Hash: e6626951501cdf8c5516ad42fd585894f19c2327
md5: 5889497ed1947b7e927b5135fdf1adb8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.3/poky-morty-16.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.2.3/poky-morty-16.0.3.tar.bz2


-------------
 Known Issues
-------------
N/A

--------------
Security Fixes
--------------
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
glibc: CVE-2017-15670
glibc: Security fix for CVE-2017-8804
glibc: Fix CVE-2017-1000366
glibc: Fix CVE-2015-5180
zlib: Fix CVE-2016-9843
zlib: Fix CVE-2016-9842
zlib: Fix CVE-2016-9841
zlib: Fix CVE-2016-9840
ruby: Security fix for CVE-2017-14064
ruby: Security fix for CVE-2017-14033
ruby: Security fix for CVE-2017-9229
ruby: Secruity fix for CVE-2017-9226
ruby: Security fix for CVE-2017-9228
ruby: Security fix for CVE-2017-9227
ruby: Security fix for CVE-2016-7798
curl: Security fix for CVE-2017-1000101
curl: Security fix for CVE-2017-1000100
curl: Security fix for CVE-2016-9586
curl: Security fix for CVE-2016-8624
curl: Security fix for CVE-2016-8617
curl: Security fix for CVE-2016-8623
curl: Security fix for CVE-2016-8621
curl: Security fix for CVE-2016-8620
curl: Security fix for CVE-2016-8619
curl: Security fix for CVE-2016-8618
curl: Security fix for CVE-2016-8615
tiff: Security fix for CVE-2017-7593
tiff: Security fix for CVE-2017-7602
tiff: Security fix for CVE-2017-7601
tiff: Security fix for CVE-2017-7598
tiff: Security fix for CVE-2017-7596
tiff: Security fix for CVE-2017-7595
tiff: Security fix for CVE-2017-7594
tiff: Security fix for CVE-2017-7592
tiff: Security fix for CVE-2016-10270
tiff: Security fix for CVE-2016-10269
tiff: Security fix CVE-2016-10267
tiff: Security fix CVE-2016-10266
tiff: Security fix CVE-2016-10268
tiff: Secruity fix CVE-2016-10093
tiff: Security fix for CVE-2016-10271
libtiff: Security Advisory - libtiff - CVE-2017-5225
linux-yotoc/4.1: update to 4.1.43 plus CVE-2017-1000251
linux-yotoc/4.8: update to 4.8.25 plus CVE-2017-1000251
linux-yotoc/4.4: update to 4.4.87 plus CVE-2017-1000251
lunux-yocto/4.8: update to 4.8.25 plus bluetooth: CVE-2017-1000251
linux-yocto/4.4: update to 4.4.87 plus bluetooth: CVE-2017-1000251
linux-yocto/4.1: update to 4.1.43 plus bluetooth CVE-2017-1000251
bluez5: fix out-of-bounds access in SDP server (CVE-2017-1000250)

-----
Fixes
-----
cmake: avoid configure failures if CFLAGS contains -Wstrict-prototypes
Fix seg-fault in the linker when examining a corrupt binary.
local.conf.sample: Weakly set BB_DISKMON_DIRS
bitbake: toaster: remove cut and paste cruft
bitbake: toaster: move sqlite database to TOASTER_DIR
bitbake: toaster: bin/toaster whitelist TOASTER_DIR
bitbake: fetch2: Do not fail to create symbolic links if they already exist
bitbake: bitbake-layers: fix layerindex-fetch for Python 3
build-appliance-image: Update to morty head revision
populate_sdk_ext: Use prebuilt uninative tarball
uninative: Handle futex hangs caused by glibc version mismatches
gnu-efi: Support musl-x32 build
gnu-efi: copy header files for x32 build
gnu-efi: ignore arch mismatch for x32
gnu-efi: build 64-bit for x32
nspr: Fix build error due to missing stdint.h> include
adwaita-icon-theme: add a patch to speed up the do_install() task
grub: Fix build with gcc7
grub: Fix build with glibc 2.25
systemd: fixes mips64 login issue
python3: do not hardcode "lib" into site-packages search path
cross-localedef-native: Include locale_t.h
fontconfig: Fix namespace conflicts with glibc
documentation: Updated manual revision history table
build-appliance-image: Update to morty head revision
poky: Bump distro version to 2.2.3
neon: fix fetch error
byacc: Fix fetch error
mesa: fix SRC_URI
ppp: include netinet/in.h before linux/in.h in pppoe.h
linux-yocto/4.8: update to v4.8.26
python-3.3-multilib.patch: Fixes getpath on multilib configurations
tcf-agent: Fix daemon termination
tcf-agent: kill with USR2 in systemd stop
opkg: fix conffile errors in 'opkg status' calls
coreutils_6.9: fix musl compilation
coreutils_6.9: Disable broken man pages
gmp_4.2.1: prevent calls to mpn_add_nc() if HAVE_NATIVE_mpn_sub_nc is false
libevdev: add libcheck dependency
tiff: Security fixes
ruby: fix build of ruby-native with gcc7
documentation: Updated Doc set to 2.2.3
bitbake: Replace deprecated git branch parameter "--set-upstream"
wpa_supplicant: fix WPA2 key replay security bug
hostap-utils: use w1.fi for SRC_URI
diffstat: use HTTP mirror for SRC_URI
v86d: take tarball from debian
libpng: lsb version 1.2.56 url fix
libpng: use SourceForge mirror
sign_rpm.bbclass: force rpm serial signing
selftest/cases/signing: ignore removal errors when cleaning temporary gpg directory
linux-yocto/4.1: fix gcc7 compilation and v4.1.39
kernel.bbclass: fix KERNEL_IMAGETYPE(S) for Image.gz
bitbake: toaster/highlight.pack.js: Fix corrupted file
bitbake: toaster: Remove prettify
devtool.py: update testcase Ids in morty
image.bbclass: Sorted ctypes to avoid basehash error
glibc-locale: add runtime dependency on glibc
neard: Fix parallel build issue
oeqa/selftest: Drop http sstate sharing
selftest/eSDK.py: Cleanup when there is an error in setUpClass
oeqa/selftest: Adds test case for sdk-update eSDK
selftest/eSDK.py: fix sstate dir not found error


