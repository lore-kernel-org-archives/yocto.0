Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D8ECF8DFFF
	for <webhook@archiver.kernel.org>; Sat, 18 Apr 2026 05:49:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.61720.1776491381888262363
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Apr 2026 22:49:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=PpBXGaIG;
 spf=pass (domain: intel.com, ip: 192.198.163.8, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776491381; x=1808027381;
  h=from:to:subject:date:message-id:mime-version;
  bh=LqmhiRRGo8TYltqEccqJKwiUFjDbthSyzC9KjuEaULU=;
  b=PpBXGaIGPG+hzHrBRDZf2TBFELwL3v3OVm4tbshyLcyKN4GHO0ZnOKth
   rvwg6t769gFebBoMW/UJ8X0Ds/TGCEEEK/Eqbw4/mDYsaaEo97HhmzFJy
   9PgjKOGJjLuSGOPNFL+24KiUOjJYJPY6i5lyQ38GeHwgN2OSL3eCvYVGd
   e/RdwSZCoTUQBSuMSLeXbHhmtfMtty1md5uBvhDju/ZkpDgMsDJnQF+so
   vebxjH8Hz4Ore542/VMmXxZLd+YcoyASiHyQRSFJEKQY2gBIIxi9lEJlP
   9uZvrrInrRD+2Spm4msCO6IwcRO6J2RZ1sfjwyqBlvEvHcKPSSlmsLsQW
   g==;
X-CSE-ConnectionGUID: szuwl7srTO2C2odFAaH/6Q==
X-CSE-MsgGUID: VWnSJK4wRVe6O4ADTCs5GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="95062815"
X-IronPort-AV: E=Sophos;i="6.23,185,1770624000"; 
   d="scan'208,217";a="95062815"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2026 22:49:41 -0700
X-CSE-ConnectionGUID: gn1LzDknTi+gWuu/9O4DQw==
X-CSE-MsgGUID: 8jCQl+1jRPO7f7wbvOqhDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,185,1770624000"; 
   d="scan'208,217";a="224704297"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2026 22:49:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 22:49:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 22:49:40 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 22:49:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iYWfmqC8Ig1FzjmRiaVkxRnhJI1VCK/wn3HzpiCER7pBbqnOlwWWhMLlwsbIpnXtqw0nLIHthxpIp2V2J7AnKcOsxkhigHWZ3zkJ3OPcfufWEEQIZewTsk8wh8qcUv1fxEBJ+1282MZnq8d/Swm2BLiLJC2pfuK6YJhWiPKylyOCNaKzbA3mXkzwdezWmyerkgN1q9Ss5MdXs2WfgmDtUpFmEzFbukNADayaPvaMJRBrANK/Gm6bP5ALs+DIfc4y/YE6M+BoiI2AAuRAANrzZbs5IEUiuNsuVs5r1Pxf7vWjcxBHIZtApqPjP4WW17zZzy+HZOcgslJsYo6M2rzJJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LqmhiRRGo8TYltqEccqJKwiUFjDbthSyzC9KjuEaULU=;
 b=h3a0eBlaE9yc/OWNgpJRQqrvDnGdowhW0gpSNLwzjgXCWhVTzVjbuzuimbybYLXs24oVad3sjCch7dNY3UDXl1O7UJWKxnh4/7hStKJ4nBiASf4BE3GWO/CNdOL6FZsC0C9W/9wpoPGD9QJEbxV7Of9IYCSqErB8e+syBzbXP2Wkxm2r4MCtvy6ao6uAJFKbhekprYlGQN8MyyD4A/75Z1ctXvwvFP1daK53sL4r3dfIWFgmfjfU/jOt4WWcJHbNErvDJZzGpiLgaUfSNxBO1+Mt180A1nNmi6QOn/aW8iJukC68xhQXRPiGnA4kc80Ns7Tq/HJGaEqiLxugHFsNXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA1PR11MB7086.namprd11.prod.outlook.com (2603:10b6:806:2b3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.8; Sat, 18 Apr
 2026 05:49:31 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9818.023; Sat, 18 Apr 2026
 05:49:31 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 6.0 (yocto-6.0_M3)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 6.0 (yocto-6.0_M3)
  Now Available
Thread-Index: AQHczvUqFp8szbrFX0uEHyFklzwxYA==
Date: Sat, 18 Apr 2026 05:49:31 +0000
Message-ID: <BL4PR11MB87978703245DEDCFB76D7DF1B9212@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA1PR11MB7086:EE_
x-ms-office365-filtering-correlation-id: 86407b5f-10e2-41c3-4660-08de9d0e4320
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|366016|376014|1800799024|38070700021|56012099003|18002099003|8096899003;
x-microsoft-antispam-message-info: PS7yFeeki0xtKvQ3Y1ZLGw3aYZRulVd9ssWO+pUQEVrXE4OsOxKA9FyhWoiWqaG2hSxgl8lbT1FYZQ1Pc5PlE4QJlhXJxCtkKL3MioAEcyRo1V9TXXxl+qF3aPIRGN+uD7nJsURIlYvP/RLfsxxDt4qRnbhKlMX8ztwPik9GWs4Iv7qljW0xIi+11jGHC9PQNTSliSZra7xTK9mBcT0DPL4tyKfv+ZCBRfFi0E+d/C1sTIZf/MM66gp19TpBSfAeQU9VgTzgD3J/MhUVNU5kjEr/EvosN3DVUCbKq8Ra1Y95Wh6FCTiDuQmIBWDuBEJOizlbcjG/qAmA0t0Ln6jG0HHSoG5YgShhhZyL9slkTXI0/xUWH3RtSnfUWVPYGm6lwzkVdFTq6CPv2y4n2Yg61SNWZ7iX1dOVbkuCfaTXvCluSbqV30K9BGdGLbhGW1isoyxpm4JmYhR7qnADrJL55F7/NJYjBwfM2zz4P0endcZqMd9hDcH9x5QrRhTCCZWe+1WFsb5mKlq7aOvS6AYeMKokSoIWaxgoHJw7mgniqMzF4D9l4N8V1yn8tqD+JHkQqwzodk6wHyO7G2MMttTl3QC4DPxOhHTN7A3mgSjxV6rTdw3Mlo3IOVo1ToyI6wFDscWikgI3kZ6jGydhjhO7vCVhlRYEbIFAhACSzsiMx05kSQnEW5JSQknePeqvT+wIVC/q90L3LLa0+me6szK+kKCNk+u+5edjGYyr/2RCm8+jZNdDKG4MTX5hD67ztDhL
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021)(56012099003)(18002099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?YIiTrS1berl4h5OAe3GG+lCUSanZVFVXayI4X5Sy2J6GqYzDFbcqPgKq6J?=
 =?iso-8859-1?Q?pgGBbRFV60PBr5Qs8TGU3056eiiXcej+iQ3J6aXUBudDPQFSOdN9QnFFW3?=
 =?iso-8859-1?Q?xxvOFeSC9OY2xqRitZNT9VfBQqmOikCuN6UlSPZqRRdpngRtu689dwhs2C?=
 =?iso-8859-1?Q?UhACU0vuLyx5t3GT24rfJgTmTjwrsK5PB8cwsZ4CB9x2If4rpGOB+YKNNt?=
 =?iso-8859-1?Q?KHq12LSs4WqKGv+DEM++71PLr3HNL0A8HLHbI+u28eJLn1UMOrVX8hb2QE?=
 =?iso-8859-1?Q?RR/tEaJpe6mtWO/xjhj05Ls2k4WwVJ565Eun7+j5JptHrb7XOUOwPH+q8X?=
 =?iso-8859-1?Q?7Xda0y+i1NdfvJlb6S+NwqUh3gnopVqymQ4u9BbiqJ3iJodXr/UzHh7lXj?=
 =?iso-8859-1?Q?lfOou3QzondpxL5dwAl/QUc8JRsszjFaoLced5pqilF0FV4VP6M4Tw9nLt?=
 =?iso-8859-1?Q?AQtFQsN347Ikc8AeHOzSI+9NWI9zrXyKsT5Fe0VMoKTibBDi14Df56OMXe?=
 =?iso-8859-1?Q?K5SNKuUoordmOZjs3ap2inWQRzPmwR3RZGe6GWasiR7YEtxQkGlQJaBoU4?=
 =?iso-8859-1?Q?uzxEqFIf0GxIsM4hHxuCjzRD/WOj1vPEZ09+rYRyRbQCabx8Kb9VrSHZTM?=
 =?iso-8859-1?Q?ksHsPamexrKP1VbHB4NN2rsIEE4Bj91ywsbpepV0dg4ivk6BdAowrGuFzJ?=
 =?iso-8859-1?Q?4IYxPtU0gxSJEPatgPbP2jQQwGFy9stUSygbVFFW7c2GrpnO7GxOA7R39J?=
 =?iso-8859-1?Q?4y1SN5S7F+ehMaTi8XE2l3OidSWnI4mV2xx/UJFLGwD7qfIAYoVDFsuxUC?=
 =?iso-8859-1?Q?bvUCLVdlmKxtCjxz0+bDSJQNXDqpwjgfMzDJdU+vmuFlo8XALzc/emeGIN?=
 =?iso-8859-1?Q?DpzyD18V3H9qS0S2G0ntlQqaLWtlwh6wjpwvVM2tjMlYX0514TrqRKP7hq?=
 =?iso-8859-1?Q?1vK5xO6LQepfbfjhaoL939/C+qiYZbdp6fSNJTXD0FOmS5MyU/jyxkhLw3?=
 =?iso-8859-1?Q?hL2k9fmc6taLVURAz90PrJAQaazVpMu+HInDVz0chgY9Uwdd/yBgbN3K7B?=
 =?iso-8859-1?Q?dahOPzprrWep8vjF7z44pVvK3vWDHovN29mn3y6lEwlGrOcZUUcpVB78TI?=
 =?iso-8859-1?Q?V7MCCEIkLKhr7kFglu9Wemn1yKnY3qXqomIRtJ1DBblqlzchCidclbPuMi?=
 =?iso-8859-1?Q?i4mwEiPp4ol1kfjXuDky4i1BCOk9E7X0xtxsEAnKqkgovfGPRri1tis4ZK?=
 =?iso-8859-1?Q?m6+nVQ/1L3zXhZQPJPhHoK0MlOsUSiFwRbHCxt9bfjoV5nG738Q8k0ouXZ?=
 =?iso-8859-1?Q?EKajsQugAru1p/ljh7wnrft2SMPF4u6WYOChJfTKrBCFIfUXZgE2I0uqxw?=
 =?iso-8859-1?Q?v75Iw9cafDqGwmN4DeQO9j2zVYoi8Hw7IJnfWjbyQv9VK9r6bUIIb1Rh59?=
 =?iso-8859-1?Q?Zq3128/50eoUyD6XJKIkm6h/gpqsvH7z379H2dAZbG+nMJWyXpwm8opAVT?=
 =?iso-8859-1?Q?TtEq4p5awanbwucKDNOPiUcQlbpiVv8kh29w2DSHBLcpUpWtvmiRUkUiBO?=
 =?iso-8859-1?Q?ndyjEmkYe7zcs4tL0cCcZMj2Pi6yZ5aGGq/rKACnAsLvFkQom2QBHvYRKe?=
 =?iso-8859-1?Q?PNtTAbCpOaQVr6yqit5o5WM0K1QmfupfDCmPQVH83a+CQUmJeK8IE3VYpV?=
 =?iso-8859-1?Q?JlNUOHO9F+A7X5lzqm0V6WNKA7yBizRcrJots5jIShikbd/rzuNbUbN9uH?=
 =?iso-8859-1?Q?VRsyc9g7G1/1TQm3cWSOA4KBYQbCWnIG0lqkn0tMlYGLEGhLp7AtjRc1Oj?=
 =?iso-8859-1?Q?ltJm+rC9tSbfokWRc7HuKFqS5VLpU7rYyFu2RJVsbC3GuhQtBFE6Xf9YQS?=
 =?iso-8859-1?Q?xd?=
x-ms-exchange-antispam-messagedata-1: maWvS0xVEyzPjQ==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87978703245DEDCFB76D7DF1B9212BL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rZdOFGZPPGLLahakR4Z3frUTvT7gYxS/YsQg/0Y6XU2tRkeKNPGhbo3FaXj22UY9T9oxM2UmQ4r9t/D05emrS9tmLEYOGCNSDVXZ1tf7gDb4dedyUvsfgAynMxOW0SWwR4kuhI+70QbsQpG1w6GAQc1jWnvpFQ7Qx01vB3IqpASEixxYn8NFz5483rIJIGeWPQIm9slJ9/e5MQWZL0V3XzatVqnNJNT0SG17XmKInUtwkPnmmcfJXete54X0xLlzpwQB9x2DP7m+ItzLwTMd9fUWD8Uug0dB70bdCaU1YkEtjJSHKyN13ocpURArH/MdtAHlY7e4vBeLfaagiYBVFg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86407b5f-10e2-41c3-4660-08de9d0e4320
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2026 05:49:31.4426
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tCp/4/NuAiCiHh6cDw/CdJ/eMNzVios71MCmoJJvIYb5ItlHG7H7kF7GCBfeVPjJRyQpfFXRuniyoRnmDg0oqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7086
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Apr 2026 05:49:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66423

--_000_BL4PR11MB87978703245DEDCFB76D7DF1B9212BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the third milestone release for Yocto Project 6.=
0 (yocto-6.0_M3) is now available for download.

Download:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M3

bitbake: 5d722b5d65e4eef7befe6376983385421e993f86
meta-agl: f5590359796fc6453a17849904a281095257ee38
meta-arm: d987a5945802dcbbc06be91a0d34f00431ea840e
meta-aws: 172c1f12366c50f58c317a4ed58d6de79e7afa1c
meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
meta-intel: bf06e8360baf2c84257e82f4153e13e62708568a
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
meta-openembedded: d793c367e067c49956d38caf6eb84cb112c9c9b7
meta-qcom: 5d1eabf99f52bc5ed4c629ba4a28f567ee69e564
meta-virtualization: b59fb87c0e991aa95f62627c3b2a606956ef6377
meta-yocto: 49cbb01d52521bfe557395c9ebfae6b1c162581e
oecore: f235ffc43c7783a84e1ac0dce8489fcba8354e12
yocto-docs: 560bc33c0c2ecd60d68ba06a2edff8c25b9a3f90

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M3/t=
estreport.txt

Thank you.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release

--_000_BL4PR11MB87978703245DEDCFB76D7DF1B9212BL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Hi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
We are pleased to announce the third milestone release for Yocto Project 6.=
0 (yocto-6.0_M3) is now available for download.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Download:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M3</=
div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
bitbake: 5d722b5d65e4eef7befe6376983385421e993f86</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-agl: f5590359796fc6453a17849904a281095257ee38</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-arm: d987a5945802dcbbc06be91a0d34f00431ea840e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-aws: 172c1f12366c50f58c317a4ed58d6de79e7afa1c</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-intel: bf06e8360baf2c84257e82f4153e13e62708568a</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-openembedded: d793c367e067c49956d38caf6eb84cb112c9c9b7</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-qcom: 5d1eabf99f52bc5ed4c629ba4a28f567ee69e564</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-virtualization: b59fb87c0e991aa95f62627c3b2a606956ef6377</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
meta-yocto: 49cbb01d52521bfe557395c9ebfae6b1c162581e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
oecore: f235ffc43c7783a84e1ac0dce8489fcba8354e12</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
yocto-docs: 560bc33c0c2ecd60d68ba06a2edff8c25b9a3f90</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Full Test Report:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M3/t=
estreport.txt</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Thank you.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
chee.yang.lee@intel.com</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0); --darkreader-inline-color: var(--darkreader-text-000000=
, #ffffdd);" data-darkreader-inline-color=3D"">
Yocto Project Build and Release</div>
</body>
</html>

--_000_BL4PR11MB87978703245DEDCFB76D7DF1B9212BL4PR11MB8797namp_--

