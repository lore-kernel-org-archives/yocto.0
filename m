Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.12536.1602165506813521634
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 06:58:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=YhijNH+d;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: lLnhGS9ccmi1WCKMEMssqbv0axRSTKHyNmnHMt6NI+v5Q/CjrtNsVnbh0WSD4SoyurZDfWcOWc
 RvynE3MhZ0ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165446329"
X-IronPort-AV: E=Sophos;i="5.77,351,1596524400"; 
   d="scan'208";a="165446329"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2020 06:58:12 -0700
IronPort-SDR: VualArErnsLazbcnNNA0j/eAOHcHJQ2gCMdxrc2YdJyjUc+xnmXnKYWSx99U4ltxuaA88yZHXO
 7RcAjXyWPn6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; 
   d="scan'208";a="316689127"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga006.jf.intel.com with ESMTP; 08 Oct 2020 06:58:12 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Oct 2020 06:58:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Oct 2020 06:58:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 8 Oct 2020 06:58:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 8 Oct 2020 06:58:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V/HWFIPuGGgI/LNla9lcpiu78gxfkefQGWZwVhRt3HRQZJ1IteaVrq+J/npUcCFAOIrJvRMPKUpSkDtNkcWwaXYhz6MuIOv5aOPqBFoGAySO+1NfM1dcFM6+tb5QpHY4Bs+7AuRfvA88Hx/0GSMAAPlPsDo3M1HX/+PtvY9Jt7VVIkLIZUgvhDlBKDUDAuJ0n58KUhfkj49XptjQYNO91NkQHdXYDmhE4zgyOfylrEt40k7pMPXuRg2IfhRfAr7921R0yVxSpMMUXEUbM+ku+67Ui2GZ3otTVOTkGrfejOp2eIWnqBIoz2O1Czm3XfjJefkuwjGiF//jKcNX8pPzcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5nppfApb59XmCxH+Mj4V3a0qRikeStZgxMNI4Fd1t8=;
 b=Ste3DfJusmlAjB/3jZIyX0FFxEmYpQCBX4leEEH9uymDTj/bdqnclioPBGges4lltTHJHiNFbeLcmLCQiXMTbGjCxjZgUyjYiFSxP5IHQqkOAqrhubyUC8QKZR4TMcbNKS2bN7clusw6KViXBDp3MhV0m5eGtkZGANVYT4QxYdp/7bOTbBDMvghqyoJjVgBOytTD1OOsFdZK+aARArLjLHR8AXsB7iGSkxWpmOkL1uVudGSrXdlm/mrdf3iR8npoXLHLD9xkvBsHYf5SLfcpg50dlkqxkgC12YRR1y1PXpyEPOtwalDDreEYIeouP1gv4RgszQyl9yguIuoQymH5eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5nppfApb59XmCxH+Mj4V3a0qRikeStZgxMNI4Fd1t8=;
 b=YhijNH+dK0pa0D3UhSO1uElVyQinZN0s/hpEHDyI79KkbBJMuuBQ4/R39eNgwDfZTQzBfwOhrvXR2dJxJBV5ZeG5UuUWtJPPAhBs9cXXbnw33DgvNbdB50kd76JG/nth17SLexTFox/4ilezR4v5hK/EvNC5qBej4mAcZeFTIVg=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BY5PR11MB4257.namprd11.prod.outlook.com (2603:10b6:a03:1ca::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.35; Thu, 8 Oct
 2020 13:58:09 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::dbf:adc2:f05a:168]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::dbf:adc2:f05a:168%3]) with mapi id 15.20.3455.023; Thu, 8 Oct 2020
 13:58:09 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.3 (dunfell 23.0.3) Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.3 (dunfell 23.0.3) Released
