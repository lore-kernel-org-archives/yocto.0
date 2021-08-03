Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web12.1627.1628030121794624063
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 15:35:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=MHfn5r0A;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="213787351"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; 
   d="scan'208,217";a="213787351"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 15:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; 
   d="scan'208,217";a="419214838"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by orsmga006.jf.intel.com with ESMTP; 03 Aug 2021 15:35:16 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 15:35:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 3 Aug 2021 15:35:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 15:35:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOElror0yPcjS4mmgjLoA943oIIPMQmui5jlLCc9rraWywpxhl5yfDx573ohvZ8SKqiHA4V658y24YA53xDC4Gz+a0VHCsSAxrjAcYtm2Ru1wwdztxE3NHX1z/MsdQTbC1raZyTUadad7Txkx9gixhANydTgTU88G5oz7zaNvqCrMANGuBQLbTLyC8cKhpbhHxeddVIyrPXK+s5EsxS8zBddGbbNxmQYUctVH0RFkt//DSLfPw5M12dGrCoBhHe8p6q1tIihR30/FLLXQyE/DMNUwuamHLuFaYmt8n15somy+olpe+S0N9F7DnPH6dDVtQkSPyeDHpLebJcRy86b4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7GZBMA85/mjFkjrhiqyszk9psceI2f/M9eaKrOkfqg=;
 b=KWa4nLNv1kSirItooY2+sI2v+mFr4WDpir+1tZ96eCYnhkLVoOm0XxkWF84mee1EcKvtpgcEYAsSYf8qrdL3r4jB911kJAdaD7KvcbTvk+191cpyph1OZSXqf4id41ONjw8hNSPlFM6wSCpMAuVVxUHkvi7aIoGkQBDOx0ocdi3qNTAk3USyB/i30vQnWipDzW/MBVxueeylfSs+JXOsuITpJr0OHTawm+rwUSRF4zbG1Rvr5zi2nH3zodB70c9/d374csqrDTK3mX25apAMsBaKP2FyrhOVUhZZzu77A+ihaE1qAhHav66vX4uxitA5ZGTi2dCjtdNIhLJDVUsZbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7GZBMA85/mjFkjrhiqyszk9psceI2f/M9eaKrOkfqg=;
 b=MHfn5r0AOz7Qk1LXPrHMKDgCZRMksXCMFOMxO/9/NJxHp5anrmSFNMtUFIDuzpcYG+cdQqyaI1M19JdwZ7ZJgaF35/UjXzIWBtxqAsUnPQ+LnjBHUU2PYQR34UuWQ2T07Tpjx8NM7dhM6iZxIRhgHhSd387lWjjleRp93YRlDTk=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BY5PR11MB4370.namprd11.prod.outlook.com (2603:10b6:a03:1c3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.20; Tue, 3 Aug
 2021 22:35:11 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9%4]) with mapi id 15.20.4394.015; Tue, 3 Aug 2021
 22:35:11 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.3.2 (hardknott-25.0.2) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.3.2 (hardknott-25.0.2) is
 Released
