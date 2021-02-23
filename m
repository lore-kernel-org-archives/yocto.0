Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web11.3891.1614118298033799918
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 14:11:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=AZzzV8Zk;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: b1bjRNm2F6cP2yYgTPd2saoxUD1QnOAuzGKg9HbZ//GqqmCdqH1ISQLVWoYcI1osShozFWF+Nu
 mPUlW1CnrkOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="172103029"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="scan'208,217";a="172103029"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 14:11:36 -0800
IronPort-SDR: VATSk3J62z/qq8u0Npzcf9y7pMJxn2tAeDK/OTfUROgasfHgN89V3u96h6Y/PWYi0TibHRl0+W
 DVD8yaD7EKjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="scan'208,217";a="441870080"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga001.jf.intel.com with ESMTP; 23 Feb 2021 14:11:20 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 14:10:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 23 Feb 2021 14:10:57 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 23 Feb 2021 14:10:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ob07LepBOzNvNKhEInB5Yi3qk+qfANwIef0bbB+u72ksIrVrt/r59vwIlFlxorU2Th93FZhn2STMr2CvWK632RcI06l60T6henA6iakUlvn+TtxmRLaz2hSMXd8Cb+4cBya3gCp90nFFIwYej+WgirHhrU3G9d26UdLRdxYkW76/x7RIun1CKmL+Mss8yb3Oyr/JjmIubGK1Cs1kAJIG8YxtXrNUQ7dZ8ZGbVe2IoKXJVSiRfbPgeN6o1aR/QGEtq2iBnZR/VkLWpcod3d/jhnsimfavNDufMF6iYAj9L9n4cc3utf73r8p7QwuxltxG7aG2lS8Mp/jJCfShRNMBVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2mfhjMWFmMKgNyyNvPpqJ5CAyzL0YzPuLFgD/Q9X7E=;
 b=Ph3O3Qg2PtoeGFlHrOJtGugwGubkRzAOqhUacZMOM4XhNXfgiZRXwhCmENyBUwf/Okm8x9bgx1232sHfSpJDGqBm/MwgaazxZMuTTtzWeANU5kSvfhClVHGiDjRQZdIvnIZ7cxJFrLubUaSa5W0aF3QAt536dclvBluIbKQM6FRzyIpan8z1N0i72GlwVdxd1VfF2mqCaltin0KGrql7f+SaclnRH+QXBiPNS7UPP7gbl8HGctPzch8oykJYFBj895d1B9UK83gRFer4oph2hcbwrtnje6zdZjnQ65e3UYPBw5lLMn6ayp1rT4Sd1PBIBmj9IMZk/7Y4AOciYs3o1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2mfhjMWFmMKgNyyNvPpqJ5CAyzL0YzPuLFgD/Q9X7E=;
 b=AZzzV8ZkFKMwPnMi4fpEevf2wPE9G05es0val89eLSB8rVC2Tc822hwvMkwIW+id4+i+0av7SMyGfSr7aastASbBE4ntkdqGyr//oEEt2LetI82vF1yVxyXLxsrLQdZe+qMWt+CJCK3oRI6e0hkqoWQmProYwy0eHZgradcpf9o=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BY5PR11MB4324.namprd11.prod.outlook.com (2603:10b6:a03:1bd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.32; Tue, 23 Feb
 2021 22:10:53 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1152:1426:8a4f:c755%4]) with mapi id 15.20.3846.043; Tue, 23 Feb 2021
 22:10:53 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.2.2 (gatesgarth-24.0.2) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.2.2 (gatesgarth-24.0.2) is
 Released
