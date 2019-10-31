Return-Path: <vineela.tummalapalli@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7306E00DB1; Thu, 31 Oct 2019 11:51:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893A7E008D9;
	Thu, 31 Oct 2019 11:51:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Oct 2019 11:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="194413246"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga008.jf.intel.com with ESMTP; 31 Oct 2019 11:51:38 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 31 Oct 2019 11:51:37 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.115]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.244]) with mapi id
	14.03.0439.000; Thu, 31 Oct 2019 11:51:37 -0700
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.4 (thud
	20.0.4)	Released
Thread-Index: AdWQFZ+SMQSBXrtUR2CBFvNFthnRhQ==
Date: Thu, 31 Oct 2019 18:51:37 +0000
Message-ID: <363DC7214F94884BBF80916755E7D6552079ABB8@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjQzMDYzOWEtY2UxMi00NGQ1LWEyMDYtOTUwZmM5MGNiN2YyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOFwvMytGNzhZZ0Q0bkZHdjhqd3dYNWhGMHM1SUlLNDZFQW5mMHY0VEtsSmRCYmd4Z1JZNXNEdWpORkt1UDRRcjMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.4 (thud 20.0.4)	Released
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
X-List-Received-Date: Thu, 31 Oct 2019 18:51:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 2.6.4 (thud-20.0.4) Release is=
 now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/poky-thud-20.0=
.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.4/poky-thud-20.0.4.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/testreport.txt

Thank you for everyone's contributions to this release.

Note: Yocto Project has updated the expiration date on the release signing =
key.=20
Please import https://downloads.yoctoproject.org/releases/yocto/keys/yocto-=
release-key.asc to verify RELEASENOTES and git tags.

Sincerely,

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com


- -------------------------
yocto-2.6.4 Release Notes
- -------------------------

- -----------------------
Repositories/Downloads
- -----------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: thud
Tag: yocto-2.6.4
Git revision: 51f6145f8f99a02df1dad937684f014b0172e72a
Release Artefact: poky-thud-20.0.4
md5: 9859b2ac90ced909bdd7293125295348
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/poky-thud-20.0=
.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.4/poky-thud-20.0.4.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: thud
Tag: yocto-2.6.4
Git revision: cd7cf933b3235560ec71576d8f3836dff736a39f
Release Artefact: oecore-thud-20.0.4
md5: a2f1d7fa021ca3d37c5c3a65ea27b2d7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/oecore-thud-20=
.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.4/oecore-thud-20.0.4.tar.bz=
2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: thud
Tag: yocto-2.6.4
Git revision: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
Release Artefact: meta-mingw-thud-20.0.4
md5: 8e20b388086db80a1420cfa5be5f5573
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/meta-mingw-thu=
d-20.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.4/meta-mingw-thud-20.0.4.ta=
r.bz2

Repository Name: meta-intel
Repository Location: https://git.yoctoproject.org/git/meta-intel
Branch: thud
Tag: yocto-2.6.4
Git revision: c200851435f39acd2fe4abbf7a05fbf617833964
Release Artefact: meta-intel-thud-20.0.4
md5: 4696150e7676a926baf0975e252f0964
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/meta-intel-thu=
d-20.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.4/meta-intel-thud-20.0.4.ta=
r.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: thud
Tag: yocto-2.6.4
Git revision: aabc30f3bd03f97326fb8596910b94639fea7575
Release Artefact: meta-gplv2-thud-20.0.4
md5: 478bd5348e9b64fde6df18a82f691fd3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.4/meta-gplv2-thu=
d-20.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.4/meta-gplv2-thud-20.0.4.ta=
r.bz2

- ---------------
 Known Issues
- ---------------
Bug 13273 - Systemtap doesn't work on beaglebone
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13273

- ---------------
Security Fixes
- ---------------
curl: Security fix for CVE-2019-5482
libsolv: Security fix for CVEs: <CVE-2018-20532, CVE-2018-20533, CVE-2018-2=
0534>
gnutls: Fix CVE-2019-3829 and CVE-2019-3836
glibc: Security fix for cve <CVE-2019-6488, CVE-2019-7309>
wget: Security fixes CVE-2018-20483
sqlite3: Security fix for CVE-2019-8457
perl: Fix CVE-2018-18311 to 18314
unzip: fix CVE-2019-13232
elfutils: CVE fix for elfutils
qemu: Fix 4 CVEs
pango: fix CVE-2019-1010238
patch: fix CVE-2019-13638
libxslt: fix CVE-2019-13117 CVE-2019-13118
libxslt: Cve fix CVE-2019-11068
python3: Fix CVEs
python: Fix 3 CVEs
binutils: Fix 4 CVEs
binutils: Security fix for CVE-2019-12972
binutils: Security fix for CVE-2019-14444
gcc: Security fix for CVE-2019-14250
libcomps: fix CVE-2019-3817
glib-2.0: fix CVE-2019-13012
dbus: fix CVE-2019-12749
curl: fix CVE-2018-16890 CVE-2019-3822 CVE-2019-3823
python3: fix CVE-2019-9740
patch: fix CVE-2019-13636


- ---------------
Fixes
- ---------------
build-appliance-image: Update to thud head revision
Revert "OpkgPM: use --add-ignore-recommends to process BAD_RECOMMENDATIONS"
build-appliance-image: Update to thud head revision
poky.conf: Bump version for 2.6.4 thud release
kernel-devsrc: check for localversion files in the kernel source tree
arch-arm64.inc: Lower the priority of aarch64 in MACHINEOVERRIDES
kernel.bbclass: fix installation of modules signing certificates
bitbake: cookerdata: Add mc conffiles hashes to cache hash
uninative: Update to 2.7 release
gnupg: Do not apply -Woverride-init guard for gcc >=3D 9
libgpg-error: Fix build with gawk 5.x
qemu: fix build issue on new hosts with glibc 2.30
json-c: Don't --enable-rdrand
oeqa/selftest/context: ensure log directory exists
linux-yocto/4.14: update to v4.14.143
patch: backport fixes
dhcp: Replace OE specific patch for compatibility with latest bind with ups=
tream patch
dhcp: drop lost patch
dhcp: fix issue with new bind changes
go: update to 1.11.13, minor updates
bind: upgrade 9.11.5 -> 9.11.5-P4
bind: update to latest LTS 9.11.5
qemu: add a patch fixing the native build on newer kernels
buildhistory: call a dependency parser only on actual dependency lists
bitbake: tests/fetch: Resolve fetch error in bitbake-selftest
YP Docs: Set up the August 2019 date for 2.6.3 release.
bitbake: fetch2: show warning when renaming the archive with bad checksum f=
ailed
bitbake: utils: Fix movefile() exception handling with python3