Thread-Index: AdeIt3Rftz7ged3wTja1vixK8+skUg==
Date: Tue, 3 Aug 2021 22:35:11 +0000
Message-ID: <BYAPR11MB3301B216E23CC6C0D6F84F0388F09@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d88d3d4f-1457-471c-a1ef-08d956cef48f
x-ms-traffictypediagnostic: BY5PR11MB4370:
x-microsoft-antispam-prvs: <BY5PR11MB4370E408878A98533BEEEA9288F09@BY5PR11MB4370.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ot/9eKA9MDXrOgOqSwuVHZseATsdyp1Q0PsU/2hfLv79lgMlYxsUaHxiSzAOtkLiUY8vixrhBFKr0nDcp8eYRxI5vuTm7IGKv24AVap6SvM7fdTEeJw4cdFypVh9nTcEnV+zCA9R7BJbNamj2VxkCZIUamA2P7uj3uCS0CKD3K/avQr4VD0srzM5Hg6wVXCweDDcx7K2iWp4uYWpR0zjYTnDDxFrxUD9I3RAi2m4doQVPn5jlLEqB6c7A081Dr9R/q4oCFKzVw/WNv9nZewVLpQUH/vcRQNPb4Msw0n4oM9A7wCLofv3UFiw2E+wfQQ1FV4oSlt6os/+ZO9g0oRLjfhbjsigVt8a8d3tojcmzFGLrydAsfDggfuG0Z1S8khL03bzojO2XL9egFuFX2drmcnj+LGkjVGNpYuk76ZghhCxDJiSUMZ/LlgA0douLRGMy9jW1DJiAu7/WvWnilsOCvVdNwfSQOlqafCrIXDqypEy7XLixz3IIFf6Vv4KIN2paIR6c5GC3VGnMM2G5xUs0e7Xc54LnRzLPHSDcBVcExRC8z1CnHwGfbKeEWx/DBAGAaE5oV/7zTffUI/u0WQrhuZwVQaUXemB6lvBq6JJ8xYGQQFyQrzcP/Irg97oi79LRipcWroGBCZKvS6AoE/8xWiBZhh3V8BK3TjzdSRY1j//xE7pfYdOyW2il+AGv8hTWrK2KUA7fyNwuaM3PA3O5sIYeBD5ng8AtGU5DZ7ACgBfgIVSH5zoq1npGsMbjdr6Dh/dm8uI8kgBFRIPi5Y8cOLd98HrbFgMd6Xs8+m2neglc1SpoaCduELrLzE2kXj2jtXVg66lTbGE9655NzArRjw0d5YUppzkP2dln++NdECJUOCGfn6eJOthSEXrfiLK
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(346002)(366004)(396003)(376002)(8676002)(5660300002)(83380400001)(38070700005)(8936002)(9326002)(2906002)(38100700002)(30864003)(122000001)(110136005)(966005)(316002)(478600001)(9686003)(55016002)(26005)(7696005)(186003)(66556008)(64756008)(66446008)(76116006)(66946007)(66476007)(6506007)(71200400001)(52536014)(86362001)(33656002)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z0fk2lBAdQ1B9B/LRk8CQIXeyjuUyIM+DlUUniJpXguXDPBK1vlmvO2/p48I?=
 =?us-ascii?Q?P48LGGDkTonMI8o0805MSFQKoa+JsZZ3bMN0FMSCZsUZyBtPcE6smU8/hAt7?=
 =?us-ascii?Q?rOO886InmmlRttk0kH824ophjrnb9+OobNeAk/fU6DTXnMJQqtRjWom8eG3Z?=
 =?us-ascii?Q?Ve/RlAeTliPG5GJenQy1ngRKXLCtx3JHVzfHfy1rcWa+njz8DVehluZY8uMw?=
 =?us-ascii?Q?skuGlYTs/EtN7qrGkpWITebCCIrcWcYxXQ+jZoM65c31F8oxc38gax7alc+Q?=
 =?us-ascii?Q?TEztmAsxMT+Dav3bTmbQLpPWpW6UpxqXgXfy0KLR+cQ3STV0St5lqEHj++KH?=
 =?us-ascii?Q?DH6OYe15lfyIwn4zI4d46Pwl89XwLnBmpEFlFNVkKsk8H7Fx4OYbwM7/df/W?=
 =?us-ascii?Q?WhKFUvC1ZBM1eYjgY/f9dfNt0EUZwaNkcgNvyzFtDtJTN5WI8SxSbfQ2Iadm?=
 =?us-ascii?Q?TSkLi1nCLgYzsx+l1xwbXCqVKr1o+aQe6Taasz04a54oEPf5PqfW9BXlWHzP?=
 =?us-ascii?Q?6d6CeMP74buFF6W5nYoyScT5XINK/JW1cAQIGQqP0gxJ/S0USGg7f5Fff2Fy?=
 =?us-ascii?Q?Ear/uNoDfzX51yCTjkoqiuMfPguC8zobOlp9ax9up0LitVP9RbobvNxsejcW?=
 =?us-ascii?Q?CtFU/U/TF0Z6gwN6UUPzjTSzudhTI5Cv98Ak8XYWbEt6ttRbLD9CXfFFseWx?=
 =?us-ascii?Q?I8Ry8GZYTZuwfN1aG7tP7dkmXWTYKpyHWY97+tUQXENaIi07vj/bNZR2qB2F?=
 =?us-ascii?Q?9DdvsiKwzJGhJ0M2RTe1u2CfHoHKNwb/6OyD7u7o7aKK9rJ3M5t2jgj2n1Ni?=
 =?us-ascii?Q?oaV/AwtEBiKLB6A8N/XvgBukXtcdtflXGzBYoDeNsvKhwkgzBSSx4eJRnKP/?=
 =?us-ascii?Q?vdSrpCXhCHOLNX8UDQKRRKPy+g9pxD6BixJSJvOvuUH/URwvi893EfyQu0aH?=
 =?us-ascii?Q?nmXvOiUdzByRkWPL0gnQnOSvbmS3MI+e4YlzvyK5bkQl7oSFeaTMpQ44I0Wf?=
 =?us-ascii?Q?TL6LAUtzOA+xzDkzue7BvcNPB1iJbv9p4XrV9tdeAWTuBpOl8zXMsIB+6tuU?=
 =?us-ascii?Q?xzJ1O/KOSASXlVCs949DSediYm7pNPriT4G4TI9J4h6T/UqNcDNehb7RPr/m?=
 =?us-ascii?Q?X1+OYZ34GAU4VJMQFv+cuQNGDvQPrbJLNZD0cuWQs7j3sWhsvCHIG1uCf1L3?=
 =?us-ascii?Q?9UXRkK03uerkt61T9gmrYmiIgT24iuhK+AFSfQRpvAvaumqzIwIwaB6nNAFq?=
 =?us-ascii?Q?jGnat2D9c/yr5uI6xp76FXi51fjoPw8wbRrmnmNm+dLkfc6FzjYElpVbohrB?=
 =?us-ascii?Q?rogJjEjXY5gAK3cN/iJRtwfj?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d88d3d4f-1457-471c-a1ef-08d956cef48f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 22:35:11.4092
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J8Gkn41EIUfvSWdCQC2vWQzIKvYs/BuATpH3dmJAo1skuiRlIUfmnFDyUZgnE8VgGh9QK8QZ/tedJkOX/a5wcJqHgzZywW4CgDdkr0mDJPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4370
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3301B216E23CC6C0D6F84F0388F09BYAPR11MB3301namp_"

