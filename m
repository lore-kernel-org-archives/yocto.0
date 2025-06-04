Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B032C5B549
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 03:31:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by mx.groups.io with SMTP id smtpd.web11.7956.1749007881102891203
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 20:31:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=UN4N9Cpp;
 spf=pass (domain: intel.com, ip: 192.198.163.16, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1749007881; x=1780543881;
  h=from:to:subject:date:message-id:mime-version;
  bh=z/lQDYDDFceoDU0j2l6zQJ1Rp0+qFoAjL8cCwv4K0dU=;
  b=UN4N9Cpp65ilg5cizFD32L9wObfAWCI7iFc000pIOmrDRVhBHLm5C05A
   2n+ZAh/3hDCuMnQQibTuPimY9f3QrSgowrMOJtD1PUKw3hemy+zwIt0JY
   xEwvzz2+nLFnauGvlGqJL2OBzFO7voE5/W1YOtpldI6OZJZJSNBwy4qM4
   EYKG2wuD08joHpeLJldfsc8Xfembit7zFnVpE3iu3R9XS1eKt0+JZG51j
   bqDzisYPmuK+PhQEdNfPan2J85c1PyGXbdWl/drxFi36qoRZoNpD1syvh
   iQK4g17VUnxiWAq352fy7zvlLJIifMyOiRQLYCmfFm/YF9ClFQ7Sc9e9r
   Q==;
X-CSE-ConnectionGUID: NvM7FD8mSIKXj41Fp2afyQ==
X-CSE-MsgGUID: kcpWQADVSfCXA2zutHwYMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="38702462"
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; 
   d="scan'208,217";a="38702462"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2025 20:31:20 -0700
X-CSE-ConnectionGUID: sD2mNNVPSyqTvkoNcseAZA==
X-CSE-MsgGUID: 2d+rkHU2SGuiHXaFO4pVNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; 
   d="scan'208,217";a="149836452"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2025 20:31:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 20:31:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 20:31:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.89)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 20:31:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rM10T57cA/Yb3MOdjABm0PiLP7RaFKcGTB7woJxDh28jT0yWjevmTkmkIjzxtIUUpvD+f14t5bFPY/82YhqnX/CD0AT5b2uL/5vNY8g8+k7R1YiNjsW0KZBa8CY3SjbRJKz4TscnbagK81S78nH7bIiRtDR3306TzyKMJgAYbgWJhHS1ryGgdLaDgP6mhvI0EkY0psvlvisSdG0+KzBSoTGSN9lQBbF4NK4VwFaPZB85J1G3OSPx3zJQWUmvjjTqzli2Pxb3/Zk4jWCKRy5EswG45CTVCr+4rZv0EBo1KNF+gNvyS0doO3FAwrK++Fo2vyWRNw3flJHvVUasgH7xpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81dY9Qx9sXtRXXz0uHFSiwjpfYY/z6GdHVfkaPk/jHk=;
 b=xOZ+zQe48jqdVK2oCA0raheJHBUDp2YW3pozH2lo59iXJ/WXnFHWH6noYf/SVwRgXQCZzNjeHfQR9gf2aAwRonVYUUKmZ0Mhyu25s6/IB+I9zd6ENjVcv1i3G0CDoAxGMm9rvYxY6kbKDQM9JJBdkPPKO3p42zI5xkw/20ARthmMYj2jlER1XT0Xk69snTDfbkn3OAB0DipoGaewMbJe9ijDBQO0GbXBH1DwkO1cHMRPe+1bUzJprarAVEBoOONzJUfoZJLcH6+BdkiG9nPVK19EuFlfilUmkzXqgOpZer3tonI9nfKEUVUmLvyupCKKwcREs/gUpThEtO7Ky2iJTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by CH3PR11MB7865.namprd11.prod.outlook.com (2603:10b6:610:128::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Wed, 4 Jun
 2025 03:31:04 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8792.034; Wed, 4 Jun 2025
 03:31:04 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.27 (Kirkstone-4.0.27) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.27 (Kirkstone-4.0.27) is
 Released
Thread-Index: AdvU+C9mopnXgdFdShK7yn3dnE/QGw==
Date: Wed, 4 Jun 2025 03:31:04 +0000
Message-ID: <BL4PR11MB8797E7890BAD581868207E6CB96CA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|CH3PR11MB7865:EE_
x-ms-office365-filtering-correlation-id: 8eb8c0c8-69c3-40f0-b10f-08dda3183c3b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|13003099007|8096899003|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FDFcCTtM7aFEQxWEapELZRrGphnpSUmfJgxNRSOad4TknTqz991HP6tk2Tyn?=
 =?us-ascii?Q?WOOHlFax8+oFWcnlCYSZC0NJ5z6HOgbspqcCOAPYFwp0zybeIKkzPunRY1C8?=
 =?us-ascii?Q?7fTIWunA1V6oXw+rjORtGhBTKguNfTCec0ZkpKEXwvWwOOjDgpWQ6nnHmyID?=
 =?us-ascii?Q?QQKauoiOzWxXvfU4cZRhe9FBGZmXQPFlGg9hEZRyxQSaGA8l8Eu4EBhTLsDt?=
 =?us-ascii?Q?HoVmONb+F5qVQeLtiEWiG0/4yrbr0VMPbVGm/kB0jhiA7l/jM6sAlA5gLmRO?=
 =?us-ascii?Q?ltydwIxiT56oyCDeNpTfcjtOiwiLPlJdsO0aKa0Syeqadj/Os8z+FZFAHuNm?=
 =?us-ascii?Q?VkGyECEMB7D5fe66ryBEMeJMBRD8QHXmxK89LKgf8xo2GES32RwnI3wK7a3A?=
 =?us-ascii?Q?mtWBr8U0Q3XmgcY6ohErqq8G8y+9DwxLkTmxVAHmgDexBGuhALawd8ZAulQv?=
 =?us-ascii?Q?k9CRgobCtysZw0AJBfV5kVsAJn7ZrAXAP4MO6+9L0TZqKxghg8YII3UnKYbi?=
 =?us-ascii?Q?rxCnvDHRwtGDiinTLbEP6jWcHj9x0SbtZ6V+99fSrtIJyFXCPJukpzBNKANK?=
 =?us-ascii?Q?WdhTuS18hw5lr94iXlfoQH/ioknVe7rRopgl7FnG5L7MMS1ccbmtirgQTWgJ?=
 =?us-ascii?Q?ujXL45s3vSGjS+P6i+H/WlcN9Ikxt1lT0PwGNRel0FuX97jUB3V4PY4UXShb?=
 =?us-ascii?Q?J75XsaGd5NLNjdLN9m8MKQB7sNovgzLxQV3pEeak+tftEl5AMN75zd5G9z/N?=
 =?us-ascii?Q?EfS9zBarX/KXiHcg9nzxobTkLRO8wzXnsgZrK5b1+zmDMC2JI55AWwDseXwB?=
 =?us-ascii?Q?DlwLhrgH2Crh4MQp+TOO+0b0+HSKZ/k8rjQPAGU+c/FqzGE7G/iXw0ZL9YQT?=
 =?us-ascii?Q?niPbv49IKmB12I0CvsMSSMDpY2XSRsyHmu8mMAvpibfgp9rDMjuHLYtADs4j?=
 =?us-ascii?Q?LL4z3NO42iCN/Sq0Gd/zPSRnms/Mf/uT2zY1wlsqO18kAlSR8Am1JSKVVdUb?=
 =?us-ascii?Q?66ToNh5rdTArs5bpG4ZVSlUEb+rwHJvNSIgaPSNYrrp+j0hVvS2mIxVkGrtf?=
 =?us-ascii?Q?5d7G0zYeVSzhY73K6t9H46Dcjq34sDofrtyPlA6lzz2jC/D4h0oyjOkLFTp7?=
 =?us-ascii?Q?Juk2vCjUngkH3upQCo0QjCI/AwsTyK6f1P6W9rSkO6Dvcgs1tDTQLRo9P+Oj?=
 =?us-ascii?Q?kI9fem6GTb124DCAIenU5ixhZUPNVDzoyagWkyMvWpdvEookHM73q2jX4Ztz?=
 =?us-ascii?Q?NIAUFvch3uDXPiRFc1J8nhsd5+VtLXXQ/YC0sWC7nVEva0kkvl3f7JqBAq8F?=
 =?us-ascii?Q?Vtn5X4R5tZO+q7Hliohnso8Lz5tsHS5N7W+490n+JuM4q+itlfflWUxqVEU5?=
 =?us-ascii?Q?odAxkq39n3Uls3uFf78jf2rdiJOl7aUbhFAXhAvNnWSpK0Xg+NRfEjA/df2/?=
 =?us-ascii?Q?mkFqTfY14Ls=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(13003099007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eztXTEr1/jDjjZorjInpiR3uHGIlcO36MoJFXrgacbtaF3Tzqr3GyuU4ZUxa?=
 =?us-ascii?Q?sFsEceEFe3RzvV9is7fYzXxI5sTxWmbd6TNhkV3adxp5vlfachH/s1OPbk+Q?=
 =?us-ascii?Q?l0c+fI7EF4betwp5MZoLQIjlzLRZ28WgG19r41HNlLWkDqmHsmmLZdvqCgLg?=
 =?us-ascii?Q?nDS1VRy4Pc9z/9KfNSGFBhY41fDc3RGxNxCbL7/2IR1X1xeXSw0gKqIzQJIv?=
 =?us-ascii?Q?qCnFDOHtst7o/yFvQCy4HQdm7Im/2TRY1mvhV1nv2IiTalLdbgKAIy9BOife?=
 =?us-ascii?Q?sJs4ZH6Cgp/MyE6CljaNH1H8n+eETkBectMEZfVSdhfasEY7zjBNd8yVRYqw?=
 =?us-ascii?Q?/+RDQCy0tT2jnWxu/io/oAzEBG2T2SRfElACNfZ6vw+B5KbWid08fQn22O1L?=
 =?us-ascii?Q?rjVX5xdxUOO/rXGXQ0Sq/MxPE1BB8wcY3jmeWfUff7ESvzSoSfVQy8m04cA+?=
 =?us-ascii?Q?FckqMVbICF+Fta8ADgXvwDX3J6001LI0CMx+UnJu7YPdQh7sHKA7LrYizM3h?=
 =?us-ascii?Q?r8qS/OcZcWDIEKO1qyr2yMwyA5PYnh6UV8ZYxnIU6rg+mzL1ALhnzCyQAghl?=
 =?us-ascii?Q?Hjedzi095W/HHcqsZd76vVywoCx0iAsC9F7Rf1jkvSW1M6N6tEH6tkk+fzkc?=
 =?us-ascii?Q?8F+c0X6BS6icOw3uzc5Qj+/LgvP5eXCD34x+SAHwJmG2r9172s45mfj2YKlY?=
 =?us-ascii?Q?HrPLc4fOHAUEb0YKq3N0B6/loHOhfby+s/tFfTPFwi2cLNy5xgCUFNz5HWcl?=
 =?us-ascii?Q?J1HWaaxH/DG0NJ4Q7bz/0mjlKczzzQGLHS132hPkvG/Pz/1uvdhUNx7fUP6k?=
 =?us-ascii?Q?3WLLG2YFwAMnoyNrIP4Oh/ZX9Jq5EBPpflQe9v0ueXudvarJrfxj9TBn/URr?=
 =?us-ascii?Q?z2mjUf/ZLM2Vx4k0yoptbOqlONLG+aRIedWkydMaIXmNs0RhG/OdcOEIgaiy?=
 =?us-ascii?Q?G2r1PHLg/7GYHWLIiD5EdPhuzeStGUOTIl10izYryjG596caIE2GSiZJShS+?=
 =?us-ascii?Q?oM7aDJp3G/TTJGsbn8tSdFK0qF6NoiKwhUHnQihTumI1oEC7nr7czqP49x74?=
 =?us-ascii?Q?IW+uUW8DG+WN3lEeVPBYAIsciCzDHfJGpzaET0A3XQ0lWzIxw3SNMMmiwMyU?=
 =?us-ascii?Q?KIuyuwEbe1qUHDlkXgfgVH0WDT/e7FkMwzhSRVGLNiO7/sftV3CQJmNwvetz?=
 =?us-ascii?Q?XIeGf0gt4XJZKkmt7E7LWT5MjRqhcEwK9kkhbYnWH/Gb4ePzGOG7rcD7YvNj?=
 =?us-ascii?Q?mhtj4qDH6czVNvmys75Uqcg4d9SlOejmm9vpbNwNIi7ClsETMWlfnpXlH0MS?=
 =?us-ascii?Q?5cst9O43Bzim9ilBCfqBfUMQ3DWcgC+TaXp2DmGl9Drko3Akw3acth1KuGbL?=
 =?us-ascii?Q?df2Doej8iNXwj7u+0v7IoqNrpVYzwc75WpM9Yin5BrN2JMLwBCP7GsMsC53v?=
 =?us-ascii?Q?co4nx0iBOqoFmXOLYU44cyTOzIMcxQYVsitmEBHRSqmjo5LdlI1LSZyRHFm1?=
 =?us-ascii?Q?iW8Wi6JJmYAR89wz79vbnueIsa2W7+WeMn/j5eGiMpyTRsH1xhYH9Yw0XuyL?=
 =?us-ascii?Q?PstnkdKfARDsWfgfbk9ByV89Gl5aQky3n2PqAGIg?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797E7890BAD581868207E6CB96CABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eb8c0c8-69c3-40f0-b10f-08dda3183c3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 03:31:04.1277
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n02GFVJG6FzX1x96CM1bX9nguylm+QyaLrsOIFfPZywuWPH9YSdLfKyM+FetRIbc//6cjBs65MuifyxtyCbZTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7865
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jun 2025 03:31:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65462

--_000_BL4PR11MB8797E7890BAD581868207E6CB96CABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.27 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/poky-ab9a994=
a8cd8e06b519a693db444030999d273b7.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.27/poky-ab9a994a8cd8e06b51=
9a693db444030999d273b7.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-4.0.27 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.27
Git Revision: ab9a994a8cd8e06b519a693db444030999d273b7
Release Artefact: poky-ab9a994a8cd8e06b519a693db444030999d273b7
sha: 77a366c17cf29eef15c6ff3f44e73f81c07288c723fd4a6dbd8c7ee9b79933f3
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/poky-ab9a994=
a8cd8e06b519a693db444030999d273b7.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.27/poky-ab9a994a8cd8e06b51=
9a693db444030999d273b7.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.27
Git Revision: e8be08a624b2d024715a5c8b0c37f2345a02336b
Release Artefact: oecore-e8be08a624b2d024715a5c8b0c37f2345a02336b
sha: cc5b0fadab021c6dc61f37fc4ff01a1cf657e7c219488ce264bede42f7f6212f
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/oecore-e8be0=
8a624b2d024715a5c8b0c37f2345a02336b.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.27/oecore-e8be08a624b2d024=
715a5c8b0c37f2345a02336b.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.27
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.27/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.27
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.27/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.27
Git Revision: 046871d9fd76efdca7b72718b328d8f545523f7e
Release Artefact: bitbake-046871d9fd76efdca7b72718b328d8f545523f7e
sha: e9df0a9f5921b583b539188d66b23f120e1751000e7822e76c3391d5c76ee21a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/bitbake-0468=
71d9fd76efdca7b72718b328d8f545523f7e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.27/bitbake-046871d9fd76efd=
ca7b72718b328d8f545523f7e.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.27
Git Revision: 0d51e553d5f83eea6634e03ddc9c7740bf72fcea


---------------
Contributors
---------------
Aleksandar Nikolic
Alexander Kanavin
Alon Bar-Lev
Andrew Kreimer
Antonin Godard
Chen Qi
Deepesh Varatharajan
Divya Chellam
Haitao Liu
Haixiao Yan
Hitendra Prajapati
Peter Marko
Praveen Kumar
Priyal Doshi
Shubham Kulkarni
Soumya Sambu
Steve Sakoman
Vijay Anusuri
Yogita Urade


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-1178
busybox: fix CVE-2023-39810
connman :fix CVE-2025-32743
curl: Ignore CVE-2025-0725
ghostscript: Fix CVE-2025-27830 CVE-2025-27831 CVE-2025-27832 CVE-2025-2783=
4 CVE-2025-27835 CVE-2025-27836
ghostscript: Ignore CVE-2024-29507 CVE-2025-27833 CVE-2025-27837
glib-2.0: Fix CVE-2025-3360
go: Fix CVE-2025-22871
libarchive: Ignore CVE-2024-48615
libpam: Fix CVE-2024-10041
libsoup-2.4: Fix CVE-2024-52532 CVE-2025-32906 CVE-2025-32909
libsoup: Fix CVE-2024-52532 CVE-2025-32906 CVE-2025-32909 CVE-2025-32910 CV=
E-2025-32911 CVE-2025-32912 CVE-2025-32913 CVE-2025-32914
libxml2: Fix CVE-2025-32414 CVE-2025-32415
ofono: Fix CVE-2024-7537
perl: Fix CVE-2024-56406
ppp: Fix CVE-2024-58250
python3-setuptools: Fix CVE-2024-6345
qemu: Ignore CVE-2023-1386
ruby: Fix CVE-2024-43398
sqlite3: Fix CVE-2025-29088
systemd: Ignore CVE-2022-3821 CVE-2022-4415 CVE-2022-45873


---------------
Fixes
---------------
Revert "cve-update-nvd2-native: Tweak to work better with NFS DL_DIR"
build-appliance-image: Update to kirkstone head revision
cve-update-nvd2-native: add workaround for json5 style list
docs: Fix dead links that use the DISTRO macro
docs: manuals: remove repeated word
docs: poky.yaml: introduce DISTRO_LATEST_TAG
glibc: Add single-threaded fast path to rand()
glibc: stable 2.35 branch updates
module.bbclass: add KBUILD_EXTRA_SYMBOLS to install
perl: enable _GNU_SOURCE define via d_gnulibc
poky.conf: bump version for 4.0.27
ref-manual/variables.rst: document autotools class related variables
scripts/install-buildtools: Update to 4.0.26
systemd: backport patch to fix journal issue
systemd: systemd-journald fails to setup LogNamespace
tzdata/tzcode-native: upgrade to 2025b



--_000_BL4PR11MB8797E7890BAD581868207E6CB96CABL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 4.0.27 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/poky-ab9a994a8cd8e06=
b519a693db444030999d273b7.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.27/poky-ab9a994a8cd8e06b519a693db444030999d273b7.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-4.0.27/poky-ab9a994a8cd8e06b519a693db4=
44030999d273b7.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.27=
/poky-ab9a994a8cd8e06b519a693db444030999d273b7.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.27/testreport.txt</=
a><o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.27 Releas=
e Notes<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.27<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ab9a9=
94a8cd8e06b519a693db444030999d273b7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-ab9a994a8cd8e06b519a693db444030999d273b7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 77a366c17cf29e=
ef15c6ff3f44e73f81c07288c723fd4a6dbd8c7ee9b79933f3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.27/poky-ab9a994a8cd8e06b519a693db4=
44030999d273b7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.27/poky-ab9a994a8cd8e06b519a693db444030999d27=
3b7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.27<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: e8be0=
8a624b2d024715a5c8b0c37f2345a02336b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-e8be08a624b2d024715a5c8b0c37f2345a02336b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: cc5b0fadab021c=
6dc61f37fc4ff01a1cf657e7c219488ce264bede42f7f6212f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.27/oecore-e8be08a624b2d024715a5c8b=
0c37f2345a02336b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.27/oecore-e8be08a624b2d024715a5c8b0c37f2345a0=
2336b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.27<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 87c22=
abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: f0bc4873e2e031=
9fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.27/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.27/meta-mingw-87c22abb1f11be430caf4372e6b833d=
c7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.27<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d2f8b=
5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: c386f59f8a6727=
47dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.27/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.27/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.27<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 04687=
1d9fd76efdca7b72718b328d8f545523f7e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-046871d9fd76efdca7b72718b328d8f545523f7e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: e9df0a9f5921b5=
83b539188d66b23f120e1751000e7822e76c3391d5c76ee21a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.27/bitbake-046871d9fd76efdca7b7271=
8b328d8f545523f7e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.27/bitbake-046871d9fd76efdca7b72718b328d8f545=
523f7e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.27<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 0d51e=
553d5f83eea6634e03ddc9c7740bf72fcea
<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alon Bar-Lev<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Andrew Kreimer<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Haitao Liu<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Haixiao Yan<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Priyal Doshi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Shubham Kulkarni<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-1178<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">busybox: fix CVE-20=
23-39810<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">connman :fix CVE-20=
25-32743<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Ignore CVE-20=
25-0725<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2025-27830 CVE-2025-27831 CVE-2025-27832 CVE-2025-27834 CVE-2025-27835 CV=
E-2025-27836<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Ignore=
 CVE-2024-29507 CVE-2025-27833 CVE-2025-27837<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Fix CVE-2=
025-3360<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-22=
871<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Ignore =
CVE-2024-48615<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
4-10041<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2024-52532 CVE-2025-32906 CVE-2025-32909<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
24-52532 CVE-2025-32906 CVE-2025-32909 CVE-2025-32910 CVE-2025-32911 CVE-20=
25-32912 CVE-2025-32913 CVE-2025-32914<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
25-32414 CVE-2025-32415<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ofono: Fix CVE-2024=
-7537<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">perl: Fix CVE-2024-=
56406<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ppp: Fix CVE-2024-5=
8250<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools:=
 Fix CVE-2024-6345<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Ignore CVE-20=
23-1386<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2024-=
43398<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Fix CVE-20=
25-29088<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: Ignore CVE=
-2022-3821 CVE-2022-4415 CVE-2022-45873<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Revert &quot;cve-up=
date-nvd2-native: Tweak to work better with NFS DL_DIR&quot;<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: add workaround for json5 style list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Fix dead link=
s that use the DISTRO macro<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: manuals: remo=
ve repeated word<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: poky.yaml: in=
troduce DISTRO_LATEST_TAG<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Add single-t=
hreaded fast path to rand()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.35 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">module.bbclass: add=
 KBUILD_EXTRA_SYMBOLS to install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">perl: enable _GNU_S=
OURCE define via d_gnulibc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document autotools class related variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.26<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: backport p=
atch to fix journal issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: systemd-jo=
urnald fails to setup LogNamespace<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata/tzcode-nativ=
e: upgrade to 2025b<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797E7890BAD581868207E6CB96CABL4PR11MB8797namp_--