Thread-Index: AdcKMERY/rqFvWLMT32o3tNh1X+g4A==
Date: Tue, 23 Feb 2021 22:10:53 +0000
Message-ID: <BYAPR11MB330164689A35F5EA7BEC075488809@BYAPR11MB3301.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 75913dd8-54f2-4bc4-1dcb-08d8d847e2cd
x-ms-traffictypediagnostic: BY5PR11MB4324:
x-microsoft-antispam-prvs: <BY5PR11MB4324AFB9790E9725DF661E2588809@BY5PR11MB4324.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4+mvkwZQIQMZymwZr8a7x1SJJ6bBrLdQ1iPx2VHf/8SFNTjZt7v5tMMjnORGgPmTUBxDRY8r67lm5G4rp3UgRQPaJrW85JPeD3fHY7WMXagUoaolYYW+8KGRrjmAbbXm3SKUBW151sWrylDDjYHEudYz2wvW9fe4RnJyK6e1y5cGqcyV5lxrU9lXRCn71W1REqgYjcAST1xgNphwr6336KuNK1HbK/4I6LVCmKVo0FrLz2hxrTR5jjgRpF6HWLKXLkUIJlkR/Epo5ibZ4nexJjv2PYUZ17fRUyClwEHMtiXn2u4Fh5a5J+bRBgyNKLo3kqQNYYwsJ9odP0TPnBGtWtbRONpCeHkgk/l5sayFWiLKyESKcgoGzknAovKbsOqeLKtwMgCnbZcCg2f8NPGsvCERbECzYOv+W7QkyEtrzo7iScEyIoNN3exCOfZMbO3BMVmdkGDhrxy/guSrZfjBTjPc7vctex7nDrOl3Yfxn5fjtSqU9vNqGPNp7bqymo0hPesX1cSV5NpsF0HmCYDTVWowBMA1Q9GJEEvmIRPEBD6rdYwgJoGrsyiFDZ55ao6fSgu0xpbnf0LFfc3WYLZNBTKT+JevPbA8jjkEuZ5rzrFMuTjT/QcpgKTNtEbigy7C6mfvmJBfu+bfaw+gGrSyhI7BCJuCE6A1ZTULkW2pkGU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(346002)(366004)(39860400002)(376002)(110136005)(7696005)(52536014)(64756008)(9686003)(316002)(966005)(76116006)(33656002)(66446008)(478600001)(186003)(66556008)(9326002)(86362001)(5660300002)(66946007)(66476007)(26005)(2906002)(8936002)(71200400001)(6506007)(83380400001)(30864003)(8676002)(55016002)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YG81NwVkqSkDuaY9LHojyCW6QpNS7PBtUyBadENAuAsQlFWQA1XmMRjtisMR?=
 =?us-ascii?Q?5+M46nKOZxD0vJgwa1spM0BThr5RT2AqDMSy0rBvAZ6KydjolSstuqNiPwjP?=
 =?us-ascii?Q?6EyuGZXXnu3hlqroPBCTG1pcgkk3TIFqOaPddhhzzedWNI+iByJmjmTp/o/C?=
 =?us-ascii?Q?zNatr+bWR87KZTBo0CngxF0Jg0bhTG+csIGQi7leHpJgN0w/u8D2fIyOJyPD?=
 =?us-ascii?Q?rVqhLtQ9oEGnIPAvnX/D341VQNK4w8zFk7/GscI6PyF0YEGWGp4RejHpERYk?=
 =?us-ascii?Q?vTaHIaudK2zkzlQmBV68vCSjNipdGxLlxlssYfjMktnF8Q8OuroBCkK9ZPo8?=
 =?us-ascii?Q?A56ADhpDcKmv0TB4jqi0/XRaWbK8xEycmiHO1Xj1czIqBnnq5EjKrV/Kbyfq?=
 =?us-ascii?Q?9b7vvClemoxFig5EV0Gudnf+WIJzduCiUsZmY6CmAXELUHYQ6QMEQukacZrk?=
 =?us-ascii?Q?Vta+OEV3XgUXAAg7jwJS3vpEisuXl8JIyQ91h/Ytte9FeqMlEkE8ryiZzbst?=
 =?us-ascii?Q?vEkFEk6f0rf9yzpFB4kiICwldrT+hlFQMU8aYz8bsd33ZBK5xG3v9/asbdMh?=
 =?us-ascii?Q?MUxAM9S6o7HB7q8RSo3jwpOtvOnhP9yIsrH91s/m4qvd7hPE5IeXc2tDHUr3?=
 =?us-ascii?Q?vpX424bcqCvBZcglfJkCQgqzZG9l3b4nHLsRXXRMYvwtwzEnLkczr2RrrW1r?=
 =?us-ascii?Q?txKROGFukpx8ocjpI7SG/Fj3eblVxYZ17crX1eGKkQZzZ0EnYaqh2iI2VFmu?=
 =?us-ascii?Q?WWxxWHvKjf9kAON/9njHALn3NZR2Ksx6si46UTS/3qe/7Qi9gyIPn8PgbG51?=
 =?us-ascii?Q?1l8Wnf24/tsvUFU2SXV6xevYLZKyDthh7ss0+BaQvit0J1z05CTF9Z2aZdgf?=
 =?us-ascii?Q?2VbnkfeupNnaaXxRNdIlyVBRtAZWenj+Hd3Nnwzd6pgknzOwWaECCocXsY6s?=
 =?us-ascii?Q?ylqMqo7StdfZbmulKqq2Lk6VmWH3o3fMkF4jdWqGGrt6VplsOYZYujR59XjI?=
 =?us-ascii?Q?1zCoAQn1UAHxhFDQ3W4crMLdplFNaYFU/CAqsyMt0vs0iNJKJolZolV/0vGE?=
 =?us-ascii?Q?f94lswl3Vb+CW1KU7+sGjftQjTmmb5gGvLMkOqDuIE6MFTOsW9uTnet0b7Mv?=
 =?us-ascii?Q?8Gys11QTJ/y+yUvgYvvrPDACK6D8xHvIA6nrGuwNex35P+gaQa/e5CS6jAGc?=
 =?us-ascii?Q?jpwI9C0SVYJdqajymC6eQIgiBJFthIDHsHsYOmu6O/osub/zA63K4EOIxOwW?=
 =?us-ascii?Q?i3kIXMo8KiW2fwXyjEhxQz0n2HMXZnuMk22NYLECJWPRFxEetyD2OvXk9H2O?=
 =?us-ascii?Q?82gE6sUowsL8nXYzSAxMx1EK?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75913dd8-54f2-4bc4-1dcb-08d8d847e2cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2021 22:10:53.0607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JYIbRDH3Ef/gu/8ODfI30WbELge6FO9V5Kvs8HOqPRAYMr/Y2UvTMIJvB0B0QLk17UfHbuMTA3E9nl4u3Dk5JP1goHM8gNBM9s7WawIg9PE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4324
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB330164689A35F5EA7BEC075488809BYAPR11MB3301namp_"

--_000_BYAPR11MB330164689A35F5EA7BEC075488809BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.2.2 (gatesgarth-24.0.2) Rele=
ase is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/poky-gatesgart=
h-24.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/poky-gatesgarth-24.0.2.ta=
r.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/testreport.txt

Thank you for everyone's contributions to this release.


Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>


