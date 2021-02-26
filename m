Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web09.16585.1614376181311465388
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 13:49:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=GJ0GyxOi;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: fhwDB08WY7rHCLhyxc3wG7uNJ/zUgCraFTGmKYzxDhi2H2/4Xi4SmlkQ1RoZt5RhwaS5GXdalu
 +zm5B/xwOWeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="173142539"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="173142539"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 13:49:38 -0800
IronPort-SDR: /WsPYvdOqVQ244KbTbQNCqaZ7g6wafFkwJLzugGhb2YvGn5cQEFL/WtN4TCdHNIzY8Y3Ujz3I8
 S9U2V2/NgbRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="scan'208";a="516652042"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by orsmga004.jf.intel.com with ESMTP; 26 Feb 2021 13:49:38 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Feb 2021 13:49:38 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Feb 2021 13:49:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 26 Feb 2021 13:49:37 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 26 Feb 2021 13:49:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6u0Wkc/TkL0+XB4a1bs0Bi3Di0bbh4+kXUDwNQbZOjtb5W+QL8x4kQ0UM8MWnlPnOYthiwb87WUHWZpRAATKqGpMVksPdbu9/EGoMpSGqYqLFyMhyZLoVEXAQTkfH9ZfzHkF92uQa/QxndNb4/6exziMWpcyLetCdMQdsrx96pzAxizueEhV/KmjBnHCS9bvMRXs/BWEhMb9Ee0/kqHzkSsUkmCXtT5+kLOrnldd/QmPETDio7qlrtlnjs62YgInfTnGF4E6saPB+2j9IH1nePEvRLqV5E8U6o/XVkjD8xTQNrr2ZXoum9skA4TGiqEQL1OD9Nm5O3VRW2msBzc5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cza8vwN08Z77j2ASA0PLI91RUz8Ux0fQd4wmvnCa1CY=;
 b=aqXCcwYUejC0TsQ3wdDjT7Rd1gn95y7xMWYJ7ObsdD99Kb8LxtCgepJvAu/6gO1QL4Rz8Uu1OYJUGwv8fRiGXejFgZye452LwOiU72ezsL6/5DyKXFEebgr0o+rSOh6NxBQmvyPRzqsLZZPs5xlWwHeAzSPNHwcZ8U0DIYuy0uU1tQ7qPo/U7w3MpMdbmFzGQJoWbUPB95UAmUsS2jvOW3cjTfN4yWPv8x/9ok25oRQF6QB9KfN5T4aaljiJf4sEEWFgCTCzbn+ZXrQTDB8Tua8VyCRcsVRIZyO2jbVshvuC2EqulYwc5WFhuCJyLUaCxqRjVRHJ3YxAJfOuY5SK9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cza8vwN08Z77j2ASA0PLI91RUz8Ux0fQd4wmvnCa1CY=;
 b=GJ0GyxOiobpMM5ZFEGg4+VE9mbpQ90iOzWxDvWq46qJRZaCbn4j3eKhMlViFe6ciKSg4l1BvcquXNoCqnSKjC8bBfArZ/VWaCkvlP3FT0pt28plom6jl8KjLV0i0Q+P68nH2C9hqHPmnLoLPSqqxiM+mhuugUcq9xtpBY9w1I5A=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Fri, 26 Feb
 2021 21:49:36 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755%4]) with mapi id 15.20.3890.023; Fri, 26 Feb 2021
 21:49:36 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.6 (Dunfell 23.0.6) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.6 (Dunfell 23.0.6) is Released
