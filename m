Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web08.2241.1621896999573587368
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 15:56:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ToKgSjGj;
 spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: 7P41Mt8zv4NQ3yg8JT21/x1KnymTvwL1dXWUJSeDtQBoV7Fy44jGM0xsmBAW4cSAy0YCUIOQzi
 TPK2BM9k4JQA==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="182374281"
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; 
   d="scan'208,217";a="182374281"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 May 2021 15:56:38 -0700
IronPort-SDR: NeAnJjZ9wEvyUMsGGJ0plgaMeUWHnAqCrQ4HA5jg8T/N06zv0v8QcX5uyUhd1ixHL/34NYZdpP
 tqZqXejfgA2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; 
   d="scan'208,217";a="442257629"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga008.jf.intel.com with ESMTP; 24 May 2021 15:56:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 15:56:37 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 15:56:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 24 May 2021 15:56:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 24 May 2021 15:56:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KeE/SKFAigO+HteOdBpmTk+a3mgz1X2nZiroF20O4BptbuxaUfM1X1YX/3Deir7uEQLarqAwarsSX3sajc0oTA15yiNQSKEUJjD7tFHK03z52SvW2cP5ioPCmMuWx8bkkkDkbjaZPapWnOWYs37vHUzqXteWI6kpNqlxgefNUBcmPt1dF1xcjTQSUZeo0+EvexDOTeLHenq2gyv1FmN4VWm93DnPctONsj/NOgx0kUkhFKZTO1hmdsLHV9BALinVhPKRLdZiBje0G5F0EbVxAjm9YyzCTwN1h/mmjynZnsB+G+S4ov2npw9lznUMElzT721Jxp2I2HQv9swVyNrw0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9PA5uhtlkFyYGVtQY2KvZrrKo4OqMtFK5Ke1QZgYZmI=;
 b=ZlK1tKhZZcQGU7IKsRzZODziWr0sGXXQPNm3cw+KDWhx0HDyjJiWjFxjmYOxlFE4Ga9BZVzDxK+rJToMkS4cKYbzFIvDNytWW56Wm5UiQ0mLR485Ydxoe83Yq7hRjVils/XmPfRapp+A22idjD5xlhFC6pLiITDuXGGmzL/Ojj0KsUiOdev+8pXWnvpuMtgKUyxqKCNZ+BW5dbHs5KB0UJWAI3hjlJYXrJrrgKHJJoPzXi3Qk78XLgMGkdOKBqdErYHasIT7qG5QNyoDs77T8/1UaEbckw0VMHeBH+I7xcreAkyS6u/AoW3GnI58fXBGihLnBn3fo9TroGrKkoAcww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9PA5uhtlkFyYGVtQY2KvZrrKo4OqMtFK5Ke1QZgYZmI=;
 b=ToKgSjGjXin5dmTWlKbp/vF3DocAW38QPEt0QfIFsCZzxbSyHqLbPuvjr7WHGxncM+AvFMYNGbI+AGWR1/W8iEZiN3blqoGuQ5bLN6BwhZyWyswi8994ZnzyMf9izfcUvKnrjDTxXYhwOYQVlLsMDflknYMsbuzKi2g1ajiizq0=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB4877.namprd11.prod.outlook.com (2603:10b6:a03:2d9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Mon, 24 May
 2021 22:56:35 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9%4]) with mapi id 15.20.4150.027; Mon, 24 May 2021
 22:56:34 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is
 Released