- --------------------------
yocto-3.2.2 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: gatesgarth
Tag: yocto-3.2.2
Git Revision: d5d6286a66f46f4523e35e0e3f20cd7396195fdc
Release Artefact: poky-gatesgarth-24.0.2
sha: b892e2a70f307c1bb2fdbeef401bfac80ab2d88cb2f564db93c22a62889515be
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/poky-gatesgart=
h-24.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/poky-gatesgarth-24.0.2.ta=
r.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: gatesgarth
Tag: 2020-10.2-gatesgarth
Git Revision: ebaaee50cb3ac75112827f935c48affaf622ce7f
Release Artefact: oecore-gatesgarth-24.0.2
sha: 1a269ac8883745fcd9809eb03ab9ab72cf29096ec956e8493598f212adb0a1a3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/oecore-gatesga=
rth-24.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/oecore-gatesgarth-24.0.2.=
tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: gatesgarth
Tag: yocto-3.2.2
Git Revision: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
Release Artefact: meta-mingw-gatesgarth-24.0.2
sha: c1ede73885c46820a309cbde0ad6314b83ae3167859acb9cf10152691da3f2a3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/meta-mingw-gat=
esgarth-24.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/meta-mingw-gatesgarth-24.=
0.2.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: gatesgarth
Tag: yocto-3.2.2
Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d43
Release Artefact: meta-gplv2-gatesgarth-24.0.2
sha: 27d72c88ba45d8f2e3f397194a4e3cb1ff6d76cca9ada8bc0b14c1fadb1845cd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/meta-gplv2-gat=
esgarth-24.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/meta-gplv2-gatesgarth-24.=
0.2.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: gatesgarth
Tag: 2020-10.2-gatesgarth
Git Revision: 0a3bf681530bd63fc0036ca81ef868ab53fde56c
Release Artefact: bitbake-gatesgarth-24.0.2
sha: fb4dc9d2f85b7303383dff532360da4ae87a72ad778a252fe0738f2eae09741e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.2/bitbake-gatesg=
arth-24.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/bitbake-gatesgarth-24.0.2=
.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: gatesgarth
Tag: yocto-3.2.2
Git Revision:6bc7e80e4ce0004e8e42ac8dddbff75c521bc19f

- -------------
Contributors
- -------------
Adrian Herrera
Alexander Kanavin
Andrey Mozzhuhin
Anuj Mittal
Awais Belal
Bruce Ashfield
Chandana kalluri
Changqing Li
Chen Qi
Chris Laplante
Dmitry Baryshkov
Dorinda
Gratian Crisan
Kai Kang
Kamel Bouhara
Khairul Rohaizzat Jamaluddin
Khem Raj
Lee Chee Yang
Li Wang
Mans Rullgard
Marek Vasut
Mark Jonas
Martin Jansa
Matt Hoosier
Michael Halstead
Mike Looijmans
Mikko Rapeli
Nathan Rossi
Oleksiy Obitotskyy
Oleksiy Obitotskyy yIEf0zt.mo
Ovidiu Panait
Paul Barker
Peter Bergin
Peter Kjellerstedt
Richard Purdie
Robert Joslyn
Robert Yang
Ross Burton
saloni
sangeeta jain
Scott Murray
Steve Sakoman
Tomasz Dziendzielski
Vyacheslav Yurkov
Wang Mingyu
Yi Fan Yu
zangrc
zhengruoqin
Zhixiong Chi

- ---------------
Known Issues
- ---------------
N/A


- ---------------
Security Fixes
- ---------------
libcroco: Added CVE
libgcrypt: Whitelisted CVEs
sudo: fix CVE-2021-3156
sudo: fix CVE-2021-23240
openssl: set CVE_VERSION_SUFFIX
cve_check: add CVE_VERSION_SUFFIX to indicate suffix in versioning
gdk-pixbuf: fix CVE-2020-29385
sudo: fix CVE-2021-23239
python3: fix CVE-2021-3177
binutils: Fix CVE-2020-35448
zip: whitelist CVE-2018-13410 and CVE-2018-13684
ffmpeg: Fix CVE-2020-35964, CVE-2020-35965
glibc: CVE-2019-25013
curl: Fix CVE-2020-8284, CVE-2020-8285, CVE-2020-8286
qemu: CVE-2020-28916
qemu: CVE-2020-25723
patch: fix CVE-2019-20633
grub: fix "CVE:" line in one of the patches
libexif: fix CVE-2020-0198; CVE-2020-0452
glib-2.0: fix CVE-2020-35457
glibc: CVE-2020-29562 and CVE-2020-29573
cups: Mark CVE-2008-1033 as a non-issue
cups: Mark CVE-2009-0032 as a non-issue
cups: whitelist CVE-2018-6553
coreutils: add SUSE-specific issues to CVE whitelist
qemu: CVE-2020-25624
qemu: CVE-2020-29129 CVE-2020-29130


- ---------------
Fixes
- ---------------
build-appliance-image: Update to gatesgarth head revision
poky.conf: Bump version for 3.2.2 gatesgarth release
bitbake: lib/bb/fetch2/__init__.py: drop _PYTHON_SYSCONFIGDATA_NAME unsetti=
ng
python3targetconfig.bbclass: Make py3 dep and tasks only for target recipes
gpgme: use python3targetconfig
meta: drop _PYTHON_SYSCONFIGDATA_NAME hacks
distutils3-base.bbclass: use python3targetconfig
python3-pycairo: use python3targetconfig
python3: split python target configuration into own class
uninative: Upgrade to 2.10
pseudo: Update to work with glibc 2.33
openssh: Backport a fix to fix with glibc 2.33 on some platforms
systemd: change /bin/nologin to /sbin/nologin
license_image.bbclass: Don't attempt to symlink to the same file
image_types.bbclass: tar: use posix format instead of gnu
qemu.inc: Should depend on qemu-system-native, not qemu-native
kernel.bbclass: fix deployment for initramfs images
package: Ensure do_packagedata is cleaned correctly
wic/selftest: test_permissions also test bitbake image
sstatesig: Add descriptive error message to getpwuid/getgrgid "uid/gid not =
found" KeyError
sanity.bbclass: Check if PSEUDO_IGNORE_PATHS and paths under pseudo control=
 overlap