Thread-Index: AdcMiR+AKxZTNIvDSPSGsy7tY/yInA==
Date: Fri, 26 Feb 2021 21:49:35 +0000
Message-ID: <BYAPR11MB33017CF7403CEF40EB85062B889D9@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.154.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 550f4e02-4dc7-4800-7860-08d8daa068d1
x-ms-traffictypediagnostic: SJ0PR11MB4896:
x-ms-exchange-minimumurldomainage: yoctoproject.org#3823
x-microsoft-antispam-prvs: <SJ0PR11MB48969493E1253DA53BC81944889D9@SJ0PR11MB4896.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P8Z5Nk1CJ9nhIlDPQSMSNN4SN+qLnYFgYgYTC6u0UAOO7O4+N+makiTHhtkEi1pXONUhf8zcOwKaahxM5uSAxSbh5lgBFcSwVazXbTtUVi2HaNJIc8DLsEZ4S5bRa/dnaJrrIU2Re2pPY880OmcF2yeTgEfHO2IBCzXT/UZYwvluSi63m6VHxiVK51I/OwFHX45frtKAEgeg16o6UFAmcgcvQHm/BUy0q5487zWqH7rdBzDhMmxC5CTuGegsLKUStMQASAS0DZJcBzxlzceUV4AIPInKvlezIdfeJV4uuAE1u0wgzObqz3in7N1F0aMREjb0h7Rb7TaJlT4Orn7JCbIwDE92NEYIbmgTV7mxOGXH08Ol0xA0iOC2uVpduyO70MfcErC7nVTbzCH2nApvq75wy2xjehJKk1xvE5BpsghJcyVO392KQ6IbES8zZH5nLT5PapaxzZj46YiPyVeeYafPiZPQDqvlkqUdc0t0y3WPgofweW6cTjmnI4sC5MibNhlySZ5NsRYZO+D+2wSewykqPsHGHFKZ1OgjWnnP3sjj3ggx7y3B4zFsFQZb3ge1K+qjnp+vHuZL+FGnKA1Dei2+BeEVy5wX9lXH2XNc3MQJvhSrLOyLra67T3XGDLRFnRQHtdhjWgiUev0KZp0Bon943zremjjswf+smHjF5T0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39860400002)(346002)(376002)(136003)(396003)(76116006)(66446008)(5660300002)(66476007)(33656002)(30864003)(52536014)(66946007)(66556008)(86362001)(64756008)(66574015)(478600001)(7696005)(966005)(186003)(8676002)(110136005)(9686003)(71200400001)(316002)(83380400001)(8936002)(26005)(2906002)(6506007)(55016002)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?zoM9dAjE6eBETX+AuT8RouOtOqtcWD6fBAPMVwwe/Dj4PFEagd4eI4V0GB?=
 =?iso-8859-1?Q?TGjHkLpv0SlIJxJz/fsgANaYnq8Xv7tTkCak5R7wO1eBSv1YPqkH1QXVRP?=
 =?iso-8859-1?Q?Dxufrk7ZIRiU7oyGqJeUFSkRh47QjfZEGgYuBQZt46Ao6/DPVejLbDv/48?=
 =?iso-8859-1?Q?r00KenOq3NamkQb+EcKLTHZEcMqTdVORRHTvBTBYDCgObK7WJEJTILVOwB?=
 =?iso-8859-1?Q?prhRBoG1/1fo3S9Gn8xzIh+kV+ncQJwB8+fvuCVsAvJgDMZqZNeXkuLTeE?=
 =?iso-8859-1?Q?Ay8PELOinDbRDxZkoRktNtUng5ir/5CwE7nsfO3NN5hXiQK7D/orp0Bs4T?=
 =?iso-8859-1?Q?YOfhhHVULhIiDjvyXryn52HC2yNgGxw702Rwzf10e3Cg+EaSoJ64HGlsIw?=
 =?iso-8859-1?Q?YrKETzVRWVgnsprkY5qeZkGrh58wOjCUhg5268VWjuTpmAywF5uzWVez73?=
 =?iso-8859-1?Q?svoODTmkBLBFrjV7uKq82qNt8j4Y5eZ/l2/LwXlv8MMS1RW9SP2F6nsVV9?=
 =?iso-8859-1?Q?TLSZNgkt1tHMbfX9jNWQ1Pvc7Y24LLkEReJSqw7ctcyxpqTrjBCBFhf0sn?=
 =?iso-8859-1?Q?dqBkID03YE5WCCyXhVmlGD4dP9G5e14LrNqunMV4BojOShStTuKXmk3Ve5?=
 =?iso-8859-1?Q?kseftVZ9+xeoRGbDiZKdpzt5rryxWveN6RmVMX7O623K9kK+a0OCg6sHrY?=
 =?iso-8859-1?Q?Mi5XyZJ+jmvcoMEqYZBszu17bsakV0BhtZ0ubGl879IM0Snsg28V1yftRX?=
 =?iso-8859-1?Q?r/ASb+mi+d2DzpFfELu0EZsTTbSJnkRiL3JfTYvHZHP8zEhg4lP3Wjz/Rz?=
 =?iso-8859-1?Q?RSm4KfbqcK6wmaiWtKQgy6qDH2xpkSSk2FJ7ergweFbPL0r7KGTXUykAE1?=
 =?iso-8859-1?Q?XdLA8E/0Ng4NqEsy/p2rcyWSIfKAVu6QfNsXKVjpfowCPWs/wcb4byIRkA?=
 =?iso-8859-1?Q?JYdUpbEuUg1mFYhIv7rdIu48gr7Kq/EcPRR7iplXr4WySEyuM2DiHUexPc?=
 =?iso-8859-1?Q?oRv7u8Nz3reaxU0cnJDuuJtkCOTWsMSF2DnAmaWwVsPIfLgdwS5mKJMMSe?=
 =?iso-8859-1?Q?GCIbX6Oc3qkr99BaRzhfO+JWGsYJumAaNgAaafPZmCAchoOwpUh6lVYpJJ?=
 =?iso-8859-1?Q?ZzPHdmVqrrH0FeIw/ICIyNafNstxqV8gqWfQBjgRwkOMRBsSmqNLVVR9/0?=
 =?iso-8859-1?Q?t57gn4iAEHk/S4RFqF7sYTf+pfdsa05cxs0E295tw1K+xqi3ZUQ47ZP0aW?=
 =?iso-8859-1?Q?WglLNymUx52Q1BwcCcv4gkUwlKHk9YM8jFl4gXmYNY82RT8Aaxj+xnuXV9?=
 =?iso-8859-1?Q?NnIs+A0RKl/9JX80LSQK1coeGSzZVrhK7JA7FKBm9Bzx4qjos6n+ZifN5Q?=
 =?iso-8859-1?Q?nhJsGtw7cJ?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 550f4e02-4dc7-4800-7860-08d8daa068d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2021 21:49:36.0156
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZIBabPyQbTRbQnqHLMlj/kYwwBBTnsrOI65RIfDG6HyPcMFNG5p/eQNxRYAK3qbgYve0L0UErt/nDRg9O23ITB9s0w/HE63zuwm22o4iVH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.6 (dunfell-23.0.6) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/poky-dunfell-2=
3.0.6.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.6/poky-dunfell-23.0.6.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com