Thread-Index: Adac9ADrB85oj7hsR4CjctvhCsS8dw==
Date: Thu, 8 Oct 2020 13:58:09 +0000
Message-ID: <BYAPR11MB27902A61E1EAE5687F6D53E1880B0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.187.185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c675da7-64ea-4f60-5cfa-08d86b92304c
x-ms-traffictypediagnostic: BY5PR11MB4257:
x-microsoft-antispam-prvs: <BY5PR11MB42578B935B2E393478804B51880B0@BY5PR11MB4257.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zn04kMG8AShU83b/1Ix6yL+tAsvXo4kfqjLfmV+HnkjwZREPUjLFNa6ManSqFxMBBbHHNKYPJOC50/F6muuNGUcoQFd3zA+MWHkgTtvfCjPpoK6cBNXTRTefCIsGLMN/eXRu4B1YwbRHUAOxEes8XK78RAK/g83JeYxc8hWXTF7ppiB6U52UYgz7TerVPH0oXBINBv7gTq9j+E+OqnkgrYOfsE79ln3Z+arQu0kh3xBGAq0vgi2wz8+DBHf5giOVMpjU+WIUi5KmdkaAc2z++1QYSoTXK8YWZw9WsZFd2XRSanQbzACXUegMiVqToAXMO3/eCpZXX1N0RlwCdOwRs2BCr4KRMjLa7Gm2oNMXvtKmaauiMBjCRY5bEfhMPwW+hDcG2AmlhzrBeGSsEA5A8afm/8v9+kr3sSOykBml3DoXknw1sVuYahCxC2jcmC+2wdM2SttSjgXDqp34VPy2VTLUPJKM+5/dMrwTZDUyV2Y=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(366004)(396003)(136003)(376002)(186003)(86362001)(83380400001)(66446008)(52536014)(2906002)(110136005)(30864003)(33656002)(64756008)(6506007)(76116006)(7696005)(66946007)(316002)(66476007)(66556008)(71200400001)(55016002)(966005)(478600001)(26005)(9686003)(5660300002)(8676002)(83080400001)(8936002)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: KdZrxyS4I1G5xR2JUW2uZ28bPojokfL0w+I7Fq1vFp4CUXkPKysjY2jr0fiKhqRKNFg4dKT7DpBHQPWV/N2Hdho68NS1YxTkwuVXovRZt1/A+ZHB5c3cxXxp17XgDbEZHKJ7fAQLfLhajBi+Rys+0uoq6ihSskygIvP9hd6qewdaoASNaxqpQY3hhEujdln4VyAnztlUe+pqxX0X81zzpXhITejma6+KGyHniyq0Vogbdu1//2SxS9rY9T7MpV6POLt1kW9syQHzGCRrc+/AdroCOtNepIhQAQGAfcbx00wcY3MjG1J6IS5hcCLVBVEYTuozHlt6Kv9lVp9SVGV14/0Da/GcTeu+lecKrCVoL+DVaEXnIDsuRs4suHxUB5b6rreElQcSgm/lruYS1vtJlgo0pZoAbEJrKLVa8A1JTBQ00bzBt0djZ75jxC6dfHNfYJg9UlhvVcjPYOVnG350xLu0bghgQyjGZFY8caZjP/CkBlOcCiPIB92/GqKzgLBn/8ajeNiaSOJecsdbr00re3dYmRD7+dLwfOeyiNdUM5Om8A8JzPOoUrvtnWQwCVSCJtGkXrGdIy/6CZeMEcuGQtsd7OimVDgUXxWdJBfwTodK4V1qcjIfIUqQR0b660ttr9oH02Zvfn5sbiypFGVI9g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c675da7-64ea-4f60-5cfa-08d86b92304c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2020 13:58:09.1733
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /J8hZsU7e/AbxCMeg/j343jD5XL1qjVtlffCLnX1e13IiEyG3iL8jmQzrCx8MBKoGhN5cHRKHsGCFoy6e7E02RvomdtqTnx4WBwag7CZc3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4257
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.3 (dunfell-23.0.3) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/poky-dunfell-2=
3.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.3/poky-dunfell-23.0.3.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com