--_000_BYAPR11MB3301B216E23CC6C0D6F84F0388F09BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.3.2 (hardknott-25.0.2) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/poky-hardknott=
-25.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/poky-hardknott-25.0.2.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/testreport.txt

Thank you for everyone's contributions to this release.


Vineela Tummalapalli,

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>

- --------------------------
yocto-3.3.2 Release Notes
- --------------------------
- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: hardknott
Tag: yocto-3.3.2
Git Revision: 31c639eb8664059eb4ed711be9173c223b4cc940
Release Artefact: poky-hardknott-25.0.2
sha: 367049275bb85bac112aaa017a2c85eb292f61b0a54f4a93dcc3b4baf9ee4338
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/poky-hardknott=
-25.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/poky-hardknott-25.0.2.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: hardknott
Tag: 2021-04.2-hardknott
Git Revision: e458c15627e7b27392d158cbb9417f66424aa7d5
Release Artefact: oecore-hardknott-25.0.2
sha: 422a3d86a45d5b00e06e475330cf61ac33c15a51e8352331b5c344e4e4bb3f25
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/oecore-hardkno=
tt-25.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/oecore-hardknott-25.0.2.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: hardknott
Tag: yocto-3.3.2
Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d1219e
Release Artefact: meta-mingw-hardknott-25.0.2
sha: 985ce3e81a1c2b93500714bfe0ec0c1f30b8f66f8ff349ffe617e1b9292ce80a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/meta-mingw-har=
dknott-25.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/meta-mingw-hardknott-25.0=
.2.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: hardknott
Tag: yocto-3.3.2
Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
Release Artefact: meta-gplv2-hardknott-25.0.2
sha: 817c412acc13c929dfcc36818d81e1f2d42ae4ce65548724921a011a8643fd03
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/meta-gplv2-har=
dknott-25.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/meta-gplv2-hardknott-25.0=
.2.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.50
Tag: 2021-04.2-hardknott
Git Revision: 731fb52eb03338c0bdb2a2256c22c64c22bcbace
Release Artefact: bitbake-hardknott-25.0.2
sha: 9504b632da89d28400847f5255a12444016ab5e77dd156701e0b7573a7aaba3e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.2/bitbake-hardkn=
ott-25.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/bitbake-hardknott-25.0.2.=
tar.bz2

epository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: hardknott
Tag: yocto-3.3.2
Git Revision: dae6a0209d69c267d3cbace6589b0ac73e06abce

- ---------------
Contributors
- ---------------
Alejandro Hernandez Samaniego
Alexander Kanavin
Andrea Adami
Andrej Valek
Anuj Mittal
Asfak Rahman
Bastian Krause
Bruce Ashfield
Changqing Li
Daniel McGregor
Florian Amstutz
Guillaume Champagne
Harald Brinkmann
Jain Sangeeta
jbouchard
Joshua Watt
Kai Kang
Khairul Rohaizzat Jamaluddin
Khem Raj
Marek Vasut
Michael Halstead
Michael Ho
Ming Liu
Mingli Yu
Nicolas Dechesne
Nikolay Papenkov
Peter Kjellerstedt
Richard Purdie
Robert P. J. Day
Ross Burton
Sakib Sajal
Scott Weaver
Stefan Ghinea
Stephen Jolley
Steve Sakoman
Tony Tascioglu
Trevor Gamblin
Vinay Kumar
Wadim Egorov
wangmy
Yi Zhao
zhengruoqin
Zqiang

- ---------------
Known Issues
- ---------------
Bug 14388 - AB-INT PTEST: valgrind failed helgrind/tests/hg05_race2


