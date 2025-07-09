Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2E0C8303C
	for <webhook@archiver.kernel.org>; Wed,  9 Jul 2025 02:50:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by mx.groups.io with SMTP id smtpd.web10.5540.1752029401695015931
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jul 2025 19:50:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=BjrGj9/N;
 spf=pass (domain: intel.com, ip: 192.198.163.10, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752029402; x=1783565402;
  h=from:to:subject:date:message-id:mime-version;
  bh=/C10tGvmtbtmf9ev6Fq+JAnr69izJqQzjFH2AyGAOds=;
  b=BjrGj9/NQkEEB2MvFGCEdJ3mvX1Xdoo+1HhoZQ8X6f2igs41bM8QXX+X
   6hNhL/CreAYVELGhV2kQXcqXAoOLZt+ccD95i7mP4rD2hwFCrYn3dobJ+
   ZhLSN9UIjgUHBfxa89FL3Fy8yOEothdUw7S2q7ZG4NTFnRJQ3caU43Iww
   7q6Gm9rcUwlDFJilIuJptiy+MAND/1WC7J8s95JZ2+A01TP85sHlU2iMU
   SH80qa4HAMR7oZ1Z7f2leVTIO8dXAwF9EKxSsjyg/MRZ9+3a60SY2YsMg
   1nNNuGWuo+2ImQw1Ud1VGzKT258fmErKbt2CzJDI3NQH02bgRu7C7rJ6f
   A==;
X-CSE-ConnectionGUID: RpFcVQ3MQWCdlQ0liX1MKA==
X-CSE-MsgGUID: 5Pl+KgD/RJ2Z4j09/iUaCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65629888"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
   d="scan'208,217";a="65629888"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2025 19:50:01 -0700
X-CSE-ConnectionGUID: vl5Wb/AiQSqPi9JJrlhqOA==
X-CSE-MsgGUID: TDkgwQjpQSGg5hOUQh+TxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
   d="scan'208,217";a="155278907"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2025 19:50:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 19:50:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 19:50:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.81)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 19:49:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lxI38xust9r4Mw0vk8uIX2UqhyZtUg3lp5MakiNzj0PSyTUFd0a2Aw5nF4HgOQX2+tRdbXFBecx7Gb4fGqDP6boN+tEn1LcyD+dVb+8WpYdQBBY7BR6sjUYex+g8ZaIqw+Y32iN5i2XVwMJdFnYADb0ZxlO0mYtatik8zaicIWH8W3tO+UrTBpc/tK0Ip12O8bv/mTg/w/t0XegD07ZsbpsU4iEvjKwSsXeKNFmmy4joeohfFyi1ZsX0huf3967ntNWOQ0nXzR2wuHM7BGX/DIwY974BQfj/3C6e/Cc6IyoOeedZxe48mSJQaGwR4o25rkl+X9NnR9H5JGlTMm5/9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e2vBzqkAHvC/jQwMBv0hMxuj28M7glsABrpBPh3Vvoo=;
 b=d9OlGl8S5uhB5r6OSpoaHeqPE89kx6//8YuuRycm3j2I9fq6N/a2ehGWywLP9NR1chHsADE7vTqF2yiPV0V0SAxZGeXgj3mQ+kTRpl49lA1fg/9+PtpIRsrmCM11BvjAT7Ub40WiFQVDqWGiHpwnXf+6CyuopSjb9CPXZIjVdpYlpQ7uzXYybu+dBi5IgAsKO1Uk78BlUSqjC44HNoiUA0ftx/cdr4Ujp/znF5eVMZk6TP/tR/GSvNCl8jDQVxB3yKH8vKPSjucRsCh5+DFyDOHlx6VWuJIiiuP9t5aC7QryV/we7EhQokBAFA7fhqM8fLF5qPETUpGnisLA6aLbtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Wed, 9 Jul
 2025 02:49:57 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8901.021; Wed, 9 Jul 2025
 02:49:57 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.28 (kirkstone-4.0.28) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.28 (kirkstone-4.0.28) is
 Released