- --------------------------
yocto-3.1.3 Release Notes
- --------------------------


- --------------------------
 Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.3
Git Revision: 012ad10a89a889c21e67c27dc37d22520212548f
Release Artefact: poky-dunfell-23.0.3
sha: 5ce1869a7d4074981287d3c105211c7f546810eb485af7b8ae6ed0e15bb41046
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/poky-dunfell-2=
3.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.3/poky-dunfell-23.0.3.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.3-dunfell
Git Revision: b39bda4cc62db12c0edfbe489d5a7f5988ede6a9
Release Artefact: oecore-dunfell-23.0.3
sha: 9f4cdb2e45149af41b557abbb8a36a6fe1125af8d6afe19f24c708a84167c10c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/oecore-dunfell=
-23.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.3/oecore-dunfell-23.0.3.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.3
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.3
sha: 7a0a544b1b9963c023795aa73807a6b179e494caa401ee30547bb1a0eda2eb16
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/meta-mingw-dun=
fell-23.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.3/meta-mingw-dunfell-23.0.3=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.3
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.3
sha: d810593328b6ca38d1b2da41607cb257b015934bf8bf6cb2e0bb0a54ebb391d6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/meta-gplv2-dun=
fell-23.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.3/meta-gplv2-dunfell-23.0.3=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: 2020-04.3-dunfell
Git Revision: 18e1957337fd9f06bc673d28dd4f8277321d07bc
Release Artefact: bitbake-dunfell-23.0.3
sha: de3bc9541a4bbbaa494b69777cac7bc7767a230a8849f11a25073866e8fd680b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.3/bitbake-dunfel=
l-23.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.3/bitbake-dunfell-23.0.3.ta=
r.bz2

- -------------
Contributors
- -------------
Adrian Bunk
Adrian Freihofer
akuster
Alexander Kanavin
Andrei Gherzan
Anibal Limon
Armin Kuster
Bruce Ashfield
Changqing Li
Chen Qi
Chris Laplante
Christophe GUIBOUT
Daniel Ammann
Daniel Gomez
Geoff Parker
Guillaume Champagne
hongxu
Jain Sangeeta
Jean-Francois Dagenais
Joshua Watt
Kevin Hao
Khem Raj
Konrad Weihmann
Kurt Kiefer
Lee Chee Yang
Mark Hatle
Martin Jansa
Matthew
Matt Madison
Michael Gloff
Michael Halstead
Michael Tretter
Mikko Rapeli
Ming Liu
Nicolas Dechesne
Oleksandr Kravchuk
Ovidiu Panait
Peter A. Bigot
Pierre-Jean Texier
Rahul Kumar
Rasmus Villemoes
Richard Purdie
Robert Yang
Ross Burton
Sakib Sajal
Stephen Jolley
Steve Sakoman
Sumit Garg
TeohJayShen
Tyler Hicks
Vasyl Vavrychuk
Vijai Kumar K
Viktor Rosendahl
Vineela Tummalapalli
Wang Mingyu
Yann Dirson
Yi Zhao
zhengruoqin
Zhixiong Chi

- ---------------
 Known Issues
- ---------------
perl ptest failure: There was a perl ptest issue identified during=20
testing. The issue has been traced to a test error, functionality is=20
correct and the test issue will be addressed in the next release.

- ---------------
Security Fixes
- ---------------
libxml2: Fix CVE-2020-24977
cmake: whitelist CVE-2016-10642
curl: add vendors to CVE_PRODUCT to exclude false positives
gnutls: CVE-2020-24659
libx11 : fix CVE-2020-14344
qemu: fix CVE-2020-14364 CVE-2020-14415
xserver-xorg: fix CVE-2020-14347
json-c: Fix CVE-2020-12762
perl: fix CVE-2020-12723
fribidi: extend CVE_PRODUCT to include fribidi
gcc-9.3.inc: Mark CVE-2019-15847 as fixed
glibc: Bring in CVE fixes and other bugfixes from 2.31 release branch
grub: set CVE_PRODUCT to grub2
webkitgtk: fix CVE-2020-13753
libjpeg-turbo: fix CVE-2020-13790
qemu: fix CVE-2020-15863
ghostscript: fix CVE-2020-15900
glibc: Secruity fix for CVE-2020-6096