Thread-Index: AddQyvpO+hVYaKnlSTmgnO7UocMWmQ==
Date: Mon, 24 May 2021 22:56:34 +0000
Message-ID: <BYAPR11MB33017216B14BA159AF5601E588269@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.147.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 941fc92e-8a20-4f21-13f3-08d91f072e31
x-ms-traffictypediagnostic: SJ0PR11MB4877:
x-microsoft-antispam-prvs: <SJ0PR11MB48778513F3E582AF9A6287B988269@SJ0PR11MB4877.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 58LTmoXoHdESnWcP0li0A/90aoTpyNjmNJFZ+K/iwIjbZIIlGH/NMLN3VomXGzHLG2d63f3TspLns+DcUI1qyqtBpDp+bdXZJW92cWmmhqRFFUf/jQBLnrVNBDu1v1KF52g1XmGtAVd1S8BDssXDqOlYY2kPaJcdxPxWWK9P3QpNiHFtuZezcpBZWxJGsgMhXFUNKKwJxN6LmbSDuqYjMcuzuAAVq1dWVXY9v5W5lRW6DXr0zdzivuffKYgNzgJTs7E7RncHAEe7z7yACVy9PHugFKHaFNR93fScUbhw9sPoJAoXja6HXI0rTZgYLdNEbS7Z4JCeQqhi59Pc1zbTO7PUge19LzciqJ7hAlbzDhEsEzlExSdbt0ZUpOXoczQoib6IxZIZbThIhiwbSEDZUkXUAP4J1XiXqesihdLrmVgn0Qs3maT9JSGUrF/FObO2wq4iRtMSzELkNKsgp+xkVcl1OsfmHOA2hvZZqwE536BEHOv13t0KVtbK+677cU8g0Muc19ElQK/yTVU8I4PCckmJLi+IdT9QF+NDChtX8CyM4xQDEtZUGLDgayISIkAjL7IdX3zZWlBtWUDExvRv6jdgkr/nuRJrHrqp2pHTE0AhE+zeKqK15ShpYFu/It8xFjkODWpWi2QFW0CEjx/lDeHrEZHQlc6+geS4S/eGE/k9aCGNFSx01A4dKrSt0BpRX9FPvZKs30RhRq3WxeABXBeuox+FVz0ZS/XBfQ1n4nlIWZ/VsvKD5FgwuEwcCL679GK1NEeGlnW8/UHiPr2qiQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(136003)(346002)(366004)(39860400002)(396003)(52536014)(122000001)(83380400001)(66476007)(66946007)(66574015)(64756008)(110136005)(66556008)(478600001)(2906002)(7696005)(66446008)(76116006)(71200400001)(9686003)(33656002)(966005)(26005)(6506007)(186003)(5660300002)(8936002)(316002)(55016002)(86362001)(38100700002)(30864003)(8676002)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?UR4YTkWdZ7EHU9ofX5i8G6ZdTG52jqMO0JU6cv5R8FSrkUWFR45nALcOfp?=
 =?iso-8859-1?Q?fFLrPC7xi4+C1/TAGfk+nFkOSZbkwEOtjgEA87LuhOuYf/UbxDJkixmRj2?=
 =?iso-8859-1?Q?hFinJfTRDtIbDInQKWvMTugAXtoQdOg/PNwykWkfxt35gGL2UQWWKN+cLr?=
 =?iso-8859-1?Q?3BxlBgHGomN0/VeWPYE8ZOSScofNRfu/xW9YEkBbuuFxIiaPwkjm3ZpBKx?=
 =?iso-8859-1?Q?HDeb6sCzuOVBGwQM6Qlv9HwEqIyswl5ml8q+S5Rv0MTqdkItoJuXcRU968?=
 =?iso-8859-1?Q?Q5xmcmileskr14mQip7TquRiaRlvNvIMAuXNyHo7WXsx7A4kTh+v41ZPNv?=
 =?iso-8859-1?Q?uepig2APL1M/M5lHDYz0yJXsjpQfWi8CNbwS7XqjbdkOqqJMGokmCNOGvO?=
 =?iso-8859-1?Q?any1W8gfEH4rey7SP9fsEl6LxP+MuiHmkaxXJFOhFiiJBZi1hh5Vj6p2/C?=
 =?iso-8859-1?Q?avFldgIXpvomwuk7jFSkBdoK+bkNR9hSOPDTkXtdL+i1AyqhNxdLqOJBYY?=
 =?iso-8859-1?Q?sLuWQJin099mBTxBcn3cnmI+khwKUgQEwRJ68PjxHPa/rdKGPz7nfF1HaK?=
 =?iso-8859-1?Q?mhXQgogR/z07nrlO28nwOaks4pcaj9dvwze9iR2KrVoWbxbwxAbY65VI4E?=
 =?iso-8859-1?Q?4eJTD3H0s8csjhWfVEIq3w33HchO9CsYMBOQFmIolQFDGQOaa1oseRA1/l?=
 =?iso-8859-1?Q?QG+XmFiRHWNyWpO0FaMiJXt3Ke99YqlKVCMBueaiUVQuDr7UKsEam8kf43?=
 =?iso-8859-1?Q?GZ01TZYfxdIvbEVndemEq8woboPPE3quqAxmNKEegaCctzdTnecP3lAmON?=
 =?iso-8859-1?Q?uFuu46E6GgK8wkJMPuCrg1mEEudKo4f6sp2xeq781kRIGTR0sgIeZcxOJQ?=
 =?iso-8859-1?Q?jelUWpCCHYsFPGsPOjABQv06SghMlh1I8I7fGR0c/bP0wD1fYOAYnb4KrO?=
 =?iso-8859-1?Q?QmjeYtrvqDeBCL++dWxx4HO9uAOdJuQh+vNE55wm7jFv6hFY/JBk4bwrJF?=
 =?iso-8859-1?Q?GGm3m5KrWA9CKrmqoJ2XFo4web1cGGqkIICPpXp2UVQqI6q518PoUXvbIT?=
 =?iso-8859-1?Q?6GqOpzz5cXipHiFnwVl4PiIlju1Gn/MIbo8g9XFzkX31PDwmjsfIU0Q2DO?=
 =?iso-8859-1?Q?2fKRF+vpruiqP3gMcxQp1L1MupaP8Aw2WChZz2KjrZmFIPBXJROJYxwD4X?=
 =?iso-8859-1?Q?YWiU0o4Erp3KjN7UdJmb9E9Zl4cOy6Ye/0a9jEw3el2HvC8TjpMA/bMksS?=
 =?iso-8859-1?Q?CJ745IBqaM9zBik/aIIHETsnsm9LlUuuOPCsvztMis7nZRzsDqKDFtk1W8?=
 =?iso-8859-1?Q?Lcyrnu9e/6Xq5eLRUebZWh0S2qBNUWpmCHxX1EuQyUulbpf0CvX0xFjuDj?=
 =?iso-8859-1?Q?gEA+vTxIE+?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 941fc92e-8a20-4f21-13f3-08d91f072e31
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2021 22:56:34.9106
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NQoPbjHhER6WT+QbYs00mdurJob7HaAiZGWh/iJ05AFbe3OTqurO6njZNj3hBC6JVXM1TJ3cLMOOSrpB7mt2TxTII7BdvFmIp+9lO2PXydg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4877
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB33017216B14BA159AF5601E588269BYAPR11MB3301namp_"

