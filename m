Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.21048.1590697220767184940
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 13:20:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FGU92x9R;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: 8U1cD1/qH/JyPK0lBIhzCPBuGk1fyRvUcJQr6Bb3x0uplEdbvimrx5oFkmtkEK21u1SGPfdZr0
 d5y6Dqa2+YVA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2020 13:20:19 -0700
IronPort-SDR: NwURP3wBj1nLjtTboULyrj+C01ZFrHjhLmA/Md9w4mXswwcEtQWZEiETO2qiTGMKjDxUVY49u1
 vS6Elw1D1iVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; 
   d="scan'208";a="469265257"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
  by fmsmga006.fm.intel.com with ESMTP; 28 May 2020 13:20:18 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 13:20:18 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX123.amr.corp.intel.com (10.22.240.116) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 13:20:18 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.51) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 28 May 2020 13:20:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HkGuuiP9jEu7iA8l3mqSiLnmLUFdqzik0E4FrbxcPPNOqnxPoNVZSEKXJJHmhuk3pwhkZyKBm8HqS7Umo56oIvlczuoxDYroESq1Ddm6qeOWe995wraO7+NmufNhOIQb4e4e8SQOFVtwhhfcb9qpDLWrCm9GIVB4SIzI27lgQZBeETff88cLvnJIMedFxXSqLNVSlMprjv/Bms2DzQoSTp2RhU7l46grsQYk+d5g7AH+i9BVEzUA2LnR6CTPLrq841xZy+8OriWXMsYAJBVuoGXuoGdO4UN94kSSst1DVGqMNt+UKbG3uMMsaybOmgh5Bh3ZzJmeq2G6b/URcVg70w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZBMKw/ewmrDBEMcQnT2nuTL0RBr1BZJ+2BWC7m6F04=;
 b=WecIyF4GHHXi6gxXSaq+lab7+jbxPhDrSCErxsjwgtQigGHsS7UqfUdkuSW9HBYrhO7VwS5I7oQlf5Xz1BwwZp7nuGcn5xts4o46hesMJVt1FeI1lqouxBqtmPePX1RGGStUFqUkaVMNu6Kv1ATS+WdTjFSpVVnvluzV22YdWXsbsdCeIpbCCtRR4bygyGicVODXO2oDfgfyo2dTiro/RYXlNw7XMxiy2fUbhNRU6g4onFxfAKpP2RQ+12ZRglMt69eTqdput/jNIwstopxPnLhxWDQmPwUGniJwWw1q4jiQICFVpMQgyh76dyrfYzzgJjoYiK1ZpSZ9yed2iiLQZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZBMKw/ewmrDBEMcQnT2nuTL0RBr1BZJ+2BWC7m6F04=;
 b=FGU92x9R5bNvA0cmHVnpQ7TAu8rL5qqvk7y3M3WFFHp8COv7NehLZ4EnhcrxiVTxaMC+PN7ZziJ4qxHiOfb6xP+Bw4PKa8oX+dwMln0CdcwI/hw/qrXHXMXgp8FaZkj1KEVRcMBMnLQuEYCB9YCdv2sjLNd4aggqVpwAQpT9kgg=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3398.namprd11.prod.outlook.com (2603:10b6:a03:19::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Thu, 28 May
 2020 20:20:16 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46%3]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 20:20:16 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.0.3 (zeus 22.0.3) Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.0.3 (zeus 22.0.3) Released
