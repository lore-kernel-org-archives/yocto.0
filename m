Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.79])
 by mx.groups.io with SMTP id smtpd.web12.366.1614717779458886633
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 12:43:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=gwpg3wJk;
 spf=pass (domain: spinetix.com, ip: 40.107.7.79, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YAwcepjwBZxJ6lJZK+fh8ule11c5ZEm9z2G4MKLynF0fu+DwDjZnX0sXqY5Eoi0jKmAa0pGxEBKW5nlbxCI9m9u33HsOszqZJzcGW4VFpJZQQVD2ZpF2P++A2PbB24Yhnh9gNJv0zUc2JNQsD+QQZpb2H9UJ6Le8NWwkuU0G8FsP6kpmO9GEMhFUh64k+mRu4x0Oz7vXGI9sKB5H1XK7FIyY7x/a/oql4cX2aH/EblTyaNQo5PXda/ZRiWvbCJoR6kXze6PXR2dbnPJ07/XtbAjgeAf4nMFiwToo21thDnEVGq+vEyhPcTYJjD3Q5uJ2zoswVBUeTXJW6DUIEK48QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SiGe4dHEtN2VxkroMU6fA5Ffohg/V+cpe1jFASHwQrw=;
 b=PM4DwBt7U7pen/I2CqMqkJhqSgJ/Mx5NMyNNd/5NAV44iT9e8euLD6DzLAIW9t0fpJm/l0HLufHQvcz3wM0VG6CUbxWp3dSXY4w6vSHT/x4OJfIcKDWZKNz1fU6QAhCqH+KnXv3e9HjsnbEyB07KK7jNQzBuB26H80vfLb3rzcEz3DXTcN6D9N1K2dUHmGR2nTNcwGo4KDPdyIpWo2D9yFlcuJoPHKP4D5hJwol15LNkiWUojdjN9jqtt8vUxUjMGAxXH/gPNjKJp/unp4lruXAmTeBLHZQVZQaf0xAd8JdLvD1hAPyVPQ5My28lvufvnbgNQ7RtTOSTh+hxTT6sJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SiGe4dHEtN2VxkroMU6fA5Ffohg/V+cpe1jFASHwQrw=;
 b=gwpg3wJkJXZFtN7EFMj6dcAOug+qaTeJ3cpDBMzeIp8AVeh6Iy44k2FrKgL5+NboCziU1ZK/uYS9/OoB6g3zlycopYzwZo0HxZYySdQblNo6K0MTSB+Ekm4dkq785G2FKXXzV0ZDCtPbZRCxdzk7/8YNR1uroEWQoGjfIfx+hvs=
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:e::19) by DB8PR01MB5561.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:101::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Tue, 2 Mar
 2021 20:42:55 +0000
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 ([fe80::a979:e5e4:3b20:ba6b]) by
 DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 ([fe80::a979:e5e4:3b20:ba6b%7]) with mapi id 15.20.3890.028; Tue, 2 Mar 2021
 20:42:53 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "steve@sakoman.com" <steve@sakoman.com>
