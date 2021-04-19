Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.1968.1618870286340199136
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 15:11:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=k0+kHGsr;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: 4309YPnnVpStdxXHQKK4h2/VOOjG++cXzmQV3uu9NffgpBlVGcb0Fz8GWiOpn+jWLdRytdgxL1
 beurz2hh9jIw==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="195520369"
X-IronPort-AV: E=Sophos;i="5.82,235,1613462400"; 
   d="scan'208";a="195520369"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2021 15:11:18 -0700
IronPort-SDR: GtHCz610+yVX7xdky8CGeNBgYQESF5PRBDbdc7IsV3KJwziuIcz1LmDDIfnfIX8S39TSV+2YhZ
 vwd22/aG+VcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,235,1613462400"; 
   d="scan'208";a="462884626"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga001.jf.intel.com with ESMTP; 19 Apr 2021 15:11:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 19 Apr 2021 15:11:18 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 19 Apr 2021 15:11:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 19 Apr 2021 15:11:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 19 Apr 2021 15:11:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PM9mpsz2U1Iu2d3IUKYvKKxJ6/+OItcehUPaOCUC7jBtZjPKBmKihcpZv6+zXYb8qFVUNyrlKE2a6DAqs0qmH4FTRnW1CIql8zM7TeEfYpkbkbCraW5+O4/EU+Q8PCofH0dXzuHPlfFuELX5omafvwFA0I4PTP83MDrnipCW0qaf+aOF5VvnSgMT5TvPwOs0AN3NJngfExCmGDJSWOR8CipVLkHSnn5tsYFgafe1NWPgIsCu+GjtDhYMT+psUfktXuDX2zxVK66nYVTac+ijs6+i1OpWVTwrLoTIONYPFLog0TfNV28+z03txQWwgUJekcd5zkIv2dSJmnuhwdSgkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BRMZijM/PHq2EIMLy4MPeJ8RfszPKcV6xJSRyFovpvg=;
 b=B6MOIsef0GdUEaxl3/s/B6ac0Co1gL4kz9Ikpst8tscRWsqOhHsvq1hMwhuxW4MWW6cAPA9NXZpl7OHBp0Fr+CHYdUlMhK/8jrHBrFylklXjvMQ5qoGvN6vm0TtK13kOcvsNT0zS6OIUv/QF5o+Jh32Rtn3kRNBa4TaLJ4DIuZVbEqGGPNcoO52eZ44IthSoIMDYfkY70hbCmJafQ3G6/IYAabk9aTinCb6EucnvWywcyYGEGUOtmOWHrKeHLQPgZ+FfaZanbK2f6VJdCCevNSUyCtMaIdXhcy6q8tmnj5E/y+sEVqu5LOXL+Bl7MUFabXqmLYRVnJnE+NqVKnDiuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BRMZijM/PHq2EIMLy4MPeJ8RfszPKcV6xJSRyFovpvg=;
 b=k0+kHGsr+j/8J4sBMlIdyakzQ6t3v7iyUNIL9SL96u+PIbwWpa7WaiuntYU1/sR37j/4xHC+4W+/Mcr1XqLr4By7Q+4Elosa0vOV33LDrZdZ2m9hbkqCrnXQOBLPTzgsA2tEgPC2ICA27T35jG1RrNFbpBr6iLse/l1W5X9S19g=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB3302.namprd11.prod.outlook.com (2603:10b6:a03:7b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Mon, 19 Apr
 2021 22:11:13 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1%7]) with mapi id 15.20.4020.023; Mon, 19 Apr 2021
 22:11:13 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.3 (hardknott-25.0.0) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.3 (hardknott-25.0.0) is Released