Thread-Index: AdY1G7wwo+izvn91RPSra2y9YBdbQQ==
Date: Thu, 28 May 2020 20:20:15 +0000
Message-ID: <BYAPR11MB27905DFA478ED19E4F2F2149888E0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.234.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31e8c96c-b844-4a25-6a5f-08d8034488d3
x-ms-traffictypediagnostic: BYAPR11MB3398:
x-microsoft-antispam-prvs: <BYAPR11MB3398EE7885CD3E51ACE6E9FE888E0@BYAPR11MB3398.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bwnCF9uiiSXlgDwAQPE9tgpFiuIS8vJcN+tOLWNqd5WR9eRhjsKLvHbRBFdPQer5WhfRLwXC+3MPiLu10xOtd+zaGlFFOrD1NC8oiDBtARRDWUDprIKddu9/I03HHth8S6jEKU9jkG0rr7OxresaQmCPUaf+Sv4ENVq/NSWgJQh9cZVPgGItj6u65h1WefE4bPMDi9z9U+7MUWEawobPzlFpzVG3MBC3ATNa3cULxBTy32Y6N9IMY/bYIqogKdbLHm7iKJyUMmk8Vt9txtA3Vle+81Pni6kKgMpLX0Ix7AvvqxyZNE8YGPYZPGEc7KIHRm1E8Flz8YGUTtBh19aw2zwAfxAM6E6evM81mnDZlXnBQPAHW74Oz66OOZCZgJdriDbGjeP7Ry9HGLnqbT586ENmWwfSRqvHglkCETMvD7mlrR/aUmE0d+7STp3nwVdJduovhFeCZglo4nkTvA5JMQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(396003)(39860400002)(136003)(366004)(376002)(346002)(186003)(2906002)(110136005)(8676002)(9686003)(316002)(64756008)(8936002)(66476007)(66446008)(76116006)(83380400001)(5660300002)(966005)(66946007)(66556008)(26005)(55016002)(7696005)(71200400001)(33656002)(478600001)(6506007)(86362001)(52536014)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: /fYIK43i6ovgeXZxufm6rjZ5uTUl/kY0LeKj8W8vcUBRTdJYKCXYJwRUhY1zLhMcgGl1TMlIjE6jIt9dM1GteExXYAQYbWrTl5I9NbY7eonBwr+TrtpfipUIGOW9Gl59VRagPebZWiiNrUIt+iK3rZ0aRoHxqYeSsAq4+G7LecHGP+iZN/fmVQ18kx+TavCp9yDC8T1ef9K2PCXXEzGmLK4IpEkhpozqzO5yZtja2YxM5lJ2o6uDtw4NorBAXGPAmuikf8rY3OK/qJWjmnHEsGaGYtOD7l8ielliEsVgMbYB3eyYAmqHRyMFfx4JFZ9mVqaG9rDaQm89hBvVcaibNPkh9qaxDizAMXA3M9PmgUJSL8VdYrMwwdYmsnFotFiVbQH1A6+NGcbaN8mOHWw1w0iECPifGsYzdSgnJBtMmdRR68J9PFQlrNN/65lLi1peCH+4l5S066b8LzwOzF9UoT8DH7VWkGEb/LpvnmuZZCJuzWFP5nURCneAM5xw3SnO
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 31e8c96c-b844-4a25-6a5f-08d8034488d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 20:20:15.8572
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ibSkfIoy1n9pUchFeK6jc/LrP77t9m1E2aSuUZsl5VXqI0oMQyHwwv6KwAQQmDJ2qm5UMRZ7XcTjToZL+KjZxWlwXMJPfikA5+aWxuc9+gI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3398
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.0.3 (zeus-22.0.3) Release is=
 now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/poky-zeus-22.0=
.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.3/poky-zeus-22.0.3.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com

