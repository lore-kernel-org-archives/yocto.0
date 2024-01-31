Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C9F2C46CD2
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 02:25:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by mx.groups.io with SMTP id smtpd.web11.5574.1706667911117640253
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 18:25:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=RD+GC11f;
 spf=pass (domain: intel.com, ip: 192.198.163.11, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706667911; x=1738203911;
  h=from:to:subject:date:message-id:mime-version;
  bh=lMew6A6pS6XfKeR1TX17Noc/ZDnQIKwqnlxEFs833bs=;
  b=RD+GC11f+nbtgsLMvH7uzISvoMg92Dz6UepystECL4E1Udo0jNvKbZtB
   5k1CeedcdF47CxkCnmMnrZuRNZDaIu3xyyGiGeL2eyHNMgtra+EAsTUoC
   7kjGNOuRKsFqnax+Yuu+xWBZtakCAAhztYtgcZj9V++owFoWBKzTt4cBy
   7yM0H+CrO45tDsaFct1zNjS5emP1t8V6bhBKJWbTpJXrvYI6hUCRyRrAu
   K4o1veylPH4VqfsXxqQrBvgMohvUcpjJFUcIdcQakm0Zv4Cjqqo9Y6qPy
   470feTh85Yi0+De7alvLB+oMe74c9o+rR/JoZSCi7n4J+U0G/sKsZdiPM
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10133388"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208,217";a="10133388"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jan 2024 18:25:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208,217";a="3883872"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 30 Jan 2024 18:25:08 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 18:25:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 18:25:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 18:25:07 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 18:24:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5C+q4caUWvr/0qq2GK7fo7QEBFhTqZUg9cUaE62cSOyXQiiWuQbcHllol2tMZEW4DJZJaxnLXKvRVUU6ShoPjFI3ruSEH1TSR/Odb7Z5MNyxzYoy9+nPglm4Cmx4evOLXMktFzAq3xQIBWrqmpIa0I0pLX7j81Tvfhg30gXAPLtGADYDJXZPexQ741D5XcAJcQpgpOqtw/EgEyrDXMdGeSovG85qwZjPWQmWgwX9hlms9UkIgxsMl79Q4OFPqXNNnKMFEx+0ixQomFtUm2H7J7pKddUe4d3JZQg1agNWogKLLD0EOxHg5kN7Ab4iFLI9oEaVZ2NtXS9Br7KqQb34g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lMew6A6pS6XfKeR1TX17Noc/ZDnQIKwqnlxEFs833bs=;
 b=CiosXUJN8+ImLwfQJvmQMZblLxaD5GRDKRL/jmBcqYi7qSZRlb4QX1aZNGGixavMG7OoVTQNSDqB4Gx3FHo90Tr6eIC8HLWSB7qS9/IlowgeRuIZNZZGXCmtd8mavYXpxbiv8Nzm3tZf2y6u7rfidcosbr8lGyZc3TGl+P/yjUS+Viy8vcpo1DA1pKxCJz4rL3jdvgYC3xWW7HwODuB+gccLg2qYwxoH20d5N2k1yHk13TwirEtXXytuZuCmqs/Le3KxXdLLPvUcktONd7qykwxKZ04uKFdfpOVWu0IaAPnwli9bZ4krqgB99BO7GCVEt6VTP49Gb/abTc0+aly7uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by DM4PR11MB8227.namprd11.prod.outlook.com (2603:10b6:8:184::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.35; Wed, 31 Jan
 2024 02:24:57 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::997f:1332:991e:fc7a]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::997f:1332:991e:fc7a%7]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 02:24:56 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.0 (yocto-5.0_M2)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.0 (yocto-5.0_M2)
  Now Available
