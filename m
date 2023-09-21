Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 338BFE70707
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 10:11:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.12535.1695291072242558850
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 03:11:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=PjrEGQvh;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695291072; x=1726827072;
  h=from:to:subject:date:message-id:mime-version;
  bh=35FgCazMhzytllrF8I3PiG3CIXWHfNTo9/7jnhpWvn4=;
  b=PjrEGQvht8OJZGuse9je1brxHTJ8NS4ugchgtRDagEo3STCD37625OOZ
   WpcfJOScOQIf4ZjAne2ZaL05GioTnRbtA6laZ7jPZBsTOJuY2QFCx/0oU
   /Dg+xfEYA9+JwUZT1RoPahhOdPbF71CGt6ZWdYrZSitAIaYrX5yOilTM1
   9Vrl5RAxNKcAMkDf/uy3u+sIrMJ0dEf/N0pG/KN/Ig3zQEQCYQ+vHii5Z
   hptEfoLZKcMi6kWoFxQp1a4feAZQP6rk6rKeqoHy+fisZBn9thVs95/Zf
   0dWStdizZBo95L8EupvidCEurN+RWA11dpV6n9/hzulcSkOalveRkHl8H
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="383217508"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; 
   d="scan'208,217";a="383217508"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2023 03:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="920677340"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; 
   d="scan'208,217";a="920677340"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 21 Sep 2023 03:11:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 03:11:11 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 03:11:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 03:11:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 03:11:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iR7ky3dTTW4VWIp8ey+0IYbsVmTBwhhLLwceTenJa/c/fbGpZI46StlKPOmCl5ZDiNniDn2Bzf0WwlxmBrhUgo2d73w2m3hxah054DjIqdEk0LDV9Qs/hESN5Exoga3907LVIz1bi/V/uK+wVCT1USIJvVo9bOnbyxMZMJI6Fdxbgz9/SoUNBnHPImUVNSCBcn30mL1Dva3KRre2Aa0vT5yuo2EF29/GzdEmUi1d/vMDc2dxqBsBBG+hRvcL9UucKIGArbGmDbVG+smDUcjaU+J2xyjW6FmS24JpG4rRU/o5bPVg8+wik61z36dciuDLDggInVTQNREzZiMwoprFRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35FgCazMhzytllrF8I3PiG3CIXWHfNTo9/7jnhpWvn4=;
 b=ZVV/o//wwgdoShgQYknk0ZTmdArnIpm+7q8SLVoYjLRhZRZMulv2G/kmRnLNGGTvUQjgnYSma6yljaHMSGNkahlnHJti1JzuK65Vbec370m8YY1ps3UXnLZiAYGojF2JBv69ajgYb2FsUwv7YRYZN0ZIZkKaKuExh+y3pU+Amp7Sb0yZZ9cJJfkCL9GcxOcnl236lDPAQiag4l3W6UhpqOGV5NuP98p7yQoLfVxqEE2Yq0GVt1Usc6kydHLm+LRoaMYyOLJkK4aF9ANWimhiyzvz4RH9vOCni/chy/VKcSiX7ysol0FfRXC5SW0/+rxzAGv2CVxBSIFTBq6W83wzgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by SA3PR11MB7656.namprd11.prod.outlook.com (2603:10b6:806:320::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Thu, 21 Sep
 2023 10:11:03 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::2245:151d:2cf4:c5f9]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::2245:151d:2cf4:c5f9%4]) with mapi id 15.20.6792.026; Thu, 21 Sep 2023
 10:11:02 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 4.3 (yocto-4.3_M3)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 4.3 (yocto-4.3_M3)
  Now Available