--_000_BYAPR11MB33017216B14BA159AF5601E588269BYAPR11MB3301namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Generating announcement for point release 3.3.1.

We are pleased to announce the Yocto Project 3.3.1 (hardknott-25.0.1) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/poky-hardknott=
-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/testreport.txt

Thank you for everyone's contributions to this release.


Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>

--------------------------
yocto-3.3.1 Release Notes
--------------------------

--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: hardknott
Tag: yocto-3.3.1
Git Revision: 05a8aad57ce250b124db16705acec557819905ae
Release Artefact: poky-hardknott-25.0.1
sha: 409b92d819f0c6e928b37bcc7cc4e80e5f27aa94748dcb479e325a4559c391c2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/poky-hardknott=
-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: hardknott
Tag: 2021-04.1-hardknott
Git Revision: efce6334bf122a64f63d46c1c04e3dbffe298c51
Release Artefact: oecore-hardknott-25.0.1
sha: d53cdc060784ee7c86853b3b8120d6b3d0b445098cfcd27c939f303f9075262f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/oecore-hardkno=
tt-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/oecore-hardknott-25.0.1.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: hardknott
Tag: yocto-3.3.1
Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d1219e
Release Artefact: meta-mingw-hardknott-25.0.1
sha: 89bce008a93d4717bca4069c1fd0004d88bf39e8a8098eb1e8376bc7521a600f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/meta-mingw-har=
dknott-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/meta-mingw-hardknott-25.0=
.1.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: hardknott
Tag: yocto-3.3.1
Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
Release Artefact: meta-gplv2-hardknott-25.0.1
sha: 988a222f13a9a87adf723cb86bd7db2648b3303e15bb3bac2d73e89f3faa547f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/meta-gplv2-har=
dknott-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/meta-gplv2-hardknott-25.0=
.1.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.50
Tag: 2021-04.1-hardknott
Git Revision: b67476d4758915db7a5d9f58bc903ae7501a1774
Release Artefact: bitbake-hardknott-25.0.1
sha: 3203a3c80f7ac749b1436b67b25733dbbe09b7ce9b32715a9f2fcd6bc24ec718
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/bitbake-hardkn=
ott-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/bitbake-hardknott-25.0.1.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: hardknott
Tag: yocto-3.3.1
Git Revision:eb19a2b5687f11c22c7fc26d3efabbf65adb572e

---------------
Contributors
--------------
Alejandro Enedino Hernandez Samaniego
Alexander Kanavin
Anders Wallin
Anthony Bagwell
Anuj Mittal
Bruce Ashfield
Changqing Li
Chen Qi
Christophe Chapuis
Daniel Ammann
Douglas Royds
Gavin Li
He Zhe
hongxu
Jonas H=F6ppner
Jon Mason
Jose Quaresma
Joshua Watt
Kai Kang
Kevin Hao
Khairul Rohaizzat Jamaluddin
Khem Raj
Konrad Weihmann
Michael Opdenacker
Mikko Rapeli
Mingli Yu
Nicolas Dechesne
Niels Avonds
Paul Eggleton
Peter Budny
Peter Kjellerstedt
Quentin Schulz
Randy MacLeod
Reto Schneider
Richard Purdie
Romain Naour
Ross Burton
Sakib Sajal
Sangeeta Jain
Saul Wold
Stefan Ghinea
Stephen Jolley
Trevor Gamblin
Ulrich =D6lmann
Vin=EDcius Ossanes Aquino
wangmy
Wes Lindauer
Yanfei Xu
Yann Dirson
Yi Fan Yu
Yi Zhao
zhengruoqin

---------------
Known Issues
---------------
An intermittent systemtap issue occurred on arm during testing.

---------------
Security Fixes
---------------
db: update CVE_PRODUCT
qemu: fix CVE-2021-3392
qemu: fix CVE-2021-20263
qemu: fix CVE-2020-27821
xserver-xorg: fix CVE-2021-3472
rsync: fix CVE-2020-14387
glib-2.0: fix CVE-2021-28153
qemu: fix CVE-2021-20257
qemu: fix CVE-2021-3416
qemu: fix CVE-2021-3409
qemu: fix CVE-2021-20221
qemu: fix CVE-2020-29443
qemu: fix CVE-2021-20181
gdk-pixbuf: fix CVE-2021-20240
cairo: fix CVE-2020-35492
wpa-supplicant: fix CVE-2021-30004
busybox: fix CVE-2021-28831
qemu: Fix CVE-2020-35517


