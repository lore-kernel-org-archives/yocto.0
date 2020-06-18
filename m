Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.2250.1592440777484275271
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 17:39:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=bxb8aFMa;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: 3dRnqM6t2CbrsFZ/knwxBmarqInf1WgVA9rWe5cgkb0gpqJ1JAhXI3nIUFmiIFkE6Zgjbhxz14
 0C1rhpDhecSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2020 17:39:35 -0700
IronPort-SDR: ZffSmdxurURjanAboT+KmWwNeyT62xlUI3TUd58azRUDabIsH7lTsJqptkKZGGNrv92cwl03Zf
 IdZzIzs6n/+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; 
   d="scan'208";a="261873038"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
  by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2020 17:39:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jun 2020 17:39:35 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 17 Jun 2020 17:39:34 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 17 Jun 2020 17:39:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jun 2020 17:39:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jgg6AsLAczXrkg6RfSci9hwkxvwNJiwR4DTAubsvDhrKVUTxjWvQQSe5lN39MnwLa/1ApMa/4IJxV8i2go1Lq2yx+x7wXi87Ef/yt7pjExiPxeZJjCYMzr2/YOz6eS+AiOYogjRqYKODOoib78ES5kAu8A/pa6PZ6tkXL+YHHI2Wuv2GoQWyW964xRDc7laCrK+ix8Vcdwp/t9i31q3DiV1JVWPYAFo7hS3NEQztVWhTkWL+04SqL/nd+6qt6Gam8E+qh/wh8HqMf7/Gv1RPFvX/jXbD39IOt3SygthH/Lyf+q+CF8XnJToZzeMwGl3ilrkoj8SA3gW8qj7ofRI0hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AVLLh3jnwpUEqgIHqjomixCD7d77X715Q5pwct9w4Pg=;
 b=G6V4R0ZZozN6SlEExFiUpiGqkFv0svXOYRSutiAq40i9NFC+mctkQuI+uIhrWkoxXKR/v5Xym61rp2nl/P4pWuXHM9va6SZDBhAHETZOoDN1MFFGqxGmvQgwCxDnft6mBVvyFv5OTUS/WRWPH3R37Bp9pY6CePJr1TF8j4T15y4uWEH3VvNNBnjzu686OqD6Zobw/9CQrKifI6lkM65JwQsF69cJ+Nu6ldga3wKvoDQLDOhcAxKmUoUAnIM+74Yuu4QesocUgWc7BB6M300aW6ateYcK4+SD6T5BdfjiqQJo1VIou+6ca+dlxLMowMS2XwxSnTQWRAjrjgmgPYSDdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AVLLh3jnwpUEqgIHqjomixCD7d77X715Q5pwct9w4Pg=;
 b=bxb8aFMaVoIRGNJlgWIwg6vAuSwlxBES1OCMnmZC/TCcAMis8NUfHLlHPS3LO13UaXpTdnluca+9Up4lvCP6bH+g39Zg8+Ahte81FjcH4/f4r6WOH39LfrsrjsP0vxKAfX7PSpBltLPOltu3JseDdd0w9SJpG8+SaKllxf7gaMo=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3526.namprd11.prod.outlook.com (2603:10b6:a03:88::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.25; Thu, 18 Jun
 2020 00:39:33 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46%3]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 00:39:33 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.1 (dunfell 23.0.1) Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.1 (dunfell 23.0.1) Released