Thread-Index: AdpT6gw6ROPEWu/MRkKCMw9wL1wREA==
Date: Wed, 31 Jan 2024 02:24:56 +0000
Message-ID: <CH3PR11MB809325745EBF1AD2083FF32CB97C2@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|DM4PR11MB8227:EE_
x-ms-office365-filtering-correlation-id: 433148a6-ac62-4667-2a70-08dc2203d0e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qyrVFda+628PchAOAzsr0UtJc9ZPcQGIo6DZtF1qFyKCzRuXdzdvWHphOemccj+YJymhTxVUU7sm+qUG6T1ylvrAsgFZrV2MkrcvFHwn6TFGC2s9CqpRjfd1GTS7VObhBx0G0elPzWvXFaAoyBpQk79Naok00ikRtl9uIwi/ela8Zxbawfe77I0pcXN1laBa0XdP0PaZUBDydHt7YOWHOYF34Mz7yIlzwTKa72tcmcS+jmAxX3oHo6I/TB2wERCukZhOTM/eGfcRSg/FsLJV3OvkEaTZMQxI5yLX1rQmMAkfn2Xqe4GLQjiNZEIBcuoTJImtW87iN0GnudQz3GRCdP137cbZTknMqY8aWxlVEQnGS8ZTtTyok9hutfEQlZcJyIjG3+lWhkT4fzGhPuCUBSAfxr0W/KcPnEWesgmpq72Iin3lfC0yv15Fl/JNrcex5Ogx4h5P/ytXttOukIe1Ieu+Sm25HJfKcTg4iUECQ5z1HPZNelr+DxIyd8hiCGIrw14veU+eeqfgcb2dVVUh2cSGvjPyMZTf8sm9h6w+4F5Q5VTkpH9ooJm11MsO6NaH4N8r/CYPflvkFkqq1H13BgZC/96LN7S6TJq+LqKKA3p61voI4G0NvPYsEk2Jmem31ih/ZLt17CfSqyQRK8Dzug==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(346002)(366004)(376002)(39860400002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(26005)(966005)(9326002)(8936002)(33656002)(52536014)(450100002)(8676002)(5660300002)(4744005)(86362001)(2906002)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(38070700009)(478600001)(71200400001)(82960400001)(166002)(38100700002)(122000001)(316002)(110136005)(9686003)(6506007)(7696005)(83380400001)(41300700001)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFQxMTE1aVJhSG16bW02ZTZCS1pGRythd0trSEdXeEF2VkxmVnNobkVRMlVs?=
 =?utf-8?B?NWVseE00dExrRmdRdU52R1B4Y3d4TzFKMEU5bzhnUVl6ZWNGRW1XbjBDWEh3?=
 =?utf-8?B?bnBTU3VpZ2R0aXRlaWVUdW5NOExRQzh4WjNNTWhYbVBudEU3R25vbXk3RStl?=
 =?utf-8?B?dFBEZjZZRXJCdmxJbEU2SDQ5VkFnV0Z5YnZ6aTZsS3pINytZY2NJaElPVWVU?=
 =?utf-8?B?WTBPSEU0dzlpMTI1M3E5UEVHbEFoSmM0OXJHOHNhWEFDZ3BCRlNnNjYxV3dI?=
 =?utf-8?B?UmVHc3lTSGdZYXcvd1dJNGkwTDFjWC80TklUR1lYLytBcVZlT3lIaEVYQTJ6?=
 =?utf-8?B?Z1hBM2FiY2JMMFl3MmtyMlNyc04zOHNLTzgrNHZNWldzZzRRMWhOOEViMTZ4?=
 =?utf-8?B?eElIY0dQMW9ZVjNreW9hQ0RRc1dSR3hPYzQ2WFV6VFBSeTdMVzBZdE5nOE5I?=
 =?utf-8?B?TWdNMHRoTXFmekk4RmJ0V2FzMUJGdEkwcHBTRFQ4aWRxUzg3L2FkY1h1WXRl?=
 =?utf-8?B?MVJhQjRlVGJYNEkxZ3VwY2JlalZEOXI4cXo5eEhzbmVnR2RSSkkvK0k4Qkhl?=
 =?utf-8?B?QmtJMEhJUWpRc040TEZDOGZUVkIvTHRoTDFpTC9MTTZIeG41cmJrNkZQTXpu?=
 =?utf-8?B?TERJK1RESkwzbUtvS08xYlZaSnlXRFU2YjI2ZHBhWENwLy9YWHZIR251eFBt?=
 =?utf-8?B?a1NZZ2Z2ZHNPLys4QTJETE1PaWJlMUxHcHdIMXZZWUhNdy9ENytqN0hwbml6?=
 =?utf-8?B?RWtrdStwOGxOajNtU0RCV2NLQjJCVFdEUjdFQlBzalY4c3puRVpzdkdCWjdk?=
 =?utf-8?B?dG1sR2ZVNjhMZEFZNkx6c0NsaHJMMG52dmRRcVk3Q1dBdnowZXlBV2JVMFV1?=
 =?utf-8?B?OGJnMWFRZENTZkVIMXlJS1RWR1M3NDc0aldhNCtUTHE0OHZMUmlOWFdGbkc3?=
 =?utf-8?B?L0JYblNVbWl4cCtyaDZ4N2ZDVlBBYkUzdjlDK25mMDg2VS9CMHVBL0lIdUtk?=
 =?utf-8?B?dHJJTVlJOU1meWp0WVFuYWZGL09KejFGRi9taEJ3Q20zU3JyNElUWXBGTmhh?=
 =?utf-8?B?UG9TUEFLZDFzWjBYbjAxL0ErdVE3cU5ibEhETDVFSWw3QmFqaGV3WDc3T1Y4?=
 =?utf-8?B?cUNJdlplbzE1SGVhNnl5MEZZYmUzZkdOZVdiNmxiZnVJY3ZzaFd1a0J3MWlu?=
 =?utf-8?B?d1M2djFRbTNZbDlFdkxjdjNUMDBMb1l1U3BrTHpCM2M4dXovdk8yN0lVcHMz?=
 =?utf-8?B?M3FVL2xaYmpDNFZ0S0ttckdtUXdsaHoxdURtc2ZvVzN1Q2U2ZmxNQysvcnpu?=
 =?utf-8?B?a0pxbENtNEFaNVhZYUEybjQwdUREMzZtMDIwZTBzVFFsZC9oazdoOHBZT1BL?=
 =?utf-8?B?VTJqYUh1VHFGYVQ0N0RFckQ5SUIyd1kwQjcwajBEcnV6dFJSNDFlTTdKTTln?=
 =?utf-8?B?V0E5MjZsK1VNL2dkOFdJSU51MGVUWWFQYjVBNXFoSjFBTFBkVVJVMWlFR3hk?=
 =?utf-8?B?a2Vua3h1VDJGZ1pNVVpQbkRsSU1oaFh0bUx1ZHRTVkh6NHJOZnBPcUppOE81?=
 =?utf-8?B?T1AyNFVXNXpQOVFXeVMzeGt1T2RwOTIxRVZLVlpTYUlFckd3MXllNk9zeEl5?=
 =?utf-8?B?SExDUDNva3l0OXFDd0lBdGJOTXVXbkJrZGtXTVdsRGVSMlNVTGMrZEtOT1pj?=
 =?utf-8?B?RjJRN01WRWwrOEx4TjFvVnE2Q0x6OHBQdFlYdE03Zkh1eG5taVlDT2huWkpD?=
 =?utf-8?B?OGYxL2w3MVUwYjVDMlFlUEhUd2FLM1F3bkVCQkhabmx3WG5BTFZtSUdkcnZE?=
 =?utf-8?B?RCtzQlplRWVWaWlzVGpjQ2dMKzdEWGlEV0cralhoNmVNOWF5NG5VN2RIWUpB?=
 =?utf-8?B?cjMydGNrTVNiTTArbzBOMlAyZk5pUE5CUE1jcm9UVU5rSWtXYUpWSlp3elFY?=
 =?utf-8?B?cXROLzhWUW1oK3JGaE9oV0ZaYVNFTWlBNTdsVTVlT0gwbUgwb0tjY3pMbUlY?=
 =?utf-8?B?QVIzOHFicFNucGV5cTdmMEp0QkdZbjBkUkh0OVFCWEJMVVJpOGdsWm5vSG9X?=
 =?utf-8?B?SW0vL0k4ZDRMbEhTT1lPOGRiUmg1NTRuM2tqTEQ4cDlnNHo5VHJUQzBrODY3?=
 =?utf-8?Q?tvWdrcvyrhIlcfdcg68cHzD78?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB809325745EBF1AD2083FF32CB97C2CH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 433148a6-ac62-4667-2a70-08dc2203d0e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 02:24:56.4365
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ir0jLgxCvWKmm1n7CBJEdwnw0rG/t1dhkBW0pLw81Hb3Pm2+SR9Z/gWURW9wnbPJFVdETnwj9b7o6638cj9Pqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8227
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 02:25:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62344

--_000_CH3PR11MB809325745EBF1AD2083FF32CB97C2CH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUgcmVs
ZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA1LjAgKHlvY3RvLTUuMF9NMikgaXMgbm93IGF2YWlsYWJs
ZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJv
amVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBfTTINCg0KYml0YmFr
ZTogNWMyZTg0MGVhZmViYTFmMGY3NTRjMjI2Yjg3YmZiNjc0ZjdiZWEyOQ0KbWV0YS1hZ2w6IDZj
MmI4ZmJkN2VkM2U4NWYwM2I0NGU3NzRkZTViNDEwOTk2OTRkMjkNCm1ldGEtYXJtOiBjNTM4YWU0
OWVlYTY3YTdlYmNjOWQ3NzEzN2E0NTlhNGI2OGVkY2Y4DQptZXRhLWF3czogM2M1Zjg3M2EzZDMy
YTEwMTdmMjM4MTUwOTYwMWYzZTEwNDUxODk1Nw0KbWV0YS1pbnRlbDogMmQ4ZDk3ZjI5NWRmMjFl
MTY1NGU3N2I3YzM5NmNhNjUyMjM5MmYzOQ0KbWV0YS1taW5ndzogOTU5NWY0NDIzMGZkNmU1Y2E4
OGRmODc0NzA2ZDY5YzAxNjAxODhiOA0KbWV0YS1vcGVuZW1iZWRkZWQ6IDRkYmJlZjdhMzlhZDE4
MjA2Y2E2Y2ViZjdhMWUwOGFlYmU1YjVhNjUNCm1ldGEtdmlydHVhbGl6YXRpb246IGZiNjdlZTJi
N2FlNzZlMzE1NzExYmM2ZDFmZjU4N2Y3ZjBmNzI5YzINCm9lY29yZTogMzhkYmVkZTlhNDkxOTVk
NmZhZWRhNjFlMzBmMDk4OTk2ZTY3MTNmNQ0KcG9reTogN2FmMzc0YzkwYzM0OWFmMmM3YWU5Y2Y3
ZDRmYTE0ZWVlYjIzYjEwOA0KDQpGdWxsIFRlc3QgUmVwb3J0Og0KDQpodHRwOi8vZG93bmxvYWRz
LnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBfTTIv
dGVzdHJlcG9ydC50eHQNCg0KVGhhbmsgeW91Lg0KDQpDaGVlIFlhbmcNCmNoZWUueWFuZy5sZWVA
aW50ZWwuY29tPG1haWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbT4NCllvY3RvIFByb2plY3Qg
QnVpbGQgYW5kIFJlbGVhc2UNCg==

--_000_CH3PR11MB809325745EBF1AD2083FF32CB97C2CH3PR11MB8093namp_
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
aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaTxicj4NCjxicj4NCldlIGFyZSBwbGVhc2Vk
IHRvIGFubm91bmNlIHRoZSBzZWNvbmQgbWlsZXN0b25lIHJlbGVhc2UgZm9yIFlvY3RvIFByb2pl
Y3QgNS4wICh5b2N0by01LjBfTTIpIGlzIG5vdyBhdmFpbGFibGUgZm9yIGRvd25sb2FkLjxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5Eb3dubG9hZDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEg
aHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21p
bGVzdG9uZXMveW9jdG8tNS4wX00yIj5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcv
cmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBfTTI8L2E+PG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPmJpdGJha2U6IDVjMmU4NDBlYWZlYmExZjBmNzU0YzIyNmI4N2JmYjY3NGY3YmVh
Mjk8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtYWdsOiA2YzJiOGZi
ZDdlZDNlODVmMDNiNDRlNzc0ZGU1YjQxMDk5Njk0ZDI5PG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5tZXRhLWFybTogYzUzOGFlNDllZWE2N2E3ZWJjYzlkNzcxMzdhNDU5YTRi
NjhlZGNmODxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hd3M6IDNj
NWY4NzNhM2QzMmExMDE3ZjIzODE1MDk2MDFmM2UxMDQ1MTg5NTc8bzpwPjwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtaW50ZWw6IDJkOGQ5N2YyOTVkZjIxZTE2NTRlNzdiN2Mz
OTZjYTY1MjIzOTJmMzk8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEt
bWluZ3c6IDk1OTVmNDQyMzBmZDZlNWNhODhkZjg3NDcwNmQ2OWMwMTYwMTg4Yjg8bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtb3BlbmVtYmVkZGVkOiA0ZGJiZWY3YTM5
YWQxODIwNmNhNmNlYmY3YTFlMDhhZWJlNWI1YTY1PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5tZXRhLXZpcnR1YWxpemF0aW9uOiBmYjY3ZWUyYjdhZTc2ZTMxNTcxMWJjNmQx
ZmY1ODdmN2YwZjcyOWMyPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5vZWNv
cmU6IDM4ZGJlZGU5YTQ5MTk1ZDZmYWVkYTYxZTMwZjA5ODk5NmU2NzEzZjU8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPnBva3k6IDdhZjM3NGM5MGMzNDlhZjJjN2FlOWNmN2Q0
ZmExNGVlZWIyM2IxMDg8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RnVsbCBUZXN0IFJlcG9ydDo8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55b2N0b3By
b2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNS4wX00yL3Rlc3RyZXBv
cnQudHh0Ij5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8v
bWlsZXN0b25lcy95b2N0by01LjBfTTIvdGVzdHJlcG9ydC50eHQ8L2E+PG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPlRoYW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Q2hlZSBZYW5nPG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBocmVmPSJtYWlsdG86Y2hlZS55
YW5nLmxlZUBpbnRlbC5jb20iPmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPC9hPjxvOnA+PC9vOnA+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+WW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFz
ZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_CH3PR11MB809325745EBF1AD2083FF32CB97C2CH3PR11MB8093namp_--