- ---------------
Security Fixes
- ---------------
curl: Fix CVE-2021-22897
curl: Fix CVE-2021-22898
binutils: Fix CVE-2021-20197
rxvt-unicode: fix CVE-2021-33477
libconvert-asn1-perl: fix CVE-2013-7488
avahi: apply fix for CVE-2021-3468
libx11: fix CVE-2021-31535
curl: cleanup CVE patches for hardknott
expat: set CVE_PRODUCT
curl: fix CVE-2021-22876
curl: fix CVE-2021-22890
qemu: Exclude CVE-2020-3550[4/5/6] from cve-check
xinetd: Exclude CVE-2013-4342 from cve-check
cve-extra-exclusions.inc: add exclusion list for intractable CVE's
grub: Exclude CVE-2019-14865 from cve-check
grub2: Add CVE whitelist entries for issues fixed in 2.06
libxml2: Fix CVE-2021-3541
libxml2: Fix CVE-2021-3518
libxml2: fix CVE-2021-3537
libxml2: fix CVE-2021-3516
libxml2: fix CVE-2021-3517
cups: whitelist CVE-2021-25317
avahi: Exclude CVE-2021-26720 from cve-check
librsvg: Exclude CVE-2018-1000041 from cve-check
coreutils: Exclude CVE-2016-2781 from cve-check
tiff: Exclude CVE-2015-7313 from cve-check
bluez: Exclude CVE-2020-12352 CVE-2020-24490 from cve-check
ghostscript: Exclude CVE-2013-6629 from cve-check
cpio: Exclude CVE-2010-4226 from cve-check
unzip: Exclude CVE-2008-0888 from cve-check
openssh: Exclude CVE-2008-3844 from cve-check
openssh: Exclude CVE-2007-2768 from cve-check
logrotate: Exclude CVE-2011-1548,1549,1550 from cve-check
jquery: Exclude CVE-2007-2379 from cve-check
qemu: Exclude CVE-2018-18438 from cve-check
qemu: Exclude CVE-2007-0998 from cve-check
qemu: Exclude CVE-2017-5957 from cve-check
builder: whitelist CVE-2008-4178 (a different builder)
libnotify: whitelist CVE-2013-7381 (specific to the NodeJS bindings)
glibc: Document and whitelist CVE-2019-1010022-25