---------------
Fixes
---------------
documentation: prepare for 3.3.1 release
build-appliance-image: Update to hardknott head revision
poky.conf: Bump version for 3.3.1 hardknott release
puzzles: Upstream changed to main branch for development
linux-firmware: include all relevant files in -bcm4356
lsb-release: fix reproducibility failure
ruby: upgrade 3.0.0 -> 3.0.1
grub2.inc: remove '-O2' from CFLAGS
dejagnu: needs expect at runtime
libcap: Configure Make variables correctly without a horrible hack
lttng-modules: backport patches to fix build against 5.12+ kernel
linux-yocto/5.4: qemuppc32: reduce serial shutdown issues
linux-firmware: upgrade 20210208 -> 20210315
oeqa/qemurunner: Improve handling of run_serial for shutdown commands
oeqa/qemurunner: Fix binary vs str issue
oeqa/qemurunner: Improve logging thread exit handling for qemu shutdown tes=
t
sanity.bbclass: mention CONNECTIVITY_CHECK_URIS in network failure message
libevent: Increase ptest timing tolerance 50 ms -> 100 ms
classes/image: Use xargs to set file timestamps
linux-yocto/5.10: qemuppc32: reduce serial shutdown issues
lib/package_manager: Use shutil.copy instead of bb.utils.copyfile for inter=
cepts
diffoscope: add native libraries to LD_LIBRARY_PATH
Revert "oeqa: Set LD_LIBRARY_PATH when executing native commands"
oe-buildenv-internal: add BitBake's library to PYTHONPATH
webkitgtk: Fix reproducibility in minibrowser
busybox: Fix reproducibility
libjpeg-turbo: Use --reproducible option for nasm
ptest-runner: libgcc must be installed for pthread_cancel to work
linux-yocto/5.4: update to v5.4.116
linux-yocto/5.10: update to v5.10.34
linux-yocto/5.4: update to v5.4.114
perf: fix python-audit RDEPENDS
linux-yocto/5.10: update to v5.10.32
linux-yocto/5.10: qemuriscv32.cfg: RV32 only supports 1G physical memory
linux-yocto/5.10: aufs fixes
yocto-uninative: Update to 3.1 which includes a patchelf fix
wireless-regdb: upgrade 2020.11.20 -> 2021.04.21
rootfs.py: find .ko.gz and .ko.xz kernel modules as well
pybootchart/draw: Avoid divide by zero error
patchelf: Fix alignment patch
mesa: upgrade 21.0.2 -> 21.0.3
patchelf: Fix note section alignment issues
license_image.bbclass: Fix symlink to generic license files
license_image.bbclass: Detect broken symlinks
bitbake: runqueue: Handle deferred task rehashing in multiconfig builds
bitbake: runqueue: Fix multiconfig deferred task sstate validity caching is=
sue
patchelf: Backport fix from upstream for note section overlap error
weston: fix build failure due to race condition
meta/lib/oeqa/core/tests/cases/timeout.py: add a testcase for the previous =
fix
oeqa: tear down oeqa decorators if one of them raises an exception in setup
cmake.bbclass: remove ${B} before cmake_do_configure
kernel-yocto.bbclass: chdir to ${WORKDIR} for do_kernel_checkout
yocto-check-layer: Avoid bug when iterating and autoadding dependencies
libssh2: fix build failure with option no-ecdsa
go: Use dl.google.com for SRC_URI
cve-update-db-native: skip on empty cpe23Uri
rpm: Upgrade to 4.16.1.3
runqemu: Ensure we cleanup snapshot files after image run
lttng-tools: Fix path for test_python_looging
lttng-tools: Fix missing legacy test files
deb: apply postinstall on sdk
externalsrc: Detect code changes in submodules
Revert "externalsrc: Detect code changes in submodules"
arch-armv6m.inc: fix access rights
libxshmfence: Build fixes for riscv32
packagegroup-core-tools-testapps.bb: Remove kexec for riscv32
packagegroup-core-tools-profile: Remove valgrind for riscv32
ltp: fix empty ltp-dev package
glslang: strip whitespace in pkgconfig file
go: upgrade 1.16.2 -> 1.16.3
pango: re-enable ptest
kmod: do not symlink config.guess/config.sub during autoreconf
libtool: make sure autoheader run before automake
Revert "inittab: Add getty launch on hvc0 for qemuppc64"
sysvinit-inittab/start_getty: Check /sys for the tty device existence
modutils-initscripts: Bail out when no module is installed
systemd: upgrade 247.4 -> 247.6
insane: clean up some more warning messages
sanity: Add error check for '%' in build path
groff: not ship /usr/bin/grap2graph
oeqa/runtime: space needed
parselogs: ignore floppy error on qemu-system-x86 at boot stage
go: update SRC_URI to use https protocol
mesa: upgrade 21.0.1 -> 21.0.2
systemd: Fix build on mips/musl
python3: Improve logging, syntax and update deprecated modules to create_ma=
nifest
python3: Upgrade 3.9.2 -> 3.9.4
oeqa/runtime/cases: Only disable/enable for current boot
oe-time-dd-test.sh: increase timeout to 15 sec
scripts/oe-debuginfod: correct several issues
ca-certificates: Fix openssl runtime cert dependencies
nettle: upgrade 3.7.1 -> 3.7.2
linux-yocto/5.10: fix arm defconfig warnings
linux-yocto/5.4: fix arm defconfig warnings
linux-yocto/5.4: update to v5.4.112
linux-yocto-rt/5.10: update to -rt34
linux-yocto/5.10: update to v5.10.30
linux-yocto/5.4: update to v5.4.111
linux-yocto/5.10: update to v5.10.29
linux-yocto/5.10: BSP configuration fixes
linux-yocto-dev: add features/scsi/scsi-debug.scc features/gpio/mockup.scc =
to KERNEL_FEATURES
linux-yocto/5.10: update to v5.10.27
linux-yocto/5.4: update to v5.4.109
archiver: Fix typos
oeqa/selftest: Ensure packages classes are set correctly for maintainers te=
st
pseudo: Upgrade to add trailing slashes ignore path fix
lib/oe/terminal: Fix tmux new-session on older tmux versions (<1.9)
bitbake: bitbake: tests/fetch: remove write protected files too
bitbake: fetch/gitsm: Fix crash when using git LFS and submodules
bitbake: bitbake-server: ensure server timeout is a float
bitbake: bitbake: tests/fetch: fix test execution without .gitconfig
bitbake: runqueue: Fix deferred task issues
oeqa/selftest: Hardcode test assumptions about heartbeat event timings
oe-time-dd-test.sh: provide more information from "top"
oe-time-dd-test.sh: make executable
ref-manual: add mention of DISTUTILS_SETUP_PATH
ref-manual: migration guide: add release codenames
ref-manual: add migration section for 3.3 release
ref-manual: tweak buildtools section
ref-manual: fix reference to build-essential
ref-manual: add FIT_KERNEL_COMP_ALG*
ref-manual: add passwd-expire to EXTRA_USERS_PARAMS
ref-manual: add python3targetconfig class and remove python 2 references
ref-manual: add REQUIRED_VERSION and adjust PREFERRED_VERSION entry
ref-manual: and SDK_CUSTOM_TEMPLATECONF to glossary
overview-manual: fix git command line
ref-manual: update/fix text for SDK_VERSION
Use variables for minimum host versions and bump Python to 3.6
ref-manual: add METADATA_REVISION and METADATA_BRANCH
bitbake: bitbake-user-manual: add REQUIRED_VERSION and adjust PREFERRED_VER=
SION entry
bitbake: bitbake-user-manual: document no support for using passwords in gi=
t URLs
docs: add a top level page for bitbake documentation
docs: replace anchor links
sdk-manual: fix typo
bitbake: bitbake: Update version to 1.50.0 stable release series

