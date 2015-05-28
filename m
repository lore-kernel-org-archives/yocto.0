Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E693E009F3; Thu, 28 May 2015 12:53:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 846EBE009D4;
	Thu, 28 May 2015 12:53:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 May 2015 12:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,513,1427785200"; d="scan'208";a="733311111"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga002.fm.intel.com with ESMTP; 28 May 2015 12:53:31 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.102]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.146]) with mapi id
	14.03.0224.002; Thu, 28 May 2015 12:53:31 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>
Thread-Topic: [ANNOUNCEMENT] Yocto Project 1.7.2 (dizzy 12.0.2) Released
Thread-Index: AQHQmX/4Iu3dbahw80KUXLqBs5/RHA==
Date: Thu, 28 May 2015 19:53:31 +0000
Message-ID: <D18CC04A.414%tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.0.150423
x-originating-ip: [10.254.115.24]
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 1.7.2 (dizzy 12.0.2) Released
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
X-List-Received-Date: Thu, 28 May 2015 19:53:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2E4CFFDA46860540A25232D2B352E7ED@intel.com>
Content-Transfer-Encoding: quoted-printable

All,

We are pleased to announce the second point release for Yocto Project
"dizzy" 1.7.2.

This release contains 130 patches including 13 patches for known CVEs.

This release is available for download at:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.2/poky-dizzy-12.
0.2.tar.bz2

or

http://mirrors.kernel.org/yocto/yocto/yocto-1.7.2/poky-dizzy-12.0.2.tar.bz2

Thanks to everyone for all your work and contributions.

Tracy Graydon
Yocto Project=20
Release Engineering

--------------------
yocto-1.7.2 Errata
--------------------

Release Name: poky-dizzy-12.0.2
Branch: dizzy
Tag: dizzy-12.0.2
Hash: 29812e61736a95f1de64b3e9ebbb9c646ebd28dd
md5sum: ce11dea7fb8651dbdefde4fa9d4943e4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.2/poky-dizzy-12.
0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.2/poky-dizzy-12.0.2.tar.bz2

Release Name: eclipse-poky-juno-dizzy-12.0.2
Branch: dizzy
Tag: dizzy-12.0.2
Hash: f5e33fc79a3f77b0013c005019b72430d8998e8b
md5sum: 7c8445ee4a76f3561d6c3aeae9d3932b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.2/eclipse-poky-j
uno-dizzy-12.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.2/eclipse-poky-juno-dizzy-1
2.0.2.tar.bz2

Release Name: eclipse-poky-kepler-dizzy-12.0.2
Branch: dizzy
Tag: dizzy-12.0.2
Hash: 92f81a5b75ef184a88ba3aded5941dafced0e4cc
md5sum: 41e79213e0635b1c963818e71b7fc6c6
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.2/eclipse-poky-k
epler-dizzy-12.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.2/eclipse-poky-kepler-dizzy
-12.0.2.tar.bz2

Release Name: eclipse-poky-luna-dizzy-12.0.2
Branch: dizzy
Tag: dizzy-12.0.2
Hash: 0ab86ce01713632f54e1d4657133f4eb17db9135
md5sum: 5b4e3d151d7ac12870975d63da7f4afe
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.2/eclipse-poky-l
una-dizzy-12.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.2/eclipse-poky-luna-dizzy-1
2.0.2.tar.bz2

Release Name: meta-qt3-dizzy-12.0.2
Branch: dizzy
Tag: dizzy-12.0.2
Hash: 3016129d90b7ac8517a5227d819f10ad417b5b45
md5sum: e85990f7b8a4e3b539b7a5a302592a73
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.2/meta-qt3-dizzy
-12.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.2/meta-qt3-dizzy-12.0.2.tar
.bz2


--------------------
Security
--------------------

cpio:=20
    CVE-2015-1197
patch:=20
    CVE-2015-1196
e2fsprogs: =20
    CVE-2015-0247
util-linux:=20
    CVE-2014-9114
lzop:=20
    CVE-2014-4607
busybox:=20
    CVE-2014-9645
elfutils:=20
    CVE-2014-9447
python:=20
    CVE-2014-3566
glibc:=20
    CVE-2014-9402=20
file:=20
    CVE-2014-9620=20
    CVE-2014-9621
libxml2:=20
    CVE-2014-3660
coreutils:=20
    CVE-2014-9471

--------------------
Patches
--------------------

* autotools: Avoid find race for S =3D "${WORKDIR}"
* base-files: Check for /run and /var/lock softlinks on upgrade
* bind: fix typo chown->chmod
* bitbake:=20
    - add PKGDATA_DIR to BB_HASHBASE_WHITELIST
    - ast: Add error when trying to use dash in sh function names
    - bitbake-worker: Use setsid() rather than setpgid()
    - Add pyinotify to lib/
    - cache/fetch2/siggen: Ensure we track include history for file
checksums
    - cooker/cache/parse: Implement pyinofity based reconfigure
    - cooker/server: Fix up 100% CPU usage at idle
    - cooker: Fix pyinotify handling of ENOENT issues
    - cooker: Further optimise pyinotify
    - cooker: Improve pyinotify performance
    - cooker: Shut down the parser in error state
    - cooker: read file watches on server idle
    - data.py: fixes bad substitution when running devshell
    - data_smart: split expanded removal values when handling _remove
    - fetch/git: Remove a possible trailing '/' in subpath
    - tests/data: add test for incorrect remove behaviour
    - wget: Add localpaths method which gives localpath with history
    - add safeguard against recursively deleting things we shouldn't
