Return-Path: <vineela.tummalapalli@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9635E00D8F; Tue, 13 Aug 2019 15:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19B16E00C7D;
	Tue, 13 Aug 2019 15:58:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Aug 2019 15:58:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="176344263"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga008.fm.intel.com with ESMTP; 13 Aug 2019 15:58:37 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Tue, 13 Aug 2019 15:58:37 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.15]) by
	ORSMSX160.amr.corp.intel.com ([169.254.13.75]) with mapi id
	14.03.0439.000; Tue, 13 Aug 2019 15:58:37 -0700
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.3 (thud
	20.0.3)	Released
Thread-Index: AdVSJ8jx3r3tAJ1rSZGJEx8A3pFpCQ==
Date: Tue, 13 Aug 2019 22:58:36 +0000
Message-ID: <363DC7214F94884BBF80916755E7D6552072B809@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODVhNzkwZWMtODQxOS00MzRkLTlmMTEtYTgwMDNmMDVlYTUwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiT0dLdWczc3dcL0dKSnlRWWN4UE9uUXRjXC9qUkJsSExFXC9RV0lnNWVUbVhTdnBiVkNXdFoxdzB2Nk03RUlDN3BnaCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.3 (thud 20.0.3)	Released
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
X-List-Received-Date: Tue, 13 Aug 2019 22:58:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

We are pleased to announce the Yocto Project 2.6.3 (thud-20.0.3) Release is=
 now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.3/poky-thud-20.0=
.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.3/poky-thud-20.0.3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.3/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.3/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com

------------------
yocto-2.6.3 Errata
--------------------

Release Name: poky-thud-20.0.3
Branch: thud
Tag: thud-20.0.3
Hash: cb26830f765f03309c0663352cc5849491271be8
md5: 1489c2ea6743790147f88037f70e483a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.3/poky-thud-20.0=
.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.3/poky-thud-20.0.3.tar.bz2

Release Name: meta-mingw-thud-20.0.3
Branch: thud
Tag: thud-20.0.3
Hash: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
md5: 5d646b155cba75c4dd3d7cb4d165bd03
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.3/meta-mingw-thu=
d-20.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.3/meta-mingw-thud-20.0.3.ta=
r.bz2

Release Name: meta-intel-thud-20.0.3
Branch: thud
Tag: thud-20.0.3
Hash: 278f0b5fa2f1836635178bdc770e035d77ae03c7
md5: 08be18666a3e960c261de8b5fe443ca4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.3/meta-intel-thu=
d-20.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.3/meta-intel-thud-20.0.3.ta=
r.bz2

Release Name: meta-gplv2-thud-20.0.3
Branch: thud
Tag: thud-20.0.3
Hash: aabc30f3bd03f97326fb8596910b94639fea7575
md5: 363b9acecc2ee20714eab435a343250b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.3/meta-gplv2-thu=
d-20.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.3/meta-gplv2-thud-20.0.3.ta=
r.bz2


---------------
 Known Issues
---------------
Core-image-sato-sdk image installed on NUC7 internal harddisk leads to hang=
 at the Yocto splash screen during bootup.
To exit the splash screen hang state and continue to boot to sato UI, manua=
lly press the enter key multiple times.


---------------
Security Fixes
---------------
expat: fix CVE-2018-20843
libcroco: fix CVE-2017-7961
ghostscript: Fix 3 CVEs
bzip2: fix CVE-2019-12900
gstreamer1.0-plugins-base: fix CVE-2019-9928
libsdl: CVE fixes
glib: Security fix for CVE-2019-9633
qemu: Security fixes CVE-2018-20815 CVE-2019-9824
glibc: backport CVE fixes
lighttpd: fix CVE-2019-11072
qemu: Security fix for CVE-2019-12155
Curl: Securiyt fix CVE-2019-5435 CVE-2019-5436
wget: Security fix for CVE-2019-5953
glib-2.0: Security fix for CVE-2019-12450
Tar: Security fix CVE-2019-0023
qemu: Security fix for CVE-2018-19489
cairo: fix CVE-2018-19876 CVE-2019-6461 CVE-2019-6462
sqlite3: Security fixes for CVE-2018-20505 & 20506
busybox: Security fixes for CVE-2018-20679 CVE-2019-5747
python: add a fix for CVE-2019-9948 and CVE-2019-9636
qemu: Several CVE fixes
elfutils: Security fixes CVE-2019-7146,7149,7150
glibc: Security fix CVE-2019-9169
ruby: remove CVE-2018-1000073.patch as already fixed
avahi: fix CVE-2017-6519
libexif: fix CVE-2016-6328 and CVE-2018-20030
libsndfile1: fix CVE-2019-3832
bluez5: fix CVE-2018-10910
python: fix CVE-2018-14647 in python-native too
openssl: follow OE's rule for specifying CVE ID
openssl: fix CVE-2019-1543


