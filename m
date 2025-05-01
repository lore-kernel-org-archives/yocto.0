Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B9CC3ABA9
	for <webhook@archiver.kernel.org>; Thu,  1 May 2025 12:59:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by mx.groups.io with SMTP id smtpd.web10.11150.1746104363534167128
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 May 2025 05:59:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=m6gE6Ipx;
 spf=pass (domain: intel.com, ip: 198.175.65.10, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1746104363; x=1777640363;
  h=from:to:subject:date:message-id:mime-version;
  bh=yxIhNWY7H5Ijd2UmETf6pqV5B7IRV8RiHpM+G9FTaMA=;
  b=m6gE6Ipx6kGJv5GLCQpkqXBSXz7ye30ToZU4cNXtUkrnSlp8e43L+p36
   EI36xxobJowVNOJhZ8X4wst0toyglPEQSnq+SBfhos8dmb7e/tF5N5ujN
   scWqmImPLL85MnKRS4YoYND2K8e8BfHLtjzeX308ryHU/wplGdYm4sNy7
   ezZV9VgiNX983c7iRA9XumuQRpX3oUr8qGdbaAiUhEDbo/mVR/zFnDSUB
   thWQzMTQ2ZS4AD/87VOyNnMsgg5/sFUjJb4v3/VP0tU9mVy346riTXDo0
   7FK6ylFb80e2fsx5qzkIw9yZvalGYqft4bHTT/b5kptXz2POMca+XoQB8
   Q==;
X-CSE-ConnectionGUID: SYxZj1dsTDmxUuAgzk0xmg==
X-CSE-MsgGUID: 1mzUNU73QoyPZpHFsABZDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="65187241"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; 
   d="scan'208,217";a="65187241"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 May 2025 05:59:23 -0700
X-CSE-ConnectionGUID: t4ezVHokTAGHQWqg1wm2Vw==
X-CSE-MsgGUID: YpPRLKpORGaj8ADl3U5dTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; 
   d="scan'208,217";a="165296885"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 May 2025 05:59:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 05:59:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 05:59:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 05:59:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n0uhT+Svas7tgr9Oh6CtEB7z/+QwaGd7pLedReiIVoHB7re048bEWj0EEvsqt+z34yaXg3wEJI/x5PXc3xu6Wf+0iLMfhCJ9o/eDsVppuhLLfDN8tbc9z/McTugneaF+5jmupp229201cfyPe3M846Pndl2UEC2Bxr4eaLxCEPGYsrLo+z4Yj5rpINsfXzL8BAcLCVvENiCFFchSLUT1j6ISCafGf0lCyuCjJCvG6ylTK+fBHbdFFrXlT2wBpuD0MFvEoUhFUrzjSXYka0T6VVZkBRsHKxpNHYJ0Wi4CcP0/qyedAuz6AOt6SqyNyIvbqyZgRkYmfDC3p5Pdb/01ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LNThiMVJ4CCiM9xw9I7XiJr5tmqraqUgLEmZCc2MIu4=;
 b=TvF5Nx6O1KPBxqBgcYETXYO/JtQGoaII1Rd562h3sn1sfgzjhIT2A4xY8JZj6S6p5UBMhxIBHbQei9GPOUMe7cEQrC0ZKOUkpYkeLUUf29VFnSHH3qkUBxhM42emuTe4+NJPg3PHI9bKV6W54GN05PndRDmf5qzz9GnaTUEeRnrNcYNNACN8FvC5L9pa1vK8AQqN2zE15sF6eY8TKoIa+1v+r79Cz1Nlnnz3ObBSBIJdcyJ0gsbvj6Yr0yIXYAnpM1EXaPHMdHvUNtQ2jN86t3sEsUYWnTW5xwpprOY9A01G1v/EpvjWXHQR1qtmFTr1gwkGVDFgbD5psPVjI4nFwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by MN2PR11MB4678.namprd11.prod.outlook.com (2603:10b6:208:264::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Thu, 1 May
 2025 12:58:52 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8699.012; Thu, 1 May 2025
 12:58:52 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.9 (Scarthgap-5.0.9) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.9 (Scarthgap-5.0.9) is Released
Thread-Index: Adu6kkCfZFPT5+JURk+jAiPqWD8VAQ==
Date: Thu, 1 May 2025 12:58:52 +0000
Message-ID: <BL4PR11MB87976F0C171EBD7D651B6553B9822@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|MN2PR11MB4678:EE_
x-ms-office365-filtering-correlation-id: 236b39b3-7813-45d0-f44b-08dd88afec67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|376014|366016|1800799024|38070700018|13003099007|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?O23uVdUJsYs95pJqmPFVV+wMG2cPwBh+i+l3hPjnTZe+qKqlYFUGoIomyoCQ?=
 =?us-ascii?Q?ulVN+KGoKm/CDs8//FPFVTjxLyWN0blKU2W86pHb0iv0+dxm5qrPbRmEXXlg?=
 =?us-ascii?Q?kXcWENAw89NDrXHLIZVitewJqKGJ1hqC56t5PO4aSSNwuaa2QcdTwH31Dp/E?=
 =?us-ascii?Q?pcQc80SoiVLigosxNcKQT6b0TQTALtcEIbb7Y+1uAiAnI8yelO1CibqFhYp0?=
 =?us-ascii?Q?5D25QNDsTO6w7Wa4RZ1GRYL7NqPez+JOFWys/XE0UkgvsOhE+E6mXjrS0Mde?=
 =?us-ascii?Q?7U8BAkkUwpr7QXhYHSaEfCA6pLN+piYsujw3vdr1CSnWMjewAp20qumIMsug?=
 =?us-ascii?Q?6K5D+gDPAaeV8zgoSIQ7si6Y5B1LnRHzZDK0VOQtipOnL+eu3T95XVdrWevp?=
 =?us-ascii?Q?ouPTxe6JuQS23gQihnrt3spgc0SBf2m6QSN0WXYYKjpDDxgbNIp97d7ULv/0?=
 =?us-ascii?Q?09NDEe2qVAGnShvJ6KkghsplfD/iQDJW5hCPxIll3nLFlBNWmdauY1n1baSs?=
 =?us-ascii?Q?gNGroJap4Avl8s4tedszuR0xrYXrO6OIEmgTsav9zIZHKnQ1dqasTaDQx7BN?=
 =?us-ascii?Q?W6YoO2Mrn32hmUMZfQ1++UqhljsZ2y7DHwZ7+7W5UWaICt/BpavesyiWDYcc?=
 =?us-ascii?Q?DnlwL3me9oTjErusICxtFpCH9bJgX19T2x90mpuEG/TWf5qQ4NeQ/f5h2sHE?=
 =?us-ascii?Q?nRPtyu2VJCA1AuyVhbu3iFbENVVaOopF8kcCdKsL+Mvb9ppIOY5equfpWlGP?=
 =?us-ascii?Q?+gMVu036509TcvwrduxAI8S3fF//c2x+sh2P+T+5GPE0LeuQCueUkf/BzrCN?=
 =?us-ascii?Q?9QueZCGtK3KTMlWBsiE5+XdSXb3aZs7LsYQIvU9zw8Pc6Wy6fG4sVhJt801h?=
 =?us-ascii?Q?PnqeNUBaFEhaQ5GM2D9a01VapzQ/X81CQjWpUPTEsHQGvoYArKySr+hbMdWN?=
 =?us-ascii?Q?9QnMr2l4j1NlwqNAr4udMx/w/IUHULB33x46VtPIZUx7v4pbBOVkakpfCibX?=
 =?us-ascii?Q?HKF4u1hqNLOBtZ222qFqCgla583K0868zfxRkPPKAVpZJBYVlogDGHTcZYHR?=
 =?us-ascii?Q?VQ0Rx1W8Viy0Ckd616eoWgVyeHDLB9Ktk+PCL47KKU8TUlZSaCCC9AA6d9CB?=
 =?us-ascii?Q?3Biwt4YSirf+uUB38IAF0RWJMJJGMytMdSszSNY1uMQEAANc8S9vvbgqy8tg?=
 =?us-ascii?Q?lXYKuM5Ao1rP6soHhu5mgYaALbBIwgx8Aj3MAizbf6sDR74vvVWL1DpuaXgV?=
 =?us-ascii?Q?U1gcEkM7Jdjt6a9KZhuEAI3Qy9HtFOthCEo6PAEwmO1MwJILUlxvdsdactt3?=
 =?us-ascii?Q?Q9y8DMa3Y6QCd3sNdOUJbskwKIn5/afeHJ4i9pvd7M3yJW4ciiu9YDoQnabq?=
 =?us-ascii?Q?MVC7+D2/ahenvVhZKtTT9aPRjy5mqJwr42c+GvDsNQeJRAVso4sSBr0KThRB?=
 =?us-ascii?Q?KFQxlWKY6Gs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700018)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mUU+RodHytvSSnpVT0wP+apYq2KCONNllSJOrfg668GX/0t6NwBbLv7vIgJ6?=
 =?us-ascii?Q?aahHPuk+41gGHj1FbNMLUfyN1MP6yFk2RD9j5OMqNQIP1W1xzfYhuAqzLKGl?=
 =?us-ascii?Q?QybQdOa+Axp4S96oxysUZMpHukgIpuV8wb5Lkqwmf1tD19/uI0/7LfnqisHt?=
 =?us-ascii?Q?HgfPOANFz3oUmjdsw34BJmHkNJ372B7h3+fXrWK8XB59edVBcA04vN6oE1tn?=
 =?us-ascii?Q?oszXgV3IQ93XaoZXcEjPijmlJe7eOIxGEA0WBN7RYrSkX8rYxBlSspRX+54Q?=
 =?us-ascii?Q?su+W+Z3DX80WkxwsHgsEkz1XOIKX4+085pkPYnO6TuNNjRoEPn3lnVZhzQjp?=
 =?us-ascii?Q?bnrb6Uz5Lrh0OUTK+81WAq4U6ZOx7xd3LhyOK2HAm2N1+u0+0gEmjXi9fMDZ?=
 =?us-ascii?Q?ojVdPJTC4riK7OaIH0WvAorSrniKOoBE+dX0GX/su4aKIUhxkBgDa8Io/6Cv?=
 =?us-ascii?Q?qsFJnDZd15zF+BSyfHobfQ9FBKWsUzbMHe8d3qpiIA5J76vsykt4qjcrsOoY?=
 =?us-ascii?Q?K76Xob5ttWA0eNoX52xcWDCPCO0zL4QU8PAdlrMmWf4xVDjV28AxiEMapJna?=
 =?us-ascii?Q?BuR4ZkRnfTkm2Rpeo6wFVcTV/gWm8W/hugFQcBO3LR2ggQHGXZCJnD97GNdl?=
 =?us-ascii?Q?0PgyuuUxNLgFIUeFgH6sE3XAM0HGGgIl1q5c21LVh7Sy7qAhFilENRZeTpF3?=
 =?us-ascii?Q?PPdZTwbQVX52a3oLifc72sr140S6h2uJai1oiZX/TjNZTdo3XUAXNnv4GJO0?=
 =?us-ascii?Q?1HGtIy43HS4xwUtDd80iyxrZi2J2VIgMRVWy4zkZLZcInEzE7vtNPh3su6BK?=
 =?us-ascii?Q?ffiT1kW63S5QTCzK18knta58enVKvEBt2m7ncOBDpfRxRKMX2KhPHkz6Eb+O?=
 =?us-ascii?Q?NmdDOilBRXrGkP5W56ie6RS3G4yQN/UlXO+tLMlfc1l0VCN8mHAkdgNc9cE6?=
 =?us-ascii?Q?glY6wg1iss0LNZBG5W5L0zH10Rc4R2ZRAJZwXkvaLpxzvKAjxFwn3B3y+oYW?=
 =?us-ascii?Q?ce9ZNBBz+aTIz1+GytISDUlcKQBrGRAoZwmQn3l7jAkxxbVzZy3fy46wAi8I?=
 =?us-ascii?Q?iVIwMlsWpob+ZPtBWRujPCqWwWJTfC//ppXGOXhfzSVuwaxzpwb1TRBlslc4?=
 =?us-ascii?Q?OAq5X94f5A+y6/TFbt12hvFEacI5SIdxYlkXnq6IXfLqS3DKptleBqq9d/Qo?=
 =?us-ascii?Q?avUTSKgy1T2o3zlWgDdIyBrscSn2PSYn881bxHvLhokbP6TvC0rrhukn6PnD?=
 =?us-ascii?Q?d/kknK35ZwClgp4vCt6S9Y8uRjcDRccxM3hRhxu5mjLpDxMttctYyDQQCr9C?=
 =?us-ascii?Q?9Rv6qrV7/c4Xu1TUIhS6QHG/rCApGNQjMlarP4mVXVJFbqlqdy1/9CTS0XIV?=
 =?us-ascii?Q?h2mc2J7wWTsAnmvYB7Df1VhiMlcwTrlV7FrvK3Dzjgc8x5sAXUzYdiZ+rN/h?=
 =?us-ascii?Q?iRLds3tR9SrSAfRoKyS98d39gosfh4g7MD5hX/ipoKIh96Ijd1CQqHrwmX9S?=
 =?us-ascii?Q?cvGYlOhEIZVYyCAGHiGe5lBSbi59ROaBiRcDyupXav7G3yUlM9MGB9OR2d2A?=
 =?us-ascii?Q?113dMFiqyddSmkt4CQKFlICBv7nYoOxyrMETmoaqve9mzns2usp5uI7ypGUE?=
 =?us-ascii?Q?O9kGc0hJakzPxPm+gLtNreTbskp0VZvrhxjy7jxctrZo?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87976F0C171EBD7D651B6553B9822BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 236b39b3-7813-45d0-f44b-08dd88afec67
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2025 12:58:52.3339
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: THqRLY6VFgHPnvBUnkyR/VEYI4dyMqGGIEf13HXm8ee4wbPGT9oWUlY+WTAHdYdL4Y0F4fJ3D5OnmKFpkxJQ+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4678
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 May 2025 12:59:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65274

--_000_BL4PR11MB87976F0C171EBD7D651B6553B9822BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.9 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/poky-bab0f9f6=
2af9af580744948dd3240f648a99879a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.9/poky-bab0f9f62af9af58074=
4948dd3240f648a99879a.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release

--------------------------
yocto-5.0.9 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.9
Git Revision: bab0f9f62af9af580744948dd3240f648a99879a
Release Artefact: poky-bab0f9f62af9af580744948dd3240f648a99879a
sha: ee6811d9fb6c4913e19d6e3569f1edc8ccd793779b237520596506446a6b4531
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/poky-bab0f9f6=
2af9af580744948dd3240f648a99879a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.9/poky-bab0f9f62af9af58074=
4948dd3240f648a99879a.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.9
Git Revision: 04038ecd1edd6592b826665a2b787387bb7074fa
Release Artefact: oecore-04038ecd1edd6592b826665a2b787387bb7074fa
sha: 6e201a4b486dfbdfcb7e96d83b962a205ec4764db6ad0e34bd623db18910eddb
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/oecore-04038e=
cd1edd6592b826665a2b787387bb7074fa.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.9/oecore-04038ecd1edd6592b=
826665a2b787387bb7074fa.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.9
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/meta-mingw-bd=
9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.9/meta-mingw-bd9fef71ec005=
be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.9
Git Revision: 696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
Release Artefact: bitbake-696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
sha: fc83f879cd6dd14b9b7eba0161fec23ecc191fed0fb00556ba729dceef6c145f
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/bitbake-696c2=
c1ef095f8b11c7d2eff36fae50f58c62e5e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.9/bitbake-696c2c1ef095f8b1=
1c7d2eff36fae50f58c62e5e.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.9
Git Revision: 56db4fd81f6235428bef9e46a61c11ca0ba89733


---------------
Contributors
---------------
Antonin Godard
Archana Polampalli
Ashish Sharma
Bruce Ashfield
Changqing Li
Denys Dmytriyenko
Divya Chellam
Hitendra Prajapati
Madhu Marri
Makarios Christakis
Martin Jansa
Michael Halstead
Niko Mauno
Oleksandr Hnatiuk
Peter Marko
Richard Purdie
Ross Burton
Sana Kazi
Stefan Mueller-Klieser
Steve Sakoman
Vijay Anusuri
Virendra Thakur
Vishwas Udupa
Wang Mingyu
Zhang Peng


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2024-57360 CVE-2025-1176 CVE-2025-1178 CVE-2025-1181
expat: Fix CVE-2024-8176
freetype: Fix CVE-2025-27363
ghostscript: Fix CVE-2025-27830 CVE-2025-27831 CVE-2025-27832 CVE-2025-2783=
3 CVE-2025-27833 CVE-2025-27834 CVE-2025-27835 CVE-2025-27836
go: fix CVE-2025-22870 CVE-2025-22871
grub: Fix CVE-2024-45781 CVE-2024-45774 CVE-2024-45775 CVE-2024-45776 CVE-2=
024-45777 CVE-2024-45778 CVE-2024-45779 CVE-2024-45780 CVE-2024-45782 CVE-2=
024-45783 CVE-2024-56737 CVE-2025-0622 CVE-2025-0624 CVE-2025-0677 CVE-2025=
-0678 CVE-2025-0684 CVE-2025-0685 CVE-2025-0686 CVE-2025-0689 CVE-2025-0690=
 CVE-2025-1118 CVE-2025-1125
libarchive: Fix CVE-2024-20696 CVE-2024-48957 CVE-2024-48958 CVE-2025-1632 =
CVE-2025-25724
libxslt: Fix CVE-2024-24855 CVE-2024-55549
linux-yocto/6.6: Fix CVE-2024-54458 CVE-2024-57834 CVE-2024-57973 CVE-2024-=
57978 CVE-2024-57979 CVE-2024-57980 CVE-2024-57981 CVE-2024-57984 CVE-2024-=
57996 CVE-2024-57997 CVE-2024-58002 CVE-2024-58005 CVE-2024-58007 CVE-2024-=
58010 CVE-2024-58011 CVE-2024-58013 CVE-2024-58017 CVE-2024-58020 CVE-2024-=
58034 CVE-2024-58052 CVE-2024-58055 CVE-2024-58058 CVE-2024-58063 CVE-2024-=
58068 CVE-2024-58069 CVE-2024-58070 CVE-2024-58071 CVE-2024-58076 CVE-2024-=
58080 CVE-2024-58083 CVE-2024-58088 CVE-2025-21700 CVE-2025-21703 CVE-2025-=
21707 CVE-2025-21711 CVE-2025-21715 CVE-2025-21716 CVE-2025-21718 CVE-2025-=
21726 CVE-2025-21727 CVE-2025-21731 CVE-2025-21735 CVE-2025-21736 CVE-2025-=
21741 CVE-2025-21742 CVE-2025-21743 CVE-2025-21744 CVE-2025-21745 CVE-2025-=
21748 CVE-2025-21749 CVE-2025-21753 CVE-2025-21756 CVE-2025-21759 CVE-2025-=
21760 CVE-2025-21761 CVE-2025-21762 CVE-2025-21763 CVE-2025-21764 CVE-2025-=
21773 CVE-2025-21775 CVE-2025-21776 CVE-2025-21779 CVE-2025-21780 CVE-2025-=
21782 CVE-2025-21783 CVE-2025-21785 CVE-2025-21787 CVE-2025-21789 CVE-2025-=
21790 CVE-2025-21791 CVE-2025-21792 CVE-2025-21793 CVE-2025-21796 CVE-2025-=
21811 CVE-2025-21812 CVE-2025-21814 CVE-2025-21820 CVE-2025-21844 CVE-2025-=
21846 CVE-2025-21847 CVE-2025-21848 CVE-2025-21853 CVE-2025-21854 CVE-2025-=
21855 CVE-2025-21856 CVE-2025-21857 CVE-2025-21858 CVE-2025-21859 CVE-2025-=
21862 CVE-2025-21863 CVE-2025-21864 CVE-2025-21865 CVE-2025-21866 CVE-2025-=
21867 CVE-2025-21887 CVE-2025-21891 CVE-2025-21898 CVE-2025-21904 CVE-2025-=
21905 CVE-2025-21908 CVE-2025-21912 CVE-2025-21915 CVE-2025-21917 CVE-2025-=
21918 CVE-2025-21919 CVE-2025-21920 CVE-2025-21922 CVE-2025-21928 CVE-2025-=
21934 CVE-2025-21936 CVE-2025-21937 CVE-2025-21941 CVE-2025-21943 CVE-2025-=
21945 CVE-2025-21947 CVE-2025-21948 CVE-2025-21951 CVE-2025-21957 CVE-2025-=
21959 CVE-2025-21962 CVE-2025-21963 CVE-2025-21964 CVE-2025-21966 CVE-2025-=
21967 CVE-2025-21968 CVE-2025-21969 CVE-2025-21979 CVE-2025-21980 CVE-2025-=
21981 CVE-2025-21991 CVE-2025-21993
mpg123: Fix CVE-2024-10573
ofono: Fix CVE-2024-7537
openssh: Fix CVE-2025-26465
puzzles: Ignore CVE-2024-13769 CVE-2024-13770 CVE-2025-0837
qemu: Ignore CVE-2023-1386
ruby: Fix CVE-2025-27219 CVE-2025-27220
rust-cross-canadian: Ignore CVE-2024-43402
vim: Fix CVE-2025-1215 CVE-2025-26603 CVE-2025-27423 CVE-2025-29768
xserver-xorg: Fix CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-265=
97 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-26601
xz: Fix CVE-2025-31115


---------------
Fixes
---------------

babeltrace2: extend to nativesdk
babeltrace: extend to nativesdk
bitbake: event/utils: Avoid deadlock from lock_timeout() and recursive even=
ts
bitbake: utils: Add signal blocking for lock_timeout
bitbake: utils: Print information about lock issue before exiting
bitbake: utils: Tweak lock_timeout logic
build-appliance-image: Update to scarthgap head revision
cve-check.bbclass: Mitigate symlink related error
cve-update-nvd2-native: add workaround for json5 style list
cve-update-nvd2-native: handle missing vulnStatus
gcc: remove paths to sysroot from configargs.h and checksum-options for gcc=
-cross-canadian
gcc: unify cleanup of include-fixed, apply to cross-canadian
ghostscript: upgrade to 10.05.0
grub: backport strlcpy function
grub: drop obsolete CVE statuses
icu: Adjust ICU_DATA_DIR path on big endian targets
kernel-arch: add macro-prefix-map in KERNEL_CC
libarchive: upgrade to 3.7.9
libxslt: upgrade to 1.1.43
linux-yocto/6.6: update to v6.6.84
mc: set ac_cv_path_ZIP to avoid buildpaths QA issues
mpg123: upgrade to 1.32.10
nativesdk-libtool: sanitize the script, remove buildpaths
openssl: rewrite ptest installation
overview-manual/concepts: remove PR from the build dir list
patch.py: set commituser and commitemail for addNote
poky.conf: bump version for 5.0.9
vim: Upgrade to 9.1.1198
xserver-xf86-config: add a configuration fragment to disable screen blankin=
g
xserver-xf86-config: remove obsolete configuration files
xserver-xorg: upgrade to 21.1.16
xz: upgrade to 5.4.7
yocto-uninative: Update to 4.7 for glibc 2.41



--_000_BL4PR11MB87976F0C171EBD7D651B6553B9822BL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi <br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 5.0.9 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/poky-bab0f9f62af9af58=
0744948dd3240f648a99879a.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.0.9/poky-bab0f9f62af9af580744948dd3240f648a99879a.tar.bz2<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.9/poky-bab0f9f62af9af580744948dd32=
40f648a99879a.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.9/p=
oky-bab0f9f62af9af580744948dd3240f648a99879a.tar.bz2</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.0.9/testreport.txt</a>=
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
 and Release<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.9 Release=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.9<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bab0f=
9f62af9af580744948dd3240f648a99879a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-bab0f9f62af9af580744948dd3240f648a99879a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ee6811d9fb6c49=
13e19d6e3569f1edc8ccd793779b237520596506446a6b4531<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.9/poky-bab0f9f62af9af580744948dd32=
40f648a99879a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.9/poky-bab0f9f62af9af580744948dd3240f648a9987=
9a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.9<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 04038=
ecd1edd6592b826665a2b787387bb7074fa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-04038ecd1edd6592b826665a2b787387bb7074fa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 6e201a4b486dfb=
dfcb7e96d83b962a205ec4764db6ad0e34bd623db18910eddb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.9/oecore-04038ecd1edd6592b826665a2=
b787387bb7074fa.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.9/oecore-04038ecd1edd6592b826665a2b787387bb70=
74fa.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.9<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bd9fe=
f71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ab073def6487f2=
37ac125d239b3739bf02415270959546b6b287778664f0ae65<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.9/meta-mingw-bd9fef71ec005be3c3a6d=
7f8b99d8116daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.9/meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116=
daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.9<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 696c2=
c1ef095f8b11c7d2eff36fae50f58c62e5e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-696c2c1ef095f8b11c7d2eff36fae50f58c62e5e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: fc83f879cd6dd1=
4b9b7eba0161fec23ecc191fed0fb00556ba729dceef6c145f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.9/bitbake-696c2c1ef095f8b11c7d2eff=
36fae50f58c62e5e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.9/bitbake-696c2c1ef095f8b11c7d2eff36fae50f58c=
62e5e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.9<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 56db4=
fd81f6235428bef9e46a61c11ca0ba89733<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ashish Sharma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Denys Dmytriyenko<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Madhu Marri<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Makarios Christakis=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Halstead<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Niko Mauno<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Oleksandr Hnatiuk<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sana Kazi<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Stefan Mueller-Klie=
ser<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Virendra Thakur<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vishwas Udupa<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zhang Peng<o:p></o:=
p></span></p>
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
024-57360 CVE-2025-1176 CVE-2025-1178 CVE-2025-1181<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: Fix CVE-2024=
-8176<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">freetype: Fix CVE-2=
025-27363<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2025-27830 CVE-2025-27831 CVE-2025-27832 CVE-2025-27833 CVE-2025-27833 CV=
E-2025-27834 CVE-2025-27835 CVE-2025-27836
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: fix CVE-2025-22=
870 CVE-2025-22871<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: Fix CVE-2024-=
45781 CVE-2024-45774 CVE-2024-45775 CVE-2024-45776 CVE-2024-45777 CVE-2024-=
45778 CVE-2024-45779 CVE-2024-45780 CVE-2024-45782 CVE-2024-45783 CVE-2024-=
56737 CVE-2025-0622 CVE-2025-0624 CVE-2025-0677
 CVE-2025-0678 CVE-2025-0684 CVE-2025-0685 CVE-2025-0686 CVE-2025-0689 CVE-=
2025-0690 CVE-2025-1118 CVE-2025-1125<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2024-20696 CVE-2024-48957 CVE-2024-48958 CVE-2025-1632 CVE-2025-25724<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxslt: Fix CVE-20=
24-24855 CVE-2024-55549<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: Fi=
x CVE-2024-54458 CVE-2024-57834 CVE-2024-57973 CVE-2024-57978 CVE-2024-5797=
9 CVE-2024-57980 CVE-2024-57981 CVE-2024-57984 CVE-2024-57996 CVE-2024-5799=
7 CVE-2024-58002 CVE-2024-58005 CVE-2024-58007
 CVE-2024-58010 CVE-2024-58011 CVE-2024-58013 CVE-2024-58017 CVE-2024-58020=
 CVE-2024-58034 CVE-2024-58052 CVE-2024-58055 CVE-2024-58058 CVE-2024-58063=
 CVE-2024-58068 CVE-2024-58069 CVE-2024-58070 CVE-2024-58071 CVE-2024-58076=
 CVE-2024-58080 CVE-2024-58083 CVE-2024-58088
 CVE-2025-21700 CVE-2025-21703 CVE-2025-21707 CVE-2025-21711 CVE-2025-21715=
 CVE-2025-21716 CVE-2025-21718 CVE-2025-21726 CVE-2025-21727 CVE-2025-21731=
 CVE-2025-21735 CVE-2025-21736 CVE-2025-21741 CVE-2025-21742 CVE-2025-21743=
 CVE-2025-21744 CVE-2025-21745 CVE-2025-21748
 CVE-2025-21749 CVE-2025-21753 CVE-2025-21756 CVE-2025-21759 CVE-2025-21760=
 CVE-2025-21761 CVE-2025-21762 CVE-2025-21763 CVE-2025-21764 CVE-2025-21773=
 CVE-2025-21775 CVE-2025-21776 CVE-2025-21779 CVE-2025-21780 CVE-2025-21782=
 CVE-2025-21783 CVE-2025-21785 CVE-2025-21787
 CVE-2025-21789 CVE-2025-21790 CVE-2025-21791 CVE-2025-21792 CVE-2025-21793=
 CVE-2025-21796 CVE-2025-21811 CVE-2025-21812 CVE-2025-21814 CVE-2025-21820=
 CVE-2025-21844 CVE-2025-21846 CVE-2025-21847 CVE-2025-21848 CVE-2025-21853=
 CVE-2025-21854 CVE-2025-21855 CVE-2025-21856
 CVE-2025-21857 CVE-2025-21858 CVE-2025-21859 CVE-2025-21862 CVE-2025-21863=
 CVE-2025-21864 CVE-2025-21865 CVE-2025-21866 CVE-2025-21867 CVE-2025-21887=
 CVE-2025-21891 CVE-2025-21898 CVE-2025-21904 CVE-2025-21905 CVE-2025-21908=
 CVE-2025-21912 CVE-2025-21915 CVE-2025-21917
 CVE-2025-21918 CVE-2025-21919 CVE-2025-21920 CVE-2025-21922 CVE-2025-21928=
 CVE-2025-21934 CVE-2025-21936 CVE-2025-21937 CVE-2025-21941 CVE-2025-21943=
 CVE-2025-21945 CVE-2025-21947 CVE-2025-21948 CVE-2025-21951 CVE-2025-21957=
 CVE-2025-21959 CVE-2025-21962 CVE-2025-21963
 CVE-2025-21964 CVE-2025-21966 CVE-2025-21967 CVE-2025-21968 CVE-2025-21969=
 CVE-2025-21979 CVE-2025-21980 CVE-2025-21981 CVE-2025-21991 CVE-2025-21993=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mpg123: Fix CVE-202=
4-10573<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ofono: Fix CVE-2024=
-7537<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Fix CVE-20=
25-26465<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">puzzles: Ignore CVE=
-2024-13769 CVE-2024-13770 CVE-2025-0837
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Ignore CVE-20=
23-1386<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2025-=
27219 CVE-2025-27220<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-cross-canadian=
: Ignore CVE-2024-43402<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-1=
215 CVE-2025-26603 CVE-2025-27423 CVE-2025-29768<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Fix C=
VE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-26597 CVE-2025-26598 C=
VE-2025-26599 CVE-2025-26600 CVE-2025-26601<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xz: Fix CVE-2025-31=
115<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">babeltrace2: extend=
 to nativesdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">babeltrace: extend =
to nativesdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: event/util=
s: Avoid deadlock from lock_timeout() and recursive events<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Add=
 signal blocking for lock_timeout<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Pri=
nt information about lock issue before exiting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Twe=
ak lock_timeout logic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check.bbclass: =
Mitigate symlink related error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: add workaround for json5 style list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: handle missing vulnStatus<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: remove paths t=
o sysroot from configargs.h and checksum-options for gcc-cross-canadian<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: unify cleanup =
of include-fixed, apply to cross-canadian<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: upgrad=
e to 10.05.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: backport strl=
cpy function<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: drop obsolete=
 CVE statuses<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: Adjust ICU_DAT=
A_DIR path on big endian targets<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kernel-arch: add ma=
cro-prefix-map in KERNEL_CC<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: upgrade=
 to 3.7.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxslt: upgrade to=
 1.1.43<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
date to v6.6.84<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mc: set ac_cv_path_=
ZIP to avoid buildpaths QA issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mpg123: upgrade to =
1.32.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">nativesdk-libtool: =
sanitize the script, remove buildpaths<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: rewrite pt=
est installation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/con=
cepts: remove PR from the build dir list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">patch.py: set commi=
tuser and commitemail for addNote<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Upgrade to 9.1=
.1198<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xf86-config=
: add a configuration fragment to disable screen blanking<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xf86-config=
: remove obsolete configuration files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: upgra=
de to 21.1.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xz: upgrade to 5.4.=
7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-uninative: Up=
date to 4.7 for glibc 2.41<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB87976F0C171EBD7D651B6553B9822BL4PR11MB8797namp_--