--_000_BYAPR11MB33017216B14BA159AF5601E588269BYAPR11MB3301namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Generating announcement for point release 3.3.1.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.3.1 (=
hardknott-25.0.1) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/poky-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/po=
ky-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/RELEASENOTES<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/testreport.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.3.1 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 05a8aad57ce250b124db16705acec557819905=
ae<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-hardknott-25.0.1<o:p></o:p></=
p>
<p class=3D"MsoNormal">sha: 409b92d819f0c6e928b37bcc7cc4e80e5f27aa94748dcb4=
79e325a4559c391c2<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/poky-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/po=
ky-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.1-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: efce6334bf122a64f63d46c1c04e3dbffe298c=
51<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-hardknott-25.0.1<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: d53cdc060784ee7c86853b3b8120d6b3d0b445098cfcd27=
c939f303f9075262f<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/oecore-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/oe=
core-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d121=
9e<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-hardknott-25.0.1<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: 89bce008a93d4717bca4069c1fd0004d88bf39e8a8098eb=
1e8376bc7521a600f<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/meta-mingw-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/me=
ta-mingw-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db=
0f<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-hardknott-25.0.1<o:p></=
o:p></p>
<p class=3D"MsoNormal">sha: 988a222f13a9a87adf723cb86bd7db2648b3303e15bb3ba=
c2d73e89f3faa547f<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/meta-gplv2-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/me=
ta-gplv2-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.50<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2021-04.1-hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: b67476d4758915db7a5d9f58bc903ae7501a17=
74<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-hardknott-25.0.1<o:p></o:p=
></p>
<p class=3D"MsoNormal">sha: 3203a3c80f7ac749b1436b67b25733dbbe09b7ce9b32715=
a9f2fcd6bc24ec718<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.3.1/bitbake-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/bi=
tbake-hardknott-25.0.1.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: hardknott<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.3.1<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision:eb19a2b5687f11c22c7fc26d3efabbf65adb572=
e<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">--------------<o:p></o:p></p>
<p class=3D"MsoNormal">Alejandro Enedino Hernandez Samaniego<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Anders Wallin<o:p></o:p></p>
<p class=3D"MsoNormal">Anthony Bagwell<o:p></o:p></p>
<p class=3D"MsoNormal">Anuj Mittal<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Christophe Chapuis<o:p></o:p></p>
<p class=3D"MsoNormal">Daniel Ammann<o:p></o:p></p>
<p class=3D"MsoNormal">Douglas Royds<o:p></o:p></p>
<p class=3D"MsoNormal">Gavin Li<o:p></o:p></p>
<p class=3D"MsoNormal">He Zhe<o:p></o:p></p>
<p class=3D"MsoNormal">hongxu<o:p></o:p></p>
<p class=3D"MsoNormal">Jonas H=F6ppner<o:p></o:p></p>
<p class=3D"MsoNormal">Jon Mason<o:p></o:p></p>
<p class=3D"MsoNormal">Jose Quaresma<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Watt<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Kevin Hao<o:p></o:p></p>
<p class=3D"MsoNormal">Khairul Rohaizzat Jamaluddin<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Konrad Weihmann<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Opdenacker<o:p></o:p></p>
<p class=3D"MsoNormal">Mikko Rapeli<o:p></o:p></p>
<p class=3D"MsoNormal">Mingli Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Nicolas Dechesne<o:p></o:p></p>
<p class=3D"MsoNormal">Niels Avonds<o:p></o:p></p>
<p class=3D"MsoNormal">Paul Eggleton<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Budny<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Kjellerstedt<o:p></o:p></p>
<p class=3D"MsoNormal">Quentin Schulz<o:p></o:p></p>
<p class=3D"MsoNormal">Randy MacLeod<o:p></o:p></p>
<p class=3D"MsoNormal">Reto Schneider<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Romain Naour<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sakib Sajal<o:p></o:p></p>
<p class=3D"MsoNormal">Sangeeta Jain<o:p></o:p></p>
<p class=3D"MsoNormal">Saul Wold<o:p></o:p></p>
<p class=3D"MsoNormal">Stefan Ghinea<o:p></o:p></p>
<p class=3D"MsoNormal">Stephen Jolley<o:p></o:p></p>
<p class=3D"MsoNormal">Trevor Gamblin<o:p></o:p></p>
<p class=3D"MsoNormal">Ulrich =D6lmann<o:p></o:p></p>
<p class=3D"MsoNormal">Vin=EDcius Ossanes Aquino<o:p></o:p></p>
<p class=3D"MsoNormal">wangmy<o:p></o:p></p>
<p class=3D"MsoNormal">Wes Lindauer<o:p></o:p></p>
<p class=3D"MsoNormal">Yanfei Xu<o:p></o:p></p>
<p class=3D"MsoNormal">Yann Dirson<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Fan Yu<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Zhao<o:p></o:p></p>
<p class=3D"MsoNormal">zhengruoqin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">An intermittent systemtap issue occurred on arm duri=
ng testing.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">db: update CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3392<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-20263<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2020-27821<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: fix CVE-2021-3472<o:p></o:p></p>
<p class=3D"MsoNormal">rsync: fix CVE-2020-14387<o:p></o:p></p>
<p class=3D"MsoNormal">glib-2.0: fix CVE-2021-28153<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-20257<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3416<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-3409<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-20221<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2020-29443<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: fix CVE-2021-20181<o:p></o:p></p>
<p class=3D"MsoNormal">gdk-pixbuf: fix CVE-2021-20240<o:p></o:p></p>
<p class=3D"MsoNormal">cairo: fix CVE-2020-35492<o:p></o:p></p>
<p class=3D"MsoNormal">wpa-supplicant: fix CVE-2021-30004<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: fix CVE-2021-28831<o:p></o:p></p>
<p class=3D"MsoNormal">qemu: Fix CVE-2020-35517<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">---------------<o:p></o:p></p>
<p class=3D"MsoNormal">documentation: prepare for 3.3.1 release<o:p></o:p><=
/p>
<p class=3D"MsoNormal">build-appliance-image: Update to hardknott head revi=
sion<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.3.1 hardknott release<=
o:p></o:p></p>
<p class=3D"MsoNormal">puzzles: Upstream changed to main branch for develop=
ment<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: include all relevant files in -bcm43=
56<o:p></o:p></p>
<p class=3D"MsoNormal">lsb-release: fix reproducibility failure<o:p></o:p><=
/p>
<p class=3D"MsoNormal">ruby: upgrade 3.0.0 -&gt; 3.0.1<o:p></o:p></p>
<p class=3D"MsoNormal">grub2.inc: remove '-O2' from CFLAGS<o:p></o:p></p>
<p class=3D"MsoNormal">dejagnu: needs expect at runtime<o:p></o:p></p>
<p class=3D"MsoNormal">libcap: Configure Make variables correctly without a=
 horrible hack<o:p></o:p></p>