linux-yocto/5.4: update to v5.4.94
linux-yocto-rt/5.4: fix 5.4-stable caused build breakage
linux-yocto/5.4: update to v5.4.90
staging: Clean up files installed into the sysroot
python3: Avoid installing test data into recipe-sysroot
ncurses: Don't put terminfo into the sysroot
glibc: update to latest release/2.32/master branch
npm.bbclass: use python3 for npm config
recipetool: create: only add npmsw url if required
npm.bbclass: make shrinkwrap file optional
image_types: Ensure tar archives are reproducible
strace: increase ptest timeout duration 120->240s
ovmf-shell-image: image is only buildable on x86-64
core-image-sato-sdk-ptest: these images need ptest
dtc: improve reproducibility
python3: Use addtask statement instead of task dependencies
lib/oe/patch.py: Don't return command stderr from runcmd function
cve-check: replace Looseversion with custom version class
ca-certificates: upgrade 20200601 -> 20210119
pseudo: Update to include passwd and file renaming fixes
gobject-introspection: Fix variable override order
buildhistory.bbclass: avoid exception for empty BUILDHISTORY_FEATURES varia=
ble
externalsrc: Detect code changes in submodules
sanity.bbclass: sanity check for if bitbake is present in PATH
sanity: Verify that user isn't building in PSEUDO_IGNORE_PATHS
timezone: upgrade to 2021a
gstreamer1.0: fix failing ptest
devtool: Fix file:// fetcher symlink directory structure
oeqa/selftest/cases/tinfoil.py: increase timeout 10->60s test_wait_event
externalsrc: Fix parsing error with devtool non-git sources
p11-kit: upgrade 0.23.21 -> 0.23.22
linux-yocto: update genericx86 to v5.4.87
bitbake: fetch/git: download LFS content too during do_fetch
linuxloader: Avoid confusing string concat errors
flex: Fix --noline option behavior
devtool: Fix source extraction for gcc shared source
toolchain-shar-relocate.sh: Fix handling files with colons
wic: Optimise fstab modification for ext2/3/4 and msdos partitions
wic: Copy rootfs dir if fstab needs updating
wic: Update pseudo db when excluding content from rootfs
image_types_wic: Move wic working directory
wic: Allow exec_native_cmd to run HOSTTOOLS
wic: Ensure internal workdir is not reused
wic: Add workdir argument
gcc: Backport patch to resolve i*86 tune configuration overrides
lib/oe/utils: Return empty string in parallel_make
meta: toolchain-shar-relocate.sh: Filter out post-relocate-setup script
meta: toolchain-shar-relocate.sh: Do not use $target_sdk_dir as regex
boost: drop arm-intrinsics.patch
systemd.bbclass: improve error message when a service unit specified in SYS=
TEMD_SERVICE is not found
toolchain-shar-extract.sh: Handle special characters in script path
scripts: oe-run-native, fix *-native directories
bitbake: data_smart: Ensure hash reflects vardepvalue flags correctly
systemd: upgrade 246.6 -> 246.9
binutils: upgrade 2.35 -> 2.35.1
linux-yocto/5.4: update to v5.4.87
mobile-broadband-provider-info: upgrade 20190618 ->20201225
pseudo: Update for arm host and memleak fixes/cleanup
pseudo: Add lchmod wrapper
pseudo: Drop patches merged into upstream branch
pseudo: Update to print PSEUDO_LOGFILE in abort message on path mismatches
bitbake.conf: Add /run/ to PSEUDO_IGNORE_PATHS
selftest: Add argument to keep build dir
license.bbclass: Add COMMON_LICENSE_DIR and LICENSE_PATH dirs to PSEUDO_IGN=
ORE_PATHS
bitbake.conf: Prevent pyc file generation in pseudo context
wic: Pass canonicalized paths in PSEUDO_IGNORE_PATHS
bitbake.conf: Canonicalize paths in PSEUDO_IGNORE_PATHS
lib/oe/path: Add canonicalize()
oeqa/commands: Ensure sync can be found regardless of PATH
initscripts: use quotes for shell variable comparision
coreutils: enable xattrs by default for nativesdk
diffstat: point the license checksum at the license
linux-yocto/5.4: update to v5.4.85
linux-yocto/5.4/cfg: fix FIRMWARE_LOADER warnings
linux-yocto/5.4/cfg: fix -tiny warnings
linux-yocto/5.8/cfg: fix -tiny warnings
linux-yocto/5.4: update to v5.4.83
linux-yocto/cfg: qemuarm64-gfx.cfg: add CONFIG_INPUT_UINPUT
linux-yocto/5.4: update to v5.4.82
linux-yocto/cfg: qemuppc: set CONFIG_SCSI to '=3Dy'
timezone: upgrade to 2020f
man-db: Fix reproducibility issue
wic/direct/kparser: ensure fsuuid for vfat and msdos align with format
grub: Further reproducibility fix
devtool: gitsm:// should be handled same as git:// in upgrades
timezone: upgrade to 2020e
openssl: Update to 1.1.1i
oeqa/selftest/cases/devtool.py: fix typo in ignore_patterns call
apr-util: Only specify --with-dbm=3Dgdbm if gdbm support is enabled
valgrind: exclude bar_bad/bar_bad_xml from ptests
archiver.bbclass: Fix --runall=3Ddeploy_archives for images
minicom: RDEPENDS on ncurses-terminfo-base
ncurses: Make ncurses-tools depend on ncurses-terminfo-base
gcc: Add patch to resolve i*86 tune configuration overrides
go.bbclass: Use external linker for native packages
go: Update 1.15.5 -> 1.15.6
go: Update to 1.15.5
go: upgrade 1.15.2 -> 1.15.3
timezone: upgrade to 2020d
kea: fix reproducibility
man-db: Avoid reproducibility failures after fixing groff-native
groff: Fix reproducibility issue
u-boot-tools: Fix reproducibility issue
ffmpeg: fix reproducibility
ruby: fix reproducibility
perl: fix installation failure because of shell issue
parted: Make readline dependency optional
glibc: Make adjtime() for 32 bit support being called with delta =3D=3D NUL=
L
lttng-modules: fix build against v5.10+
linux-yocto/5.4: update to v5.4.80
linux-yocto-rt/5.4: update to -rt44
grub: Add second fix for determinism issue
grub: Fix build reproducibility issue
linux-firmware: package firmware for Lontium lt9611uxc bridge
linux-firmware: upgrade 20201118 -> 20201218
linux-firmware: package ath11k firmware
linux-firmware: upgrade 20201022 -> 20201118
linux-firmware: upgrade 20200817 -> 20201022
wireless-regdb: upgrade 2020.04.29 -> 2020.11.20
uninative: Don't use single sstate for pseudo-native
kernel-module-split.bbclass: fix kernel modules getting marked as CONFFILES
webkitgtk: fix reproducibility
llvm: fix reproducibility
meta/lib/oe/reproducible.py: gitsm:// works just as fine as git:// for time=
stamps
populate_sdk_ext: use SDK_CUSTOM_TEPLATECONF variable to enable custom temp=
lateconf.cfg
meta/lib/oeqa/manual/oe-core.json: Update test_bitbake_devshell
image_types: remove obsolete tar comment
image_types: sort tarball file listings
oeqa/devtool: use Yocto mirror for pv-1.5.3 tarball
lz4: Use the new branch naming from upstream
buildtools-tarball: add wic dependency into extended buildtools
sudo: fix multilib conflict
cve-update-db-native: handle all-wildcard versions
libsdl2: Add directfb to PACKAGECONFIG rdepends