Thread-Index: Adc1aJGT2O4zeoXaTqiTbvytWy3Wug==
Date: Mon, 19 Apr 2021 22:11:13 +0000
Message-ID: <BYAPR11MB3301EE51A1DD512BBD65646D88499@BYAPR11MB3301.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 2d2b536b-d196-4f15-5479-08d903800bd1
x-ms-traffictypediagnostic: BYAPR11MB3302:
x-microsoft-antispam-prvs: <BYAPR11MB330293077C602CBCCB1F6C3888499@BYAPR11MB3302.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2mArUuofjDRL/kxlILq1gSZZDmw2/SdJlilfxrLtMZfuB/45ihsrNBAoC2ZtVggvXEp1Lre/rnLy1cZMgGoM8fUqHWy0bxgmarJMXr6DssqXbGL2+IJYo6xQkUqrRijYc8pqco7r2GV4rJ4QQd9UZliPToLE7U8/n+g9RcWHK/JTErUYSaLAnwJbv9pnk1tBrs0mTvHbZTC5YSmjJdvIrpYQtHxUMBsMvjWi5qKsZ4Z2eZLurOgXYbv89dPPTyCjMhCeZ9BjncTUxt5ioc7WJdcWsGjx2FSMbKd3WfiiqLtohqBSXHHimyzY/IsFpUZC9ll9zmuM4gvhFPgNLEF3YHGiWfEiJhkd3sqWvrF7urDZjSNUfjODy2kPE/IT25BgSzL05LvPa27/pjennu24cjejmCjhYbHhb/r7axrr0joSX1y/4qNYk/XCFM1qbzd5IqSyPx5Xyojyk3YVCJ+ymY/H77DEUOI9+yoflEsaHI0AOsX1NI76PiKm2H2sivW9NBJplWdQfVIuukVW/5Q5u9U/af3FHr7WLnSWEgmKjGLpSdgrA8WHWGNV9qNUOGI5jI1LW6CwwQ1rYcCieuofPqG5ShCuuyIYN5vNFleENr3bMkVkFsuyPM6kdC5GIWnifTkzPfe98WpgUZtPUb0zF9537lfsXKQ5CzoYy1auYHHsqO/0mos3Dsj8kgHW0n/i3Ya94yhyRBqFufUHWZNCCiwuszNrvBNnrfQaz0GspTA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(39860400002)(366004)(346002)(396003)(136003)(8676002)(8936002)(316002)(38100700002)(30864003)(86362001)(66574015)(478600001)(33656002)(66556008)(110136005)(7696005)(2906002)(83380400001)(186003)(966005)(66946007)(52536014)(26005)(6506007)(66446008)(76116006)(66476007)(55016002)(9686003)(122000001)(71200400001)(5660300002)(64756008)(491001)(559001)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?tL7XaUNNhn+jzFgBr5dxVHUjPWT8xu6CaIggmNf0f+YfZPDjBS08CczBrY?=
 =?iso-8859-1?Q?fEVY6L5uRMYYLWes7RC3VmRPm1xv/XymstrIaDyueWtwmijAPOZ/85mscJ?=
 =?iso-8859-1?Q?LhArYst75+o5UJhTlqWTftC7IuJpb4bFzrFhb9/B+kAXlNZ657pb27gTmM?=
 =?iso-8859-1?Q?olI4VvsLIOh1zn89xJDiY6IOumEb72nqamk1pkKPcOTZMkxEnxUtNHDONb?=
 =?iso-8859-1?Q?ViS++nfuAnWvhK5wN5D7E9X4uPnMyoTTSzF8T4eVfhtMlxnfiy9ltGOVcQ?=
 =?iso-8859-1?Q?EFLxM+zNTyNNwpRXS0EXCNqfGeRejhPD3K2yF1vHGJASl+FK78Aa09M6Gj?=
 =?iso-8859-1?Q?0CsQfI+xjOWC9z+MzpvdEz6toqfAn/+Y4e1SqtjVb181vhYOlRwl910LmS?=
 =?iso-8859-1?Q?6drNJ7cGon8E/4AoAoSEA5T7prACUnlSF2gYdrgdLeKtGvdpiutPQYI+cd?=
 =?iso-8859-1?Q?nZDYjciKqifatKTutZvq0+AkDjfxzBwdD16K41aNh8M8uTBUrcrn7n2WGr?=
 =?iso-8859-1?Q?VEOk2BvMuNsOPm0F8nTWBE7JD5Rh997pz1X9eCDRambtsAAjXvCXxZoZMq?=
 =?iso-8859-1?Q?m/C7oxcAXfqlUxaGRDVJovIKM1goNiL8KVPOsN+MtIe8QMTiMAYOjeBRVT?=
 =?iso-8859-1?Q?aIGT7rfZ0jAUmUF0QMRmlj/pRwmj6+VvOFJ14hOX4tvYvMmexaV+xn5uSS?=
 =?iso-8859-1?Q?xAc9CB0qKeG+0cCCX2MMWpKqDNIUn4qlWOAKGa6CwEsyU3lswRpf80xOHd?=
 =?iso-8859-1?Q?tYc9c1c3Qb3+ZC69ef2w0yttNtbW7ImB1wnwlxsni2bN5wxFc7gTyzfnU4?=
 =?iso-8859-1?Q?lkoC4zTG5+8dgvb3/FHr4oeAUvnv7NowG9xdJBWEH2nPJeX5dh0UY7t5/x?=
 =?iso-8859-1?Q?DZiIPyskQ0YMUJ4VH3abPWvZQe6U0+jX988hpIWl6Kf7We2frNdwauxt8P?=
 =?iso-8859-1?Q?M+K+HqZAAwh0lA5GpIn2CxBvqSs8dSbL+NHdxCu+ogImljCC72YqIQJdvr?=
 =?iso-8859-1?Q?637Rj78CBi1iNz2GCSBidbnth8dXF1wsXsOBvSwHoBRXkTr+snv2DsxWI+?=
 =?iso-8859-1?Q?ctRkyo93hA4DdVqeV8U6Mt/UsVrp0ZXPSdpP/81X9D6RCW26p/S64wgz9y?=
 =?iso-8859-1?Q?hAYAdQP6aiYcn3GEgAUtRtaXnkahRniPXZ0StcTWfZvsgwBIa9iMJ6L8B+?=
 =?iso-8859-1?Q?+p8iEwibuEF+w7QMUIyHDZ6J8BamIPretrrYDwb8463EiCnFu7m0ZoeAwu?=
 =?iso-8859-1?Q?gGQM4MZG2OGFms+1fYEVrjhKymjT0cFBqXdtXXoZudk2ocr7RrWqerGh93?=
 =?iso-8859-1?Q?71onHDkCzJtcbj2RKXUJ5smZZLys4Fo09X5Lt/MXO2YxKX0X9bgWdSW9mR?=
 =?iso-8859-1?Q?r+rK7g3SNJ?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d2b536b-d196-4f15-5479-08d903800bd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2021 22:11:13.7571
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y6wSibdohSor5CXQd0mzBBa2ZzdRbUd07fgr4itZRXhFCVXjQeBAg5Z8jIfDb9wtF7qqwXy4RQ+eydqqve237vgLpxY0CRiMb/R+BIxK8Og=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3302
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.3 (hardknott-25.0.0) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/poky-hardknott-2=
5.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3/poky-hardknott-25.0.0.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com


