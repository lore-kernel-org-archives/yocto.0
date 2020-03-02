Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web09.761.1583190659638704853
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 15:10:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ALuxOla5;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: vineela.tummalapalli@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2020 15:10:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,508,1574150400"; 
   d="scan'208";a="273935333"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2020 15:10:49 -0800
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Mar 2020 15:10:49 -0800
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX114.amr.corp.intel.com (10.22.240.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Mar 2020 15:10:49 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 2 Mar 2020 15:10:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nkFqm/7uxQaNDsguOJdWXuJOIK2Ckih8vCs+cuFrn5HpVe2/i+ADIpo+4jt6OC/eHHw6tT5cklBwWaTcuvl+e1i4CWFqcYobEvtuMUAITS/xebFQCk4JBh9/WjEHw3WjAxwKlSe+68FzNMaYweg7sBEDeSO7rMkIQe/bWFWBFsHGV6sRkp/zGLNthOnXzZhA8G77ASW0wz4/BPVUpWpW55rLlMeMqun0psly5O8F8LIw60UBUomWwbj4MuWOzp3bQA8PPr3uaTl4Zu6QTT6Jranjnhbl5VfDTUXJ0ETYdMLyvbcZuWZuBqIaX+m1ahFd5WMrqtMnL2JXJeLIRs6gQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GVXGhMv0vTNpQqyAz9zJXxYPINxVsxdxQ6JuIQDM2aM=;
 b=IJYNzB7k/6OzDylHhmdpDR1Kz9WCkodh2WG4H14po9Nu86zPh4oujmK8cjflgdvoF1hAWAUAuJamRs+l6YAqBkHMSAp5kQHYFLNhpBrM0JfwnYcQPz3pD9FrETvjix8NWwc+OdCWbfib4XZUFp0lRVZ6J5FYRn5j5xaP/F5pop3FMOw0imSbYY1F3AprxirrO0kXLZN1GoJEN8wG10is+2g79twiE1vSWTHPT/m8zrRXnb29uh1j7ZCD61Zq6O9UsVNOpDgr1h0nUHpNShsd82Sf6vxs5TVRzfwvKpfv9qtHdlmDcIcz5lEeCji3Q4sq8dfGzlDbBmTUwTCMBlZZbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GVXGhMv0vTNpQqyAz9zJXxYPINxVsxdxQ6JuIQDM2aM=;
 b=ALuxOla5waqJUwQEfmv00wHSCyDzjMxyUBtLcZQ2SCD30vkRqRHWr328Tm0I/a46VereEpxSTLvybqf8w3COH2rFDa2Zx7yNkdoUDS4DMrxlZCLeDoQ1qqzU4dDzB45Aj3nvd/sf3AN3gJfnfqehpDlKsQFyyZJN5l+CHbQX7pk=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Mon, 2 Mar
 2020 23:10:47 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::8d22:742:fe90:7da0]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::8d22:742:fe90:7da0%5]) with mapi id 15.20.2772.018; Mon, 2 Mar 2020
 23:10:47 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 2.7.3 (Warrior 21.0.3) Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 2.7.3 (Warrior 21.0.3) Released
