Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.3274.1608066792011973736
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 13:13:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=U93k247F;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: MfTEHuwqnCYJVwOnqzIsWCl4PkPmQ4AVyALU9to3HYZxDfjmfoHAGAY1x3rsS8gnbu7bbLOXXX
 zn4zE+FqkOXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="175060630"
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; 
   d="scan'208";a="175060630"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2020 13:13:10 -0800
IronPort-SDR: 1oqzUz74AxZIQqf18t/Js5X6Cp7Kv1g3yIeUoIIG8xQXoWdxcko/reey/G/V0XUAkVvrRHozBh
 vXi0a2RzeNgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; 
   d="scan'208";a="556499263"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by fmsmga006.fm.intel.com with ESMTP; 15 Dec 2020 13:13:10 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 13:13:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 15 Dec 2020 13:13:09 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 15 Dec 2020 13:13:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLh13PDSX57llwrAxmhMskSlmZK4e8coiB4X/8Yu7rqoN9BDun2HX79Q40ZuWHQY+QEvjWpntKfdtz42skXLClI9oL00YnZmHiCv8DDn2GJIZCbfP8x5BMKL3tsAJmHyXxooDrnIkGH+7r5jumkYNbMg+ReiC05A9TVmvUj6n4awp8EUf4h0xjaz3fEF5t7evvY2sFnBY6wrDM0Y6WPgsF9pCwtf0sSqaFLFda1bGCXcmbtdjva1tYmHI9Y5l8lFrWpQaJaHeVDVOHt75T35KJ2/6ajjawvDK+VvmJrYtgiMLNNCv3MvV70q9xdEzd2vGf1qFPHgirRH6CJnEdkX+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fvg9FsejHLKDcXOwdDOsKvcP39e9RTlwzyHeANJ39NI=;
 b=fF4w8FIlY16KhdV8WGurMc6+4PG1otJNtZF6ZIdRierzT9doAnwCMhuUoOHzQcxnQBieYGwMeJwtSS6Gqt6gvuwTUJMzGfdQdXruySrlEzXWUgFbsII+yHfL8vWKzL2Bw9Uq91mzQd4+gSdaEkKEzZLwf8AkhKtPmWC7taeQbC1QrjiVcZCBemHsFWRJX6tH+4bpHEz67qYhcOW2GI31EM41hCzg7biqMuEdbPnqDFIOKMBvMVODl8GXFh4cY4Zp7TCgLGyIK0aPOF3O4xLsQMQhn7WQLimsNilvqjDJ1eFAk3K+PfDlfeuOtEqhrOP05FMb4DzzYtCkDuJQgyYgIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fvg9FsejHLKDcXOwdDOsKvcP39e9RTlwzyHeANJ39NI=;
 b=U93k247FyeJKUFjaZWxOTDed70gG0Z+zrC8qX4XnOiV6Hwh/7y6iXzFqCeL2xM2LPqTBs8gpF/N4JHq/xhUUgOEznuuLWEd+1+UwMYT9MasIXLp6WGL4EY77ImCSLZK1MYCfe+l7i071jVDY5BiMcvA/GzIz2b7SiHADsTDOiz8=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB2712.namprd11.prod.outlook.com (2603:10b6:a02:bf::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.29; Tue, 15 Dec
 2020 21:13:07 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca%7]) with mapi id 15.20.3654.025; Tue, 15 Dec 2020
 21:13:07 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1) is
 Released
