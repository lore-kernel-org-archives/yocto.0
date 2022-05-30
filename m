Return-Path: <joseantonio.cardenas@niko.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72037C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 12:42:50 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.81])
 by mx.groups.io with SMTP id smtpd.web08.36126.1653914563007256241
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 05:42:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=SgHwrKhl;
 spf=pass (domain: niko.eu, ip: 40.107.5.81,
 mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbW83q6WR8yALQJ+qY4UInNP28Wjv5jCR1Q9Ui/1Yy8WRnO1ClyP2fozGnIfNtz+ntdjvfUbiHT68+GDqbXs95lOlSS5MPrmkWI1oYtbv89OkolhRSP2MJrzFhK28mebfMnNsTSQcQix/e7enQ1Ovu1TCIW5IV3MNLBljDUYXMgKfRq3pK9pYWNYEXmCKSl09BkwxoCKWqMyhnmPxhW7NlPIs/q86zXafmxBbZ8kj6jRc7TdyZ9FkDRE4cpwdM5j+SRf0N0BBg7HKruSTd9K0iWH0BXLh3pEO+O2TZZ4ADfwW+MxclOeHlL+XVjQbRXXPIxE/EaTA1nt0eEGqa4O8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LW/9IL0ydWWbD0KKMK2rYE0oKqJ6IFgR07ss2W0Bb/Y=;
 b=kPinD6JLiDDXF0l6H76R97fXIPMGEDD01bqvRc+//ejQ4IrzInEFC4BCKVcOa0D+fGmHEBO259u6OEqTZyCFHtz54n6fiudHj+NmMcsHM/nHDZII0rjzdBsC6ZqGwpMXZtHVbsJttCErRIsFPQ91Gq3FZKPv8MkAvUt0FetIeAyByuV5b2VvZIrJxYcKcT16/qHSh2i2avrl+jUqgf1ijUXW7Df5lXF/ppSvg86PlXWPfOZ0dqMeA+SXlg1KjeNPHpj7l0a2j+2bDJzwLdxc32vTn1iqpGYRmbVez4f4S2ySuHUj8k/JZgqyiibt0OzwMmEBrtwPbqB1NdR+DAsLPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LW/9IL0ydWWbD0KKMK2rYE0oKqJ6IFgR07ss2W0Bb/Y=;
 b=SgHwrKhlat/QCH6AKUKLnyg6xfT/j/7E2fBJen4gtNsXI5sIVANdgfcFny37Wr2mhkLWYCI+m2wLyV5fXE+mZJLSw4mTvQtDkFqiuUad/3xpaAj2nuQd+L5zv4QpY24sCQHBm7AlF+MFfIWgy2Y1QK2akqpTl83iuYNBjGBxao4=
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com (2603:10a6:7:2d::18) by
 AM9PR08MB6835.eurprd08.prod.outlook.com (2603:10a6:20b:2ff::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Mon, 30 May
 2022 12:42:39 +0000
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec]) by HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec%4]) with mapi id 15.20.5293.019; Mon, 30 May 2022
 12:42:39 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] How to modify an existing file from an optional recipe?
Thread-Topic: [yocto] How to modify an existing file from an optional recipe?
Thread-Index: 
 Adh0FpcNFMhYq0RjS4y2H4LIFObtZAAAeBsAAABfxDAAAK2AgAAA+4IAAAB7tIAAAArnYA==
Date: Mon, 30 May 2022 12:42:39 +0000
Message-ID: 
 <HE1PR08MB28590CC1D9F4CAD1A11E39008BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
References: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj9Lr+1edD9Ha4wMYGuEYgZX6y9D=wn26YOH0J0SMH0H=g@mail.gmail.com>
 <HE1PR08MB28592FED495F7FF57186CBE98BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj_MnNcJ327WuFsX9zXAxv6bMptu8U8O9qRYUuM2-21PgA@mail.gmail.com>
 <HE1PR08MB28596B6A4B9DCBBEB237EFF58BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj85VSgYZY7ZVL0ybj_9h=qjO96L+c3t8QQP0ZuKoqU09Q@mail.gmail.com>