- ---------------
Fixes
- ---------------
build-appliance-image: Update to dunfell head revision
scripts/oe-build-perf-report: Use python3 from the environment
build-appliance-image: Update to dunfell head revision
Revert "kernel.bbclass: run do_symlink_kernsrc before do_patch"
populate_sdk_ext: Do not assume local.conf will always exist
sysvinit: Remove ${B} assignment
libubootenv: upgrade 0.3 -> 0.3.1
initramfs-framework: support kernel cmdline with double quotes
systemd-serialgetty: Replace sed quoting using ' with " to allow var expans=
ion
systemd-serialgetty: Fix sed expression quoting
bitbake: tests/fetch: Move away from problematic freedesktop.org urls
poky.conf: Bump version for 3.1.3 release
yocto-bsp: update to v5.4.58
yocto-bsp: update to v5.4.56
yocto-bsps: update reference BSPs to 5.4.54
cve-check: avoid FileNotFoundError if no do_cve_check task has run
cve-update-db-native: use context manager for cve_f
cve-check/cve-update-db-native: use lockfile to fix usage under multiconfig
cve-update-db-native: add progress handler
cve-check.bbclass: always save cve report
ell: update to 0.33
oeqa/concurrencytest: Improve builddir path manipulations
selftest/signing: Ensure build path relocation is safe
oe-publish-sdk: fix layers init via ssh
image.bbclass: fix REPRODUCIBLE_TIMESTAMP_ROOTFS reference
runqemu: Add a hook to allow it to renice
autoconf: consolidate DEPENDS
insane: only load real files as ELF
gdk-pixbuf: add tests PACKAGECONFIG
rpcbind: Use update-alternatives for rpcinfo
uninative: Upgrade to 2.9
bitbake: fetch2: Drop cups.org from wget status checks
bitbake: siggen: clean_basepath: remove recipe full path when virtual:xyz p=
resent
Documenation: Prepared for the 3.1.3 release
package: get_package_mapping: avoid dependency mapping if renamed package p=
rovides original name
linux-libc-headers: kernel headers are installed in STAGING_KERNEL_BUILDDIR
json-glib: Backport a build fix with clang
selftest/prservice: Improve test failure message
devtool: deploy-target: Fix size calculation for hard links
insane: improve gnu-hash-style warning
insane: fix gnu-hash-style check
oeqa: sdk: Capture stderr output
util-linux: Allow update alternatives for additional apps
recipes-kernel: linux-firmware add qcom-venus-{5.2,5.4} packages
wic: misc: Add /bin to the list of searchpaths
sysstat: fix installed-vs-shipped QA Issue in systemd
sanity.conf: update BB_MIN_VERSION to 1.46.0
cml1: Move find_cfgs() helper to cml1.bbclass
kernel-yocto: checksum all modifications to available kernel fragments dire=
ctories
devtool: expand SRC_URI when guessing recipe update mode
package.bbclass: explode the RPROVIDES so we don't think the versions are p=
rovides
linux-firmware: update 20200721 -> 20200817
linux-firmware: upgrade 20200619 -> 20200721
kernel.bbclass: run do_symlink_kernsrc before do_patch
linux-yocto/5.4: update to v5.4.61
linux-yocto/5.4: update to v5.4.60
linux-yocto/5.4: update to v5.4.59
libubootenv: inherit uboot-config
libubootenv: uprev to v0.3
multilib.conf: add u-boot to NON_MULTILIB_RECIPES
conf/machine: set UBOOT_MACHINE for qemumips and qemumips64
bluez5: fix builds that require ell support
bind: update to 9.11.22 ESV
perf: backport a fix for confusing non-fatal error
gpgme: fix multilib header conflict
weston: add missing packageconfigs
image_types_wic: Add ASSUME_PROVIDED to WICVARS
package.bbclass: Sort shlib2 output for hash equivalency
package_tar.bbclass: Sync to the other package_* classes
oeqa/manual/bsp-hw.json : remove X_server_can_start_up_with_runlevel_5_boot=
 test