Thread-Index: AdbTG4rDkRnyxgcZTbap8GFLmyVcLA==
Date: Tue, 15 Dec 2020 21:13:07 +0000
Message-ID: <BYAPR11MB279089CF30BA5D2240349ECE88C60@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.101.253.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28cf1d80-5a76-4816-5f25-08d8a13e381a
x-ms-traffictypediagnostic: BYAPR11MB2712:
x-microsoft-antispam-prvs: <BYAPR11MB2712ED9090FC8E2DEE82AABE88C60@BYAPR11MB2712.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c2ifmkaV6nCZU1+tiVxt50OcMdjy+BkOUnl09zy6QPbbakoXzrpNt6mUFCPz8jtCgK81dlW/n97wyTMWHfthHJY5GGD0/AHWE9aOc50enBYr8qFU1EJFgFtUICpc3xjKwSeKHmesUDTMzyTRbY6xziwdBbFuSPHDX4zIp2lpJ+j/wtrlFNSiIVK/lnzwxw/M7Juzm2BBgyJGovS7dP14/ccQqHGnLAKokU4oXIewX2Yz/slWhvDkDs9lfJ0GKYE3mYKhOKPpEUEqIlNgaN/wkjZlNIlSXgew6u7jvF5VPB1MpK10o++IjPtPEun+TbfrCmjQJWDrtSO/kKM9W8HP7uV8xoOQymeH/9XuzgWkmidy9WPndXGETXeb5dhLwD7cQ4ns5CFQ8ql7V1OT6ier2cHt5T5mGBQWm11Z4ANoQXTUzYnP+NN8whmqSLHoQK61
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(39850400004)(136003)(396003)(366004)(316002)(66446008)(966005)(26005)(478600001)(55016002)(7696005)(86362001)(110136005)(76116006)(64756008)(66946007)(71200400001)(66556008)(66476007)(5660300002)(33656002)(30864003)(83380400001)(6506007)(9686003)(52536014)(8676002)(2906002)(186003)(8936002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Cri/PDY8kC+fPJedp8cYVZIqu2702+pjXSpouv937EJEGiJNnIW2Bin4WAU3?=
 =?us-ascii?Q?O5Pa3y+dSQ2QMEj9NSmPXMPMiIcIP+kuGXX9wYzKnBPCgH6c4/1UhJH69TTX?=
 =?us-ascii?Q?sinNoAo6/pQzBU0jP7NlAcMQzD5N/rgCFKIeTV0R6GfQgqaLdpYmC/07Uv6l?=
 =?us-ascii?Q?0PTtp50fq98giCMBMZ8jO2ZimrG/MJDXDBUff7IszFcs68tZ5XEAi/KBAi97?=
 =?us-ascii?Q?93+L9zAajsfpRKG5gcRiY+Cvpa/V6U3AClbtpREdi0u0PBChYetqNcW2F5rQ?=
 =?us-ascii?Q?Nx5E98dO+pXS+4j3hkuLYjdocwsjGyyUU0kuw1UmgNUJmEyPEwTFZtd6u1Zm?=
 =?us-ascii?Q?AbzF0cQVTPJ5aj22l8sqPQSgQVXJtf7XiSBEuKOVjELwH8rKF5oCAbMOl6nZ?=
 =?us-ascii?Q?Aketld2D10nqdKulNQCWASg3o4cnNbC6LL/4Fxbb5Ap79/64NcmQfEQhhiw7?=
 =?us-ascii?Q?bbxo85SaL3Myyq7wDAfw4kdooAu4qjnPSUxepQgH0tTOFW9bK/v1zYKRzc66?=
 =?us-ascii?Q?3OZQQT+XDaHD9WbcKicuaM0cNEa8Thi03bGKA3QbdqEZSlOzCd7fV+fySf3p?=
 =?us-ascii?Q?jab1cHTwvTmIR5gAJaexAa059APSt4y+6am+NyqhElNGZ17UZDlzd8zz4HEF?=
 =?us-ascii?Q?vFHntlDSertwRYW2R4nkH52UeIwxdOFkcUc7v+orShfn75/2/RDA1nplGwUa?=
 =?us-ascii?Q?SOzK5fwF+Qz2I4WnWfCeAjlgsfhhlkwgq3/F1bZ1kMIit3fo6B+lpi6H7kKt?=
 =?us-ascii?Q?ObVPKJpdsmWMa97S5SE/dPNF95RLpxcNHBYeERb0iZj+0/5+gkSmEMwsthxV?=
 =?us-ascii?Q?82pCt5doJVrM/MdwIcrxvkxf8GaMEZKuntf1B+DSJuqRgCYUoBIWV9/koAs5?=
 =?us-ascii?Q?SZ+OU+9uLAZTSeM+coScuKoo5gbCoq0Gh3ETFa/bO3A48WOx7JKJRoOpP0+T?=
 =?us-ascii?Q?0iU+c9kqiWw1JGKpx87nBCVZ9rgRBaviQhx5udrlf6c=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28cf1d80-5a76-4816-5f25-08d8a13e381a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2020 21:13:07.3532
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ke8Hznn+Q7vOzKAegyvkcfAeTJ9aEh8eKet8Ttpi/DE9RuU/MLvjpscYt9FDd2Ucrd7YG6rtL9bvDsNJeSInAzCI/NvCBa+ks8Ziz6gMl8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2712
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.2.1 (gatesgarth-24.0.1) Rele=
ase is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/poky-gatesgart=
h-24.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/poky-gatesgarth-24.0.1.ta=
r.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com


--------------------------
yocto-3.2.1 Release Notes
--------------------------

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: gatesgarth
Tag: yocto-3.2.1
Git Revision: 943ef2fad8428f002850e3655a3312e13d0dcb2c
Release Artefact: poky-gatesgarth-24.0.1
sha: a0dce009fa33f1d655f2c5ecdc46b434c7ed6a64a904ca8ea1617c19816a37bf
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/poky-gatesgart=
h-24.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/poky-gatesgarth-24.0.1.ta=
r.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: gatesgarth
Tag: 2020-10.1-gatesgarth
Git Revision: d11ab9cb77bf91f939035417b757773a5d80242c
Release Artefact: oecore-gatesgarth-24.0.1
sha: e49a5ebbb3c9bdddebce33f3ed18acba498122148cbc60df2439954e207c19d2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/oecore-gatesga=
rth-24.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/oecore-gatesgarth-24.0.1.=
tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: gatesgarth
Tag: yocto-3.2.1
Git Revision: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
Release Artefact: meta-mingw-gatesgarth-24.0.1
sha: d42b851d0c314533380e66c140f8ad2a33737f2984f0213f604fe684a20f1569
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/meta-mingw-gat=
esgarth-24.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/meta-mingw-gatesgarth-24.=
0.1.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: gatesgarth
Tag: yocto-3.2.1
Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d43
Release Artefact: meta-gplv2-gatesgarth-24.0.1
sha: f43941fee62bccb5dee55809ab8c65d60eae82cf06cd05f3b150e93efaff86b6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/meta-gplv2-gat=
esgarth-24.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/meta-gplv2-gatesgarth-24.=
0.1.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: gatesgarth
Tag: 2020-10.1-gatesgarth
Git Revision: fec2b85689bba1d26ad6f376bc11cc29bb27cbe5
Release Artefact: bitbake-gatesgarth-24.0.1
sha: f2a41c89f0817f72c0f330825e5bcf76ee6ba52179807d6cd229e3b88a677a39
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/bitbake-gatesg=
arth-24.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/bitbake-gatesgarth-24.0.1=
.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: gatesgarth
Tag: yocto-3.2.1
Git Revision: b9d69c76561eb6708cd217126a5ed08b52315fa5

---------------
Contributors
--------------
Alexander Kanavin
Alistair
Anuj Mittal
Bruce Ashfield
Chee Yang Lee
Denys Zagorui
Diego Santa Cruz
Fedor Ross
Gratian Crisan
He Zhe
INC@Cisco)
Jose Quaresma
Khem Raj
Konrad Weihmann
Lee Chee Yang
Loic Domaigne
Mark Jonas
Matt Madison
Max Krummenacher
Michael halstead
Mingli Yu
Nathan Rossi
Nicolas Dechesne
Paul Eggleton
Quentin Schulz
Richard Leitner
Richard Purdie
Robert P. J. Day
Ross Burton
Sangeeta Jain
Stacy Gaikovaia
Stephen Jolley
Steve Sakoman
Vineela Tummalapalli
Vyacheslav Yurkov
Wonmin Jung
Yann E. MORIN
Yi Zhao
Yongxin Liu