--_000_BYAPR11MB330164689A35F5EA7BEC075488809BYAPR11MB3301namp_
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
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.2.2 (=
gatesgarth-24.0.2) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/poky-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/po=
ky-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/RELEASENOTES<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/testreport.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.2.2 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: d5d6286a66f46f4523e35e0e3f20cd7396195f=
dc<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-gatesgarth-24.0.2<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: b892e2a70f307c1bb2fdbeef401bfac80ab2d88cb2f564d=
b93c22a62889515be<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/poky-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/po=
ky-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-10.2-gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: ebaaee50cb3ac75112827f935c48affaf622ce=
7f<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-gatesgarth-24.0.2<o:p></o:p=
></p>
<p class=3D"MsoNormal">sha: 1a269ac8883745fcd9809eb03ab9ab72cf29096ec956e84=
93598f212adb0a1a3<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/oecore-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/oe=
core-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de48=
79<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-gatesgarth-24.0.2<o:p><=
/o:p></p>
<p class=3D"MsoNormal">sha: c1ede73885c46820a309cbde0ad6314b83ae3167859acb9=
cf10152691da3f2a3<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/meta-mingw-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/me=
ta-mingw-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d=
43<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-gatesgarth-24.0.2<o:p><=
/o:p></p>
<p class=3D"MsoNormal">sha: 27d72c88ba45d8f2e3f397194a4e3cb1ff6d76cca9ada8b=
c0b14c1fadb1845cd<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/meta-gplv2-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/me=
ta-gplv2-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-10.2-gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 0a3bf681530bd63fc0036ca81ef868ab53fde5=
6c<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-gatesgarth-24.0.2<o:p></o:=
p></p>
<p class=3D"MsoNormal">sha: fb4dc9d2f85b7303383dff532360da4ae87a72ad778a252=
fe0738f2eae09741e<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.2.2/bitbake-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.2.2/bi=
tbake-gatesgarth-24.0.2.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: gatesgarth<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.2.2<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision:6bc7e80e4ce0004e8e42ac8dddbff75c521bc19=
f <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- -------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- -------------<o:p></o:p></p>
<p class=3D"MsoNormal">Adrian Herrera<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Andrey Mozzhuhin<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Awais Belal<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Chandana kalluri<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Chris Laplante<o:p></o:p></p>
<p class=3D"MsoNormal">Dmitry Baryshkov<o:p></o:p></p>
<p class=3D"MsoNormal">Dorinda<o:p></o:p></p>
<p class=3D"MsoNormal">Gratian Crisan<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Kamel Bouhara<o:p></o:p></p>
<p class=3D"MsoNormal">Khairul Rohaizzat Jamaluddin<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Lee Chee Yang<o:p></o:p></p>
<p class=3D"MsoNormal">Li Wang<o:p></o:p></p>
<p class=3D"MsoNormal">Mans Rullgard<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Mark Jonas<o:p></o:p></p>
<p class=3D"MsoNormal">Martin Jansa<o:p></o:p></p>
<p class=3D"MsoNormal">Matt Hoosier<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Halstead<o:p></o:p></p>
<p class=3D"MsoNormal">Mike Looijmans<o:p></o:p></p>
<p class=3D"MsoNormal">Mikko Rapeli<o:p></o:p></p>
<p class=3D"MsoNormal">Nathan Rossi<o:p></o:p></p>
<p class=3D"MsoNormal">Oleksiy Obitotskyy<o:p></o:p></p>
<p class=3D"MsoNormal">Oleksiy Obitotskyy yIEf0zt.mo<o:p></o:p></p>
<p class=3D"MsoNormal">Ovidiu Panait<o:p></o:p></p>
<p class=3D"MsoNormal">Paul Barker<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Bergin<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Kjellerstedt<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Robert Joslyn<o:p></o:p></p>
<p class=3D"MsoNormal">Robert Yang<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">saloni<o:p></o:p></p>
<p class=3D"MsoNormal">sangeeta jain<o:p></o:p></p>
<p class=3D"MsoNormal">Scott Murray<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Tomasz Dziendzielski<o:p></o:p></p>
<p class=3D"MsoNormal">Vyacheslav Yurkov<o:p></o:p></p>
<p class=3D"MsoNormal">Wang Mingyu<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Fan Yu<o:p></o:p></p>
<p class=3D"MsoNormal">zangrc<o:p></o:p></p>
<p class=3D"MsoNormal">zhengruoqin<o:p></o:p></p>
<p class=3D"MsoNormal">Zhixiong Chi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">N/A<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">libcroco: Added CVE<o:p></o:p></p>
<p class=3D"MsoNormal">libgcrypt: Whitelisted CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">sudo: fix CVE-2021-3156<o:p></o:p></p>
<p class=3D"MsoNormal">sudo: fix CVE-2021-23240<o:p></o:p></p>
<p class=3D"MsoNormal">openssl: set CVE_VERSION_SUFFIX<o:p></o:p></p>
<p class=3D"MsoNormal">cve_check: add CVE_VERSION_SUFFIX to indicate suffix=
 in versioning<o:p></o:p></p>