Thread-Index: AdZFCCMas1IaZXIXTjGyqO7LH0709Q==
Date: Thu, 18 Jun 2020 00:39:32 +0000
Message-ID: <BYAPR11MB279005CE7148EC2AF363A8F5889B0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.48.134.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 930a2d9c-0863-444f-e794-08d8132011c4
x-ms-traffictypediagnostic: BYAPR11MB3526:
x-microsoft-antispam-prvs: <BYAPR11MB35268A9000709E41864B45B4889B0@BYAPR11MB3526.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gi5BaS3phWWWfHuQ3b6PIh5PNyyLyfnUKvyiB15NghRDYPO/3dR5DYUpckE+CSNLeII6qURHc9Osg/UNRuvOUUHZbcMM5rPLtlc8/hiVIiXxsq3zaj3N6q9yoldaBZl6xvEYRNKgoa3vPsBWQg0inYWKZwW7J4y2wBD5GV84Yo2ICKQx/69CWQdbK/eOE3bNvicyR0/wMLYOC5NOrjTXDOOICWeCHMDJ6Aw7KTgKPEMsrzyL7n8jxwRGFix1w9Tr4EnADb/8L549e17mTglwFGWOO0ItOX23kKWh+i9fvfQs91AwI9JEURHKfdO/N1ERZYi7lAfeXojNJyROSJpMwgpznpXjfYXqKpfKz2tu9t44BDA/MhqLDJboT4C3eU2gZXjJ/godq+XS9FtLHdVuJfkzQYJi0ZZEQ1En7x8gX/e6vJEEHmiDQpvmWG8ywcr7aahkDDf55UsRE/ddIpzgWuHbz0ku4n3IRC7orlgbTQc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(396003)(39860400002)(346002)(376002)(366004)(83380400001)(5660300002)(478600001)(66574015)(316002)(26005)(2906002)(55016002)(110136005)(7696005)(71200400001)(8936002)(30864003)(6506007)(52536014)(76116006)(186003)(66556008)(33656002)(86362001)(966005)(8676002)(66946007)(66476007)(64756008)(66446008)(9686003)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: sS/WYkPB5VNdiFQR+n3Qnoe4HDj++kZWtFJsU7GBwvcsJxhIwPbXq3AUieEoYkOMNHHgCvvIdBMR5eKPIzC/4782TntecFSIMEfl2AnRx4CFzsM07AqCHrWXyY4cZEQ3vVy32mVlXDj0QmpsXcdrneeM34NlUHawlv25NZURf4dFYSh7qR6KBfClqhn9S1aVf66yTEIoGZm2sZmUStP0K7878MzgR+tD5/gJEqnFjJNkkQeN1YTdtKwXqbEY6SDcUprTJWRiwrZ139nU4tXJq9a4DFI/2w+fH8BYFz2Cba4MKvdIsaePBSaSWSprcDkDLxjLUTY0T+kUIo0BWQ158ax58bU+VL7nTjDC8u/TohRSTcMKH0Lto759FZqZd+PEA27LaLOrQfVbctLK6pRrZbg2dCwq15ZVLAYBzRa2HPlMJ+LodMI2jE/6RrBNC80YmNtHJeGtE0aNlnPdX0pTMlctDOhIYSH48Y8gsDDdlQMp+gr+MXLPKa54Zcmr0v/H
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 930a2d9c-0863-444f-e794-08d8132011c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 00:39:32.9963
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JhMJicJ+RxdSPAMCs+PQMt9CuAWzCOjJsda7L2k5JMlMGdpJjc0RZ4FBOlYJPPBqluPQdx1c5sBytANAQYDdZXz6enjJAAvt+CcXJ2PiOyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3526
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.1 (dunfell-23.0.1) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/poky-dunfell-2=
3.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.1/poky-dunfell-23.0.1.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com

--------------------------
yocto-3.1.1 Release Notes
- --------------------------


- --------------------------
 Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.1
Git Revision: febbe2944c0c4a04b85fa98fdc261186115954d8
Release Artefact: poky-dunfell-23.0.1
sha: 22c2c5c729851978c542bb242340e32e6778958f1a39a4e0f237285f67400072
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/poky-dunfell-2=
3.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.1/poky-dunfell-23.0.1.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.1-dunfell
Git Revision: 6fa967f194edd314c9026c80f8d93360ac6d9efa
Release Artefact: oecore-dunfell-23.0.1
sha: fcc71dcdbe5cf17bcf1a006cf175d398b6aed02c5bf73c8ef93a9d37d5ddd4f8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/oecore-dunfell=
-23.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.1/oecore-dunfell-23.0.1.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.1
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.1
sha: 85774708f9a4253236dda086cd2ead7126513eb5898f76f185af8071e75461e8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/meta-mingw-dun=
fell-23.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.1/meta-mingw-dunfell-23.0.1=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.1
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.1
sha: 980ef77b68ded9e476774af9ffd51348fdcb1f3f0092c101862970b19031eded
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/meta-gplv2-dun=
fell-23.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.1/meta-gplv2-dunfell-23.0.1=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: 2020-04.1-dunfell
Git Revision: 6cc09fa33131f71a3fd0e336ff07a4186b41bf8f
Release Artefact: bitbake-dunfell-23.0.1
sha: 176d010d2461d428101eb47f65748845122910dd8041093a4bf308a4f9c6c217
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/bitbake-dunfel=
l-23.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.1/bitbake-dunfell-23.0.1.ta=
r.bz2

