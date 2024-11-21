Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27FB4D75BBF
	for <webhook@archiver.kernel.org>; Thu, 21 Nov 2024 06:19:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by mx.groups.io with SMTP id smtpd.web10.4955.1732169960165078218
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 22:19:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=FMXSUvml;
 spf=pass (domain: intel.com, ip: 192.198.163.8, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1732169960; x=1763705960;
  h=from:to:subject:date:message-id:mime-version;
  bh=zyG9bqUKkfAFkDiSZNws05XyBhoOf1YXCn4FZx28w9w=;
  b=FMXSUvmlUDVK8YiFVeZjfmPngFxIUkIf3xYA4K3SkQaG0KTPPMX0VOFV
   Ju78LC4uOB5lwkyDhF0JwhOFcSx44SzrA6lVXme2NM9nDLKg4D+ZFgtZ+
   w/JFiYwporuTEUCVgTej2LJ/o0mWF4lKiDTunC1r+sqq5py9pgYqUWs4c
   fQbawrWqRNithHp4m8Ax0IRGoW7U0D4rWe/dlooAglJHN5wV5vEYODTFW
   S+/J61cC50fGbRya68Bs4Lfk7/Zrz7seKCJRP1q0l71ast7cdT+IE5NLz
   Fy0ZTHSVQgp0bsNM1Xd3xZxN9A2HYJWfAUrIuI4VdeNhZGNDTj0IoMdHf
   w==;
X-CSE-ConnectionGUID: HMNswtV5TtCfIy4quHsIqQ==
X-CSE-MsgGUID: NC3UyV6VQzC39sJwJF3WnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49789091"
X-IronPort-AV: E=Sophos;i="6.12,171,1728975600"; 
   d="scan'208,217";a="49789091"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2024 22:19:20 -0800
X-CSE-ConnectionGUID: jGEgu0kdSrG+LDtQf+BpXQ==
X-CSE-MsgGUID: aqEncFr1QxWKoVZ+p+EPDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,171,1728975600"; 
   d="scan'208,217";a="90544529"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 20 Nov 2024 22:19:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 22:19:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 22:19:19 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 22:19:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yYNNzCwnofMsvm4objIVR7oZDTHpdnqP0zG4oxkLowqmNiOGeyIB4UFo5QmwpycpxZn+GT/ZKuLiP3kLaSupPCryqgHmhIEEsLag8eleCmLT1VHBf7bVOiIPUz5lYW4uTpG6Pt97F2d4vYyNbJVHXV8CnS8EdPuvzoQP1roGTeX1YFQQhQFhfWWuCRIrtOw6Zh6ytm//iXDOxMPBPyUnJ2bv+rE01H2tLNyxyWntwRa6B7QocN5EyKCmo+zHEhJ8V1jp01yHUuaezYcPc2eB7zLGONpaYV5OapR0Z9dk/6q/KDRlk9f/IfRrpKyyaOaTQSu/72fl4l6z5k/1wkJ4Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aB87GxbizZUn+P74NdccBRhF21UfkavY1dWK6izpg54=;
 b=QF9FlVgKXjWE1eusQEsBAQpHb16drHTe178PD/qbA7OFgnLtRY02LO82+Se1yY9mPinTVpawlEKBVPtBWGW8NKovEaq/ZSP+bDrZ/41SdF/uK9/kzPd2DUyi9XjqYfCe1UQ59S81ho1M+Ny7PvknvIneKIYOYp02wEhOLnoDInPjnlZ8qpxeC34xZST1g3JqliNPSMyTXQqtVyxSxUA9BMNjLLQDi5v4xwDgCchOeAgDTJvS32Q9X4FvrjxZyxh3t1mXat3e2yZdiuK0aPGAWdxHZG7t2aP93MVhw/0JjYFomGrNm2udPVtM4UCCkv8LKyfD+U8zv3r/HKZmh71MbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH2PR11MB8777.namprd11.prod.outlook.com (2603:10b6:610:283::6)
 by BY1PR11MB8079.namprd11.prod.outlook.com (2603:10b6:a03:52e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.14; Thu, 21 Nov
 2024 06:19:13 +0000
Received: from CH2PR11MB8777.namprd11.prod.outlook.com
 ([fe80::4fc0:d34e:5f55:8488]) by CH2PR11MB8777.namprd11.prod.outlook.com
 ([fe80::4fc0:d34e:5f55:8488%4]) with mapi id 15.20.8182.014; Thu, 21 Nov 2024
 06:19:13 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.5 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.5 is Released
Thread-Index: Ads73EcEBi0RPt02Rd2lcKA+5XRF1g==
Date: Thu, 21 Nov 2024 06:19:13 +0000
Message-ID: <CH2PR11MB8777F429272A90318593A3E1B9222@CH2PR11MB8777.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH2PR11MB8777:EE_|BY1PR11MB8079:EE_
x-ms-office365-filtering-correlation-id: fdad9bf7-d059-4460-6fdf-08dd09f46b72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?leWUcBVctwgTCOu2/myera2tB2WRuevB7ZH41t5IUnc03JcH8IprGE+dPk?=
 =?iso-8859-1?Q?nPE1SVbgdMjjQiUdXE5435kXW1hi5WNibVg2rbuNn8++YzBjpDyImAZNgZ?=
 =?iso-8859-1?Q?gXoNuExC9lPyIh+6MxnxHRXQpf3Z3GFsTwf2/XvgnqlgA4yE+Msb+vVrlD?=
 =?iso-8859-1?Q?LSuJSWet7sf4jgPkSidaCX643N9iiGY1vnaxIxAaIlgjE2/fJTsBeHAZz9?=
 =?iso-8859-1?Q?5p1xIKtalEkz/Ycil55AirSRen0Q+duMfq6dCQ1oYxPF+eRejJSExz59r8?=
 =?iso-8859-1?Q?Fd3dYppGOg1ZY9kB19AiHd5gkGwN016/bShpBRzDoY+O8ExFGdpPnVQOM1?=
 =?iso-8859-1?Q?LdIjo6YI8FdYWBHkuraV5tb4pFia84HdSAO3HLN4GKs0n1RbtdCDNf7cik?=
 =?iso-8859-1?Q?yao+gyU0WeiUQqZL6382jjpjXY1RWsdWw9SzIAHaIYrp/4fQuPrFo2dcaT?=
 =?iso-8859-1?Q?AnfXEWIxxeB8xOPOJTdCBD2rewr7crAm7J2lVzUqoGfXPHxG8fBumyi5aG?=
 =?iso-8859-1?Q?wNjzhwgtL6Eu5G3oi8tUMHyGx3rnzlZcWIGc5ZvsaaGSwjU0Iei1cixC9W?=
 =?iso-8859-1?Q?qwvuvZqVfXEwzVVKFORwG0bv2w7EZlb8rBnoW6626wV+6i6la1YjHKaMq+?=
 =?iso-8859-1?Q?k0T9KcjuY5JeJfLHInlenYkHSrLi9U/X1M9KSeFbC10/Nmbvq1lCW+tc76?=
 =?iso-8859-1?Q?mB4Hfove0iJ1zfwWNfNU+OS28o8dPetwYFu97tP9S+c7nmLr14Ql/V0Tko?=
 =?iso-8859-1?Q?gLpSsvst5mURbD+uSz79zptVyuy+f/vPKJ0ezN6oC5xmXXq02wSqq+ynLp?=
 =?iso-8859-1?Q?drR1HIrdx2TFUB5YUd8/xma3U3VZ/ITzDVWcPf3UG02tgQkABsLVh3DA9n?=
 =?iso-8859-1?Q?QTkaUa75yin3mN64BC1/uEE35f/bqMlfy4nWGpP0qeX4hwAvHUGW8Z+Xq8?=
 =?iso-8859-1?Q?MqoN2cd7eKD7xrVapFPYw89XavMsnyt7RXufJvqx6pqxf+TCxMKkYogqLP?=
 =?iso-8859-1?Q?8dq6jx4lbiCJ6mY3Ngq8Bo0AshxXfzk9m2/PhlGukSa02d+ix2ZhCkfaeO?=
 =?iso-8859-1?Q?6zmaurWMwyQPUCVTYAO+VQSeNWL8Bmoh11ah58mCaqx/K9L/xbaIzeO9Nu?=
 =?iso-8859-1?Q?VnE1MTAWRTTGWqEc0eknzc5DcVd4iv3EtU99jpt+iKwqVv7mfTFnKETcba?=
 =?iso-8859-1?Q?VXxw5tD9BhXsnXEjRd/C+PrqvZcWgfuoO9XIBdJZ+gSdGA2+ppzY0xu5B4?=
 =?iso-8859-1?Q?RYArK+cNZltJtgxd94ltQ2sW6c58x48TaCi7cwo+cZERH9j51tU4R/YRLK?=
 =?iso-8859-1?Q?LnVmVVSuPKkdLTIM5crG7Eb1KCiBnVEdE5fNAc7RaBctr8mMRJKke0bD6v?=
 =?iso-8859-1?Q?jRpQaMxF/+?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR11MB8777.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?EdGur7XNs69NdAntYHUh1q8P32sCccWWyU2g/copZrZOMab2GMXo5tz2jB?=
 =?iso-8859-1?Q?rhpkoqx/QxdFITo4LJz6wzFCu82bLKHWOo5boLoXe8f8K6a6OUh9l5ytN1?=
 =?iso-8859-1?Q?uCIj5vyc9tc2ynuebVpcmk2jojDOCmew8JxQF3OqQoEEQoo1K6D2istrdr?=
 =?iso-8859-1?Q?jIhqlsmxehW3wenQbuRrLDjcMYYpU5aoiU/d46tHbw8+WZ2FVaHEaOJlGO?=
 =?iso-8859-1?Q?Bc+bn/B0Dy2usfdM8EHzb8H+X9We+1g4yg8k0Y/e/YrsetpuJs1RStfVec?=
 =?iso-8859-1?Q?9Awuug0LfMOIf8B+estc429Y9FnrsSG5YKL/F/rz88kWacBn+hB+ZErcBh?=
 =?iso-8859-1?Q?qlcW/UqX0KTRpWNSecmur5+L3Vp0P02bvetwZHJnpubOavMshcOC7pswTt?=
 =?iso-8859-1?Q?qjBFbec9Dcn2dD/3ZcHG4M4GH14PVnTT/pdihzGozjFEUkHxazie1HgaxH?=
 =?iso-8859-1?Q?jHZ2sY/42op22udOFZ1kuQxvaU+L1nVHGHW0SzxEMuT0dice6M35Xdd0fj?=
 =?iso-8859-1?Q?ejYBM+Ca6Nwg7q4v3fp60h7n8zHqoTFWMs/07BDdXVkTP8EQ+X0xby8keY?=
 =?iso-8859-1?Q?phCWMHVQj2GkHsPqEMLrXzNdJVOO2ZxO4vM39Pu1yskTRgR96KY7l7J28U?=
 =?iso-8859-1?Q?cAINWXnDswY6D+qEe7o20l81oNx0RclfpVNx69DxWeJSmlH5XFETFP5kiR?=
 =?iso-8859-1?Q?TFsvcPA1MN5p+PJrcGQzXSXEKNyzugPwvG9x6yO7OGZVH/SHcFr0wJkt0i?=
 =?iso-8859-1?Q?opqe2+74nB7golW4Y8466YSlqf8nFsQ5n4K5VWFQ925DkzPKtedcI/TvzK?=
 =?iso-8859-1?Q?C3cQHZ9l9L+mLCv/4VUNR4OufmjPT++HfOLlTssNvEtJ6pquKwHo406iD2?=
 =?iso-8859-1?Q?mhC1C2+lJSuaXgdFpssd5Dxly9vVRmTdUf29/WkvZj/CfAlxrcbpgDKa+z?=
 =?iso-8859-1?Q?8o68VCNqtDk0l1+vx4+CDaw9Fnh4u0UB2s6koth/ZNc+mevqB9FieAZT1K?=
 =?iso-8859-1?Q?FScrZjbvF3mpXL/2M+rLyauutX62BuCque9+m9+SAZfX0qj3z0Pm9Drvbp?=
 =?iso-8859-1?Q?B8qRDn6fq5vYjYwS3c4oKgpuOfyHREAahLU6+huoEfFoC6n/9a/8LVIy3/?=
 =?iso-8859-1?Q?Q8kYkSxCKPjcnFSiLN2yFQ6T2j6vhhlNE4mA/U0Fj7FeAdNoeoJm3zwhmV?=
 =?iso-8859-1?Q?5ti9TO9NhEIWvsigYxWODVrH+mXNwKcrHkqAayhtvOij58roTTGagh4J/o?=
 =?iso-8859-1?Q?l5D7lpq/gv4/nZLE9Uwe56XaG+k3sra94oWy4bM0uYlScGxNcXWiDg1/ky?=
 =?iso-8859-1?Q?QXmPnmN329ZEIa2ljKAs50hTclucafL7v2YY8M3i1sNU/AaAkx3KLkozdX?=
 =?iso-8859-1?Q?wuEbaNR7An9KrlmDFHlYqpS/Emkc3GngMTlIttd0wkFLTBYWG2oy+Y733P?=
 =?iso-8859-1?Q?ukt4kazBYEPvQk1C65HceH1w6M7LzFddmEL2L82Z+HtO7hC8DFyjtCSRR3?=
 =?iso-8859-1?Q?2ksXZVQuM3CFVqNoGxLv5xWNotGNrY5Zo8gIzPLZL6UHFJcqrZKSErMVe6?=
 =?iso-8859-1?Q?u1U0sAyHu8V/kWqvByncMpIU5jGWsfj/rRHz2S42xrGkyMot0SYKMfHBbh?=
 =?iso-8859-1?Q?PcOItCmiTb/GoD194LHX1jofaqNgwyPOJ8?=
Content-Type: multipart/alternative;
	boundary="_000_CH2PR11MB8777F429272A90318593A3E1B9222CH2PR11MB8777namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR11MB8777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdad9bf7-d059-4460-6fdf-08dd09f46b72
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2024 06:19:13.5683
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jrks7G78mRG2zUgticKV9DeA+m/ysO3toLi5HLvJp2XziwTnEzfLied7zPNyfH912OWnteG4NuZfbV3gCWAVcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8079
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Nov 2024 06:19:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64321

--_000_CH2PR11MB8777F429272A90318593A3E1B9222CH2PR11MB8777namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.5 Release is now available=
 for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/poky-dce4163d4=
2f7036ea216b52b9135968d51bec4c1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.5/poky-dce4163d42f7036ea216=
b52b9135968d51bec4c1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/testreport.txt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


- --------------------------
yocto-5.0.5 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.5
Git Revision: dce4163d42f7036ea216b52b9135968d51bec4c1
Release Artefact: poky-dce4163d42f7036ea216b52b9135968d51bec4c1
sha: ad35a965a284490a962f6854ace536b8795f96514e14bf5c79f91f6d76ac25d3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/poky-dce4163d4=
2f7036ea216b52b9135968d51bec4c1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.5/poky-dce4163d42f7036ea216=
b52b9135968d51bec4c1.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.5
Git Revision: a051a066da2874b95680d0353dfa18c1d56b2670
Release Artefact: oecore-a051a066da2874b95680d0353dfa18c1d56b2670
sha: 16d252aade00161ade2692f41b2da3effeb1f41816a66db843bb1c5495125e93
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/oecore-a051a06=
6da2874b95680d0353dfa18c1d56b2670.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.5/oecore-a051a066da2874b956=
80d0353dfa18c1d56b2670.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.5
Git Revision: acbba477893ef87388effc4679b7f40ee49fc852
Release Artefact: meta-mingw-acbba477893ef87388effc4679b7f40ee49fc852
sha: 3b7c2f475dad5130bace652b150367f587d44b391218b1364a8bbc430b48c54c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/meta-mingw-acb=
ba477893ef87388effc4679b7f40ee49fc852.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.5/meta-mingw-acbba477893ef8=
7388effc4679b7f40ee49fc852.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.5
Git Revision: 377eba2361850adfb8ce7e761ef9c76be287f88c
Release Artefact: bitbake-377eba2361850adfb8ce7e761ef9c76be287f88c
sha: 4a5a35098eec719bbb879706d50e552a2b709295db4055c8050ae7dda1eb2994
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/bitbake-377eba=
2361850adfb8ce7e761ef9c76be287f88c.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.5/bitbake-377eba2361850adfb=
8ce7e761ef9c76be287f88c.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.5
Git Revision: e882cb3e5816d081eb05cb83488f286cca70e0c6


- ---------------
Contributors
- ---------------
Aditya Tayade
Adrian Freihofer
Aleksandar Nikolic
Alexander Kanavin
Antonin Godard
Anuj Mittal
Bruce Ashfield
Claus Stovgaard
Deepesh Varatharajan
Deepthi Hemraj
Hiago De Franco
Hitendra Prajapati
Jaeyoon Jung
Jiaying Song
Jonas Gorski
Jose Quaresma
Joshua Watt
Julien Stephan
J=F6rg Sommer
Khem Raj
Konrad Weihmann
Lee Chee Yang
Louis Rannou
Macpaul Lin
Martin Jansa
Paul Barker
Paul Gerber
Peter Kjellerstedt
Peter Marko
Purushottam Choudhary
Richard Purdie
Robert Yang
Rohini Sangam
Ross Burton
Sergei Zhmylev
Shunsuke Tokumoto
Steve Sakoman
Teresa Remmet
Victor Kamensky
Vijay Anusuri
Wang Mingyu
Yi Zhao
Yogita Urade
Zahir Hussain


- ---------------
Known Issues
- ---------------
oeqa/runtime: the beaglebone-yocto target fails the parselogs runtime test =
due to unexpected kernel error messages in the log (see bug 15624 on Bugzil=
la).



- ---------------
Security Fixes
- ---------------
cups: Fix CVE-2024-47175
curl: Fix CVE-2024-8096
gnupg: Ignore CVE-2022-3219 (wont-fix)
libarchive: fix CVE-2024-48957 CVE-2024-48958
openssh: Ignore CVE-2023-51767 (wont-fix)
openssl: Fix CVE-2024-9143
ruby: Fix CVE-2024-41123 CVE-2024-41496
rust-llvm: Fix CVE-2024-0151
rust, libstd-rs: Ignore CVE-2024-43402
wpa-supplicant: Patch SAE H2E and incomplete downgrade protection for group=
 negotiation
wpa-supplicant: Fix CVE-2024-3596
wpa-supplicant: Ignore CVE-2024-5290


- ---------------
Fixes
- ---------------
binutils: stable 2.42 branch updates
bitbake.conf: Add truncate to HOSTTOOLS
bitbake: asyncrpc: Use client timeout for websocket open timeout
bitbake: bitbake: doc/user-manual: Update the BB_HASHSERVE_UPSTREAM
bitbake: gitsm: Add call_process_submodules() to remove duplicated code
bitbake: gitsm: Remove downloads/tmpdir when failed
bitbake: tests/fetch: Use our own mirror of mobile-broadband-provider to de=
couple from gnome gitlab
bitbake: tests/fetch: Use our own mirror of sysprof to decouple from gnome =
gitlab
build-appliance-image: Update to scarthgap head revision
cryptodev: upgrade to 1.14
cve-check: add support for cvss v4.0
cve_check: Use a local copy of the database during builds
dev-manual: add bblock documentation
documentation: conf.py: rename :cve: role to :cve_nist:
documentation: README: add instruction to run Vale on a subset
documentation: Makefile: add SPHINXLINTDOCS to specify subset to sphinx-lin=
t
e2fsprogs: removed 'sed -u' option
ffmpeg: Add "libswresample libavcodec" to CVE_PRODUCT
glibc: stable 2.39 branch updates.
go: upgrade to 1.22.8
icu: update patch Upstream-Status
image.bbclass: Drop support for ImageQAFailed exceptions in image_qa
image_qa: fix error handling
install-buildtools: fix "test installation" step
install-buildtools: remove md5 checksum validation
install-buildtools: update base-url, release and installer version
kernel-devsrc: remove 64 bit vdso cmd files
kernel-fitimage: fix external dtb check
kernel-fitimage: fix intentation
lib/oe/package-manager: skip processing installed-pkgs with empty globs
liba52: fix do_fetch error
libpcre2: Update base uri PhilipHazel -> PCRE2Project
libsdl2: Fix non-deterministic configure option for libsamplerate
license: Fix directory layout issues
linux-firmware: upgrade to 20240909
linux-yocto/6.6: fix genericarm64 config warning
linux-yocto/6.6: upgrade to v6.6.54
lsb-release: fix Distro Codename shell escaping
makedevs: Fix issue when rootdir of / is given
makedevs: Fix matching uid/gid
meta-ide-support: Mark recipe as MACHINE-specific
meta-world-pkgdata: Inherit nopackages
migration-guide: add release notes for 4.0.21, 4.0.22 and 5.0.4
migration-guide: release-notes-4.0: update BB_HASHSERVE_UPSTREAM for new in=
frastructure
migration-guide: release-notes-5.0.rst: update NO_OUTPUT -> NO_COLOR
orc: upgrade to 0.4.40
overview-manual: concepts: add details on package splitting
poky.conf: bump version for 5.0.5
populate_sdk_base: inherit nopackages
ptest-runner: upgrade to 2.4.5
pulseaudio: correct freedesktop.org -> www.freedesktop.org SRC_URI
desktop-file-utils: correct freedesktop.org -> www.freedesktop.org SRC_URI
python3-lxml: upgrade to v5.0.2
python3-setuptools: Add "python:setuptools" to CVE_PRODUCT
recipes-bsp: usbutils: Fix usb-devices command using busybox
ref-manual: add missing CVE_CHECK manifest variables
ref-manual: add missing EXTERNAL_KERNEL_DEVICETREE variable
ref-manual: add missing OPKGBUILDCMD variable
ref-manual: add missing TESTIMAGE_FAILED_QA_ARTIFACTS
ref-manual: devtool-reference: document missing commands
ref-manual: devtool-reference: refresh example outputs
ref-manual: faq: add q&a on class appends
ref-manual: introduce CVE_CHECK_REPORT_PATCHED variable
ref-manual: merge patch-status-* to patch-status
ref-manual: release-process: add a reference to the doc's release
ref-manual: release-process: refresh the current LTS releases
ref-manual: release-process: update releases.svg
ref-manual: release-process: update releases.svg with month after "Current"
ref-manual: structure.rst: document missing tmp/ dirs
ref-manual: variables: add SIGGEN_LOCKEDSIGS* variables
rootfs-postcommands.bbclass: make opkg status reproducible
rpm: fix expansion of %_libdir in macros
ruby: upgrade to 3.3.5
runqemu: Fix detection of -serial parameter
runqemu: keep generating tap devices
scripts/install-buildtools: Update to 5.0.3
sqlite3: upgrade to 3.45.3
styles: vocabularies: Yocto: add sstate
systemtap: fix systemtap-native build error on Fedora 40
sysvinit: take release tarballs from github
testexport: fallback for empty IMAGE_LINK_NAME
testimage: fallback for empty IMAGE_LINK_NAME
uboot-sign: fix counters in do_uboot_assemble_fitimage
vim: upgrade to 9.1.0764
virglrenderer: Add patch to fix -int-conversion build issue
webkitgtk: upgrade to 2.44.3
weston: backport patch to allow neatvnc < v0.9.0
wpa-supplicant: Patch security advisory 2024-2
xserver-xorg: upgrade to 21.1.14


--_000_CH2PR11MB8777F429272A90318593A3E1B9222CH2PR11MB8777namp_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 5.0.5 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.0.5/poky-dce4163d42f7036ea=
216b52b9135968d51bec4c1.tar.bz2">http://downloads.yoctoproject.org/releases=
/yocto/yocto-5.0.5/poky-dce4163d42f7036ea216b52b9135968d51bec4c1.tar.bz2</a=
><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://m=
irrors.kernel.org/yocto/yocto/yocto-5.0.5/poky-dce4163d42f7036ea216b52b9135=
968d51bec4c1.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yocto-5.0.5/pok=
y-dce4163d42f7036ea216b52b9135968d51bec4c1.tar.bz2</a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.0.5/RELEASENOTES">http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.0.5/RELEASENOTES</a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.0.5/testreport.txt">http:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.0.5/testreport.txt</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
- --------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.5 Release=
 Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.5<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: dce41=
63d42f7036ea216b52b9135968d51bec4c1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-dce4163d42f7036ea216b52b9135968d51bec4c1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ad35a965a28449=
0a962f6854ace536b8795f96514e14bf5c79f91f6d76ac25d3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.5/poky-dce4163d42f7036ea216b52b9135=
968d51bec4c1.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.5/poky-dce4163d42f7036ea216b52b9135968d51bec4c=
1.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.5<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: a051a=
066da2874b95680d0353dfa18c1d56b2670<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-a051a066da2874b95680d0353dfa18c1d56b2670<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 16d252aade0016=
1ade2692f41b2da3effeb1f41816a66db843bb1c5495125e93<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.5/oecore-a051a066da2874b95680d0353d=
fa18c1d56b2670.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.5/oecore-a051a066da2874b95680d0353dfa18c1d56b2=
670.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.5<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: acbba=
477893ef87388effc4679b7f40ee49fc852<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-acbba477893ef87388effc4679b7f40ee49fc852<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 3b7c2f475dad51=
30bace652b150367f587d44b391218b1364a8bbc430b48c54c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.5/meta-mingw-acbba477893ef87388effc=
4679b7f40ee49fc852.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.5/meta-mingw-acbba477893ef87388effc4679b7f40ee=
49fc852.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.5<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 377eb=
a2361850adfb8ce7e761ef9c76be287f88c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-377eba2361850adfb8ce7e761ef9c76be287f88c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 4a5a35098eec71=
9bbb879706d50e552a2b709295db4055c8050ae7dda1eb2994<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.5/bitbake-377eba2361850adfb8ce7e761=
ef9c76be287f88c.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.5/bitbake-377eba2361850adfb8ce7e761ef9c76be287=
f88c.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.5<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: e882c=
b3e5816d081eb05cb83488f286cca70e0c6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aditya Tayade<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adrian Freihofer<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Anuj Mittal<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Claus Stovgaard<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepthi Hemraj<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hiago De Franco<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jaeyoon Jung<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jonas Gorski<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jose Quaresma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joshua Watt<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Julien Stephan<br>
J=F6rg Sommer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Konrad Weihmann<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Louis Rannou<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Macpaul Lin<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Paul Barker<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Paul Gerber<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Kjellerstedt<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Purushottam Choudha=
ry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rohini Sangam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sergei Zhmylev<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Shunsuke Tokumoto<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Teresa Remmet<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Victor Kamensky<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zahir Hussain<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/runtime: the b=
eaglebone-yocto target fails the parselogs runtime test due to unexpected k=
ernel error messages in the log (see bug 15624 on Bugzilla).<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cups: Fix CVE-2024-=
47175<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2024-=
8096<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: Ignore CVE-2=
022-3219 (wont-fix)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: fix CVE=
-2024-48957 CVE-2024-48958<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Ignore CVE=
-2023-51767 (wont-fix)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
24-9143<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2024-=
41123 CVE-2024-41496<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-llvm: Fix CVE-=
2024-0151<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust, libstd-rs: Ig=
nore CVE-2024-43402<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Pat=
ch SAE H2E and incomplete downgrade protection for group negotiation<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Fix=
 CVE-2024-3596<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Ign=
ore CVE-2024-5290<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: stable 2.=
42 branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake.conf: Add t=
runcate to HOSTTOOLS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: asyncrpc: =
Use client timeout for websocket open timeout<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bitbake: d=
oc/user-manual: Update the BB_HASHSERVE_UPSTREAM<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: gitsm: Add=
 call_process_submodules() to remove duplicated code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: gitsm: Rem=
ove downloads/tmpdir when failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Use our own mirror of mobile-broadband-provider to decouple from gnome g=
itlab<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Use our own mirror of sysprof to decouple from gnome gitlab<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cryptodev: upgrade =
to 1.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: add supp=
ort for cvss v4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve_check: Use a lo=
cal copy of the database during builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: add bbl=
ock documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: conf=
.py: rename :cve: role to :cve_nist:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: READ=
ME: add instruction to run Vale on a subset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Make=
file: add SPHINXLINTDOCS to specify subset to sphinx-lint<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">e2fsprogs: removed =
'sed -u' option<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Add &quot;l=
ibswresample libavcodec&quot; to CVE_PRODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.39 =
branch updates.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: upgrade to 1.22=
.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: update patch U=
pstream-Status<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">image.bbclass: Drop=
 support for ImageQAFailed exceptions in image_qa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">image_qa: fix error=
 handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">install-buildtools:=
 fix &quot;test installation&quot; step<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">install-buildtools:=
 remove md5 checksum validation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">install-buildtools:=
 update base-url, release and installer version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kernel-devsrc: remo=
ve 64 bit vdso cmd files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kernel-fitimage: fi=
x external dtb check<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kernel-fitimage: fi=
x intentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lib/oe/package-mana=
ger: skip processing installed-pkgs with empty globs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">liba52: fix do_fetc=
h error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpcre2: Update ba=
se uri PhilipHazel -&gt; PCRE2Project<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsdl2: Fix non-de=
terministic configure option for libsamplerate<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">license: Fix direct=
ory layout issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-firmware: upg=
rade to 20240909<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: fi=
x genericarm64 config warning<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
grade to v6.6.54<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lsb-release: fix Di=
stro Codename shell escaping<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">makedevs: Fix issue=
 when rootdir of / is given<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">makedevs: Fix match=
ing uid/gid<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-ide-support: M=
ark recipe as MACHINE-specific<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-world-pkgdata:=
 Inherit nopackages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guide: ad=
d release notes for 4.0.21, 4.0.22 and 5.0.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guide: re=
lease-notes-4.0: update BB_HASHSERVE_UPSTREAM for new infrastructure<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guide: re=
lease-notes-5.0.rst: update NO_OUTPUT -&gt; NO_COLOR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: upgrade to 0.4=
.40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual: co=
ncepts: add details on package splitting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">populate_sdk_base: =
inherit nopackages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ptest-runner: upgra=
de to 2.4.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: correct=
 freedesktop.org -&gt; www.freedesktop.org SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">desktop-file-utils:=
 correct freedesktop.org -&gt; www.freedesktop.org SRC_URI<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-lxml: upgra=
de to v5.0.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools:=
 Add &quot;python:setuptools&quot; to CVE_PRODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">recipes-bsp: usbuti=
ls: Fix usb-devices command using busybox<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing CVE_CHECK manifest variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing EXTERNAL_KERNEL_DEVICETREE variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing OPKGBUILDCMD variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing TESTIMAGE_FAILED_QA_ARTIFACTS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: document missing commands<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: refresh example outputs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: faq: ad=
d q&amp;a on class appends<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: introdu=
ce CVE_CHECK_REPORT_PATCHED variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: merge p=
atch-status-* to patch-status<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: add a reference to the doc's release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: refresh the current LTS releases<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: update releases.svg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: update releases.svg with month after &quot;Current&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: structu=
re.rst: document missing tmp/ dirs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: variabl=
es: add SIGGEN_LOCKEDSIGS* variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rootfs-postcommands=
.bbclass: make opkg status reproducible<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rpm: fix expansion =
of %_libdir in macros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: upgrade to 3.=
3.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">runqemu: Fix detect=
ion of -serial parameter<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">runqemu: keep gener=
ating tap devices<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: upgrade to=
 3.45.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">styles: vocabularie=
s: Yocto: add sstate<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemtap: fix syst=
emtap-native build error on Fedora 40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sysvinit: take rele=
ase tarballs from github<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">testexport: fallbac=
k for empty IMAGE_LINK_NAME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">testimage: fallback=
 for empty IMAGE_LINK_NAME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">uboot-sign: fix cou=
nters in do_uboot_assemble_fitimage<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: upgrade to 9.1=
.0764<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">virglrenderer: Add =
patch to fix -int-conversion build issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: upgrade =
to 2.44.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">weston: backport pa=
tch to allow neatvnc &lt; v0.9.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Pat=
ch security advisory 2024-2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: upgra=
de to 21.1.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_CH2PR11MB8777F429272A90318593A3E1B9222CH2PR11MB8777namp_--

