Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629E3C54E64
	for <webhook@archiver.kernel.org>; Tue, 26 Mar 2024 02:37:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by mx.groups.io with SMTP id smtpd.web10.9931.1711420660142817170
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Mar 2024 19:37:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=CyEn1KzU;
 spf=pass (domain: intel.com, ip: 192.198.163.14, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711420660; x=1742956660;
  h=from:to:subject:date:message-id:mime-version;
  bh=aQSxmXY+3xKuLlG0xp8EypIcVw53qz5S8NEj1xg8xIM=;
  b=CyEn1KzU1BvXpMbQmhSkSITCGONCF+9jSZRmnViaeqxhdzHINvuAvnwv
   D0k+0jvajGSePpmGOxRzzrRVm3ijrVja1lL8Ox8XgSns/+/SQV845RWS5
   VDC/flsLWBIIQ2MyPdzb9DfYpVVMCQ5awJFJTH9A04HEV3dG71xqHvfG9
   m5mpTjLEAnlhCP8iqXbta+mqkJteIJ1CsDtWhD5rUnpe9/Kwqqrq1u0JD
   Hw9439AuS6qV4tiEcskd/9QFBZFdLmRgU+7df6ao2dqc5McfDqM8z16xq
   d+yYI4JM5mtppSIHrxz9JtL58ZPSGwV8gPYx6d70jBOu/1WNabkNI6Ne4
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6665361"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208,217";a="6665361"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2024 19:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208,217";a="20377391"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 25 Mar 2024 19:37:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 19:37:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 19:37:39 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 19:37:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Quh86137Xsow/vX/1xCTvns/nAo2RT5zVQp6noYUcMAeRX2H0yVVo92RkcntEjjrA7kEP0CnTNc6OPwxW4bWGSRQowT4kDBAkC6Taee+mJJu3gpMH9E206PEs3g2JmZOXeXZoRdCE6N3p3mRaqstem44+mJpvmoAZkfz3YweaBwDj6/tQz/RhvT4i6OkEm2snEnvaNMX/cwbX9ZEjGxdMPLIA6/X4LG9R8Gm2eqNEdR46Si4ObRNIpTcnu+9XloGNx4kwCRRreXIluSYBY3HhRxv6SprDVSlgkbhGSrzx0EEh8LitFN4hn0pM7KR816dE9lWns8TOAPYC0vyS+kdmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aQSxmXY+3xKuLlG0xp8EypIcVw53qz5S8NEj1xg8xIM=;
 b=kvlKAhzc5nGWKRNhJ4zszHWYQFdVbyagUE/bKb05+oLfNsTbEBWpOhTqvRHTIVV8R028LiiWYlo0Oj8xjDjMQ2qTKACGGweCZTSWPuhyxjTXjRChVo3nlbe8YFAW/h4OpUrR7PNgIABbvUZ1zLspJRQkXIVc6mw4axzmzZ2cx7FEO+dm5z4et4S7irymLGObWUuPGkqVLeDrpkPg/WQWBoH7VL65IlHs0rGBrihL9sTUvalZsRleOC4FXDxOPVUFrEOMP8B9GPEqpTR09FlsnTdOUK0J2MhZo+Fe4vpPjUpyr/VBm9BTN8/4xH3HK90VK3tiVLrWQ6D9ZOdNOc7H3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by PH0PR11MB4807.namprd11.prod.outlook.com (2603:10b6:510:3a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Tue, 26 Mar
 2024 02:37:37 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::d5d3:b249:93f9:bf22]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::d5d3:b249:93f9:bf22%7]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 02:37:37 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.0 (yocto-5.0_M3)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.0 (yocto-5.0_M3)
  Now Available