In-Reply-To: 
 <CANNYZj85VSgYZY7ZVL0ybj_9h=qjO96L+c3t8QQP0ZuKoqU09Q@mail.gmail.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=niko.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1725f1b1-edb5-4e40-24ac-08da4239e190
x-ms-traffictypediagnostic: AM9PR08MB6835:EE_
x-microsoft-antispam-prvs: 
 <AM9PR08MB6835A39B67FA4C85957AE98A8BDD9@AM9PR08MB6835.eurprd08.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 YD/q96F4M/kErkTbtL/HqcoC5mITkEcJdeZ6jJb4ayQruSgIfSyNo8Q9sNApQNnA8a9cjBbkTmtDnGzivlflehWoNZQYsG7DH2uZCoaOsDZdLHOT9Imdvv32TJvTr/p/c8Q5EMrEBEXfMUR8GzfHAWI4U3OfjWgV/6r7ujsTG1nOygGEFYIK+3eQtyucJS+lAZQJos58BoCSZMbaGJn5AMe2/yy4zQCAy43KzFhPZwlaGyZH60eTJ/ZhBgBWpz6TqYvCN4zx/J7ng/CyOOstEqwHZ+pvcvSezPt50ycnJjKMl29XWnK0MGmuhf9LZC1WlPsd7XVPSCAQyKpYYsV82uHZzDtqiRTnR/a+ro6FyEshY7MDhGBwX3k6LTnIPSYE/2lNuphAt7hdSR2YuiG3QP3+pUBaurYHIYjkOcYngFGqxHmunorMOMzke4JoXRgW2USZpMkcGigvvB5TMFxebrJYrh8YK2jNXPSNuc/np40vUH28uYJ4NsRlELWbgT7XeoX831kRC98XS/gaifo6BKvBcOipEJVKxpGuX4m1tocpAhHoTEz9Z4W1Uot9r67nYdYHyUecA05TlUH6Zj2D6dcz5K/oOORD2CRTUPj1YOXHI2gI7Gp2agQ0SfAt4KU0Uub9s//73fuWHKGgwrfFb+BFStBO+oSQVL4si0j8Ix/S7aqYIXQsJmf7dhgH9I6w+OSzWDk0+fIG5e7ssb2DF+gKBkqq/sif1uUFfm5VXPPLpUon6n3IxopyPMNrMUhEqOytcm+zOiTZg0/Ct/0S7ir8HE/NBTFlfmgwVUJL3q0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR08MB2859.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(9686003)(86362001)(6506007)(55016003)(122000001)(186003)(508600001)(38070700005)(966005)(7696005)(26005)(6916009)(38100700002)(8936002)(52536014)(316002)(66476007)(66446008)(4326008)(8676002)(66556008)(66946007)(2906002)(71200400001)(64756008)(33656002)(5660300002)(83380400001)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?RHNDR2J1aWtJZDZqc1R2V3dJRlBNYlV1M1FMUHlxQ1JYVVA0K1V4S05JNEd4?=
 =?utf-8?B?TmhDQmN5cWwxQ3l5cEpmMVhvV3pvZVM0SHowMDhxSy8vUUljRFZxS2FCQWRC?=
 =?utf-8?B?MURvcEhBeUdsRnlwd3dMSkF4akpybU5UMkhZYVFFOTN3MWZFY1p1M3BhL25r?=
 =?utf-8?B?eGlsK1pCN0cxN21jUGQ1algvcU1DaUpST1dZamYyRHlZZW1vV3lNb0doQnFq?=
 =?utf-8?B?Qk9zMk5HR3Bsb1ZCMytyNW5RSHBzVUNNV3BnRlllMWNjLzIrcUZNVjlCUDVH?=
 =?utf-8?B?bTVLQkZQMkMvNFoyZ0VWcWJFa00wdVkvNWVXTzRmWFEwYVp3bGJJT0tDZWw1?=
 =?utf-8?B?Yyt3OTlyRkZRRHBMRDdGTjBPeE1qV2h2bEl2NWJKMEVpekhySFFnb3pDRjJG?=
 =?utf-8?B?SWE0amtKS3o3VHRCRFNQS2U3R3ROTk16bWpoYVV6UllETy96LzkyTW5Cd3ZT?=
 =?utf-8?B?b3Z0SjlRd3dETEZzS2RsckhyckwyNDhoVzRsYVF3d3VHTy9QUnR5NHE3RXZa?=
 =?utf-8?B?K2lJNkVIMzZVV3RmQmh0MVZKYkg0dm93TlhmNVhHekNuUXZ0aERWTXhaa3Y5?=
 =?utf-8?B?NXJsQVJZUnkzOXdySzZkdmc3dzRpbzI0a3JkRGlKVnliM3k0aDZjTjVvS3ox?=
 =?utf-8?B?bDI5VStSTmNMR1ZhbkR6VU4xa3Z5NFcvcWtwR2FVajlSd21NQmNRa3owdzl4?=
 =?utf-8?B?by9oVmRLR1Z6UFBFdGJkamFwNVcrMGYyVThxNDB4WVQrNitQTlNaeTdoM1No?=
 =?utf-8?B?UTF0dGlGbHlUMmxxeWtQMEx1VU1MUW10ZDNlM3RCWHpqRlhNRmxTZUVLWTZR?=
 =?utf-8?B?SWhEVGxONnZwVHI0NGRQcXk2Y0lpVDNVY3RNUVVKM2ZIeXd3SHN1ZmN5dVkw?=
 =?utf-8?B?b3l6SmJrZEo3WFprVzdkTGJvbDhvbTZSdlNvL3dVS1NpUC9PZGFKa25lSDlu?=
 =?utf-8?B?d3EvMUpTTXg4SThwRm1xSGxGNTFhcDZCcCtUUnRvL0VkamgxRUlMaVhlempY?=
 =?utf-8?B?OFcxa3ErNUtBUjU1REdiS0NwcHdlSUU0S2IrUWgveE8vMTdPTWdmRndEV011?=
 =?utf-8?B?R2J5K3grdi9yUXdseW1lNTE0Rms0TjEvWGpiT2xmR0RObVlBS0xuUVVNZnRo?=
 =?utf-8?B?NEZma05hUFJ2dlNOTThVNWE0Z1VDOWRpRXZTY0pxcXVqejFrdFgxRThGczhK?=
 =?utf-8?B?THI4U1hrbitlS2Ezc3ZVTHdOVWIrTHJGbW93amFWQzJFZTR1Ymk2d0lzbHpu?=
 =?utf-8?B?cldwREdtVEVmVFdPUlZ2OVdoSjNISmhHRlg4UkVZNzd1QytSMmgrL1QwV0tP?=
 =?utf-8?B?eFZLS3c0dGgxL3FhRzZVMjN6cmlvMjBkazkrOU5jYWdVN2o4T045YjJFeTZP?=
 =?utf-8?B?WWFETC9rYWllbWhhWDU0V1pVU2JRWjVELzVoR0R5K1Z1TDQySGFhQkVvOU1R?=
 =?utf-8?B?QVVObGxyWlRhWkNmbTVqVzZRa3lEcUNqMCtPcUt6RHlFL3pSVFpyTVhjUjlp?=
 =?utf-8?B?Uy9vZm1WV2hBNkNQenhsOUNhVUhlZnlYekZaREdRUjlHZStsSUFPU1ZIdkoz?=
 =?utf-8?B?VXpPTE0zZnREVnhjcGRjSzIvM1JTbGVabTNPdHppNC9QMGprZHNmalVQRjN6?=
 =?utf-8?B?VjNaSGlIVjRyUU1PY0wrTHlkWHZEUlhBMDVJV1ZxcWhER0oySVlLeEU5T3dH?=
 =?utf-8?B?YjhsSlp6RzZDTzd4ZWlzSk8zc3Vsa0VwQWRqTENyTFF3MjBZa1NZUnMvdXNG?=
 =?utf-8?B?aVRWKzBEVDZtWk9Jc3c5bDc5bkdTb3hLeUk2ek51Q2trb1J0akhoZjhVZHFP?=
 =?utf-8?B?MGxnRHpWRFJlVDZnRU9wUWhrTy9ZTW4wRmZnYmxoc3d1cCs3U1MwclBXcmJQ?=
 =?utf-8?B?UUJtVDNJcW1YWjFsQmZNWVd6OS9pSnk0ckZ6SkNvT2ppd3pPR3lTZUIzMHl6?=
 =?utf-8?B?aVIyRGh6ZFNDZVE0SGZjWXlJZWg1bm9FZXhIUXhQeVl4b01SdjRMemF6NHpJ?=
 =?utf-8?B?N2JRQjNhOGZCV1E3b0Eya3Z0WGI5MW5XVGxLOHZNem41UXNhbEMycDJiak9B?=
 =?utf-8?B?WStZVVhHa1FmQ3pqR3l0clNESU1lOHluMHFYTFo5Z05jVGc4eHdHQm8wdlV1?=
 =?utf-8?B?am1pOG1LM0tCVmpNY1dHLy9kZlIzaHpTRVJGNmZYYUxDWnVqYVVHekR4NDNY?=
 =?utf-8?B?OS9YRUNpeDRjTTgxSzJYTGdVdUdBTHU5YnJSSndrWmtPemV1NUppNnhIa1Ra?=
 =?utf-8?B?dDlMZk9UZWw5dExyQzYvWmJkc045RHd5WGsxMmdHT3hLUkt5OHlIRVVqTUxH?=
 =?utf-8?B?OUpjRGhEbjcvOWVQZUpaSjdmUG90TEd4ZUdkeHlPZ05GRDErQ1NvSUhva1dM?=
 =?utf-8?Q?SzCvbcQPb7nvgfqE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR08MB2859.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1725f1b1-edb5-4e40-24ac-08da4239e190
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2022 12:42:39.0610
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 BYuDR8HXOg5UJhUaqvSEUk9c/+EeiNz7LPfE3adpdOHj6AWXW2OhHzo3Lk2//qrq5JWB9uAQoNyZATuzFso9ESl+NEftzunKB3ZQWqgSsIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6835
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 12:42:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57217