--------------------------
yocto-3.3 Release Notes
--------------------------

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: hardknott
Tag: yocto-3.3
Git Revision: e1839b58ebe05242a52fe050aa9a08140136aa0a
Release Artefact: poky-hardknott-25.0.0
sha: 2d08ed735badad119a4228e113115f91615837127b62176fb570be6929417292
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/poky-hardknott-2=
5.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3/poky-hardknott-25.0.0.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: hardknott
Tag: 2021-04-hardknott
Git Revision: 14241ed09f9ed317045cf75a6d08416d3579bb8d
Release Artefact: oecore-hardknott-25.0.0
sha: 4f00bfd3804517ea5e68502af896e5a162a5cef86d00f5170e9748ffe77386a6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/oecore-hardknott=
-25.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3/oecore-hardknott-25.0.0.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: hardknott
Tag: yocto-3.3
Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d1219e
Release Artefact: meta-mingw-hardknott-25.0.0
sha: 39bfa386f04111d8cfa8791977a416344bbb0a1fd5167e42bd9c9d6923f0e009
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/meta-mingw-hardk=
nott-25.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3/meta-mingw-hardknott-25.0.0=
.tar.bz2

Repository Name: meta-intel
Repository Location: https://git.yoctoproject.org/git/meta-intel
Branch: hardknott
Tag: yocto-3.3
Git Revision: 01cfc99a8f960917433a8a46b41bb4febb5b1993
Release Artefact: meta-intel-hardknott-25.0.0
sha: 671c2a7f7080bd0dc4049c0ceef8d9ca561e6b1412586d2c218834e13d8f99c7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/meta-intel-hardk=
nott-25.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3/meta-intel-hardknott-25.0.0=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: hardknott
Tag: yocto-3.3
Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
Release Artefact: meta-gplv2-hardknott-25.0.0
sha: 2679412d6a3c8db0471d1d91f5667c2ebc10558ad574b6169e2e572608c0e6c6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/meta-gplv2-hardk=
nott-25.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3/meta-gplv2-hardknott-25.0.0=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.50
Tag: 2021-04-hardknott
Git Revision: a1848a481e36b729c8e4130c394b1d462d4b488a
Release Artefact: bitbake-hardknott-25.0.0
sha: 09e6ebcb579a3eaf3760ff53e0da71cd55b5eed557918230bd5cddd5b5c53c72
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/bitbake-hardknot=
t-25.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3/bitbake-hardknott-25.0.0.ta=
r.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: hardknott
Tag: yocto-3.3
Git Revision:4f7f451df266a307b34bf145b29291ca85eb882f

--------------
Contributors
--------------

Thanks to the following people who contributed to this release:

Abdellatif El Khlifi
Adrian Fiergolski
Adrian Herrera
Alan Perry
Alban Bedel
Alejandro Hernandez Samaniego
Alexander Kamensky
Alexander Kanavin
Alexander Vickberg
Alex Stewart
Alistair Francis
Anatol Belski
Andreas M=FCller
Andrei Gherzan
Andrej Valek
Andrey Mozzhuhin
Andrey Zhizhikin
Anibal Limon
Anthony Bagwell
Anton D. Kachalov
Anton Kachalov
Anuj Mittal
Armin Kuster
Awais Belal
Bartosz Golaszewski
Brett Warren
Bruce Ashfield
Cedric Hombourger
Chaitanya Vadrevu
Chandana Kalluri
Changhyeok Bae
Changqing Li
Charlie Davies
Chee Yang Lee
Chen Qi
Chris Laplante
Christophe Priouzeau
Christopher Larson
Colin Finck
Dan Callaghan
Deepak Rawat
Denys Dmytriyenko
Denys Zagorui
Diego Santa Cruz
Diego Sueiro
Dmitry Baryshkov
Dorinda Bassey
Douglas Royds
Easwar Hariharan
Elvis Stansvik
Fabio Berton
Federico Pellegrin
Fedor Ross
Florian Bezdeka
Fredrik Gustafsson
Gratian Crisan
Guillaume Champagne
He Zhe
Hongxu Jia
Jack Mitchell
Jan Brzezanski
Jan Vermaete
Janne Kiiskila
Jan-Simon M=F6ller
Jason Wessel
Jate Sujjavanich
Joel Stanley
Joey Degges
Jonathan Richardson
Jon Mason
Joseph Reynolds
Jose Quaresma
Joshua Watt
Kai Kang
Kamel Bouhara
Kevin Hao
Khairul Rohaizzat Jamaluddin
Khasim Mohammed
Khem Raj
Klaus Heinrich Kiwi
Konrad Weihmann
Lee Chee Yang
Leon Anavi
Li Wang
Loic Domaigne
Luca Boccassi
Mans Rullgard
Manuel Leonhardt
Marek Vasut
Mark Hatle
Mark Jonas
Martin Jansa
Matt Hoosier
Matt Madison
Maxime Roussin-B=E9langer
Max Krummenacher
Meh Mbeh Ida Delphine
Mert Kirpici
Michael Halstead
Michael Ho
Michael Opdenacker
Michael Trensch
Mike Crowe
Mike Looijmans
Mikko Rapeli
Milan Shah
Ming Liu
Mingli Yu
Minjae Kim
Nathan Rossi
Naveen Saini
Nicolas Dechesne
Norbert Kaminski
Oleksandr Kravchuk
Oleksiy Obitotskyy
Ovidiu Panait
Paul Barker
Paul Eggleton
Paul Gortmaker
Peter Bergin
Peter Kjellerstedt
Petr Vorel
Purushottam Choudhary
Quentin Schulz
Randy Li
Randy MacLeod
Randy Witt
Ricardo Salveti
Richard Leitner
Richard Purdie
Robert P. J. Day
Robert Rosengren
Robert Yang
Ross Burton
Sakib Sajal
Saloni Jain
Sangeeta Jain
Saul Wold
Scott Branden
Scott Murray
Shachar Menashe
Sinan Kaya
Stacy Gaikovaia
Stefan Ghinea
Stefan Schmidt
Steve Sakoman
Suji Velupillai
Tanu Kaskinen
Teoh Jay Shen
Thomas Perrot
Thomas Viehweger
Tim Orling
Tomasz Dziendzielski
Tom Hochstein
Trevor Woerner
Tyler Hicks
Ulrich =D6lmann
Vin=EDcius Ossanes Aquino
Vivien Didelot
Vyacheslav Yurkov
Wang Mingyu
Wes Lindauer
Wonmin Jung
Yanfei Xu
Yann Dirson
Yann E. MORIN
Yi Fan Yu
Yi Zhao
Yoann Congal
Yongxin Liu
Zang Ruochen
Zheng Ruoqin
Zhixiong Chi