Thread-Index: Advwe/rj0tme7zGPQGKgwFmWMTWFlA==
Date: Wed, 9 Jul 2025 02:49:57 +0000
Message-ID: <BL4PR11MB8797308EC3C69808F7299151B949A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SN7PR11MB6947:EE_
x-ms-office365-filtering-correlation-id: b9f48cde-051d-4468-63ff-08ddbe934a73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?puT1dx4OGJVdcgyQRFJfRluWWwVWzIougEFFiZNCEvGvoAvtI+Qe75i2Va?=
 =?iso-8859-1?Q?rmYoQ2d5k9VDkEKNxa3MXp5JK5wM+qrCWaY+fYX5cqDV3daggqLcvZrWZ9?=
 =?iso-8859-1?Q?PmrGWNQi09u4rYiew1slfuzHOEki6vf7HX/k7NWnPRG8ScijyMUH4jgv7k?=
 =?iso-8859-1?Q?RQncr/kMFCyRUE6fXBWFg710KmYhLBS2kfhSaPiPQbSd6VFCbLnQNR1Cwu?=
 =?iso-8859-1?Q?gQN3njFN69nvS9RzceiPx2kESGCMZQmF776GLYb5q+YimtItgbUAjYlkwm?=
 =?iso-8859-1?Q?gHlS8UqFjNXrTdVgD2pXYhHjEdMgR4oNQi6TD4H/UZLjsYKyeYyY6/u5JZ?=
 =?iso-8859-1?Q?cQ8oIib+xL4u1DWH8t+/tGr+3dZ59lidufk5F7GbfSN5uwdmUNFoRHCWRm?=
 =?iso-8859-1?Q?OKT8aSi6/68aEo4Ahm/LEUcT3Nwy9pxRB5YGWx+6ibXGNv3CneZrItRLwh?=
 =?iso-8859-1?Q?giRTf6aXCNF2h4ix0tDW6hVUBaTslHjI7eZgNg86rGG1QH6TJX/5wiQS6D?=
 =?iso-8859-1?Q?XMaKtmyLCLxSnlkMDVuG65knc3SPkyzY2XEmWWoyUn97iRAP9hlsNBKID4?=
 =?iso-8859-1?Q?moR1f+8hqePKDo0o+1XZYsTfTi88La8u9kxzI4XLhZb1PhfSUVi8l6eAUh?=
 =?iso-8859-1?Q?6uHgXRsQ3T7bIjidDCz0YmlKmkn75pV1t3EVpFpyy9CjtZc8KnfWAymgTY?=
 =?iso-8859-1?Q?g3z9iU9iDTeQoKFhUx81E5fkYSXNRURWMzSw6aGDnGCcy5kXtQ8HCgR6la?=
 =?iso-8859-1?Q?ZhEaLO5FzjDJrXPUcsfaKYzDo//rGxItvR0s2f+zMPOCyhTgkT4yiLqDiP?=
 =?iso-8859-1?Q?K7X1Q/lMMOth+kpTEseKDbNW+RoaWCRhzuQNlk79XgyN3ag+RGepqMg2B5?=
 =?iso-8859-1?Q?hjIn+XsEtF8Z/kHVOoJUlGVEhF7r8JhaeiXL2UQ9J+cZAqzSYe7qB0Ygn1?=
 =?iso-8859-1?Q?vXHZXUCe7uFfePY3tT3P5jUrRlIvr4aGO7JTFR5DXYM0GchTExgenhiOH6?=
 =?iso-8859-1?Q?1coPM9l+zfzn/ss7flM44CWuJUVZ5FtfJ0SxW5M6X46IVCyUgWhL9khOPt?=
 =?iso-8859-1?Q?rKtM3EIywOoBvgHkiAgOIyIoz4ZvCFR2KkFqHhlSUPMqucyQ+eOEifc36l?=
 =?iso-8859-1?Q?nfxANSincz8U9FnFm/V7e/90XJrs4kp24StbuBMfg02kVxctK76tFJDcww?=
 =?iso-8859-1?Q?UFa6+NtJ9YVBu1fbZN652l+irvOdfAQ+d9xl6OvYlans+vq+0OiMw2ESwB?=
 =?iso-8859-1?Q?rOy9BQ3l/jVqMTzrmduhOjX0///L4TODkOERdc2zNH5RTioAK2rxQncBS2?=
 =?iso-8859-1?Q?blcaZtnzB06WPkin2MzYjGyR7N+BCgHlvXGasjobEGvOJC0J8YUOGjnvyS?=
 =?iso-8859-1?Q?Hlgt8V5TUfZMXR60Wi5KJvgD2IDBZoJqtpbgBNeo0R5aRUVgC3VuVLM3Yn?=
 =?iso-8859-1?Q?ZoL36qtol3tfUQtbUedQU4bduGl2AmGA/YSdvW0Bio5dOJLTrL53xK55hg?=
 =?iso-8859-1?Q?I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?57owdB6wIUD6/lNT2fn/obzACrUJRin7O6SJ8Y+I25K1xA3ClNFlpF2ZtR?=
 =?iso-8859-1?Q?kGhi8zN3ru7SwqJCvN6Pq782a7YxqAO2UzlL+6//ZAeoKLr0bBxunSuWRL?=
 =?iso-8859-1?Q?246aJdyv90ohgAi1RYAxsNZtfp869zZLRbhVO1cRHxELIGSg0G7ZN1EN7r?=
 =?iso-8859-1?Q?WENRJb9phCWwD3JOxkUucketFmYi1ksjR7GLJ0E/dYmhQqG0BggSCqh5Lk?=
 =?iso-8859-1?Q?c7DMwWluukNfShmNx/Fx5u4OX3cpPTwfuRy+GrU0KZHg9O/Xt7nCXe7aHN?=
 =?iso-8859-1?Q?dSLnWqltavXTddkuK9ZDjDbkBrr/zO40qdNIQrQDAJhWR+5iFR9RcYpoIA?=
 =?iso-8859-1?Q?CD3+mi63n/EIQxtlzSFe3fD/gCb9boFultGRnMz5s6ZqmySmsZvJLkrGOX?=
 =?iso-8859-1?Q?eT60bHFrP2W5aENYalLYcU6EyVFhLY+riCBA+o1Sr1C4x53c48PwOn9w4o?=
 =?iso-8859-1?Q?Q8uGbLjAX7+uhse3/knOfM72hf3JikJbOmEEjrK22cfcfjMsf3YRzZKmGV?=
 =?iso-8859-1?Q?W1LUK2FsO8KveM2aO3tivNJHcuPRhvzy9kJgE8L7LF84OIPWaKnPLTQYuv?=
 =?iso-8859-1?Q?8/n+tOJoht6jtekLyA3tK0wmnhe7vbjwlVE7iv4Y7G21MzeLx9knxKZhBS?=
 =?iso-8859-1?Q?UvY+tdw9OvYCQunobmD7+bMjRDFvqCCX2ou26YjKpGUKm6FJw7v8XFHEMj?=
 =?iso-8859-1?Q?2l8xO/NKD8jdt58GnCjh5WBkMQH3qG62EbYVtovVf29pQr7eDyVpm5iU1R?=
 =?iso-8859-1?Q?2NLMLwnykmAW3IxacrOuXCwgzKX3VD6EEv503mfHCuaehKxUU1fYRl0rti?=
 =?iso-8859-1?Q?OPEasFnRnon4XTTAwLeZeh0Dp3z4a0tOL/17YBhI2JjnYuBTBIX2NdDEyK?=
 =?iso-8859-1?Q?Wp5t4HkvBSWCopBbIqAMJcmx/ynBfj/W5DE/DE62ukJ7ync1x0dfA/qoOk?=
 =?iso-8859-1?Q?WTy+Fy+tOAU7j5yN/QCjYX5q/HiFJXbpxQ+voSTR83G9sPIgBR79PzKC+X?=
 =?iso-8859-1?Q?CkloU4Il3h213Kuv/eGFtUF7e9F9p+Y4PGMlYwUdUzCvBjLMku8sLzV+UK?=
 =?iso-8859-1?Q?USBBEkGJ9q95yovHdyslk+3NkuX8GQqD4kbcGA4Gmb2sUSuq+aKd2+0ha1?=
 =?iso-8859-1?Q?qyVvt/RwiaC+gfLaxp57l4ipY7BmxCnSFK2HqG6wMfwfrT6s0BiuNpJpvv?=
 =?iso-8859-1?Q?0bbW0vvT3Kyx0CNPHckXVuTc71G1xB4MYyl7abA3yKSTu4OzGnTohqZvZE?=
 =?iso-8859-1?Q?+nbGSdiQ0NfZ+YIZ04Yrk/jYYVRMVm4DQ35xKeWEqM7fWXK4H5WtvnnP3/?=
 =?iso-8859-1?Q?eDNmMnpWZ85WDkv3WzjxeiiayL8PycdaFfl8jmy56IyQHG2H2fFtiqkRC0?=
 =?iso-8859-1?Q?fwyb0Q3atAUo8bWg+vEGtx2+A8yQEvSCqQrifJTPI4Pq+fCyVkUQHHR6XW?=
 =?iso-8859-1?Q?U0EimFZrHob/zyzfTPfR3xDTaqMw0hOejVoUSX7//c6j4nJKoiWZm0Q7Ln?=
 =?iso-8859-1?Q?Ju/7DxBRvmGLaL61JpN8wPtgmOwBA29yGe+RC2t+zSBTstyfifMPRWX1WW?=
 =?iso-8859-1?Q?udCN5NeLMIWeHa8L65vIGYxBth0s5m1mJlDoQTHn80j7BRw7tLLHB0N9DH?=
 =?iso-8859-1?Q?CffvNi8RLuOoJmlqhLrDKqa58DJf3FPiJ6?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797308EC3C69808F7299151B949ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9f48cde-051d-4468-63ff-08ddbe934a73
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2025 02:49:57.4714
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CyTjRWK68wK89IbL6JcgNGLZKuSsBM3KGnI75jkdzMgDK7k/kDnrwDy5Cm/Fw4GuhbEBkktwbk7Nzwn+jefrYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Jul 2025 02:50:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65630

