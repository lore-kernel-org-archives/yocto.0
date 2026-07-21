Return-Path: <daniel.turull@ericsson.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C8FAC44529
	for <webhook@archiver.kernel.org>; Tue, 21 Jul 2026 11:29:10 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.40])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.20474.1784633346028501252
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2026 04:29:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ericsson.com header.s=selector2 header.b=D7wAynCk;
 spf=pass (domain: ericsson.com, ip: 52.101.69.40, mailfrom: daniel.turull@ericsson.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KCzZhviK1GZ4uVDjcGmb0APEmE1BlbO4y3q56J1vV6HAjVGVoQQRYq9iI4NKniiJ1KNcbSBjJv/AliscTawWWzs4mmyX3DHoEr8yVK8XXBvNW+nDrgqpNbgQYqwqfFd4G4M/vP2AfiTw8ElDueNMm1UsnXjUpnUAp64lUcUz7C67U/uwDfuji4konIc4463xoXawQW9F5oJaWqyxsLUrmk+Gg4iVYEWB0BAMkdutgoN6GIzFQdC3Hqaa7gQY13usYnT/G7w7AnFye4mtG8R6jJ3ht5MxaDiZKRDkflvVaG3h5Ri8hmoG5yyh0sp2oAba497niUOFdhs8yVL5KfVUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2idkTe+uQSgLhJIBZwxJYdGF8NvABzcMJn8iEyEmZTA=;
 b=c4V7lQZmab6ZntlrUDZTN9MoKcgsxRGhbxyvBLR/yvPFN5tA3KjyU9VlnjZHaIpYmPAwV53T3xKQgQW0oG12iuf1uwFvnm6p935XxweHfjX/IzZ76SlbAbxY9Sbo2AvZi+ObPezOaw94xOyAQvjKYlkx7z+iQJqPTkkUoAz41i1fSC0+iDi5Z0mN8C+xIotoLiU2Tv5SqEIpwc/gLFpueT0K40MYs/EU9fVadHwJ/y24ptxYItHvgrkDWUyG0SZ8Mo9lmW7rBsENhfXKTVLbZ/4oaF4SqvKXFcDPCZE6hpuO7RDVh6/LCBbjEFRKsdUpOcYjugoowBuDz5RT4R5J8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2idkTe+uQSgLhJIBZwxJYdGF8NvABzcMJn8iEyEmZTA=;
 b=D7wAynCkXAqGcIZ6iUwieh1MzAc4Y8v1ooOxLnmiXWtMmGlgqFkBgjhJRrbwCSVHVdtAguY00uDJ8sqh/l01HjqJveJBUTZHAlnB8ubaJc3Uc3c+9G6EvVpW/ClikDK8DLzDVsZb/czonDURedHpLZcONcNEbZKXDcrHwO+ySSQ270+ipvoXIdDBpuOeQFsQjcWIWWkHxNr1xq4EKphCej/gCAVvs002JXOv8n3ib7QxU00gj7HA8/5+B/d5q1yWrMbrffRpcHjXT1LKMGoOlp82Pd4Vrgg7azggOKHjzwygJ0/KA0V3Zs+T4uwT7Iq4qlSJmtwZTFFUiJm1KvlDfQ==
Received: from PA3PR07MB10721.eurprd07.prod.outlook.com (2603:10a6:102:4af::6)
 by AS8PR07MB7862.eurprd07.prod.outlook.com (2603:10a6:20b:394::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.10; Tue, 21 Jul
 2026 11:29:01 +0000
Received: from PA3PR07MB10721.eurprd07.prod.outlook.com
 ([fe80::afd3:17e5:1663:7ce7]) by PA3PR07MB10721.eurprd07.prod.outlook.com
 ([fe80::afd3:17e5:1663:7ce7%6]) with mapi id 15.21.0245.009; Tue, 21 Jul 2026
 11:29:01 +0000
From: Daniel Turull <daniel.turull@ericsson.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yoann.congal@smile.fr" <yoann.congal@smile.fr>,
	"security-discussions@lists.openembedded.org"
	<security-discussions@lists.openembedded.org>
Subject: Re: [yocto] [security-discussions] yocto-security-tools: helper
 scripts for CVE backporting work
Thread-Topic: [yocto] [security-discussions] yocto-security-tools: helper
 scripts for CVE backporting work
Thread-Index: AQHdGOHSPegjwfGC/UauMSGblx4z4LZ3ms4AgAA7rgA=
Date: Tue, 21 Jul 2026 11:29:01 +0000
Message-ID: <1b1c14a7e8e81e1c2c9e26f604b6de5dacb755d7.camel@ericsson.com>
References: <2aa6cbc429f279571f460291435abbd6d3dfdd83.camel@ericsson.com>
	 <DK436EQ9V6D7.35H1AH9B4J0U6@smile.fr>
In-Reply-To: <DK436EQ9V6D7.35H1AH9B4J0U6@smile.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ericsson.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA3PR07MB10721:EE_|AS8PR07MB7862:EE_
x-ms-office365-filtering-correlation-id: 829cbe34-3b48-4ae6-1ae9-08dee71b435c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|23010399003|376014|10070799003|18002099003|22082099003|4143699003|4133799003|3023799007|38070700021|10067099003|56012099006|11063799006|5023799004|6133799003;
x-microsoft-antispam-message-info: 
 F1NsO2vYGIp6OIrAJH2G+u5H7N4PDCoZEkUrlyrQ/k63+hQuT8bdDK1+mGksJS08TwA6C/HekIEqJmoK2xWhaXCGgwJanHlJvSB1i/UM8TafZXRExlGVlz807Fgn+IRyGBNuHnt3WDnmK431YAQdpQYCiZhnAnPJ1J0XLTzFnIq6MOoqn1ytVkklDpkDhW0Ap/M2/VQhARWH1PTaSgChWJK/6qDdwTbe0I4LfSerVXT+2EXXsgFzFMsa3soJZs4XTTpWFkReXGgRK3B+yWvuZEQI9VU5/FUbIkyRYXfGxI8yNGiRW9oTp0JpcFdUGcxzxjhzOxX3SckgiYXmpEF7ln1OiNeBQBcIyhfivHGjfohKCrJctPgf4lmsCcFUUPtTDxe6xUIvdjo+vJ8VcmIKZHRWUCDPG8ksTRpYFJvwVEWZoFPGvifjpprjuDrvUDCiQ7fy/vcst2n2rOWHOWNUao2GT+3U7qjPhRsD8UCsvXFR3Z+9NkZGkwZQKg/SBHgCfSn/WtVz14VRDiCemYPg+HBE3v2mMqEN5qvjkzgV0zX4WtGM//KgF+3hXIoinAYuUYnkSEX/prGHzf/OT1LAEVQcCyZC2TyRUBqjFPuvX6jp0ixm6PFiF/0qioYbg70+kkp4DwyUxGIybwZphJHW4RE99aS2kL8vXQuTE9iONQY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA3PR07MB10721.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(10070799003)(18002099003)(22082099003)(4143699003)(4133799003)(3023799007)(38070700021)(10067099003)(56012099006)(11063799006)(5023799004)(6133799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?WUtQOTByaUVsSzJKM2VJeWJrdmY4R0duZTdya0t6aEJvRkhhVUxBK1BKZVVo?=
 =?utf-8?B?WVFoZ09teEw4SHdMNG1JTlhIbzBPRnptYVYxRFducHI1SmRxa29YM3JOdWJT?=
 =?utf-8?B?QlFyNHFtYmUzNCtRc0VETDJlRmtRaDdRTmNzdk1oR3JYZWpoOHF2UTVLQTlO?=
 =?utf-8?B?emNhM2VHVFFRZFY2S25WaUw4MENuY1dRMnEwYWVRU0VDR2VWZ2RKZlgwbFZN?=
 =?utf-8?B?eGRpTFJFZTkxZEpHQXdnUWV2UXpGeHpmb0xOV0xHdlo4czJRTFRwTnVPcjYv?=
 =?utf-8?B?Qnc1RXpUNGQ4RExpcmoxdXRKbjk3b2FTSHl2ZVJET0RSWTBkQ3ZLQ1FGNGZq?=
 =?utf-8?B?WUVGM2xTMnVreFRCemsrNUdMVWE0eTdneXhQOS9Yb3NpazkxbHhvN2k1bTJU?=
 =?utf-8?B?UWtIbnBqalBDcFRvd0dTaE40REU2TklwUVJBNzExbytxUzhNNXN0dS9NMmpo?=
 =?utf-8?B?MHVZYlF6Si9jdE5lY0JrcTNKTkJ1azZoV2RMM2lIVHY5dkpBbEk5Wnh0SUdr?=
 =?utf-8?B?NnFaa2NXK0hVcFdkM3dEeStaeC9aY1R6Mks0Y1NuV0tBbm1jV3pKVVlJV09R?=
 =?utf-8?B?NE5USHRmVlo0Q2txdWxIZytOY01pdVRGR1J3UlRUclY2TC9vcXRET0RPV2Zm?=
 =?utf-8?B?MzdZQ1p5NFBkSkxmbDduNmdYR0lrV0JnbTBxall3ak5JUHNtWFZYSHp1WTN4?=
 =?utf-8?B?R09kd2U5Vlp4d0ptaEtyRWpyN3FQR2I2ZUl0U2wxNmlvdFhaN2x5TUZ1ZWZP?=
 =?utf-8?B?RngrOE42SFdodllxKzVOcnFvRG9DMDVhUlZzbHdheit1aGhaZ1VZNHg3T091?=
 =?utf-8?B?Z21BaGptTFJyTXBmUml0QkMraDB5MHhWdCs5ZUljNlBocm1nNStoTjNKYnoz?=
 =?utf-8?B?eUNzd29FcVZab2d1bk5mRDhBL3Y0QUFIMVB3MHRPNXU1LzdWWnhIejNWT2Zo?=
 =?utf-8?B?bG1pc1pUaW11WjRtb0JVU0EwYlZVTG9sUjhncHg3U2hHVVB0Q3hsdWo3ZXUy?=
 =?utf-8?B?QzNza0pCSStQTlY3U3Nzazk0eENKaTIwM0hxV3dsbjA2NmdoYlBkRWxqZytU?=
 =?utf-8?B?T1prTXU3c0NvNlFJUkFEOTFaYktiVk5JSG8zZ2xMYXUzL0ZRYWRPRnFuQVNv?=
 =?utf-8?B?d1p4T0xCR1M5dGZQMnY4elZCblRHSmVwQzNudEJYeGZSdUw5cjM3Q1o3ckFY?=
 =?utf-8?B?Nmw4VUw1a216cU53bnhJM2hnVWg1dEhRQ2FPUWtiV3gwZ0ZiYVZoNWNUTDVT?=
 =?utf-8?B?QVdYS25zNkZpQTNSWHIwQzcyL1ovcytscGtiMDhCZjQ3VktlZFBBUDdxbU5h?=
 =?utf-8?B?VGdodDBsdHpnTDI4MU9URk9SbkpFUU1xWGJWVS85Y0ZKVkdIck5ZVURNdzEx?=
 =?utf-8?B?OXk1RkRHSUtTOFNNU2lHMVFJZ3JxWFpQU2RNTVpuZ3lDVjlyYjFuWmxUOHpY?=
 =?utf-8?B?WE95Q3FEWkwrUnNRRHpEZEtjUmVpRGtDNWc5NnhqRTNObUN1VnU1VDNZWWpr?=
 =?utf-8?B?K2t4alkxTjdMc3o1b3JkdUF6dk1KV2l1QTBzS3ZFWTFXMDhLKzRGVUMvWStG?=
 =?utf-8?B?dlVKWUJYZEpoSU9NSVZoRWdDK2YwQy9LMXZ1UDFZRk95SzREcUwyTXg3MWJl?=
 =?utf-8?B?Y2grRWtTSUZyTmpSUWRCQUZ4WmdYSEJxNUpWSWNGbyswRit4Z0UzdTlHT2p2?=
 =?utf-8?B?VEF0YUNEK3Yzb25CS1lWOUszTFNMVHM4OWN6KzMwTEJmWERldTlZaWZsRVN0?=
 =?utf-8?B?RUlhZjV6bDdsTGNUYlRnQTVLL2FmaU4vRmRYZGFtYnhCaGprdmJIazBNRit4?=
 =?utf-8?B?MXhFRVVRcUlnWkVYUmpzRk85cWt5QTdKeDRVcWd6WG9GZzNBcFdGNlpUMGg4?=
 =?utf-8?B?OG9WM2VEOGR0b2VGbytDNWNUWEJaVnoxMHN5YUx6Z01yVmM1R1FMYlBpaFJD?=
 =?utf-8?B?aXUwMmlNS2VRYU5vQmw2MVRqNVBEV01mdUFERXk0aUhmY0s5WktJejlieTJV?=
 =?utf-8?B?Ukx0NjhaK1ZISFVVV1orVVhxNDRUS1F5cDEvME1ldDRiSEJ1QzBaZEcyWEVN?=
 =?utf-8?B?M0hEMkhxWGxiM212b0RuTE1qa2JjQnpVcytLeFNQK2liNkRBTXpqNWJHTGRG?=
 =?utf-8?B?RW1GN3BEVENsL1hiUEJQbExWNUpBUDdmaWdRcXBLSnV5cmlBK2NISiszN0dL?=
 =?utf-8?B?SDR6cnFvTVVWTjN6MFlWdXdCZFVFVkpIY1E5SzBidjhmVWNsaDFmVGVncEZj?=
 =?utf-8?B?L2poZmwya0NnWDQyaSthczBQVjZaSVRoRHdTT25zMDA1Z3dVMm1rVEQ4aW9R?=
 =?utf-8?B?QWFKNE9NVlhvVzFWQjUvMCsvU2h1eENmUnFRcGZaT29XL3hJYWJXbytVU0JV?=
 =?utf-8?Q?FbKJreng18qERlNmOu6H0rM+ndy9xq+U1sp0PiYN1eAeT?=
x-ms-exchange-antispam-messagedata-1: 2SEd5svTu3dyE3Y5GS/Qt5xlaT0RkuA5+AY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <92BC199AF5B9364CB445EAB21EDAACD8@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA3PR07MB10721.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 829cbe34-3b48-4ae6-1ae9-08dee71b435c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2026 11:29:01.2987
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0b4eLFGkoTbWtgUFIaUurDw6HElvck+46xTL4AwIxQXFJhQX5IURjRj7JFZCmKBf8QM7r9ouoUjA/x8kn2mR4au4nnYTB6MONzu2Yibg0vo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR07MB7862
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2026 11:29:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66648

T24gVHVlLCAyMDI2LTA3LTIxIGF0IDA5OjU1ICswMjAwLCBZb2FubiBDb25nYWwgdmlhDQpsaXN0
cy55b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KPiBPbiBUdWUgSnVsIDIxLCAyMDI2IGF0IDk6MjMg
QU0gQ0VTVCwgRGFuaWVsIFR1cnVsbCB2aWENCj4gbGlzdHMub3BlbmVtYmVkZGVkLm9yZyB3cm90
ZToNCj4gPiBIZWxsbywNCj4NCj4gSGVsbG8gRGFuaWVsLA0KPg0KPiA+IEkgd291bGQgbGlrZSB0
byBzaGFyZSBhIHNldCBvZiBzY3JpcHRzIHRoYXQgSSB3cm90ZSB0byBlbmFibGUNCj4gPiBmYXN0
ZXINCj4gPiBhbmQgbW9yZSBzeXN0ZW1hdGljIENWRSBiYWNrcG9ydGluZyB3b3JrLg0KPiA+DQo+
ID4gaHR0cHM6Ly9naXRodWIuY29tL0VyaWNzc29uL3lvY3RvLXNlY3VyaXR5LXRvb2xzDQo+DQo+
IFRoYXQncyBpbnRlcmVzdGluZy4gUmV2aWV3aW5nIHN0YWJsZSBwYXRjaGVzLCBJIHRoaW5rIHRo
ZXJlIGFyZQ0KPiBzaW1pbGFyDQo+IHRvb2xzIHVzZWQuIFRoYW5rcyBmb3IgcHVibGlzaGluZyB5
b3VycyA6KQ0KPg0KPiA+DQo+ID4gSXQgY29uc2lzdHMgb2YgMyBwYXJ0cy4NCj4gPg0KPiA+ICog
Y3ZlLW1ldGFkYXRhLWV4dHJhY3RvcjogRmluZCBmaXggY29tbWl0cyBmb3IgQ1ZFcyBmcm9tIG11
bHRpcGxlDQo+ID4gcHVibGljIHNvdXJjZXMgKERlYmlhbiwgT1NWLCBDVkVMaXN0IFY1LCBVYnVu
dHUsIE5WRCkuIEZvciB0aGUgbGlzdA0KPiA+IG9mDQo+ID4gQ1ZFcyB1c2VzIGFzIGlucHV0IHRo
ZSBjdmUgcmVwb3J0IGZyb20gc2JvbS1jdmUtY2hlY2sgb3IgYSBjdmUgaWQuDQo+ID4NCj4gPiAq
IGN2ZS1jb3JyZWN0b3I6IEF1dG9tYXRlIGJhY2twb3J0aW5nIENWRSBmaXhlcyB0byBZb2N0byBy
ZWNpcGVzDQo+ID4gdXNpbmcNCj4gPiBkZXZ0b29sLiBJdCBtaW1pY3MgaG93IGl0IGlzIGRvbmUg
bWFudWFsbHkgYW5kIGNyZWF0ZXMgYSBwYXRjaA0KPiA+IHJlYWR5DQo+ID4gZm9yIHJldmlldy4g
SWYgdGhlcmUgYXJlIHB0ZXN0IGZvciB0aGUgcGFja2FnZSwgaXQgd2lsbCBydW4gdGhlbQ0KPiA+
IGJlZm9yZQ0KPiA+IGFuZCBhZnRlciB0byBjaGVjayBmb3IgcmVncmVzc2lvbnMuDQo+ID4NCj4g
PiAqIGN2ZS1hZ2VudDogaWYgdGhlcmUgYXJlIGlzc3VlcyB3aXRoIGN2ZS1jb3JyZWN0b3IsIGxp
a2UgYSBtZXJnZQ0KPiA+IGNvbmZsaWN0IG9yIGJ1aWxkIGVycm9yLCBpdCBjYW4gdHJpZ2dlciBh
biBBSS1hc3Npc3RlZCByZXNvbHV0aW9uDQo+ID4gYW5kDQo+ID4gdGhlbiBjb250aW51ZSB3aXRo
IHRoZSBjdmUtY29ycmVjdG9yLiBDdXJyZW50bHkgd29ya3Mgd2l0aCBLaXJvIGFuZA0KPiA+IENs
YXVkZS4NCj4NCj4gSSBvYnNlcnZlZCBzb21lICJ3ZWlyZG5lc3MiIHdoZW4gYSBwYXRjaCBpcyBw
YXNzZWQgdGhyb3VnaCBhIExMTS4gSQ0KPiBkb24ndCBpZiB0aGF0IGlzIHRoZSBjYXNlIGZvciB5
b3VyIHRvb2wgYnV0IHNvbWUgdGhpbmdzIHRvIGJlIGF3YXJlDQo+IG9mOg0KPiAqIFRoZSBMTE0g
dG9vbHMgdGVuZCB0byByZXdyaXRlIHRoZSBjb21taXQgbWVzc2FnZSAoY2hhbmdpbmcgYXV0aG9y
LA0KPiAgIHBhcmFwaHJhc2luZyBtZXNzYWdlLCAuLi4pIGFuZCB0aGF0IHNob3VsZCBiZSBhdm9p
ZGVkLg0KDQpZZXMsIEkgaGFkIGlzc3VlcyBhdCB0aGUgYmVnaW5uaW5nLiBOb3cgaXQgaW5qZWN0
cyB0aGUgcHJvbXB0IHdpdGgNCmFnZW50IGluc3RydWN0aW9ucyBmb3IgdGhlIGNvbW1pdCBtZXNz
YWdlLg0KDQpodHRwczovL2dpdGh1Yi5jb20vRXJpY3Nzb24veW9jdG8tc2VjdXJpdHktdG9vbHMv
YmxvYi9tYWluL2N2ZV9hZ2VudC9BR0VOVF9JTlNUUlVDVElPTlMubWQjY29tbWl0LW1lc3NhZ2Ut
Zm9ybWF0DQoNCg0KPiAqIFdoZW4gdGhlbiB0aGUgYmFja3BvcnQgaXMgQUktYXNzaXN0ZWQsIGl0
IG11c3QgdG8gYmUgbWFya2VkIGFzDQo+IHN1Y2g6DQo+DQo+IGh0dHBzOi8vZG9jcy55b2N0b3By
b2plY3Qub3JnL2Rldi9jb250cmlidXRvci1ndWlkZS9zdWJtaXQtY2hhbmdlcy5odG1sI2FjY2Vw
dGFuY2Utb2YtYWktZ2VuZXJhdGVkLWNvZGUNCj4NCg0KWWVzLCBpdCBpcyBhbHNvIGluIHRoZSBh
Z2VudCBpbnN0cnVjdGlvbnMuDQoNCg0KPiBJIHJlY29tbWVuZCBydW5uaW5nIGludGVyZGlmZiBi
ZXR3ZWVuIHRoZSB1cHN0cmVhbSBwYXRjaGVzIGFuZCB0aGUNCj4gb3V0cHV0IG9mIHRoZSB0b29s
IHRvIGhlbHAgdGhlIGh1bWFuIGF1dGhvciBzcG90IGJhY2twb3J0aW5nIG1pc3Rha2UNCj4gKHVu
bmVjZXNzYXJ5L3VuZXhwbGFpbmVkIGNoYW5nZXMsIHBhcmFwaHJhc2VkIGNvbW1pdCBtZXNzYWdl
LCAuLi4pDQoNClRoYW5rcyBmb3IgdGhlIHRpcC4gSSB3YXMgbm90IGF3YXJlIG9mIGludGVyZGlm
Zi4gSWYgdGhlIGFnZW50IGlzDQppbnZvbHZlZCBpdCBnaXZlcyBhIGRpZmYgd2l0aCB0aGUgY2hh
bmdlcyBkb25lIGFuZCB0aGUgZGVsdGEgd2l0aCB0aGUNCm9yaWdpbmFsIHBhdGNoLiBJIGd1ZXNz
IEkgZGlkIG15IG9uZSBpbXBsZW1lbnRhdGlvbiBvZiBpdC4gSSdsbCBjaGVjaw0KaWYgSSBjYW4g
dXNlIGludGVyZGlmZi4NCg0KUmVnYXJkcywNCkRhbmllbA0KDQoNCg==