<p class=3D"MsoNormal">gdk-pixbuf: fix CVE-2020-29385<o:p></o:p></p>
<p class=3D"MsoNormal">sudo: fix CVE-2021-23239<o:p></o:p></p>
<p class=3D"MsoNormal">python3: fix CVE-2021-3177<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: Fix CVE-2020-35448<o:p></o:p></p>
<p class=3D"MsoNormal">zip: whitelist CVE-2018-13410 and CVE-2018-13684<o:p=
></o:p></p>
<p class=3D"MsoNormal">ffmpeg: Fix CVE-2020-35964, CVE-2020-35965<o:p></o:p=
></p>
<p class=3D"MsoNormal">glibc: CVE-2019-25013<o:p></o:p></p>
<p class=3D"MsoNormal">curl: Fix CVE-2020-8284, CVE-2020-8285, CVE-2020-828=
6<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: CVE-2020-28916<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: CVE-2020-25723<o:p></o:p></p>
<p class=3D"MsoNormal">patch: fix CVE-2019-20633<o:p></o:p></p>
<p class=3D"MsoNormal">grub: fix &quot;CVE:&quot; line in one of the patche=
s<o:p></o:p></p>
<p class=3D"MsoNormal">libexif: fix CVE-2020-0198; CVE-2020-0452<o:p></o:p>=
</p>
<p class=3D"MsoNormal">glib-2.0: fix CVE-2020-35457<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: CVE-2020-29562 and CVE-2020-29573<o:p></o:p><=
/p>
<p class=3D"MsoNormal">cups: Mark CVE-2008-1033 as a non-issue<o:p></o:p></=
p>
<p class=3D"MsoNormal">cups: Mark CVE-2009-0032 as a non-issue<o:p></o:p></=
p>
<p class=3D"MsoNormal">cups: whitelist CVE-2018-6553<o:p></o:p></p>
<p class=3D"MsoNormal">coreutils: add SUSE-specific issues to CVE whitelist=
<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: CVE-2020-25624<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: CVE-2020-29129 CVE-2020-29130<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to gatesgarth head rev=
ision<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.2.2 gatesgarth release=
<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: lib/bb/fetch2/__init__.py: drop _PYTHON_SYS=
CONFIGDATA_NAME unsetting<o:p></o:p></p>
<p class=3D"MsoNormal">python3targetconfig.bbclass: Make py3 dep and tasks =
only for target recipes<o:p></o:p></p>
<p class=3D"MsoNormal">gpgme: use python3targetconfig<o:p></o:p></p>
<p class=3D"MsoNormal">meta: drop _PYTHON_SYSCONFIGDATA_NAME hacks<o:p></o:=
p></p>
<p class=3D"MsoNormal">distutils3-base.bbclass: use python3targetconfig<o:p=
></o:p></p>
<p class=3D"MsoNormal">python3-pycairo: use python3targetconfig<o:p></o:p><=
/p>
<p class=3D"MsoNormal">python3: split python target configuration into own =
class<o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Upgrade to 2.10<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Update to work with glibc 2.33<o:p></o:p></p=
>
<p class=3D"MsoNormal">openssh: Backport a fix to fix with glibc 2.33 on so=
me platforms<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: change /bin/nologin to /sbin/nologin<o:p></=
o:p></p>
<p class=3D"MsoNormal">license_image.bbclass: Don't attempt to symlink to t=
he same file<o:p></o:p></p>
<p class=3D"MsoNormal">image_types.bbclass: tar: use posix format instead o=
f gnu<o:p></o:p></p>
<p class=3D"MsoNormal">qemu.inc: Should depend on qemu-system-native, not q=
emu-native<o:p></o:p></p>
<p class=3D"MsoNormal">kernel.bbclass: fix deployment for initramfs images<=
o:p></o:p></p>
<p class=3D"MsoNormal">package: Ensure do_packagedata is cleaned correctly<=
o:p></o:p></p>
<p class=3D"MsoNormal">wic/selftest: test_permissions also test bitbake ima=
ge<o:p></o:p></p>
<p class=3D"MsoNormal">sstatesig: Add descriptive error message to getpwuid=
/getgrgid &quot;uid/gid not found&quot; KeyError<o:p></o:p></p>
<p class=3D"MsoNormal">sanity.bbclass: Check if PSEUDO_IGNORE_PATHS and pat=
hs under pseudo control overlap<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.94<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto-rt/5.4: fix 5.4-stable caused build brea=
kage<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.90<o:p></o:p></p>
<p class=3D"MsoNormal">staging: Clean up files installed into the sysroot<o=
:p></o:p></p>
<p class=3D"MsoNormal">python3: Avoid installing test data into recipe-sysr=
oot<o:p></o:p></p>
<p class=3D"MsoNormal">ncurses: Don't put terminfo into the sysroot<o:p></o=
:p></p>
<p class=3D"MsoNormal">glibc: update to latest release/2.32/master branch<o=
:p></o:p></p>
<p class=3D"MsoNormal">npm.bbclass: use python3 for npm config<o:p></o:p></=
p>
<p class=3D"MsoNormal">recipetool: create: only add npmsw url if required<o=
:p></o:p></p>
<p class=3D"MsoNormal">npm.bbclass: make shrinkwrap file optional<o:p></o:p=
></p>
<p class=3D"MsoNormal">image_types: Ensure tar archives are reproducible<o:=
p></o:p></p>
<p class=3D"MsoNormal">strace: increase ptest timeout duration 120-&gt;240s=
<o:p></o:p></p>
<p class=3D"MsoNormal">ovmf-shell-image: image is only buildable on x86-64<=
o:p></o:p></p>
<p class=3D"MsoNormal">core-image-sato-sdk-ptest: these images need ptest<o=
:p></o:p></p>
<p class=3D"MsoNormal">dtc: improve reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">python3: Use addtask statement instead of task depen=
dencies<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/patch.py: Don't return command stderr from ru=
ncmd function<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: replace Looseversion with custom version =
class<o:p></o:p></p>
<p class=3D"MsoNormal">ca-certificates: upgrade 20200601 -&gt; 20210119<o:p=
></o:p></p>
<p class=3D"MsoNormal">pseudo: Update to include passwd and file renaming f=
ixes<o:p></o:p></p>
<p class=3D"MsoNormal">gobject-introspection: Fix variable override order<o=
:p></o:p></p>
<p class=3D"MsoNormal">buildhistory.bbclass: avoid exception for empty BUIL=
DHISTORY_FEATURES variable<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Detect code changes in submodules<o:p><=
/o:p></p>
<p class=3D"MsoNormal">sanity.bbclass: sanity check for if bitbake is prese=
nt in PATH<o:p></o:p></p>
<p class=3D"MsoNormal">sanity: Verify that user isn't building in PSEUDO_IG=
NORE_PATHS<o:p></o:p></p>
<p class=3D"MsoNormal">timezone: upgrade to 2021a<o:p></o:p></p>
<p class=3D"MsoNormal">gstreamer1.0: fix failing ptest<o:p></o:p></p>
<p class=3D"MsoNormal">devtool: Fix file:// fetcher symlink directory struc=
ture<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/cases/tinfoil.py: increase timeout 10-=
&gt;60s test_wait_event<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Fix parsing error with devtool non-git =
sources<o:p></o:p></p>
<p class=3D"MsoNormal">p11-kit: upgrade 0.23.21 -&gt; 0.23.22<o:p></o:p></p=
>
<p class=3D"MsoNormal">linux-yocto: update genericx86 to v5.4.87<o:p></o:p>=
</p>
<p class=3D"MsoNormal">bitbake: fetch/git: download LFS content too during =
do_fetch<o:p></o:p></p>
<p class=3D"MsoNormal">linuxloader: Avoid confusing string concat errors<o:=
p></o:p></p>
<p class=3D"MsoNormal">flex: Fix --noline option behavior<o:p></o:p></p>
<p class=3D"MsoNormal">devtool: Fix source extraction for gcc shared source=
<o:p></o:p></p>
<p class=3D"MsoNormal">toolchain-shar-relocate.sh: Fix handling files with =
colons<o:p></o:p></p>
<p class=3D"MsoNormal">wic: Optimise fstab modification for ext2/3/4 and ms=
dos partitions<o:p></o:p></p>
<p class=3D"MsoNormal">wic: Copy rootfs dir if fstab needs updating<o:p></o=
:p></p>
<p class=3D"MsoNormal">wic: Update pseudo db when excluding content from ro=
otfs<o:p></o:p></p>
<p class=3D"MsoNormal">image_types_wic: Move wic working directory<o:p></o:=
p></p>
<p class=3D"MsoNormal">wic: Allow exec_native_cmd to run HOSTTOOLS<o:p></o:=
p></p>
<p class=3D"MsoNormal">wic: Ensure internal workdir is not reused<o:p></o:p=
></p>
<p class=3D"MsoNormal">wic: Add workdir argument<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Backport patch to resolve i*86 tune configurati=
on overrides<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/utils: Return empty string in parallel_make<o=
:p></o:p></p>
<p class=3D"MsoNormal">meta: toolchain-shar-relocate.sh: Filter out post-re=
locate-setup script<o:p></o:p></p>
<p class=3D"MsoNormal">meta: toolchain-shar-relocate.sh: Do not use $target=
_sdk_dir as regex<o:p></o:p></p>
<p class=3D"MsoNormal">boost: drop arm-intrinsics.patch<o:p></o:p></p>
<p class=3D"MsoNormal">systemd.bbclass: improve error message when a servic=
e unit specified in SYSTEMD_SERVICE is not found<o:p></o:p></p>
<p class=3D"MsoNormal">toolchain-shar-extract.sh: Handle special characters=
 in script path<o:p></o:p></p>