--------------------------
yocto-3.1.6 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.6
Git Revision: a13bda44fcda4e79e9aed39ca1495eabecb6a7b7
Release Artefact: poky-dunfell-23.0.6
sha: a2480100f6326df25f301e461ace52dad23b77e9ff9e6f0197cb7243703c61c6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/poky-dunfell-2=
3.0.6.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.6/poky-dunfell-23.0.6.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.6-dunfell
Git Revision: a8debddd6cbdd70db74e096d72f97fbee008ee63
Release Artefact: oecore-dunfell-23.0.6
sha: 4fc63ad2e738181c2de0106d5c039021aa3b9b7e0ab539e5c3d2f116bfe9ae16
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/oecore-dunfell=
-23.0.6.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.6/oecore-dunfell-23.0.6.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.6
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.6
sha: edc0c0310eb6d58d8991af07bbd6725686d07c40d9dabd66d7c4c36f5cb9554d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/meta-mingw-dun=
fell-23.0.6.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.6/meta-mingw-dunfell-23.0.6=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.6
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.6
sha: d322dd47bbf193d4f03348b24b4b0737f36d69aea9be3ba556c0d7f3617df3fb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/meta-gplv2-dun=
fell-23.0.6.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.6/meta-gplv2-dunfell-23.0.6=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: 2020-04.6-dunfell
Git Revision: fa94374baea75a94e3a488126ca7d8e241a77acd
Release Artefact: bitbake-dunfell-23.0.6
sha: 03154eaaf28173de561c274b118452182787a410a1fdcc827eadd9247f57921b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.6/bitbake-dunfel=
l-23.0.6.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.6/bitbake-dunfell-23.0.6.ta=
r.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.6
Git Revision: 660684b1a1ece4bdedfd63b9fc65d14f05c226d5

