Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB517C28B30
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 15:48:59 +0000 (UTC)
Received: from ZRAP278CU002.outbound.protection.outlook.com (ZRAP278CU002.outbound.protection.outlook.com [52.101.186.48])
 by mx.groups.io with SMTP id smtpd.web11.11278.1742485734854692219
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 08:48:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=CA/+PPjO;
 spf=pass (domain: vrag.ch, ip: 52.101.186.48, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGh3bdY1lxlahunhJCgfKcZDTQCDb2GqaPR7xN79dwKAOE/A4nKyi9oUQ5126Ed/xqCMCmXKThhMiD+vvDZfI24PiHgrVx5Kvzk7SpTZDOxMY3maUPJk6q7uDLCG8zqhoJuc+PDl22co9q3mv6aFio2I6lcpMBk0nPkW16fw6IWTlS3ok6PTbWkIrfw5RH/zq4YFKWMPjD7j7pdN1sP/zCJlRwd/fuBrn+Bm2ZXNG0mfmg2H7ALPF4UHShrKtkbmQeaaqbYyZ5E3CWB+JEHXvTZ+3CBSerRJIIsQMS7jPu8ruJmqlkx1MLE4wj3/grj/txb81aoxP4Q7qg0JUpmK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpgAU1m3eEUhLeV+btM0/KHpsX9ZfqF9geoc9SoH6+s=;
 b=qM/AbaU5SEGwn1F1xqQWLB6oOWZNCSVZmXZAocz8jW681ioUGf8JlzcnAX0a5A0ZRO8wOkrBjvt/IlM2GkJ74eJj1ZnqfG+e62x1PDFXZwLHGlgV/KZ4HW8pA/FxPT6Wu6olmSwLdOy4Ervi/YGz400Scq0zPZv1A4oEvXK1Du1ITajpc5BKp9sg1HQuEzYK4BOVSo4MHlkXRotXz6CAJ2YWjxYCtOGiYq8I/7Z0K/sEla43YcZ4MtEvNjnGaAdyol9MriT3mN4Jr9ma0ANVxdDV7RuY8UknYZQMSaxevA/R/fdWaU4uL7p/US0gqZoCZTiywrYhOvQa8FRjhy18pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CpgAU1m3eEUhLeV+btM0/KHpsX9ZfqF9geoc9SoH6+s=;
 b=CA/+PPjOeju3knEGrDwMo2T4Bx8gq9+QxaEbDF73ISG1TkdLaCdRyvmDZ6sZFI7sDq3/O//83kqDUd4FiJxhhgUFaiRZtUE6LwQNovRCdH7kFyxK6EGITYLJW4AQquZLEYVtzxPtflz7hCv+qa9eSSDXrx78WKW4X2QM9g8rW1Q=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by GV0P278MB1549.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:66::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Thu, 20 Mar
 2025 15:48:50 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%4]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 15:48:50 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Failure expanding variable GITPKGVTAG in
 libusbmuxd_2.1.0.bb
Thread-Topic: [yocto] Failure expanding variable GITPKGVTAG in
 libusbmuxd_2.1.0.bb
Thread-Index: AQHbmaOYnvqeEqgygUOVJpc4m2AxQ7N8JssAgAAFEwA=
Date: Thu, 20 Mar 2025 15:48:50 +0000
Message-ID: <7a9ad6385b445833dd01a9e63b3128d317517765.camel@vrag.ch>
References: <3311f3fd48ab25e96d99b89aa804f3571b13f0ac.camel@vrag.ch>
	 <4474D02F-CA52-4A58-A8A5-8413584297D5@arm.com>