- ---------------
Fixes
- ---------------
bitbake: data_smart: Allow colon in variable expansion regex
bitbake: data_smart/parse: Allow ':' characters in variable/function names
poky.conf: bump version for 3.3.2 hardknott release
documentation: prepare for 3.3.2 release
xserver-xorg: Fix builds without glx
busybox: add tmpdir option into mktemp applet
kernel-devsrc: fix scripts prepare for powerpc
kernel-devsrc: fix scripts/prepare for ARM64
dwarfsrcfiles: Avoid races over debug-link files
oeqa/selftest/multiprocesslauch: Fix test race
go: upgrade 1.16.4 -> 1.16.5
go: upgrade 1.16.3 -> 1.16.4
linux-yocto-dev: base AUTOREV on specified version
boost-build-native: workaround one rarely hang problem on fedora34
glibc-testsuite: Fix build failures when directly running recipe
runqemu: Remove potential lock races around tap device handling
perl: correct libpth and glibpth
busybox: upgrade 1.33.0 -> 1.33.1
linux-firmware: Package RSI 911x WiFi firmware
linux-yocto/5.10: scsi-debug needs scsi-disk
linux-yocto/5.4: update to v5.4.129
linux-yocto/5.10: update to v5.10.47
openssh: Remove temporary keys before generating new ones
oeqa/selftest/archiver: Allow tests to ignore empty directories
devtool: deploy-target: Fix preserving attributes when using --strip
sstate/staging: Handle directory creation race issue
oeqa/selftest/runcmd: Tweal test timeouts
bitbake: fetch2: add check for empty SRC_URI hash string
bitbake: fetch/svn: Fix parsing revision of SVN repos with redirects
bsps/5.10: update to v5.10.43
lttng-modules: update to v2.12.6
kernel-devsrc: adjust NM and OBJTOOL variables for target
kern-tools: Kconfiglib: add support for bare 'modules' keyword
kern-tools: add dropped options to audit output
curl: fix build when proxy is not enabled in PACKAGECONFIG
libgcrypt: upgrade 1.9.2 -> 1.9.3
kernel-devicetree: Fix interaction when packaging disabled
sstate.bbclass: fix errors about read-only sstate mirrors
Use the label provided when formating a dos partition
linux-yocto/5.10: rcu: Fix stall-warning deadlock due to non-release of rcu=
_node ->lock
linux-yocto/5.4: update to v5.4.128
linux-yocto/5.10: features/nft_tables: refresh config options
linux-yocto/5.10: update to v5.10.46
kernel: Fix interaction when packaging disabled
selftest/fetch: Avoid occasional selftest failure from poor temp file name =
choice
ifupdown: Skip wrong test item
package_pkgdata: Avoid task hash mismatches for generic task changes
devtool upgrade: rebase override-only patches as well
uboot-sign.bbclass: fix some install commands
linux-yocto/5.10: cgroup1: fix leaked context root causing sporadic NULL de=
ref in LTP
linux-yocto/5.10: update to v5.10.43
linux-yocto/5.10: update to v5.10.42
kernel.bbclass: fix do_sizecheck() comparison
perf: Use python3targetconfig to ensure we use target libraries
valgrind: Actually install list of non-deterministic ptests
valgrind: remove buggy ptest from arm64
linuxloader: Be aware of riscv32 ldso
linux-yocto/5.4: update to v5.4.125
lttng-tools: upgrade 2.12.3 -> 2.12.4
linux-yocto/5.4: update to v5.4.124
native.bbclass: Do not remove "-native" in the middle of recipe names
util-linux.inc: Do not modify BPN
linux-firmware: upgrade 20210315 -> 20210511
image-live.bbclass: order do_bootimg after do_rootfs
linux-yocto/5.4: update to v5.4.123
linux-yocto/5.10: update to v5.10.41
linux-yocto/5.4: update to v5.4.120
linux-yocto/5.10: update to v5.10.38
linux-yocto/5.4: update to v5.4.119
linux-yocto/5.10: update to v5.10.37
linux-yocto/5.4: update to v5.4.118
linux-yocto/5.10: update to v5.10.36
linux-yocto/5.10: ktypes/standard: disable obsolete crypto options by defau=
lt
linux-yocto/5.4: update to v5.4.117
linux-yocto/5.10: update to v5.10.35
classes/reproducible_build: Use atomic rename for SDE file
valgrind: Improve non-deterministic ptest reliability
valgrind: fix a typo
python3: upgrade 3.9.4 -> 3.9.5
oeqa/runtime/rpm: Drop log message counting test component
package_rpm: pass XZ_THREADS to rpm
pkgconfig: update SRC_URI
flex: correct license information
bind: upgrade 9.16.15 -> 9.16.16
bind: upgrade 9.16.13 -> 9.16.15
bind: upgrade 9.16.12 -> 9.16.13
lib/oe/gpg_sign.py: Fix gpg verification
sstate: Ignore sstate signing key
boost: fix do_fetch failure
baremetal-image: Fix post process command rootfs_update_timestamp
ltp: Disable problematic tests causing autobuilder hangs
ccache: add packageconfig docs option
sstate: Handle manifest 'corruption' issue
glibc: Add 8GB VM usage cap for usermode test suite
uninative: Upgrade to 3.2 (gcc11 support)
meta/lib/oe/rootfs.py: Fix typo "Restoreing" -> "Restoring"
image.bbclass: fix comment "pacackages" -> "packages"
bitbake: server/process: Handle error in heartbeat funciton in OOM case
bitbake: fetch2/wget: when checking latest versions, consider all numerical=
 directories