Thread-Index: AdnsYFGbh0z/X3U2SNuZKd0nEMSyoA==
Date: Thu, 21 Sep 2023 10:11:02 +0000
Message-ID: <CH3PR11MB80930F3C3BCF647940D1112EB9F8A@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|SA3PR11MB7656:EE_
x-ms-office365-filtering-correlation-id: e80b003c-0e59-4eee-eb61-08dbba8b0f9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qwXwFGs5btgYo3EERcimncdoCxrEXbc/mzjijIzprH+mlTIV+Cvm0Z03S7LHp3PPfM8cgidq/b+YcoKVeOTxhUnx/KaNqc4Q6F6wTK4bgGTf9KMDagQz+PbxmGbCZtMDznnp+1I/6Z4iC9rxGXuL5TabmNySuXhqKW6gxuDp/STIGCl1Apax3oGpmuSpNUWKhi0CdMYmF8Y0A7IA6nlQk3L55DDvwo9N+yC91PcShjZGU0XdXSTJrWBdWI+crcQ8wzjERZ4as1iYrHrqCyLIml/M5RGaiACYdGNnOFi3rcAtuCNqdIlT95zQ+pk0Tbr5V+Fnml07l77bkomhFW4+/8sz/DbrxnylQVBf0KdX9dAi08pCMpMFmc9eY/cbwNNSU2jLzDiNBPqdlM3N7Xs9JHZRsy9EOWyjN0bDKRt4uJp78bCqCdfiC5O6EnwU+enS3qkh9mj2ls2FfQm4JM9Z5shIL/9FAyBaqudc6f78RTYTccS29fsl3uw+sO+3EbVThuwwYK0dY5VL0sJ2vHmmW5DhLN4fnI7VDESvnjNoLWEWRPLnavVcKYlE8Mq+gnothiK6qe0gLMtQKhyK6kR/wBWwbdWtta+Dx79Qh0n4Jzg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(346002)(136003)(366004)(376002)(396003)(451199024)(1800799009)(186009)(5660300002)(55016003)(450100002)(41300700001)(8936002)(8676002)(9326002)(66946007)(66556008)(66476007)(110136005)(64756008)(76116006)(66446008)(122000001)(166002)(316002)(52536014)(82960400001)(38070700005)(83380400001)(38100700002)(2906002)(478600001)(966005)(33656002)(71200400001)(7696005)(86362001)(6506007)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDVoeFBzd01PMStJcDFnM3NNUUkra2tIK08yNGl1UEN5RXVHSVZPV09DcDlG?=
 =?utf-8?B?K3pUQ3NvMUx4NGVKOWM0bm9RQnI1K3V4WUp1K1l3SWpOMnNieUY1T1BIRGR1?=
 =?utf-8?B?bXMrMG9sZVYzbkFJUHdwMklpREZSZkVkTTFySGFEd0ROMnVUWVhGZHlBZm5k?=
 =?utf-8?B?WEcyQ1AzYzdnVlBWTmIyeWRGSmlNb0dFVDFlZk1jQkIwc2hqZXN4emJqNk1l?=
 =?utf-8?B?NjQ1YmUyMUZoek5xcXZqMHAzZzFkZ1QvRUM3cjVoanNrdjhMMllNbHAxMFVj?=
 =?utf-8?B?UVdSTUg5MlhxT0U1TVI5b090T3loaWdGaWkwSVRoUk83NFZ4ZklmZkhjK0xE?=
 =?utf-8?B?YmNqditTZlJjNWZrYzUycDhMOFNVcWV4R1lRSkJGZTdMcFJFaGlBZVhiLzVP?=
 =?utf-8?B?N2JWYWhvRlh3cmlvVWhoM091b2c3Z2w5Z1laZUFjaDZnSTBjRVk3MWdQakxF?=
 =?utf-8?B?TkJSOEV0NnNNR3JUVkt2d3VkVU1FZFk3OG1UdGptZll1Z2k5Y09oODBLNlJt?=
 =?utf-8?B?djNabnFmeEVySHk0K0F2TFNMb0FQM2JCVitQYThFVk12eXFBZjJtSFBZaHRS?=
 =?utf-8?B?bVB2RC9pb0VKZ0NBUHVJOXJDcDdDaVd3L1lCT0tIU24wTDBiQ050TnJPRTg2?=
 =?utf-8?B?TWQxaGw0bStrdEQxSHdpVEdMTk9BcEVuWFJhSS9TS21IOFpObURBMThmN1Zs?=
 =?utf-8?B?Um5TMU1QWklRTElLTXRwSytZVVlJbXVKMW0vU1ZFeStzMlVEbi9NdUhocVND?=
 =?utf-8?B?dzJoZFZYRGptalIzc1lYSGQxMWF1TW81ejVMandFS3Y2aktaV0FFUS9KMkRz?=
 =?utf-8?B?KzVYbjNQZ0lFUXF2RStDWjR6R1V6cnprYnN5Q09jQVp1SjhDWjJBSkRxT2t0?=
 =?utf-8?B?dU04VENpYWlGUG9rVE1qYkNOVjJkOWNPTHZSOW9pMmoxVHM3WFI0NWZ2ZFkv?=
 =?utf-8?B?VFVSQTU3enkxQ0pwYkU2R0Nwam1BbWhSbFdXR3pONWtIYURsczljTGs0N0hi?=
 =?utf-8?B?UG1wSFBzNkdTYVU5eXpmZ3BXcXRLNTFmb0NVTGptSENaWC9RNVNCWHhxZWwz?=
 =?utf-8?B?bWhuR1dnVHB0NXQxOWxmc2ZKeVFPR3p6K2hpeEVYVldYbnpoOHRDMFU1YjlJ?=
 =?utf-8?B?WkZsblpqSlcwUlJUbWdnbjVqejJhcmVKcm5JZ3ZCNkZOdVR1SWczanQ3QWtM?=
 =?utf-8?B?NGpyNVk2cC9iZGRPRDdkM0tLWWFjWHNYZnh0RDdlQmtUNlRtd2VJZmRHblNP?=
 =?utf-8?B?U2RmdEpLV2JQeTdneXBpTWdLQXpqYXcxelFTZ3Z1L1pHMElTMGhqU3VGL1pW?=
 =?utf-8?B?dnRKYXVDL3phOTdjem5xUyt0YzRRWEZPbHpIeWx0cU91YnZ5NDd0YTRlZVRo?=
 =?utf-8?B?L0hBajFLYXdDQjJ5SG4zY29lNXpoSnlVb3lUcTJFMi9SdnEyencrZjMzT2JB?=
 =?utf-8?B?c2FtVDZkQkk1RkJEei9JYWVqalJvSURtdEI1Y3F4d3p4aXBrcy9qK0lwbXNv?=
 =?utf-8?B?OTVCcEdocG84ODJxb2FpbCtGWFlqK1FrMGF5U0lrR2NoUXY3aDdHaDZFNnlN?=
 =?utf-8?B?cGpxZGRldit6Umh3MVZjUU5pYjlaL2c0djk1bHRQSEEvTjhzZzkzb1FybXg5?=
 =?utf-8?B?bUpLaFlPMUFGQkdJdTZnSzhpY0pqTTBSL082bVV1SklIZ3JVYzdBL3dIcnlP?=
 =?utf-8?B?cFBGVTZ2YXM4Y3ZHZ0dVdVZEZm81OStjbEJ2bWx6Q1RJMU41K05BR1VCVFRI?=
 =?utf-8?B?bVA2Q0UwU3VWeUlDcnd6c0R3V1hubnFuSG1SNytwR2Uwb05FbExBcnMvWm9W?=
 =?utf-8?B?VE1tZG5BcW9CZE8raU9WOUpET1JNQjMrdjdUdnJNYnBpd1NKSHZTaURrOCtp?=
 =?utf-8?B?THhteVBLNjJUQmljNFgrWHFhUkQzTzZyR2FFeE9Uek5COTRVZEQ2blljT21o?=
 =?utf-8?B?SjJCcEtkWDR6d0czNllpQnZXM2UrQXFCaWJaRk4zRHQ5T2tGYTV1Ym40cVpz?=
 =?utf-8?B?RHFPRGFkbDkvTFozS3YyNFB0djRKSVp3VFBNYS9ZTVFoY0x5U0cxOG5ESWhL?=
 =?utf-8?B?QzhWcjFDY2RFUEtPd2JsSjBOMlN5dCtOdiswd0F3cnpROTBublhBSTRzd0hy?=
 =?utf-8?B?TG1qNGhQamtocUFuclVjSlBnQi9ybkY4WXovSHRRWVowRmhoQVFybnRyTERW?=
 =?utf-8?Q?/PglKFPtecNe63FL3CuUW1IXsU1wWQITOj40xYTXTW2Q?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB80930F3C3BCF647940D1112EB9F8ACH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e80b003c-0e59-4eee-eb61-08dbba8b0f9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2023 10:11:02.8220
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +IuwB+Fhld6l/A11+cGgvHbKc9Y/bHEylIvQgdKSQ4BR/JHR+gCYeeuuBhYbXZiuB78RBsePNYJnAwuTcqRQng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7656
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 10:11:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61064