Thread-Index: AdXw5lkixzrWInLtRF67pCI54b9Z6g==
Date: Mon, 2 Mar 2020 23:10:47 +0000
Message-ID: <BYAPR11MB27905C22CEEB507486354ADF88E70@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmE2M2NhNmQtNGUyNS00NmUwLTg0YjctNGFlNjYxMzExZDhiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNGpxMEFxZWIxejRBaW5wTHZod0VUTUJqYnB4dm1ubk1aeGxMa0p4SUwzXC9Qd0lGSDN4MXpVWnlSYVJPTlVZXC84In0=
x-ctpclassification: CTP_NT
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fa062f7-b1f0-4e98-0228-08d7befef172
x-ms-traffictypediagnostic: BYAPR11MB3207:
x-microsoft-antispam-prvs: <BYAPR11MB3207845AA94EAF9DC8A72DF588E70@BYAPR11MB3207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(396003)(346002)(366004)(136003)(39860400002)(199004)(189003)(66556008)(9686003)(186003)(55016002)(52536014)(2906002)(33656002)(966005)(8936002)(66946007)(478600001)(86362001)(66476007)(71200400001)(26005)(81166006)(81156014)(6506007)(7696005)(316002)(64756008)(76116006)(66446008)(5660300002)(8676002)(110136005)(491001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR11MB3207;H:BYAPR11MB2790.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qh3Q1MXhiR3J1s4SBqVMloYyzZLq6mANMkRhyXNGrXpVpPtSuDR6fgoebWugLEnq2qGjiXKWG71Uk0ftToIpmVJMC25SeSmrGGmzbiuoyTa5H7kGXQRRMbEtXbPU0mLBoTiEezaMHJtVZ5CFcYnbMrewUoMoto4rlGctfO9e+NVkUnNUeW6ACVFPVEEgmiowFYr4/7cC0rOkXS1EnUTwlX4vAYok3Q4laDDcz8POTX1FIfW9pxUpQBN9Nzi4aZzhz//60OYp95ou/+vJsxBTC9N8/X1JhX3/UpWUlvsgqroDdpmi8uWi7xRR3k8G6BiPLMpUw+TwF1qB7lp93F7072bRxvgOSj1JaftLOfaOzm8y3JEFYsb0ksfAX2Q2AhO2VbPweqdZV2KFUn37n4rnsjfnGBq8pdoJBp3xgIRDAr9F/wSwyt+XyS9yQyeLSTfU4+76Ex6Gh7giv3SQq8VEhpQ4aHUXy9CPGg+M+9AfReUh/p1KBDpK8T0toDK9gxUL9RfHHFu4BGFF8SCxu533ohy0NsbUV0xl6IJSkLVWA20YmAFpPUWCpN7obgwhVUY4
x-ms-exchange-antispam-messagedata: oELdCqHYReZrTGTanf2FAjWKtfGRViq5JpkgF6ZrfgXoOTsjJxfyG+Evq9epwEY7BaoBaxidVLIMB68oMPcNk+8rqw9jcXZb2qOUhNkh2IB3tkmLJIcSUitYEov3dYgf8ZIUh80I+m+mJNDz+2381A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fa062f7-b1f0-4e98-0228-08d7befef172
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 23:10:47.5547
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eD2qbBZRT59NAQEc+S5b5FCUm/R4ikBmjkJahjX+Ey5WctX9XONk95hgZrByH1t/JVxbK7zkEpjiWVRCjBtlBskg9OhsZjO1G1S+a526Zuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3207
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 2.7.3 (warrior-21.0.3) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/poky-warrior-2=
1.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.3/poky-warrior-21.0.3.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,

Vineela Tummalapalli
Yocto Project Build and Release
<vineela.tummalapalli at intel.com>


--------------------------
yocto-2.7.3 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: warrior
Tag: yocto-2.7.3
Git Revision: f475afc5df0837532dcd0f3a831ddc3aec8941f1
Release Arefact: poky-warrior-21.0.3
md5: a71a3bd899851ca0980d109b7e10fe89
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/poky-warrior-2=
1.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.3/poky-warrior-21.0.3.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: warrior
Tag: 2019-04.3-warrior
Git Revision: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
Release Arefact: oecore-warrior-21.0.3
md5: c0f11de2936e613089a87668c8cf13cd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/oecore-warrior=
-21.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.3/oecore-warrior-21.0.3.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: warrior
Tag: yocto-2.7.3
Git Revision: 10695afe8cd406844e0d0dd868c11677e07557d4
Release Arefact: meta-mingw-warrior-21.0.3
md5: 3b32f4b398a9c1e05242676e851c07cd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/meta-mingw-war=
rior-21.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.3/meta-mingw-warrior-21.0.3=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: warrior
Tag: yocto-2.7.3
Git Revision: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
Release Arefact: meta-gplv2-warrior-21.0.3
md5: 19b0970ef6cfcb9380eedc327fde6808
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/meta-gplv2-war=
rior-21.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.3/meta-gplv2-warrior-21.0.3=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: warrior
Tag: 2019-04.3-warrior
Git Revision: d411b097d810c386d35dc561f8812bb3f35c9a36
Release Arefact: bitbake-warrior-21.0.3
md5: 5f11436a4b329a74084e0c4f1e1ff54e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.7.3/bitbake-warrio=
r-21.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.7.3/bitbake-warrior-21.0.3.ta=
r.bz2


---------------
 Known Issues
---------------
Bug 13818: Opensshptest failed. The fix is in zeus branch and it needs back=
ported to warrior.
Its a date issue with the test and is minor. The fix will be available in t=
he next release.

Bug 13817: Perl ptest failed. This is another test related to date issue an=
d is of minor significance.

Bug 13816: gstreamer ptest failed. This is a single test result regression =
which is being
investigated but doesn't appear to be a release blocking issue.


---------------
Security Fixes
---------------
cpio: fix CVE-2019-14866
rsync: whitelist CVE-2017-16548
libxml2: Fix CVE-2019-19956
openssl: fix CVE-2019-1551
openssl: Whitelist CVE-2019-0190
systemd: Whitelist CVE-2018-21029 CVE-2019-3843 CVE-2019-3844
iputils: Whitelist CVE-2000-1213 CVE-2000-1214
lz4: Whitelist CVE-2014-4715
sysstat: fix CVE-2019-19725
go: fix CVE-2019-17596
nasm: fix CVE-2019-14248
nasm: fix CVE-2018-19755
glib-2.0: Backport the CVE-2019-12450 fix
lighttpd: Backport the CVE-2019-11072 fix
glibc: fix CVE-2019-19126
libarchive: fix CVE-2019-19221
gdb: Fix CVE-2019-1010180
bind: Whitelist CVE-2019-6470
binutils: fix CVE-2019-17451
binutils: fix CVE-2019-17450
wpa-supplicant: fix CVE-2019-16275
python/python3: Whitelist CVE-2019-18348
python: Whitelist CVE-2017-17522 CVE-2017-18207 CVE-2015-5652
cve-check: Switch to NVD CVE JSON feed version 1.1
cve-check: fetch CVE data once at a time instead of in a single call
cve-update-db-native: add an index on the CVE ID column
cve-check: ensure all known CVEs are in the report
procps: whitelist CVE-2018-1121
webkitgtk: set CVE_PRODUCT
libsndfile1: whitelist CVE-2018-13419
libxfont2: set CVE_PRODUCT
libpam: set CVE_PRODUCT
boost: set CVE vendor to Boost
ed: set CVE vendor to avoid false positives
subversion: set CVE vendor to Apache
git: set CVE vendor to git-scm
flex: set CVE_PRODUCT to include vendor
openssl: set CVE vendor to openssl
python: fix CVE-2018-20852
python: fix CVE-2019-16935
bind: fix CVE-2019-6471 and CVE-2018-5743
file: fix CVE-2019-18218
patch: the CVE-2019-13638 fix also handles CVE-2018-20969
python3: CVE-2019-16056
libxslt: fix CVE-2019-18197
libtiff: fix CVE-2019-17546
tiff: fix CVE-2019-14973


---------------
Fixes
---------------
build-appliance-image: Update to warrior head revision
poky.conf: Bump version for 2.7.3 warrior release
Documenation: Prepared for the 2.7.3 release
linux-firmware: update packaging for brcm files
linux-firmware: Upgrade 20190618 -> 20190815
linux-firmware: add PE back
linux-firmware: bump to 20190618
timezone:upgrade 2019b -> 2019c
timezone: update to 2019b
python2: add ntpath
linux-yocto/4.19: update to v4.19.87
linux-yocto/4.19: update to v4.19.84
linux-yocto/4.19: update to v4.19.78
linux-yocto/4.19: update to v4.19.72
bitbake: cooker/siggen: Empty siggen cache during parsing
Adding memoriam to scottrif
bitbake: cooker: Keep track of watched files using a set instead of a list
sanity.bbclass: Move sanity_info from conf to cache
populate_sdk_ext.bbclass: No longer needed to clean away conf/sanity_info
openssl: Enable os option for with-rand-seed as well
openssl: Upgrade 1.1.1c -> 1.1.1d
openssl: Upgrade 1.1.1b -> 1.1.1c
systemd: Upgrade to a more recent snapshot from the 241 branch
base.bbclass: add dependency on pseudo from do_prepare_recipe_sysroot
python3: RDEPEND on libgcc
python3: Upgrade 3.7.5 -> 3.7.6
stress: update SRC_URI
sudo: Fix fetching sources
sudo: correct SRC_URI
popt: fix SRC_URI
cve-check: neaten get_cve_info
cve-check: rewrite look to fix false negatives
cve-update-db-native: clean up proxy handling
cve-update-db-native: don't hardcode the database name
cve-update-db-native: don't refresh more than once an hour
cve-check: we don't actually need to unpack to check
cve-check: failure to parse versions should be more visible
sdk: Install nativesdk locales for all TCLIBC variants
libpcap: upgrade 1.9.0 -> 1.9.1
python: update to 2.7.17
mega-manual: Fixed broken mega-manual build for 2.7.2
dev-manual: Removed duplicate paragraph for selecting init manager.
pseudo: Add statx support to fix fedora30 issues
pseudo: Drop static linking to sqlite3
pseudo: Fix openat() with a symlink pointing to a directory
python3: Upgrade 3.7.4 -> 3.7.5
python3: fix the test_locale output format
python3: Fix .pyc file reproduciblility
python3: Reformat sysconfig
python3: python3: Fix build error x86->x86
python3: fix build on softfloat mips
python3: fix do_install fail for parallel buiild
lib/oe/lsb: Make sure the distro ID is always lowercased
devtool: finish: Add suppport for the --no-clean option
devtool: finish: Keep patches ordered when updating bbappend
tzdata: Correct the packaging of /etc/localtime and /etc/timezone
package_rpm.bbclass: Remove a misleading bb.note()
devtool: Avoid failure for recipes with S =3D=3D WORKDIR and no local files
nativesdk-meson: Remove some unused variables
meson.bbclass: Remove the MESON_*_ARGS variables
meson: Backport patch to handle strings in cross file args
go-1.12: update to 1.12.9 minor release
go: Upgrade 1.12.5 -> 1.12.6
go: update 1.12.1->1.12.5
bitbake: fetch2: Ensure cached url data is matched to a datastore
bitbake: bitbake-worker child process create group before registering SIGTE=
RM handler
build-appliance-image: Update to warrior head revision