--_000_BYAPR11MB3301B216E23CC6C0D6F84F0388F09BYAPR11MB3301namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.3.2 (=
hardknott-25.0.2) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/poky-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/po=
ky-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/RELEASENOTES<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/testreport.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli,<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.3.2 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 31c639eb8664059eb4ed711be9173c223b4cc9=
40<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-hardknott-25.0.2<o:p></o:p></=
p>
<p class=3D"MsoNormal">sha: 367049275bb85bac112aaa017a2c85eb292f61b0a54f4a9=
3dcc3b4baf9ee4338<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/poky-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/po=
ky-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.2-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: e458c15627e7b27392d158cbb9417f66424aa7=
d5<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-hardknott-25.0.2<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: 422a3d86a45d5b00e06e475330cf61ac33c15a51e835233=
1b5c344e4e4bb3f25<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/oecore-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/oe=
core-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d121=
9e<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-hardknott-25.0.2<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: 985ce3e81a1c2b93500714bfe0ec0c1f30b8f66f8ff349f=
fe617e1b9292ce80a<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/meta-mingw-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/me=
ta-mingw-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db=
0f<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-hardknott-25.0.2<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: 817c412acc13c929dfcc36818d81e1f2d42ae4ce6554872=
4921a011a8643fd03<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/meta-gplv2-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/me=
ta-gplv2-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.50<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.2-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 731fb52eb03338c0bdb2a2256c22c64c22bcba=
ce<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-hardknott-25.0.2<o:p></o:p=
></p>
<p class=3D"MsoNormal">sha: 9504b632da89d28400847f5255a12444016ab5e77dd1567=
01e0b7573a7aaba3e<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.2/bitbake-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.2/bi=
tbake-hardknott-25.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">epository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: dae6a0209d69c267d3cbace6589b0ac73e06ab=
ce<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Alejandro Hernandez Samaniego<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Andrea Adami<o:p></o:p></p>
<p class=3D"MsoNormal">Andrej Valek<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Asfak Rahman<o:p></o:p></p>
<p class=3D"MsoNormal">Bastian Krause<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Daniel McGregor<o:p></o:p></p>
<p class=3D"MsoNormal">Florian Amstutz<o:p></o:p></p>
<p class=3D"MsoNormal">Guillaume Champagne<o:p></o:p></p>
<p class=3D"MsoNormal">Harald Brinkmann<o:p></o:p></p>
<p class=3D"MsoNormal">Jain Sangeeta<o:p></o:p></p>
<p class=3D"MsoNormal">jbouchard<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Khairul Rohaizzat Jamaluddin<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Halstead<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Ho<o:p></o:p></p>
<p class=3D"MsoNormal">Ming Liu<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Nicolas Dechesne<o:p></o:p></p>
<p class=3D"MsoNormal">Nikolay Papenkov<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Kjellerstedt<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Robert P. J. Day<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoNormal">Scott Weaver<o:p></o:p></p>
<p class=3D"MsoNormal">Stefan Ghinea<o:p></o:p></p>
<p class=3D"MsoNormal">Stephen Jolley<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Tony Tascioglu<o:p></o:p></p>
<p class=3D"MsoNormal">Trevor Gamblin<o:p></o:p></p>
<p class=3D"MsoNormal">Vinay Kumar<o:p></o:p></p>
<p class=3D"MsoNormal">Wadim Egorov<o:p></o:p></p>
<p class=3D"MsoNormal">wangmy<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Zhao<o:p></o:p></p>
<p class=3D"MsoNormal">zhengruoqin<o:p></o:p></p>
<p class=3D"MsoNormal">Zqiang<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Bug 14388 - AB-INT PTEST: valgrind failed helgrind/t=
ests/hg05_race2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">curl: Fix CVE-2021-22897<o:p></o:p></p>
<p class=3D"MsoNormal">curl: Fix CVE-2021-22898<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: Fix CVE-2021-20197<o:p></o:p></p>
<p class=3D"MsoNormal">rxvt-unicode: fix CVE-2021-33477<o:p></o:p></p>
<p class=3D"MsoNormal">libconvert-asn1-perl: fix CVE-2013-7488<o:p></o:p></=
p>
<p class=3D"MsoNormal">avahi: apply fix for CVE-2021-3468<o:p></o:p></p>
<p class=3D"MsoNormal">libx11: fix CVE-2021-31535<o:p></o:p></p>
<p class=3D"MsoNormal">curl: cleanup CVE patches for hardknott<o:p></o:p></=
p>
<p class=3D"MsoNormal">expat: set CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">curl: fix CVE-2021-22876<o:p></o:p></p>
<p class=3D"MsoNormal">curl: fix CVE-2021-22890<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: Exclude CVE-2020-3550[4/5/6] from cve-check<o:=
p></o:p></p>
<p class=3D"MsoNormal">xinetd: Exclude CVE-2013-4342 from cve-check<o:p></o=
:p></p>
<p class=3D"MsoNormal">cve-extra-exclusions.inc: add exclusion list for int=
ractable CVE's<o:p></o:p></p>
<p class=3D"MsoNormal">grub: Exclude CVE-2019-14865 from cve-check<o:p></o:=
p></p>
<p class=3D"MsoNormal">grub2: Add CVE whitelist entries for issues fixed in=
 2.06<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: Fix CVE-2021-3541<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: Fix CVE-2021-3518<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: fix CVE-2021-3537<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: fix CVE-2021-3516<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: fix CVE-2021-3517<o:p></o:p></p>
