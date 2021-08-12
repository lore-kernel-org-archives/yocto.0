Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.66])
 by mx.groups.io with SMTP id smtpd.web11.18924.1628750272294254974
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 23:37:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=pVfIbiHW;
 spf=pass (domain: optimeas.de, ip: 40.107.6.66, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cl3jjtnG/38IkDcRl4zndsWyXW8syDRl2e+tD3ivKIwym+JlyK+fDRDVpVkGGGmCg5XYKXKjr3RNx89Fh9gihVPC/vuRBWZwRbJ22nlnppe2aDbDh9fIQtMwNw0+qV0ZLV5lJfnk9FrE5KcftlCR+b5wMgVxviAWTcalhlse7m3928yUIyBKaCksv1q/+4MuZgy98kUI0oRUGZPA47u7B3aQRogLctrAvLj3ZQ7OdYfLWQKYA9N7ZbrYvMtyGEKcgSiv/KLbzwP9fDo9UQn+qZn4BHv9eBrpFjulzNuEIfAAbuQCffQoKAKurzM3CpaKk0OfLRwTB/ASqqTevXYJUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OB6FwrjGYi3OTrZH0rseHtguOUD9Q0ddFMipjoDpQM=;
 b=FoyZZLcoGlfTZqrkFOynT050iDgqPHtYTIPZC8nynAmkeHzoXqzWzJ9Jpg7styIYDl1vKDpYjYmYWeOkSJ7cZD5PH8uB9rZUaEexIXxwR2MBjPF5btvcqalxagZpOg2qukaqHEWwBG75AHuXeSg/juL1aDeVAiHcap7obCN3tksfjs3Dk1lkQWbBH4wlptLRa4JnzPLZ7GzRZViZ4QH8UaCTJYn02asNtqMYHCITRtuYS7bZtNEmakenk+qjeKml5R/+HL42sddyb3emriH0YjcCEkQJdo7mmSaYgdeyF9OlXlCF8BDKlLG9RRaV9nZ4Isfi6IOMC7GyozcZYGsm3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OB6FwrjGYi3OTrZH0rseHtguOUD9Q0ddFMipjoDpQM=;
 b=pVfIbiHWrb9ENqNTdy4VrM7xMFtLU2wbBepGGLugb1Mh/j5TOzbcQg0HWlnoxf8DgTVp3W1raioCYXzomCl84bYWxynTeHKCXvS8FWO6oNafm/zJxtoYX5NU1iXfCQhC2n0OS5hsXSg1G+NYBblECdO7LJWMCdtyTtEXhugc+lw=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM8PR10MB4196.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1e8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Thu, 12 Aug
 2021 06:37:49 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f%7]) with mapi id 15.20.4415.015; Thu, 12 Aug 2021
 06:37:49 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: Jupiter <jupiter.hce@gmail.com>
CC: yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] RTC issue
Thread-Topic: [yocto] RTC issue
Thread-Index: AQHXiQw4RJgRj8fQf0CeQpKCRN2JuKtjGHYAgAxcnYCAAAERsA==
Date: Thu, 12 Aug 2021 06:37:49 +0000
Message-ID: 
 <AM0PR10MB3107FD5908C51FE065BABD5599F99@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CAA=hcWQGUvCofTbwCLA+M2ONFamdZvjWufb7Hy+Zkv5GX0uJfQ@mail.gmail.com>
 <AM0PR10MB310747ECF1307146791C4D3599F19@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAA=hcWSzLwpDvQ0LUOQQe=J+39y2zT0V-C22s2dABYjYbrx4rA@mail.gmail.com>
In-Reply-To: 
 <CAA=hcWSzLwpDvQ0LUOQQe=J+39y2zT0V-C22s2dABYjYbrx4rA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45e60766-45cb-4a47-fe0d-08d95d5bb45a