--------------------------
yocto-3.0.3 Release Notes
--------------------------
--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: zeus
Tag: yocto-3.0.3
Git Revision: eac84e73e8d94610173c3bb3b6c6d74b58e44f60
Release Arefact: poky-zeus-22.0.3
sha: dc963c04e2a0658f8c1dff859b020611bf36bf4cde2f939f6cb7675ed19f834b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/poky-zeus-22.0=
.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.3/poky-zeus-22.0.3.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: zeus
Tag: yocto-3.0.3
Git Revision: 9bab7c1a29a58ba7f97e253e4e0ac167b77d0e65
Release Arefact: oecore-zeus-22.0.3
sha: 8389b9795dca3580a123e58353fd508778eed741d60bb820cc075554b4944b03
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/oecore-zeus-22=
.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.3/oecore-zeus-22.0.3.tar.bz=
2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: zeus
Tag: yocto-3.0.3
Git Revision: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
Release Arefact: meta-mingw-zeus-22.0.3
sha: 538fc3b098ac3b8727c1f612cb3b5cba81bb2ed32d61d3beeccdea8c94cf4932
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/meta-mingw-zeu=
s-22.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.3/meta-mingw-zeus-22.0.3.ta=
r.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: zeus
Tag: yocto-3.0.3
Git Revision: 0f4eecc000f66d114ad258fa31aed66afa292166
Release Arefact: meta-gplv2-zeus-22.0.3
sha: 01d9ad212536b2ac1993aa94d84d83d710bde5910b6dcc71767f9a34d23b3810
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/meta-gplv2-zeu=
s-22.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.3/meta-gplv2-zeus-22.0.3.ta=
r.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: zeus
Tag: yocto-3.0.3
Git Revision: 6836184ef5220488a1127413c7d2e523fc37e2e9
Release Arefact: bitbake-zeus-22.0.3
sha: 6225331c9c2f85b978d15cc8f72e4b794423919ccd24f6df7988012c8e4c2262
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.3/bitbake-zeus-2=
2.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.3/bitbake-zeus-22.0.3.tar.b=
z2

--------------
Contributors
--------------
Adrian Bunk
akuster
Alexander Kanavin
Alex Kiernan
Anuj Mittal
Armin Kuster
Bruce Ashfield
Changqing Li
Chee Yang Lee
Daisuke Yamane
Denys Dmytriyenko
haiqing
Jan Luebbe
Jeremy Puhlman
Joshua Watt
Julius Hemanth Pitti
Jain Sangeeta
Kevin Hao
Khem Raj
Lee Chee Yang
Li Zhou
Marek Vasut
Mark Hatle
Martin Jansa
Michael Halstead
Nathan Rossi
Nicolas Dechesne
Ovidiu Panait
Paul Barker
Rahul Chauhan
Richard Purdie
Ross Burton
Stefan Ghinea
Stephen Jolley
Tim Orling
Tom Hochstein
Trevor Gamblin
Vineela Tummalapalli
Wang Mingyu
Wenlin Kang
wenlin.kang@windriver.com
Yi Zhao
Zhixiong Chi

---------------
 Known Issues
---------------
Bug 13905: strace ptest failed.
Bug 13906: valgrind ptest failed.
Bug 13907: zlib ptest failed.

These bugs were single ptest failures which appear to be intermittent in na=
ture.
In a rerun those test passed. As such we don't believe they are regressions=
 affecting
the release but runtime testing issues.

---------------
Security Fixes
---------------
systemd: Fix CVE-2020-1712
qemu/slirp: fix CVE-2020-7211
qemu: fix CVE-2020-7039
git: Security Advisory - git - CVE-2020-11008
git: Security Advisory - git - CVE-2020-5260
glibc: CVE-2020-1751
glib-2.0: fix CVE-2020-6750
e2fsprogs: fix CVE-2019-5188
screen: fix CVE-2020-9366
icu: fix CVE-2020-10531
bluez: fix CVE-2020-0556
libarchive: Fix CVE-2020-9308
aspell: CVE-2019-20433
sqlite: fix numerous CVEs
libpcre2: fix CVE-2019-20454
qemu: fix CVE-2019-20382
glibc: CVE-2020-10029
virglrenderer: fix multiple CVEs
ruby: fix CVE-2019-16254
libxml2: Fix CVE-2019-20388
libxml2: fix CVE-2020-7595
ppp: Security fix CVE-2020-8597
ncurses: add CVE_VERSION
qemu: Fix CVE-2020-1711