<p class=3D"MsoNormal">cups: whitelist CVE-2021-25317<o:p></o:p></p>
<p class=3D"MsoNormal">avahi: Exclude CVE-2021-26720 from cve-check<o:p></o=
:p></p>
<p class=3D"MsoNormal">librsvg: Exclude CVE-2018-1000041 from cve-check<o:p=
></o:p></p>
<p class=3D"MsoNormal">coreutils: Exclude CVE-2016-2781 from cve-check<o:p>=
</o:p></p>
<p class=3D"MsoNormal">tiff: Exclude CVE-2015-7313 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">bluez: Exclude CVE-2020-12352 CVE-2020-24490 from cv=
e-check<o:p></o:p></p>
<p class=3D"MsoNormal">ghostscript: Exclude CVE-2013-6629 from cve-check<o:=
p></o:p></p>
<p class=3D"MsoNormal">cpio: Exclude CVE-2010-4226 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">unzip: Exclude CVE-2008-0888 from cve-check<o:p></o:=
p></p>
<p class=3D"MsoNormal">openssh: Exclude CVE-2008-3844 from cve-check<o:p></=
o:p></p>
<p class=3D"MsoNormal">openssh: Exclude CVE-2007-2768 from cve-check<o:p></=
o:p></p>
<p class=3D"MsoNormal">logrotate: Exclude CVE-2011-1548,1549,1550 from cve-=
check<o:p></o:p></p>
<p class=3D"MsoNormal">jquery: Exclude CVE-2007-2379 from cve-check<o:p></o=
:p></p>
<p class=3D"MsoNormal">qemu: Exclude CVE-2018-18438 from cve-check<o:p></o:=
p></p>
<p class=3D"MsoNormal">qemu: Exclude CVE-2007-0998 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">qemu: Exclude CVE-2017-5957 from cve-check<o:p></o:p=
></p>
<p class=3D"MsoNormal">builder: whitelist CVE-2008-4178 (a different builde=
r)<o:p></o:p></p>
<p class=3D"MsoNormal">libnotify: whitelist CVE-2013-7381 (specific to the =
NodeJS bindings)<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Document and whitelist CVE-2019-1010022-25<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart: Allow colon in variable expansi=
on regex<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart/parse: Allow ':' characters in v=
ariable/function names<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: bump version for 3.3.2 hardknott release<=
o:p></o:p></p>
<p class=3D"MsoNormal">documentation: prepare for 3.3.2 release<o:p></o:p><=
/p>
<p class=3D"MsoNormal">xserver-xorg: Fix builds without glx<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: add tmpdir option into mktemp applet<o:p></=
o:p></p>
<p class=3D"MsoNormal">kernel-devsrc: fix scripts prepare for powerpc<o:p><=
/o:p></p>
<p class=3D"MsoNormal">kernel-devsrc: fix scripts/prepare for ARM64<o:p></o=
:p></p>
<p class=3D"MsoNormal">dwarfsrcfiles: Avoid races over debug-link files<o:p=
></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/multiprocesslauch: Fix test race<o:p><=
/o:p></p>
<p class=3D"MsoNormal">go: upgrade 1.16.4 -&gt; 1.16.5<o:p></o:p></p>
<p class=3D"MsoNormal">go: upgrade 1.16.3 -&gt; 1.16.4<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto-dev: base AUTOREV on specified version<o=
:p></o:p></p>
<p class=3D"MsoNormal">boost-build-native: workaround one rarely hang probl=
em on fedora34<o:p></o:p></p>
<p class=3D"MsoNormal">glibc-testsuite: Fix build failures when directly ru=
nning recipe<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu: Remove potential lock races around tap devi=
ce handling<o:p></o:p></p>
<p class=3D"MsoNormal">perl: correct libpth and glibpth<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: upgrade 1.33.0 -&gt; 1.33.1<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: Package RSI 911x WiFi firmware<o:p><=
/o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: scsi-debug needs scsi-disk<o:p></o=
:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.129<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.47<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: Remove temporary keys before generating new=
 ones<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/archiver: Allow tests to ignore empty =