oeqa/manual/bsp-hw.json : remove shutdown_system test
runqemu: Show an error for conflicting graphics options
oeqa: runtime_tests: Extra GPG debugging
runqemu: Check gtk or sdl option is passed together with gl or gl-es option=
s.
alsa-ucm-conf: use ${datadir} in do_install()
alsa-topology-conf: use ${datadir} in do_install()
libffi: fix multilib header conflict
xserver-xorg: upgrade 1.20.7 -> 1.20.8
ghostscript: update to 9.52
linux-yocto/5.4: perf cs-etm: Move definition of 'traceid_list' global vari=
able from header file
linux-yocto/5.4: update to v5.4.58
selftest/tinfoil: Increase wait event timeout
librsvg: Upgrade 2.40.20 -> 2.40.21
linux-yocto/5.4: update to v5.4.57
linux-yocto/5.4: update to v5.4.56
linux-yocto-rt/5.4: update to rt32
go: Upgrade to 1.14.7
go: update 1.14.4 -> 1.14.6
uninative: Handle PREMIRRORS generically
oeqa: write @OETestTag content into json test reports for each case
testimage: add an overall timeout setting
allarch: Add missing allarch ttf-bitstream-vera
ltp: make copyFrom scp command non-fatal
kernel-devicetree: Fix intermittent build failures caused by DTB builds
linux-yocto/5.4: update to v5.4.54
linux-yocto/5.4: fix perf build with binutils 2.35
linux-yocto/5.4: update to v5.4.53
libexif: update to 0.6.22
ruby: upgrade 2.7.0 -> 2.7.1
glib-2.0: update 2.62.5 to 2.62.6
glib-2.0: update 2.62.4 to 2.62.5
qemumips: Use 34Kf CPU emulation
Revert "gtk-icon-cache.bbclass: add runtime dependency"
glib-networking: upgrade 2.62.3 to 2.62.4
gnutls: Fix krb5 code license to GPLv2.1+ to match the LICENSE file.
gnutls: upgrade 3.6.13 -> 3.6.14
bind: upgrade 9.11.19 -> 9.11.21
boost: backport fix to make async_pipes work with asio
cogl-1.0: correct X11 dependencies
cve-update: handle baseMetricV2 as optional
checklayer: check layer in BBLAYERS before test
initscripts: Fix populate-volatile.sh bug when file/dir exists
initscripts: Fix various shellcheck warnings in populate-volatile.sh
buildhistory: use pid for temporary txt file name
gtk-immodules-cache.bbclass: fix post install scriptlet error
busybox: make hwclock compatible with glibc 2.31
startup-notification: add time_t type mismatch patch from upstream
image.bbclass: improve wording when image size exceeds the specified limit
classes/package: Use HOST_OS for runtime dependencies
classes/cmake: Fix host detection
oeqa/qemurunner: Add priority/nice information for running processes
linux-yocto-rt/5.4: fix mmdrop stress test issues
linux-yocto/5.4: update to v5.4.51
openssl: openssl-bin requires openssl-conf to run
linux-firmware: add ibt-20 package
rpm: fix nativesdk's default var location
wic/filemap: Fall back to standard copy when no way to get the block map
wic/filemap: Drop the unused get_unmapped_ranges()
wic/filemap: Drop the unused block_is_unmapped()
bitbake: server/process: Account for xmlrpc connections
bitbake: server/process: Fix UI first connection tracking