---------------
 Known Issues
---------------
Failure in ptest: valgrind.drd and valgrind.helgrind


---------------
Security Fixes
---------------
gstreamer1.0-plugins-base: set CVE_PRODUCT
gstreamer1.0-rtsp-server: set CVE_PRODUCT
sqlite3: add CVE-2015-3717 to whitelist
python3: add CVE-2007-4559 to whitelist
qemu: fix CVE-2020-24352
python3: fix CVE-2020-27619
libproxy: fix CVE-2020-26154
openssh: whitelist CVE-2014-9278
freetype: fix CVE-2020-15999, backport from 2.10.4
grub: clean up CVE patches
ruby: fix CVE-2020-25613
grub: fix several CVEs in grub 2.04


---------------
Fixes
---------------
build-appliance-image: Update to gatesgarth head revision
build-appliance: Correct branch to gatesgarth
build-appliance-image: Update to gatesgarth head revision
poky.conf: bump version for 3.2.1 release
releases.rst: add gatesgarth to current releases
sphinx: releases: add link to 3.1.3
documentation: prepare for 3.2.1 release
lttng-modules: Backport a patch to fix btrfs build failure
lttng-modules: update 2.12.2 -> 2.12.3
distutils-common-base: fix LINKSHARED expansion
binutils: Fix linker errors on chromium/ffmpeg on aarch64
e2fsprogs: Fix a ptest permissions determinism issue
fs-perms: Ensure /usr/src/debug/ file modes are correct
valgrind: helgrind: Intercept libc functions
eudev: remove bashism to be compatible with dash
sysvinit: remove bashism to be compatible with dash
cve-check: show real PN/PV
glib-2.0: RDEPEND on dbusmock only when GI_DATA_ENABLED is True
linux-yocto/5.4: update to v5.4.78
linux-yocto/5.8: ext4/tipc warning fixups
linux-yocto/5.8: perf: Alias SYS_futex with SYS_futex_time64 on 32-bit arch=
es with 64bit time_t
linux-yocto/5.4: perf: Alias SYS_futex with SYS_futex_time64 on 32-bit arch=
es with 64bit time_t
kernel-devsrc: improve reproducibility for arm64
license_image.bbclass: use canonical name for license files
linux-firmware: rdepend on license for all nvidia packages
roofs_*.bbclass: fix missing vardeps for do_rootfs
weston-init: Fix incorrect idle-time setting
kernel: Set proper LD in KERNEL_KCONFIG_COMMAND
kernel: relocate copy of module.lds to module compilation task
kernel: provide module.lds for out of tree builds in v5.10+
linux-yocto/5.4: update to v5.4.75
linux-yocto/5.8: update to v5.8.18
linux-yocto/5.8: config cleanup / warnings
linux-yocto/5.4: config cleanup / warnings
linux-yocto-dev: move to v5.10-rc
linux-yocto/5.4: update to v5.4.73
linux-yocto/5.8: update to v5.8.17
linux-yocto/5.4: update to v5.4.72
linux-yocto/5.8: update to v5.8.16
linux-yocto/5.4: update to v5.4.71
linux-yocto/5.8: update to v5.8.15
bluez5: update to 5.55
bitbake: Add missing documentation Makefile
diffstat: add nativesdk to BBCLASSEXTEND
gstreamer1.0: warn the user when something is wrong with GstBufferPool
libbsd: Remove BSD-4-Clause from main package
layer.conf: fix syntax error in PATH setting
gawk: Avoid using host ar during cross compile
lrzsz: Use Cross AR during compile
binutils: reproducibility: reuse debug-prefix-map for stabs
testimage: print results for interrupted runs
oeqa/core/context: initialize _run_end_time
oeqa/core/context: expose results as variable
conf-notes.txt: mention more important images than just sato
clutter-gst-3.0: do not call out to host gstreamer plugin scanner
kernel-module-split.bbclass: identify kernel modconf files as configuration=
 files