---------------
Fixes
---------------
Documentation: Prepared for 3.0.3 release
resulttool/resultutils: Fix unicode error handling
build-appliance-image: Update to zeus head revision
poky.conf: Bump version for 3.0.3 zeus release
openssl: upgrade 1.1.1f -> 1.1.1g
gnutls: upgrade 3.6.12 -> 3.6.13
gnutls: upgrade 3.6.11.1 -> 3.6.12
gnutls: upgrade 3.6.8 -> 3.6.11.1
python: Upgrade 2.7.17 -> 2.17.18
gnupg: upgrade 2.2.17 -> 2.2.19
qemu: Add PACKAGECONFIG for glusterfs
cve-update-db-native: clean DB if temporary file exist
apt-native: don't let dpkg overwrite files by default
prservice.py: fix do_package with newer Python in Ubuntu 20.04
qemu: Replace stime() API with clock_settime
python3-native: Should not search the system for headers/libraries.
openssl: update to 1.1.1f
openssl: Upgrade 1.1.1d -> 1.1.1e
openssl: recommend cryptodev-module for corresponding PACKAGECONFIG
inetutils: Use alternatives to avoid manpage conflict
wic: align layer plugin path
pseudo: Ensure we use our own libsqlite
cve-check: CPE version '-' as all version
kernelsrc.bbclass: Fix externalsrc support
perf: Fix externalsrc support
kernel-yocto.bbclass: Support config fragments with externalsrc
lib/oe/package_manager: don't try to rm /var/lib/opkg
lib/oe/package_manager: avoid installing provided packages via apt
lib/oe/package_manager: collect provided package names when using debs
lib/oe/package_manager: fix handling of last package
lib/oe/package_manager: make sure to not remove packages in apt install
busybox: on upgrade save busybox if it is the last shell
lttng-modules: update to 2.10.14
waffle: no need to depend on target python3
u-boot-tools: Split out inc file
wic/direct: reserve 2 sector for extended partition
linux-yocto/4.19: update to v4.19.107
security_flags.inc: fix flags missing from SDK toolchain
e2fsprogs: backport upstream patch
nfs-utils: Disable statx if using glibc emulation
sanity: check for more bits of Python
python3: Upgrade 3.7.6 -> 3.7.7
cve-check: fix ValueError
cve-check: show whitelisted status
maintainers: Add entry for buildtools-extended-tarball
dhcp: Fix REQUIRE(ctx->running) assertion triggered on SIGTERM/SIGINT
gcc-target.inc: Prevent sysroot from leaking into configargs.h
gcc-cross.inc: Prevent native sysroot from leaking into configargs.h
gcc-cross-canadian: A missing space in an append caused an invalid option
wic/engine: lets display an error not a traceback
dummy-sdk-package: Add DUMMYPROVIDES_PACKAGES
cve-check: fail gracefully when file not found
linux-yocto/5.2: backport perf build fix for latest binutils
yocto-uninative.inc: version 2.8 updates glibc to 2.31
linux-yocto/5.2: update to v5.2.32
toolchain-shar-extract: ignore timestamp on decompress
liberror-perl: upgrade 0.17028 -> 0.17029
perl: Fix makefile race causing configuration differences
perl: Fix encode module reproducibility issues
perl: fix failing ptests
perl: improve reproducibility
libmodule-build-perl: fix ptests
perl: install typemap and other extutils metadata as part of perl-core
perl: package Config.pm from arch directory into the main perl package
perl: update to 5.30.1
linux-yocto/5.2: update to v5.2.29
openssh: backport patch to fix "cert not yet valid" test
xserver-nodm-init: Fix the start failure for non-root user
qemurunner.py: add try/except for pid handling race
glibc-testsuite: Exclude this recipe from world builds
glibc-testsuite: Remove the do_install task
bitbake: lib/bb/utils.py: Preserve ownership of symlink