Thread-Index: Adp/G11UbjSsvhWvStiEi37lSxrvvQ==
Date: Tue, 26 Mar 2024 02:37:37 +0000
Message-ID: <CH3PR11MB8093FD4F9D156F2ED9A7EF69B9352@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|PH0PR11MB4807:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dFkHeQbuFazE1kibOilgs8rLHxzz8wAM5uJ+EZbZ4oiTx3c78sWmTBd1+7HfCcyIB5QZtHQZztfD9UMHwoARYbD9ImVsq+cGbdzzxMvT7F4tsDu2ReTnysd/93vCNB2FbycyNgRp5n96J+Q5/pFbqX70DXS58c3hY4bHmlp/f4Id7zws0VV+BtuJWjDpXHJvh/8USwu1xDgTHx2nYxmlCw064VFNJXrscx5uyT/USFs51r/DI5vTXd7Zkfg6yMf3/CjguKH3ECRpAi/w8gSHXgJKc/FfxhFSraRyrKszKFOXH2Xb8dAmoAwal7mCa7kvDeT9QiVX16ZPq6hf7t2JqQB20YCMqMwcBE7S4w5uai0Xn5dGPzz7AO9jJ4Zar5le/txgx1woR1gXv8ukINV4k3wJKkeMMRJn7LQ7gR0Exe0N+B6dlOzbpdJE4H4poLCi0acI/Y8h9LEdkAdQo2Nim9GP4C5JbI9xxSvyJb4gV6l5UVCHFJQOwsVlTK+Kx1wyRdNRwQ/VHN941KtQ+0aF4CKximL1uTZLCjhx7WMUIrfDNsYsP6dVdJ3mbG+eXfnY8dcxabyKJ6EobApci1+RxmInLASXhvMILnVXwBxi6iXSR9TrtLUPqfw0InvJCQLL
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEs0SVQ5NWt5OG5NcXQyUkhCSDRmb1lybEtkYkcxU2hEbFRSKzZPV0kvU0Rq?=
 =?utf-8?B?MFVvTW1sVU53QjlYUGprZTJYcTFGMXpZcUdpNi9kYnFWRk0rL1pNMlVnM1V0?=
 =?utf-8?B?ekVDZEFGUzBYWlRjbDJzSG4wZ2RxQ1JabldHSjZrNmtkcUZsVWxnRDdia2l3?=
 =?utf-8?B?ZkNuSng5RnE2ZDVnTS81MEo1UVVsd0kyc2RpMkdLTFNoOFVqNnVoV2E1SlhQ?=
 =?utf-8?B?ZzNvVFpFVURlOU4wZDBkMDFhQm5OeFVNc25SZ2xuYlBGVHV3VWROVzhtUE9X?=
 =?utf-8?B?eTlOWEd3dGpFVk9GbkhNL0czTlJGdGhYKzUzd1llYTJLMTJ5cWcwbVhULzZS?=
 =?utf-8?B?VHBqWkhFaHkzWlZjVzhVWlFsWm1KWCtYNlNVMEVBajFmOXVYR3ljUnhNVzFQ?=
 =?utf-8?B?UW9lR1JNZlhNeUEvaElqck5rYndTNGlqOE0rQUEzNHh4aGNPL3IrTXp3M0U5?=
 =?utf-8?B?bmRiR2NTM3A4UkpIeVNDeWpvdzlUODNYakxNTHE4b2svR0Z4ZUJ4WGwrZk01?=
 =?utf-8?B?YU1INmpNTkh2YktvcUVFM2xUZHlYbUg4UTJzTzBibTBLdE1xeFVDRGUrN2Fl?=
 =?utf-8?B?U1NYdXhGcHZ5bWk1ZUVjSU5nUkpDRHJjYmM0SGdYOWZuSWoyNDZvMlR5QXAv?=
 =?utf-8?B?MkZDTU1ibkhtTThONWk5eEVobGdZYTd2UVRlSStEcXpyVjVKSjBvcm9jeS92?=
 =?utf-8?B?VUJlYVVkN3ozT291YWZLYlZyQ282Y3F4SjFLNXYyeXp4Tm84K1pYVmpqNklV?=
 =?utf-8?B?bDRTaEhZNTBsbFh1dUZrbjMxOW5lVU5SMDE5cDREL1NWOFBhODJrWWJ6dnQ1?=
 =?utf-8?B?Z09NSjVSZGFTTHBma3FScWhqQlF3UG53SHVkcStNak5rMWlJTTJxZXY4SjVT?=
 =?utf-8?B?encvWC9BbFJscFNHbWk3TWVTMGw0dytjV2xCTVJiYTlOSmVOdjNiVGxPOUxr?=
 =?utf-8?B?c2QzVUhOTkhXb29pbk1DaWdodFdLWE1NVmJVaExpd1lLR1FRQlF6VGxvYm9H?=
 =?utf-8?B?MktLeXQ2c0h3ZHBsS25qK2c1aUhpYmZhYmV0T05hNEx0R1k1c2x4WGZzVFc3?=
 =?utf-8?B?b3A1THRqeVFDK2g1Lyt0UU5PcjJ5N0lLUTc0cTA4VTN6SDA3RU51R240RVpk?=
 =?utf-8?B?RjJpWEZ3Q3lSYlJ1Q0JINWxiVURBU2JwNEM3MERDYzR4d1BLelp5ZHRIc256?=
 =?utf-8?B?SCs4Rjdqa1VqTkRpMitUU0p1Y3VRVXF1K0d4RUJvSDVFMTdLTVpJRXZpWXlN?=
 =?utf-8?B?bGR4d3NVazZibE03UUQza3RNL3V0blloN0l4NVBXcUtDVWNlaS96NmVPTFlD?=
 =?utf-8?B?NTdEbGhia21pTS9JQ3dGWG5FLzZIaUtTNSsrYlBtayttdGFQcHlzOUpFVVc2?=
 =?utf-8?B?MUFJbTJmdUZVN3FGc2JzeGFIaGYyaEhJVmd6aDlkSzBrbk1GQjN3MVQyK2tu?=
 =?utf-8?B?Um9JMW53OW1HeFpaVkVzMVl5NzBMcHFjcWdqenIxR0JXZW1yQUF1N3VKMWNB?=
 =?utf-8?B?YXFRSU95Z1FwVWtlNW5ZbUJ4M2VqRld2RDVjaDZtL2NVamx4Y05WYis1OFc1?=
 =?utf-8?B?aEVzY2thdEpIenNENjhadUN4K2x2OS96NndDUm1OYzdoM0JyTXBXVURybEFC?=
 =?utf-8?B?WTJXdkllbVp6UFkvZUNMK29iMmE2TGFId1M5TmtadnVKMFQ1cDh0bHZMbUxS?=
 =?utf-8?B?MXEwNTBKNU1CelVPYlFzcGxRbkVFc25HRVJIZXlKeENIcUMxTjg0M2xiQ2E2?=
 =?utf-8?B?b1VxdFJuVE55cTVTRW52RWhLMVFFN3IzelBwcEd4aVRKa2FFS3Q3TkJLMWdN?=
 =?utf-8?B?aWNWeThFMVdnUHJOdk0weVNrUnFwNTBqZ00yaE9lSldvenJSSTVzTjVzY1Bj?=
 =?utf-8?B?OEJnQ3ArRUhpVGwweVFFaEpwbHFQV0lJNnU3VmozWExDc2J6dit6ZkZKUHZT?=
 =?utf-8?B?TTZ4OE8wZnA2ZHpJSE05MUpzODF0MndSdkdxcHVxeEdhMVBLOEZ3L1dwTEE3?=
 =?utf-8?B?VUhCT0h3dGxpK2cxTllCVHBOdDhKNE8rbGFYNTlDa0VlRnl4NWtjamdsNHhh?=
 =?utf-8?B?U044V3pkUmwzcnFpMUloNUFXYjhpTkNLd1J3a0NiSHRDOXI0R0lBbWNoZjVJ?=
 =?utf-8?Q?Ofd5uxuXBA9ZkqluSG9atYPkS?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB8093FD4F9D156F2ED9A7EF69B9352CH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc5b449-1bda-4555-496e-08dc4d3db314
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 02:37:37.2219
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mg5CocvJO1eLFL1tv98vYJRucGBjAFsCnRReWd7EFsxmqIXRlqqQDk7QwfNPZGcOtaztiEv4A30/+bmItZ5AAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4807
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Mar 2024 02:37:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62842

