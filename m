Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93382CAC5B0
	for <webhook@archiver.kernel.org>; Fri,  3 Oct 2025 09:35:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by mx.groups.io with SMTP id smtpd.web11.3715.1759484133965257455
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Oct 2025 02:35:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=AuTUTXs4;
 spf=pass (domain: intel.com, ip: 192.198.163.12, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1759484134; x=1791020134;
  h=from:to:subject:date:message-id:mime-version;
  bh=xDs5RdtEPlJsJo+4GeNADaGALkt+6ILbQsgyCt1N+eM=;
  b=AuTUTXs4gEDoykipoHC35u/YZSDmmecGCEXdJWileug0sgb/vgHwlZb4
   hYpG29ovPusUqv64MmK++Sy5TRV/8JMRhDz1F9msOjTwUqGhuPZYkZKzf
   a0up9jFwx8EcJmZ+8YpZaqbuRMG0CQm6W1qEWG5aaOkwz+QGHhKuGqZ2A
   wTPfU+FP/DRHoccm6BASIVXkQY5j2DO6hPF+X8aPC9rq25joPQzztR12Z
   wv0j38ox/rdHjal65kpe+fquFHAWJvu2KIS45Z7yn2A9gYhnGLoG+/8XH
   3MjnGTNOugE6/8IgCVbtq2qjz2hUNGb/MrjlWvj1rF7oGAA5mzii4Z914
   A==;
X-CSE-ConnectionGUID: buNvzz8rTReRZJNCurDtDA==
X-CSE-MsgGUID: EIiBjqrTToiwPskn3CTp1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="65616432"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; 
   d="scan'208,217";a="65616432"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2025 02:35:33 -0700
X-CSE-ConnectionGUID: u/gZIbCgT6adFjPeBwnAXQ==
X-CSE-MsgGUID: AHc3hm4eSpiiqKlMOGSR3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; 
   d="scan'208,217";a="184539105"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2025 02:35:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 02:35:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 3 Oct 2025 02:35:32 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 02:35:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LiTIwR/Rleuea6R2U76XPlw77OdlLQCFjpNCt9N01QcE2ZuAqNuYNEnQGIF6HNna5hIa0YoW6kDNtsIRXzC5XDgSAgfCJdpHvzW0gq9Dp+Z5JojFNWsdMAD/F2vGa7H0UZEAimsaITvTC92F13NAAZYmfCq7NTCbwgFMTOR6w+HanxuwgFUElsQS3tEKN8W2SHQg9DK8eaw6YbZITkc1Wg5JgFjixFr4Q+nPJO5YcSp+buprX8O/jx7vxGpaQHwbuACdgSCMXUpALCbtJlbM/6JAFW76i3Jq2HcHYR/BR4Fo2GgxkB51HRBRftyP2xxlbD3r1oHkVIhp/aGAoWbkYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCPrtJtNu82nP4NmqgHmQXe5S5wSmRTmD/E6msv4mH4=;
 b=Xi2/sBDVotEWYrM6kFuuWk3sHJrWcVjLt2yDUkqGhAiXkBE/iibYbm3UkeeMxm04a2H8d9ctbcNydA9V3oA+UXXoPB6GrRMvkkMesdD3q+mtrDgM0fV54Ght7Pbu3t/iHyWXJ4GDvIdoGRw9f132KPE4mKcDmIM4JTVe6i0ezNZz0sSe0PXIb2RUuYjF1Q6fNgLLp7nHjjCYvR2QZybhEg560QUQtO9T0Pl2UtgZeV3NIaJ+DIRXorxY3rdotwWMHp2SP8FKEeeZ+bRBj40SpS5ZVyeW69UZ+qp3jXrigLTkZ46/ycv4cdC+iN/S5RPKNm0yUPpiIVzuf5H/k2aQbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH7PR11MB6883.namprd11.prod.outlook.com (2603:10b6:510:202::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Fri, 3 Oct
 2025 09:35:26 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9182.015; Fri, 3 Oct 2025
 09:35:26 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.30(kirkstone-4.0.30) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.30(kirkstone-4.0.30) is
 Released
Thread-Index: Adw0BbR0AyuUT1GbQcCH2FOo9P7L1g==
Date: Fri, 3 Oct 2025 09:35:25 +0000
Message-ID: <BL4PR11MB879745F875288FD660CF8109B9E4A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH7PR11MB6883:EE_
x-ms-office365-filtering-correlation-id: 96f097bf-6d0c-4f5e-1dfb-08de02602edd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|13003099007|38070700021|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?p7B5g1heUFCTHsQmis07OL4Vnup8vJAasoEN4smrpNQ9rmiD8IW99W1CBSGd?=
 =?us-ascii?Q?zWcvOWSfAm2pxcHXUt5qdCC+W59Vy42mPEHDf6EfLzka3m1vZyFpBwXD3hwf?=
 =?us-ascii?Q?wCikZ2dvCpQXoMYZHy/tsxvc+jdCgAGqrCDzLH5QRW/KjuPvJHlnIQrJsr91?=
 =?us-ascii?Q?A2KF9JN6A1dPMqxVRVRD9GULLLJZ2S66QtN/6Qt79a4sSZDw3r/s855Xl+a1?=
 =?us-ascii?Q?G97zxj3j679OSpV/WghlFiPXIFkvdwcc4xHasXQeZH2cXY0dIFea2Oe1JSw3?=
 =?us-ascii?Q?c3LOwJxY4V9aBeBLXV9JfsT/aj3OLTGrpTEpw+F3KtleBdx5qtBTd2BpZINI?=
 =?us-ascii?Q?PymJnelGkEXDs35HfZEVqmbLU2EKWkMntAo/fDEsbihvFwBgZ0lxwsQTNYmt?=
 =?us-ascii?Q?SXl3yC0VBvsidw3xWhmA61x5mBxMaLsms4ZEwZzBZuDeWm7ZxSuyqbsbHXsF?=
 =?us-ascii?Q?DIFxt6lRZX05WiJPse9B1yjaVi56oXotXztm9EdW/ITHcKxhRj/aWOPfOpru?=
 =?us-ascii?Q?TIlUeuOt/0o1rtPNOIBWfwgHIUOC4jBvMGZ/LQsrj+hDG7KQ9/aoFpsm/QnK?=
 =?us-ascii?Q?e5+TlDuRePD0HcVQ4DQs8QpjvZ/9Qwm4ZD0Z8MZVuAoJtmX32tE+vhdUVe/p?=
 =?us-ascii?Q?e4+qGvF0VAvgL41bD6BjWuyfklHyEjDwWme3yXhCrqpT3bNJUjJkOZCNfsfZ?=
 =?us-ascii?Q?KpY88jUNI4JSx81liFSWD8igyiJP3s6yREOldTmG7MI6mCk9NEJKe9VigdSi?=
 =?us-ascii?Q?Q5D58WHYCHvEq/ef2aAXfGZ/CG0cV0hBBYTvlopM3FywNMZb9lVyxqdgFbux?=
 =?us-ascii?Q?VIvmLwCmTKnu17dwPxr9tyKqSWDvX8JEs43tboBv7WlEmksLD759ycmjIOe8?=
 =?us-ascii?Q?A2Y9ANVw/+DPwaaRTARx7gU7EYLxde+2Zgdx4HUHzwNLJDo96uJnnJ2EuymL?=
 =?us-ascii?Q?4f4wBT8O+CYQH1uEkEl9nuHKGnbHgpkrSUVvz+vnuh7thvUYe0y4gkRy04wS?=
 =?us-ascii?Q?WhakJPqoV51sjT5mfy1tleuuOxgaPJB/54VLmFZVIw3whcceS4yRNUORkDe7?=
 =?us-ascii?Q?2MzmvHjmKdK6SD/TYLUnPiUriyjUZzzbIh9L58ZhqnMt4nj7cpM3vu2FbqR+?=
 =?us-ascii?Q?oqsspeCp+63vrdASKePNy7HomCV4mUfd8a2Izh3bkB9bbdUbw781120n3dVy?=
 =?us-ascii?Q?NWD2RJKTuAZoUmX8q3ly0wGhEVbPY9I8Zuio2zkbWqWrf/utEkZAWE+wMuo0?=
 =?us-ascii?Q?PUpN51cWshpotA/IJCbhW9gbJEnhwewtqq13U4DUPwpFh2asB6EqVJ4E3Lx/?=
 =?us-ascii?Q?yZm7bctw7G9bNLDPkKh5AXaUxqGVlB9tZoBKN7vIBCeaGgs6h9KM2OWweWT2?=
 =?us-ascii?Q?/xfJGINpTEXVUiiP6Y4JEcGByxCP5UUDsf/aa/DJ2e378ZgKL+N+DREU3OOb?=
 =?us-ascii?Q?LkluHAabKv3r9TT7fxGL4umuNQRyY2cJBwo/jYU+zneAlHjPwNlXyQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MzoPRRwI4PcOukxD5bVRVXzsAPlfXsy9fUqywvMUQcrqFG1IlAvDz7fG4PMn?=
 =?us-ascii?Q?HNCU6LxrJpacgkUkDjicUnKgnLTJQ0ebGGorooNnHirzI1Nj1quw2eud9CLE?=
 =?us-ascii?Q?AQGH4niPR9TBZja/cSUXuMnTE3pmdcuWRH6j7LUEA+ueP65cJGD9BHXQIwQX?=
 =?us-ascii?Q?lkPHNz1sNIFxoEj8yVwt/8ZWvCDvHc8TWB1gwtTMxWlnWnCkZCuB6YfK9TiZ?=
 =?us-ascii?Q?29Rlz/J76uFnoeWqDkVVSu9dcv8Xt9UN2exxrpBrlRFlduKSbWi9w0CSSnvY?=
 =?us-ascii?Q?/i38Tdmj0H5hSHo4aao5lOhnw7c+EIVzobJH4FBZTH/5vW+px4/XCkkASREU?=
 =?us-ascii?Q?BOB185aULExkVpN2zE7bONSOLqJ57XknqNH7b74HO2cU/nX98nUJonj+Wirn?=
 =?us-ascii?Q?gopKviVBGWthMupuYzsLM/2cN55gZxICBJX64Li/9GJ8FBT9DImrRgyOpxim?=
 =?us-ascii?Q?VlrMuV6LWo8ioIYnqgTf+fpqONFA5XeSgYtadaS73f4bxygN9piFY/p38Dyn?=
 =?us-ascii?Q?TGDSBw+O4BA5b6MoQR2y0w4vPztRxwWMJNvwiU2nBA5CofIQH+g/DaWanEyk?=
 =?us-ascii?Q?/gALk3yWgl9+CrFgoh/jg1F7Rn4KV74VViUxMlJJxJlOZW2ZVkOJWer6t2Fo?=
 =?us-ascii?Q?aEOTFgXSTn3pSjavegfFBtxfpICcZ1rfGWzW5ne9a/QXtXVcPfoU5W+8MXfO?=
 =?us-ascii?Q?JI7vjjZvlSeimSNgbMwP2WfNQY1YxyfJVzHZF3AC4QsFdu4TCUmCQnipen+L?=
 =?us-ascii?Q?m1afmAcjxpclvakQN9JOnUQWe97GWEBYa4tVsf09JOvfTsBmOM67fzzdx03B?=
 =?us-ascii?Q?9YuDtf+RtXpfqTXWl0bURqZUwlnuqEknWqD97ZEYb1neGnOL6wXyCcdjMXdg?=
 =?us-ascii?Q?YKZkZID0uZWZ6S1fwK1ZB7pMbFgHz3o3p1W4y0GAt0sujAY+IaFr4Wfwxw5a?=
 =?us-ascii?Q?t5hlBe1emFFJ3O4LwPu+AMLDRW1jyr2Bhxi6PPiO0n+gQGHrTH0ycS0LWUI2?=
 =?us-ascii?Q?UcriczzAiyW8Ayh5m5wsEuC9UwlwKrbRp93CfRs8BD0amv/cOPnJpw/dTAdW?=
 =?us-ascii?Q?2AF498MxFWbcW/sEKKsw06mxCEW8xD2XrFwnz4ZYSdd+Du4Rtx8XpA2HDjGE?=
 =?us-ascii?Q?rK3ZYgOQ5IE0WD5I4Nu+j7GRCkkMpveEaXzPzz+CFeSO4UtnvHVJVwr8ATLy?=
 =?us-ascii?Q?GBjNCRLHNOceaqRuKqcF49kXAZPXGYHij5tjiD6VKw/g5meVk7ZAzLU2lhyu?=
 =?us-ascii?Q?aDJrVHSm471de0xzrKmITV+kFXhr399HL+aAFPnYY7v6SiNwpkvdohdbZxx7?=
 =?us-ascii?Q?fgspEVqc1IahOoDMYyxBMDbD4TijMKV7uycRvAwFuZBkM9sV3s7oGn2V+G1d?=
 =?us-ascii?Q?HrVZs6Y7Q6+JH72C4HAeUZLWO/tLG2qw2g4TNXgjR9/NF4fe9eiB4WVbJfr0?=
 =?us-ascii?Q?T6WyyivRij44Iu4ujXNprGYVZB7xTi1x9VvUKJuzw1Fz9WOzXZghhNwNte3F?=
 =?us-ascii?Q?xDdoWjQymhWGiYx4dsvKx8NTZF/ME0q6JZs+jZcwXxz/YZJIf4Sb8yduAv1+?=
 =?us-ascii?Q?OktrsP9VtzBzYXhNu+oKAoLQzfxUIx4+FFSZl1C3?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879745F875288FD660CF8109B9E4ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96f097bf-6d0c-4f5e-1dfb-08de02602edd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2025 09:35:25.9032
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8spUlGfGstdQ0tfntXXNY7uMXq2faK0MvnGEJZCGcSU1LqUzF8G1lEwlbub3QI/K4QISEVFx0n7rwpoo0y6V3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6883
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Oct 2025 09:35:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65906

--_000_BL4PR11MB879745F875288FD660CF8109B9E4ABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.30 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/poky-51dc9c4=
64de0703bfbc6f1ee71ac9bea20933a45.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.30/poky-51dc9c464de0703bfb=
c6f1ee71ac9bea20933a45.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-4.0.30 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.30
Git Revision: 51dc9c464de0703bfbc6f1ee71ac9bea20933a45
Release Artefact: poky-51dc9c464de0703bfbc6f1ee71ac9bea20933a45
sha: 2b5db0a07598df7684975c0839e6f31515a8e78d366503feb9917ef1ca56c0b2
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/poky-51dc9c4=
64de0703bfbc6f1ee71ac9bea20933a45.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.30/poky-51dc9c464de0703bfb=
c6f1ee71ac9bea20933a45.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.30
Git Revision: d381eeb5e70bd0ce9e78032c909e4a23564f4dd7
Release Artefact: oecore-d381eeb5e70bd0ce9e78032c909e4a23564f4dd7
sha: 022ab4ef5ac59ac3f01a9dacd8b1d6310cc117c6bed2e86e195ced88e0689c85
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/oecore-d381e=
eb5e70bd0ce9e78032c909e4a23564f4dd7.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.30/oecore-d381eeb5e70bd0ce=
9e78032c909e4a23564f4dd7.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.30
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.30/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.30
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.30/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.30
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.30/bitbake-8e2d1f8de055549=
b2101614d85454fcd1d0f94b2.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: kirkstone
Tag: yocto-4.0.30
Git Revision: edf7950e4d81dd31f29a58acdd8022dabd2be494

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.30
Git Revision: 71a3933c609ce73ff07e5be48d9e7b03f22ef8d7


---------------
Contributors
---------------
Antonin Godard
Archana Polampalli
Dan McGregor
Deepak Rathore
Divya Chellam
Erik Lindsten
Guocai He
Gyorgy Sarvari
Hitendra Prajapati
Jan Vermaete
Jiaying Song
Joao Marcos Costa
Kyungjik Min
Lee Chee Yang
Mingli Yu
Peter Marko
Philip Lorenz
Praveen Kumar
Quentin Schulz
Richard Purdie
Steve Sakoman
Vijay Anusuri
Yogita Urade
Youngseok Jeong


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
cups: Fix CVE-2025-58060 CVE-2025-58364
dpkg: Fix CVE-2025-6297
ffmpeg: Fix CVE-2023-6602 CVE-2023-6604 CVE-2023-6605 CVE-2025-1594 CVE-202=
5-7700
git: Fix CVE-2025-27613 CVE-2025-27614 CVE-2025-46334 CVE-2025-46835 CVE-20=
25-48384
glib-2.0: Fix CVE-2025-7039
glib-2.0: Ignore CVE-2025-4056
go: Ignore CVE-2024-24790 CVE-2025-0913
gstreamer1.0-plugins-base: Fix CVE-2025-47806 CVE-2025-47807 CVE-2025-47808
gstreamer1.0-plugins-good: Fix CVE-2025-47183 CVE-2025-47219
libarchive: Fix CVE-2025-5918
libxslt: Fix CVE-2023-40403
openssl: Fix CVE-2023-50781
python3: Fix CVE-2025-8194
qemu: Ignore CVE-2024-7730
sqlite3: Revert "sqlite3: patch CVE-2025-7458"
tiff: Fix CVE-2024-13978 CVE-2025-8176 CVE-2025-8177 CVE-2025-8534 CVE-2025=
-8851
vim: Fix CVE-2025-53905 CVE-2025-53906
wpa-supplicant: Fix CVE-2022-37660
xserver-xorg: Fix CVE-2025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-491=
78 CVE-2025-49179 CVE-2025-49180


---------------
Fixes
---------------
build-appliance-image: Update to kirkstone head revision
default-distrovars.inc: Fix CONNECTIVITY_CHECK_URIS redirect issue
dev-manual/security-subjects.rst: update mailing lists
gnupg: disable tests to avoid running target binaries at build time
go-helloworld: fix license
insane: Ensure that `src-uri-bad` fails correctly
insane: Improve patch warning/error handling
libubootenv: backport patch to fix unknown type name 'size_t'
llvm: fix typo in CVE-2024-0151.patch
migration-guides: add release notes for 4.0.29
overview-manual/yp-intro.rst: fix broken link to article
poky.conf: bump version for 4.0.30
pulseaudio: Add audio group explicitly
ref-manual/classes.rst: document the testexport class
ref-manual/system-requirements.rst: update supported distributions
ref-manual/variables.rst: document FIT_CONF_PREFIX SPL_DTB_BINARY variable
ref-manual/variables.rst: expand IMAGE_OVERHEAD_FACTOR glossary entry
sdk: The main in the C example should return an int
sudo: remove devtool FIXME comment
systemd: Fix manpage build after CVE-2025-4598
vim: not adjust script pathnames for native scripts either
vim: upgrade to 9.1.1652





--_000_BL4PR11MB879745F875288FD660CF8109B9E4ABL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 4.0.30 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/poky-51dc9c464de0703=
bfbc6f1ee71ac9bea20933a45.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.30/poky-51dc9c464de0703bfbc6f1ee71ac9bea20933a45.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-4.0.30/poky-51dc9c464de0703bfbc6f1ee71=
ac9bea20933a45.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.30=
/poky-51dc9c464de0703bfbc6f1ee71ac9bea20933a45.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.30/testreport.txt</=
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
--------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.30 Releas=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.30<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 51dc9=
c464de0703bfbc6f1ee71ac9bea20933a45<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-51dc9c464de0703bfbc6f1ee71ac9bea20933a45<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 2b5db0a07598df=
7684975c0839e6f31515a8e78d366503feb9917ef1ca56c0b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.30/poky-51dc9c464de0703bfbc6f1ee71=
ac9bea20933a45.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.30/poky-51dc9c464de0703bfbc6f1ee71ac9bea20933=
a45.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.30<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d381e=
eb5e70bd0ce9e78032c909e4a23564f4dd7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-d381eeb5e70bd0ce9e78032c909e4a23564f4dd7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 022ab4ef5ac59a=
c3f01a9dacd8b1d6310cc117c6bed2e86e195ced88e0689c85<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.30/oecore-d381eeb5e70bd0ce9e78032c=
909e4a23564f4dd7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.30/oecore-d381eeb5e70bd0ce9e78032c909e4a23564=
f4dd7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.30<o=
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
octoproject.org/releases/yocto/yocto-4.0.30/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.30/meta-mingw-87c22abb1f11be430caf4372e6b833d=
c7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.30<o=
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
octoproject.org/releases/yocto/yocto-4.0.30/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.30/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.30<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 8e2d1=
f8de055549b2101614d85454fcd1d0f94b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: fad4e7699bae62=
082118e89785324b031b0af0743064caee87c91ba28549afb0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.30/bitbake-8e2d1f8de055549b2101614=
d85454fcd1d0f94b2.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.30/bitbake-8e2d1f8de055549b2101614d85454fcd1d=
0f94b2.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.30<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: edf79=
50e4d81dd31f29a58acdd8022dabd2be494<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.30<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 71a39=
33c609ce73ff07e5be48d9e7b03f22ef8d7<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Dan McGregor<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepak Rathore<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Erik Lindsten<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Guocai He<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gyorgy Sarvari<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jan Vermaete<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joao Marcos Costa<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Kyungjik Min<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mingli Yu<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Philip Lorenz<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Quentin Schulz<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Youngseok Jeong<o:p=
></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cups: Fix CVE-2025-=
58060 CVE-2025-58364<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dpkg: Fix CVE-2025-=
6297<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
3-6602 CVE-2023-6604 CVE-2023-6605 CVE-2025-1594 CVE-2025-7700<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: Fix CVE-2025-2=
7613 CVE-2025-27614 CVE-2025-46334 CVE-2025-46835 CVE-2025-48384<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Fix CVE-2=
025-7039<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Ignore CV=
E-2025-4056<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Ignore CVE-2024=
-24790 CVE-2025-0913<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-base: Fix CVE-2025-47806 CVE-2025-47807 CVE-2025-47808<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-good: Fix CVE-2025-47183 CVE-2025-47219<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2025-5918<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxslt: Fix CVE-20=
23-40403<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
23-50781<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
25-8194<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Ignore CVE-20=
24-7730<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Revert &qu=
ot;sqlite3: patch CVE-2025-7458&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Fix CVE-2024-=
13978 CVE-2025-8176 CVE-2025-8177 CVE-2025-8534 CVE-2025-8851<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-5=
3905 CVE-2025-53906<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Fix=
 CVE-2022-37660<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Fix C=
VE-2025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-49178 CVE-2025-49179 C=
VE-2025-49180<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">default-distrovars.=
inc: Fix CONNECTIVITY_CHECK_URIS redirect issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/security=
-subjects.rst: update mailing lists<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: disable test=
s to avoid running target binaries at build time<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go-helloworld: fix =
license<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">insane: Ensure that=
 `src-uri-bad` fails correctly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">insane: Improve pat=
ch warning/error handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libubootenv: backpo=
rt patch to fix unknown type name 'size_t'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">llvm: fix typo in C=
VE-2024-0151.patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.29<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/yp-=
intro.rst: fix broken link to article<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.30<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: Add aud=
io group explicitly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: document the testexport class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/system-r=
equirements.rst: update supported distributions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document FIT_CONF_PREFIX SPL_DTB_BINARY variable<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: expand IMAGE_OVERHEAD_FACTOR glossary entry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sdk: The main in th=
e C example should return an int<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: remove devtoo=
l FIXME comment<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: Fix manpag=
e build after CVE-2025-4598<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: not adjust scr=
ipt pathnames for native scripts either<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: upgrade to 9.1=
.1652<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879745F875288FD660CF8109B9E4ABL4PR11MB8797namp_--

