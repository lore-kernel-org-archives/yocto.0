Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.10])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.42521.1793020792612086183
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Oct 2026 06:19:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=DRfuHPyZ;
 spf=pass (domain: axis.com, ip: 40.107.162.10, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mvO7RxQBWNJBABWyxUIXBFeAZRheeIpYzncdsjcQROnFeCcFshpU7qGKuMH0/8dJMaX9jauQc3VcKkELt5okai0eG2LWTKgEGKtVd0opmopyiMdy5B7YsOEa1Za9LHnByPfbPN8KxkUkRq6noooMrIRhnFvSeTUskQumTIVkh+x9nBgEYEH14ZdbdoR4pleOtadMewGy2JLI4Qz353BefMkClI0SnxrgSUn3Olw248BZcy2jCaOhVdfnoaG08mVJjL1FUji/cCq6FL+ntWFokZ+ZWG7rLZ3kVYGFdiuYxX1oiTQjyZjmYyOjlCvYXem5lKlGMbeAjQ3QUcIeD5heCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQC1DdygKkBfXajhWh9H/BEEd9R+lv3hb9LBP47YbQM=;
 b=t5N4Evt7nOYBCDGewFzsrHgyjttuwnVccYA3lvpK6Ubuf3pgxUQ8NLDXV0UVE/iHB4aYf3S7EoHtekdhPrFnwcLwsgH9UGb0SmcRBnR36LDZam+Yu6LfXOBEti6aXWozZ+7FPPzxboV3wxsuuMyp424ssC2Os9vVZ2aeQAdW2UxgP8G4mfEd/c8V7gN4Ouu4bFvB5Z43Umt6/YHc+lSlLNJA7JD4LVualsj33x1cMG8WyftaLLPYn19nl575Tdm8Vp1sahOJgMNC8bON8tyuuU4yfxSNxZJOS9SNXUDIpwF2uHJRCuwoNN4A6emUeXRYjPwOmg+bVVouYXzoVNxe8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQC1DdygKkBfXajhWh9H/BEEd9R+lv3hb9LBP47YbQM=;
 b=DRfuHPyZ+R83eiBIRJnrth7/6ZSNyDlGS9jcMh+r5BSWWORFTOtnietxjLIXeTpKcaPpmZ4YU9oBmlYwly2EfodZSZhGJQlXk3hZ4OEzXb+bpJXSPE1KApXwkQwZuPMXGlB7ru6ug2iLXxhwgClLq5suL1DzmspnMRP/DJN88ks=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by AMDPR02MB11608.eurprd02.prod.outlook.com (2603:10a6:20b:73a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.22; Mon, 26 Oct
 2026 13:19:48 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::e5b6:b9a8:2a5d:e0cd]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::e5b6:b9a8:2a5d:e0cd%6]) with mapi id 15.21.0546.021; Mon, 26 Oct 2026
 13:19:48 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"Kevin.Buckley@csiro.au" <Kevin.Buckley@csiro.au>
