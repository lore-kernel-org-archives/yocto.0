Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43ABAE00C35; Mon, 10 Jul 2017 15:19:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A1D7E00B8B;
	Mon, 10 Jul 2017 15:19:15 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2017 15:19:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,342,1496127600"; d="scan'208";a="877371868"
Received: from mssaeed-mobl.amr.corp.intel.com ([10.254.10.94])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2017 15:19:14 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <5963FD62.90108@intel.com>
Date: Mon, 10 Jul 2017 15:19:14 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.1.3 (Krogoth 15.0.3) Released
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
X-List-Received-Date: Mon, 10 Jul 2017 22:19:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.1.3 (krogoth-15.0.3) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.3/poky-krogoth-15.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.3/poky-krogoth-15.0.3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.3/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW26_-_2017-30-06_-_Full_Pass_2.1.3_rc2

Thanks to everyone for their contributions to this release!

Sincerely,

Tracy Graydon
Yocto Project
Build and Release


------------------
yocto-2.1.3 Errata
--------------------

Release Name: eclipse-poky-mars-krogoth-15.0.3
Branch: mars/krogoth
Tag: mars/krogoth-15.0.3
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: 189fbccd3f2dc176bc156089b94fb05b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.3/eclipse-poky-mars-krogoth-15.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.3/eclipse-poky-mars-krogoth-15.0.3.tar.bz2

Release Name: eclipse-poky-neon-krogoth-15.0.3
Branch: neon/krogoth
Tag: neon/krogoth-15.0.3
Hash: 83e0083ef3a71e10039ace7d18057dddc154408b
md5: b6ca7d65be9083e1ce4b967d9c8a852e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.3/eclipse-poky-neon-krogoth-15.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.3/eclipse-poky-neon-krogoth-15.0.3.tar.bz2

Release Name: meta-qt3-krogoth-15.0.3
Branch: krogoth
Tag: krogoth-15.0.3
Hash: d5d5225ef78e403301a429d0f64bd4a262b0fa4d
md5: 50c2217fdc18c56d59322bdbc3b4040c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.3/meta-qt3-krogoth-15.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.3/meta-qt3-krogoth-15.0.3.tar.bz2

Release Name: meta-qt4-krogoth-15.0.3
Branch: krogoth
Tag: krogoth-15.0.3
Hash: 92a72a790a427af5f85ce86fea4fce86a72c7b58
md5: cf3f3554e03321c30906708330f3a97e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.3/meta-qt4-krogoth-15.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.3/meta-qt4-krogoth-15.0.3.tar.bz2

Release Name: poky-krogoth-15.0.3
Branch: krogoth
Tag: krogoth-15.0.3
Hash: 3cf0e093481ea260d4f41bed24336ea7f0102bde
md5: 4cebb5adf1f6de3f55a7d5755509686f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.3/poky-krogoth-15.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.3/poky-krogoth-15.0.3.tar.bz2


---------------
 Known Issues
---------------
N/A

---------------
Security Fixes
---------------
openssl: Security fix CVE-2016-2177
tiff: Security fix CVE-2016-9538
tiff: Security fix CVE-2016-9535
tiff: Security fix CVE-2016-9539
tiff: Security fix CVE-2016-9540
tiff: Security fix CVE-2016-3632
tiff: Security fix CVE-2016-3658
expat: CVE-2012-6702, CVE-2016-5300
openssl: Security fix CVE-2016-8610
tiff: Security fix CVE-2016-3622
tiff: Security fix CVE-2016-3623
tiff: Security fix CVE-2016-3991
tiff: Security fix CVE-2016-3990
tiff: Security fix CVE-2016-3945
curl: CVE-2016-8625
curl: CVE-2016-8624
curl: CVE-2016-8623
curl: CVE-2016-8622
curl: CVE-2016-8621
curl: CVE-2016-8620
curl: CVE-2016-8619
curl: CVE-2016-8618
curl: CVE-2016-8617
curl: CVE-2016-8616
curl: CVE-2016-8615
qemu: Security fix CVE-2016-4952
qemu: Security fix CVE-2016-4439


---------------
Fixes
---------------
initrdscripts/init-install*: Add rootwait when installing to USB devices
bitbake: siggen: Make calc_taskhash match get_taskhash for file checksums
package_ipk: Clean up Source entry in ipk packages
documentation: Updated all manual revision tables to June, 2017
oeqa/selftest/recipetool: actually fix create_github test
build-appliance-image: Update to krogoth head revision
grub2: enforce -no-pie if supported by compiler
build-appliance-image: Update to krogoth head revision
poky: Update version to 2.1.3
rootfs_rpm: Increase rootfs size
oeqa/selftest: lock down Meson git revision for reliability
oeqa/runtime/rpm: use su instead of sudo
libunwind: Fix build race conflict with gcc and musl
selftest/recipetool: Fix test for krogoth
webkitgtk: fix racy double build of WebKit2-4.0.gir
cryptodev-linux: update SRC_URI
pseudo: Work around issues with glibc 2.24
pseudo: obey our LDFLAGS
openssl.inc: avoid random ptest failures
openssl: fix do_configure error when cwd is not in @INC
openssl: prevent warnings from openssl-c_rehash.sh
openssl: Ensure SSL certificates are stored on sysconfdir
openssl: Add Shell-Script based c_rehash utility
openssl: fix add missing dependencies building for test directory
openssl: fix add missing `make depend` command before `make` library
openssl: Fix MIPS64be and add MIPS64le
mesa: update SRC_URI
libpng -lsb: update SRC_URI
libxslt: update SRC_URI
libpng: update SRC_URI back to SF
libpcre: update SRC_URI
zlib: update SRC_URI to fix fetching
populate_sdk_ext: whitelist do_package tasks
populate_sdk_ext: fix working with uninative sstate
oeqa: fix hasPackage, add hasPackageMatch
tzdata: update to 2016i
tzcode: update to 2016i
tzdata: Update to 2016h
tzcode-native: update to 2016h
weston: Add no-input-device patch to 1.9.0.
gstreamer1.0-libav: Add 'valgrind' config option
nss: Disable warning on deprecated API usage
binutils: apply RPATH fixes from our libtool patches
binutils: fix typo in libtool patch
classes/native: set lt_cv_sys_lib_dlsearch_path_spec
classes/cross: set lt_cv_sys_lib_dlsearch_path_spec
rm_work: Ensure we don't remove sigbasedata files
sstate: Ensure we don't remove sigbasedata files
documentation: Updated YP set for 2.1.3 Krogoth release in May '17
bitbake: lib/bb/checksum: avoid exception on broken symlinks
bitbake: fetch2/wget: attempt checkstatus again if it fails
bitbake: siggen: Ensure taskhash mismatches don't override existing data
bitbake: siggen: Pass basehash to worker processes and sanity check reparsing result
bitbake: build: Ensure we preserve sigbasedata files as well as sigdata ones
Revert "file: update SRCREV for 5.25 to fix fetch fail on missing commit"
file: update SRCREV for 5.25 to fix fetch fail on missing commit
bitbake: bitbake: toaster: settings set ALLOWED_HOSTS to * in debug mode
dev-manual: Fixed typo for "${INC_PR}.0"
documentation: Updated manual rev tables for Dec 2016 2.1.2 release