<p class=3D"MsoNormal">scripts: oe-run-native, fix *-native directories<o:p=
></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart: Ensure hash reflects vardepvalu=
e flags correctly<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: upgrade 246.6 -&gt; 246.9<o:p></o:p></p>
<p class=3D"MsoNormal">binutils: upgrade 2.35 -&gt; 2.35.1<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.87<o:p></o:p></p>
<p class=3D"MsoNormal">mobile-broadband-provider-info: upgrade 20190618 -&g=
t;20201225<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Update for arm host and memleak fixes/cleanu=
p<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add lchmod wrapper<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Drop patches merged into upstream branch<o:p=
></o:p></p>
<p class=3D"MsoNormal">pseudo: Update to print PSEUDO_LOGFILE in abort mess=
age on path mismatches<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake.conf: Add /run/ to PSEUDO_IGNORE_PATHS<o:p><=
/o:p></p>
<p class=3D"MsoNormal">selftest: Add argument to keep build dir<o:p></o:p><=
/p>
<p class=3D"MsoNormal">license.bbclass: Add COMMON_LICENSE_DIR and LICENSE_=
PATH dirs to PSEUDO_IGNORE_PATHS<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake.conf: Prevent pyc file generation in pseudo =
context<o:p></o:p></p>
<p class=3D"MsoNormal">wic: Pass canonicalized paths in PSEUDO_IGNORE_PATHS=
<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake.conf: Canonicalize paths in PSEUDO_IGNORE_PA=
THS<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/path: Add canonicalize()<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/commands: Ensure sync can be found regardless o=
f PATH<o:p></o:p></p>
<p class=3D"MsoNormal">initscripts: use quotes for shell variable comparisi=
on<o:p></o:p></p>
<p class=3D"MsoNormal">coreutils: enable xattrs by default for nativesdk<o:=
p></o:p></p>
<p class=3D"MsoNormal">diffstat: point the license checksum at the license<=
o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.85<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4/cfg: fix FIRMWARE_LOADER warnings<o:=
p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4/cfg: fix -tiny warnings<o:p></o:p></=
p>
<p class=3D"MsoNormal">linux-yocto/5.8/cfg: fix -tiny warnings<o:p></o:p></=
p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.83<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/cfg: qemuarm64-gfx.cfg: add CONFIG_INPUT=
_UINPUT<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.82<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/cfg: qemuppc: set CONFIG_SCSI to '=3Dy'<=
o:p></o:p></p>
<p class=3D"MsoNormal">timezone: upgrade to 2020f<o:p></o:p></p>
<p class=3D"MsoNormal">man-db: Fix reproducibility issue<o:p></o:p></p>
<p class=3D"MsoNormal">wic/direct/kparser: ensure fsuuid for vfat and msdos=
 align with format<o:p></o:p></p>