Subject: RE: Yocto Project Wiki: Main_Page: Small typo
Thread-Topic: Yocto Project Wiki: Main_Page: Small typo
Thread-Index: AQHdZQF6+KPG6AuXpUakCH36NgZwabcPzvtA
Date: Mon, 26 Oct 2026 13:19:48 +0000
Message-ID: <DB5PR02MB10213758EB97A88A3295B3160EF612@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <589e7d5c-3c03-4bb9-ba79-c3644bb8365f@csiro.au>
In-Reply-To: <589e7d5c-3c03-4bb9-ba79-c3644bb8365f@csiro.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|AMDPR02MB11608:EE_
x-ms-office365-filtering-correlation-id: f507a24b-1da7-4248-e5c8-08df3363cf64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|23010399003|1800799024|38070700021|11063799006|56012099006|261021121427099003|261022075727099003|261022115727099003|261022105027099003|10067099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 1HRpKZS1AW+DSF0HN5PqIQi5YOR9DC9GhkiS5fcT6O3wDbZrW03+rqLtTSyg+kQx4o6SHmfkwAecwtuGa4aBCyYMgUbCuSyerDC8kQC24Mh7+hOG9euWKq8/fUH+pkZqEcaVG+uqG80bRDp2NZAXmqS3VfBv1LpXn7SJJtvn5V1uSZOFoqzc3o9PnVnkUNgasxBQw1CeF/U0ma7njAEYvJN0a0qPPU+J3Ogc3L1VDP8QGGwVTY2FLDN+apli/r42E3VkQXQmGaMd42D6wZRyYMMlSDXruJeXwNXDtbD939wib9sNP/9pRdDWyUIW8eGmh7gtuEh4AnaOJW+onnzGSn0/g2PWHrsHLiBY41VAWuKQuUQ8A1VcgshkZcy32pHEf56/rKsVV6egc/iVb/1uK5KuVam7qyG4uaB1HcAYoL9mAs695Oa6qtqK2AZpg5Xj64zYnnh6YASGlIF0g2fPbdiTGZr8a3o1NbdW5HZo2eClYx9nP2v3bvRspFdJKqk4YWgEZNMno+/pdCBcxNTvnhbzHN9qJGEFORVOW+WDPMdr8u+oYs3nHGKW2Amhn9Mv3kbzIvX1o7bkaqJEk1SyztkstfmOeAwYVMMKDByfRVj2qyV4Ny9CiFFTSrJ4V1btDSAyCcj3kUsv27nDuZN6KHeUoPvGKoNz51l0wTzkp+U=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(38070700021)(11063799006)(56012099006)(261021121427099003)(261022075727099003)(261022115727099003)(261022105027099003)(10067099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N090Z3RmWkZoMzZMOHdsYTVVRkdSRkFBNWpWckpITGkrNEV4NlFhYzRJOEhE?=
 =?utf-8?B?aU9LZXVZT3hOU3M1NVQ5Z2NwenNiaWxaNW56eE1kckY2aS9yMWZjcTJMem9m?=
 =?utf-8?B?cVp3bjZRZjRFVjcyaW52UUxrdzVibHFSaTlRN1lVOU8wTVZjSGk5djQ2ZXFw?=
 =?utf-8?B?MWNna21Yc3lQejdtRGZMb3JPVEpyK1doeGVySUIwSHBPRDljZEFZazZ6elln?=
 =?utf-8?B?S1Nyanl3S2RTVC9IREsyTzNzdkJTN2FrbTVNck8xRkpsOHNKUWZnNmtNVU1x?=
 =?utf-8?B?cHJzTTFDQ2VPYkpHcitpUFgzVnJaSFN5blFBc2c0amVMeUJnR2s0UHpzVnBK?=
 =?utf-8?B?RWt4TWUwTUZXd1BtTWFqTlJhQUZNdnc5djlsazdaOFVGampraTFJQ2lJZFln?=
 =?utf-8?B?bG9qbnVub3hESm44QmNhOHJQTE9hVU15UXRUT2JFc2FIYmZTMkp0dXJnNXg1?=
 =?utf-8?B?Z3ArazFFb2d1UGlhZlRPRWlleWxxMHNXWDhwcmY0aVRtdTBwSDFjN0FobUhY?=
 =?utf-8?B?U3dvMFVpTW5xdUpLbkxDSTVaU3Bia3FwWUZ2L1Z6N1J2aEZCc2x3MFlnMklU?=
 =?utf-8?B?Vjl0aWxnSXlkbWszTGlrR2JpRFpaUnVpVFR5WmNFTmpycEg5cUdzdGNOZVBD?=
 =?utf-8?B?RTFhNUZPL1FuQlZEOVRybHFWcFlwNGtrbUVUbmR1TUFtMWlzalhkcHVsTnZV?=
 =?utf-8?B?YVJpRHNzckFDTUtLUTA0U0dwR2s1M2ZhazVyOHVLenNTZDJVZU1zS1hPaTlM?=
 =?utf-8?B?Q0FCVHMzcDdUclZCVjdZUmgvLzhPRExVUlRwNTR0VVpPbmFUNFhTc1QrdGZu?=
 =?utf-8?B?UjB6N2R1WWZxaURDYVJ3WVRZMmtFakVkb3lyY2xLR24veTlPYlFLZEZFTWEx?=
 =?utf-8?B?Ly9TTHgvTkN3ZE5kaUhUQ3Z3eVczSEhvSVFhUmZZRkxWWjJqN05oT3IxeHR5?=
 =?utf-8?B?d3M1eEMwQ3NDaGU4ZmxCREFKMmVVaUFBWnRYeGtmdE1hb2lNcVFlL3N2WThz?=
 =?utf-8?B?ajZxQ3dyMU03VDNyNDBWYWp1NkI1dUpRUlpma2dqUkFxUEhRMzFoKzc3MmFh?=
 =?utf-8?B?RnllbWpqdHIvK3BLc1JqUjVWY0NZeFhQbERVQk9keGhSQjJLT05MUUpHSVBL?=
 =?utf-8?B?Tm9OMTRFQW5TclRqK2NWK1RZZGJWMnhaZ0I5TWlLYkU2RjQ4ZTlpSmZmMDVr?=
 =?utf-8?B?MFpobHFlbWVlUGROSlhhS1NXM3pNTEUyR2kyZFp1bk5qd3lNckJHZ3dZNU0y?=
 =?utf-8?B?b0lQNlJSVkJ1c1VUaitRdVl6QXEvTy9KN0h1ZmpkbjFzaE9rR3JuakhtSzVD?=
 =?utf-8?B?UHcvR0NvWXNmaEdYbWprcmtHWTN1bzdGWVZZTEYzMlBLRVVVUTEwd2xmdFFQ?=
 =?utf-8?B?SmpiNXNSdjhVUnNKYWpIWnRBMjRoZ1grc2czeEkvUVlZWWUrbnBBSFA5MDFz?=
 =?utf-8?B?eW45c0s4SW9mbUd4WDdpU1I2ZFVKZnVYNW0xTWMwYlM0RmRRUlBPV3dkOGk1?=
 =?utf-8?B?YkFud2ZsVFlQTkNvdXQyOE0rYmdVR3I3RGFaOEtaSy9QWEIyK0Via29kblcz?=
 =?utf-8?B?QlNVbEoxOU5QUmxOYS9rZkZSQmRYdUtPaXBZaWY5cDdzemtmQ0NYYzJRWnFi?=
 =?utf-8?B?NWFYcnZ4S1l5U3FpNEg1VGRPdzU0Q1M1d25nZEsyOHFXbE5ZV3NaN2cxWnpT?=
 =?utf-8?B?akJvbmcxL2ozVVNLdGgzSXREaGZYY200RWNtUEwyVVRadVpRcjA1TW1UaDhK?=
 =?utf-8?B?b29jZitDSldzNUs1NVptU21QWFB2V3JtVy8rZC9nekp5SW45cy9xVkEwVDRy?=
 =?utf-8?B?STJkZFlleW8xd3c3UU1GZUNicW5mK3hCL3FMS2Q4emtTYjNzMTBMVnA3M0hk?=
 =?utf-8?B?Slpvc1A3Y01rOHY5aU92aWRiOFdFWHNEWWQ2UEpqVyswM0xGbnBURWN2UXhl?=
 =?utf-8?B?cHUxUGttSDZRUnh0aVB6VnIyY21RdDBzdytuUXh3Y1RISE5rRG8rVkdWVzln?=
 =?utf-8?B?aWwwYkZLNkVROHNpUXVGSHh6MnVnNHAwNlNCbkpTOWNISlpmVk5XRWNkdjMr?=
 =?utf-8?B?NjVNTHN6MTJ1NnhjMlV6MEZzam0zaTF4ek5LV0YwazgycEF0YmNCdGFZYU5v?=
 =?utf-8?B?SXVvbnRTQXIwR0NXd1BlNE5NTlNJdzFXaDdPZUVPNHpHZVJDdmRhaTMrcVpW?=
 =?utf-8?B?OGVEdUNLQ091TlZRb2lWTHFLVWp1cDdWemtZcU1GL3p0TXZyNlphaUdIME14?=
 =?utf-8?Q?nHR4rbZNfOzzTRJduMPsf1IAdbSUwMrkPfXseuEIiY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f507a24b-1da7-4248-e5c8-08df3363cf64
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2026 13:19:48.3621
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C1y1s2Yv64jGJZA/F/C0NOIeNmt14uwwpVgg8f3NdKc1YxdNjrX8ktkrW3m9Bh3T
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMDPR02MB11608
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Mon, 26 Oct 2026 13:20:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66788

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbg0KPiBCZWhhbGYgT2Yg
QnVja2xleSwgS2V2aW4gKFBhd3NleSwgS2Vuc2luZ3RvbiBXQSkgdmlhDQo+IGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcNCj4gU2VudDogZGVuIDI2IG9rdG9iZXIgMjAyNiAwNToyMg0KPiBUbzogeW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBbeW9jdG9dIFlvY3RvIFByb2pl
Y3QgV2lraTogTWFpbl9QYWdlOiBTbWFsbCB0eXBvDQo+IA0KPiBPbg0KPiANCj4gIGh0dHBzOi8v
d2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvTWFpbl9QYWdlDQo+IA0KPiBpbiB0aGlzIHRleHQ6
DQo+IA0KPiA+IFdoZXJlIHRvIE5leHQ/DQo+ID4NCj4gPiBUaGFua3MgdG8gdGhlIHF1aWNrIHN0
YXJ0IGd1aWRlLCBpdCdzIHByZXR0eSBlYXN5IHRvIGdldCB5b3VyIGZpcnN0IExpbnV4IGltYWdl
IGJ1aWxkIGFuZCBydW5uaW5nLg0KPiANCj4gdGhlICJpbWFnZSBidWlsZCBhbmQgcnVubmluZyIg
ZmVlbHMgYXMgdGhvdWdoIGl0J3MgbWlzc2luZyBhbiAidXAiLCBzbw0KPiANCj4gICAgLi4uIGdl
dCB5b3VyIGZpcnN0IExpbnV4IGltYWdlIGJ1aWxkIHVwIGFuZCBydW5uaW5nLg0KPiANCj4gb3Ig
bWF5YmUgbmVlZHMgdG8gZHJvcCB0aGUgImFuZCIsIHNvOg0KPiANCj4gICAgLi4uIGdldCB5b3Vy
IGZpcnN0IExpbnV4IGltYWdlIGJ1aWxkIHJ1bm5pbmcuDQo+IA0KPiBIVEgNCg0KTXkgZ3Vlc3Mg
aXMgdGhhdCBpdCB3YXMgaW50ZW5kZWQgdG8gYmUgImJ1aWx0IiByYXRoZXIgdGhhbiAiYnVpbGQi
Lg0KDQovL1BldGVyDQoNCg==