- ---------------
Contributors
- ---------------
Adrian Bunk
Alejandro Hernandez
Alexander Kanavin
Alex Kiernan
Andrew Geissler
An=EDbal Lim=F3n
Anton Eliasson
Benjamin Fair
Bruce Ashfield
Changqing Li
Denys Dmytriyenko
Domarys Correa
Drew Moseley
Gregor Zatko
hongxu
Hongxu Jia
Jacob Kroon
Jain Sangeeta
jan
Jan Luebbe
Jan-Simon Moeller
Jeremy Puhlman
Joe Slater
Joshua Watt
Kai Kang
Khem Raj
Konrad Weihmann
Lee Chee Yang
Marek Vasut
Mark Hatle
Mark Morton
Maxime Roussin-B=E9langer
Maxime Roussin-B?langer
Michael Halstead
Mingli Yu
mmorton
Nicolas Dechesne
Paul Barker
Paul Eggleton
Peter Kjellerstedt
Pierre-Jean Texier
Quentin Schulz
Richard Purdie
Robert P. J. Day
Robert Yang
Sakib Sajal
Steve Sakoman
Stephen Jolley
Tim Orling
Trevor Gamblin
Vyacheslav Yurkov
Wang Mingyu
Yeoh Ee Peng
Yi Zhao
zhengruoqin

- ---------------
 Known Issues
- ---------------
N/A


- ---------------
Security Fixes
- ---------------
libexif: fix CVE-2020-13114
bind: fix CVE-2020-8616/7
qemu: fix CVE-2020-11869
webkitgtk: update to 2.28.2 to fix multiple CVE's
sqlite: backport CVE fixes
icu: CVE-2020-10531
python3: fix CVE-2020-8492