<p class=3D"MsoNormal">lttng-modules: backport patches to fix build against=
 5.12+ kernel<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: qemuppc32: reduce serial shutdown i=
ssues<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20210208 -&gt; 20210315<o:p>=
</o:p></p>
<p class=3D"MsoNormal">oeqa/qemurunner: Improve handling of run_serial for =
shutdown commands<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/qemurunner: Fix binary vs str issue<o:p></o:p><=
/p>
<p class=3D"MsoNormal">oeqa/qemurunner: Improve logging thread exit handlin=
g for qemu shutdown test<o:p></o:p></p>
<p class=3D"MsoNormal">sanity.bbclass: mention CONNECTIVITY_CHECK_URIS in n=
etwork failure message<o:p></o:p></p>
<p class=3D"MsoNormal">libevent: Increase ptest timing tolerance 50 ms -&gt=
; 100 ms<o:p></o:p></p>
<p class=3D"MsoNormal">classes/image: Use xargs to set file timestamps<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: qemuppc32: reduce serial shutdown =
issues<o:p></o:p></p>
<p class=3D"MsoNormal">lib/package_manager: Use shutil.copy instead of bb.u=
tils.copyfile for intercepts<o:p></o:p></p>
<p class=3D"MsoNormal">diffoscope: add native libraries to LD_LIBRARY_PATH<=
o:p></o:p></p>
<p class=3D"MsoNormal">Revert &quot;oeqa: Set LD_LIBRARY_PATH when executin=
g native commands&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oe-buildenv-internal: add BitBake's library to PYTHO=
NPATH<o:p></o:p></p>
<p class=3D"MsoNormal">webkitgtk: Fix reproducibility in minibrowser<o:p></=
o:p></p>
<p class=3D"MsoNormal">busybox: Fix reproducibility<o:p></o:p></p>
<p class=3D"MsoNormal">libjpeg-turbo: Use --reproducible option for nasm<o:=
p></o:p></p>
<p class=3D"MsoNormal">ptest-runner: libgcc must be installed for pthread_c=
ancel to work<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.116<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.34<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.114<o:p></o:p></p>
<p class=3D"MsoNormal">perf: fix python-audit RDEPENDS<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.32<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: qemuriscv32.cfg: RV32 only support=
s 1G physical memory<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: aufs fixes<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-uninative: Update to 3.1 which includes a patc=
helf fix<o:p></o:p></p>
<p class=3D"MsoNormal">wireless-regdb: upgrade 2020.11.20 -&gt; 2021.04.21<=
o:p></o:p></p>
<p class=3D"MsoNormal">rootfs.py: find .ko.gz and .ko.xz kernel modules as =
well<o:p></o:p></p>
<p class=3D"MsoNormal">pybootchart/draw: Avoid divide by zero error<o:p></o=
:p></p>
<p class=3D"MsoNormal">patchelf: Fix alignment patch<o:p></o:p></p>
<p class=3D"MsoNormal">mesa: upgrade 21.0.2 -&gt; 21.0.3<o:p></o:p></p>
<p class=3D"MsoNormal">patchelf: Fix note section alignment issues<o:p></o:=
p></p>
<p class=3D"MsoNormal">license_image.bbclass: Fix symlink to generic licens=
e files<o:p></o:p></p>
<p class=3D"MsoNormal">license_image.bbclass: Detect broken symlinks<o:p></=
o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Handle deferred task rehashing in=
 multiconfig builds<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix multiconfig deferred task sst=