--------------
Contributors
-------------
Adrian Herrera
Alexander Kanavin
Anatol Belski
Andrey Mozzhuhin
Armin Kuster
Awais Belal
Bruce Ashfield
Chris Laplante
Dorinda
Jack Mitchell
Joe Slater
Jon Mason
Joshua Watt
Julien Massot
Khem Raj
Lee Chee Yang
Mans Rullgard
Marek Vasut
Mark Hatle
Martin Jansa
Matt Hoosier
Mauro Queir=F3s
Michael Halstead
Michael Ho
Mikko Rapeli
Mingli Yu
Oleksiy Obitotskyy
Oleksiy Obitotskyy yIEf0zt.mo
Ovidiu Panait
Paul Barker
Peter Bergin
Peter Kjellerstedt
Ricardo Ribalda
Ricardo Ribalda Delgado
Richard Purdie
Robert Joslyn
Ross Burton
saloni
Sangeeta Jain
Scott Murray
Sourabh Banerjee
Stephen Jolley
Steve Sakoman
Thomas Perrot
Tomasz Dziendzielski
Vyacheslav Yurkov
Wang Mingyu
Yi Fan Yu
Yi Zhao
zangrc
zhengruoqin

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
libcroco: Added CVE
libgcrypt: Whitelisted CVEs
glib-2.0: Rename patch file for CVE-2020-35457
openssl: set CVE_VERSION_SUFFIX
cve_check: add CVE_VERSION_SUFFIX to indicate suffix in versioning
ppp: Whitelist CVE-2020-15704
zip: whitelist CVE-2018-13410 and CVE-2018-13684
glibc: CVE-2019-25013
glibc: Security fix for CVE-2020-29573
xorg: Security fix for CVE-2020-14345
curl: fix CVE-2020-8231/8284/8285/8286


---------------
Fixes
---------------
build-appliance-image: Update to dunfell head revision
python3targetconfig.bbclass: Make py3 dep and tasks only for target recipes
gpgme: use python3targetconfig
meta: drop _PYTHON_SYSCONFIGDATA_NAME hacks
distutils3-base.bbclass: use python3targetconfig
python3-pycairo: use python3targetconfig
python3: split python target configuration into own class
gcc-9.3.inc: Fix potential runtime crash
p11-kit: upgrade 0.23.21 -> 0.23.22
p11-kit: upgrade 0.23.20 -> 0.23.21
oe-pkgdata-util: Check if environment script is initialized
opkg: Fix patch glitches
opkg: Fix build reproducibility issue
image_types.bbclass: tar: use posix format instead of gnu
image_types: Ensure tar archives are reproducible
uninative: Upgrade to 2.10
bitbake: lib/bb/fetch2/__init__.py: drop _PYTHON_SYSCONFIGDATA_NAME unsetti=
ng
poky.conf: Bump version for 3.1.6 release
documentation: prepare for 3.1.6 release
wic/selftest: test_permissions also test bitbake image
oeqa: wic: Add tests for permissions and change-directory
classes/image_types_wic: Reorder do_flush_pseudodb
rng-tools: fix rngd_jitter initialization
sstatesig: Add descriptive error message to getpwuid/getgrgid "uid/gid not =
found" KeyError
lib/oe/patch.py: Ignore scissors line on applying patch
layer.conf: fix sanity error for PATH variable in extensible SDK workflow
qemu.inc: Should depend on qemu-system-native, not qemu-native
python3: Use addtask statement instead of task dependencies
npm.bbclass: use python3 for npm config
buildhistory.bbclass: avoid exception for empty BUILDHISTORY_FEATURES varia=
ble
linux-yocto/5.4: update to v5.4.94
linux-yocto-rt/5.4: fix 5.4-stable caused build breakage
linux-yocto/5.4: update to v5.4.90
kernel.bbclass: fix deployment for initramfs images
package: Ensure do_packagedata is cleaned correctly
package.bbclass: hash equivalency and pr service
cve-check: replace Looseversion with custom version class
ca-certificates: upgrade 20200601 -> 20210119
ca-certificates: correct upstream version check
ca-certificates: upgrade 20190110 -> 20200601
sanity.bbclass: Check if PSEUDO_IGNORE_PATHS and paths under pseudo control=
 overlap