- ---------------
Fixes
- ---------------
build-appliance-image: Update to dunfell head revision
build-appliance: Update branch to point at dunfell
build-appliance-image: Update to dunfell head revision
poky.conf: Bump version for 3.1.1 dunfell release
bitbake: toaster-requirements.txt: require Django 2.2
bitbake: bitbake-user-manual-metadata.xml: fix a minor error
bitbake: doc: More explanation to tasks that recursively depend on themselv=
es
bitbake: doc: Clarify how task dependencies relate to RDEPENDS
bitbake: user manual: properly tag content as <replaceable>
bitbake: docs: delete reference to obsolete recipe-depends.dot
Documentation: Add 3.1.1 version updates missing from previous commit
layer.conf: Bump OE-Core layer version
python3-pyelftools: Upgrade 0.25 -> 0.26
python3-pycryptodome(x): Upgrade 3.9.4 -> 3.9.7
pyelftools: Import from meta-python
pycryptodome: Import from meta-python
linux-yocto/5.4: update to v5.4.43
linux-yocto: gather reproducibility configs into a fragment
linux-yocto/5.4: temporarily revert IKHEADERS in standard kernels
linux-yocto-rt/5.4: update to rt24
linux-yocto/5.4: update to v5.4.42
kernel/reproducibility: kernel modules need SOURCE_DATE_EPOCH export
linux-yocto/5.4: update to v5.4.40
linux-yocto/5.4: update to v5.4.38
qemuarm: check serial consoles vs /proc/consoles
sstate.bbclass: When siginfo or sig files are missing, stop fetcher errors
make-mod-scripts: Fix a rare build race condition
qemurunner: fix ip fallback detection
libubootenv: Remove the DEPENDS on mtd-utils
terminal.py: do not stop searching for auto
resulttool/log: Add ability to dump ltp logs as well as ptest
resulttool/report: Remove leftover debugging
archiver.bbclass: Fix duplicated SRC_URIs for do_ar_original
sanity.bbclass: Detect and fail if 'inherit' is used in conf file
oeqa/concurrencytest: don't delete build directory for failed tests
checklayer: Skip layers without a collection
cve-check: Run it after do_fetch
Documenation: Prepared for the 3.1.1 release
ref-manual: delete long-unused comments in variable glossary
ref-manual: Remove long-dead PACKAGE_GROUP variable
ref-manual: typo "SSTATE_MIRROR" -> "SSTATE_MIRRORS"
ref-manual: IMAGE_TYPES, add tar.zst, delete elf
ref-manual: fix excessive command indentation
avahi: Don't advertise example services by default
wireless-regdb: Upgrade 2019.06.03 -> 2020.04.29
git: Upgrade 2.24.1 -> 2.24.3
file: add bzip2-replacement-native to DEPENDS to fix sstate issue
testresults.json: add duration of the tests as well
base/insane: Check pkgs lics are subset of recipe lics only once
libubootenv: Depend on zlib
make-mod-scripts: Fix dependence error.
linux-firmware: Update to 20200122 -> 20200421
recipes-kernel/linux-firmware: Add adreno-a630 firmware package
recipes-kernel/linux-firmware: Add wlanmdsp.mbn to qcom-modem package
python3-setuptools: add the missing rdepends
archiver.bbclass: Make do_deploy_archives a recursive dependency
bison: fix the parallel build
gcr: depends on gnupg-native
poky: Add Ubuntu 20.04 as a supported distro
file: add PACKAGECONFIG for auto options
selftest/imagefeatures: Enable sanity test for IMAGE_GEN_DEBUGFS
pseudo: Fix enum typedef
meson.bbclass: Close the log file after reading
pypi.bbclass: use new pypi UPSTREAM_CHECK_URI
pypi.bbclass: mind package suffix on version check
bitbake.conf: Prevent git from detecting parent repo in recipe
python3-setuptools: add the missing rdepends
scripts/tiny/ksize: Fix for more recent kernels
wget: improve reproducible build
sstate.bbclass: Do not fail if files cannot be touched
opkg-keyrings: check if opkg-key exists before run postinst
connman: Include vpn-script in FILES
documentation.conf: Add variables supported by features_check.bbclass
libnewt: Backport patch to fix reproducibility
re2c: correct upstream location
cdrtools-native: fix upstream version check
meson: fix upstream version check
linux-yocto/5.4: update to v5.4.34
linux-yocto/5.4: update to v5.4.32
linux-yocto/5.4: update to v5.4.28
musl: Remove spurious unused patch
os-release: sanitize required fields
util-linux: fix build error in kill
timezone: upgrade 2019c -> 2020a
openssl: upgrade 1.1.1f -> 1.1.1g
iputils: Initialize libgcrypt
gcc-target: Ensure buildtools-extended-tarball doesn't use arch=3Dnative
pseudo: add macro guard for seccomp
libffi: fix v3.3 compile on ppc64le
buildtools-extended-tarball: add libgomp-dev
oeqa/qemurunner: Clean up failure handling
targetcontrol: Fix leaking log handler
staging: Fix overlapping file failures
oeqa/selftest: Add test for conflicting sysroot provider
scripts/install-buildtools: bump to 3.1 release by default
run-postinsts: Set RemainAfterExit on systemd unit
testimage.bbclass: correctly process SIGTERM
perl: Add missing dependency for tie-hash on carp.
boost: revert 1.72.0 regression
vim: do not adjust script paths building for target
insane.bbclass: Add test for shebang line length
binutils: Install PIC version of libiberty.a
binutils: Detect proper static-libstdc++ support when using clang
gcc: Configure all gccs with --disable-install-libiberty
packagegroup-go-sdk-target: Add go to packagegroup
go: Rely on go-runtime to provide needed modules
packagegroup-go-sdk-target: Enable on rv64
pbzip2: Fix license warning
busybox: Correct the name of the bzip2 license
bzip2/pbzip2: Correct license information
parselogs.py: ignore pulseaudio startup warning messages
buildtools-tarball: add nativesdk-mtools for `wic ls'
alsa-state: ignore 'No soundcards found' error in pkg_postinst
python3-manifest.json: add pathlib to core
ell: upgrade 0.30 -> 0.31
gnutls: upgrade 3.6.12 -> 3.6.13
tzdata: remove exit 0 from pkg_postinst
ruby: Link with libucontext on musl
libucontext: Bring in mips/mips64 support
buildtools-extended-tarball: Add libstc++.a
nativesdk-gcc-runtime: enable building libstdc++.a
qemu-system-native: Fix commented out PACKAGECONFIG
kernel-yocto.bbclass: Fix deps when externalsrc is used
u-boot.inc: install u-boot-initial-env as ${PN}-initial-env in $D and $DEPL=
OYDIR
bitbake: data_smart: Handle hashing of datastores within datastores correct=
ly
bitbake: cache: Fix performance problem with large numbers of source files
bitbake: fetch2/wget: Set User-Agent when checking status of a URL
bitbake: tinfoil: fix config_data mess up insane check while parsing multip=
le recipes
Updated patch for publishing
Added usrmerge to distro-features for Bug 13494
ref-manual: correct "script" dirname to "scripts"
dev-manual: remove postinst false statement
ref-manual: add migration section for 3.1
dev-manual: basic updates for npm fetcher changes