---------------
Fixes
---------------
build-appliance-image: Update to thud head revision
poky.conf: Bump version for 2.6.3 thud release
libarchive: integrate security fixes
OpkgPM: use --add-ignore-recommends to process BAD_RECOMMENDATIONS
opkg: add --ignore-recommends flag
scripts: Remove deprecated imp module usage
uboot-sign.bbclass: Remove tab indentations in python code
uninative: Update to 2.6 release
uninative: Switch from bz2 to xz
yocto-uninative: Update to 2.5 release
wpa_supplicant: Changed systemd template units
go: update to minor update 1.11.10
go: Upgrade 1.11.1 -> 1.11.4 minor release
go-crosssdk: PN should use SDK_SYS, not TARGET_ARCH
go-target.inc: fix go not found while multilib enabled
cups: upgrade to 2.2.10
cups: upgrade to 2.2.9
file: Multiple Secruity fixes
python: Update to 2.7.16
ref-manual: Fixed typo for BBMULTICONFIG variable.
bsp-guide: Fixed build error.
bsp-guide: Minor edits to Configuring Kernel section.
bsp.xml: Updated some output examples and the BSP structure
brief-yoctoprojectqs: Updated examples.
Documentation: Prepare for 2.6.3 release.
bitbake: gitsm: Add need_update method to determine when we are going to a =
new SRCREV
bitbake: gitsm: Fix a bug where the wrong path was used for the submodule i=
nit
bitbake: bitbake: fix version comparison when one of the versions ends in .
bitbake: bitbake: cooker: Rename __depends in all multiconfigs
bitbake: toaster: Fix Thud Bitbake release metadata
core-image-sato-sdk-ptest: Tweak size to stay within 4GB limit
core-image-sato-sdk-ptest: Try and keep image below 4GB limit
wic/bootimg-efi: replace hardcoded volume name with label
resulttool: Add option to dump all ptest logs
wic: change expand behaviour to match docs
recipetool: fix unbound variable when fixed SRCREV can't be found
resulttool/manualexecution: Enable test case configuration option
resultool/resultutils: Fix module import error
resulttool: Add log subcommand
resulttool: Load results from URL
resulttool/manualexecution: Refactor and remove duplicate code
resulttool/manualexecution: Enable creation of configuration option file
oeqa/targetcontrol.py: fix qemuparams not work in runqemu with launch_cmd
oeqa/target/ssh: Replace suggogatepass with ignoring errors
oeqa/sdk: use bash to execute SDK test commands
oeqa/concurrenttest: Patch subunit module to handle classSetup failures
oeqa/runner: Fix subunit setupClass/setupModule failure handling
oeqa/core/runner: Handle unexpectedSucesses
oeqa/ssh: Avoid unicode decode exceptions
oeqa/core/runner: dump stdout and stderr of each test case
oeqa/utils/qemurunner: Fix typo in previous commit
oeqa/qemurunner: Dont mix binary and non-binary strings
opkg-utils: backport a patch to fix a sstate timestamp issue
adwaita-icon-theme: do not delete symbolic svg but pack them in ${PN}-symbo=
lic
runqemu: do not check return code of tput
image_types.bbclass: fix a race between the ubi and ubifs FSTYPES
e2fsprogs: Skip slow ptest tests
ruby: add ptest
ruby: make ext module fiddle can compile success
ruby.inc: Add dependency on readline-native
recipetool: add missed module
pseudo: Update to gain key bugfixes
resulttool/manualexecution: Enable configuration options selection
linux-yocto/4.18: update to v4.18.33
linux-yocto-tiny/4.18: point KBRANCH to 4.18
core-image-sato-sdk-ptest: Fix free space issues causing test failures
core-image-sato-sdk-ptest: Increase qemu memory to 1GB
resulttool: Enable report for single result file
libsndfile1: update security patches
bluez5: Fix status subcommand of init script
bluez5: add mesh dependency on ell
devtool: prevent starting git gc in background
python-native: fix one do_populate_sysroot warning
run-ptest: use error handling for useradd and userdel
zlib: clean up ptest
zlib: cleanup
correct do_patch for kernel bbappend in sdk
oe-init-build-env: Error out when failed to locate cwd
python: time.tzset missing
timezone: update to 2019a
timezone: refactor to simplify maint
openssl10: Upgrade 1.0.2q -> 1.0.2r
openssl: Upgrade 1.1.1a -> 1.1.1b
openssl: don't disable the AFALG engine based on host kernel
openssl: Add cryptodev-linux PACKAGECONFIG
openssl: drop Python 2.x dependency in -ptest
openssl: Fix ptest test output translation
glibc: Drop upstream rejected patches
overview-manual: Fixed broken link to pseudo.
Documentation: Prepare for 2.6.2 release.
pkgdata.py: avoid target-sdk-dummy-provides to mess things up
resulttool/manualexecution: Refactor and simplify codebase
resulttool/manualexecution: Fixed step sorted by integer
resulttool/manualexecution: Enable display full steps without press enter
resulttool/manualexecution: Standardize input check
resulttool: Allow extraction of ptest data
resulttool: Allow store to work on single files
oeqa/manual/toaster: updated test id naming
oeqa/manual/toaster: transfer manual toaster test cases to oeqa
oeqa/manual/kernel-dev.json: test id updated
oeqa/manual/compliance-test.json: test id updated and missing test cases ad=
ded
oeqa/manual/bsp-hw.json: test id updated and obsolete test cases removed
oeqa/manual/bsp-hw.json: add non-IA tests
oeqa/manual/sdk.json: Updated toolchain tarball to core-image-sato
oeqa/manual: Add manual runtime 'compliance' testcases to json