In-Reply-To: <4474D02F-CA52-4A58-A8A5-8413584297D5@arm.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|GV0P278MB1549:EE_
x-ms-office365-filtering-correlation-id: b0caf666-24bf-4b54-6564-08dd67c6b5ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?UE5GVXFGczVTSDhuMXBRdDhTNDJwZ2hvdUtHY0wveFV6aVBLSmJId1ppY0Q0?=
 =?utf-8?B?UmU3VFVpQThIb0JCUUFLWnhybmdscCt2N01EQlV6cmN2cVp6Yy9pZUpzSzgz?=
 =?utf-8?B?NWdZckx4VDZLUllyUDFaR0VCTjlXUFRkNnhLdGdoWlBqK0hmUXhuQTZEckJN?=
 =?utf-8?B?YnhJNjVxb0IzSFBIL0xXK2hPSXNwOG5DazVwbERZWUM5VjhXZ2lpYTQ5S1VK?=
 =?utf-8?B?YVFidUw0cWRnKzdaMEJrczd3aVNacUpodnZ1RWY3bm52WlBXZ0pLMGxTQ3A3?=
 =?utf-8?B?MjAwa3VrZHRlRExRdFRuSW1oSTk2Z0I2UGFzQ3NQc0d1OElEZmtSdExKYnYv?=
 =?utf-8?B?bW45dzdWd0xOTzZaRnE5eUhYbW52cXVYOHJMckU2SFpiUTU0di9rSWl3eTA1?=
 =?utf-8?B?L3paendyMldVL2l3U1hYR1I2T0RLQ1lXRkp0WU1oL3ZTcjBSa0NYZ0Z1UW9F?=
 =?utf-8?B?YkJNOEZieDAyZ09lRkRUd1gzQmhIYUcrSkxodHJYSWRoSmZNK3dxQXQ1RFNR?=
 =?utf-8?B?cU0xM0wxUWdUZTdVdGQrM3E0UEpnNTIxMlZHUjZmeHMxbTloZEpJS2lxaE5G?=
 =?utf-8?B?Z0gvZitob0JyS3BveHBhRHZmV0Q5K0xrVFVHT0pmQ0JHZEFxY0JtcHZoRTBu?=
 =?utf-8?B?SjJPUHZaSHFQTis3Rm9DWFkxTk9GS0RjNjFuYUtKb2syOWo1ZWZnRVVTWGp4?=
 =?utf-8?B?QmN3QXJZZWYzNzhwd2dPRVdoUFp1MmNVY3dnZjZNQ2hUMllJOGgvL1B6eE1t?=
 =?utf-8?B?b1p1ZHd6Wm4rZGE3L0EvakVsSXdLZVFYYXBSL09CNmZReU1Sd0RYQ0hZS1lO?=
 =?utf-8?B?YjgvOXFUMmdFcG5qaHoveFZ5YTFncml3bFZOTktSU3FEeC9EK0FJWWZONWhN?=
 =?utf-8?B?YXdCN2tHTjdYODhZUUFPS1hyNjZrR0xGYTRwTXJDUEUzaHVwTndrQmgvK1pD?=
 =?utf-8?B?QzlhcGpkK2Q0UmF5MjVvL1RUZWZRb2s4dXRyK3ZJZkw2NGpCaWF1WjFWSU1F?=
 =?utf-8?B?cGkwd3VWQnM1UmU1Mkp3cGEzckdDbEh3eEI3MlpOQmlvWGNyd0krYkNBOWZq?=
 =?utf-8?B?aUhZaDFYS3dPcFhXbzVOaWpTaG1UNWpiam42OEluSlpKeXB2ODhvY2pkaGFS?=
 =?utf-8?B?M3VZRE9jbHpJRVFBZjYxVU44NU5mOWNGOWdISjVKWHpJR05BWXVaOTVneitn?=
 =?utf-8?B?b0xtL1I1YWhWRnhibHlXNHNmbGp3VFFyd3FscURHdUxuUGM0eGw2Y1JBSmRG?=
 =?utf-8?B?VDJxOHZsR09ySlozWXlsY2VMSGtqa0dwNnl1SmhEVFFVQXozMkZlN1BOYmdE?=
 =?utf-8?B?WHZuL3F0aGJ5VzZSSUwxUlRhVDhXNFJBNTVjRU10STdSNnd2RFVvazUxTVlU?=
 =?utf-8?B?eGRtb3lkOFJBb2FpVkt2V3B6Q3ZHSE9paUVFOVp2aDduZUU1SVFNTXJza0pD?=
 =?utf-8?B?ZWQydzdZZS9wbi9teDhoOVRNUXV6di94bTZDT0NqVHdmUDBXRVhpZzRGUFVN?=
 =?utf-8?B?M0wyU3lXcmtvemdDWTVvVERsV0dhVTlsY3Bsc1hodkJyeTRKaGtzSlRGMHQ2?=
 =?utf-8?B?Q2J6RHV4R3F2bk8vTFBDTGl3YzlOamtFM2lHR0x4cnpsU3lXTG5lTW5zTURq?=
 =?utf-8?B?Q1ZwcW53NEYwSHM3VGN2NXpxYWRPYittTnovUjdxYW4xaWZrVjZ4YnRLRmVx?=
 =?utf-8?B?aU1IY0d1Ymc2MVhNT0k0c3QySXFWUXpDWGFDcUJLRFVJVnJRbXJ5Nnh6WnZM?=
 =?utf-8?B?T1d6MlFFRVhQdzlLald6TDd3cnBEN2c1UXdXUmQ3azNKdFhHbExJbVdKUGlo?=
 =?utf-8?B?aWFYd3lIQnFMNlhHWXVlZHZ5TTRxbHYzSEkzSXoyMDd1R0dBaDRIUk9Mcy82?=
 =?utf-8?Q?//gjIddYTLAK/?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UEN2b21HblhRSnUwTXQrSWVOZ1kxQXVrcEZXaHpZdlRsdnpFNHdJTWEyZWxO?=
 =?utf-8?B?UTFyODZ3dXUxOGRtdzU5cklhV01FcDJRQ1M3cGI0V1RjRVMyeXh3WmlBUkFU?=
 =?utf-8?B?dHUzYWRxdzhJMGRjM1h0ME5lTWpLbjc5YWlFVDZUUjRVaEdUekFjcnZ0MUJO?=
 =?utf-8?B?Y0NDTURqMGNPWXRCL0lqdVlSVGJXaENZaVFxQWJZWE5obzJZdjJlanhZNWtQ?=
 =?utf-8?B?bnhVNVM5SlVOK0dkRFMvNDE2aVBjSytHQ3NoZklKbzZFSkswRERLa0dJcStj?=
 =?utf-8?B?Z21OblVzdlhjVGpGaFRHN3hJWGVVaDBXRU9PbWtsSUV4cWJtdEtZa3hERkQ4?=
 =?utf-8?B?WmE0cFd2VWlvaTc1cjlQWVBFbUR2ZzZ4K1F2bXNsNTBocFkwZEdtdDJkYUhK?=
 =?utf-8?B?dEY1TXA0T0JlVGp2OU0xeHNDVTB4V2lKeGJldDVnMUdHbjk1Ym9xM1ErdzJ6?=
 =?utf-8?B?MC9tdTN1dmRsdE1kaDJCWmkzMi9JY3RZUGd4cjZOMkxKZkdHejVpT3F0dWVp?=
 =?utf-8?B?NWFSU3l6MFcwcUpaQm5aN2FtSnhoRXdoL3BMVjkvbklFNkh4T0hCWkgzMHFU?=
 =?utf-8?B?bkhjeHAzT0FiVkhjM0x0aCtmZkF1NDhNZHhQRFhoNGZCU3FoTithUlRzSy9r?=
 =?utf-8?B?cVpvN0szb0RSTmxFY0srTW9Mbk5BTTczUGlQeFZoNnpUY3B3MmRlVmkvVnpO?=
 =?utf-8?B?d2VSVWM4U1hwaHlORy9HZit1V3d5Wk5kOGxjSDg5ZVBya3pMR1VrOFpOSlRC?=
 =?utf-8?B?RENUTzVjMHJYOHF5Rm85OXkvclJkQkFLcmZGNk16a0xZdVN3WHA1Tlc3Znlj?=
 =?utf-8?B?eHJ4SURoY3B3MHFoRWxaOTZzWDhpUFNRWURlWXZ0KzErV2h2ZFJWN0hoSW1s?=
 =?utf-8?B?SGUvVjRuUHBpYVRCallQQ0NtYkg4TlE2NUQ1SmJYcVptN3hhQ2Zqc2Jjc3ll?=
 =?utf-8?B?VWFUZ3JjQzZNZkhzdGIwYmQ3MW9MNEN3WkJNV3MyVU04bmVWa2xvdDZkb0Zx?=
 =?utf-8?B?dDBRVnFvVWpTdmVIYlRCSm82WGI4eEgzOFFxL1dQLzk1ME1laXFyRTQvT0cv?=
 =?utf-8?B?ODdPdm5XSXByOTJGcDZVTFN3RTdLTFMzY1JPK0d0WEwzSGc0UE5TWGlURFl0?=
 =?utf-8?B?VWJkZjFaM0tOUGdJODBpR0J5N3RYd1dIWjN0TW5MaTFSeDEySitvaENHRjNz?=
 =?utf-8?B?eDFQckRlZDYzUTkrTGxYR2lTT2VLRGhZdjhaUGpxb1o0UFNhb2Rvc1VJN0JL?=
 =?utf-8?B?eitNT2o0YnN4ZVhZUy95bGhrUEVNZnlLamh5MWpQbXZrdjlsZENQNExaM1JB?=
 =?utf-8?B?aVk3c0lsN08weDZaSE1CUERFNXVCNXQrZlU0Zmk3d1hHU3g0Q083djYrWVE0?=
 =?utf-8?B?MjVmWVNZaTRrZXVHNmJKZ3RXRi9OVHBTWFVObDJlRnlJYk5LMHB3WkFzM2pI?=
 =?utf-8?B?Q040bGFkV01YZDFQY3BOUDVJM2VHQldDcDFCRkwvdEQ5Y2dPTERiZjRBbDg3?=
 =?utf-8?B?Yi9aS21pYWZ0RlEydzJnMGh2dE0yMTlZMEU5WnZLanFxem9NdG9aeXN1dzll?=
 =?utf-8?B?Q0c2ci94ZGVpZWhzTFN0ZXJpclVuSll2NFpWSUd0Nk9zN04vbVhKT1o3Wjdp?=
 =?utf-8?B?cFNUZGF6d0tQOW9Fa0VZUFdrQVQ4ZHNKUEY5SVBOOFZ1V3daRHNxTWpORUVC?=
 =?utf-8?B?aGpMOVpzZkVQb0orSlMrWXBObVdBNVVXQnFhNitvdnFYaVBoelh5UTl5N1BT?=
 =?utf-8?B?OEJKbDcvaEJEaXVsdW5ua0g5bmVLQ3B4cFRqekhCbkFWaituRVpsTktrOUJM?=
 =?utf-8?B?M0FwaEt3OC9sWGNYaU05OXRxaHpkQnlHeHJGL3V3YjMwNktPSkpCNmMyeFFL?=
 =?utf-8?B?dEdNSDA2T3l2RzlCQkdCSEM4Z1MzcDhESUw0TlNzaS8wNGdqOWZVQUVxODli?=
 =?utf-8?B?ZjFSNXJXMDZvWFYrMmxrN09PS2ozbGowRmg4bWxnTU51aDZqVkJtODdVdWFt?=
 =?utf-8?B?bGdqemxxSEpKeU5QL0ZmUEZXZkY2a1JEVFVQQzBvS09sTE1Na0czTVBiK0dT?=
 =?utf-8?B?OW1jYkozOXlyTERhVzQ3M0hycnViNlkwMmRFZjZETnQxd0xBdHBqOFBIRk9B?=
 =?utf-8?Q?UNpJJfwE9LS7rA4St96oIOxdA?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EDC6CF091B6C9C42B8342F8D648803CA@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b0caf666-24bf-4b54-6564-08dd67c6b5ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 15:48:50.5673
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tt5ofQNsqTMJNhHPNUqiNo2fOCzyIsiqXYgDVqGqzE54K+O6pFv5WMjU9ZjDVX8gbvTlEsrVFye5Oe6jX9fzlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB1549
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 15:48:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64994