<p class=3D"MsoNormal">grub: Further reproducibility fix<o:p></o:p></p>
<p class=3D"MsoNormal">devtool: gitsm:// should be handled same as git:// i=
n upgrades<o:p></o:p></p>
<p class=3D"MsoNormal">timezone: upgrade to 2020e<o:p></o:p></p>
<p class=3D"MsoNormal">openssl: Update to 1.1.1i<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/cases/devtool.py: fix typo in ignore_p=
atterns call<o:p></o:p></p>
<p class=3D"MsoNormal">apr-util: Only specify --with-dbm=3Dgdbm if gdbm sup=
port is enabled<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind: exclude bar_bad/bar_bad_xml from ptests<o:=
p></o:p></p>
<p class=3D"MsoNormal">archiver.bbclass: Fix --runall=3Ddeploy_archives for=
 images<o:p></o:p></p>
<p class=3D"MsoNormal">minicom: RDEPENDS on ncurses-terminfo-base<o:p></o:p=
></p>
<p class=3D"MsoNormal">ncurses: Make ncurses-tools depend on ncurses-termin=
fo-base<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Add patch to resolve i*86 tune configuration ov=
errides<o:p></o:p></p>
<p class=3D"MsoNormal">go.bbclass: Use external linker for native packages<=
o:p></o:p></p>
<p class=3D"MsoNormal">go: Update 1.15.5 -&gt; 1.15.6<o:p></o:p></p>
<p class=3D"MsoNormal">go: Update to 1.15.5<o:p></o:p></p>
<p class=3D"MsoNormal">go: upgrade 1.15.2 -&gt; 1.15.3<o:p></o:p></p>
<p class=3D"MsoNormal">timezone: upgrade to 2020d<o:p></o:p></p>
<p class=3D"MsoNormal">kea: fix reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">man-db: Avoid reproducibility failures after fixing =
groff-native<o:p></o:p></p>
<p class=3D"MsoNormal">groff: Fix reproducibility issue<o:p></o:p></p>
<p class=3D"MsoNormal">u-boot-tools: Fix reproducibility issue<o:p></o:p></=
p>
<p class=3D"MsoNormal">ffmpeg: fix reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">ruby: fix reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">perl: fix installation failure because of shell issu=
e<o:p></o:p></p>
<p class=3D"MsoNormal">parted: Make readline dependency optional<o:p></o:p>=
</p>
<p class=3D"MsoNormal">glibc: Make adjtime() for 32 bit support being calle=
d with delta =3D=3D NULL<o:p></o:p></p>
<p class=3D"MsoNormal">lttng-modules: fix build against v5.10+<o:p></o:p></=
p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.80<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto-rt/5.4: update to -rt44<o:p></o:p></p>
<p class=3D"MsoNormal">grub: Add second fix for determinism issue<o:p></o:p=
></p>
<p class=3D"MsoNormal">grub: Fix build reproducibility issue<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: package firmware for Lontium lt9611u=
xc bridge<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20201118 -&gt; 20201218<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-firmware: package ath11k firmware<o:p></o:p></=
p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20201022 -&gt; 20201118<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20200817 -&gt; 20201022<o:p>=
</o:p></p>
<p class=3D"MsoNormal">wireless-regdb: upgrade 2020.04.29 -&gt; 2020.11.20<=
o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Don't use single sstate for pseudo-native=
<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-module-split.bbclass: fix kernel modules gett=
ing marked as CONFFILES<o:p></o:p></p>
<p class=3D"MsoNormal">webkitgtk: fix reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">llvm: fix reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">meta/lib/oe/reproducible.py: gitsm:// works just as =
fine as git:// for timestamps<o:p></o:p></p>
<p class=3D"MsoNormal">populate_sdk_ext: use SDK_CUSTOM_TEPLATECONF variabl=
e to enable custom templateconf.cfg<o:p></o:p></p>
<p class=3D"MsoNormal">meta/lib/oeqa/manual/oe-core.json: Update test_bitba=
ke_devshell<o:p></o:p></p>
<p class=3D"MsoNormal">image_types: remove obsolete tar comment<o:p></o:p><=
/p>
<p class=3D"MsoNormal">image_types: sort tarball file listings<o:p></o:p></=
p>
<p class=3D"MsoNormal">oeqa/devtool: use Yocto mirror for pv-1.5.3 tarball<=
o:p></o:p></p>
<p class=3D"MsoNormal">lz4: Use the new branch naming from upstream<o:p></o=
:p></p>
<p class=3D"MsoNormal">buildtools-tarball: add wic dependency into extended=
 buildtools<o:p></o:p></p>
<p class=3D"MsoNormal">sudo: fix multilib conflict<o:p></o:p></p>
<p class=3D"MsoNormal">cve-update-db-native: handle all-wildcard versions<o=
:p></o:p></p>
<p class=3D"MsoNormal">libsdl2: Add directfb to PACKAGECONFIG rdepends<o:p>=
</o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB330164689A35F5EA7BEC075488809BYAPR11MB3301namp_--