--_000_BL4PR11MB8797308EC3C69808F7299151B949ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.28 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/poky-78c9cb3=
eaf071932567835742608404d5ce23cc4.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.28/poky-78c9cb3eaf07193256=
7835742608404d5ce23cc4.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release



--------------------------
yocto-4.0.28 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.28
Git Revision: 78c9cb3eaf071932567835742608404d5ce23cc4
Release Artefact: poky-78c9cb3eaf071932567835742608404d5ce23cc4
sha: 9c73c6f89e70c2041a52851e5cc582e5a2f05ad2fdc110d2c518f2c4994e8de3
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/poky-78c9cb3=
eaf071932567835742608404d5ce23cc4.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.28/poky-78c9cb3eaf07193256=
7835742608404d5ce23cc4.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.28
Git Revision: 75e54301c5076eb0454aee33c870adf078f563fd
Release Artefact: oecore-75e54301c5076eb0454aee33c870adf078f563fd
sha: c5ffceab90881c4041ec4304da8b7b32d9c1f89a4c63ee7b8cbd53c796b0187b
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/oecore-75e54=
301c5076eb0454aee33c870adf078f563fd.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.28/oecore-75e54301c5076eb0=
454aee33c870adf078f563fd.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.28
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.28/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.28
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.28/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.28
Git Revision: 046871d9fd76efdca7b72718b328d8f545523f7e
Release Artefact: bitbake-046871d9fd76efdca7b72718b328d8f545523f7e
sha: e9df0a9f5921b583b539188d66b23f120e1751000e7822e76c3391d5c76ee21a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/bitbake-0468=
71d9fd76efdca7b72718b328d8f545523f7e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.28/bitbake-046871d9fd76efd=
ca7b72718b328d8f545523f7e.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: kirkstone
Tag: yocto-4.0.28
Git Revision: 0bf3dcef1caa80fb047bf9c3514314ab658e30ea

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.28
Git Revision: 97cd3ee7f3bf1de8454708d1852ea9cdbd45c39b