ate validity caching issue<o:p></o:p></p>
<p class=3D"MsoNormal">patchelf: Backport fix from upstream for note sectio=
n overlap error<o:p></o:p></p>
<p class=3D"MsoNormal">weston: fix build failure due to race condition<o:p>=
</o:p></p>
<p class=3D"MsoNormal">meta/lib/oeqa/core/tests/cases/timeout.py: add a tes=
tcase for the previous fix<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa: tear down oeqa decorators if one of them raise=
s an exception in setup<o:p></o:p></p>
<p class=3D"MsoNormal">cmake.bbclass: remove ${B} before cmake_do_configure=
<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-yocto.bbclass: chdir to ${WORKDIR} for do_ker=
nel_checkout<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-check-layer: Avoid bug when iterating and auto=
adding dependencies<o:p></o:p></p>
<p class=3D"MsoNormal">libssh2: fix build failure with option no-ecdsa<o:p>=
</o:p></p>
<p class=3D"MsoNormal">go: Use dl.google.com for SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">cve-update-db-native: skip on empty cpe23Uri<o:p></o=
:p></p>
<p class=3D"MsoNormal">rpm: Upgrade to 4.16.1.3<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu: Ensure we cleanup snapshot files after imag=
e run<o:p></o:p></p>
<p class=3D"MsoNormal">lttng-tools: Fix path for test_python_looging<o:p></=
o:p></p>
<p class=3D"MsoNormal">lttng-tools: Fix missing legacy test files<o:p></o:p=
></p>
<p class=3D"MsoNormal">deb: apply postinstall on sdk<o:p></o:p></p>
<p class=3D"MsoNormal">externalsrc: Detect code changes in submodules<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Revert &quot;externalsrc: Detect code changes in sub=
modules&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">arch-armv6m.inc: fix access rights<o:p></o:p></p>
<p class=3D"MsoNormal">libxshmfence: Build fixes for riscv32<o:p></o:p></p>
<p class=3D"MsoNormal">packagegroup-core-tools-testapps.bb: Remove kexec fo=
r riscv32<o:p></o:p></p>
<p class=3D"MsoNormal">packagegroup-core-tools-profile: Remove valgrind for=
 riscv32<o:p></o:p></p>
<p class=3D"MsoNormal">ltp: fix empty ltp-dev package<o:p></o:p></p>
<p class=3D"MsoNormal">glslang: strip whitespace in pkgconfig file<o:p></o:=
p></p>
<p class=3D"MsoNormal">go: upgrade 1.16.2 -&gt; 1.16.3<o:p></o:p></p>
<p class=3D"MsoNormal">pango: re-enable ptest<o:p></o:p></p>
<p class=3D"MsoNormal">kmod: do not symlink config.guess/config.sub during =
autoreconf<o:p></o:p></p>
<p class=3D"MsoNormal">libtool: make sure autoheader run before automake<o:=
p></o:p></p>
<p class=3D"MsoNormal">Revert &quot;inittab: Add getty launch on hvc0 for q=
emuppc64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">sysvinit-inittab/start_getty: Check /sys for the tty=
 device existence<o:p></o:p></p>