pseudo: Update to include passwd and file renaming fixes
staging: Clean up files installed into the sysroot
python3: Avoid installing test data into recipe-sysroot
ncurses: Don't put terminfo into the sysroot
externalsrc: Detect code changes in submodules
strace: increase ptest timeout duration 120->240s
timezone: upgrade to 2021a
selftest/devtool: Add modify_localfiles_only test checking symlink path
ovmf-shell-image: image is only buildable on x86-64
core-image-sato-sdk-ptest: these images need ptest
dtc: improve reproducibility
devtool: Fix file:// fetcher symlink directory structure
oeqa/selftest/cases/tinfoil.py: increase timeout 10->60s test_wait_event
externalsrc: Fix parsing error with devtool non-git sources
devtool: Fix source extraction for gcc shared source
toolchain-shar-relocate.sh: Fix handling files with colons
flex: Fix --noline option behavior
flex: Refresh patch
flex: fix build with autoconf 2.70
oeqa/ptest: print a warning if ptests failed
sanity.bbclass: sanity check for if bitbake is present in PATH
sanity: Verify that user isn't building in PSEUDO_IGNORE_PATHS
bitbake: fetch/git: download LFS content too during do_fetch
bitbake: git.py: Use the correct branch to check if the repository has LFS =
objects.
bitbake: git.py: LFS bitbake note should not be printed if need_lfs is not =
set.
bitbake: git.py: skip smudging if lfs=3D0 is set
wic: Optimise fstab modification for ext2/3/4 and msdos partitions
wic: Copy rootfs dir if fstab needs updating
wic: Add --change-directory argument
wic: Update pseudo db when excluding content from rootfs
image_types_wic: Move wic working directory
wic: Ensure internal workdir is not reused
wic: Allow exec_native_cmd to run HOSTTOOLS
wic: Add workdir argument
pseudo: Update for arm host and memleak fixes/cleanup
pseudo: Add lchmod wrapper
bitbake.conf: Add /run/ to PSEUDO_IGNORE_PATHS
license.bbclass: Add COMMON_LICENSE_DIR and LICENSE_PATH dirs to PSEUDO_IGN=
ORE_PATHS
bitbake.conf: Prevent pyc file generation in pseudo context
wic: Pass canonicalized paths in PSEUDO_IGNORE_PATHS
bitbake.conf: Canonicalize paths in PSEUDO_IGNORE_PATHS
lib/oe/path: Add canonicalize()
pseudo: Drop patches merged into upstream branch
distutils3: allow setup.py to be run from a different directory to ${S}
pseudo: Update to print PSEUDO_LOGFILE in abort message on path mismatches
pseudo: Simplify pseudo_client_ignore_path_chroot()
uninative: Don't use single sstate for pseudo-native
bitbake.conf: Exclude ${CCACHE_DIR} from pseudo database
tcl: adapt to potential pseudo changes
oeqa/selftest/runtime_test: Exclude gpg directory from pseudo database
base.bbclass: use os.path.normpath instead of just comparing WORKDIR and S =
as strings
pseudo: Upgrade to include mkostemp64 wrapper
pseudo: Update to account for patches merged on branch
abi_version,sanity: Tell users TMPDIR must be clean after pseudo changes
bitbake.conf: Extend PSEUDO_IGNORE_PATHS to ${COREBASE}/meta
pseudo: Fix statx function usage
wic: Handle new PSEUDO_IGNORE_PATHS variable
wic: Avoid creating invalid pseudo directory
wic: Fix multi images .wks with bitbake
wic: Fix permissions when using exclude or include path
base/bitbake.conf: Enable pseudo path filtering
pseudo: Add pathfix patch
pseudo: Add may unlink patch
pseudo: Fix xattr segfault
psuedo: Add tracking of linked files for fds
pseudo: Abort on mismatch patch
pseudo: Add support for ignoring paths from the pseudo DB
pseudo: Ignore mismatched inodes from the db
pseudo: fix renaming to self
pseudo: Update to add OFC fcntl lock updates
pseudo: merge in fixes for setfacl issue
pseudo: Switch to oe-core branch in git repo
linuxloader: Avoid confusing string concat errors
bitbake: data_smart: Ensure hash reflects vardepvalue flags correctly
waf: don't assume the waf intepretter is good
classes/waf: Add build and install arguments
boost: drop arm-intrinsics.patch
lib/oe/utils: Return empty string in parallel_make
toolchain-shar-extract.sh: Handle special characters in script path
scripts: oe-run-native, fix *-native directories
linux-yocto/5.4: update to v5.4.87
license_image.bbclass: fix missing recipeinfo on self
systemd.bbclass: improve error message when a service unit specified in SYS=
TEMD_SERVICE is not found
meta: toolchain-shar-relocate.sh: Filter out post-relocate-setup script
meta: toolchain-shar-relocate.sh: Do not use $target_sdk_dir as regex
go.bbclass: don't stage test data with sources of dependencies