---------------
Contributors
---------------
Aditya Tayade
Adrian Freihofer
Aleksandar Nikolic
Alper Ak
Antonin Godard
Archana Polampalli
Ashish Sharma
Bruce Ashfield
Carlos S=E1nchez de La Lama
Changqing Li
Christos Gavros
Colin Pinnell McAllister
Deepesh Varatharajan
Divya Chellam
Enrico J=F6rns
Etienne Cordonnier
Guocai He
Harish Sadineni
Hitendra Prajapati
Jiaying Song
Lee Chee Yang
Martin Jansa
Moritz Haase
NeilBrown
Peter Marko
Poonam Jadhav
Praveen Kumar
Quentin Schulz
Richard Purdie
Robert P. J. Day
Soumya Sambu
Steve Sakoman
Sundeep KOKKONDA
Sunil Dora
Trevor Woerner
Vijay Anusuri
Virendra Thakur
Yi Zhao
aszh07

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-1180 CVE-2025-1182 CVE-2025-5244 CVE-2025-5245
connman: Fix CVE-2025-32366
ffmpeg: Fix CVE-2025-1373 CVE-2025-22919 CVE-2025-22921
ffmpeg: Ignore CVE-2022-48434
ghostscript: Fix CVE-2025-48708
git: Fix CVE-2024-50349 and CVE-2024-52006
glib-2.0: Fix CVE-2025-4373
glibc: Fix for CVE-2025-4802
go: Fix CVE-2025-4673
go: ignore CVE-2024-3566
icu: Fix CVE-2025-5222
iputils: Fix CVE-2025-47268
libsoup-2.4: Fix CVE-2025-2784 CVE-2025-4476 CVE-2025-4948 CVE-2025-4969 CV=
E-2025-32050 CVE-2025-32052 CVE-2025-32053 CVE-2025-32907 CVE-2025-32910 CV=
E-2025-32911 CVE-2025-32912 CVE-2025-32913 CVE-2025-32914 CVE-2025-46420 CV=
E-2025-46421
libsoup: Fix CVE-2025-2784 CVE-2025-4476 CVE-2025-4948 CVE-2025-4969 CVE-20=
25-32050 CVE-2025-32051 CVE-2025-32052 CVE-2025-32053 CVE-2025-32907 CVE-20=
25-46420 CVE-2025-46421
linux-yocto/5.15: Fix CVE-2024-26952 CVE-2025-21941 CVE-2025-21957 CVE-2025=
-21959 CVE-2025-21962 CVE-2025-21963 CVE-2025-21964 CVE-2025-21968 CVE-2025=
-21996 CVE-2025-22018 CVE-2025-22020 CVE-2025-22035 CVE-2025-22054 CVE-2025=
-22056 CVE-2025-22063 CVE-2025-22066 CVE-2025-22081 CVE-2025-22097 CVE-2025=
-23136 CVE-2025-37785 CVE-2025-37803 CVE-2025-37805 CVE-2025-38152 CVE-2025=
-39728 CVE-2025-39735
net-tools: Fix CVE-2025-46836
openssh: Fix CVE-2025-32728
python3: Fix CVE-2024-12718 CVE-2025-0938 CVE-2025-4138 CVE-2025-4330 CVE-2=
025-4435 CVE-2025-4516 CVE-2025-4517
python3-requests: Fix CVE-2024-47081
python3-setuptools: Fix CVE-2025-47273
ruby: Fix CVE-2025-27221
screen: Fix CVE-2025-46802 CVE-2025-46804 CVE-2025-46805
taglib: Fix CVE-2023-47466