--_000_CH3PR11MB80930F3C3BCF647940D1112EB9F8ACH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHRoaXJkIG1pbGVzdG9uZSByZWxl
YXNlIGZvciBZb2N0byBQcm9qZWN0IDQuMyAoeW9jdG8tNC4zX00zKSBpcyBub3cgYXZhaWxhYmxl
IGZvciBkb3dubG9hZC4NCg0KRG93bmxvYWQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9q
ZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMw0KDQpiaXRiYWtl
OiAwMzM4OTZkYThkYWFmZjY5ZGYzYzJhZGI0YWQ1ZmVlMjkxMjFlODMxDQptZXRhLWFnbDogZTY1
NGEwNTBhM2EyZjJlNzgwYjM1ZjkwZTZiZTdhNDUzYmIwYzMwNQ0KbWV0YS1hcm06IGEyNjJkMzA4
ZTc4YjlhZDVjMGY5MmM3NzcxNGM3YTM1NGM1ZGRjZmINCm1ldGEtYXdzOiAzMDk1MjQwZmI4NGJl
OGZjNzhmYWNkZDJjZGI5MWY3N2FiZjRlNjJkDQptZXRhLWludGVsOiAwY2NiZDVlNzEwYjgyN2Ex
Y2M3M2FjZjBhYzc1YzM5NWVkYzU3YjU5DQptZXRhLW1pbmd3OiA2NWVmOTVhNzRmNmFlODE1ZjYz
ZjYzNmVkNTNlMTQwYTI2YTAxNGNlDQptZXRhLW9wZW5lbWJlZGRlZDogNzU1NGFmYTliMzhjMTJh
MDY2YjU5NzBlMThjMWE3ZDYwNTg0ZjQ3ZQ0KbWV0YS12aXJ0dWFsaXphdGlvbjogMTEzYWY0NWI3
NWQyYTE5NzI2ZDNlMDg0ZTliYTA1ODI2MTI4MDk3Yg0Kb2Vjb3JlOiAwM2QzNzg1NGIxZGFjYmVj
ZDJjNTIyODIxYzU5ZWYwMWQ5YmQzMDVjDQpwb2t5OiA2MTUzMWNkMzk1NmM1NjY0NGZjMWM0Y2M3
N2YxMzBlNjBkYjFhNzcxDQoNCkZ1bGwgVGVzdCBSZXBvcnQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMu
eW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMy90
ZXN0cmVwb3J0LnR4dA0KDQpOb3RlczoNCg0KVGhlcmUgaXMgbm8gcmVncmVzc2lvbiB0ZXN0IHJl
cG9ydCBkdWUgdG8gZXJyb3IgZHVyaW5nIHRoZSByZXBvcnQgZ2VuZXJhdGlvbi4NCg0KDQpUaGFu
ayB5b3UuDQoNCkNoZWUgWWFuZw0KY2hlZS55YW5nLmxlZUBpbnRlbC5jb208bWFpbHRvOmNoZWUu
eWFuZy5sZWVAaW50ZWwuY29tPg0KWW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZQ0K

