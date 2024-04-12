Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35F55C4345F
	for <webhook@archiver.kernel.org>; Fri, 12 Apr 2024 01:29:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by mx.groups.io with SMTP id smtpd.web10.36867.1712885334274080091
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Apr 2024 18:28:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=TbUnvUr4;
 spf=pass (domain: intel.com, ip: 192.198.163.13, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1712885334; x=1744421334;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=aOC2be3LB3XgULYA7qkHE/JGGvx3BTDwQvX1fZuq35Y=;
  b=TbUnvUr4dAJ2UkffCiIqRnl9I7AI1UK8uiDkW+djy0sK+tDv8hvc5HjF
   As9X+NJzN0r6Fa/E5j3a3R/dqyMQ8zGiHFIpgD5Q2IFYVicdKTKWgCEoI
   FXIY8Z/lmW0yZXw9SKf/07+/Pd3F0qlUKShJ1ETLDO8dkm7d8C6mz2MA0
   Ze6lAUvqNKwDmZC2iay7NF6PHv8tTEmVyb0COS0YEvUapg/FuGB/cTiyQ
   oRtaY1SQ0lRb7rkBDGg2xtY7GqGXWgHtaTff/2IRPG3jz3h7y3fs/bVa4
   HyB8bFsNHfypR/6KJKytzI6He+G6Fe8xWCC1/DaLxOGoRhjBR2jLHkv2F
   Q==;
X-CSE-ConnectionGUID: NoHuEyqtTtqNnbvbDeTYuQ==
X-CSE-MsgGUID: 63VaXbToSMOk2psOfsIU8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="11293311"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; 
   d="scan'208";a="11293311"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Apr 2024 18:28:54 -0700
X-CSE-ConnectionGUID: /j4EW3ZjRSuIr+fA55vcPQ==
X-CSE-MsgGUID: fZHZIQRnRQapQQl+CEzfRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; 
   d="scan'208";a="44365745"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 11 Apr 2024 18:28:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 18:28:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 18:28:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 18:28:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 18:28:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PSTFjrA6r/2OlQRVaUrfbm/UrampTnHCcF/YwrRZHoFOKjhUDgL01wgYv6mMPf7YWDn40bDfOAz6fmymjGXvaOm9+norkwDb7jdG2ZGPxcLl9rz8mNerBer8RsK30rk3X1/ScZiDysL0gpEXYLy9APD+HqrfzyEp1JIO3idRXmMp0637UyzreudiwN9VGY1VlCererJAU7y9NG6sKpf940qaz5DHLAjA/zxKLln+bMcUctK3eiS4rxLgEjR8Sm0V0mTPbYcGiGd3ea96raerJB8/KYvFxYz/ym+4xqNQip7g7hnzticjdxadcmqV86HT1FWBrzx1r+b0KZNnwmidpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aOC2be3LB3XgULYA7qkHE/JGGvx3BTDwQvX1fZuq35Y=;
 b=SZZRIpuTgwarp9ri0Evq4w7Mg2yVuYBoKFjPSQBT65aOxyhEtLkFRwS6NRTtGEPpAc7f6Aa/zuVtDPgACyzG+Y9lMln2vNhaP1ohzhUx2na2MGXVC/VBSSWrO4C+Lujul1ELVGII/aoVhGr6dyBPb8CdtTUlhHGYGLady+JaShCaoUpvwhh8xDDlUhiXzJsamftJm7ZHye+5g/CnpOwuZQIrhNpBHAX7ADw2lOpdaSiC94ujc9Al7rfIZvf9YTRZOvSPpaQyDDptKRjEDCLZyCbWvk6s68hj14TZhS8u+z/0spGQkh8lUPBw/aVrlBtbpRGCcb1Va3SElc4NRtJziw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by SA2PR11MB4939.namprd11.prod.outlook.com (2603:10b6:806:115::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Fri, 12 Apr
 2024 01:28:51 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::37e3:dd3a:22ef:9f25]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::37e3:dd3a:22ef:9f25%6]) with mapi id 15.20.7430.045; Fri, 12 Apr 2024
 01:28:50 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [ANNOUNCEMENT] Yocto Project 4.3.4 is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 4.3.4 is Released
Thread-Index: AdqLIFTDf9VSTDOeQJa3lPAh60hZOQA09bMAACBDbQA=
Date: Fri, 12 Apr 2024 01:28:50 +0000
Message-ID: <CH3PR11MB80936E26280256B2F2B391B6B9042@CH3PR11MB8093.namprd11.prod.outlook.com>
References: <CH3PR11MB8093B804A555BA168F74110EB9062@CH3PR11MB8093.namprd11.prod.outlook.com>
 <5bdf017a-b7fc-4124-ad5a-79bf42873370@bootlin.com>