---------------
Fixes
---------------
babeltrace/libatomic-ops: correct the SRC_URI
brief-yoctoprojectqs/ref-manual: Switch to new CDN
bsp guide: update kernel version example to 6.12
bsp-guide: update lonely "4.12" kernel reference to "6.12"
build-appliance-image: Update to kirkstone head revision
cmake: Correctly handle cost data of tests with arbitrary chars in name
conf.py: tweak SearchEnglish to be hyphen-friendly
contributor-guide/submit-changes: encourage patch version changelogs
dev-manual/sbom.rst: fix wrong build outputs
docs: Clean up explanation of minimum required version numbers
docs: README: specify how to contribute instead of pointing at another file
docs: conf.py: silence SyntaxWarning on js_splitter_code
e2fsprogs: removed 'sed -u' option
ffmpeg: Add "libswresample libavcodec" to CVE_PRODUCT
ffmpeg: upgrade to 5.0.3
gcc: AArch64 - Fix strict-align cpymem/setmem
glibc: nptl Fix indentation
glibc: nptl Remove unnecessary catch-all-wake in condvar group switch
glibc: nptl Remove unnecessary quadruple check in pthread_cond_wait
glibc: nptl Update comments and indentation for new condvar implementation
glibc: nptl Use a single loop in pthread_cond_wait instaed of a nested loop
glibc: nptl Use all of g1_start and g_signals
glibc: nptl rename __condvar_quiesce_and_switch_g1
glibc: pthreads NPTL lost wakeup fix 2
kernel.bbclass: add original package name to RPROVIDES for -image and -base
libpng: Improve ptest
linux-yocto/5.15: update to v5.15.184
migration-guides: add release notes for 4.0.26 and 4.0.27
nfs-utils: don't use signals to shut down nfs server.
poky.conf: bump version for 4.0.28
python3: upgrade to 3.10.18
ref-manual/release-process: update releases.svg
ref-manual/variables.rst: document INHIBIT_DEFAULT_RUST_DEPS INHIBIT_UPDATE=
RCD_BBCLASS SSTATE_SKIP_CREATION WIC_CREATE_EXTRA_ARGS IMAGE_ROOTFS_MAXSIZE=
  INITRAMFS_MAXSIZE