--_000_CH3PR11MB80930F3C3BCF647940D1112EB9F8ACH3PR11MB8093namp_
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
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQOetiee6vyI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0K
CWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJ
bXNvLWxpZ2F0dXJlczpzdGFuZGFyZGNvbnRleHR1YWw7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVy
bGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6IzA1NjNDMTsNCgl0ZXh0LWRl
Y29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHlsZTE3DQoJe21zby1zdHlsZS10eXBl
OnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJ
Y29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBv
cnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3Jk
U2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcyLjBwdCA5MC4wcHQg
NzIuMHB0IDkwLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30N
Ci0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6
ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBn
dGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2
OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0t
LT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLU1ZIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1
NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0
aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaTxicj4NCjxicj4NCjxvOnA+PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+V2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHRo
aXJkIG1pbGVzdG9uZSByZWxlYXNlIGZvciBZb2N0byBQcm9qZWN0IDQuMyAoeW9jdG8tNC4zX00z
KSBpcyBub3cgYXZhaWxhYmxlIGZvciBkb3dubG9hZC48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
RG93bmxvYWQ6PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNw
OzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhyZWY9Imh0dHA6Ly9kb3dubG9h
ZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19N
MyI+aHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVz
dG9uZXMveW9jdG8tNC4zX00zPC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5iaXRiYWtlOiAw
MzM4OTZkYThkYWFmZjY5ZGYzYzJhZGI0YWQ1ZmVlMjkxMjFlODMxPG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWFnbDogZTY1NGEwNTBhM2EyZjJlNzgwYjM1ZjkwZTZi
ZTdhNDUzYmIwYzMwNTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1h
cm06IGEyNjJkMzA4ZTc4YjlhZDVjMGY5MmM3NzcxNGM3YTM1NGM1ZGRjZmI8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtYXdzOiAzMDk1MjQwZmI4NGJlOGZjNzhmYWNk
ZDJjZGI5MWY3N2FiZjRlNjJkPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5t
ZXRhLWludGVsOiAwY2NiZDVlNzEwYjgyN2ExY2M3M2FjZjBhYzc1YzM5NWVkYzU3YjU5PG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLW1pbmd3OiA2NWVmOTVhNzRmNmFl
ODE1ZjYzZjYzNmVkNTNlMTQwYTI2YTAxNGNlPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5tZXRhLW9wZW5lbWJlZGRlZDogNzU1NGFmYTliMzhjMTJhMDY2YjU5NzBlMThjMWE3
ZDYwNTg0ZjQ3ZTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS12aXJ0
dWFsaXphdGlvbjogMTEzYWY0NWI3NWQyYTE5NzI2ZDNlMDg0ZTliYTA1ODI2MTI4MDk3YjxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+b2Vjb3JlOiAwM2QzNzg1NGIxZGFjYmVj
ZDJjNTIyODIxYzU5ZWYwMWQ5YmQzMDVjPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5wb2t5OiA2MTUzMWNkMzk1NmM1NjY0NGZjMWM0Y2M3N2YxMzBlNjBkYjFhNzcxPG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPkZ1bGwgVGVzdCBSZXBvcnQ6PG86cD48L286cD48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxhIGhyZWY9Imh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95
b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMy90ZXN0cmVwb3J0LnR4dCI+aHR0cDovL2Rvd25s
b2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4z
X00zL3Rlc3RyZXBvcnQudHh0PC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PGJyPg0KTm90ZXM6PGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5UaGVyZSBpcyBubyByZWdyZXNzaW9uIHRlc3QgcmVwb3J0IGR1ZSB0byBlcnJvciBk
dXJpbmcgdGhlIHJlcG9ydCBnZW5lcmF0aW9uLjxicj4NCjxicj4NCjxicj4NCjxvOnA+PC9vOnA+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+VGhhbmsgeW91LjxvOnA+PC9vOnA+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5DaGVlIFlhbmc8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhy
ZWY9Im1haWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbSI+Y2hlZS55YW5nLmxlZUBpbnRlbC5j
b208L2E+PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Zb2N0byBQcm9qZWN0
IEJ1aWxkIGFuZCBSZWxlYXNlPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRt
bD4NCg==

--_000_CH3PR11MB80930F3C3BCF647940D1112EB9F8ACH3PR11MB8093namp_--

