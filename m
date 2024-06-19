Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77221C27C4F
	for <webhook@archiver.kernel.org>; Wed, 19 Jun 2024 02:30:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by mx.groups.io with SMTP id smtpd.web10.11631.1718764230169489128
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jun 2024 19:30:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=YlFoYs59;
 spf=pass (domain: intel.com, ip: 198.175.65.13, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718764230; x=1750300230;
  h=from:to:subject:date:message-id:mime-version;
  bh=xb+BBeT2g+lksTXbz9g0PnCy6ecPrJnrnpjc7jGatmM=;
  b=YlFoYs59qkQUeulT7svZHsKrLxAxVMOyk/2b+9CDf1r2E/epU314D/u+
   qYYEyrIuyAs7gwKW+qhKkeW5mfOspK7io8l+RFdrbd8VBXxnklqYD3qRf
   eMR4Z0aMZUN1fGdMOT1y9J22RxHYDeaM3l2sT0FV9zPsE6F2wWrSEpHIC
   yCCKLiA1r6JdRMUmYtNBgO9a3WZhPC5I0CJE3BM/hqsEgm/zMELDkupli
   J1dan1IviJ8php6MyvVjdWBMpuSX+33WXbi5Wgv5yqGutJVc4XMkvX3Im
   Jl4sOFE5R5B3LzAUxCFePO8NgQYTMrqdLSB5C2hCNKqRf3h9zPide4qKF
   g==;
X-CSE-ConnectionGUID: wH31/wr6RxGY+Nq7saEeAA==
X-CSE-MsgGUID: 3M9Ig9zFSeSBnZzW1+9h9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26803077"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; 
   d="scan'208,217";a="26803077"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2024 19:30:30 -0700
X-CSE-ConnectionGUID: CzXueZciRriJFwdH4Pee4w==
X-CSE-MsgGUID: PcyE/BqLSuuTCTo2PVPBbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; 
   d="scan'208,217";a="72506492"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 18 Jun 2024 19:30:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 19:30:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 19:30:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 19:30:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWb990nSsyjPAKgCC8mR7sT22T58x9dd8X+jLE2K39+9trzAr7uQO+nWgwdrRmKX87/2cUHIMIWaqlhNJzPh+lOl8bOSqhoSfQOYrnpRrBGFlMYzYJ2gfgR8QlQoppMgMqvP5NcVQ41mYEYQk0tO5GqQPuE909K36gGsKacp9pU9thxFICQCITG82kt9/EBczR58LHoHheeKGVEk4mth9cY0yt3VnmB8AIbJe7qF4jBx00l5u8/UyVEKby9BzdBTHv5ESaJaRKwFpYtjDb/08dRIOh9MaoGvkh5y6/DZX6loyDrQHBSuaAh0btLCrXXQgcf6S969bapc7pa4aUhSQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xb+BBeT2g+lksTXbz9g0PnCy6ecPrJnrnpjc7jGatmM=;
 b=aF/4LtUeXWwPHdnF/u0+fKFRNrm7i9dcgcvQT5ffPF0torWsuXF5AR/8ULrI+2Y/ZFtVovmj2BrIOUiomCkF9DIT4adJJuN/BI9KVFvMm/b8a6dp+voN92L4lXh2Lm+PF0PPnBFbF2fLnvC3KV8GmCkEAkNp/6gDODVsZdqGfMlBOgsf3pMUzL1NR+YFllsbAjHoFQ1WiLr8E7tIq4PTN2n4SAgil2/EmVK6yv8pJHjBSHwM+AQ2XQ+cZNWxW+49X9zRUjuVWhOWo0fpJWsvSj6veeBrLkuYRRQI2FLpm11vRgC1QDrpMo1H+8s9OJcUs7NqkGcnbMAU/4kC+J28Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by CH0PR11MB8214.namprd11.prod.outlook.com (2603:10b6:610:18e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Wed, 19 Jun
 2024 02:30:26 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::fd3f:dc5d:e481:43d4%3]) with mapi id 15.20.7698.017; Wed, 19 Jun 2024
 02:30:26 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.1 (yocto-5.1_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.1 (yocto-5.1_M1)
  Now Available
Thread-Index: AdrB7KEK2uAnk1Y6QS+nxnbZsZARSg==
Date: Wed, 19 Jun 2024 02:30:26 +0000
Message-ID: <CH3PR11MB809395819D321D620B1E097DB9CF2@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|CH0PR11MB8214:EE_
x-ms-office365-filtering-correlation-id: 26bb3a57-7dc5-49f2-b0bb-08dc9007c74d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?V3JxK3QvU0Z3S3VCcTh6Y2gwQTJteDVOem1TSXVlY0xaMmF3akhWVVBQWGpU?=
 =?utf-8?B?aXE0V2VIQm9KL2sxTHdqbWIwS1pMR1BHVE5QUzVNdUNmVmFLbkt4KzJMYnJR?=
 =?utf-8?B?eS9OZ05GeHkvSjdldzI1SzNDeXRGRDgwYVpsYlR3bUZNMWpXQXdpQjBQd3Uw?=
 =?utf-8?B?SEd1eGVPMUVMaE9pb053RlY3Wlp4MTZCZHl5aE9UU0d4RFpFa0VxUjZQd2dy?=
 =?utf-8?B?U1NqSFRJelZZTHlMOExJYnVTSHZ1TFU0dzhJVFhEM2l3VjIrN1M5TDVnamJv?=
 =?utf-8?B?N21laVJEMU5PdTRkU3ZHWjFVN0oxd1hPUlQ3S3U0a2NmRXhUc1BrVkRkWXlw?=
 =?utf-8?B?Z3ZDK2FHVXlISVRVeERjdlYzUjBuS3R4bnpZU1FwL2wwNGZhWnNEaXpGSHlF?=
 =?utf-8?B?ekJKL3BHU1RKUytGT2xGbXByTTJIY2NRMFlDbXovMHNjQUY5SzNHWFNrMjZj?=
 =?utf-8?B?NklYY2lvKzhoMGNISWVNOGhzWDJUcFE2VVZzeHk0Qnl4L0lXZ3RiaWNoL0hl?=
 =?utf-8?B?Vjd2QnhIT1pIeDNjSFpwbXA0TUZFZ20vQVYvdkpNeHp5SVVtOWMvVlp1ejQ0?=
 =?utf-8?B?UXpJb2Y3WWFTbGxpcXpxbTlrOVFsQ0JqTW1sR3hPaW5JY1JWRnp3NG44OG5J?=
 =?utf-8?B?RWs4Ukk3ckVnaWxoSnNnZ05QL0RMWVhyOVR5RWxLWEJSM1RCcHkrdzgxZFMz?=
 =?utf-8?B?a1ZZNlM4aE1ieng2cWg4Lzh5aC83Q1NVUVB2MlIwQUluNEEzMk1ScDRhcklJ?=
 =?utf-8?B?aVRteCtUcEFYeHZZRU1ITU82YTMwTUtPQUFPSENWS3JJRVhpY2M4MkcwbEtO?=
 =?utf-8?B?c282NlZWZ2tCSzZGWUNDODM2UWxmQzRrYzBYNXJrWlJFZVVhMVBFZUxya2tM?=
 =?utf-8?B?eThYeDA3Y3h2SkVsQU15YmFWNllXWG9BUTg2M2c2MTFZUGR0dDdoRWp6QlVR?=
 =?utf-8?B?WXZ0dTlaWnBLSS9XTjVabjlGbVRCQ295aXd0QitwanlLUTE1eW1rWXJwS2pJ?=
 =?utf-8?B?RURKQjlOekNudllhbmg2WGdWYVZQQlBEL3dSYXd0dXdUdkJIdVlWSC9XQ2hk?=
 =?utf-8?B?ZUl4NWNuN25GRG5sTmpGTWxMYk5tbUZmdXNFUm5obGxqdXVUS1RMYlRlQS85?=
 =?utf-8?B?K0JBdWRjeE1LNm1zMFp3d1Jad0t4MS9sbnRuOWY5am1ZY1BVNEdFd1lwbVh6?=
 =?utf-8?B?YVZ2bDMxend3cEJ0QS9HVjdaSVdPUUw5WWpoajBVQWIrYy9URGwwYllYT2sz?=
 =?utf-8?B?Vy9IUHdCZC85RDdJRHZEakpLeUpKUUF4RnU5bTM0bzBGZnM5eDRvZVNaY1NW?=
 =?utf-8?B?MStiRmluSmdIRE5YNkZjQ045KzVuS1R3REs1QnIzNmZ1Ung5M3hKUzdTSkRt?=
 =?utf-8?B?WmRqVVcvSXN1Ni9ha29PQjdwVEJQb0ZZcU92NGNzV0VOR1UwYnZMMUNXQzdX?=
 =?utf-8?B?M0dDQm0xMHRDejNqYTlUaVpDZmhHclhEcmhFWmRzUkM0VXduc1NseUlIYTRF?=
 =?utf-8?B?NjRTUGo1TlJpcnZ1Q3lqOWs5QVI4Zm5zby9xRnBVSUUzV01SSDRtWjFPaStE?=
 =?utf-8?B?Y2Zmck5DdGNXQmZ2cDlBYm5BOWVVbXpydWtodCtlcnRHRDBqTnJWSVI3Smxo?=
 =?utf-8?B?a3BhdmdONHROMnpFcXptRmQ1MjJUWjlUd2llcTJPdmtNV1ZVd0dIVUlOcGYw?=
 =?utf-8?B?VzdPMkpoMFRHT2doblhjcnIwM0s5MytmRHRvNXBiRFhTM3g1ZDQvVklGejJ4?=
 =?utf-8?Q?qH2XyUP2XPLdwTijyRya7oQO4NPx/D2Rq1hwxd+?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(376011)(1800799021)(38070700015);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U3ZHYTk1WFNKamZhYnVCN2VOeEhCc0JqYTZ0MXNMK21GcTFxdCtuSUdQcEla?=
 =?utf-8?B?SUFCdEh6ZloxTG80OUpsR3JZUkx6ZEx0bUU1dTk2NE9KTDJxYk9kb0lIMURX?=
 =?utf-8?B?UVppYTZ0a1RKdG1GVGx1UkRBSFFHdWdYSU53SXQzUlk2TjlpNXgzam1NUCtn?=
 =?utf-8?B?K1FuVEpTb0VzMVhNZGpSVWpZUklmTHAvTWJCc3BHd1R4clpDZ3dzL2VxWTgy?=
 =?utf-8?B?dEhjaDhMVlFSeDBWTEgyanp3VUJnbGFucm9HMnZRWU9XaGZ4VHh1cE82N0tD?=
 =?utf-8?B?N3lFU0xVUEtSZE8yOUNKOHJnU2dMb2ZUcEVlb1IybThqcWJzcklJVDJEQmI0?=
 =?utf-8?B?cVkvbS9QVGh3M0FBcTN5bnhpWUE2ZHdhQTArRVFzaUpoYWJFelBjcGluOHU1?=
 =?utf-8?B?ekpqWDJmcVl3R1VjbFh1a3N3QjdVakJJVnZIVy9XQ21xbi8wZkg4M2hLc2FK?=
 =?utf-8?B?cEVvZUJxRTJtZUNwQnVoUDMxeDN5Uk1ENkhlNVVhN2p1ektiY3JLM2hUM3BX?=
 =?utf-8?B?WXh2NnhVVTJhNE8yNVNoTkFySHQ1U3g0dVlQMTVYK3RpeWJ0Mmwza25UOFd3?=
 =?utf-8?B?dTBrUm1YTmN5TjdPdGlIOWlnYStFbHlIVk9oTWd6N1A2clRiTUpadys5SGNh?=
 =?utf-8?B?MmE0cVFSY3MrTC90TlNCL3JPMFFwTVowNTRyY3p2aWVtM0p4RkI2TjA3T2Mw?=
 =?utf-8?B?M1VXM2ErVHVZNXhoZHVRdEpEYytQejBhTmx3c2M5N0JSanNKM2dMdWxjSEhQ?=
 =?utf-8?B?ZnYySzZCVm5FN2twa245S2xhQUdzU2NhU0w2QjRFb3VDckhyTU9vRjZuaEpF?=
 =?utf-8?B?Z0xqQlE1VFZJYUJxY1RtaTE3Z1VZS0NvaGF2Y3lUUmVvbnltZklUVWV1NmR4?=
 =?utf-8?B?Z1NpQjNTK2pJQ1A5Mi9vUmJqcGVVc3R0eHlyZ256ODlSWHJDYmpZVVBmUHg5?=
 =?utf-8?B?eFZFZ05CalFSd21GSkIwL0Z0LzlHZEdkczZTL3R4UTN5WlhkcVN1VytNcG4v?=
 =?utf-8?B?cjlJaDhlYktTb0UzT1BkejFSOXRIQ0o2Y3QrVzRreW9NU3Ercldxalg3bWFL?=
 =?utf-8?B?MnhqWHB1SEY1bjkvNERsbHV0d1dFRXFxQ3dKbXBVeFI2czZwRzYvaUsrVDN6?=
 =?utf-8?B?T01vVStkTkl0RDVGZWRJTDFybWwzZkRqTDFRajBaOWpLaGxZb1NFVklNRDdq?=
 =?utf-8?B?UThCVkxHKzRnS2RZcUpvUE5rb0JWZGZPM0RzRmVSMVk3dm04NFZlck5FeTE3?=
 =?utf-8?B?SXVhMklQTFJvcE0xWllpVHdEZmZDU0xiL2lnSHRHd1Q1WDY2eGkxc3dIWnBC?=
 =?utf-8?B?Z2diakI0cFMxV2tZeXRzVldaT2c5TDlMZ3ZtN3V0dm8rMnVzMktha1ZhbS8x?=
 =?utf-8?B?dk1VT05qMm8wS3BFaU4vdDdnbFg0Qi94cmJRYitFVzdqQUR2OUgyaFYrSC9n?=
 =?utf-8?B?WURyVDRReTR3S0dKWTlCdkFFdTRZaDVSQzdJZGZBYVNTVzVuaGxOU2cwaG5w?=
 =?utf-8?B?N2lSbWs4cS9GVlk5R2psbnc0RHVwMnVvV1BQVWRyWWVwSDJlQkNHWXpoQXlE?=
 =?utf-8?B?dkRJaUI1MzhxYm50QzFPT2RqZHpVMDZUS3JiRVkrd3lKS1p5N2JlZllmaFNI?=
 =?utf-8?B?Q1FhV0YyelpFSG9BaXMrdEZjQVdPVk1RcWZEdy9TU2o0TmlmaTRudmtMWXdC?=
 =?utf-8?B?SFlqbjEzOS94OStjazJaaFBSclRwQkhkbzE3WHgvcUxCMVJZaTM0bzFCc1dh?=
 =?utf-8?B?ekttL0FWZG9LNUlyRVJFclIzazhyS0h6V3NyaUpzTit0V2ZNQ2RCSk84bmlF?=
 =?utf-8?B?ZkRzdFZKbjZhdDZtTkRwQWpLRzkvc2NTaDFyOThUejc2N1lvRHR6S2k0b0ps?=
 =?utf-8?B?ZVlmMCs5Q2ZxZWVOVlBISlJCYkh4ZC9QdXNvOTlPZWpKdlBBVUdGUlBaYzFU?=
 =?utf-8?B?Nk5QNFpweU0vWXhVdmYvcE9hbUpRS2pabmZ3dlVOSU0vVE51ZlB1NlhXWmFT?=
 =?utf-8?B?ZFFJbXpoTENFNE4rZ3VxUlREOFd3cW9HcW1BWC82RGxCUE5sbngxejJPbWRz?=
 =?utf-8?B?Z1hjOUR3UEVnandQLzVGRjdSSXhMOG4zWW9HN29pN29iSmc0ci8yNkphdktM?=
 =?utf-8?Q?wGJswWIL3SJPt6w3hj/ee8lMn?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB809395819D321D620B1E097DB9CF2CH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26bb3a57-7dc5-49f2-b0bb-08dc9007c74d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2024 02:30:26.2253
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CTDHhyhEK50usa1qn4lb17A0iQoA/wo4u2CtG/ipC4g0kCoIDsVSkiAlAvPYz86fiIN21UJKdc+1UDvw0ZNAPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8214
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 02:30:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63363

--_000_CH3PR11MB809395819D321D620B1E097DB9CF2CH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIGZpcnN0IG1pbGVzdG9uZSByZWxl
YXNlIGZvciBZb2N0byBQcm9qZWN0IDUuMSAoeW9jdG8tNS4xX00xKSBpcyBub3cgYXZhaWxhYmxl
IGZvciBkb3dubG9hZC4NCg0KRG93bmxvYWQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9q
ZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTUuMV9NMQ0KDQpiaXRiYWtl
OiAyMzY4MTc3NWU1OTQxZTU0ZWJlYWQ0NjlhZGRmNzA4ZmNhMWU2YmViDQptZXRhLWFnbDogZjY1
MDYwZjM3MGU4ODM0ZGUwMjI5YzYwNzRjNmU0MzI2YmRkMDRhNg0KbWV0YS1hcm06IGY1ZWJiMzZj
NTliNmViODQ3ZjQ1NzEzYTFmOWIwOGE4OGY5OTc4ZTENCm1ldGEtYXdzOiAxNWJiNzFhZmY2YmNk
Y2JlZWFhMjFhMGU3ZWM5MTVlMGU5MGZhZTM5DQptZXRhLWNsYW5nOiBjZTdkMzU0ZGE3YTQ5OGY5
MGJhMjYwYzAwNmQyOWE0ZDIzZTNiNGY3DQptZXRhLWludGVsOiA0ZjRlNmQ3NjNjZjJlN2QwNGVh
YThkYjY1YzBiZDNlOGMzYjY4OWE0DQptZXRhLW1pbmd3OiBlNGQzNzdkNWRkYjYyYjI2NTUzNmJk
MzNkYmNjZmJiMDkwNGY4NzAxDQptZXRhLW9wZW5lbWJlZGRlZDogNDQ2NTYwYWI0MWRlNWUyOWVm
NWRmYjU1NmRlMTE0OWU3NmE4MDM2Nw0KbWV0YS12aXJ0dWFsaXphdGlvbjogZTk2ZGE5OGU0MDM4
ZjUzODg1OTZiNDI5NGFjM2Q4NDI1YjJkYWNiMg0Kb2Vjb3JlOiBlMDY4YmE3ZDZiOTEyMzdmOWRh
YmMyMDUwYzk0NzNiZWQzMTE2OTBjDQpwb2t5OiA1ZmM1OWJlYWVjMDk5Y2Q0YTc4YjM4ZmIwNjg2
ZjM3N2JiZTdkYWRkDQoNCkZ1bGwgVGVzdCBSZXBvcnQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9j
dG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTUuMV9NMS90ZXN0
cmVwb3J0LnR4dA0KDQpUaGFuayB5b3UuDQoNCkNoZWUgWWFuZw0KY2hlZS55YW5nLmxlZUBpbnRl
bC5jb208bWFpbHRvOmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPg0KWW9jdG8gUHJvamVjdCBCdWls
ZCBhbmQgUmVsZWFzZQ0KDQoNCg==

--_000_CH3PR11MB809395819D321D620B1E097DB9CF2CH3PR11MB8093namp_
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
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6QXB0b3M7fQ0KQGZvbnQtZmFjZQ0KCXtmb250
LWZhbWlseToiXEDnrYnnur8iOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KLyog
U3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWwsIGRpdi5Nc29O
b3JtYWwNCgl7bWFyZ2luOjBjbTsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJB
cHRvcyIsc2Fucy1zZXJpZjsNCgltc28tbGlnYXR1cmVzOnN0YW5kYXJkY29udGV4dHVhbDt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojNDY3ODg2Ow0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxl
MTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWlseToiQXB0
b3MiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXtt
c28tc3R5bGUtdHlwZTpleHBvcnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2
MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcyLjBwdCA5MC4wcHQgNzIuMHB0IDkwLjBwdDt9DQpk
aXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtp
ZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4
PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8
bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0i
MSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5
IGxhbmc9IkVOLU1ZIiBsaW5rPSIjNDY3ODg2IiB2bGluaz0iIzk2NjA3RCIgc3R5bGU9IndvcmQt
d3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+SGk8YnI+DQo8YnI+DQpX
ZSBhcmUgcGxlYXNlZCB0byBhbm5vdW5jZSB0aGUgZmlyc3QgbWlsZXN0b25lIHJlbGVhc2UgZm9y
IFlvY3RvIFByb2plY3QgNS4xICh5b2N0by01LjFfTTEpIGlzIG5vdyBhdmFpbGFibGUgZm9yIGRv
d25sb2FkLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+RG93bmxv
YWQ6PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48YSBocmVmPSJo
dHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25l
cy95b2N0by01LjFfTTEiPmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNl
cy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTUuMV9NMTwvYT48bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86
cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZToxMS4wcHQiPmJpdGJha2U6IDIzNjgxNzc1ZTU5NDFlNTRlYmVhZDQ2OWFk
ZGY3MDhmY2ExZTZiZWI8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+bWV0YS1hZ2w6IGY2NTA2MGYzNzBlODgz
NGRlMDIyOWM2MDc0YzZlNDMyNmJkZDA0YTY8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+bWV0YS1hcm06IGY1
ZWJiMzZjNTliNmViODQ3ZjQ1NzEzYTFmOWIwOGE4OGY5OTc4ZTE8bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+
bWV0YS1hd3M6IDE1YmI3MWFmZjZiY2RjYmVlYWEyMWEwZTdlYzkxNWUwZTkwZmFlMzk8bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjExLjBwdCI+bWV0YS1jbGFuZzogY2U3ZDM1NGRhN2E0OThmOTBiYTI2MGMwMDZkMjlhNGQy
M2UzYjRmNzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5tZXRhLWludGVsOiA0ZjRlNmQ3NjNjZjJlN2QwNGVh
YThkYjY1YzBiZDNlOGMzYjY4OWE0PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPm1ldGEtbWluZ3c6IGU0ZDM3
N2Q1ZGRiNjJiMjY1NTM2YmQzM2RiY2NmYmIwOTA0Zjg3MDE8bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+bWV0
YS1vcGVuZW1iZWRkZWQ6IDQ0NjU2MGFiNDFkZTVlMjllZjVkZmI1NTZkZTExNDllNzZhODAzNjc8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdCI+bWV0YS12aXJ0dWFsaXphdGlvbjogZTk2ZGE5OGU0MDM4ZjUzODg1
OTZiNDI5NGFjM2Q4NDI1YjJkYWNiMjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5vZWNvcmU6IGUwNjhiYTdk
NmI5MTIzN2Y5ZGFiYzIwNTBjOTQ3M2JlZDMxMTY5MGM8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+cG9reTog
NWZjNTliZWFlYzA5OWNkNGE3OGIzOGZiMDY4NmYzNzdiYmU3ZGFkZDxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+RnVsbCBUZXN0IFJlcG9ydDo8bzpwPjwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEx
LjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxhIGhyZWY9Imh0dHA6Ly9kb3dubG9hZHMu
eW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTUuMV9NMS90
ZXN0cmVwb3J0LnR4dCI+aHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2Vz
L3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNS4xX00xL3Rlc3RyZXBvcnQudHh0PC9hPjxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+VGhhbmsgeW91LjxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+Q2hlZSBZYW5nPG86cD48L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4w
cHQiPjxhIGhyZWY9Im1haWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbSI+Y2hlZS55YW5nLmxl
ZUBpbnRlbC5jb208L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPllvY3RvIFByb2plY3QgQnVpbGQgYW5k
IFJlbGVhc2U8YnI+DQo8YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4N
CjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_CH3PR11MB809395819D321D620B1E097DB9CF2CH3PR11MB8093namp_--