alsa-utils: Fix license to GPLv2 only
libdnf: Fix license as it contains 'or later' clause
ptest-runner: Fix license as it contains 'or later' clause
update_udev_hwdb: clean hwdb.bin
apt: remove host contamination with gtest
recipes-core/busybox: fixup licensing information
common-licenses: add bzip2-1.0.4
qemuboot.bbclass: Fix a typo
libsdl2: Fix directfb SDL_RenderFillRect
libsdl2: Fix directfb syntax error
gst-validate: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-python: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-omx: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-rtsp-server: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-vaapi: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-libav: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-ugly: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-bad: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-good: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-base: Update 1.16.2 -> Update 1.16.3
gstreamer1.0: Update 1.16.2 -> Update 1.16.3
gstreamer1.0: Fix reproducibility issue around libcap
poky.yaml: updates for 3.2
poky.yaml: remove unused variables
conf: use bitbake 1.48 branch for intersphinx
conf: update for release 3.2
adt-manual: delete obsolete ADT manual, and related content
scripts/buildhistory_analysis: Avoid tracebacks from file comparision code
deb: replace deprecated apt force-yes argument
netbase: Add whitespace to purge bogus hash equivalence from autobuilder
netbase: update SRC_URI to reflect new file name
init-ifupdown: Merge all interface files for differnet qemus
init-ifupdown: Define interfaces file for riscv emulators
sstatesig: Log timestamps for hashequiv in reprodubile builds for do_packag=
e
webkitgtk: Disable gold linker and JIT on riscv
bitbake.conf: Exclude ${CCACHE_DIR} from pseudo database
README: "yocto-project-qs" -> "brief-yoctoprojectqs"
ref-manual/ref-variables: "PACKAGE_FEEDS_ARCHS" -> "PACKAGE_FEED_ARCHS"
dev-manual: Add a note about prelink changing prebuild binaries
ref-manual: add migration info about MLPREFIX changes
ref-manual: add migration info for image-artifact-names
ref-manual: add IMAGE_LINK_NAME
ref-manual/faq: Add entry for why binaries are changed in images
ref-manual: add migration section for 3.2
ref-manual: add IMAGE_NAME_SUFFIX variable
ref-manual: add IMAGE_VERSION_SUFFIX variable
ref-manual: add PSEUDO_IGNORE_PATHS
ref-manual: QA check updates
ref-manual: fix for features_check class change
ref-manual: add reference anchors for each QA check
dev-manual/dev-manual-common-tasks: fix typos and use extlinks
docs: kernel-dev-faq: update outdated RDEPENDS_kernel-base
docs: kernel-dev-common: add .patch file extension to SRC_URI files
docs: kernel-dev: fix typos, highlights and links
