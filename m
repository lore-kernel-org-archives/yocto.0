Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web12.36020.1611182946064786276
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jan 2021 14:49:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=EOm/Po/f;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: KAOYlJT2vk0qWU/XKHE851220Hu9WLpDX31qWuPCugPBYk/QPG+gcyQPiP8v3B+gvdK6x6jDO9
 dHOoTVziR67Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="264001166"
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; 
   d="scan'208";a="264001166"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2021 14:49:04 -0800
IronPort-SDR: FARzCkT+yeg3eiGrz/qM5WyoKNHR96/or4WHn2wt3TBvbTqFJqpvsCYd/zANcvxHSOV7VbDW60
 BeZel03PXy+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; 
   d="scan'208";a="501751157"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by orsmga004.jf.intel.com with ESMTP; 20 Jan 2021 14:49:00 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 14:48:55 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 14:48:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 20 Jan 2021 14:48:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 20 Jan 2021 14:48:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RF9EYCSvYo/gZrxUc4P9ZVkJ/RMsMODERjv37zMRTtfES0YzoR2p4WbdZMJLqfBwATcHQCad/J7IinWX4y/j0WrsXDtPXDBR4oPB07Usv8N9nekC3n5MzVxT68ae/XaMC/D8Avm3qzXE+PiwTs2gkTnaMMOWSvRLuREIpji3ygQ44a/gOxkXpLyV89I30abeBSA0bGtos1izC4vknSW9aQaTkMSdR8F/qmHuPlGCxNCwayQmG3lo84McuXSmi1GSN09r8x3DbRpKCFg2A6bUAJyA8fHMgnraVU8Im3NznysYHUB/cg0BheEjQfKKYoZSWhW2tj3ECEyGRKUiOrDxJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GrOp/zG63BMD2uca1uquvy0QDgg8y3StponmnzcYIeQ=;
 b=JSICxJkTrdVWa7Gw13yWPYkAK4MJJcGu6AMvPKM5jiA7uOo2ir0MIaQrwmqG9PoNPOjr7K3+wxe5bFGWQAi6L6UALJXnsk/3PMJBO32UA6JBGNXURIwajk9mjFqmUQamlFX1t9BEFDdk2ObRR5tAW8TUEnsFwSyjjjWkopwt2mmxDLAh3YegV2hPPuxKxaqXT2fgOD8I/m8ovwMCj7GQkhIAl0ZEYBahe92DYsF3uZxqwFN7v/6oJOyNzjy1gwjooBi/WpIOYdaJqeZUTa/VN5O+yTx0kTsJJbKcfSLXNmzFMujn0IXx2/vvNp/wiHdqlyB1IZL/AUaxFrBtGK1hmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GrOp/zG63BMD2uca1uquvy0QDgg8y3StponmnzcYIeQ=;
 b=EOm/Po/f6ySsTgRiBFiiqCN20ZdMVkyh3jRsN/AluoyL72RPu2pvoLQxnqiVxfVl1ah2RVpwNm3T8crAq3MQ9myhOt59pUKKb5rgW0VYV69j3MSNYBsJ8Ca1dcaOz60ey8PYMEsI9szlPUgp+KKCZOS1u9G1Ey1Nei2hhH1ZP74=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BY5PR11MB4241.namprd11.prod.outlook.com (2603:10b6:a03:1ca::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Wed, 20 Jan
 2021 22:48:54 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755%4]) with mapi id 15.20.3763.015; Wed, 20 Jan 2021
 22:48:53 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.5 (Dunfell 23.0.5) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.5 (Dunfell 23.0.5) is Released