CC: "rustyhowell@gmail.com" <rustyhowell@gmail.com>, "Yocto
 (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Reducing the perl footprint on my image
Thread-Topic: [yocto] Reducing the perl footprint on my image
Thread-Index: AQHXD4DYwW2rk20amUy6hmRihCyyMapxH+XOgAAH7BA=
Date: Tue, 2 Mar 2021 20:42:53 +0000
Message-ID: 
 <DB6PR0102MB263061D0B03C4DA90C7B89F188999@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
 <16689EFE3DC0BB92.17298@lists.yoctoproject.org>
 <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: sakoman.com; dkim=none (message not signed)
 header.d=none;sakoman.com; dmarc=none action=none header.from=spinetix.com;
x-originating-ip: [178.198.240.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 444ab116-b13d-480c-ae5b-08d8ddbbc082
x-ms-traffictypediagnostic: DB8PR01MB5561:
x-microsoft-antispam-prvs: 
 <DB8PR01MB55619D0791F603BADA92967588999@DB8PR01MB5561.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JCkXKCenwfu2d6xbFc6/Z1+4NgFT1wqBkjEZCR96ArUxX6I5Qf4SGEiMGzzP4VPB9vyrXxRlbGCBWgSTssZ2F+I5Q+Xl02yMEfMfq6mOnF/mbv/mwa6pSR4OLU3+UkZGxGIjKbkBpKwcAbIvoAbl1rNrdE9aDIqe4b95a82CTsnILwiE7oft8t2LkH9sg+G1laWY7+XSXVSsfHLzTry/m27s3vtQUis2XpXPwh3kD0xeGE3HVT9JT0zMASbr92U5zXvts9/gl4DpCBQJF2wTPWTgL7adql5W1YrGGMo8F8X2W/cmkAVjnY5OvmVx6YU9T7YwKQUz38hy7w4UENBjyRz3ZntQFml6z0Z7KN5U3CzjmTveOCa0c15EgT0tiGER+D2IC/sJrOQcrlmdGqUEqrzEdr3Bajjmzg9cwqDF0c8B9xo8K2rJBIOpgB/dS3W8F+8Xoo6XLufZNV2wcClpIVGipKQV3rzCoeIlu2F+njuzT42+lw2U/R9Z/C7Cjkz1b1B6LxECE9TZD4Xb+Gp4NA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0102MB2630.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39830400003)(136003)(366004)(478600001)(64756008)(86362001)(5660300002)(66556008)(66476007)(66946007)(316002)(52536014)(33656002)(66446008)(76116006)(2906002)(7696005)(8676002)(186003)(83380400001)(54906003)(53546011)(4326008)(71200400001)(6916009)(6506007)(26005)(8936002)(9686003)(55016002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?QUIxK2VEZXpTcGl2TU00TUVRSFROdExYYVpHcVB2NjFEODJSR2hBU0xUQ3V5?=
 =?utf-8?B?VnczamxJUkZTTjQ0ejVKTGcyb0xhc1lVckNhTFNJUG01alMyeVhuM214UFZD?=
 =?utf-8?B?cFBDSGdEanZtSWZzbk9qektLNWRML0ZEMEJwK2ZFTS94dmlaTGZsSHJrcXIz?=
 =?utf-8?B?MW45SWR3UFBYMVVsa3hpSjJVR2FZL3VwYnRwRUVxNkJuNE4yaXcrdmZwR1VZ?=
 =?utf-8?B?SEkxSlhySExScWhGZUJkQXZuajhUeXVRQXJNMzloMlJYakpGQnU1T0NIR1dJ?=
 =?utf-8?B?WVdjQlZLelJRMVJvbjczcFFxanlzMU5VN3pZRlp1ZDdkR2FyYXJTcytBYWpt?=
 =?utf-8?B?Z3VZWjk3QkZTeFBpQkFDaVZpL0tYQWtXWFRRQXZvVVFOd3dhN1lvT1dtTDRO?=
 =?utf-8?B?ZUtZSXhlZWtDeENmNlhzRXNjY1Ric2ZQTHl4YTJrU3R2UnNzVmlJMUsvTkJm?=
 =?utf-8?B?KzBQYUoxdlBpK2o0MEdzeUNUZCtHbGZZMzcxMnN2bEVUdXhTelZkRlpJcUlx?=
 =?utf-8?B?aTFxZ1FORWRta3dzVVV2TTd5WU5kT0wwbUdjRnVxTUVqbGtBclFZekh3aUky?=
 =?utf-8?B?UExFbjlFV0ZpNXpaTUNzdHdtaWhpMldrNFhxY2doRTJUZEg5RUZzTEpDR3oz?=
 =?utf-8?B?Wjg5YnYzWkRLeG1lUDE2TkJJTENuTzJ5SXJpcE05K25XSFhkM3g3S0dDSnFy?=
 =?utf-8?B?MURUUllmTnZOYnF6S0tla3ExcHpzRVNIWC9zejhtT1ZsVDZFVW9NSDlGWlR5?=
 =?utf-8?B?RjZvdWh6U3pPSXJVdTQ2LzIvRi81Vnk5Rlk0Z24wNlZ3RXQvSWlRV2lnb3po?=
 =?utf-8?B?MUN0dGFXamk4OXliMWRkNU9aam9OTXBVcUxpWnNKMXRpdE9ZeTRKS1ZlUkpE?=
 =?utf-8?B?YzNBd21mNVB5OVcvN09MT0V2NDM0NjN3RndHbk5POThCdytGYTI1TzlRMVpk?=
 =?utf-8?B?b0xNNkhQbkN5WUJqdldod1prSEhSMmRsMEh5dFZMZ3RuWXEvTXErVUV4cEhZ?=
 =?utf-8?B?QlNJb3dlenV1MEZsNTdQV3J1Z1NKZ00vNVk2VGFndEtURW4wWEo3N2JYUTI0?=
 =?utf-8?B?V0dnd01XQjlCVDV1Mm1jdEs4VTNQck5vL0pCaERISFZpQ1lZdjVjMXkybmFS?=
 =?utf-8?B?bzRCQmVrWWREVEZVb3dhWHhzRUx1SnZXTTRIa1pFbmtQNG5xYkZPK1JVcnNh?=
 =?utf-8?B?NTd6WW53Z3RaclFSVURxNGpYb2I5b0NNUDhYQ04yd3ZpWHdTVXpmdGZDNEtr?=
 =?utf-8?B?VkdUaEdnNi93WlByK2dUU1lzb2tWZ09DN1FiRG4zbEhwQ3JHUGpzbkdIN1ZV?=
 =?utf-8?B?elRWdnltRU90WlhVTGtrQXpFdnpwNXZTVXlQTlB6OTdyZ3hQMVlyYnRFdmtN?=
 =?utf-8?B?VUlKQWhxNEdZRGs0eG5oTFo3S2xkSWxHVVk5V2RxSTZVSklaSTErcXlMQjNr?=
 =?utf-8?B?THZRbHdua2pSOTJDZnlVNVlmTCtmMkhWR253YXlidGpzUVc3dVZHSnJqcFpW?=
 =?utf-8?B?amRkQzBDdXFkS1M0TTNsSnkyK1NDdlpGQ2xBL3NlK21uOHhkeXNVQXExTDN1?=
 =?utf-8?B?N3RSeFVERzZsZHg4aVhWaFBqdC9NRkIxakVmeDVpSTRNb0tlK1pJcHgzekdH?=
 =?utf-8?B?SHZ4dUwzOXZWeTJ1SUxmam80YlVHQmEzakZBcnN5aUNvNVJ5YUF3RGtMbGJ0?=
 =?utf-8?B?SW5QUDE1ajBSL2IzMUtTY0VXeXVob1BlSUxnQVAwdmNkSDZYb2I5WGFnVDZF?=
 =?utf-8?Q?CBdpB2p/rMwH8xn+9muKn6yf2bLTkpzOxGUwoMm?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 444ab116-b13d-480c-ae5b-08d8ddbbc082
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2021 20:42:53.0468
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +/0wtRho1FwXSJg+TKJ39atLF/Jp1jDvHbXjecqBlMpsAFtItUxpQwoCBbTGwNZEX5MBeh70BzvLXmHJEqFLRNo+Vasfci57P/4VDl7ZFZ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR01MB5561
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbg0KPiBCZWhhbGYgT2Yg
U3RldmUgU2Frb21hbiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTZW50OiAwMiBNYXJj
aCAyMDIxIDIxOjA2DQo+IFRvOiBTdGV2ZSBTYWtvbWFuIDxzdGV2ZUBzYWtvbWFuLmNvbT4NCj4g
Q2M6IHJ1c3R5aG93ZWxsQGdtYWlsLmNvbTsgWW9jdG8gKHlvY3RvQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcpDQo+IDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KPiBTdWJqZWN0OiBSZTog
W3lvY3RvXSBSZWR1Y2luZyB0aGUgcGVybCBmb290cHJpbnQgb24gbXkgaW1hZ2UNCj4gDQo+IE9u
IFR1ZSwgTWFyIDIsIDIwMjEgYXQgMTA6MDEgQU0gU3RldmUgU2Frb21hbiB2aWENCj4gbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZyA8c3RldmU9c2Frb21hbi5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4NCj4gd3JvdGU6DQo+ID4NCj4gPiBPbiBUdWUsIE1hciAyLCAyMDIxIGF0IDY6MjYgQU0gPHJ1
c3R5aG93ZWxsQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4gPg0KPiA+ID4gSSBoYXZlIGFuIGltYWdl
IHRoYXQgaXMgdXNpbmcgZGViaWFuIHBhY2thZ2UgbWFuYWdlbWVudA0KPiAoUEFDS0FHRV9DTEFT
U0VTID0gInBhY2thZ2VfZGViIikuICBCZWNhdXNlIGFwdCBhbmQgZHBrZyByZXF1aXJlIHBlcmws
DQo+IHBlcmwgaXMgYmVpbmcgaW5zdGFsbGVkIGluIHRoZSBpbWFnZS4gICBObyBwcm9ibGVtLiAg
RXhjZXB0IHRoYXQgdGhlIGVudGlyZSBwZXJsDQo+IHN0YWNrIGlzIDY2OSBwYWNrYWdlcy4NCj4g
Pg0KPiA+IEkganVzdCB0b29rIGEgbG9vayBhdCB0aGUgbWFuaWZlc3QgZm9yIG9uZSBvZiBteSBp
bWFnZXMgdGhhdCBpbmNsdWRlcw0KPiA+IFBBQ0tBR0VfQ0xBU1NFUyA9ICJwYWNrYWdlX2RlYiIu
ICBJIHNlZSB0aGUgcGVybCBwYWNrYWdlIHBsdXMgNDMNCj4gPiBwZXJsLW1vZHVsZSBwYWNrYWdl
cy4gIEFyZSB5b3Ugc3VyZSB0aGF0IHNvbWV0aGluZyBlbHNlIGluIHlvdXIgaW1hZ2VzDQo+ID4g
aXNuJ3QgcHVsbGluZyBpbiBhbGwgb2YgdGhvc2Ugb3RoZXIgcGVybC1tb2R1bGUgcGFja2FnZXM/
DQo+IA0KPiBJdCBqdXN0IG9jY3VycmVkIHRvIG1lIHRvIG1ha2Ugc3VyZSB5b3UgYXJlIGxvb2tp
bmcgaW4gdGhlIGltYWdlDQo+IG1hbmlmZXN0IHRvIHNlZSB3aGljaCBwYWNrYWdlcyBhcmUgYWN0
dWFsbHkgaW5zdGFsbGVkIGluIHlvdXIgaW1hZ2UuDQo+IFRoZSBwZXJsIHJlY2lwZSBkb2VzIGdl
bmVyYXRlIDY3NiBwYWNrYWdlcyAoaW4gZHVuZmVsbCkgc28gcGVyaGFwcyB5b3UNCj4gbWlnaHQg
YmUgbG9va2luZyBhdCB0aGUgZ2VuZXJhdGVkIHBhY2thZ2VzIHJhdGhlciB0aGFuIHRoZSBpbnN0
YWxsZWQNCj4gcGFja2FnZXM/Pw0KPiANCg0KSSBlbmNvdW50ZXJlZCBhIHNpbWlsYXIgcHJvYmxl
bSB3aXRoIHBhY2thZ2UgbWFuYWdlbWVudCBlbmFibGVkIGFuZCBycG0gYXMgcGFja2FnZSBmb3Jt
YXQsIHdoZXJlIEkgYWxzbyBqdXN0IGluc3RhbGwgcnBtIGZvciBwYWNrYWdlIG1hbmFnZW1lbnQg
YW5kIG5vdCBhbGwgZG5mIHN0YWNrLiBJIGdldCBxdWl0ZSBhIGxvdCBvZiBwZXJsIGFuZCBweXRo
b24gcGFja2FnZXMgaW50byB0aGUgaW1hZ2Ugd2hpY2ggYXJlIHB1bGxlZCBieSB0aGUgcnBtIHBh
Y2thZ2UsIGJ1dCB0aGV5IGFyZSBvbmx5IG5lZWRlZCBmb3IgdGhpbmdzIGxpa2UgcnBtLWJ1aWxk
LCBycG0tc2lnbiwgZXRjLiwgbm90IGZvciB0aGUgYmFyZSBycG0gY29tbWFuZCwgd2hpY2ggaXMg
dGhlIG9ubHkgb25lIEkgbmVlZCBpbiB0aGUgaW1hZ2UuDQoNClNvIEkgbG9jYWxseSBleHRlbmRl
ZCB0aGUgcnBtIHJlY2lwZSB0byBzcGxpdCB0aG9zZSB0b29scyBpbnRvIHJwbS1idWlsZCwgcnBt
LXNpZ24gYW5kIHJwbS1hcmNoaXZlIGFuZCBza2lwIHRob3NlIHBhY2thZ2VzIGluIHRoZSBpbWFn
ZS4gSSBzaG91bGQgcHJvYmFibHkgc2VuZCBwYXRjaGVzIGZvciB0aGF0IHRvIG9lLWNvcmUuIElz
IHRoYXQgc29tZXRoaW5nIHRoYXQgY291bGQgYmUgYWNjZXB0ZWQ/DQoNCi0tIA0KRGllZ28gU2Fu
dGEgQ3J1eiwgUGhEDQpUZWNobm9sb2d5IEFyY2hpdGVjdA0Kc3BpbmV0aXguY29tDQoNCg0K