x-ms-traffictypediagnostic: AM8PR10MB4196:
x-microsoft-antispam-prvs: 
 <AM8PR10MB4196A64722152E01F967F6B499F99@AM8PR10MB4196.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1fR6GNLpfKganFCtauofGtc9+NZTbyh/mPU7lmknSmZZtY1fYk12b6D/OIW5OwCg4wpmTTL1RcG0se1vMRnZmGnyJJ+1J1Ws4DKkCKY7DFXrcfzgVP1olS+dcywEXziO9f6Jp15wgSEf/8O3vTx/J4eRisqhAxdEehqY6D67v7b1gcbFXAMgexrsZFbtT3BwOZYnvBdf61QIU0EQ7+IaIz44GuRvgc1q3zGzCWlV/abKAvdvX/I1o2Np61y4m5g7KYC2Y/0wqYYdI8TgXjboMXSbzA/K4GqGySRNzhsPEolXFOTZ7ov94thfx9Hok5k+AAJXyOii9hOryoED2AYeszw30Ig7aNdyaAaz7CMNX5UKGjGUDlsBVroi7n38zPE/Y6wGPigKPC4h7gdG4V7qdBWo9RZ1yXNz5aFhqO5NtFV+M+z3R005R/5mRx++L4NzQ5eT0iPWmsjyOqznYUCGBIPuIW3gEPeO6iV7kTYY+Z1s8+dwZj4g+Bx3CLPuVfGmRL9EV9CU2+R4d2kdkebwBb3kFch6J+s6DhQ3QrGDtYSZ5W9IGE56eP1qXQb81tQi9J8eGRjE11s2cw3Bv9Tha2PCFXs9XmR8yNQhhLAg3YJBJ1x95uC+lP34SLDbnI1vtNdrG2bCDNmvUMENujtOg5G02za3GnE8f9yPOkTb5RYR5ZVTrkLf7lDRIAp3bjVigXIHmZmBHoTmT8YR+APQqQtQ4/KCgu6vaj08V9lbubDerqgFN+ftaL/sMe8kPrzHONJUVkJzpa/qPaqv3TYGbslcrwVobL19Ku4WdwfV/OM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(396003)(376002)(346002)(366004)(136003)(39830400003)(4744005)(71200400001)(86362001)(83380400001)(186003)(66476007)(966005)(6916009)(2906002)(7696005)(76116006)(5660300002)(478600001)(8676002)(66946007)(38070700005)(52536014)(122000001)(66446008)(4326008)(33656002)(66556008)(44832011)(8936002)(55016002)(316002)(6506007)(64756008)(38100700002)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UDZxeC9UaEc0c1dycVlJRWljTGc1VWdmQit3MEM3NFM2Mld2WWZMbmNoWkFJ?=
 =?utf-8?B?MHQ1dG84YXVMemJPVGNpY1NOUmdBUFBNT3JNRkpKeHdzMFFET09LWVdHZzdi?=
 =?utf-8?B?cFNodCs4eG1XeDJhcEhoTVJiMnY2ZytqSFZtMWJ2bHQ3ZU1VVDYvR3kzYUgy?=
 =?utf-8?B?Tk9iK1ZKbHBNOE8wdFI1bHB4NjJXd3NlKy8zdXRKNlNpR1B1MmV6Y2V6K29R?=
 =?utf-8?B?VW42Z2lMaytGc2VQeGtEZ2FQTmYycm5JNjRXMVdxRlhiMDcvcU9UY2dQNXoy?=
 =?utf-8?B?aVFHM29tUVU5Nnhsbks1dnBjL0t1bVNQVTBSOGZpUGVmOHI1K0paUUxFcjhE?=
 =?utf-8?B?SkE5Z0hJQnYwZ0xXRWtOVUFyenZ0VUlpNXJaQmIyTG1JaHVES2NKMm5lODBN?=
 =?utf-8?B?Y0ZTbCtjV1M2ZGQ4Z09TM2NGT0U5Vkp2TDFqKzNTaXZUQnlDT0R1eW52TG9W?=
 =?utf-8?B?WWZVdFZlY2NFQUp4YVBtaWNVV0JkMU96dlAzWUMrbFk1LyttT0RsbUJ1RW9y?=
 =?utf-8?B?amRiYXlaSWhqYTV3c2NLNXNZdjk4ekpuMEVJdVhOSklUaC91akd1NllwVXgx?=
 =?utf-8?B?NXFldURxS0gxTDhjVTBMOVF2Rkl2NDFOQTNvbUI3TjdrR0s3UlNKYUxOMFlv?=
 =?utf-8?B?azgwQ29wWHVYM2czZWlJUEtTZi9iTkpWQWgzdXZucXFXK0xCajRCVnhxSWdt?=
 =?utf-8?B?Wm1JUUZFTXFmZzZ5SUxpMGpGWUxsNUt1WDZjWG1jL09vYlNSS2V1UmpERDMy?=
 =?utf-8?B?cm9WOG5iSnZENHgxek1jK1IxTER4anp4a3ZLQ3BYRnJoU3U2QzlRZVRrdnZ5?=
 =?utf-8?B?QjlkNjluTVVVaHNvNUx0V3lCbkNjNjhhdXpxMS9rOGk2S1R4d1E3K1NSaktF?=
 =?utf-8?B?cXJSRW9RWm5rZUN1dXJWejJUWlB3a1FUelVUbklKekJxdC9jcmorVjJJSTkv?=
 =?utf-8?B?MEFpWXA4VnJXeEdiOXNWWUZscDV5VU55ZVlDU01jTFJKWjJHbUV2aXlRSEVj?=
 =?utf-8?B?eFhaSWMzR3ZoeXlDYlUzSi9XdVV0OWlCVE9VdStyTGtZRGJqVi9STy9zbTlF?=
 =?utf-8?B?dCt1c3laQ1VHSzhXeTV2OXJwWVg3Z0tSeDdrYnFvK1BKZThCMEUxVk5qc1ZU?=
 =?utf-8?B?QTVaNTdxOUYzNnYySXBBb0VTTjlOZjRucVpIcmt3SVk3a3JQdVJkakxhaXZS?=
 =?utf-8?B?N2xoQ2hTNTR0TlcvK2grVTJHMy93MUpiRm9KUTJsOU54dmV2cURibjRUMnB1?=
 =?utf-8?B?a21Semw1SElxN24rZ0NLNElqQlR4eXc3eHdVdHludldneVczaXZ2My82dXhY?=
 =?utf-8?B?QjNBTkptd1NTcWtiWW5kK2pKWHU4bDRsUWpSNVdjaHdZaVUrV2dNUk15ZUdE?=
 =?utf-8?B?K3p4RVRFM0VKTndMQUNWNVZZS085N1hZQkV0aWdIRS9kL3NKTy9lSlBwMWxC?=
 =?utf-8?B?Y3JjQlVWY0lEY3JDQWVleU5HWEZZa1M2MUIySUZIWmVnSlo1MGNWdDY4aUN4?=
 =?utf-8?B?V0hiQmJYYklGQ2M1UWUyWnlNR2F5eVNPNXNMQjZiVTU4YVF4eEFHRFJyZUpV?=
 =?utf-8?B?WUFTSDZoNXA2TW4xWjJweHZIR2tqcXY2M1Rpdnhpb3F2R2E5emtYRGRBbnh6?=
 =?utf-8?B?MXlCTDJ0UmNKSndpai9xeUdoTjNPOS9hQ05qYmRHajZxWmFvTDRKQ2hiTkdt?=
 =?utf-8?B?Y083blRVVWZJSXVPYTRhM005QmZ4UU5XU3FYenppWjEyU1UyQU5KMmNMeWhN?=
 =?utf-8?B?THNEWTlUQkpFZHd3SS9yMTg2UUw1UEd5MXRRR1RmNVVsQTN4b0VoRUdNaDBa?=
 =?utf-8?B?OW8vbktGWWtwV2U0K0F0TWNZTmVSQXM0RzNtVHVwR3pGeXpzSWR1NUFJenB3?=
 =?utf-8?Q?IUj806vVZ+AdE?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 45e60766-45cb-4a47-fe0d-08d95d5bb45a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2021 06:37:49.8275
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s+XMx8ID1SpFdKiATzvtdD7Ig7puScG6TAElaT24emebRD+LXsQW0MhztCCxyhlfFQEyKqIwl3kiA4I/hMPp/RrQdbBz5zuw7gg6WO2meVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR10MB4196
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSnVwaXRlciwNCg0KPkhvdyBkaWQgeW91IGRpc2FibGUgc252c19ydGM/IE15IGRldmlj
ZSB0cmVlIHRvIGluY2x1ZGUgaW14NnVsbC5kdHNpIHdoaWNoIGRvbid0IGhhdmUgc252c19ydGMs
IG9ubHkgaGFzIHNudnMtcnRjLWxwLCBzbyBJIGFkZGVkIHN0YXR1cyA9ICJkaXNhYmxlZCI7IHRv
IHRoZSBzbnZzLXJ0Yy1scCBub2RlOg0KPg0KPnNudnMtcnRjLWxwIHsNCj4gICAgY29tcGF0aWJs
ZSA9ICJmc2wsc2VjLXY0LjAtbW9uLXJ0Yy1scCI7DQo+ICAgICByZWdtYXAgPSA8MHgxNj47DQo+
ICAgICBvZmZzZXQgPSA8MHgzND47DQo+ICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+fQ0KPg0K
PnRoYXQgbXVzdCBiZSB3cm9uZywgaXQgY3Jhc2hlZCBpbiBrZXJuZWwgYm9vdGluZy4NCg0KSSBv
bmx5IGFkZGVkIHN0YXR1cyA9ICJkaXNhYmxlZCI6IGh0dHBzOi8vZ2l0aHViLmNvbS9vcHRpbWVh
cy9saW51eC10eDYtNS4xMC9ibG9iL3R4Ni01LjEwL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC10
eDZzLTgwMzUtc21hcnRtaW5pLXYycDMuZHRzI0w3Nw0KDQpCZXN0IHJlZ2FyZHMsDQpNYXR0aGlh
cw0KDQo=
