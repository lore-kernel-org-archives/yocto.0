Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20E55C021A0
	for <webhook@archiver.kernel.org>; Fri, 14 Feb 2025 01:47:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by mx.groups.io with SMTP id smtpd.web11.10813.1739497620435919324
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 17:47:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=NUVp2i2n;
 spf=pass (domain: intel.com, ip: 198.175.65.18, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1739497621; x=1771033621;
  h=from:to:subject:date:message-id:mime-version;
  bh=DIlpzWUmy9wqLjpB2e4S1LUQpba3Ty907jl2TPPYmAw=;
  b=NUVp2i2nkmt4EuHYpn9aJp2h6lR0CbYL9Ud1XtNjvIxfKHphXa0MBWr5
   wEwY3pHzJdH0+buCFnahGspLJ6alrZakn5I7W2VQ35mRC7GwUxLG6jyS3
   Bjnl93swDxS6EYtRv0TkQxYZkk7eaHFtL7WsDNbK9bO5lPRjvtzszBBaY
   TOxFcNtkTYiacaoUoBVqixBiAiu+C1PbfrMckXBMzeKy3oro8vux1rHhV
   fDsF9d9AHvR13jmlRA2FdpuhgA0KkGZ/cVZmoZAiXBvanavIZzGZUqwC1
   JXuuTU0KIMkF+Zh7Vv1HsPcY7IQ8aXPOKt8/Cu4uzfnrVzwthbWKTZMCW
   g==;
X-CSE-ConnectionGUID: SGQOF+2FR9eAcWhtGbKnCw==
X-CSE-MsgGUID: OYBmHcRLSsmEv4c3+F0wkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40347116"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; 
   d="scan'208,217";a="40347116"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2025 17:46:59 -0800
X-CSE-ConnectionGUID: YRhX2AjuTUKsKx5bAKBoOA==
X-CSE-MsgGUID: HQ4IaJUPSEyVv6mBhik7JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,284,1732608000"; 
   d="scan'208,217";a="118410373"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 13 Feb 2025 17:46:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 17:46:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 17:46:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 17:46:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QQv3h0VZkaKbq2thFDuirPmCiI9IcUjwwvxX2ANuwu6/XDLIdZsN0JtRVHB1q1hEfdK8ZFrtWVz96/FYejmk8PS5j1jJFoHi2Vtk9PSRVOyk+H/7SNlN2akzIwnPsxAX4G8QjHHWhLQYsUqAqs8rV904eRCuK8Z3gYYBdAFo03zko9SkyS82Br5xm42i4FknRtPCtFweYR2oADzfVKBdz3r6vx3nH8WX6yPIY0pwKQ8BHLT8DPrboFMDBAMXWFgusKynv4hWJrCky//2gFWDhcZ08yFKBWF2Ofh0NgretxTDxRxCKjLRv1Xl8+EXo1Ec4XnUsvOh0bRa5bSnEENkAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+5OGQMsjlhXFQtozyORRMhw8X0fgJQcp+LmqWQsqF94=;
 b=t4GWD46SIzaUOU71Mm0LJ90bz7DwJ1raDteWyX6/G3bOBI5VbbxsQP801JsJDuv6uawyOrYjjzTq4AaVrA+0oajP5+kALkKKLqRmW/HoBwGJycVeXzBDlNniz+44pOlsJEux7et8edlza6QiqoQ5a2oqsfb+z5XdjJWiMMad51CRo58tJmOqZdnmXIxSzzeEIr/6vIomj+T83ph3VyBwY69UGFWyTUrwGra2fePTcF7Uk7oRhGJNHARor/cF81Phv5VgFoLRzRRYn/YhS3VEFeNvLE0F1fu7tkwmdXKohOgp6mf/PfpsGI93Jbqn6qnCQpkBfLx2sBgf1FOHkXabeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 01:46:25 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.8445.011; Fri, 14 Feb 2025
 01:46:25 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.7 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.7 is Released
Thread-Index: Adt+gJPKpSzlBAbSS4iVHrxNfaf4ng==
Date: Fri, 14 Feb 2025 01:46:25 +0000
Message-ID: <BL4PR11MB8797B2B0971C36FEFF6B1451B9FE2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|MN0PR11MB6157:EE_
x-ms-office365-filtering-correlation-id: 1c0c28aa-ced0-4132-c878-08dd4c996456
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018|13003099007|8096899003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?lsXP4MWq3j/xYJV0eY61ER48p/SOYWqFpCzqgI4Z8RSsKvlBmU1P5sd7/u?=
 =?iso-8859-1?Q?JlU36kd8RbPXx2NiVo0lbI3ZDgBjPNrNTNMftgF3ijfTUWXi4NCo1rOZP4?=
 =?iso-8859-1?Q?ykW8Kv2taM6i+U83mMC4RgA6VvrxUSTWWoF6cXVDAqTRf+WdLo5PebWIoU?=
 =?iso-8859-1?Q?LQIb/K5ZOk+8YKm1V+PLmz/VtRm0zRBeDMggnV3JZvQv8WK9NuXiL1KLqQ?=
 =?iso-8859-1?Q?Fg6a6sn3wgCLlWhxphA0LBiBI9TQBsJUEdC3r/7lrOWcQEGMGGHk5IxMsW?=
 =?iso-8859-1?Q?nCFCzkPglzTn0OuPiJXSlRNSWi7op8Mr1ySKywtUSskA/rVYFtKW4q5Mii?=
 =?iso-8859-1?Q?VCFiQBwqKy90osuqHyeekx5gfRSNRkpdanflCJ5KQvROFMZALBsHVDLuyq?=
 =?iso-8859-1?Q?YQEv8y0+AVruomG3plYcZqAjCjnk4tfxDb3FCIygqxNXfWp5rkihP/qyGM?=
 =?iso-8859-1?Q?auPlh5EEJlCOupCgMbbCoziWYHEh6oGtIeYDno0vyrmmo39RvR8N2tsksD?=
 =?iso-8859-1?Q?CbGmAkUTHnwZRPssBSDYQTydae9OLK4zvdNIP2uZ5rwJu53rSh61aohB0r?=
 =?iso-8859-1?Q?RZb5WoI7e2RrahopNJfLLMGBXY1u5uAClahJW/nLGna/nNhhLGNShBMPVQ?=
 =?iso-8859-1?Q?Zp2pM5CRUc88sR7JIGpPIROPncd/8msM/pbALksOjHtXaPcmaVF/Pc2snC?=
 =?iso-8859-1?Q?TOhgAb31fry6HnxB6Qymo/GzBlXVs5qnyLxRL8FESJbh9Kct7norfuUhyu?=
 =?iso-8859-1?Q?+kTjUeRUacoV5Xp/7A262TLc43keznikjXBpxCUzxKETs+pd+NolwmrmEd?=
 =?iso-8859-1?Q?5cgbLjCzjiPjF0EmauHNtFKnlUQOiQZzExu5IpWIQjffgG/ByJ+gg6wM40?=
 =?iso-8859-1?Q?4bYvuv/41bIeLrR4Dkiu6eSl8T6GYSKxnHEz2opBcKFaVEFHsc1LpSsLcC?=
 =?iso-8859-1?Q?2vk7wfKik+wh0dQLZureXikZVemnFw69X0i8uTSkdGUxfbyOPLfmI8DHhm?=
 =?iso-8859-1?Q?dSSfGTP1dTyuotI6MXqTYvdr2/p0wqx1ZGEO07FoJs23Xf0OoFZVJiSU+P?=
 =?iso-8859-1?Q?s4LM3ybMmQIiyKgxhiQHO4JGrAo1uL84r+uLH5m0V1K6QCBemzg03RuKgJ?=
 =?iso-8859-1?Q?0zsaPhbg8/kGuLn/1txvsZUk2fJB7dGhmjNtw7U0Jan6Pv7OuCzkbDnby9?=
 =?iso-8859-1?Q?tMWl4AI7NxEUiVIDq3XhwAZYsOCwtUkIdv4opwLbSQrFx1kuhD/mhkSeNz?=
 =?iso-8859-1?Q?CwhIyj1qVu9ceZtXNFfDaewPkYS45l45z/Hphr+n3LcHieAjSMqZ+2rNKe?=
 =?iso-8859-1?Q?d5WDWyNIqxrTVBeQDfUaz2kO5Ug4uQ6yUjIuUSk82Os+a2QV0XgU/PnkTZ?=
 =?iso-8859-1?Q?/KoeNgoKG4cJxWJeKDmRMmMJhRa8ka7u5wWZUFJsbpDxtF6Ho3IO7QfgVp?=
 =?iso-8859-1?Q?BnbQ+ceTrPACsW6Mio6gU2kbd9zIXfE9yePuNQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?TvvSjBWRWcK+cza21qqMkkFFE7HcA3MA/ouNoujGRXzONV+S9uGBdso6wv?=
 =?iso-8859-1?Q?CwupMhvuvX+6jgf4vK/b23WIrRnAY7ESK2FgISYM/eTi+Owz+g69s2ZCou?=
 =?iso-8859-1?Q?k+KNZ0TvWAWcWV9zkU3OcStqA7f+169n4kBp78mk35pL1E5BJsyStnLiyY?=
 =?iso-8859-1?Q?VW9RilROR6z67yCQIF6hY+wVFefPW4z8FaPIVRHxaBOIBwJK4YZNhLyOkm?=
 =?iso-8859-1?Q?rfnLQrkFeRagCYUs2iAiSNc6t6AQD8ETgEbDP4YZqP9YPDg01aK+1E4k5F?=
 =?iso-8859-1?Q?eS9EAouyF63/T8lE2U33Z9AvDkoF8h/kcAqoq3eO7U7o+P8qZRgmr0f1xy?=
 =?iso-8859-1?Q?dIAjPRd0LstaPtBaxf6d+ntOsRbEJuNX0J99pkAyxY994iZnMIkOeGJEhg?=
 =?iso-8859-1?Q?m4CI5kGOFSdU8uSiZcA5Rxq4Ee85TsogWvD9Rwq0xVCub9DEICZ4S09H/A?=
 =?iso-8859-1?Q?sadsj6gWAWbe3rQG+f/jUEQjFdPq7wMezqcYFEo2txEAVNMraBGfO4AL6a?=
 =?iso-8859-1?Q?R/mYJh0FEEcYCLU2jvb8eLA1KgM77rn7HTJQdMVqYbWbWlAEJzSxU7Gh0c?=
 =?iso-8859-1?Q?LLPeRT1Zm7f5ISM9ExRBU1vheBS1W3szFdHuOJwLZrdvyw0y2zwaHHh81T?=
 =?iso-8859-1?Q?MkiF4Izci12dkZQumXmDNMfCF4Zr055Ao0XNmSrrk1eine/ua1HBln6uwq?=
 =?iso-8859-1?Q?TubDWYkuyxXZDwDlANMfg5CdfiQou0QfOJc3+M5zQbHbsjCcwUbaxxGttF?=
 =?iso-8859-1?Q?YQYdLgSbybMYL/+XwVjJBBjmmC/Rct8H9H37LF21vn0+mVP/zvwrih2SLl?=
 =?iso-8859-1?Q?9t0d2qtevybBYWWlKp8vikUFB9AFmFoxQAjUVi4UD0nhVrtFVF7Zj9L1Yn?=
 =?iso-8859-1?Q?torfU0GWO46oO1tvtAcm+52V8z9aMXmXCs/EAd1Mu4TB+v+Q4asP+NHPs0?=
 =?iso-8859-1?Q?Y0nNyodTxbcc22KJ5wd6ohioXp+dxmEdpZzDvrw8AYFG5irSIoMslLOkLH?=
 =?iso-8859-1?Q?3PfYllEUcNOhEn0tWEDy41hbzdkhZ9MkSRS1VML94BCqXS36hF9YtfV0Zg?=
 =?iso-8859-1?Q?gP5cZ0DPxgk26qwm/WaSkkjuwmtgpt8lhzIGzPwUlaBPSi8LPlfuoY7KUi?=
 =?iso-8859-1?Q?sp49QFM9nFyFkIkiEnxv80LMy04KEo61c9JgK9H+LY0IlWwSL0uwVtTG2z?=
 =?iso-8859-1?Q?OZYb9mM2BAbX54hXy+Tw9gnn8I2oF9sdRcHdcvR5WJdpXhGhsyD3FzL0fo?=
 =?iso-8859-1?Q?aIC3dSueb03IVHcR3gBIl8Q17w9LJmnGtCZ2QEA2Xs5F2qJpMcwLBPtQE+?=
 =?iso-8859-1?Q?d02a2tar9yyG2YCoW0PZlbf23Zioyt3QmTiS+z4GAfIGAAL9cbBdwYMpIb?=
 =?iso-8859-1?Q?HdRG58RmhZSNuO0ux6Uau8zKKjfardaYbVgQGhkCctjElxw2OyaDkqE5Sf?=
 =?iso-8859-1?Q?9XctXec/drknRKR3qUVssp1Q7m/5LmDfGaouSjownlCJgWz4v/EdPphKEz?=
 =?iso-8859-1?Q?QE5BpwzRuQHUqSVOKEv6x6D80IwRFw06zIRa49FFC1ZReiT0JxVi38Vh1d?=
 =?iso-8859-1?Q?BG+LWU0BInueWMsYxSvFgnSmmpPsTtM1K3gc+STn+6Ax6js6n0aMGq4tUp?=
 =?iso-8859-1?Q?ZQYYjP2cZEuUk71qullil3oUQUKc+g7Pym?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797B2B0971C36FEFF6B1451B9FE2BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c0c28aa-ced0-4132-c878-08dd4c996456
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 01:46:25.3467
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mvYb1u/a5Vy1aUZbYUnAePB12MUVOBaDhbTe4/fcJ96OlBdrM0otfw/pat0V9+dxcVbCoNJKYFITRGegyZgdlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2025 01:47:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64811

--_000_BL4PR11MB8797B2B0971C36FEFF6B1451B9FE2BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.7 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/poky-7dad83c7=
e5e9637c0ff5d5712409611fd4a14946.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.7/poky-7dad83c7e5e9637c0ff=
5d5712409611fd4a14946.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release



--------------------------
yocto-5.0.7 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.7
Git Revision: 7dad83c7e5e9637c0ff5d5712409611fd4a14946
Release Artefact: poky-7dad83c7e5e9637c0ff5d5712409611fd4a14946
sha: ae688031b19b88582bb4a76d0525e3704b981ad1d21eb38a0873cd01dd9a4652
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/poky-7dad83c7=
e5e9637c0ff5d5712409611fd4a14946.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.7/poky-7dad83c7e5e9637c0ff=
5d5712409611fd4a14946.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.7
Git Revision: 62cb12967391db709315820d48853ffa4c6b4740
Release Artefact: oecore-62cb12967391db709315820d48853ffa4c6b4740
sha: bc45429df1805445b678f1b0ed6ce017edfac38c7226dce92ce393b3ef311f95
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/oecore-62cb12=
967391db709315820d48853ffa4c6b4740.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.7/oecore-62cb12967391db709=
315820d48853ffa4c6b4740.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.7
Git Revision: acbba477893ef87388effc4679b7f40ee49fc852
Release Artefact: meta-mingw-acbba477893ef87388effc4679b7f40ee49fc852
sha: 3b7c2f475dad5130bace652b150367f587d44b391218b1364a8bbc430b48c54c
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/meta-mingw-ac=
bba477893ef87388effc4679b7f40ee49fc852.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.7/meta-mingw-acbba477893ef=
87388effc4679b7f40ee49fc852.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.7
Git Revision: aa0e540fc31a1c26839efd2c7785a751ce24ebfb
Release Artefact: bitbake-aa0e540fc31a1c26839efd2c7785a751ce24ebfb
sha: 169b68ed7d5e55015b1c35a82d35efaa25c87cba4722c85e66514a15d31e1d28
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/bitbake-aa0e5=
40fc31a1c26839efd2c7785a751ce24ebfb.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.7/bitbake-aa0e540fc31a1c26=
839efd2c7785a751ce24ebfb.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.7
Git Revision: bb9e018adcc10c642f87d0b95432783b5eb8057b


---------------
Contributors
---------------
Aleksandar Nikolic
Alexander Kanavin
Alexis Lothor=E9
Antonin Godard
Archana Polampalli
Bruce Ashfield
Catalin Popescu
Changqing Li
Chen Qi
Chris Laplante
Divya Chellam
Esben Haabendal
Gu=E9na=EBl Muller
Gu=F0ni M=E1r Gilbert
Harish Sadineni
Hiago De Franco
Hitendra Prajapati
Jiaying Song
Khem Raj
Lee Chee Yang
Mark Hatle
Michael Opdenacker
Mikko Rapeli
Peter Marko
Richard Purdie
Robert Yang
Ross Burton
Soumya Sambu
Steve Sakoman
Sunil Dora
Trevor Gamblin
Xiangyu Chen
Yash Shinde
Zhang Peng
Zahir Hussain


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
avahi: Fix CVE-2024-52616
binutils: Fix CVE-2024-53589
ffmpeg: Fix CVE-2024-35366 CVE-2024-35367 CVE-2024-35368
gstreamer1.0-plugins-base: Fix CVE-2024-47538 CVE-2024-47541 CVE-2024-47542=
 CVE-2024-47600 CVE-2024-47607 CVE-2024-47615 CVE-2024-47835
gstreamer1.0-plugins-good: Fix CVE-2024-47537 CVE-2024-47539 CVE-2024-47540=
 CVE-2024-47543 CVE-2024-47544 CVE-2024-47545 CVE-2024-47546 CVE-2024-47596=
 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599 CVE-2024-47601 CVE-2024-47602=
 CVE-2024-47603 CVE-2024-47606 CVE-2024-47613 CVE-2024-47774 CVE-2024-47775=
 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834
gstreamer1.0: Ignore CVE-2024-47537 CVE-2024-47539 CVE-2024-47540 CVE-2024-=
47543 CVE-2024-47544 CVE-2024-47545 CVE-2024-47538 CVE-2024-47541 CVE-2024-=
47542 CVE-2024-47600 CVE-2024-47607 CVE-2024-47615 CVE-2024-47835 CVE-2024-=
47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599 CVE-2024-=
47601 CVE-2024-47602 CVE-2024-47603 CVE-2024-47613 CVE-2024-47774 CVE-2024-=
47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834
libarchive: Fix CVE-2024-20696
libxml2: Fix CVE-2024-40896
linux-yocto/6.6: Fix CVE-2024-27059 CVE-2024-43098 CVE-2024-45828 CVE-2024-=
47141 CVE-2024-47143 CVE-2024-47704 CVE-2024-47809 CVE-2024-48873 CVE-2024-=
48875 CVE-2024-48881 CVE-2024-49863 CVE-2024-49864 CVE-2024-49866 CVE-2024-=
49867 CVE-2024-49868 CVE-2024-49870 CVE-2024-49871 CVE-2024-49874 CVE-2024-=
49875 CVE-2024-49877 CVE-2024-49878 CVE-2024-49879 CVE-2024-49881 CVE-2024-=
49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-49886 CVE-2024-49889 CVE-2024-=
49890 CVE-2024-49892 CVE-2024-49894 CVE-2024-49895 CVE-2024-49896 CVE-2024-=
49900 CVE-2024-49901 CVE-2024-49902 CVE-2024-49903 CVE-2024-49905 CVE-2024-=
49907 CVE-2024-49912 CVE-2024-49913 CVE-2024-49924 CVE-2024-49925 CVE-2024-=
49927 CVE-2024-49929 CVE-2024-49930 CVE-2024-49931 CVE-2024-49933 CVE-2024-=
49935 CVE-2024-49936 CVE-2024-49937 CVE-2024-49938 CVE-2024-49939 CVE-2024-=
49944 CVE-2024-49946 CVE-2024-49947 CVE-2024-49948 CVE-2024-49949 CVE-2024-=
49950 CVE-2024-49951 CVE-2024-49952 CVE-2024-49953 CVE-2024-49954 CVE-2024-=
49955 CVE-2024-49957 CVE-2024-49958 CVE-2024-49959 CVE-2024-49960 CVE-2024-=
49961 CVE-2024-49962 CVE-2024-49963 CVE-2024-49965 CVE-2024-49966 CVE-2024-=
49969 CVE-2024-49973 CVE-2024-49975 CVE-2024-49976 CVE-2024-49977 CVE-2024-=
49978 CVE-2024-49980 CVE-2024-49981 CVE-2024-49982 CVE-2024-49983 CVE-2024-=
49985 CVE-2024-49986 CVE-2024-49987 CVE-2024-49988 CVE-2024-49989 CVE-2024-=
49991 CVE-2024-49992 CVE-2024-49995 CVE-2024-49996 CVE-2024-49997 CVE-2024-=
50000 CVE-2024-50001 CVE-2024-50002 CVE-2024-50003 CVE-2024-50005 CVE-2024-=
50006 CVE-2024-50007 CVE-2024-50008 CVE-2024-50012 CVE-2024-50013 CVE-2024-=
50015 CVE-2024-50016 CVE-2024-50019 CVE-2024-50022 CVE-2024-50023 CVE-2024-=
50024 CVE-2024-50026 CVE-2024-50029 CVE-2024-50031 CVE-2024-50032 CVE-2024-=
50033 CVE-2024-50035 CVE-2024-50036 CVE-2024-50038 CVE-2024-50039 CVE-2024-=
50040 CVE-2024-50041 CVE-2024-50044 CVE-2024-50045 CVE-2024-50046 CVE-2024-=
50047 CVE-2024-50048 CVE-2024-50049 CVE-2024-50051 CVE-2024-50055 CVE-2024-=
50057 CVE-2024-50058 CVE-2024-50059 CVE-2024-50060 CVE-2024-50061 CVE-2024-=
50062 CVE-2024-50063 CVE-2024-50064 CVE-2024-50065 CVE-2024-50066 CVE-2024-=
50069 CVE-2024-50070 CVE-2024-50072 CVE-2024-50073 CVE-2024-50074 CVE-2024-=
50075 CVE-2024-50076 CVE-2024-50077 CVE-2024-50078 CVE-2024-50080 CVE-2024-=
50082 CVE-2024-50083 CVE-2024-50084 CVE-2024-50085 CVE-2024-50086 CVE-2024-=
50087 CVE-2024-50088 CVE-2024-50093 CVE-2024-50095 CVE-2024-50096 CVE-2024-=
50098 CVE-2024-50099 CVE-2024-50101 CVE-2024-50103 CVE-2024-50108 CVE-2024-=
50110 CVE-2024-50111 CVE-2024-50112 CVE-2024-50115 CVE-2024-50116 CVE-2024-=
50117 CVE-2024-50120 CVE-2024-50121 CVE-2024-50124 CVE-2024-50125 CVE-2024-=
50126 CVE-2024-50127 CVE-2024-50128 CVE-2024-50130 CVE-2024-50131 CVE-2024-=
50133 CVE-2024-50134 CVE-2024-50135 CVE-2024-50136 CVE-2024-50139 CVE-2024-=
50140 CVE-2024-50141 CVE-2024-50142 CVE-2024-50143 CVE-2024-50145 CVE-2024-=
50147 CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-50152 CVE-2024-=
50153 CVE-2024-50154 CVE-2024-50155 CVE-2024-50156 CVE-2024-50158 CVE-2024-=
50159 CVE-2024-50160 CVE-2024-50162 CVE-2024-50163 CVE-2024-50164 CVE-2024-=
50166 CVE-2024-50167 CVE-2024-50168 CVE-2024-50169 CVE-2024-50170 CVE-2024-=
50171 CVE-2024-50172 CVE-2024-50175 CVE-2024-50176 CVE-2024-50179 CVE-2024-=
50180 CVE-2024-50181 CVE-2024-50182 CVE-2024-50183 CVE-2024-50184 CVE-2024-=
50185 CVE-2024-50186 CVE-2024-50187 CVE-2024-50188 CVE-2024-50189 CVE-2024-=
50191 CVE-2024-50192 CVE-2024-50193 CVE-2024-50194 CVE-2024-50195 CVE-2024-=
50196 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205 CVE-2024-=
50208 CVE-2024-50209 CVE-2024-50211 CVE-2024-50215 CVE-2024-50222 CVE-2024-=
50223 CVE-2024-50224 CVE-2024-50226 CVE-2024-50229 CVE-2024-50230 CVE-2024-=
50231 CVE-2024-50232 CVE-2024-50233 CVE-2024-50234 CVE-2024-50235 CVE-2024-=
50236 CVE-2024-50237 CVE-2024-50239 CVE-2024-50240 CVE-2024-50242 CVE-2024-=
50243 CVE-2024-50244 CVE-2024-50245 CVE-2024-50246 CVE-2024-50247 CVE-2024-=
50248 CVE-2024-50249 CVE-2024-50250 CVE-2024-50251 CVE-2024-50252 CVE-2024-=
50255 CVE-2024-50256 CVE-2024-50257 CVE-2024-50258 CVE-2024-50259 CVE-2024-=
50261 CVE-2024-50262 CVE-2024-50264 CVE-2024-50265 CVE-2024-50267 CVE-2024-=
50268 CVE-2024-50269 CVE-2024-50271 CVE-2024-50272 CVE-2024-50273 CVE-2024-=
50275 CVE-2024-50276 CVE-2024-50278 CVE-2024-50279 CVE-2024-50282 CVE-2024-=
50283 CVE-2024-50284 CVE-2024-50285 CVE-2024-50286 CVE-2024-50287 CVE-2024-=
50292 CVE-2024-50296 CVE-2024-50298 CVE-2024-50299 CVE-2024-50300 CVE-2024-=
50301 CVE-2024-50302 CVE-2024-53042 CVE-2024-53043 CVE-2024-53046 CVE-2024-=
53047 CVE-2024-53052 CVE-2024-53055 CVE-2024-53057 CVE-2024-53058 CVE-2024-=
53059 CVE-2024-53060 CVE-2024-53061 CVE-2024-53063 CVE-2024-53066 CVE-2024-=
53068 CVE-2024-53072 CVE-2024-53076 CVE-2024-53079 CVE-2024-53081 CVE-2024-=
53082 CVE-2024-53083 CVE-2024-53088 CVE-2024-53091 CVE-2024-53093 CVE-2024-=
53094 CVE-2024-53096 CVE-2024-53099 CVE-2024-53100 CVE-2024-53101 CVE-2024-=
53103 CVE-2024-53108 CVE-2024-53109 CVE-2024-53110 CVE-2024-53112 CVE-2024-=
53113 CVE-2024-53119 CVE-2024-53120 CVE-2024-53121 CVE-2024-53122 CVE-2024-=
53123 CVE-2024-53126 CVE-2024-53127 CVE-2024-53129 CVE-2024-53130 CVE-2024-=
53131 CVE-2024-53134 CVE-2024-53135 CVE-2024-53138 CVE-2024-53139 CVE-2024-=
53140 CVE-2024-53141 CVE-2024-53142 CVE-2024-53145 CVE-2024-53146 CVE-2024-=
53150 CVE-2024-53151 CVE-2024-53154 CVE-2024-53155 CVE-2024-53156 CVE-2024-=
53157 CVE-2024-53161 CVE-2024-53165 CVE-2024-53166 CVE-2024-53168 CVE-2024-=
53171 CVE-2024-53173 CVE-2024-53175 CVE-2024-53180 CVE-2024-53188 CVE-2024-=
53191 CVE-2024-53200 CVE-2024-53202 CVE-2024-53208 CVE-2024-53210 CVE-2024-=
53213 CVE-2024-53215 CVE-2024-53217 CVE-2024-53224 CVE-2024-53226 CVE-2024-=
53227 CVE-2024-53230 CVE-2024-53231 CVE-2024-53237 CVE-2024-53239 CVE-2024-=
54683 CVE-2024-55916 CVE-2024-56369 CVE-2024-56538 CVE-2024-56551 CVE-2024-=
56567 CVE-2024-56568 CVE-2024-56569 CVE-2024-56572 CVE-2024-56574 CVE-2024-=
56575 CVE-2024-56577 CVE-2024-56578 CVE-2024-56579 CVE-2024-56581 CVE-2024-=
56587 CVE-2024-56593 CVE-2024-56595 CVE-2024-56596 CVE-2024-56598 CVE-2024-=
56600 CVE-2024-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56604 CVE-2024-=
56605 CVE-2024-56606 CVE-2024-56611 CVE-2024-56613 CVE-2024-56614 CVE-2024-=
56615 CVE-2024-56617 CVE-2024-56622 CVE-2024-56623 CVE-2024-56626 CVE-2024-=
56627 CVE-2024-56629 CVE-2024-56631 CVE-2024-56634 CVE-2024-56635 CVE-2024-=
56640 CVE-2024-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024-56649 CVE-2024-=
56650 CVE-2024-56651 CVE-2024-56653 CVE-2024-56654 CVE-2024-56657 CVE-2024-=
56658 CVE-2024-56659 CVE-2024-56660 CVE-2024-56662 CVE-2024-56663 CVE-2024-=
56664 CVE-2024-56667 CVE-2024-56670 CVE-2024-56672 CVE-2024-56675 CVE-2024-=
56687 CVE-2024-56688 CVE-2024-56689 CVE-2024-56692 CVE-2024-56694 CVE-2024-=
56698 CVE-2024-56704 CVE-2024-56708 CVE-2024-56710 CVE-2024-56715 CVE-2024-=
56716 CVE-2024-56717 CVE-2024-56718 CVE-2024-56720 CVE-2024-56722 CVE-2024-=
56723 CVE-2024-56724 CVE-2024-56725 CVE-2024-56726 CVE-2024-56727 CVE-2024-=
56728 CVE-2024-56729 CVE-2024-56739 CVE-2024-56741 CVE-2024-56744 CVE-2024-=
56745 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024-56751 CVE-2024-=
56752 CVE-2024-56754 CVE-2024-56755 CVE-2024-56756 CVE-2024-56760 CVE-2024-=
56763 CVE-2024-56765 CVE-2024-56767 CVE-2024-56769 CVE-2024-56770 CVE-2024-=
56774 CVE-2024-56776 CVE-2024-56777 CVE-2024-56778 CVE-2024-56779 CVE-2024-=
56780 CVE-2024-56781 CVE-2024-56783 CVE-2024-56785 CVE-2024-56786 CVE-2024-=
56787 CVE-2024-57798 CVE-2024-57807 CVE-2024-57874
ofono: Fix CVE-2023-4232 CVE-2023-4235 CVE-2024-7539 CVE-2024-7540 CVE-2024=
-7541 CVE-2024-7542 CVE-2024-7543 CVE-2024-7544 CVE-2024-7545 CVE-2024-7546=
 CVE-2024-7547
rsync: Fix CVE-2024-12084 CVE-2024-12085 CVE-2024-12086 CVE-2024-12087 CVE-=
2024-12088 CVE-2024-12747
socat: Fix CVE-2024-54661
subversion: Fix CVE-2024-46901
wget: Fix CVE-2024-10524


---------------
Fixes
---------------
bitbake: cooker: Make cooker 'skiplist' per-multiconfig/mc
bitbake: tests/fetch: Fix git shallow test failure with git >=3D 2.48
bitbake: ui/knotty: print log paths for failed tasks in summary
bitbake: ui/knotty: respect NO_COLOR & check for tty; rename print_hyperlin=
k =3D> format_hyperlink
bluez5: Revert "bluez5: remove configuration files from install task"
bluez5: backport patch to fix address type when loading keys
boost: fix do_fetch error
build-appliance-image: Update to scarthgap head revision
classes/nativesdk: also override TUNE_PKGARCH
classes/qemu: use tune to select QEMU_EXTRAOPTIONS, not package architectur=
e
contributor-guide/submit-changes.rst: suggest to remove the git signature
cve-update-nvd2-native: Handle BB_NO_NETWORK and missing db
cve-update-nvd2-native: Tweak to work better with NFS DL_DIR
dev-manual/bmaptool.rst: correct command for bmaptool-native
dev-manual/bmaptool.rst: simplify and fix instructions
dev-manual: fix styling of references to bmaptool
docs: Gather dependencies in poky.yaml.in
docs: Update autobuilder URLs to valkyrie
docs: Update the documentation for SRCPV
gcc: Fix c++: tweak for Wrange-loop-construct
groff: Fix race issues for parallel build
libgfortran: fix buildpath QA issue
libxml2: Upgrade to 2.12.9
linux-yocto/6.6: bsp/genericarm64: disable ARM64_SME
linux-yocto/6.6: genericarm64.cfg: enable CONFIG_DMA_CMA
linux-yocto/6.6: update to v6.6.69
lttng-modules: fix sched_stat_runtime changed in Linux 6.6.66
migration-guides: add release notes for 5.0.6
oeqa/ssh: allow to retrieve raw, unformatted ouput
ovmf-native: remove .pyc files from install
poky.conf: add new tested distros
poky.conf: bump version for 5.0.7
poky.yaml.in: add missing locales dependency
poky.yaml.in: replace inkscape dependency by librsvg2-bin
populate_sdk_ext: write_local_conf add shutil import
pulseaudio: fix webrtc audio depdency
python3-requests: upgrade to 2.32.3
python3: Drop empty patch
python3: add dependency on -compression to -core
python3: upgrade to 3.12.7
ref-manual: move runtime-testing section to the test-manual
ref-manual: use standardized method accross both ubuntu and debian for loca=
le install
ref-manual: SSTATE_MIRRORS/SOURCE_MIRROR_URL: add instructions for mirror a=
uthentication
reproducible-builds.rst: show how to build a single package
rust-target-config: Fix TARGET_C_INT_WIDTH with correct size
rust: Revert "rust: Add new varaible RUST_ENABLE_EXTRA_TOOLS"
rust: add reproducibility patch to eliminate host leakage
rust: build the default set of tools
rust: correctly link rust-snapshot into build/stage0
rust: use rust-snapshot binaries only in rust-native
sanity.bbclass: skip check_userns for non-local uid
scripts/install-buildtools: Update to 5.0.6
system-requirements.rst: add dependencies for pdf builds
system-requirements: add fedora 39 to supported distros
system-requirements: update list of supported distros
systemd: enable create-log-dirs
test-manual/reproducible-builds: fix reproducible links



--_000_BL4PR11MB8797B2B0971C36FEFF6B1451B9FE2BL4PR11MB8797namp_
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
We are pleased to announce the Yocto Project 5.0.7 Release is now available=
 for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/poky-7dad83c7e5e9637c=
0ff5d5712409611fd4a14946.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.0.7/poky-7dad83c7e5e9637c0ff5d5712409611fd4a14946.tar.bz2<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.7/poky-7dad83c7e5e9637c0ff5d571240=
9611fd4a14946.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.7/p=
oky-7dad83c7e5e9637c0ff5d5712409611fd4a14946.tar.bz2</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.0.7/testreport.txt</a>=
<o:p></o:p></span></p>
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
 and Release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.7 Release=
 Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.7<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 7dad8=
3c7e5e9637c0ff5d5712409611fd4a14946<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-7dad83c7e5e9637c0ff5d5712409611fd4a14946<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ae688031b19b88=
582bb4a76d0525e3704b981ad1d21eb38a0873cd01dd9a4652<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.7/poky-7dad83c7e5e9637c0ff5d571240=
9611fd4a14946.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.7/poky-7dad83c7e5e9637c0ff5d5712409611fd4a149=
46.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.7<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 62cb1=
2967391db709315820d48853ffa4c6b4740<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-62cb12967391db709315820d48853ffa4c6b4740<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: bc45429df18054=
45b678f1b0ed6ce017edfac38c7226dce92ce393b3ef311f95<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.7/oecore-62cb12967391db709315820d4=
8853ffa4c6b4740.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.7/oecore-62cb12967391db709315820d48853ffa4c6b=
4740.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.7<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: acbba=
477893ef87388effc4679b7f40ee49fc852<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-acbba477893ef87388effc4679b7f40ee49fc852<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 3b7c2f475dad51=
30bace652b150367f587d44b391218b1364a8bbc430b48c54c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.7/meta-mingw-acbba477893ef87388eff=
c4679b7f40ee49fc852.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.7/meta-mingw-acbba477893ef87388effc4679b7f40e=
e49fc852.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.7<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: aa0e5=
40fc31a1c26839efd2c7785a751ce24ebfb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-aa0e540fc31a1c26839efd2c7785a751ce24ebfb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 169b68ed7d5e55=
015b1c35a82d35efaa25c87cba4722c85e66514a15d31e1d28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.7/bitbake-aa0e540fc31a1c26839efd2c=
7785a751ce24ebfb.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.7/bitbake-aa0e540fc31a1c26839efd2c7785a751ce2=
4ebfb.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.7<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bb9e0=
18adcc10c642f87d0b95432783b5eb8057b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexis Lothor=E9<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Catalin Popescu<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chris Laplante<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Esben Haabendal<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=E9na=EBl Muller<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=F0ni M=E1r Gilbe=
rt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hiago De Franco<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mark Hatle<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Opdenacker<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mikko Rapeli<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sunil Dora<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Gamblin<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Xiangyu Chen<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zhang Peng<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zahir Hussain<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">avahi: Fix CVE-2024=
-52616<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
024-53589<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
4-35366 CVE-2024-35367 CVE-2024-35368<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-base: Fix CVE-2024-47538 CVE-2024-47541 CVE-2024-47542 CVE-2024-47600 CVE=
-2024-47607 CVE-2024-47615 CVE-2024-47835<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-good: Fix CVE-2024-47537 CVE-2024-47539 CVE-2024-47540 CVE-2024-47543 CVE=
-2024-47544 CVE-2024-47545 CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE=
-2024-47598 CVE-2024-47599 CVE-2024-47601
 CVE-2024-47602 CVE-2024-47603 CVE-2024-47606 CVE-2024-47613 CVE-2024-47774=
 CVE-2024-47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Ignor=
e CVE-2024-47537 CVE-2024-47539 CVE-2024-47540 CVE-2024-47543 CVE-2024-4754=
4 CVE-2024-47545 CVE-2024-47538 CVE-2024-47541 CVE-2024-47542 CVE-2024-4760=
0 CVE-2024-47607 CVE-2024-47615 CVE-2024-47835
 CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599=
 CVE-2024-47601 CVE-2024-47602 CVE-2024-47603 CVE-2024-47613 CVE-2024-47774=
 CVE-2024-47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2024-20696<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
24-40896<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: Fi=
x CVE-2024-27059 CVE-2024-43098 CVE-2024-45828 CVE-2024-47141 CVE-2024-4714=
3 CVE-2024-47704 CVE-2024-47809 CVE-2024-48873 CVE-2024-48875 CVE-2024-4888=
1 CVE-2024-49863 CVE-2024-49864 CVE-2024-49866
 CVE-2024-49867 CVE-2024-49868 CVE-2024-49870 CVE-2024-49871 CVE-2024-49874=
 CVE-2024-49875 CVE-2024-49877 CVE-2024-49878 CVE-2024-49879 CVE-2024-49881=
 CVE-2024-49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-49886 CVE-2024-49889=
 CVE-2024-49890 CVE-2024-49892 CVE-2024-49894
 CVE-2024-49895 CVE-2024-49896 CVE-2024-49900 CVE-2024-49901 CVE-2024-49902=
 CVE-2024-49903 CVE-2024-49905 CVE-2024-49907 CVE-2024-49912 CVE-2024-49913=
 CVE-2024-49924 CVE-2024-49925 CVE-2024-49927 CVE-2024-49929 CVE-2024-49930=
 CVE-2024-49931 CVE-2024-49933 CVE-2024-49935
 CVE-2024-49936 CVE-2024-49937 CVE-2024-49938 CVE-2024-49939 CVE-2024-49944=
 CVE-2024-49946 CVE-2024-49947 CVE-2024-49948 CVE-2024-49949 CVE-2024-49950=
 CVE-2024-49951 CVE-2024-49952 CVE-2024-49953 CVE-2024-49954 CVE-2024-49955=
 CVE-2024-49957 CVE-2024-49958 CVE-2024-49959
 CVE-2024-49960 CVE-2024-49961 CVE-2024-49962 CVE-2024-49963 CVE-2024-49965=
 CVE-2024-49966 CVE-2024-49969 CVE-2024-49973 CVE-2024-49975 CVE-2024-49976=
 CVE-2024-49977 CVE-2024-49978 CVE-2024-49980 CVE-2024-49981 CVE-2024-49982=
 CVE-2024-49983 CVE-2024-49985 CVE-2024-49986
 CVE-2024-49987 CVE-2024-49988 CVE-2024-49989 CVE-2024-49991 CVE-2024-49992=
 CVE-2024-49995 CVE-2024-49996 CVE-2024-49997 CVE-2024-50000 CVE-2024-50001=
 CVE-2024-50002 CVE-2024-50003 CVE-2024-50005 CVE-2024-50006 CVE-2024-50007=
 CVE-2024-50008 CVE-2024-50012 CVE-2024-50013
 CVE-2024-50015 CVE-2024-50016 CVE-2024-50019 CVE-2024-50022 CVE-2024-50023=
 CVE-2024-50024 CVE-2024-50026 CVE-2024-50029 CVE-2024-50031 CVE-2024-50032=
 CVE-2024-50033 CVE-2024-50035 CVE-2024-50036 CVE-2024-50038 CVE-2024-50039=
 CVE-2024-50040 CVE-2024-50041 CVE-2024-50044
 CVE-2024-50045 CVE-2024-50046 CVE-2024-50047 CVE-2024-50048 CVE-2024-50049=
 CVE-2024-50051 CVE-2024-50055 CVE-2024-50057 CVE-2024-50058 CVE-2024-50059=
 CVE-2024-50060 CVE-2024-50061 CVE-2024-50062 CVE-2024-50063 CVE-2024-50064=
 CVE-2024-50065 CVE-2024-50066 CVE-2024-50069
 CVE-2024-50070 CVE-2024-50072 CVE-2024-50073 CVE-2024-50074 CVE-2024-50075=
 CVE-2024-50076 CVE-2024-50077 CVE-2024-50078 CVE-2024-50080 CVE-2024-50082=
 CVE-2024-50083 CVE-2024-50084 CVE-2024-50085 CVE-2024-50086 CVE-2024-50087=
 CVE-2024-50088 CVE-2024-50093 CVE-2024-50095
 CVE-2024-50096 CVE-2024-50098 CVE-2024-50099 CVE-2024-50101 CVE-2024-50103=
 CVE-2024-50108 CVE-2024-50110 CVE-2024-50111 CVE-2024-50112 CVE-2024-50115=
 CVE-2024-50116 CVE-2024-50117 CVE-2024-50120 CVE-2024-50121 CVE-2024-50124=
 CVE-2024-50125 CVE-2024-50126 CVE-2024-50127
 CVE-2024-50128 CVE-2024-50130 CVE-2024-50131 CVE-2024-50133 CVE-2024-50134=
 CVE-2024-50135 CVE-2024-50136 CVE-2024-50139 CVE-2024-50140 CVE-2024-50141=
 CVE-2024-50142 CVE-2024-50143 CVE-2024-50145 CVE-2024-50147 CVE-2024-50148=
 CVE-2024-50150 CVE-2024-50151 CVE-2024-50152
 CVE-2024-50153 CVE-2024-50154 CVE-2024-50155 CVE-2024-50156 CVE-2024-50158=
 CVE-2024-50159 CVE-2024-50160 CVE-2024-50162 CVE-2024-50163 CVE-2024-50164=
 CVE-2024-50166 CVE-2024-50167 CVE-2024-50168 CVE-2024-50169 CVE-2024-50170=
 CVE-2024-50171 CVE-2024-50172 CVE-2024-50175
 CVE-2024-50176 CVE-2024-50179 CVE-2024-50180 CVE-2024-50181 CVE-2024-50182=
 CVE-2024-50183 CVE-2024-50184 CVE-2024-50185 CVE-2024-50186 CVE-2024-50187=
 CVE-2024-50188 CVE-2024-50189 CVE-2024-50191 CVE-2024-50192 CVE-2024-50193=
 CVE-2024-50194 CVE-2024-50195 CVE-2024-50196
 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205 CVE-2024-50208=
 CVE-2024-50209 CVE-2024-50211 CVE-2024-50215 CVE-2024-50222 CVE-2024-50223=
 CVE-2024-50224 CVE-2024-50226 CVE-2024-50229 CVE-2024-50230 CVE-2024-50231=
 CVE-2024-50232 CVE-2024-50233 CVE-2024-50234
 CVE-2024-50235 CVE-2024-50236 CVE-2024-50237 CVE-2024-50239 CVE-2024-50240=
 CVE-2024-50242 CVE-2024-50243 CVE-2024-50244 CVE-2024-50245 CVE-2024-50246=
 CVE-2024-50247 CVE-2024-50248 CVE-2024-50249 CVE-2024-50250 CVE-2024-50251=
 CVE-2024-50252 CVE-2024-50255 CVE-2024-50256
 CVE-2024-50257 CVE-2024-50258 CVE-2024-50259 CVE-2024-50261 CVE-2024-50262=
 CVE-2024-50264 CVE-2024-50265 CVE-2024-50267 CVE-2024-50268 CVE-2024-50269=
 CVE-2024-50271 CVE-2024-50272 CVE-2024-50273 CVE-2024-50275 CVE-2024-50276=
 CVE-2024-50278 CVE-2024-50279 CVE-2024-50282
 CVE-2024-50283 CVE-2024-50284 CVE-2024-50285 CVE-2024-50286 CVE-2024-50287=
 CVE-2024-50292 CVE-2024-50296 CVE-2024-50298 CVE-2024-50299 CVE-2024-50300=
 CVE-2024-50301 CVE-2024-50302 CVE-2024-53042 CVE-2024-53043 CVE-2024-53046=
 CVE-2024-53047 CVE-2024-53052 CVE-2024-53055
 CVE-2024-53057 CVE-2024-53058 CVE-2024-53059 CVE-2024-53060 CVE-2024-53061=
 CVE-2024-53063 CVE-2024-53066 CVE-2024-53068 CVE-2024-53072 CVE-2024-53076=
 CVE-2024-53079 CVE-2024-53081 CVE-2024-53082 CVE-2024-53083 CVE-2024-53088=
 CVE-2024-53091 CVE-2024-53093 CVE-2024-53094
 CVE-2024-53096 CVE-2024-53099 CVE-2024-53100 CVE-2024-53101 CVE-2024-53103=
 CVE-2024-53108 CVE-2024-53109 CVE-2024-53110 CVE-2024-53112 CVE-2024-53113=
 CVE-2024-53119 CVE-2024-53120 CVE-2024-53121 CVE-2024-53122 CVE-2024-53123=
 CVE-2024-53126 CVE-2024-53127 CVE-2024-53129
 CVE-2024-53130 CVE-2024-53131 CVE-2024-53134 CVE-2024-53135 CVE-2024-53138=
 CVE-2024-53139 CVE-2024-53140 CVE-2024-53141 CVE-2024-53142 CVE-2024-53145=
 CVE-2024-53146 CVE-2024-53150 CVE-2024-53151 CVE-2024-53154 CVE-2024-53155=
 CVE-2024-53156 CVE-2024-53157 CVE-2024-53161
 CVE-2024-53165 CVE-2024-53166 CVE-2024-53168 CVE-2024-53171 CVE-2024-53173=
 CVE-2024-53175 CVE-2024-53180 CVE-2024-53188 CVE-2024-53191 CVE-2024-53200=
 CVE-2024-53202 CVE-2024-53208 CVE-2024-53210 CVE-2024-53213 CVE-2024-53215=
 CVE-2024-53217 CVE-2024-53224 CVE-2024-53226
 CVE-2024-53227 CVE-2024-53230 CVE-2024-53231 CVE-2024-53237 CVE-2024-53239=
 CVE-2024-54683 CVE-2024-55916 CVE-2024-56369 CVE-2024-56538 CVE-2024-56551=
 CVE-2024-56567 CVE-2024-56568 CVE-2024-56569 CVE-2024-56572 CVE-2024-56574=
 CVE-2024-56575 CVE-2024-56577 CVE-2024-56578
 CVE-2024-56579 CVE-2024-56581 CVE-2024-56587 CVE-2024-56593 CVE-2024-56595=
 CVE-2024-56596 CVE-2024-56598 CVE-2024-56600 CVE-2024-56601 CVE-2024-56602=
 CVE-2024-56603 CVE-2024-56604 CVE-2024-56605 CVE-2024-56606 CVE-2024-56611=
 CVE-2024-56613 CVE-2024-56614 CVE-2024-56615
 CVE-2024-56617 CVE-2024-56622 CVE-2024-56623 CVE-2024-56626 CVE-2024-56627=
 CVE-2024-56629 CVE-2024-56631 CVE-2024-56634 CVE-2024-56635 CVE-2024-56640=
 CVE-2024-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024-56649 CVE-2024-56650=
 CVE-2024-56651 CVE-2024-56653 CVE-2024-56654
 CVE-2024-56657 CVE-2024-56658 CVE-2024-56659 CVE-2024-56660 CVE-2024-56662=
 CVE-2024-56663 CVE-2024-56664 CVE-2024-56667 CVE-2024-56670 CVE-2024-56672=
 CVE-2024-56675 CVE-2024-56687 CVE-2024-56688 CVE-2024-56689 CVE-2024-56692=
 CVE-2024-56694 CVE-2024-56698 CVE-2024-56704
 CVE-2024-56708 CVE-2024-56710 CVE-2024-56715 CVE-2024-56716 CVE-2024-56717=
 CVE-2024-56718 CVE-2024-56720 CVE-2024-56722 CVE-2024-56723 CVE-2024-56724=
 CVE-2024-56725 CVE-2024-56726 CVE-2024-56727 CVE-2024-56728 CVE-2024-56729=
 CVE-2024-56739 CVE-2024-56741 CVE-2024-56744
 CVE-2024-56745 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024-56751=
 CVE-2024-56752 CVE-2024-56754 CVE-2024-56755 CVE-2024-56756 CVE-2024-56760=
 CVE-2024-56763 CVE-2024-56765 CVE-2024-56767 CVE-2024-56769 CVE-2024-56770=
 CVE-2024-56774 CVE-2024-56776 CVE-2024-56777
 CVE-2024-56778 CVE-2024-56779 CVE-2024-56780 CVE-2024-56781 CVE-2024-56783=
 CVE-2024-56785 CVE-2024-56786 CVE-2024-56787 CVE-2024-57798 CVE-2024-57807=
 CVE-2024-57874
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ofono: Fix CVE-2023=
-4232 CVE-2023-4235 CVE-2024-7539 CVE-2024-7540 CVE-2024-7541 CVE-2024-7542=
 CVE-2024-7543 CVE-2024-7544 CVE-2024-7545 CVE-2024-7546 CVE-2024-7547<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rsync: Fix CVE-2024=
-12084 CVE-2024-12085 CVE-2024-12086 CVE-2024-12087 CVE-2024-12088 CVE-2024=
-12747<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">socat: Fix CVE-2024=
-54661<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">subversion: Fix CVE=
-2024-46901<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wget: Fix CVE-2024-=
10524<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: cooker: Ma=
ke cooker 'skiplist' per-multiconfig/mc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Fix git shallow test failure with git &gt;=3D 2.48<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: ui/knotty:=
 print log paths for failed tasks in summary<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: ui/knotty:=
 respect NO_COLOR &amp; check for tty; rename print_hyperlink =3D&gt; forma=
t_hyperlink<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bluez5: Revert &quo=
t;bluez5: remove configuration files from install task&quot;<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bluez5: backport pa=
tch to fix address type when loading keys<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">boost: fix do_fetch=
 error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">classes/nativesdk: =
also override TUNE_PKGARCH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">classes/qemu: use t=
une to select QEMU_EXTRAOPTIONS, not package architecture<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide/s=
ubmit-changes.rst: suggest to remove the git signature<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: Handle BB_NO_NETWORK and missing db<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: Tweak to work better with NFS DL_DIR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/bmaptool=
.rst: correct command for bmaptool-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/bmaptool=
.rst: simplify and fix instructions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: fix sty=
ling of references to bmaptool<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Gather depend=
encies in poky.yaml.in<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Update autobu=
ilder URLs to valkyrie<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Update the do=
cumentation for SRCPV<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: Fix c++: tweak=
 for Wrange-loop-construct<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">groff: Fix race iss=
ues for parallel build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libgfortran: fix bu=
ildpath QA issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Upgrade to=
 2.12.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: bs=
p/genericarm64: disable ARM64_SME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: ge=
nericarm64.cfg: enable CONFIG_DMA_CMA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
date to v6.6.69<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lttng-modules: fix =
sched_stat_runtime changed in Linux 6.6.66<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 5.0.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/ssh: allow to =
retrieve raw, unformatted ouput<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ovmf-native: remove=
 .pyc files from install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: add new =
tested distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.yaml.in: add m=
issing locales dependency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.yaml.in: repla=
ce inkscape dependency by librsvg2-bin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">populate_sdk_ext: w=
rite_local_conf add shutil import<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: fix web=
rtc audio depdency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-requests: u=
pgrade to 2.32.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Drop empty=
 patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: add depend=
ency on -compression to -core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.12.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: move ru=
ntime-testing section to the test-manual<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: use sta=
ndardized method accross both ubuntu and debian for locale install<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: SSTATE_=
MIRRORS/SOURCE_MIRROR_URL: add instructions for mirror authentication<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">reproducible-builds=
.rst: show how to build a single package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-target-config:=
 Fix TARGET_C_INT_WIDTH with correct size<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: Revert &quot;=
rust: Add new varaible RUST_ENABLE_EXTRA_TOOLS&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: add reproduci=
bility patch to eliminate host leakage<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: build the def=
ault set of tools<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: correctly lin=
k rust-snapshot into build/stage0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: use rust-snap=
shot binaries only in rust-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sanity.bbclass: ski=
p check_userns for non-local uid<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">system-requirements=
.rst: add dependencies for pdf builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">system-requirements=
: add fedora 39 to supported distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">system-requirements=
: update list of supported distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: enable cre=
ate-log-dirs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/reprodu=
cible-builds: fix reproducible links<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797B2B0971C36FEFF6B1451B9FE2BL4PR11MB8797namp_--