T2ssIGkgd2lsbCBpbnZlc3RpZ2F0ZSBpdC4gVGhhbmsgeW91IHZlcnkgbXVjaCENCg0KLS0tLS1N
ZW5zYWplIG9yaWdpbmFsLS0tLS0NCkRlOiBBbGV4YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmlu
QGdtYWlsLmNvbT4gDQpFbnZpYWRvIGVsOiBsdW5lcywgMzAgZGUgbWF5byBkZSAyMDIyIDE0OjQx
DQpQYXJhOiBDYXJkZW5hcyBKb3NlIEFudG9uaW8gKEpDQVJERU5BKSA8Sm9zZUFudG9uaW8uQ2Fy
ZGVuYXNAbmlrby5ldT4NCkNDOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpBc3VudG86
IFJlOiBbeW9jdG9dIEhvdyB0byBtb2RpZnkgYW4gZXhpc3RpbmcgZmlsZSBmcm9tIGFuIG9wdGlv
bmFsIHJlY2lwZT8NCg0KQ0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lk
ZSB0aGUgb3JnYW5pemF0aW9uLiBEbyBub3QgY2xpY2sgb24gbGlua3Mgb3Igb3BlbiBhdHRhY2ht
ZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50
IGlzIHNhZmUuDQoNClRoZW4geW91IHNob3VsZCBsb29rIGF0IHNvbWV0aGluZyBsaWtlIFJPT1RG
U19QT1NUUFJPQ0VTU19DT01NQU5ELCB3aGljaCBydW5zIGFuIGV4dGVuc2libGUgc2V0IG9mIGZ1
bmN0aW9ucyBhZnRlciB0aGUgcm9vdGZzIGZvciBhIHRhcmdldCBpbWFnZSBoYXMgYmVlbiBmb3Jt
ZWQgdGhyb3VnaCBwYWNrYWdlIGluc3RhbGwgaW4gZG9fcm9vdGZzLg0KDQpBbGV4DQoNCk9uIE1v
biwgMzAgTWF5IDIwMjIgYXQgMTQ6MzEsIENhcmRlbmFzIEpvc2UgQW50b25pbyAoSkNBUkRFTkEp
IDxKb3NlQW50b25pby5DYXJkZW5hc0BuaWtvLmV1PiB3cm90ZToNCj4NCj4gSSBjYW4ndC4gVGhl
IGZpbGUgdGhhdCBpJ20gdHJ5aW5nIHRvIG1vZGlmeSBpcyBhIGNvbmZpZ3VyYXRpb24gZmlsZSBv
ZiBhIHNlcnZpY2UgdGhhdCBpcyBidWlsdCB3aXRoIGl0cyByZWNpcGUgYW5kIGluIG15ICJvcHRp
b25hbCIgcmVjaXBlIHdoYXQgaSdtIHRyeWluZyB0byBkbyBpcyBjaGFuZ2UgYSBwYXJhbWV0ZXIg
b2YgdGhhdCBjb25maWd1cmF0aW9uIGZpbGUuDQo+DQo+IC0tLS0tTWVuc2FqZSBvcmlnaW5hbC0t
LS0tDQo+IERlOiBBbGV4YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT4gRW52
aWFkbyBlbDogbHVuZXMsIDMwIA0KPiBkZSBtYXlvIGRlIDIwMjIgMTM6NTkNCj4gUGFyYTogQ2Fy
ZGVuYXMgSm9zZSBBbnRvbmlvIChKQ0FSREVOQSkgPEpvc2VBbnRvbmlvLkNhcmRlbmFzQG5pa28u
ZXU+DQo+IENDOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IEFzdW50bzogUmU6IFt5
b2N0b10gSG93IHRvIG1vZGlmeSBhbiBleGlzdGluZyBmaWxlIGZyb20gYW4gb3B0aW9uYWwgcmVj
aXBlPw0KPg0KPiBDQVVUSU9OOiBUaGlzIGVtYWlsIG9yaWdpbmF0ZWQgZnJvbSBvdXRzaWRlIHRo
ZSBvcmdhbml6YXRpb24uIERvIG5vdCBjbGljayBvbiBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRz
IHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMg
c2FmZS4NCj4NCj4gSSdkIHNheSBpdCdzIGJldHRlciB0byBtb2RpZnkgdGhlIG9yaWdpbmFsIHJl
Y2lwZSwgY2FuIHlvdSBkbyB0aGF0Pw0KPg0KPiBBbGV4DQo+DQo+IE9uIE1vbiwgMzAgTWF5IDIw
MjIgYXQgMTM6MzksIENhcmRlbmFzIEpvc2UgQW50b25pbyAoSkNBUkRFTkEpIDxKb3NlQW50b25p
by5DYXJkZW5hc0BuaWtvLmV1PiB3cm90ZToNCj4gPg0KPiA+IFllcywgaW5kZWVkLiBJdCdzIGEg
aGFjayB0byBiZSBhYmxlIHRvIHJ1biBzb21lIHRlc3RzLiBEb2VzIHRoZSAiaW1hZ2UgcG9zdCBw
cm9jZXNzaW5nIHRhc2siIHRoYXQgeW91IGNvbW1lbnQgcmVsYXRlZCB3aXRoIFNES19QT1NUUFJP
Q0VTU19DT01NQU5EPw0KPiA+DQo+ID4gUmVnYXJkcy4NCj4gPg0KPiA+IC0tLS0tTWVuc2FqZSBv
cmlnaW5hbC0tLS0tDQo+ID4gRGU6IEFsZXhhbmRlciBLYW5hdmluIDxhbGV4LmthbmF2aW5AZ21h
aWwuY29tPiBFbnZpYWRvIGVsOiBsdW5lcywgMzAgDQo+ID4gZGUgbWF5byBkZSAyMDIyIDEzOjI5
DQo+ID4gUGFyYTogQ2FyZGVuYXMgSm9zZSBBbnRvbmlvIChKQ0FSREVOQSkgDQo+ID4gPEpvc2VB
bnRvbmlvLkNhcmRlbmFzQG5pa28uZXU+DQo+ID4gQ0M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcNCj4gPiBBc3VudG86IFJlOiBbeW9jdG9dIEhvdyB0byBtb2RpZnkgYW4gZXhpc3Rpbmcg
ZmlsZSBmcm9tIGFuIG9wdGlvbmFsIHJlY2lwZT8NCj4gPg0KPiA+IENBVVRJT046IFRoaXMgZW1h
aWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUgdGhlIG9yZ2FuaXphdGlvbi4gRG8gbm90IGNsaWNr
IG9uIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSByZWNvZ25pemUgdGhlIHNl
bmRlciBhbmQga25vdyB0aGUgY29udGVudCBpcyBzYWZlLg0KPiA+DQo+ID4gWW91IGNhbiBkbyB0
aGlzIHdpdGggYSBwb3N0aW5zdCBzY3JpcHRsZXQsIG9yIHdpdGggYW4gaW1hZ2UgcG9zdCBwcm9j
ZXNzaW5nIHRhc2ssIGJ1dCBnZW5lcmFsbHkgdGhpcyBsb29rcyBsaWtlIGEgaGFjayByZWdhcmRs
ZXNzIG9mIGhvdyB5b3UgZG8gaXQuIFdoYXQgaXMgdGhlIGZpbGUgZm9yLCBhbmQgd2h5IGRvZXMg
aXQgbmVlZCB0byBiZSByZXBsYWNlZD8NCj4gPg0KPiA+IEFsZXgNCj4gPg0KPiA+IE9uIE1vbiwg
MzAgTWF5IDIwMjIgYXQgMTM6MjMsIENhcmRlbmFzIEpvc2UgQW50b25pbyAoSkNBUkRFTkEpIDxq
b3NlYW50b25pby5jYXJkZW5hc0BuaWtvLmV1PiB3cm90ZToNCj4gPiA+DQo+ID4gPiBIaSBhbGws
DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiBJIGhhdmUgYSByZWNpcGUgdGhhdCBpcyBidWls
dCBvbmx5IHdpdGggdGhlIFNESyB0aGF0IG1vZGlmaWVzIHRoZSBjb250ZW50IG9mIGFuIGV4aXN0
aW5nIGZpbGUgaW4gdGhlIHJvb3RmcyBieSBkb2luZyDigJxpbnN0YWxsIC1tIDY0NCAke1dPUktE
SVJ9L215X2ZpbGUgJHtEfSR7c3lzY29uZmRpcn0vbXlfZmlsZeKAnSBidXQgdGhpcyBjb21tYW5k
IGlzIHJldHVybmluZyBuZXh0IGVycm9yOg0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4gRXJy
b3I6IFRyYW5zYWN0aW9uIGNoZWNrIGVycm9yOg0KPiA+ID4NCj4gPiA+ICAgZmlsZSAvZXRjL215
X2ZpbGUgYmV0d2VlbiBhdHRlbXB0ZWQgaW5zdGFsbHMgb2YgDQo+ID4gPiBteV9yZWNpcGUtMS4w
LXIwLjcuYXJtdjdhaGZfbmVvbiBhbmQgDQo+ID4gPiBpbml0aWFsX3NjcmlwdC0xLjAtcjE1NS4x
LmFybXY3YWhmX25lb24NCj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+IEkgaGF2ZSBzZWVuIHRo
YXQgdGhlIGJlc3QgcHJhY3RpY2UgdG8gbW9kaWZ5IGFuIGV4aXN0aW5nIGZpbGUgaXMgdG8gY3Jl
YXRlIGEgLmJiYXBwZW5kIGJ1dCB0aGlzIG1vZGlmaWNhdGlvbiB3b3VsZCBiZSBkb25lIGZvciBh
bGwgYnVpbGRzLCBub3Qgb25seSBmb3IgdGhlIFNESy4gU28gd2hhdCB3b3VsZCBiZSB0aGUgYmVz
dCB3YXkgdG8gZG8gdGhpcz8NCj4gPiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+IFJlZ2FyZHMuDQo+
ID4gPg0KPiA+ID4gSm9zZQ0KPiA+ID4NCj4gPiA+DQo+ID4gPiAtPS09LT0tPS09LT0tPS09LT0t
PS09LQ0KPiA+ID4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMg
Z3JvdXAuDQo+ID4gPiBWaWV3L1JlcGx5IE9ubGluZSAoIzU3MjExKToNCj4gPiA+IGh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNTcyMTENCj4gPiA+IE11dGUg
VGhpcyBUb3BpYzogDQo+ID4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvOTE0
Mjg1OTEvMTY4NjQ4OQ0KPiA+ID4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcNCj4gPiA+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvZy95b2N0by91bnN1Yg0KPiA+ID4gW2FsZXgua2FuYXZpbkBnbWFpbC5jb21dDQo+ID4g
PiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiA+ID4NCg==