--_000_CH3PR11MB8093FD4F9D156F2ED9A7EF69B9352CH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHRoaXJkIG1pbGVzdG9uZSByZWxl
YXNlIGZvciBZb2N0byBQcm9qZWN0IDUuMCAoeW9jdG8tNS4wX00zKSBpcyBub3cgYXZhaWxhYmxl
IGZvciBkb3dubG9hZC4NCg0KRG93bmxvYWQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9q
ZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTUuMF9NMw0KDQpiaXRiYWtl
OiAwYTMzYjU2MDIzM2I5ODM0NTYxNzg1NDE2MDNhYjk2ZmVhMjIyMzhiDQptZXRhLWFnbDogNDAz
NTQ1YzIwNWMzMGRmMjRlMzllZTAzZDZmMTg4YWNhOTk4YjNmNw0KbWV0YS1hcm06IGFiYTkyNTA0
OTRmNjIzNjBjMWVjODAyMWY4MTkyMmMwMDVkOTJiODINCm1ldGEtYXdzOiBlYjM1MTcyMmQ3MWY1
ZGUxMjg0NTViOWY1YmZkYWJmY2U1ZDJjNzI1DQptZXRhLWNsYW5nOiBlZWJlNGZmMmU1MzlmM2Zm
YjAxYzUwNjBjYzRjYThiMjI2ZWE4YjUyDQptZXRhLWludGVsOiA5ZWQ1NGExMzgwM2U0MmNhNDA1
ODlkNmNlMDJjNzZmMzE2MmY2YjczDQptZXRhLW1pbmd3OiBhY2JiYTQ3Nzg5M2VmODczODhlZmZj
NDY3OWI3ZjQwZWU0OWZjODUyDQptZXRhLW9wZW5lbWJlZGRlZDogYTAyMzcwMTlmNWI1YzAwM2Zk
MGM2ZmQ0NDg2ODU5MjE0ZTI0YmUwMQ0KbWV0YS12aXJ0dWFsaXphdGlvbjogZTdmOWMyZGQyZjlm
NGFjOTU5NDJiNjljMDVlZDhmNWQwNDk0ZWRiZg0Kb2Vjb3JlOiBiYzc5M2ZhOWQxZmUyNGMxMDJk
OTFlOTdiNzAwMmI2ZTYzN2NiZmE1DQpwb2t5OiBiNTYyNGVlNTY0M2Q4ODFhZmEwMDQ1NzFhMDk2
YTE4OWFiNTM4OWI1DQoNCkZ1bGwgVGVzdCBSZXBvcnQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9j
dG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTUuMF9NMy90ZXN0
cmVwb3J0LnR4dA0KDQpLbm93biBJc3N1ZToNCg0KTWF0Y2hib3gtZGVza3RvcCBsYXVuY2ggZmFp
bHVyZSBvbiBCZWFnbGVCb25lLiBUaGlzIGlzIGFkZHJlc3NlZCBpbiBsYXRlc3QgbGludXgteW9j
dG8ga2VybmVsIHVwZ3JhZGUuIFNlZSBidWcgMTU0NDAgZm9yIG1vcmUgaW5mb3JtYXRpb24uDQoN
ClRoYW5rIHlvdS4NCg0KQ2hlZSBZYW5nDQpjaGVlLnlhbmcubGVlQGludGVsLmNvbTxtYWlsdG86
Y2hlZS55YW5nLmxlZUBpbnRlbC5jb20+DQpZb2N0byBQcm9qZWN0IEJ1aWxkIGFuZCBSZWxlYXNl
DQoNCg==