QW0gRG9ubmVyc3RhZywgZGVtIDIwLjAzLjIwMjUgdW0gMTU6MzAgKzAwMDAgc2NocmllYiBSb3Nz
IEJ1cnRvbjoNCj4gDQo+IA0KPiA+IE9uIDIwIE1hciAyMDI1LCBhdCAxNDoyMywgRGF2aWQgRGFu
aWVsIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+ID4gPGRhdmlkLmRhbmllbD12cmFnLmNo
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPiA+IEkgY2FuJ3QgZmluZCBhbnl0aGlu
ZyB3cm9uZyBpbiB0aGUgbGlidXNibXV4ZF8yLjEuMC5iYiByZWNpcGUgLSBoYXMNCj4gPiBhbnlv
bmUgYW4gaWRlYSB3aGF0IGlzIGNhdXNpbmcgdGhpcz8NCj4gDQo+IA0KPiBvZS1jb3JlIG1hc3Rl
ciBjaGFuZ2VkIGFuZA0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vcGVuZW1iZWRkZWQtZGV2
ZWwvMjAyNTAzMTkxNjQ1MTEuODMyMjExLTEtcmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9u
Lm9yZy9ULyN1DQo+IMKgaGFzbuKAmXQgeWV0IGJlZW4gbWVyZ2VkLsKgIFlvdSBjYW4gYXBwbHkg
dGhhdCBsb2NhbGx5IHVudGlsIGl0IGhhcy4NCj4gDQo+IFJvc3MNCg0KQWggSSBzZWUsIHRoYW5r
cyBmb3IgdGhhdCBxdWljayByZXNwb25zZSENCg==

