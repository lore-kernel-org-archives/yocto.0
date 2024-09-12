Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39E0EE6420
	for <webhook@archiver.kernel.org>; Thu, 12 Sep 2024 02:03:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by mx.groups.io with SMTP id smtpd.web11.37930.1726106634500330574
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Sep 2024 19:03:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=bQ5MVjmn;
 spf=pass (domain: intel.com, ip: 198.175.65.11, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726106635; x=1757642635;
  h=from:to:subject:date:message-id:mime-version;
  bh=6WmWFQf9GWnAq5uC1Q7DiSFu8s2jCuqQq2Y6dAY9T7c=;
  b=bQ5MVjmnxcHGXPf73dHhkNRbu65QAsByI92bQb/143KCmDHtJdw9JjhY
   mdrTa0JEjNqtz+raeyuPt96djKajumO0XbNrfK79WYVt+iS4byT5x02Vg
   tdpdEg9TBu/UKiAsgaXGAgkDZXJmw6pmEzL0LwM/IGdiRViPiHovhm02Q
   ISqAAm3HP/vY80+fGmr14RQfhyU9oja7OhXUhFg/RrRDgFtTumOKRlFx2
   ddcGf8Xbyh7y+dqgQDI8rL1Sud6XI5L0ZbfY9zRCj4z3pQ5br2QLsXSWT
   6O1Y/0J5QCGWsKcjZ7w/s/pFbKp8QU5inWiSjlpZhRzuPydwIoWjpe3fb
   Q==;
X-CSE-ConnectionGUID: lE3DpndSTIaGM9KFJI/FZQ==
X-CSE-MsgGUID: BpLD8PCFQlWQxLSgxQ5gVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35509050"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; 
   d="scan'208,217";a="35509050"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2024 19:03:52 -0700
X-CSE-ConnectionGUID: KuPB2ZmeSbqIgeahg7vbaw==
X-CSE-MsgGUID: aDjTC6ekTc+3ql3TYM4QZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; 
   d="scan'208,217";a="72541086"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 11 Sep 2024 19:03:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 19:03:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 19:03:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 19:03:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o0oIH6+t/3EcEFMbHQ9QkljgmLefnnjegmAUgj2XS+bFASAo5q1dohLU0ZObEUMSjUqNElELPfH04w5jlPWAbMWE643QyrklgNXkbOE3/W0Ryl/+cHlB3YIgTtmi3JrO15n2cvbszbMsTjN7t9cp+UZqwoy3k1lwMgwWrjtrKthz2N8gKFlXuqt1rLNL2uwthkIVBJnwONHhbh17MHRPDe7CHfe41n014TwdLEdf+aG5Mggicur9eQFedWA7ZK/mq2j0zpnzI1eFrErTYlbL3YqYfaY5T4/B/BsAlcQZNDmKU5V++bUcdYYZQJuVtjdo8wZIouMIn+2dXxMU1+dqjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6WmWFQf9GWnAq5uC1Q7DiSFu8s2jCuqQq2Y6dAY9T7c=;
 b=IUdQYuuOJNklrzLw9MmR9d1veB+BbTB32r6EiLsAI0BSHTgVfb+riAA/i+EicrKp0Tr+bZZlhajHpOo/xmpiS1Gj/eeVRG03CYSNl1v4j7m05MQ1uleRCODhHJMLpW5n782rIo2Gtmrj3taIgHZqzVYTkl1wNE2STQg6TfM0L4Z8ZCM4ldar+yNVgBskcoaPtjlziR9/ERSt9EyoHHFMOi5uN9kPkCuXPMwn8Y9wKn/L9172sEUj+qeXgULPJ6SVlxfx5cpCrPoHlQCc2jgS+1KRhgvrZpx8k2STvfDCP1EZ3ho7S3n1fS/PfFNP1IuFvt4p5f2fo8UjvXkDoA+Rmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by DS0PR11MB6421.namprd11.prod.outlook.com (2603:10b6:8:c7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 12 Sep
 2024 02:03:48 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4%5]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 02:03:47 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.1 (yocto-5.1_M3) Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.1 (yocto-5.1_M3)
 Now Available
Thread-Index: AdsEttRxHdf95G9QSIKSxDl8tMuV+w==
Date: Thu, 12 Sep 2024 02:03:47 +0000
Message-ID: <CH3PR11MB8093CFE93F3DD35184B84241B9642@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|DS0PR11MB6421:EE_
x-ms-office365-filtering-correlation-id: 1cf22226-6ec5-42a0-b4d7-08dcd2cf23bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dEQ4YjNjRHk2WFE4VHNQUFlrUjNlc3RXWENhUXRwNHpST3h0UmtSOUg1WE5Q?=
 =?utf-8?B?NS9jNklvMm1BNmJCU3JzWmFmaWs1Ulh1QVhER1pOb2xMK1NwejYvR0JLM3ND?=
 =?utf-8?B?NW5uTW1WSUFDbnRZa0lPWGI4R1pYZU5ubUg3OHpqbm5BQ2JqZG5LTHdQbk1G?=
 =?utf-8?B?QnloRFBHVEJzQmFVY1J0MElsbU5HSXpwK1doUlc4cGVpVGN3eDhTdjN5NzhH?=
 =?utf-8?B?R3pFNHRXS3hKd3J5Uk5Vc0M5dXJxczZOSEhkcThVV0hnNnFlMlY1enFqd1hQ?=
 =?utf-8?B?K1hEOVNBUzhZbVBEYXFvMzJnWSt1N3JqN1VqYTEwdnBTc1RBeXNhbGp1UXhL?=
 =?utf-8?B?UjBXc1c4MEJaaThCSGVCNGRsczMxZ2ZiUGljckNqZlgxYnFBN0tPUTJhRnBq?=
 =?utf-8?B?bHNlbVIrQkdzcUU4bHVTcXEwVWxrNUNnODZrNFRLQy9XQTdrSGF4KzVsVzl4?=
 =?utf-8?B?NjN1RzJIeUNDQ081Nk5yVTYxUjRuOG9uTlR0VTBIRy9WUndiS1A5aDQxTHdp?=
 =?utf-8?B?S2JKRDRyMmJ0cGJrWldRSTh5Mm5kNEp5cVdvMFlGYWxETVdHdmh2TW5ldFZY?=
 =?utf-8?B?ZHJjWTR2UzZJdlRUWHhHMHpFZjdBREhmTERUdmhNY0xVSzM5VStnWDAyNjZ3?=
 =?utf-8?B?MmxxOWR0WlJzV2JHUTVmWGd0S0tUSDhmVHI1eHJRRXNRdS9MRHRjR1c3MEtS?=
 =?utf-8?B?S3RFNFU1TEkzai9iekZCVVNPQjN5dElhUmE3RW16UkVYOU8zS1Q2NUl4RGtR?=
 =?utf-8?B?QzhXcG1IZlpocEVvdVB3bytWYTEydnI1Y3pLTGZoSzBwdnBlRS9uM0R6REpr?=
 =?utf-8?B?M0YyN2RjUVp1eFFON3dJcDRidlhFK2FtREt4SGNZdnBzNThkdWZLUGpvTnRU?=
 =?utf-8?B?dUhrK2JVOFROUjZydzlSRHUrRUF3WUttQjE3MWl2c2ZLa2pLNWs0eGR4amV2?=
 =?utf-8?B?YzNuNXhpMDArZjJlbFUxSVlzR2pCRFRiL0NZZ0VTZG5Dei9HZktNU0RDSG01?=
 =?utf-8?B?RS8wdGR4SkVqSXlWSFc0bjhRR1JoaWhjYWp2T0RQZHM5RzlMR2l3L2ZOdlJh?=
 =?utf-8?B?VXV3TXFCUXB1aDY3Qkt3QllTZDdkUkpxd21BT0k1ZGMrY3VudTJwZXYxTTMx?=
 =?utf-8?B?cUk1dTNidUF1bVRvV05OMVQwMUF2SGExNXBnMFJQVXdxMTM4OWhkMnNxWVJq?=
 =?utf-8?B?eE5PVHRxUGxHaGZpZXh0WHRBdUtEN0tOSlk4RGVxZmhoOURZRXI2dmxESFJ1?=
 =?utf-8?B?dHY5ME1ZK1RtQ3gvdVVxbk9DelZseHM0Wm43blpnUnJuNVFDOTd6SjlnbXFz?=
 =?utf-8?B?Y3hidGovd0hzNlNXM0w5UkJGc0ticnVReHJwL3huUUJZVVVreHI0M3hJdm02?=
 =?utf-8?B?OXcwelZ5OXA0OFZkZi9lYnVUcURvUEplSTlZbEdqQ3VpMWFRY2JjMHM2VWZj?=
 =?utf-8?B?UGI1eUhGWkdnVm5rT0lzdVhpdGNCa0dqN0E4NWhVUDlKT09xWTlLK1M4bzRY?=
 =?utf-8?B?SFZMZ2w0Rk81NzBOeENCclBNV2VGMnZGOG0yNksrektiYUltRHhPL2FsNHIv?=
 =?utf-8?B?SXQwWWUydnZJRWQzVFoyQ0t1anlsMG5EdWpPUkgyTHJ6eDRNenNTcFJyK2d2?=
 =?utf-8?B?eXZ6c2RWMHZsNnBoL2NYRjhxSzVsSmNCUzUrMUZhQ29uLzVsWHVpK3B2bDlF?=
 =?utf-8?B?VndncHRzbGpZSHJiVzZmMCs4VU9QS1o2MHhoZE1GMHU5bmNXYjkyY3VsZXJO?=
 =?utf-8?B?clpiV0kvSE5BR1NnK1JKTUw5clcyQjZod3MvOGtuZHFsQUpaQk4wSmhsdUJR?=
 =?utf-8?Q?B9bNOM1tMLn/HYqDxQbu6VGhrVt5WXqtGtO3I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mkw2dktOR2craHlUTTk0QzY3V0lEMDhIdE1UZFFnT3dvT0wzZ0xDT1pleHdj?=
 =?utf-8?B?dHhFSlNnSmZwOU9qQm9RN21wSWcxWGdBMEhxOGlGUHNwa0YyU1g3VUNaejJo?=
 =?utf-8?B?b2xkYlZLcW9SSXZEdDVsdGVVcW02bytob3A5WlNCTzBQcWRCVVYreE5pVmpj?=
 =?utf-8?B?MUViRHllUXF6cVN4ZWpGaWRrSXE0YitYbUh1bXRBemc1UWhuQWVKSlJWZVZ5?=
 =?utf-8?B?NTIwUVdzRUdGL3l3WnlWWENraUtkZGFVU2pCNmdxT0RNVUtiRXhGV1BJdG1N?=
 =?utf-8?B?NTdRdERDSFlKbER5aXgvZisvSjlzSTQ3UUJqYWZKMmptdWdRWGVKRGg5cDk5?=
 =?utf-8?B?VTZCK1dBT0Y0L3lVWFZ0UG50Ym81RWNBRmxHaFd1cC96Rzg0QWVjejhvVUJs?=
 =?utf-8?B?V09WYlRUZmpHRlhjN2tIdlJjWWtHcDAzQmJ1QTBCYjZyWjJiZDlrL1lyUkpl?=
 =?utf-8?B?Yy9TQVhBc1NEekNhdXRZeVhBZDM1blJ0bURlTmM5bzYwZEU4cXIxMEczanhW?=
 =?utf-8?B?dGFXRUlaUzlma0hidzdUUGtEOEhtR0ViV1JMK3VHdTUvaFBQMTgxNjhOcEZP?=
 =?utf-8?B?Z2F1UmRIR1VQNDF6RUpvT2JiL1J1VmZhTFhqWlEwMG1tdWo4NzZpdVVnd3Nq?=
 =?utf-8?B?SkFYa1JzQXl4MkpPR2dTQnczTjlBZVRta05vaGJaSGxjSWNhMkZ4VnpBNlU2?=
 =?utf-8?B?Y3lsd1RJV1prWGJOVGNZK0pzOFkzRXIzUjQ4WXlVcXZXSHc1Zm9zeE1DVFRI?=
 =?utf-8?B?aFhhTmZiL2xNL1BCL0tIcnpFRjRRSmJHQWdISG5Qc0V4R3NNMUhOY2hFSi9X?=
 =?utf-8?B?QzFHekhPS1BQV2o1UGlNN3NKNjhTbktjTHRMTDJlU0FBKy9VTFZPV1k0YXdE?=
 =?utf-8?B?ZEZUYzBZRW9pMy9rSGNlUjE5cE1nQkRHS1RLN01nMWF3aXZtUXQxeDVhK2VP?=
 =?utf-8?B?enJpd1pmNUR4bTFOR0VNY2FrdzhKem5nVDY5R1haZ1NKQXc4b1lkajVGY0th?=
 =?utf-8?B?RUtKa3Y2VjlBMzVYMFRNSlhaMk1qcE15YmsxSHMxWkZSK214bGdPZy9hZmJt?=
 =?utf-8?B?ajBRT21PbzgySnRueEl3VUl1VUo1b2FtWHFrTkhZS3BpTXJIR0RYMlEzcGl2?=
 =?utf-8?B?d1BHZVJMREFHQU1pVVl3VytQbG1EeTJmWXlYQStabGNteHcxUXZRRVF0MEh1?=
 =?utf-8?B?L1hYd2E2Z2dVUVJ5RndYajBYVXdNMDAyekhHY1JqNWVIR0hQWUVEL0UweWll?=
 =?utf-8?B?bmlxbE1nUXNKb1l1ZnlMTHErdFlVYXdrT1k5VHFEdDdya1pHT1Q2VGxnUHpl?=
 =?utf-8?B?bVhQbHVnanphcUFaZGRzcStoZnpFRk9uVEpaVUlzWWQxVGNVNjNtY1llc25B?=
 =?utf-8?B?TWo4VEJuSDhwYWtRUjZ3eDE3Kytza1hVSlFTYzJBTFpkMk15RHg3YkQ3V01U?=
 =?utf-8?B?MjQ5TGI3dTFjeGlBVVlJZmx3Y1g2VkVYUUU3YmF0MXFoazZHVlMyNjlCaWdm?=
 =?utf-8?B?RDVBckFHdXN5K21mVE81bWw2aU90ZG1iRExiQytaaEliMDdyUXhDd3Z0b3pS?=
 =?utf-8?B?UG9JajE2dGxRT0hQenRpcVhBZzRFa3lXdlp6cG9KMnRtU2ZxckJjdVpaZVNJ?=
 =?utf-8?B?Q2FOVy9aRkl1WXlhampvcXkvUGZ4TkJBNXJEU2svMGRlckc3b3NTUFFlNGly?=
 =?utf-8?B?b1F3cEZLUUt5bmFtaXNQWkhVYnVmSUxJMkhyZ3kwTmQ0YjVYWHV1NWIrL21K?=
 =?utf-8?B?MHQ1Q2l4Y3Y0YmlZWUUwN29sdFlNQWxGN21NaWlqUlNyK1NPbkp1NWtEajZt?=
 =?utf-8?B?ZHdsVXIrcFlaSUpXUUpjam9nY3dDMTdMVm5Wbm0yMEtQMU5FY1lxWWg1WnZt?=
 =?utf-8?B?aW02T24rTkFxdktGQ0NGa3o1RkxNdFVTc2VCUUluQ1Btb0o4L2JZVlZLY0tB?=
 =?utf-8?B?YkRiNExVdktEWTJ5cDQ1R0xUczU0cTN6SWo4aHhhMXpuQUQ5Nm0yWTVzdXNa?=
 =?utf-8?B?Q2lEZENyd3ZYa2RyRUx1NU0rR1JwSVVnZTF1cVdQU01UNG1CU3BucVhlcysv?=
 =?utf-8?B?anhuTWhoZGsyZGxGTWlOemhPYXpqNHZnd2E1RHo1M3FFZFg5Z0RYQVo1SEZo?=
 =?utf-8?B?cUtzM0o4VXdneHVjMm9kM1BhZFhCZUdqU3dYTG13TWJIM25xTVBscjZwTk9Y?=
 =?utf-8?Q?EJyW23JYehYgFEV/SaGSPVDadrxBkYDHK0ZLm1GqL7uL?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB8093CFE93F3DD35184B84241B9642CH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf22226-6ec5-42a0-b4d7-08dcd2cf23bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 02:03:47.9378
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xotdLeYm17Kt70yXlBkdqMQv+Xi2NaKqDrK+znYBFzl3IdMLmlE6CxXxGFympG1S3/rXMB+qrRjhOLU0t8SZgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6421
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Sep 2024 02:03:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63827

--_000_CH3PR11MB8093CFE93F3DD35184B84241B9642CH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUgcmVs
ZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA1LjEgKHlvY3RvLTUuMV9NMykgaXMgbm93IGF2YWlsYWJs
ZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJv
amVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjFfTTMNCg0KDQoNCmJp
dGJha2U6IDViZDBjNjVjMjE3Mzk0Y2RlNGM4ZTM4MmViYTZjZjdmNGI5MDljOTcNCg0KbWV0YS1h
Z2w6IDVmNTI5NmYzOTE4MWFiMDFjNmJkNjE2ZDY0NTllZGFhMGQzMjgzZjMNCg0KbWV0YS1hcm06
IDExZDZlMjQxNjc3YTM0MTI1NTMzZTdmMDA0NDBlZGRmOTMzYzg3ZWQNCg0KbWV0YS1hd3M6IDVk
ZWVkYTMxNzIwMDc2MGQ5YjAxNTdlYjUwMjZlZmQxZDQ4N2E4MjkNCg0KbWV0YS1jbGFuZzogNjg1
YWJlOWRhNzA2OTg1YzNmOWMzZDgzNmNlNDk2OWMyY2Y1ZWYwMw0KDQptZXRhLWludGVsOiA4YzRl
YTRjZDJmMjQxZDRkODJhMTUzNDFiOTQwNTk1ODg4ZjcxYWQ2DQoNCm1ldGEtbWluZ3c6IGU0ZDM3
N2Q1ZGRiNjJiMjY1NTM2YmQzM2RiY2NmYmIwOTA0Zjg3MDENCg0KbWV0YS1vcGVuZW1iZWRkZWQ6
IDY1YmFjNTUwNWYzMDZjNjkzMjQ0MTg2Yzc2OWNlZjE4YWE0MzZmNjANCg0KbWV0YS12aXJ0dWFs
aXphdGlvbjogYTk0MGEwZTg3M2Y5MTYzZDQ1ODU1NTViM2YzZDM4ZTk5NDAwZDIzNw0KDQpvZWNv
cmU6IDU1NzQwMDY0OGI2ZjRmMzExNzY4NDdmOGEwNjhkMmUxOTliNzc5M2QNCg0KcG9reTogYmQy
MTU5NzE5YzA4YzEwMWEyNWE1MDEyZmM2ODQxNjMxMzU2NTNlNg0KDQpGdWxsIFRlc3QgUmVwb3J0
Og0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWls
ZXN0b25lcy95b2N0by01LjFfTTMvdGVzdHJlcG9ydC50eHQNCg0KDQpUaGFuayB5b3UuDQoNCkNo
ZWUgWWFuZw0KY2hlZS55YW5nLmxlZUBpbnRlbC5jb208bWFpbHRvOmNoZWUueWFuZy5sZWVAaW50
ZWwuY29tPg0KWW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZQ0KDQoNCg==

--_000_CH3PR11MB8093CFE93F3DD35184B84241B9642CH3PR11MB8093namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5Ouetiee6vzsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAxIDEgMSAx
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkFwdG9zO30NCkBmb250
LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlxA562J57q/IjsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAx
IDEgMSAxO30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9y
bWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowY207DQoJZm9udC1zaXplOjEyLjBwdDsNCglm
b250LWZhbWlseToiQXB0b3MiLHNhbnMtc2VyaWY7DQoJbXNvLWxpZ2F0dXJlczpzdGFuZGFyZGNv
bnRleHR1YWw7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3Jp
dHk6OTk7DQoJY29sb3I6IzQ2Nzg4NjsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnAu
TXNvUGxhaW5UZXh0LCBsaS5Nc29QbGFpblRleHQsIGRpdi5Nc29QbGFpblRleHQNCgl7bXNvLXN0
eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJQbGFpbiBUZXh0IENoYXIiOw0KCW1h
cmdpbjowY207DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fu
cy1zZXJpZjsNCgltc28tbGlnYXR1cmVzOnN0YW5kYXJkY29udGV4dHVhbDt9DQpzcGFuLkVtYWls
U3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZvbnQtZmFtaWx5
OiJBcHRvcyIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCnNwYW4uUGxhaW5UZXh0
Q2hhcg0KCXttc28tc3R5bGUtbmFtZToiUGxhaW4gVGV4dCBDaGFyIjsNCgltc28tc3R5bGUtcHJp
b3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IlBsYWluIFRleHQiOw0KCWZvbnQtZmFtaWx5OiJD
YWxpYnJpIixzYW5zLXNlcmlmO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4
cG9ydC1vbmx5O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsN
CgltYXJnaW46NzIuMHB0IDkwLjBwdCA3Mi4wcHQgOTAuMHB0O30NCmRpdi5Xb3JkU2VjdGlvbjEN
Cgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3ht
bD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6
ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBl
bGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tTVkiIGxp
bms9IiM0Njc4ODYiIHZsaW5rPSIjOTY2MDdEIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQi
Pg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5IaTxicj4NCjxicj4NCldlIGFyZSBwbGVhc2VkIHRv
IGFubm91bmNlIHRoZSBzZWNvbmQgbWlsZXN0b25lIHJlbGVhc2UgZm9yIFlvY3RvIFByb2plY3Qg
NS4xICh5b2N0by01LjFfTTMpIGlzIG5vdyBhdmFpbGFibGUgZm9yIGRvd25sb2FkLjxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+RG93bmxvYWQ6PG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48YSBocmVmPSJodHRwOi8vZG93bmxvYWRz
LnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjFfTTMi
Pmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3Rv
bmVzL3lvY3RvLTUuMV9NMzwvYT48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
UGxhaW5UZXh0Ij48YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFp
blRleHQiPmJpdGJha2U6IDViZDBjNjVjMjE3Mzk0Y2RlNGM4ZTM4MmViYTZjZjdmNGI5MDljOTc8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPm1ldGEtYWdsOiA1ZjUyOTZm
MzkxODFhYjAxYzZiZDYxNmQ2NDU5ZWRhYTBkMzI4M2YzPG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvUGxhaW5UZXh0Ij5tZXRhLWFybTogMTFkNmUyNDE2NzdhMzQxMjU1MzNlN2YwMDQ0MGVk
ZGY5MzNjODdlZDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+bWV0YS1h
d3M6IDVkZWVkYTMxNzIwMDc2MGQ5YjAxNTdlYjUwMjZlZmQxZDQ4N2E4Mjk8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPm1ldGEtY2xhbmc6IDY4NWFiZTlkYTcwNjk4NWMz
ZjljM2Q4MzZjZTQ5NjljMmNmNWVmMDM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFp
blRleHQiPm1ldGEtaW50ZWw6IDhjNGVhNGNkMmYyNDFkNGQ4MmExNTM0MWI5NDA1OTU4ODhmNzFh
ZDY8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPm1ldGEtbWluZ3c6IGU0
ZDM3N2Q1ZGRiNjJiMjY1NTM2YmQzM2RiY2NmYmIwOTA0Zjg3MDE8bzpwPjwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29QbGFpblRleHQiPm1ldGEtb3BlbmVtYmVkZGVkOiA2NWJhYzU1MDVmMzA2YzY5
MzI0NDE4NmM3NjljZWYxOGFhNDM2ZjYwPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxh
aW5UZXh0Ij5tZXRhLXZpcnR1YWxpemF0aW9uOiBhOTQwYTBlODczZjkxNjNkNDU4NTU1NWIzZjNk
MzhlOTk0MDBkMjM3PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij5vZWNv
cmU6IDU1NzQwMDY0OGI2ZjRmMzExNzY4NDdmOGEwNjhkMmUxOTliNzc5M2Q8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPnBva3k6IGJkMjE1OTcxOWMwOGMxMDFhMjVhNTAx
MmZjNjg0MTYzMTM1NjUzZTY8YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5GdWxsIFRlc3QgUmVwb3J0
OjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PGEgaHJlZj0iaHR0
cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMv
eW9jdG8tNS4xX00zL3Rlc3RyZXBvcnQudHh0Ij5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVj
dC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjFfTTMvdGVzdHJlcG9ydC50
eHQ8L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+PGJy
Pg0KPGJyPg0KPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExLjBwdCI+VGhhbmsgeW91LjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZu
YnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdCI+Q2hlZSBZYW5nPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxhIGhyZWY9Im1h
aWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbSI+Y2hlZS55YW5nLmxlZUBpbnRlbC5jb208L2E+
PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdp
bi1ib3R0b206MTIuMHB0Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+WW9jdG8gUHJv
amVjdCBCdWlsZCBhbmQgUmVsZWFzZTxicj4NCjxicj4NCjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpw
PiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_CH3PR11MB8093CFE93F3DD35184B84241B9642CH3PR11MB8093namp_--