-----------------------------
New Features / Enhancements
-----------------------------
* Linux kernel 5.10, glibc 2.33 and ~280 other recipe upgrades
* New recipes: glslang, gst-devtools, libgit2, libmd, libportal, libssh2, n=
umactl, packagegroup-core-weston, python3-atomicwrites, python3-attrs, pyth=
on3-hypothesis, python3-importlib-metadata, python3-iniconfig, python3-more=
-itertools, python3-packaging, python3-pathlib2, python3-pluggy, python3-py=
, python3-pytest, python3-setuptools-scm, python3-sortedcontainers, python3=
-toml, python3-wcwidth, python3-zipp, shaderc, spirv-headers, spirv-tools, =
util-linux-libuuid, vulkan-samples, wayland-utils, xxhash, zstd
* Python 3.6 or newer is required to be on build host.
* New PACKAGECONFIG options in: binutils, coreutils, elfutils, epiphany, ff=
mpeg, gdb, gstreamer1.0-plugins-*, iproute2, json-glib, libomxil, openssl, =
p11-kit, parted, psplash, pulseaudio, qemu, socat, systemd, systemd-conf, w=
ebkitgtk
* New meta/conf/distro/include/lto.inc for enabling Link-Time Optimisation =
(LTO)
* Added support for elfutils debug info server (debuginfod)
* Added infrastructure to support u-boot SPL verified boot with optional se=
parate signing key
* Reduce poky-tiny size by over 15% by enabling size optimisation by defaul=
t, enabling section removal and tweaking busybox configuration
* Increased package granularity for dbus, sudo, iproute2, net-tools, procps=
, rpm, systemtap
* Added support for vhd/vhdx format in IMAGE_FSTYPES
* New extrausers "passwd-expire" command to force password change on first =
login
* buildhistory now records LICENSE
* Architecture-specific improvements:
  - New qemuriscv32 machine
  - New qemuppc64 machine
  - python-numpy: Add support for riscv32
  - arch-riscv: Enable qemu-usermode on rv32
  - grub: Add support for RISC-V
  - Enable systemd-boot and grub-efi for Arm targets
  - core-image-tiny-initramfs: add compatibility for aarch64
  - linux-yocto/cfg: qemuppc: set CONFIG_SCSI to '=3Dy'
  - linux-yocto/cfg: qemuarm64-gfx.cfg: add CONFIG_INPUT_UINPUT
  - Enabled bochs-display on qemuriscv* machines
  - go: Enable CGO and pie buildmode on rv64
  - tune-power9: Enable qemu-usermode
  - glibc: Build for power9 cpu when using powerpc64le tunes
  - tune-octeontx2.inc: Add tune for Marvell OCTEON TX2 core
  - tune-cortexa32: Add hard FPU
  - beaglebone-yocto: allow other virtual/bootloader
* SDK-related changes:
  - New ppc64le SDK machine
  - Extended to nativesdk: apt, ccache, diffstat, dpkg, grep, grub, rsync, =
sed, vim, which
  - New SDK_PS1 variable to allow custom prompt string for SDKs
  - New SDK_CUSTOM_TEMPLATECONF variable to enable custom templateconf.cfg =
in eSDK
  - do_populate_sdk can now run in parallel with do_rootfs
* Kernel related improvements:
  - linux-yocto*: add features/gpio/mockup.scc to KERNEL_FEATURES
  - kern-tools: non-gcc config support and option re-classification
  - kernel-module-split.bbclass: identify kernel modconf files as configura=
tion files for package upgrade purposes
  - kernel-devicetree: Introduce KERNEL_DTC_FLAGS to pass dtc flags
* u-boot fitImage related improvements:
  - Added support for Initramfs bundle and u-boot script
  - Support both KERNEL_DEVICETREE and EXTERNAL_KERNEL_DEVICETREE
  - Allow substituting mkimage command and add additional signing options
  - Added ability to sign individual images
  - Added variable for description
  - Allow kernel image compression to be disabled
* wic image creator improvements:
  - New "empty" plugin to create unformatted empty partitions
  - Warn if an ext filesystem affected by the Y2038 problem is used
  - Add workdir argument and option to preserve it for debugging
* runqemu improvements:
  - New "novga" option to disable VGA emulation
  - Added QB_GRAPHICS for QEMU video card type options
  - Added support for VHD/VHDX rootfs