In-Reply-To: <5bdf017a-b7fc-4124-ad5a-79bf42873370@bootlin.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|SA2PR11MB4939:EE_
x-ms-office365-filtering-correlation-id: b5d05b53-f136-43dd-eb4b-08dc5a8fe88e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AfxoOPwlaTfJzqWeMiUD7s+HAGsU6DgPHWeV874RGUbURvs29FaTop5IDyPlhrRcfyKRNlYwAumV/Lsp0ai6ss60eTX7y/YIcyWiNQ5d+pzufvaPFzmJwk+HUZyPp0pbr3VF36nM9EQNvPSnr/vs9x0h6+r3HJMEsIPM+RkC2oEk0dHwQcCOgaZEYEAaXSBiNHWa76zAmi4F32OB0Gy1Vs+Q5THRPEZ1N7MOQc/6jDW30WX6M6QHzmolOxVGhQR8pOoOUEQFLLkOQFBEIdQ7wCmMvjX8YnfoOQs0EZmxRLVXcq38AdnHpQ2jDEcnDAJRsKaTslGQRhwsf1hthubiX0/QhQAdPrjbJddVazatlrrULxVT1qWSmUMsFaNquhYGSt+SNxZqtZP7yfBj0vd+aBy14g7E0dIPOvX7RTlIZS5etzkRA5G96Q4Dq7hoZkfmRY8ltb1M8TSpoZGIcxMIyQaDXHfu21l/tvh27GGe/rhr3PNX1WAcliPoyKomkJlOr4tVM0miNKKHEn2aV26MYyJmA2U6H4K8G0QY1xqFlTQIcWsjt7ztMXaBREg4E98vaFZiD/sSgp27wPTCMyYlKh05PgXepnNyKMhAWZU2Pp49CH4/3xNA+En80F6aCrWD6PW1S3HS7gxMYuAdOgIZMovyqobrA0BvTJT59GR08uQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckVSSVFDL2pIRlZ5Zlpyd2ZSSGdDYUpTZ2F1eitiakNCRjZCb1liUU9LeUVJ?=
 =?utf-8?B?MUVGcU93ejM5VFV3K3MzOVFIcGVhcENwaWhyZmVVNUZWWkF5M0U2Q0Jtc0hu?=
 =?utf-8?B?Rlpxcm0vd0VXdWpKTHRyMHU0ZDc2dm5VQmhEZEdRYjdjQVE3ZU1wOFR3K0lV?=
 =?utf-8?B?QTRaZmVOczI0aWs0MnF0RTBWZGtBZWd5UGwycXFJWEwvTHRtS3VwT2tDNkR3?=
 =?utf-8?B?ZWFFZVZxNzlzbWsvNDAwQWtLT09CTE5kajRyTVdFRGpNYmF4bzF4QWg0OWI3?=
 =?utf-8?B?YS9IN3ppdlRxSXdqTXNQdlZ2NXdoclNFLzcxNUM3NTllS254SlQvWlBQeHov?=
 =?utf-8?B?dXdtZ2JPcTczKzN2czhHL1o2REJ1aWpCeENyWVFmUWtWZW5QbVBIRUcvaXFm?=
 =?utf-8?B?RXNCVUd0ZlRkajlGMHR2ckEzMmtkNm82Skx5dGFHUWh2SnJ4NUtBMGpKWHpn?=
 =?utf-8?B?aVgwRUtlcDQvRGdpK3VvNWNsM1BqVU9sTmUrZENJeTN1VXF6N0ZFSmZERVBR?=
 =?utf-8?B?NmF4K2NHclAzYzZHd0k5UlhhdTU5VXJNeEVjMHZxb21lNExVVjdab2VZMVFL?=
 =?utf-8?B?YlFQNGwrVlBDeGlIa2tMaUlKYjJJVHp2YVRtWEFKUy9vWlZ5cHZQR3RoKy9L?=
 =?utf-8?B?cDc2MEdSWHREQ3FvUW4vMy9DMmlXQjUzS1d1Z2NvSTJoT05kLzBFQnN2UThM?=
 =?utf-8?B?YTc5TGVKeXl2U2s1RmU4RUtqZzJIMHFKTzV1cHMwdmh0N0kzbFQza1dTYjBP?=
 =?utf-8?B?SEFKazVMMHdONTk3UVNPUDAzb3RQcnNJaVlTWTRHM1BxMXh5YXpnRDJXT3lC?=
 =?utf-8?B?RXBOcGx5NE9QRmFySlZ2TFR1RzRwN2picE5iNXZZb25ldlRBV0dLeldrcXdr?=
 =?utf-8?B?Q1EybVQrZ3pNQUFCUkxrVE1UR0llbU82NUhDUDRadkRpMXhFTElKcTZJSTlt?=
 =?utf-8?B?VG5RMFV0QWcrS3U5bWdRT3AzR3pORjVvVUtTeDNhNGFPZmtBbmdVNExXVFVj?=
 =?utf-8?B?UTUwSUxtUXlDRHJyNmdUWlFudEV2a09SdnpFeUlmczU0WUxScnhndkRESnp5?=
 =?utf-8?B?ZGJkdTg1OEpDQUIyTUdrczNaT3UwL0Z6QldlOXVBMU5KZ0pOOExmRTBOcWpo?=
 =?utf-8?B?c1hpenV0KzZvNVdESlROb2c5eEliL3NpNFIxZ1VOTzkvTHp3V2U4YS83dHkr?=
 =?utf-8?B?TDVxd3hJZVlOblhFRG9BR0kvRVFRWExicVpnaWZUMzFDRGxna3ZYUnQreEJt?=
 =?utf-8?B?cUFrZFZjbXdsRU1tZHpMcE9HUWttd1ljUDA5NDhwVUtweU91VURZRzVWQUFO?=
 =?utf-8?B?Z1c2djQwNXh0ZS9oa0pSQ05wajR1RWcrWEIwaHNuNVBPRVE3V0NNQnVVWE9v?=
 =?utf-8?B?dXhtS3Q3RHpSWU5mRmhSNTZKdEV6NThRclR6M0EvM2ZXTmtKUklad0FOcFZV?=
 =?utf-8?B?YWVrVlFBdjhQMEhwM00rTGtka1daYUlEN2V0dUNuNmlVLytENEVCL3RzRlBm?=
 =?utf-8?B?ZnB3eFo3R0dxZ3pNUUM5RFZkeFpwN1hiL00zN241ak8zanFSZ1NZSTQ4S0RP?=
 =?utf-8?B?U1QyRE9xQzY5cmtiQzZQcXBxNVArT2tqd2NuZUVHZENwbWRpQTMzWU1hSjZy?=
 =?utf-8?B?djFWdHM4cWh3Z2hYYXFCWkcvcmRJc21ySUwxZmt2NkxCbDlXZlN3dnBIY1hF?=
 =?utf-8?B?a1JtWGpHOHNGeUFnSUwvZlJKd2xPb1dZMm5pVVUyWTdibDF3dFA1b2xZSjJx?=
 =?utf-8?B?emRPT1VEN0VZMTdZNHZpYmFxUmpmNUMxT3BzQjc2cXB4dlVNNHY5Y0NTWHNw?=
 =?utf-8?B?eEhIMC9CSk03QzdTeExnWlg4SHdBeWV4QXZrWmM4ekFWUlRhaDh6c3RCTUpw?=
 =?utf-8?B?QkpIZm5Jd1E2V05oUFArcTBhcmpwcGlyZC9EK09RV1o5eU1GRG5YQTlHWHlw?=
 =?utf-8?B?citqa2V3bnN3VWs1WTAwejA2dE91bkJMSHBONmJ4cURuSzdwNS8relNNZjg4?=
 =?utf-8?B?ZGNYTEhJcFdnbUhOaHQ2MXBFc25vdW81WTFUVEljQnRrMHd6S3BHRC9aUHdn?=
 =?utf-8?B?SUtRUHJGMlhURUtVNUNWNHFKaXdDdzdhRi9JNklRaVFJc0FYS1Jid3RRc1Yy?=
 =?utf-8?B?UHN5VWpqZmc1c2N6YVN6WStMQXF4V3pZd0Z5a21VNm1UMHRyWnJHRitnQnQw?=
 =?utf-8?Q?KwrzOplRMK/ER6ZQU/Hy14XIOe7fWPiERiRC8+e9SL/7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d05b53-f136-43dd-eb4b-08dc5a8fe88e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 01:28:50.7935
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HOlt1rtadHRRQOFKkYu+9YUrc0QTONSsZhN8y8yMtxCilG6cYnjvjj+TQLBBItIFdItP/7+eLadnYVkE38L3aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4939
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Apr 2024 01:29:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62923