ref-manual: clarify KCONFIG_MODE default behaviour
ref-manual: classes: nativesdk: move note to appropriate section
ref-manual: classes: reword to clarify that native/nativesdk options are ex=
clusive
ref-manual: kernel-fitimage.bbclass does not use SPL_SIGN_KEYNAME
scripts/install-buildtools: Update to 4.0.27
sphinx-lint: role missing opening tag colon
sphinx-lint: trailing whitespace
sphinx-lint: unbalanced inline literal markup
sysstat: correct the SRC_URI
systemtap: add sysroot Python paths to configure flags
test-manual/intro: remove Buildbot version used
util-linux: Add fix to isolate test fstab entries using CUSTOM_FSTAB
xz: Update LICENSE variable for xz packages


--_000_BL4PR11MB8797308EC3C69808F7299151B949ABL4PR11MB8797namp_
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
We are pleased to announce the Yocto Project 4.0.28 Release is now availabl=
e for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/poky-78c9cb3eaf07193=
2567835742608404d5ce23cc4.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.28/poky-78c9cb3eaf071932567835742608404d5ce23cc4.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-4.0.28/poky-78c9cb3eaf0719325678357426=
08404d5ce23cc4.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.28=
/poky-78c9cb3eaf071932567835742608404d5ce23cc4.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.28/testreport.txt</=
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
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.28 Releas=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.28<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 78c9c=
b3eaf071932567835742608404d5ce23cc4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-78c9cb3eaf071932567835742608404d5ce23cc4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 9c73c6f89e70c2=
041a52851e5cc582e5a2f05ad2fdc110d2c518f2c4994e8de3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.28/poky-78c9cb3eaf0719325678357426=
08404d5ce23cc4.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.28/poky-78c9cb3eaf071932567835742608404d5ce23=
cc4.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.28<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 75e54=
301c5076eb0454aee33c870adf078f563fd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-75e54301c5076eb0454aee33c870adf078f563fd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: c5ffceab90881c=
4041ec4304da8b7b32d9c1f89a4c63ee7b8cbd53c796b0187b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.28/oecore-75e54301c5076eb0454aee33=
c870adf078f563fd.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.28/oecore-75e54301c5076eb0454aee33c870adf078f=
563fd.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.28<o=
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
octoproject.org/releases/yocto/yocto-4.0.28/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.28/meta-mingw-87c22abb1f11be430caf4372e6b833d=
c7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.28<o=
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
octoproject.org/releases/yocto/yocto-4.0.28/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.28/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.28<o=
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
octoproject.org/releases/yocto/yocto-4.0.28/bitbake-046871d9fd76efdca7b7271=
8b328d8f545523f7e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.28/bitbake-046871d9fd76efdca7b72718b328d8f545=
523f7e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.28<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 0bf3d=
cef1caa80fb047bf9c3514314ab658e30ea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.28<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 97cd3=
ee7f3bf1de8454708d1852ea9cdbd45c39b<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aditya Tayade<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adrian Freihofer<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alper Ak<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ashish Sharma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Carlos S=E1nchez de=
 La Lama<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Christos Gavros<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Colin Pinnell McAll=
ister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Enrico J=F6rns<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Etienne Cordonnier<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Guocai He<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Moritz Haase<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">NeilBrown<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Poonam Jadhav<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Quentin Schulz<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert P. J. Day<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sundeep KOKKONDA<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sunil Dora<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Woerner<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Virendra Thakur<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">aszh07<o:p></o:p></=
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
025-1180 CVE-2025-1182 CVE-2025-5244 CVE-2025-5245<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">connman: Fix CVE-20=
25-32366<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
5-1373 CVE-2025-22919 CVE-2025-22921<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Ignore CVE-=
2022-48434<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2025-48708<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: Fix CVE-2024-5=
0349 and CVE-2024-52006<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Fix CVE-2=
025-4373<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Fix for CVE-=
2025-4802<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-46=
73<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: ignore CVE-2024=
-3566<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: Fix CVE-2025-5=
222<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">iputils: Fix CVE-20=
25-47268<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2025-2784 CVE-2025-4476 CVE-2025-4948 CVE-2025-4969 CVE-2025-32050 CVE-20=
25-32052 CVE-2025-32053 CVE-2025-32907 CVE-2025-32910 CVE-2025-32911 CVE-20=
25-32912 CVE-2025-32913 CVE-2025-32914
 CVE-2025-46420 CVE-2025-46421<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