<p class=3D"MsoNormal">modutils-initscripts: Bail out when no module is ins=
talled<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: upgrade 247.4 -&gt; 247.6<o:p></o:p></p>
<p class=3D"MsoNormal">insane: clean up some more warning messages<o:p></o:=
p></p>
<p class=3D"MsoNormal">sanity: Add error check for '%' in build path<o:p></=
o:p></p>
<p class=3D"MsoNormal">groff: not ship /usr/bin/grap2graph<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime: space needed<o:p></o:p></p>
<p class=3D"MsoNormal">parselogs: ignore floppy error on qemu-system-x86 at=
 boot stage<o:p></o:p></p>
<p class=3D"MsoNormal">go: update SRC_URI to use https protocol<o:p></o:p><=
/p>
<p class=3D"MsoNormal">mesa: upgrade 21.0.1 -&gt; 21.0.2<o:p></o:p></p>
<p class=3D"MsoNormal">systemd: Fix build on mips/musl<o:p></o:p></p>
<p class=3D"MsoNormal">python3: Improve logging, syntax and update deprecat=
ed modules to create_manifest<o:p></o:p></p>
<p class=3D"MsoNormal">python3: Upgrade 3.9.2 -&gt; 3.9.4<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime/cases: Only disable/enable for current =
boot<o:p></o:p></p>
<p class=3D"MsoNormal">oe-time-dd-test.sh: increase timeout to 15 sec<o:p><=
/o:p></p>
<p class=3D"MsoNormal">scripts/oe-debuginfod: correct several issues<o:p></=
o:p></p>
<p class=3D"MsoNormal">ca-certificates: Fix openssl runtime cert dependenci=
es<o:p></o:p></p>
<p class=3D"MsoNormal">nettle: upgrade 3.7.1 -&gt; 3.7.2<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: fix arm defconfig warnings<o:p></o=
:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: fix arm defconfig warnings<o:p></o:=
p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.112<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto-rt/5.10: update to -rt34<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.30<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.111<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.29<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: BSP configuration fixes<o:p></o:p>=
</p>
<p class=3D"MsoNormal">linux-yocto-dev: add features/scsi/scsi-debug.scc fe=
atures/gpio/mockup.scc to KERNEL_FEATURES<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.10: update to v5.10.27<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.109<o:p></o:p></p>
<p class=3D"MsoNormal">archiver: Fix typos<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest: Ensure packages classes are set corre=
ctly for maintainers test<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Upgrade to add trailing slashes ignore path =
fix<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/terminal: Fix tmux new-session on older tmux =
versions (&lt;1.9)<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: tests/fetch: remove write protecte=
d files too<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: fetch/gitsm: Fix crash when using git LFS a=
nd submodules<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-server: ensure server timeout is a =
float<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: tests/fetch: fix test execution wi=
thout .gitconfig<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: runqueue: Fix deferred task issues<o:p></o:=
p></p>
<p class=3D"MsoNormal">oeqa/selftest: Hardcode test assumptions about heart=
beat event timings<o:p></o:p></p>
<p class=3D"MsoNormal">oe-time-dd-test.sh: provide more information from &q=
uot;top&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oe-time-dd-test.sh: make executable<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: add mention of DISTUTILS_SETUP_PATH<o:p>=
</o:p></p>
<p class=3D"MsoNormal">ref-manual: migration guide: add release codenames<o=
:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: add migration section for 3.3 release<o:=
p></o:p></p>
<p class=3D"MsoNormal">ref-manual: tweak buildtools section<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: fix reference to build-essential<o:p></o=
:p></p>
<p class=3D"MsoNormal">ref-manual: add FIT_KERNEL_COMP_ALG*<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: add passwd-expire to EXTRA_USERS_PARAMS<=
o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: add python3targetconfig class and remove=
 python 2 references<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: add REQUIRED_VERSION and adjust PREFERRE=
D_VERSION entry<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: and SDK_CUSTOM_TEMPLATECONF to glossary<=
o:p></o:p></p>
<p class=3D"MsoNormal">overview-manual: fix git command line<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: update/fix text for SDK_VERSION<o:p></o:=
p></p>
<p class=3D"MsoNormal">Use variables for minimum host versions and bump Pyt=
hon to 3.6<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: add METADATA_REVISION and METADATA_BRANC=
H<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-user-manual: add REQUIRED_VERSION a=
nd adjust PREFERRED_VERSION entry<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake-user-manual: document no support fo=
r using passwords in git URLs<o:p></o:p></p>
<p class=3D"MsoNormal">docs: add a top level page for bitbake documentation=
<o:p></o:p></p>
<p class=3D"MsoNormal">docs: replace anchor links<o:p></o:p></p>
<p class=3D"MsoNormal">sdk-manual: fix typo<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bitbake: Update version to 1.50.0 stable re=
lease series<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB33017216B14BA159AF5601E588269BYAPR11MB3301namp_--