* boost: Avoid to use local host configuration
* build-appliance-image: Update to dizzy head revision
* busybox:=20
    - libarchive: open_zipped() does not need to check extensions
    - unbreak tar of uncompressed files
* cross-canadian/meta-environment: Allow modification of TARGET_OS to be
optional
* distcc: fix initscript can not stop distcc daemon correctly
* documenation:=20
    - Updates to release month for rev history tables.
    - Preparation for 1.7.2 release.
    - Reverted back to the 1.76.1 XSL stylesheet
* dpkg-native: Avoid 'file changed' errors from tar
* dpkg:=20
    - Fix patch to adjust for older code
    - add perl to RDEPENDS
    - fix host contamination
* e2fsprogs: Add a patch to speedup mkfs
* files: fix replace target_sdk_dir twice in environment setup file
* fix '[[: not found' error message using dash
* fontcache:=20
   - prepend to PACKAGEFUNCS instead of appending
   - allow to pass different fontconfig cache dir
* gcc-runtime: Remove libgfortran data from receipe
* gcc-target: Don't install target gcc libdir files
* gcc/libgcc-common.inc: Add missing 'fakeroot' to two tasks
* gcc: ensure target gcc headers can be included
* glibc: Fix up minimal build with libc-libm
* groff: fix QA issue with rdepends
* guile: fixed installed-vs-shipped error
* icecc.bbclass: properly handle disabling of icecc
* image.bbclass: avoid boot error on read-only systemd image
* image_types.bbclass:
    - fixed 'init' creation for cpio images
    - manage 'cpio_append' directory
* initscripts: Remove /etc/volatile.cache on upgrade
* lib/oe/package: Ensure strip breaks hardlinks
* libunwind: backport patch to link against libgcc_s intead of libgcc
* liburcu: revert ARM GCC blacklist commit
* libxml2: Backport fix for CVE introduced entity issues
* linux-yocto-tiny_3.17: Update to actually use 3.17 git repo
* linux-yocto/3.10: update to v3.10.65
* linux-yocto/3.14: update to 3.14.29
* linux-yocto/3.17: update to v3.17.8
* neard: fix parallel issue
* net-tools: Fix rerunning of do_patch task
* oeqa/utils/decorators: Try and improve ugly _ErrorHandler tracebacks
* openssh: deliver ssh-copy-id
* openssl:
    - Fix x32 openssl patch which was not building
    - Upgrade to 1.0.1m
    - fix hard paths in native openssl
* package.bbclass:=20
    - Fix support for private libs
    - Let PR server update PKGV, not PV
* package/prserv: Merge two similar functions into one
* package_manager:=20
    - fix rootfs failure with multilib enabled
    - support exclusion from complementary glob process by regex
* packagegroup-self-hosted: package all of Python
* parted: parted-ptest RDEPENDS on python
* pax-utils: RDEPENDS on python
* perf:=20
    - Add libdw unwind support to perf-libunwind feature
    - Disable perf-libunwind
    - fix for rebuilding
* perl: Backport fix for bug #123591
* poky.conf: add file-rdeps to WARN_QA
* poky.ent: Updated two variables that had issues
* poky: Update to 1.7.2 release version
* postinst-intercepts/update_font_cache: fix ownership of fontconfig cache
* powertop: Fix build for !uclibc
* pulseaudio: use stricter PACKAGES_DYNAMIC
* python-smartpm: Fix attemptonly builds when file conflicts occur
* python:=20
    - ensure all of Python is installed in nativesdk
    - remove spurious nativesdk dependency
* ref-manual, dev-manual, adt-manual, yocto-project-qs: scrub eglibc
* ref-manual:=20
    - Corrected the "package_rpm.bbclass" section.
    - Fixed icecc example code
    - Updates to the TCLIBC variable description
* rm_work: Fix RM_WORK_EXCLUDE for image/sdk recipes
* scripts/send-error-report: Set exit code if error occurs
* security_flags:=20
    - disable PIE on expect
    - disable pie support for libaio, blktrace and ltp
* serf: fix 'ccache' builds
* socat: forcibly disable use of libbsd
* systemd:=20
    - Backports fixes to 216
    - add missing RDEPENDS
    - fix /var/log/journal ownership
* toaster.bbclass: use the openembedded-core name
* toolchain-scripts: Allow the CONFIGSITE_CACHE variable to be overridden
* tzcode:=20
    - update to 2015a leap second changes too
    - update to 2015b
* tzdata:=20
    - fix HOMEPAGE
    - update to 2015a including leap second
    - update to 2015b
* udev:=20
    - don't keep ptest testdata laying around
    - fix ptest rule syntax check
* utils.bbclass: fix create_cmdline_wrapper
* valgrind:=20
    - build with altivec only if it supported
    - enable building on 4.x kernel
* which 2.18: fix SRC_URI
* xorg-app: add x11 to required DISTRO_FEATURES and cleanup dependencies
* yocto-bsp: Add branch to SRC_URI for custom kernels