PiBDYW4gd2UgZXhwZWN0IGEgbGFzdCA0LjMuNSByZWxlYXNlLCBvciB3YXMgdGhpcyB0aGUgbGFz
dCBvbmU/DQoNClNlZW1zIGxpa2Ugbm8gcGxhbiBmb3IgNC4zLjUuDQpodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzYyOTA2IA0KSSB0aGluayB0aGlzIHNob3Vs
ZCBiZSB0aGUgbGFzdCBkb3QgcmVsZWFzZSBmb3IgbmFuYmllbGQuDQoNCj4gSSdtIGFza2luZyB0
byBrbm93IHdoZXRoZXIgdGhlIGRvY3VtZW50YXRpb24gYnJhbmNoIGZvciAibmFuYmllbGQiIHN0
aWxsIG5lZWRzDQo+IG1haW50YWluaW5nIGZvciBhIGZldyBtb3JlIHdlZWtzLg0KPiANCj4gVGhh
bmtzIGluIGFkdmFuY2UNCj4gQ2hlZXJzDQo+IE1pY2hhZWwuDQo+IA0KPiAtLQ0KPiBNaWNoYWVs
IE9wZGVuYWNrZXIsIEJvb3RsaW4NCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVl
cmluZw0KPiBodHRwczovL2Jvb3RsaW4uY29tDQoNCg==