--_000_CH3PR11MB8093FD4F9D156F2ED9A7EF69B9352CH3PR11MB8093namp_
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
cnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJ
bWFyZ2luOjcyLjBwdCA5MC4wcHQgNzIuMHB0IDkwLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJ
e3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+
DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+
PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4
dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxh
eW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLU1ZIiBsaW5r
PSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4N
CjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaSA8YnI+
DQo8YnI+DQpXZSBhcmUgcGxlYXNlZCB0byBhbm5vdW5jZSB0aGUgdGhpcmQgbWlsZXN0b25lIHJl
bGVhc2UgZm9yIFlvY3RvIFByb2plY3QgNS4wICh5b2N0by01LjBfTTMpIGlzIG5vdyBhdmFpbGFi
bGUgZm9yIGRvd25sb2FkLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86
cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Eb3dubG9hZDo8bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qu
b3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNS4wX00zIj5odHRwOi8vZG93bmxv
YWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBf
TTM8L2E+PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmJpdGJha2U6IDBhMzNiNTYwMjMzYjk4MzQ1
NjE3ODU0MTYwM2FiOTZmZWEyMjIzOGI8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPm1ldGEtYWdsOiA0MDM1NDVjMjA1YzMwZGYyNGUzOWVlMDNkNmYxODhhY2E5OThiM2Y3PG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWFybTogYWJhOTI1MDQ5NGY2
MjM2MGMxZWM4MDIxZjgxOTIyYzAwNWQ5MmI4MjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+bWV0YS1hd3M6IGViMzUxNzIyZDcxZjVkZTEyODQ1NWI5ZjViZmRhYmZjZTVkMmM3
MjU8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtY2xhbmc6IGVlYmU0
ZmYyZTUzOWYzZmZiMDFjNTA2MGNjNGNhOGIyMjZlYThiNTI8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPm1ldGEtaW50ZWw6IDllZDU0YTEzODAzZTQyY2E0MDU4OWQ2Y2UwMmM3
NmYzMTYyZjZiNzM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtbWlu
Z3c6IGFjYmJhNDc3ODkzZWY4NzM4OGVmZmM0Njc5YjdmNDBlZTQ5ZmM4NTI8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtb3BlbmVtYmVkZGVkOiBhMDIzNzAxOWY1YjVj
MDAzZmQwYzZmZDQ0ODY4NTkyMTRlMjRiZTAxPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5tZXRhLXZpcnR1YWxpemF0aW9uOiBlN2Y5YzJkZDJmOWY0YWM5NTk0MmI2OWMwNWVk
OGY1ZDA0OTRlZGJmPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5vZWNvcmU6
IGJjNzkzZmE5ZDFmZTI0YzEwMmQ5MWU5N2I3MDAyYjZlNjM3Y2JmYTU8bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPnBva3k6IGI1NjI0ZWU1NjQzZDg4MWFmYTAwNDU3MWEwOTZh
MTg5YWI1Mzg5YjU8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RnVsbCBUZXN0IFJlcG9ydDo8bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2pl
Y3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNS4wX00zL3Rlc3RyZXBvcnQu
dHh0Ij5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWls
ZXN0b25lcy95b2N0by01LjBfTTMvdGVzdHJlcG9ydC50eHQ8L2E+PG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPktub3duIElzc3VlOjxicj4NCjxicj4NCk1hdGNoYm94LWRlc2t0b3AgbGF1bmNoIGZh
aWx1cmUgb24gQmVhZ2xlQm9uZS4gVGhpcyBpcyBhZGRyZXNzZWQgaW4gbGF0ZXN0IGxpbnV4LXlv
Y3RvIGtlcm5lbCB1cGdyYWRlLiBTZWUgYnVnIDE1NDQwIGZvciBtb3JlIGluZm9ybWF0aW9uLjxv
OnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGFuayB5b3UuPG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PkNoZWUgWWFuZzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0i
bWFpbHRvOmNoZWUueWFuZy5sZWVAaW50ZWwuY29tIj5jaGVlLnlhbmcubGVlQGludGVsLmNvbTwv
YT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPllvY3RvIFByb2plY3QgQnVp
bGQgYW5kIFJlbGVhc2U8YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_CH3PR11MB8093FD4F9D156F2ED9A7EF69B9352CH3PR11MB8093namp_--