directories<o:p></o:p></p>
<p class=3D"MsoNormal">devtool: deploy-target: Fix preserving attributes wh=
en using --strip<o:p></o:p></p>
<p class=3D"MsoNormal">sstate/staging: Handle directory creation race issue=
<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/runcmd: Tweal test timeouts<o:p></o:p>=
</p>
<p class=3D"MsoNormal">bitbake: fetch2: add check for empty SRC_URI hash st=
ring<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch/svn: Fix parsing revision of SVN repo=
s with redirects<o:p></o:p></p>
<p class=3D"MsoNormal">bsps/5.10: update to v5.10.43<o:p></o:p></p>
<p class=3D"MsoNormal">lttng-modules: update to v2.12.6<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-devsrc: adjust NM and OBJTOOL variables for t=
arget<o:p></o:p></p>
<p class=3D"MsoNormal">kern-tools: Kconfiglib: add support for bare 'module=
s' keyword<o:p></o:p></p>
<p class=3D"MsoNormal">kern-tools: add dropped options to audit output<o:p>=
</o:p></p>
<p class=3D"MsoNormal">curl: fix build when proxy is not enabled in PACKAGE=
CONFIG<o:p></o:p></p>
<p class=3D"MsoNormal">libgcrypt: upgrade 1.9.2 -&gt; 1.9.3<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-devicetree: Fix interaction when packaging di=
sabled<o:p></o:p></p>
<p class=3D"MsoNormal">sstate.bbclass: fix errors about read-only sstate mi=
rrors<o:p></o:p></p>
<p class=3D"MsoNormal">Use the label provided when formating a dos partitio=
n<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: rcu: Fix stall-warning deadlock du=
e to non-release of rcu_node -&gt;lock<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.128<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: features/nft_tables: refresh confi=
g options<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.46<o:p></o:p></p>
<p class=3D"MsoNormal">kernel: Fix interaction when packaging disabled<o:p>=
</o:p></p>
<p class=3D"MsoNormal">selftest/fetch: Avoid occasional selftest failure fr=
om poor temp file name choice<o:p></o:p></p>
<p class=3D"MsoNormal">ifupdown: Skip wrong test item<o:p></o:p></p>
<p class=3D"MsoNormal">package_pkgdata: Avoid task hash mismatches for gene=
ric task changes<o:p></o:p></p>
<p class=3D"MsoNormal">devtool upgrade: rebase override-only patches as wel=
l<o:p></o:p></p>
<p class=3D"MsoNormal">uboot-sign.bbclass: fix some install commands<o:p></=
o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: cgroup1: fix leaked context root c=
ausing sporadic NULL deref in LTP<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.43<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.42<o:p></o:p></p>
<p class=3D"MsoNormal">kernel.bbclass: fix do_sizecheck() comparison<o:p></=
o:p></p>
<p class=3D"MsoNormal">perf: Use python3targetconfig to ensure we use targe=
t libraries<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind: Actually install list of non-deterministic=
 ptests<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind: remove buggy ptest from arm64<o:p></o:p></=
p>
<p class=3D"MsoNormal">linuxloader: Be aware of riscv32 ldso<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.125<o:p></o:p></p>
<p class=3D"MsoNormal">lttng-tools: upgrade 2.12.3 -&gt; 2.12.4<o:p></o:p><=
/p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.124<o:p></o:p></p>
<p class=3D"MsoNormal">native.bbclass: Do not remove &quot;-native&quot; in=
 the middle of recipe names<o:p></o:p></p>
<p class=3D"MsoNormal">util-linux.inc: Do not modify BPN<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20210315 -&gt; 20210511<o:p>=
</o:p></p>
<p class=3D"MsoNormal">image-live.bbclass: order do_bootimg after do_rootfs=
<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.123<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.41<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.120<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.38<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.119<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.37<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.118<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.36<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: ktypes/standard: disable obsolete =
crypto options by default<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.117<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.35<o:p></o:p></p>
<p class=3D"MsoNormal">classes/reproducible_build: Use atomic rename for SD=
E file<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind: Improve non-deterministic ptest reliabilit=
y<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind: fix a typo<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.9.4 -&gt; 3.9.5<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime/rpm: Drop log message counting test com=
ponent<o:p></o:p></p>
<p class=3D"MsoNormal">package_rpm: pass XZ_THREADS to rpm<o:p></o:p></p>
<p class=3D"MsoNormal">pkgconfig: update SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">flex: correct license information<o:p></o:p></p>
<p class=3D"MsoNormal">bind: upgrade 9.16.15 -&gt; 9.16.16<o:p></o:p></p>
<p class=3D"MsoNormal">bind: upgrade 9.16.13 -&gt; 9.16.15<o:p></o:p></p>
<p class=3D"MsoNormal">bind: upgrade 9.16.12 -&gt; 9.16.13<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/gpg_sign.py: Fix gpg verification<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sstate: Ignore sstate signing key<o:p></o:p></p>
<p class=3D"MsoNormal">boost: fix do_fetch failure<o:p></o:p></p>
<p class=3D"MsoNormal">baremetal-image: Fix post process command rootfs_upd=
ate_timestamp<o:p></o:p></p>
<p class=3D"MsoNormal">ltp: Disable problematic tests causing autobuilder h=
angs<o:p></o:p></p>
<p class=3D"MsoNormal">ccache: add packageconfig docs option<o:p></o:p></p>
<p class=3D"MsoNormal">sstate: Handle manifest 'corruption' issue<o:p></o:p=
></p>
<p class=3D"MsoNormal">glibc: Add 8GB VM usage cap for usermode test suite<=
o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Upgrade to 3.2 (gcc11 support)<o:p></o:p>=
</p>
<p class=3D"MsoNormal">meta/lib/oe/rootfs.py: Fix typo &quot;Restoreing&quo=
t; -&gt; &quot;Restoring&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">image.bbclass: fix comment &quot;pacackages&quot; -&=
gt; &quot;packages&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: server/process: Handle error in heartbeat f=
unciton in OOM case<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch2/wget: when checking latest versions,=
 consider all numerical directories<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB3301B216E23CC6C0D6F84F0388F09BYAPR11MB3301namp_--