Thread-Index: AdbvfYhEaNqPUW1pQ0uv7TmQWKSDaQ==
Date: Wed, 20 Jan 2021 22:48:52 +0000
Message-ID: <BYAPR11MB3301945F6B819A81E61835A288A20@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.203.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0539f9bd-584e-4aa3-6d00-08d8bd959028
x-ms-traffictypediagnostic: BY5PR11MB4241:
x-microsoft-antispam-prvs: <BY5PR11MB42411FCB0E7683BD0B6C326488A29@BY5PR11MB4241.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BuJrx/4rdA+i+pJp6AqwpRT/5vjams021rnpmP/LUXi+lgw5lwT+MZRY5QBwYV1aDz31x3AoJ5lCoHH1fardePYN0+Bp7xmepuMg04JUytm+p+1wg+/QN0FEeADLAlcOKpD0lXc5WXNiLqNcmdKC0tL0fumTalMPH3+2LhvYRklS1quH+RiYplWHQSluoVbqTqLCqzfVMVcoP0E0q6C9jFFTgHy5O1JFQ2O/l/JfFJwbkS4UuH9oMR/dm2jpPCzTWarJ6KYggHsxjIiXy9eECO0qhaWXIC+WVZNRXYn3e7KBFOJRSpyE3Dr8PtE0yoyQ96oKtsTeiWj+iKQTsLYL4u98MRQZW+pfuB58xD+fjk6185NIWhyG2Wgt0E7wiyklJXzmSAwL1xtLkf+Uyqq0LcRuN1tVcfyatIYsLU6eixES1/hGdEiBWPjHrY9DwztMrBfbkQW5bS/01GbcncCQVbb4IGitd4eZhl9V1sYPr0V8ARGKNp91UwobvWhlkoqeQactlJzMlZIaSJ9ejVe+CA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(376002)(346002)(396003)(39860400002)(83380400001)(86362001)(52536014)(966005)(8676002)(2906002)(7696005)(5660300002)(55016002)(9686003)(30864003)(110136005)(66946007)(6506007)(33656002)(186003)(64756008)(316002)(76116006)(26005)(478600001)(66574015)(66476007)(71200400001)(66556008)(66446008)(8936002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?cXOVlQeUV5WMcogVNtk3nsuOxiZhjllJV9fPn0TtfH7iYI4WI5/zItnf4K?=
 =?iso-8859-1?Q?SIDhqrnitXAqnv86Wtc7yBZOT06qvo9GuZ2veEsWG3Uaam3Sy2ZSl3kaix?=
 =?iso-8859-1?Q?YzhiwwAAXmpVpzYsPzBNwR+ivfw5elJ4AeRDM6wGS0jzKVyvyIoTM7C/T/?=
 =?iso-8859-1?Q?bAncCcdQ6MQ3Fl08rlMvzc9jeCqHoDV/xiMAcwK6FTu7InxRdI0mTbyRzV?=
 =?iso-8859-1?Q?RogJboJxXsPg8pl9fgT7ZfmdWt5pEJzjTTewYAGlUFaBGujS9D42N3Wj09?=
 =?iso-8859-1?Q?W6LQfo3l2yE/kl0sfEDNSX5gxC35H86TYsvtChlUKLrACCnMFPyLASneUr?=
 =?iso-8859-1?Q?k2G0DnUUsRwqwrB+GZIt1QjdpRHpG1+F7Krwvv85He2e+Z1g8mK8qkcWHv?=
 =?iso-8859-1?Q?SshlVVSmuVPLeYrOqiznUQZxZSMl7Cjdud+Au+wGnZNuqC7XziPG9OMK18?=
 =?iso-8859-1?Q?US9wKOUQPvUjF7UicXl+NsIs72bCs3Caf9ldAkoIxVSYUHlJc2m5KE/TGx?=
 =?iso-8859-1?Q?JqPUSugpS4R9LBkRN5k4YoVci+3cGCgOkwd7DXAw6d2PFUioxWH/eYvBhJ?=
 =?iso-8859-1?Q?9xnIeqxCVxbP9m/8PWVYn8KpFU2TY89GvQtrmGPcAUpXdzUaPVbxk2fMCw?=
 =?iso-8859-1?Q?Tc4GdOoh2EBP4C5w8vxIVNKYAkdZapIoCpzCs3NtHlOxG7xAa48q5uQzue?=
 =?iso-8859-1?Q?Q/oa9m26vrzjHpVTm6UpVdq2BZ3d2ZfXeXHc99R+jwGqNC8Sc/MVY/lD2C?=
 =?iso-8859-1?Q?OU7Fe847gawXUqOzM6YXf6gXex0ijT93tc04aZ+LVY0nr6oeqD5AlTus18?=
 =?iso-8859-1?Q?4dFQhvRTGWvLvhjcLk9HXqeeVM2gCi+AyrVKhiD9DBeC5sAu8Pa65Z+Tje?=
 =?iso-8859-1?Q?MlfbcG2kGMYmnzzpsoTo//JNX+NtSzwM0H3OE78zMyYtqn5bCfi4rwC6MI?=
 =?iso-8859-1?Q?tiJbx5gPrDZdOZiBJH7021ZbFeJE6Qx4mL/MpUvbD3Yl9U8R7a7D9wxrgn?=
 =?iso-8859-1?Q?3lxQIZ0+8ZVGHadNEdGjb+Hvf5nhfA11yo2k6FMKsE/MBJ3FQudmpDyxjh?=
 =?iso-8859-1?Q?9ESOf8wJeU1btxaBqJrlma8qUEY0fA+xK+MayGy6PJlt?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0539f9bd-584e-4aa3-6d00-08d8bd959028
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 22:48:53.7931
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JzjMKZY9skBH6SmSB3tZiKRc6YGCjMV2p2rt8cVz3ZiQi2JTAwWPgQBKFqqsa+sQzfZ4YGKesXP6O7vemHz9ZX2TXs0Z6gEK8QHkoBDu9o4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4241
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.5 (dunfell-23.0.5) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/poky-dunfell-2=
3.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.5/poky-dunfell-23.0.5.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com

- --------------------------
yocto-3.1.5 Release Notes
- --------------------------


- --------------------------
 Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.5
Git Revision: e32d854e33bc86c2a616df8708e021a098afcf73
Release Artefact: poky-dunfell-23.0.5
sha: 0877b3468fc8006e07045c2a5ab898ed610bf2633ebf7f1e1c215af90a60afdd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/poky-dunfell-2=
3.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.5/poky-dunfell-23.0.5.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.5-dunfell
Git Revision: 72431ee8de5e3a53d259cebf420a7713ac9e1f14
Release Artefact: oecore-dunfell-23.0.5
sha: 71efe5ecb54c2b3daff2bdc233e88203e2bc3d23d499497e93fc6a9440325b6c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/oecore-dunfell=
-23.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.5/oecore-dunfell-23.0.5.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.5
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.5
sha: 6442025d6db72336759cf4bee9c6317dfd2e805fba9d80a320a91f941689ac0d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/meta-mingw-dun=
fell-23.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.5/meta-mingw-dunfell-23.0.5=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.5
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.5
sha: ccb13903fbdb8fd26233d27b7914cfcdc2d9a3ca13977c420495de6846e13dd0
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/meta-gplv2-dun=
fell-23.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.5/meta-gplv2-dunfell-23.0.5=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: 2020-04.5-dunfell
Git Revision: a394eeec6aeb98c6395cb5da2036ce936bdaa0a0
Release Artefact: bitbake-dunfell-23.0.5
sha: ef05c3262d20cc0b07b4e0ba3213ef237e424112bd8279c55dc72a0fe9d03de2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.5/bitbake-dunfel=
l-23.0.5.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.5/bitbake-dunfell-23.0.5.ta=
r.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.5
Git Revision: b367b2ece436cdd86f8408fbec1b263e03ed4267

- -----------------
Contributors
- ----------------
Alexander Kanavin
Andrej Valek
Anuj Mittal
Brett Warren
Bruce Ashfield
Changqing Li
Christopher Larson
Daniel Ammann
Diego Sueiro
Dmitry Baryshkov
Fedor Ross
Gratian Crisan
Hongxu Jia
Jain Sangeeta
Joshua Watt
Khem Raj
Lee Chee Yang
Loic Domaigne
Mark Jonas
Maxime Roussin-B=E9langer
Max Krummenacher
Mert Kirpici
Michael Halstead
Mikko Rapeli
Milan Shah
Naoki Hayama
Nathan Rossi
Nicolas Dechesne
Ovidiu Panait
Paul Barker
Paul Eggleton
Peter Kjellerstedt
Quentin Schulz
Richard Purdie
Robert Joslyn
Robert P. J. Day
Robert Yang
Ross Burton
sangeeta jain
Scott Murray
Stephen Jolley
Steve Sakoman
Tanu Kaskinen
Tomasz Dziendzielski
Vyacheslav Yurkov
Wang Mingyu
Wonmin Jung
Yi zhao
zangrc


- ---------------
 Known Issues
- ---------------
N/A


- ---------------
Security Fixes
- ---------------
glib-2.0: add patch for CVE-2020-35457
patch: fix CVE-2019-20633
grub: fix "CVE:" line in one of the patches
gdk-pixbuf: fix CVE-2020-29385
libexif: fix CVE-2020-0198; CVE-2020-0452
cups: Mark CVE-2008-1033 as a non-issue
cups: Mark CVE-2009-0032 as a non-issue
cups: whitelist CVE-2018-6553
binutils: fix CVE-2020-16592/16598
qemu: fix CVE-2020-25723
glibc: fix CVE-2020-29562
python3: fix CVE-2019-20907
coreutils: add SUSE-specific issues to CVE whitelist
gstreamer1.0-plugins-base: set CVE_PRODUCT
gstreamer1.0-rtsp-server: set CVE_PRODUCT
sqlite3: add CVE-2015-3717 to whitelist
python3: add CVE-2007-4559 to whitelist


- ---------------
Fixes
- ---------------
poky.conf: Bump version for 3.1.5 release
documentation: prepare for 3.1.5 release
mobile-broadband-provider-info: upgrade 20190618 ->20201225
selftest: Add argument to keep build dir
ruby: remove tcl DEPENDS
gcc: Fix mangled patch
systemd: update from 244.3 to 244.5 stable release
glibc: update to 2.31 stable tree head
diffstat: point the license checksum at the license
oe-pkgdata-util: Added a test to verify oe-pkgdata-util without parameters
timezone: upgrade to 2020f
linux-yocto/5.4: update to v5.4.85
wic: fix typo
man-db: Fix reproducibility issue
wic/direct/kparser: ensure fsuuid for vfat and msdos align with format
timezone: upgrade to 2020e
grub: Further reproducibility fix
populate_sdk_base: Fix condition syntax if SDK_RELOCATE_AFTER_INSTALL is di=
sabled
apr-util: Only specify --with-dbm=3Dgdbm if gdbm support is enabled
weston: Fix PACKAGECONFIG for remoting
oeqa/commands: Ensure sync can be found regardless of PATH
initscripts: use quotes for shell variable comparision
lib/oe/qa: handle the 'no specific instruction set' ELF e_machine value
pulseaudio: Remove OE_LT_RPATH_ALLOW
meta: add missing descriptions in some support recipes
valgrind: exclude bar_bad/bar_bad_xml from ptests
coreutils: enable xattrs by default for nativesdk
wic-image-minimal: only depend on syslinux on x86 targets
uboot-extlinux-config: exclude OVERRIDES from do_create_extlinux_config var=
deps
grub-efi-cfg: exclude OVERRIDES from build_efi_cfg vardeps
mesa: add more details to elf-tls patch
perl: fix installation failure because of shell issue
archiver.bbclass: Fix --runall=3Ddeploy_archives for images
ncurses: Prevent LDFLAGS being emitted in .pc files
ncurses: remove config.cache
minicom: RDEPENDS on ncurses-terminfo-base
ncurses: Make ncurses-tools depend on ncurses-terminfo-base
buildtools-tarball.bb: Fix PATH for environment setup script
modutils-initscripts: Use depmod -a when modules.dep is empty
sphinx: update link to bitbake docs
conf.py: set version to 3.1.4
Makefile: enable parallel build
conf.py: Improve TOC and Outline depth in PDF output
poky.yaml: remove unused variables
documentation: Add Pipenv support
adt-manual: delete obsolete ADT manual, and related content
README: "yocto-project-qs" -> "brief-yoctoprojectqs"
ref-manual/ref-variables: "PACKAGE_FEEDS_ARCHS" -> "PACKAGE_FEED_ARCHS"
dev-manual: Add a note about prelink changing prebuild binaries
ref-manual: add IMAGE_LINK_NAME
ref-manual: add IMAGE_NAME_SUFFIX variable
ref-manual: add IMAGE_VERSION_SUFFIX variable
ref-manual/faq: Add entry for why binaries are changed in images
ref-manual: fix for features_check class change
ref-manual: add reference anchors for each QA check
docs: kernel-dev-faq: update outdated RDEPENDS_kernel-base
docs: kernel-dev-common: add .patch file extension to SRC_URI files
docs: kernel-dev: fix typos, highlights and links
sphinx: add 3.1.3 and 3.0.4 release in the switcher
ref-manual: Document wic --offset option
docs: bsp-guide: bsp: fix typos, highlights and links
docs: ref-manual: ref-terms: add links to terms in glossary
ref-variables: Given example for naming sources
docs: dev-manual: fix typos, highlights, indentation and links
docs: dev-manual-common-tasks: update python webserver example to python3
docs: dev-manual-common-tasks: remove paragraph about race when missing DEP=
ENDS
sdk-manual: use built-in footnotes
docs: poky.yaml: fix identation in host packages variables
docs: sphinx: yocto-vars: rebuild files when poky.yaml has changed
docs: ref-manual: ref-system-requirements: update requirements to build Sph=
inx docs
docs: ref-manual: ref-classes: remove dropped tinderclient class
docs: ref-manual: migration-2.3: specify 2.3 version instead of DISTRO
docs: ref-manual: fix typos
docs: remove OE_INIT_FILE variable
docs: ref-manual: indentation, links and highlights fixes
docs: poky.yaml: use HTTPS for links
dev/test/ref-manual: Fix typos
docs: Fix license CC-BY-2.0-UK -> CC-BY-SA-2.0-UK
sphinx: rename Makefile.sphinx
sphinx: remove DocBook files
docs: ref-manual: ref-variables: add links to terms in glossary
docs: ref-manual: ref-variables: fix alphabetical order in glossary
docs: ref-manual: ref-variables: fix one-letter pointer links in glossary
sphinx: fix up some trademark and branding issues
sphinx: remove test-manual
sphinx: reintroduce changes for 3.1.1, 3.1.2, 3.1.3 and 3.1.4
sphinx: undo (ref-system-requirements: update supported hosts lists)
sphinx: import docs
bitbake: doc/conf.py: add missing import sys
bitbake: sphinx: partial undo (bitbake-user-manual: update perforce fetcher=
 docs)
bitbake: sphinx: undo (bitbake-user-manual: Remove TERM from BB_HASHBASE_WH=
ITELIST example)
bitbake: sphinx: import sphinx docs
openssl: Update to 1.1.1i
bash: Rename patch name
oeqa/selftest/cases/devtool.py: fix typo in ignore_patterns call
kernel: set COMPATIBLE_HOST to *-linux
linux-firmware: package firmware for Lontium lt9611uxc bridge
linux-firmware: upgrade 20201118 -> 20201218
linux-yocto/5.4/cfg: fix FIRMWARE_LOADER warnings
linux-yocto/5.4/cfg: fix -tiny warnings
linux-yocto/5.4: update to v5.4.83
linux-yocto/cfg: qemuarm64-gfx.cfg: add CONFIG_INPUT_UINPUT
linux-yocto/5.4: update to v5.4.82
linux-yocto/cfg: qemuppc: set CONFIG_SCSI to '=3Dy'
linux-yocto/5.4: update to v5.4.80
linux-yocto-rt/5.4: update to -rt44
man-db: Avoid reproducibility failures after fixing groff-native
groff: Fix reproducibility issue
u-boot-tools: Fix reproducibility issue
grub: Add second fix for determinism issue
grub: Fix build reproducibility issue
metadata_scm: Fix signature handling of METADATA_REVISION and METADATA_BRAN=
CH
buildtools-tarball: add wic dependency into extended buildtools
glib-networking/btrfs-tools/dosfstools/parted/bmap-tools/libsoup-2.4: add n=
ativesdk support
llvm: sort the lists in generated source reproducibibly
serf: do not install the static library
ffmpeg: fix reproducibility
webkitgtk: fix reproducibility
ruby: fix reproducibility
llvm: fix reproducibility
meta/lib/oe/reproducible.py: gitsm:// works just as fine as git:// for time=
stamps
kernel-module-split.bbclass: fix kernel modules getting marked as CONFFILES
libffi: add patch to revert clang VFP workaround
cve-update-db-native: handle all-wildcard versions
meta/lib/oeqa/manual/oe-core.json: Update test_bitbake_devshell
linux-firmware: package ath11k firmware
linux-firmware: upgrade 20201022 -> 20201118
image_types: sort tarball file listings
devtool: remove unused variable
oeqa/devtool: use Yocto mirror for pv-1.5.3 tarball
lz4: Use the new branch naming from upstream
kernel-dummy: fix executing unexpected tasks
wireless-regdb: upgrade 2020.04.29 -> 2020.11.20
libsdl2: Add directfb to PACKAGECONFIG rdepends
go: update to 1.14.12
lttng-modules: add post 2.11.6 patches
linux-yocto/5.4: update to v5.4.78
linux-yocto/5.4: perf: Alias SYS_futex with SYS_futex_time64 on 32-bit arch=
es with 64bit time_t
linux-yocto/5.4: update to v5.4.75
linux-yocto/5.4: config cleanup / warnings
linux-yocto/5.4: update to v5.4.73
linux-yocto/5.4: update to v5.4.72
linux-yocto/5.4: update to v5.4.71
e2fsprogs: Fix a ptest permissions determinism issue
fs-perms: Ensure /usr/src/debug/ file modes are correct
eudev: remove bashism to be compatible with dash
sysvinit: remove bashism to be compatible with dash
distutils-common-base: fix LINKSHARED expansion
cve-check: show real PN/PV
license_image.bbclass: use canonical name for license files
linux-firmware: rdepend on license for all nvidia packages
roofs_*.bbclass: fix missing vardeps for do_rootfs
kernel: Set proper LD in KERNEL_KCONFIG_COMMAND
kernel: relocate copy of module.lds to module compilation task
kernel: provide module.lds for out of tree builds in v5.10+
bitbake: taskexp: update for GTK API changes