* BitBake improvements:
  - Added Azure Storage (az://) fetcher
  - Added zstd support to unpack
  - hashserv: new -r/--readonly option to disable writes
  - hashserv: new -u/--upstream option to enable upstream server
  - hashserv: added Dockerfile under bitbake/contrib/ for building hash ser=
ver
  - Added REQUIRED_VERSION variable
  - PREFERRED_VERSION is now a warning instead of a note
  - bitbake-layers create-layer: added optional --layerid option
  - Added BB_DEFAULT_UMASK to avoid having to set umask flag everywhere
  - Show an appropriate error when a task name contains reserved keywords (=
e.g. _remove)
  - Print pseudo.log if a fakeroot task fails
* cve-check improvements:
  - New CVE_VERSION_SUFFIX variable to indicate suffix in versioning
  - Fixed handling of pre-release version numbers
  - Record layer in cve log
  - Added ability to include/exclude layers
  - cve-update-db-native: enable overriding the URL to allow local mirror u=
sage
* Wayland/weston related changes:
  - weston-init: Weston can now run using non-root user
  - weston-init: introduce WESTON_GROUP
  - core-image.bbclass: add a weston IMAGE_FEATURES feature, similar to x11=
-base
* Extension of package management is now possible from custom layers
* build-appliance: enabled VHD/VHDX generation
* buildstats: add functionality to collect build system stats
* base-files: better support for terminal resizing over serial connections
* Added /sysroot-only dir to install files to sysroot but not include in pa=
ckages
* Removed some extraneous files that were installed into the sysroot
* New python3targetconfig class to enable using python3-native but with tar=
get configuration
* isoimage-isohybrid.py: Support adding files/dirs
* distutils3: allow setup.py to be run from a different directory to ${S}
* busybox-inittab: implemented SYSVINIT_ENABLED_GETTYS and USE_VT
* busybox: Run mdev as daemon
* psplash (sysvinit): add textual updates
* libyaml: Enable static lib on native/nativesdk
* rootfs: add option to allow delayed postinsts on read-only rootfs
* npm.bbclass: make shrinkwrap file optional
* initrdscripts: init-install-efi.sh install extra files for ESP
* openssl: add support for mingw64 as target
* mpg123: Add support for FPU-less targets
* mesa: enable dri in native/nativesdk through gallium drivers
* security_flags.inc: Add same O<level> as in SELECTED_OPTIMIZATION
* systemd: add hostname fallback when polkit is not available
* Use canonical SPDX license names in image license manifests
* gcr: Add support for building without x11
* gstreamer1.0: add support for coretracers
* file: enable all built-in compression checkers
* linux-firmware: package firmware for Lontium lt9611uxc bridge, ath11k
* sstate-diff-machines.sh: support rpm, deb and tar package types in analys=
is
* systemd-serialgetty: Switch to TERM=3Dlinux for better xterm compatibilit=
y
* volatile-binds: add /srv to mount and install
* New oe-time-dd-test.sh script for testing build system I/O loading
* packagegroup-base: make hdparm and e2fsprogs RRECOMMENDS so they can be o=
ptional
* New QA check for native/nativesdk inherit order
* GitLab /archive/ URLs in SRC_URI now trigger a warning
* Added descriptive error message to getpwuid/getgrgid "uid/gid not found" =
KeyError
* Added additional checks for PSEUDO_IGNORE_PATHS validity
* Split sstate summary display into locally and network found artifacts
* report-error.bbclass: added layer and bitbake version info to error repor=
t
* perl: allow empty lines and comments in perl-rdepends.txt
* contrib/git-hooks: add a sendemail-validate example hook that adds FROM: =
lines to outgoing patch emails
* common-licenses: add BSD-3-Clause-Clear license
* common-licenses: Add GPL-3.0-with-bison-exception
* Renamed GPL-family common license files so that "-only" and "-or-later" i=
s explicitly specified to match with current SPDX.

--------------
Known Issues
--------------
N/A

-----------------
Recipe Licenses
-----------------

The following corrections have been made to the LICENSE values set by recip=
es:

* alsa-utils: GPLv2+ -> GPLv2 (as some parts of the source are GPLv2 only)
* busybox: included bzip2 source is the 1.0.4 version not 1.0.6, so tweak t=
he LICENSE value to reflect that
* libbsd: specify per-package licensing to reflect that BSD-4-Clause doesn'=
t cover contents of main package (only some documentation)
* libdnf: LGPLv2.1 -> LGPLv2.1+ to match with what is specified in header c=
omments
* openssh: expand "BSD" to specifically include BSD-2-Clause, BSD-3-Clause =
and BSD-4-Clause
* ptest-runner: GPLv2 -> GPLv2+ to match with what is specified in header c=
omments


------------------------
Migration instructions
------------------------

For details on changes that you might need to make when migrating to the Yo=
cto Project 3.3 release from previous releases, please see the following ma=
nual section:

http://www.yoctoproject.org/docs/3.3/ref-manual/ref-manual.html#moving-to-t=
he-yocto-project-3.3-release



----------------
Security Fixes
----------------

* binutils: CVE-2020-35448
* connman: CVE-2021-26675, CVE-2021-26676
* cups: CVE-2020-10001
* curl: CVE-2020-8284, CVE-2020-8285, CVE-2020-8286
* ffmpeg: CVE-2020-35964, CVE-2020-35965
* gdk-pixbuf: CVE-2020-29385
* git: CVE-2021-21300
* glibc: CVE-2019-25013, CVE-2020-27618, CVE-2020-29562, CVE-2020-29573, CV=
E-2021-27645
* grub: CVE-2014-4607, CVE-2020-10713, CVE-2020-14308, CVE-2020-14309, CVE-=
2020-14310, CVE-2020-14311, CVE-2020-14372, CVE-2020-15705, CVE-2020-15706,=
 CVE-2020-15707, CVE-2020-25632, CVE-2020-25647, CVE-2020-27749, CVE-2020-2=
7779, CVE-2021-3418, CVE-2021-20225, CVE-2021-20233
* libcroco: CVE-2020-12825
* libexif: CVE-2020-0198, CVE-2020-0452
* libproxy: CVE-2020-26154
* openssl: CVE-2020-1971, CVE-2021-3449, CVE-2021-3450
* p11-kit: CVE-2020-29361, CVE-2020-29362, CVE-2020-29363
* patch: CVE-2019-20633
* python3: CVE-2020-27619, CVE-2021-3177
* qemu: CVE-2020-24352, CVE-2020-25624, CVE-2020-25723, CVE-2020-28916, CVE=
-2020-29129, CVE-2020-29130, CVE-2021-20203
* ruby: CVE-2020-25613
* screen: CVE-2021-26937
* sudo: CVE-2021-3156
* u-boot: CVE-2021-27097, CVE-2021-27138
* wpa-supplicant: CVE-2021-0326, CVE-2021-27803



-----------------
Recipe Upgrades
-----------------

* acpica 20200717 -> 20210105
* adwaita-icon-theme 3.36.1 -> 3.34.3, 3.38.0
* alsa-lib 1.2.3.2 -> 1.2.4
* alsa-topology-conf 1.2.3 -> 1.2.4
* alsa-ucm-conf 1.2.3 -> 1.2.4
* alsa-utils 1.2.3 -> 1.2.4
* alsa-utils-scripts 1.2.3 -> 1.2.4
* apt 1.8.2.1 -> 2.2.2
* asciidoc 9.0.2 -> 9.1.0
* at 3.1.23 -> 3.2.1
* at-spi2-atk 2.34.2 -> 2.38.0
* at-spi2-core 2.36.1 -> 2.38.0
* attr 2.4.48 -> 2.5.1
* autoconf 2.69 -> 2.71
* automake 1.16.2 -> 1.16.3
* bash 5.0 -> 5.1
* bind 9.16.7 -> 9.16.12
* binutils 2.35.1 -> 2.36.1
* bison 3.7.2 -> 3.7.5
* bluez5 5.55 -> 5.56
* bmap-tools 3.5+gitX -> 3.6+gitX
* boost 1.74.0 -> 1.75.0
* btrfs-tools 5.7 -> 5.10.1
* busybox 1.32.0 -> 1.33.0
* busybox-inittab 1.32.0 -> 1.33.0
* cantarell-fonts 0.0.25 -> 0.301
* ccache 3.7.11 -> 4.2
* cmake 3.18.2 -> 3.19.5
* cmake-native 3.18.2 -> 3.19.5
* createrepo-c 0.16.0 -> 0.17.0
* cross-localedef-native 2.32 -> 2.33
* cryptodev-linux 1.11 -> 1.12
* cryptodev-module 1.11 -> 1.12
* cryptodev-tests 1.11 -> 1.12
* curl 7.72.0 -> 7.75.0
* debianutils 4.11.1 -> 4.11.2
* dhcpcd 9.2.0 -> 9.4.0
* diffoscope 160 -> 172
* diffstat 1.63 -> 1.64
* distcc 3.3.3 -> 3.3.5
* dmidecode 3.2 -> 3.3
* dnf 4.2.23 -> 4.6.0
* dos2unix 7.4.1 -> 7.4.2
* dosfstools 4.1 -> 4.2
* dpkg 1.20.5 -> 1.20.7.1
* dropbear 2020.80 -> 2020.81
* e2fsprogs 1.45.6 -> 1.46.1
* ed 1.16 -> 1.17
* elfutils 0.180 -> 0.183
* ell 0.33 -> 0.38
* enchant2 2.2.9 -> 2.2.15
* epiphany 3.36.4 -> 3.38.2
* ethtool 5.8 -> 5.10
* eudev 3.2.9 -> 3.2.10
* expat 2.2.9 -> 2.2.10
* ffmpeg 4.3.1 -> 4.3.2
* findutils 4.7.0 -> 4.8.0
* freetype 2.10.2 -> 2.10.4
* gcr 3.36.0 -> 3.38.1
* gdb 9.2 -> 10.1
* gdbm 1.18.1 -> 1.19
* ghostscript 9.52 -> 9.53.3
* git 2.28.0 -> 2.31.1
* glib-2.0 2.64.5 -> 2.66.7
* glib-networking 2.64.3 -> 2.66.0
* glibc 2.32 -> 2.33
* gmp 6.2.0 -> 6.2.1
* gnu-config 20200831+gitX -> 20210125+gitX
* gnupg 2.2.23 -> 2.2.27
* gnutls 3.6.14 -> 3.7.1
* go 1.15.8 -> 1.16.2
* gobject-introspection 1.64.1 -> 1.66.1
* gpgme 1.14.0 -> 1.15.1
* gptfdisk 1.0.5 -> 1.0.7
* grep 3.4 -> 3.6
* grub 2.04 -> 2.04+2.06~rc1
* grub-efi 2.04 -> 2.04+2.06~rc1
* gsettings-desktop-schemas 3.36.1 -> 3.38.0
* gst-examples 1.16.0 -> 1.18.4
* gstreamer1.0 1.16.3 -> 1.18.4
* gstreamer1.0-libav 1.16.3 -> 1.18.4
* gstreamer1.0-omx 1.16.3 -> 1.18.4
* gstreamer1.0-plugins-bad 1.16.3 -> 1.18.4
* gstreamer1.0-plugins-base 1.16.3 -> 1.18.4
* gstreamer1.0-plugins-good 1.16.3 -> 1.18.4
* gstreamer1.0-plugins-ugly 1.16.3 -> 1.18.4
* gstreamer1.0-python 1.16.3 -> 1.18.4
* gstreamer1.0-rtsp-server 1.16.3 -> 1.18.4
* gstreamer1.0-vaapi 1.16.3 -> 1.18.4
* gtk+3 3.24.22 -> 3.24.25
* gtk-doc 1.32 -> 1.33.2
* harfbuzz 2.7.2 -> 2.7.4
* hdparm 9.58 -> 9.60
* help2man 1.47.15 -> 1.48.2
* hwlatdetect 1.1 -> 1.10
* i2c-tools 4.1 -> 4.2
* icu 67.1 -> 68.2
* ifupdown 0.8.35 -> 0.8.36
* inetutils 1.9.4 -> 2.0
* init-system-helpers 1.58 -> 1.60
* iproute2 5.8.0 -> 5.11.0
* iptables 1.8.5 -> 1.8.7
* iso-codes 4.5.0 -> 4.6.0
* iw 5.8 -> 5.9
* jquery 3.5.1 -> 3.6.0
* json-glib 1.4.4 -> 1.6.2
* kbd 2.3.0 -> 2.4.0
* kea 1.7.10 -> 1.8.2
* kern-tools-native 0.2+gitX (df4390b18a...) -> 0.2+gitX (8f6aaab7f6...)
* kexec-tools 2.0.20 -> 2.0.21
* kmod 27 -> 28
* kmod-native 27 -> 28
* kmscube git (4660a7dca6...) -> git (9f63f359fa...)
* less 562 -> 563
* libaio 0.3.111 -> 0.3.112
* libarchive 3.4.3 -> 3.5.1
* libassuan 2.5.3 -> 2.5.4
* libbsd 0.10.0 -> 0.11.3
* libcap 2.43 -> 2.48
* libcap-ng 0.7.11 -> 0.8.2
* libdazzle 3.36.0 -> 3.38.0
* libdnf 0.48.0 -> 0.58.0
* libdrm 2.4.102 -> 2.4.104
* libedit 20191231-3.1 -> 20210216-3.1
* libepoxy 1.5.4 -> 1.5.5
* libevdev 1.9.1 -> 1.11.0
* libfm-extra 1.3.1 -> 1.3.2
* libgcrypt 1.8.6 -> 1.9.2
* libgloss 3.3.0 -> 4.1.0
* libgpg-error 1.39 -> 1.41
* libgudev 233 -> 234
* libhandy 0.0.13 -> 1.2.0
* libical 3.0.8 -> 3.0.9
* libinput 1.16.1 -> 1.16.4
* libjitterentropy 2.2.0 -> 3.0.1
* libjpeg-turbo 2.0.5 -> 2.0.6
* libksba 1.4.0 -> 1.5.0
* libmodulemd 2.9.4 -> 2.12.0
* libmpc 1.2.0 -> 1.2.1
* libpam 1.3.1 -> 1.5.1
* libpcap 1.9.1 -> 1.10.0
* libpcre2 10.35 -> 10.36
* libproxy 0.4.15 -> 0.4.17
* librepo 1.12.1 -> 1.13.0
* libsdl2 2.0.12 -> 2.0.14
* libsecret 0.20.3 -> 0.20.4
* libsolv 0.7.14 -> 0.7.17
* libsoup-2.4 2.70.0 -> 2.72.0
* libtirpc 1.2.6 -> 1.3.1
* libunwind 1.4.0 -> 1.5.0
* liburcu 0.12.1 -> 0.12.2
* liburi-perl 1.74 -> 5.08
* libusb1 1.0.23 -> 1.0.24
* libuv 1.39.0 -> 1.41.0
* libva 2.8.0 -> 2.10.0
* libva-initial 2.8.0 -> 2.10.0
* libva-utils 2.8.0 -> 2.10.0
* libwebp 1.1.0 -> 1.2.0
* libwpe 1.7.1 -> 1.8.0
* libx11 1.6.12 -> 1.7.0
* libxcrypt 4.4.17 -> 4.4.18
* libxcrypt-compat 4.4.17 -> 4.4.18
* libxkbcommon 0.10.0 -> 1.0.3
* libxt 1.2.0 -> 1.2.1
* lighttpd 1.4.55 -> 1.4.59
* linux-libc-headers 5.8 -> 5.10
* linux-yocto 5.4.103+gitX, 5.8.18+gitX -> 5.4.107+gitX, 5.10.25+gitX
* linux-yocto-dev 5.10-rc++gitX -> 5.12++gitX
* linux-yocto-rt 5.4.103+gitX, 5.8.18+gitX -> 5.4.107+gitX, 5.10.25+gitX
* linux-yocto-tiny 5.4.103+gitX, 5.8.18+gitX -> 5.4.107+gitX, 5.10.25+gitX
* llvm 10.0.1 -> 11.1.0
* log4cplus 2.0.5 -> 2.0.6
* logrotate 3.17.0 -> 3.18.0
* ltp 20200515 -> 20210121
* lttng-modules 2.12.3 -> 2.12.5
* lttng-tools 2.12.2 -> 2.12.3
* lttng-ust 2.12.0 -> 2.12.1
* lz4 1.9.2 -> 1.9.3
* lzip 1.21 -> 1.22
* man-db 2.9.3 -> 2.9.4
* man-pages 5.08 -> 5.10
* mc 4.8.25 -> 4.8.26
* mesa 20.1.8 -> 21.0.1
* mesa-gl 20.1.8 -> 21.0.1
* meson 0.55.1 -> 0.57.1
* mpg123 1.26.3 -> 1.26.4
* msmtp 1.8.12 -> 1.8.15
* mtools 4.0.24 -> 4.0.26
* musl 1.2.1+gitX -> 1.2.2+gitX
* nativesdk-meson 0.55.1 -> 0.57.1
* net-tools 1.60-20181103+gitX -> 2.10
* netbase 6.1 -> 6.2
* nettle 3.6 -> 3.7.1
* newlib 3.3.0 -> 4.1.0
* nfs-utils 2.5.1 -> 2.5.3
* ninja 1.10.1 -> 1.10.2
* opensbi 0.8 -> 0.9
* openssh 8.3p1 -> 8.5p1
* openssl 1.1.1j -> 1.1.1k
* opkg 0.4.3 -> 0.4.4
* orc 0.4.31 -> 0.4.32
* ovmf edk2-stable202005 -> edk2-stable202102
* pango 1.46.2 -> 1.48.2
* parted 3.3 -> 3.4
* pcmanfm 1.3.1 -> 1.3.2
* perl 5.32.0 -> 5.32.1
* piglit 1.0+gitrX (2a6a8f954d...) -> 1.0+gitrX (d4d9353b72...)
* pigz 2.4 -> 2.6
* pinentry 1.1.0 -> 1.1.1
* ppp 2.4.8 -> 2.4.9
* procps 3.3.16 -> 3.3.17
* psmisc 23.3 -> 23.4
* ptest-runner 2.4.0+gitX -> 2.4.1+gitX
* pulseaudio 13.0 -> 14.2
* puzzles 0.0+gitX (9aa7b7cdfb...) -> 0.0+gitX (84cb4c6701...)
* python3 3.8.5 -> 3.9.2
* python3-cython 0.29.21 -> 0.29.22
* python3-dbusmock 0.19 -> 0.22.0
* python3-git 3.1.7 -> 3.1.14
* python3-jinja2 2.11.2 -> 2.11.3
* python3-magic 0.4.18 -> 0.4.22
* python3-mako 1.1.3 -> 1.1.4
* python3-numpy 1.19.1 -> 1.20.1
* python3-pycairo 1.19.1 -> 1.20.0
* python3-pycryptodome 3.9.8 -> 3.10.1
* python3-pycryptodomex 3.9.8 -> 3.10.1
* python3-pyelftools 0.26 -> 0.27
* python3-pygments 2.6.1 -> 2.8.1
* python3-pygobject 3.36.1 -> 3.38.0
* python3-setuptools 49.6.0 -> 54.1.1
* python3-smmap 3.0.4 -> 4.0.0
* qemu 5.1.0 -> 5.2.0
* quota 4.05 -> 4.06
* readline 8.0 -> 8.1
* resolvconf 1.83 -> 1.87
* rng-tools 6.10 -> 6.11
* rpm 4.15.1 -> 4.16.1.2
* rt-tests 1.1 -> 1.10
* ruby 2.7.1 -> 3.0.0
* sbc 1.4 -> 1.5
* shared-mime-info 2.0 -> 2.1
* socat 1.7.3.4 -> 1.7.4.1
* sqlite3 3.33.0 -> 3.35.0
* strace 5.8 -> 5.11
* stress-ng 0.11.21 -> 0.12.05
* subversion 1.14.0 -> 1.14.1
* sudo 1.9.3 -> 1.9.6p1
* sysklogd 2.1.2 -> 2.2.2
* sysstat 12.4.0 -> 12.4.3
* systemd 246.9 -> 247.4
* systemd-boot 246.9 -> 247.4
* systemd-bootchart 233+gitX -> 234
* systemd-conf 246.9 -> 247.3
* systemtap 4.3 -> 4.4
* systemtap-native 4.3 -> 4.4
* systemtap-uprobes 4.3 -> 4.4
* sysvinit 2.97 -> 2.99
* taglib 1.11.1 -> 1.12
* tar 1.32 -> 1.34
* tcl 8.6.10 -> 8.6.11
* tiff 4.1.0 -> 4.2.0
* u-boot 2020.07 -> 2021.01
* u-boot-tools 2020.07 -> 2021.01
* usbutils 012 -> 013
* util-linux 2.36 -> 2.36.2
* util-macros 1.19.2 -> 1.19.3
* vala 0.48.9 -> 0.50.4
* vte 0.60.3 -> 0.62.2
* vulkan-headers 1.2.135.0 -> 1.2.170.0
* vulkan-loader 1.2.135.0 -> 1.2.170.0
* vulkan-tools 1.2.135.0 -> 1.2.170.0
* wayland 1.18.0 -> 1.19.0
* webkitgtk 2.28.4 -> 2.30.5
* wget 1.20.3 -> 1.21.1
* wpebackend-fdo 1.7.1 -> 1.8.0
* x264 r3011+gitX -> r3039+gitX
* xf86-video-vesa 2.4.0 -> 2.5.0
* xkbcomp 1.4.3 -> 1.4.4
* xkeyboard-config 2.30 -> 2.32
* xprop 1.2.4 -> 1.2.5
* xserver-xorg 1.20.9 -> 1.20.10
