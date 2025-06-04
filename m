Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF29C5B549
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 03:47:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by mx.groups.io with SMTP id smtpd.web10.8001.1749008836758096935
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 20:47:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=ijpZIj+h;
 spf=pass (domain: intel.com, ip: 192.198.163.17, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1749008836; x=1780544836;
  h=from:to:subject:date:message-id:mime-version;
  bh=MqxsajSrwBmigG3JpF8CQ1mSthAZF0Isun4VEnyte6g=;
  b=ijpZIj+hPYQ1yLs0ZL7ZcjNCKxE/uXa5aEzXwJdg/C+8jNuDuO0dg1kN
   SbquibU0qTWQhKEDqv7Nbu0+MdxNUwEDn3/7OPAgwnn3JZoSVHMrBqABe
   5vL5KZp6Y5wR05I5nQprMOQf5mCi55X+YgJtMHOptKKgYSHYRkr8B+9Uh
   zOZeebf3EXfB9SCQvfkekQo4bEiyK6Wz6L4ti9zm37vj6vg93FXW7hxL5
   OGIgKRPD7thCoLghk24/H0lM0DVlhP8xseFzo7UEpWwfBecshW+eeP48y
   FIKlaP8mgpjtfRpNJ+5BOi3V7APD0fUKcJdAprPtDxzfoMGtJy+29R9mP
   Q==;
X-CSE-ConnectionGUID: HbMncKI0QxSHovxomIeeEw==
X-CSE-MsgGUID: C1vq2cwbQVK2yapzw+hslg==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50986206"
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; 
   d="scan'208,217";a="50986206"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2025 20:47:16 -0700
X-CSE-ConnectionGUID: 85B4PlifSzCKugpvV8/8cw==
X-CSE-MsgGUID: x4Rfvqz9Tg++isQHer5mtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; 
   d="scan'208,217";a="145663461"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2025 20:47:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 20:47:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 20:47:15 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.83)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 3 Jun 2025 20:47:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r13UwGJtple6XgksIjUpch9WG/+ijedK6oECXjPFZQMxtfImuCQ9VomqAwcloJzUYGt1rSBW9Wx2Tdr1D033itdwvtpU/2nYOUteaUSs3+iZPM3rP7XOKFzZRICA3PGH64Ix5ipY6u03ZWhTP90zUygEVcWf8mUA0E7uBT+yBZBUkVjqLeAF/oT7nJI6e/mZnQjHwtVJe7GRrUwcJ+HCMhl/aKPm03i7840flbcGTh3nTiIQXhc5COwqOCeXIsEWJ1LepzAI88R7/KuzvQNg1gR/oMIGwW8P64m5uVkTE8GOTM2D3HPJTOge3EBXJveMcnktrq1+GFEFEuujEFM8JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdli/WuLhDORV/bBQXXkdZVRj8LpceXfgJfKciCgKbw=;
 b=ayT2CB1c7c/N0RZv9OueCJPQOSuDUc7qfaGl4YwgikAnDGs/1EZP7s+wrmcctoabbEqETejVCr2T9LZRM6mJGK06v+GaziCrssWLq0/LOf0vkCoqS0pDYy9AzZX6dRLEnoyDZEM0wj/6XCjCNQf1v/jPA2z1ENVaZVIhKNhn7qDAMjXkeyfGHqmcDcB85C3HrtDFL28iucl5awvd5NbhdmuuxN3k16oSHTVXiXB6tktSa1L3wIJr+VPuHcS+NXKYPrGt2OpYNgt4ryULMi64tS7jyTGKYpGjRGBBys5oXLLNCXloEpVfeNaeB6oSlvA6vV18nskO1dphFY6lCEo2RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH0PR11MB5831.namprd11.prod.outlook.com (2603:10b6:510:14b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Wed, 4 Jun
 2025 03:46:45 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8792.034; Wed, 4 Jun 2025
 03:46:45 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.2.1 (Walnascar-5.2.1) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.2.1 (Walnascar-5.2.1) is Released
Thread-Index: AdvU/tvzfZhJ9HWESn2VGyecibVRLg==
Date: Wed, 4 Jun 2025 03:46:45 +0000
Message-ID: <BL4PR11MB87973AB80F5E09D4FCFE2814B96CA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH0PR11MB5831:EE_
x-ms-office365-filtering-correlation-id: 5bf8d1f1-802b-4750-b172-08dda31a6d64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|13003099007|8096899003|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?PmvposKXr18UuzkPuRLOB1fbro8G/3BOhG1+RVwHSEKxFIUzZEfDSSXiFf?=
 =?iso-8859-1?Q?DrXyOpH4tIVsVJKLNV/r1H6kWI1jdlbuFD9RZEUwGGZ1RphTO/k9G1jO4B?=
 =?iso-8859-1?Q?Q1oW3R+DXKlUpb85yboBHpEDNY6bI+aIhmTy8FahwfHaWuZj4tecUeuXSa?=
 =?iso-8859-1?Q?EKx6AowLcNjImvO39/jp2lo3fNA6eb+gxrn0pVs5Gz2Jb4zgBJ5xBdiwyA?=
 =?iso-8859-1?Q?xUciQfs2p+BePvU561y0BQ4xKLbuB2AWigNZf8XbR39uTeISNwLSy2bUAN?=
 =?iso-8859-1?Q?cNHCcCUpg+/9rljk3yhJf/9c1jd2ko3t8XYLLg6Ika8mSGWglEsL2oRPV8?=
 =?iso-8859-1?Q?ZF4O3+CGpDnkCEudIzDhrDRHWrKoyOTJ9+adQscNxZEiOkrX48x9M04DK0?=
 =?iso-8859-1?Q?uwumyZllivxnFPPGI5vUUOoPUn1HJ8XfyCMFQUAOPfk39g1Hks87huQIUJ?=
 =?iso-8859-1?Q?mdYufechlMfZyeCgQ2TiQymEjCmUexTChNLyag9FA7P0LY3OlPa/q1+LV1?=
 =?iso-8859-1?Q?YVoyLiG+lu1tgV/s5HyCrMTgk52l2P4CvFignf7aAzQKeDFRS9oXKCjAuI?=
 =?iso-8859-1?Q?90HUxGL2q7uD4nnqIIB2vdeeEikA7dct17NDZKXB6DlTE6LT8XlsXUSgXT?=
 =?iso-8859-1?Q?fjQRnlZBjw1q5GmCIy0TeeK793+PB07sBElLxrD/XaUW1p65mOXsRM53On?=
 =?iso-8859-1?Q?+lVdT4ouJ+cA9k0oA2Z8KcIhZivY9F+D1BuykqfNmTk+WndQbWDylT8kya?=
 =?iso-8859-1?Q?z3Dy7zy7LDaQN7PEHxZCNmhNY1vN4FF+dV8B0m0kfuuruCdharjbsOq2rX?=
 =?iso-8859-1?Q?lnNiiXeYGkZ+uKhKUW9agb/iXQ/Bqv3PsZhr64MqIKyKejEyDN+JVCHt5L?=
 =?iso-8859-1?Q?7FpSkgbyqiPgjdKj1b9lwZtUTOhyAVGK3PblAl6niKdcRNeb7ed7OIyAcG?=
 =?iso-8859-1?Q?xKTkaSdqQM9IItJJ096nctBu6Fd1C+RL+4E29J+TKBZ8BJnWR+m8Wm9/U0?=
 =?iso-8859-1?Q?iJ8CDiF5v93F2YwWYTrYPzxjNKhv+zl725dFUXhWaMnt3OurD9TnpcR8aT?=
 =?iso-8859-1?Q?uOqxVc3yOuneWQ+/JvuFYEnTOziMNG3ldzssV1yu/qXR05eJ4YMpEvT1XK?=
 =?iso-8859-1?Q?VOBI4/cv69kuUURk9hxwZPGxUx5r7TQilkcZmcmCVLRLBRteb/axNQkROV?=
 =?iso-8859-1?Q?p94w19hpAjV6pEFQUu44PUqZQJmG51BILCIkbLHGJcd32Rea16h34hxfKK?=
 =?iso-8859-1?Q?bqBzv7jWl6VoPMUzsHGq1NaUR9uoUJ62OTPeTyBWZVdIAMHKjszWh1Gw/w?=
 =?iso-8859-1?Q?rKuie5uUABTr8ePtEdDNSqb9vAyHAQXZhUchMmmqxqBfr96AS+h7XoG4Uh?=
 =?iso-8859-1?Q?UFqj6WBlNeatH9p1GPvOK1h08Vw7bSidHujl5K1+nm+IsQwYz0yP5CJvao?=
 =?iso-8859-1?Q?8LcwcUBalwRMJddfz5nJDzaBqU5IiHmzJ+56xMSa9JI/NZnjqf+NqzaKoX?=
 =?iso-8859-1?Q?o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(13003099007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?hpQ2BKZ/4NkwqUXGkXVdQSZDsrpYl0d6K9KUQoHqsooDMnBlf8wuO+MA07?=
 =?iso-8859-1?Q?QbQUGfZwjqErX+m4RMqTPh8cSI/JpPtucTiv+jPlil4OaFPykDeFrj4ISf?=
 =?iso-8859-1?Q?aapFOm5cyxVHO+DogogmCoaJPNN/+kwIoWusnCLor/+X7mPohQF36Adp8u?=
 =?iso-8859-1?Q?oMQ+kihxnhsSvo3214sTnTJXOEw+/oHOGDfTtr9Bl4FmdaY92DjbYBMxsM?=
 =?iso-8859-1?Q?0A/e16c5n51Pgoyo84hcbkQFn4AdaK/dAGIqkP7yhwSL0Sfbu6MAs9rvOY?=
 =?iso-8859-1?Q?WKzEAjOh56GBFCnMs9EnM1/5f6RUNyIJlUktT6yxST+BlYl1OgYvnJMvNF?=
 =?iso-8859-1?Q?nIwN1dHcAhAu9kTqG3PWh0CuxDln+5chWjEv76IactkRUpXKgWD5/aa9ul?=
 =?iso-8859-1?Q?0VLFdvhgdzHIBKnpjGVILzYu4jtPQFJ6h0P40wRQJiNZfsCM1HwvlnhvFO?=
 =?iso-8859-1?Q?B5/H1KUX56A6fB4avqzvDpZGQQ71BWj3w+NGGIP8NCyq7cw1xWDaU4ib6A?=
 =?iso-8859-1?Q?EyFDZY19Vij/FVNM5dPbeq1RWd70cZbryH2lkDG0vwOQkeGnWbXtlKvaOY?=
 =?iso-8859-1?Q?T1KE6CaZ00RC0ZRHUft3wAJiQmKRoHS4c6w5zu/PSToat9Yj+elXncb2iu?=
 =?iso-8859-1?Q?O4SHuFkY8XGHvZ1L6KGeuPRnYesrR3cATGbHOZombCEnK0QLB+bHRsO38+?=
 =?iso-8859-1?Q?eUC86VSMq6VkXWE6E61cmEsZH1lPH/ZoBlrIMfuQ+ZMiKz71r/T8Wxzevy?=
 =?iso-8859-1?Q?ZCyOnwLJ9agjeowEVbOqcjsG60U1DgqjATOi68b5X4tfH7Nwn2B9Cz7hcF?=
 =?iso-8859-1?Q?8DVORRtSfGxJ3QK0JwpK/RotVh+4S12SGGAlMWIJdGXMIIKpbVJLd9OYyP?=
 =?iso-8859-1?Q?lqi8VT9ohZOi15mW4RQbU0ea3v4DeN+qmzyAufYO8aw8P1I/wPlbkMNCB+?=
 =?iso-8859-1?Q?V0xG5H5Q3fdp5GHfqIAGzfO+5L+MmSgCo65kWzwRocbBVWWrfrcIDFDo3I?=
 =?iso-8859-1?Q?EY+bYAZEEuyDnGkbiOUf87brRPnOi0zqmcKG6Gr2ILM33vUK7GKUjE0X5S?=
 =?iso-8859-1?Q?t+imnPSSRd+JCT6Cm7id3uYebjHi+i9nWKGCHA52XFiW2IQdamsXzpKs3p?=
 =?iso-8859-1?Q?wfl9RtMDYt82Sg3lwRYKyUkLVKtbrmXBDDntlrPOqrENDrOehsaXfl7zDv?=
 =?iso-8859-1?Q?NzVr1bWXfftc/jUXNvFYIFGXrv1HiI5+oTwb6/uVCQC0r57IBAWhDPexUj?=
 =?iso-8859-1?Q?iiwBTuqhLMF+scUv9V1X0kL9kZfcygioF1D6jSbPYdbrzEVfev/Ani7odp?=
 =?iso-8859-1?Q?aQnVgGuiWt0l0M2pbN6vJZAgyV2wZvAf6fam1YJkMTAns3bsDou/eB0dBF?=
 =?iso-8859-1?Q?hxQXhDWRqD4h/afeBMtMBk+fwbQt8fNSsQzrZrTQXt5XU4T+AAKqFXMWlz?=
 =?iso-8859-1?Q?8qkPeoEI1STM/rGqvEGa3HhZMT4oU64QJ7jV2nXcnxzpXnDZYcxpwA8ezp?=
 =?iso-8859-1?Q?/N+WW49Z6C5sqAeYU8WpISlmwDPyPbLvMiEygVEI9Bqs4j4J/lBwzsiETh?=
 =?iso-8859-1?Q?rk/PnwhlzqgPqHeAWHf6ryg7OK6ZLj8LIk8IMrWShJZUdRMmZ7V4i4LlCT?=
 =?iso-8859-1?Q?x5OklJLqHYghxKnVRbQHH3u3r/1X4S7is+?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87973AB80F5E09D4FCFE2814B96CABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bf8d1f1-802b-4750-b172-08dda31a6d64
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 03:46:45.6192
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dCwrJYliRJUBsIGiwlFBagABpRUFRNc4u8lJSVZ6JyHAiUVgBzTia30sRQA2hUQT9mF2byR30ap+ZgEDfePC+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5831
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jun 2025 03:47:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65463

--_000_BL4PR11MB87973AB80F5E09D4FCFE2814B96CABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.2.1 Release is now available=
 for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/poky-fd9b60550=
7a20d850a9991316cd190c1d20dc4a6.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.2.1/poky-fd9b605507a20d850a99=
91316cd190c1d20dc4a6.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/testreport.txt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.2.1 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: walnascar
Tag: yocto-5.2.1
Git Revision: fd9b605507a20d850a9991316cd190c1d20dc4a6
Release Artefact: poky-fd9b605507a20d850a9991316cd190c1d20dc4a6
sha: 0234a96fc28e60e0acaae2a03118ecde76810c47e8bb259f4950492bd75fc050
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/poky-fd9b6055=
07a20d850a9991316cd190c1d20dc4a6.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.1/poky-fd9b605507a20d850a9=
991316cd190c1d20dc4a6.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: walnascar
Tag: yocto-5.2.1
Git Revision: 17affdaa600896282e07fb4d64cb23195673baa1
Release Artefact: oecore-17affdaa600896282e07fb4d64cb23195673baa1
sha: b6c3c15004fcd1efbaa26c9695202806402730dde8e41552a70140cff67c97c9
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/oecore-17affd=
aa600896282e07fb4d64cb23195673baa1.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.1/oecore-17affdaa600896282=
e07fb4d64cb23195673baa1.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: walnascar
Tag: yocto-5.2.1
Git Revision: edce693e1b8fabd84651aa6c0888aafbcf238577
Release Artefact: meta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577
sha: 6cfed41b54f83da91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/meta-mingw-ed=
ce693e1b8fabd84651aa6c0888aafbcf238577.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.1/meta-mingw-edce693e1b8fa=
bd84651aa6c0888aafbcf238577.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.12
Tag: yocto-5.2.1
Git Revision: 5b4e20377eea8d428edf1aeb2187c18f82ca6757
Release Artefact: bitbake-5b4e20377eea8d428edf1aeb2187c18f82ca6757
sha: 48cff22c1e61f47adce474b636ca865e7e0b62293fc5c8829d09e7f1ac5252af
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/bitbake-5b4e2=
0377eea8d428edf1aeb2187c18f82ca6757.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.1/bitbake-5b4e20377eea8d42=
8edf1aeb2187c18f82ca6757.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: walnascar
Tag: yocto-5.2.1
Git Revision: 6b7019c13054bf11fb16657a3fac85831352cea9


---------------
Contributors
---------------
Adrian Freihofer
Aleksandar Nikolic
Alon Bar-Lev
Antonin Godard
Archana Polampalli
Changqing Li
Deepesh Varatharajan
Divya Chellam
Enrico J=F6rns
Gu=F0ni M=E1r Gilbert
Haixiao Yan
Hongxu Jia
Jiaying Song
Khem Raj
Lee Chee Yang
Leonard Anderweit
Madhu Marri
Mikko Rapeli
Peter Kjellerstedt
Peter Marko
Praveen Kumar
Priyal Doshi
Steve Sakoman
Trevor Woerner
Yi Zhao
Yogita Urade
rajmohan r

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
connman :Fix CVE-2025-32366 CVE-2025-32743
ffmpeg: Fix CVE-2025-22921
go: Fix CVE-2025-22871 CVE-2025-22873
iputils: Fix CVE-2025-47268
libsoup-2.4: Fix CVE-2024-52532 CVE-2025-32911
libxml2: Fix CVE-2025-32414 CVE-2025-32415
openssh: Fix CVE-2025-32728
perl: Fix CVE-2024-56406
qemu: Ignore CVE-2023-1386
ruby: Fix CVE-2025-27219 CVE-2025-27220 CVE-2025-27221
webkitgtk: Fix CVE-2024-54551 CVE-2025-24208 CVE-2025-24209 CVE-2025-24213 =
CVE-2025-24216 CVE-2025-24264 CVE-2025-30427



--_000_BL4PR11MB87973AB80F5E09D4FCFE2814B96CABL4PR11MB8797namp_
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
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 5.2.1 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.1/poky-fd9b605507a20d850=
a9991316cd190c1d20dc4a6.tar.bz2">http://downloads.yoctoproject.org/releases=
/yocto/yocto-5.2.1/poky-fd9b605507a20d850a9991316cd190c1d20dc4a6.tar.bz2</a=
><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://m=
irrors.kernel.org/yocto/yocto/yocto-5.2.1/poky-fd9b605507a20d850a9991316cd1=
90c1d20dc4a6.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yocto-5.2.1/pok=
y-fd9b605507a20d850a9991316cd190c1d20dc4a6.tar.bz2</a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.1/RELEASENOTES">http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.1/RELEASENOTES</a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-5.2.1/testreport.txt">http:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.2.1/testreport.txt</a><o=
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
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.2.1 Release=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: fd9b6=
05507a20d850a9991316cd190c1d20dc4a6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-fd9b605507a20d850a9991316cd190c1d20dc4a6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 0234a96fc28e60=
e0acaae2a03118ecde76810c47e8bb259f4950492bd75fc050<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.1/poky-fd9b605507a20d850a9991316cd=
190c1d20dc4a6.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.1/poky-fd9b605507a20d850a9991316cd190c1d20dc4=
a6.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 17aff=
daa600896282e07fb4d64cb23195673baa1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-17affdaa600896282e07fb4d64cb23195673baa1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: b6c3c15004fcd1=
efbaa26c9695202806402730dde8e41552a70140cff67c97c9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.1/oecore-17affdaa600896282e07fb4d6=
4cb23195673baa1.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.1/oecore-17affdaa600896282e07fb4d64cb23195673=
baa1.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: edce6=
93e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 6cfed41b54f83d=
a91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.1/meta-mingw-edce693e1b8fabd84651a=
a6c0888aafbcf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.1/meta-mingw-edce693e1b8fabd84651aa6c0888aafb=
cf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.12<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 5b4e2=
0377eea8d428edf1aeb2187c18f82ca6757<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-5b4e20377eea8d428edf1aeb2187c18f82ca6757<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 48cff22c1e61f4=
7adce474b636ca865e7e0b62293fc5c8829d09e7f1ac5252af<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.1/bitbake-5b4e20377eea8d428edf1aeb=
2187c18f82ca6757.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.1/bitbake-5b4e20377eea8d428edf1aeb2187c18f82c=
a6757.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 6b701=
9c13054bf11fb16657a3fac85831352cea9<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adrian Freihofer<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alon Bar-Lev<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Enrico J=F6rns<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=F0ni M=E1r Gilbe=
rt <br>
Haixiao Yan<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Leonard Anderweit<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Madhu Marri<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mikko Rapeli<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Kjellerstedt<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Priyal Doshi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Woerner<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rajmohan r<o:p></o:=
p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">connman :Fix CVE-20=
25-32366 CVE-2025-32743<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
5-22921<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-22=
871 CVE-2025-22873<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">iputils: Fix CVE-20=
25-47268<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2024-52532 CVE-2025-32911<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
25-32414 CVE-2025-32415<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Fix CVE-20=
25-32728<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">perl: Fix CVE-2024-=
56406<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Ignore CVE-20=
23-1386<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2025-=
27219 CVE-2025-27220 CVE-2025-27221<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: Fix CVE-=
2024-54551 CVE-2025-24208 CVE-2025-24209 CVE-2025-24213 CVE-2025-24216 CVE-=
2025-24264 CVE-2025-30427<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_BL4PR11MB87973AB80F5E09D4FCFE2814B96CABL4PR11MB8797namp_--