25-2784 CVE-2025-4476 CVE-2025-4948 CVE-2025-4969 CVE-2025-32050 CVE-2025-3=
2051 CVE-2025-32052 CVE-2025-32053 CVE-2025-32907 CVE-2025-46420 CVE-2025-4=
6421<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: F=
ix CVE-2024-26952 CVE-2025-21941 CVE-2025-21957 CVE-2025-21959 CVE-2025-219=
62 CVE-2025-21963 CVE-2025-21964 CVE-2025-21968 CVE-2025-21996 CVE-2025-220=
18 CVE-2025-22020 CVE-2025-22035 CVE-2025-22054
 CVE-2025-22056 CVE-2025-22063 CVE-2025-22066 CVE-2025-22081 CVE-2025-22097=
 CVE-2025-23136 CVE-2025-37785 CVE-2025-37803 CVE-2025-37805 CVE-2025-38152=
 CVE-2025-39728 CVE-2025-39735<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">net-tools: Fix CVE-=
2025-46836<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Fix CVE-20=
25-32728<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
24-12718 CVE-2025-0938 CVE-2025-4138 CVE-2025-4330 CVE-2025-4435 CVE-2025-4=
516 CVE-2025-4517<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-requests: F=
ix CVE-2024-47081<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools:=
 Fix CVE-2025-47273<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2025-=
27221<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">screen: Fix CVE-202=
5-46802 CVE-2025-46804 CVE-2025-46805<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">taglib: Fix CVE-202=
3-47466<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">babeltrace/libatomi=
c-ops: correct the SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">brief-yoctoprojectq=
s/ref-manual: Switch to new CDN<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp guide: update k=
ernel version example to 6.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bsp-guide: update l=
onely &quot;4.12&quot; kernel reference to &quot;6.12&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: Correctly ha=
ndle cost data of tests with arbitrary chars in name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">conf.py: tweak Sear=
chEnglish to be hyphen-friendly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide/s=
ubmit-changes: encourage patch version changelogs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/sbom.rst=
: fix wrong build outputs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Clean up expl=
anation of minimum required version numbers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: README: speci=
fy how to contribute instead of pointing at another file<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: conf.py: sile=
nce SyntaxWarning on js_splitter_code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">e2fsprogs: removed =
'sed -u' option<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Add &quot;l=
ibswresample libavcodec&quot; to CVE_PRODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: upgrade to =
5.0.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: AArch64 - Fix =
strict-align cpymem/setmem<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Fix ind=
entation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Remove =
unnecessary catch-all-wake in condvar group switch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Remove =
unnecessary quadruple check in pthread_cond_wait<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Update =
comments and indentation for new condvar implementation<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Use a s=
ingle loop in pthread_cond_wait instaed of a nested loop<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Use all=
 of g1_start and g_signals<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl rename =
__condvar_quiesce_and_switch_g1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: pthreads NPT=
L lost wakeup fix 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kernel.bbclass: add=
 original package name to RPROVIDES for -image and -base<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpng: Improve pte=
st<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pdate to v5.15.184<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.26 and 4.0.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">nfs-utils: don't us=
e signals to shut down nfs server.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.10.18<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/release-=
process: update releases.svg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document INHIBIT_DEFAULT_RUST_DEPS INHIBIT_UPDATERCD_BBCLASS SSTATE_=
SKIP_CREATION WIC_CREATE_EXTRA_ARGS IMAGE_ROOTFS_MAXSIZE&nbsp; INITRAMFS_MA=
XSIZE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: clarify=
 KCONFIG_MODE default behaviour<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: nativesdk: move note to appropriate section<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: reword to clarify that native/nativesdk options are exclusive<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: kernel-=
fitimage.bbclass does not use SPL_SIGN_KEYNAME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sphinx-lint: role m=
issing opening tag colon<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sphinx-lint: traili=
ng whitespace<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sphinx-lint: unbala=
nced inline literal markup<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sysstat: correct th=
e SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemtap: add sysr=
oot Python paths to configure flags<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/intro: =
remove Buildbot version used<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">util-linux: Add fix=
 to isolate test fstab entries using CUSTOM_FSTAB<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xz: Update LICENSE =
variable for xz packages<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797308EC3C69808F7299151B949ABL4PR11MB8797namp_--

