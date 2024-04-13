Return-Path: <linusnilsson@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E36C4345F
	for <webhook@archiver.kernel.org>; Sat, 13 Apr 2024 10:16:47 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.92.74.83])
 by mx.groups.io with SMTP id smtpd.web10.8097.1713003403558642505
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Apr 2024 03:16:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=rkO3AfPv;
 spf=pass (domain: hotmail.com, ip: 40.92.74.83, mailfrom: linusnilsson@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=edXudNgt1CvuOxB0e4U97GcXd00cDsrDA3ZbJavATRgECQt8S7tuY/44idztIqiD7C+MKBJ3SV/GxFuehAXkCab2BdN9xLXtxf8BA7kJiSlK7/uzt8Kwsowa85w4MT+gA+0ahdAvgjo+WAenJul/f973VPJVW/+W8WyI7xRcvpTdruAgwZ0yMfIe8IdWDGkbNfRb1LSOrRaBAvALJzgCtiR/QrZ/035TsPSCOe0qG8TSmFlZsr88UX2XvhIXwzFa0OweXCDO1HuDit57fudGZRwzm1WmWDsdECE6DE3KnOEq2CGs1YzFhXDLuwNLENM6TirL7Q0R97VUhN0HAAweqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/YbOWXJdnf12W8ljjA1Vl1KNsR4StWNGj0/EsxbcUE=;
 b=g+72p7wRCazKzVGIXreEsyD+ipZUCIJ2cQUFDj2YHSLuSIAub1+KTP5TM94GpBRmSJLduyThNK5eNXH5S6EV1iWhNjEb+JVICGAR6vrYs1jHmFPclXui81p/VtuHRcUCB1nB3AL4PGuXNf9xU8U2la0Pwe3Bp03cev/VUQVyhC467SuBhEcLli5vSnbUhY55RZesSxVJAjwgSi5oTqVfAI85LCQBwj/d+zfqxEUq98t9ESvb5rA4o0rCjB7i+t/+T6KNJaiWptQMREgrwtoaLbep+lgZ/c/7YtZtyIhsd+FO5iDvoKzj9TWRaXMPcgYq/Vu3KF58v8clfD8XWOEpfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m/YbOWXJdnf12W8ljjA1Vl1KNsR4StWNGj0/EsxbcUE=;
 b=rkO3AfPvRC6iyMZ4wwlYotLwGbNdbo1Zj8qJlfZQwWCnWuJgd7RBdagawCXouZdsUix1Xx/yr3iQwoy/Mq82V3WL0JEv2IfTSIirzuQTRgZGNTGtCBexxtb1RgMxRyJTJV7q0oWnD6wAum15IDOUPeUikJKbcyP6uZXUPeC0JnXGAdR8bPMGHeUjjcJMuUY2WwLoz7rnm5MBNkg1cr2s9wmrTXEbaNu04JFjuyYIHiZcAKeUBLV+7ZaXEqJFHJPFZKBKH2zXI2wGZ3VDiIM8rLNQH96uUrQDyopfuFvxkOqPcI5k+qwwnxjs/rD76wS5Xbo2FNwpMTkBQF3Ec0SC/A==
Received: from GV1P195MB1785.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:59::14)
 by AM8P195MB1076.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:1e3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Sat, 13 Apr
 2024 10:16:40 +0000
Received: from GV1P195MB1785.EURP195.PROD.OUTLOOK.COM
 ([fe80::c8b8:87dc:e89d:49ca]) by GV1P195MB1785.EURP195.PROD.OUTLOOK.COM
 ([fe80::c8b8:87dc:e89d:49ca%6]) with mapi id 15.20.7409.055; Sat, 13 Apr 2024
 10:16:40 +0000
From: Linus Nilsson <linusnilsson@hotmail.com>
To: Markus Volk <f_l_k@t-online.de>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Sv: [yocto] Correct way for multiple recipes to install files in the
 same directory
Thread-Topic: [yocto] Correct way for multiple recipes to install files in the
 same directory
Thread-Index: 
 AQHai+VC/tS/n34Ttky2RPnaV7r6GLFiwVOAgABBDoCAAHNFgIAAsgqAgACploCAAG4BAIAAv5aF
Date: Sat, 13 Apr 2024 10:16:40 +0000
Message-ID: 
 <GV1P195MB178586BEDD4B820A7BD7D559C80B2@GV1P195MB1785.EURP195.PROD.OUTLOOK.COM>
References: <31389.1712902067429675400@lists.yoctoproject.org>
	<31389.1712938485279864761@lists.yoctoproject.org>
 <S0QUBS.O4LXIGQ2JHXB1@t-online.de>
In-Reply-To: <S0QUBS.O4LXIGQ2JHXB1@t-online.de>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [MelTVC9SBcqKtUejMos/ev6BfG0+CJLz]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P195MB1785:EE_|AM8P195MB1076:EE_
x-ms-office365-filtering-correlation-id: 86854a64-f190-4cfe-daa1-08dc5ba2cfaf
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 H01Qwb4lNZfCxbHCDw+41DL9SOYB5PV84Vyfl+mV3ySN0SKC5CUuLHtGCWgzuSnqsrsCaylQ0OPmEpfWdagmKppJfqxyEKMyedmhNQ5u7viQmqJJL05pisKZ02bXkoiqEazNge6pVI2Kvs8YFLrK7GAArhDF1t+EWYCKO6Bt+IxO/sa6tTc560i+0rsWcghoauQ1tFDls75XjMQRIe5T92KAWoBsh+hZfFCJYvEtn3iLulxkPk8bOAsah5zISRA9r7EVOn/bUa/J/utXTDEDOYm2hRSIA4Nloj3fF1/Gxhoj6X0AVD5ga4Os1iqqGrdKqReZ7KXoKP5N4r95X3nOikQVtry0B10liYIAmQffQXbFzap0zySI+f1Kk2/UIaY6T8iSk5KPmdlfjQpnyndH7TKSIXyEQ47pwK9gYhcq0Rqr9fY7T4GGfTzHqiy4x4c5EvPLax6FeG5b+R2d+gbAFf5bIlGHxi1VrFV+05Mat+QHHUbWVWX6rCT40bctgj/84oX/JY7mHvJTL/7gqVEqQ1RU49QF1t/nxDFkq32HItjbGWJTTjLKyn1DXEcBU4vz
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VDFGdXlXME1ONTlXZ21qK3hlYnZKbXdjd1N3bW9xZTBzMCtZUWZscEY4VFVT?=
 =?utf-8?B?bzN3M0IxZzNBZFBjRzN2dElDcXl3OVBtY1ROdi9qTUNBbkN4R1d4a1BpWWxi?=
 =?utf-8?B?bWY2NUJnZVVwZzV2RzhSWCtDV2Y0bis2eWVPWHhIZXd0aDlZVlB4SWNaek9p?=
 =?utf-8?B?ZTB2ZWRKaDJ5M3B3ZHBYdmlTL04vTStGaDlwTkw1ejlWdkNmaU1DZFpXZmRZ?=
 =?utf-8?B?a2U1cFlFU2l0eSthcVY0amNqcFVOTVhWSlZBRnJRdm8wdXRsa0lqMDFHYmVH?=
 =?utf-8?B?WS9WaDhDRHdyS0pwSWM2Z2hrSjgrYlB1eGNNSlduWXRUYkRkQUo2TU1zK0Mr?=
 =?utf-8?B?anlNS3BYblFaKzJocGtNQlVQTjgyS3M5U25sZkVhK1BmZlc0UElLN3RHVU5N?=
 =?utf-8?B?YlJDNUtpTS9oQ3IrdXVJajdoSmtsNWJpYXBFVnMydjEyYUpIK29Qc2tEeXR3?=
 =?utf-8?B?THVYQ01IdXVENzg5VjFjZUdzanZxTHhNR01jZVB2U2xrR3plSDNFc2Nmd2ty?=
 =?utf-8?B?ajVQOVRIeko4UjduNmtzNUVxVEFBRnpGSTBRcDY2eVZCUHErRzNubDBTS3ZC?=
 =?utf-8?B?ZEZEcWg3cnZRODFjdzRrOFBkWUFOWmtMaU82d0U1SXF3Q280bjM2YU5zSFc1?=
 =?utf-8?B?YWFoZlVRYzJWdkpVVVdqWDdja0RZeHlZWnRDdnQ0YnlkbXNWS0c1WlhPYm8z?=
 =?utf-8?B?V0RDUFhaMm5VUUo1aFplQzFudElPeXJuNzh5VXI0R3o4bjAwYVZreklNSHJG?=
 =?utf-8?B?T2RuYjlVSURBMWJLY0NUVzY3WGtFN1A1SHRzbC8rdTVOQ1JIR0diS3k5SmVX?=
 =?utf-8?B?ZTc3UEJadzZqaTNHRHprODBuMXU2eExZcGlBaGZKeGJ4LzJTTVZFZEFyMFp5?=
 =?utf-8?B?QUx0VzhLWDVNV1V2azZicUQyT3NXT0NTTDdJbVk4Uzc5NmlSSjhLNWh3dXZh?=
 =?utf-8?B?V0k1MnlmR0NoZytySUZETUpwY1pYQzdMbk1xNXN6TXUybUt2bzlrbWZZWkdD?=
 =?utf-8?B?UnUxQjRiNmRxUFZ2MTBKa01OMHhqYi80ZjgwU3RnOTNoRElqQWV3azdlcDdZ?=
 =?utf-8?B?Rit1MVF3QkJqTmxBQkJRV3N4TjF4REdYMkhzSXljSnVjYUloUi8rNDgvMXdS?=
 =?utf-8?B?Rm02TklIK0hXc0tkYTN6L2gvRk1GdU1KbEtwUDFxZWZ6YmhDdWR6N3Ayd29v?=
 =?utf-8?B?c1hnTGUzdmlvaWd6Y2VLTDRlcWNjVUx5VnF4SEtxQ0lzMTF4WE01K0xkazV1?=
 =?utf-8?B?RmtjR0xZMU9SdGFkcjI4bU15OVd3ZmZ2a09JNnJWUzArd0JHSDczeEhGY3BR?=
 =?utf-8?B?RklKMUtuVlRXcG51ajJDRzhJUDhQeGdwalh6QjA5ZUpoYlc3d0V2Q2xvd0pK?=
 =?utf-8?B?MVA0T1g2VEx5S2kzT3NrM1ZoUUxKNzJ5M2V3Tm9sQ01WdU1XczR5N3FYOTNl?=
 =?utf-8?B?OWJvMFB5NXpPR0MzZUN0UGhIVmhSOFZFbnY0Qnh2T2Q4L202aWU4N3FERXlE?=
 =?utf-8?B?ZzZLdUNFbHBsMHNSRkxkMG9pSDBTaVVCL3daU0liMEdFVHg3ZXlKOTdxOGdp?=
 =?utf-8?B?Y1Rwc0U0dXMvdm1uRy9iMlpFMFZYZlZxeE91SWRkT1ZFWmVTQ2x2T3ppanNK?=
 =?utf-8?Q?ZOBU49OmiLTcCDLTc4xeq/hs2LWdPmszM8cgu6CWMXg0=3D?=
Content-Type: multipart/alternative;
	boundary="_000_GV1P195MB178586BEDD4B820A7BD7D559C80B2GV1P195MB1785EURP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-49ed2.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P195MB1785.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 86854a64-f190-4cfe-daa1-08dc5ba2cfaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2024 10:16:40.6572
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P195MB1076
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Apr 2024 10:16:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62927

--_000_GV1P195MB178586BEDD4B820A7BD7D559C80B2GV1P195MB1785EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXMgSSBoYXZlIG5vIHByaW9yIGV4cGVyaWVuY2Ugd2l0aCBjbGFzc2VzIEknbGwgaGF2ZSB0byBy
ZWFkIHRocm91Z2ggdGhlIG1hbnVhbCB0byBsZWFybiBhbmQgSSdsbCBoYXZlIHRoYXQgaW4gbWlu
ZCwgY2hlZXJzLiDwn5mCDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnLDpW46
IE1hcmt1cyBWb2xrIDxmX2xfa0B0LW9ubGluZS5kZT4NClNraWNrYXQ6IGRlbiAxMyBhcHJpbCAy
MDI0IDAwOjQ4DQpUaWxsOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0
cy55b2N0b3Byb2plY3Qub3JnPjsgbGludXNuaWxzc29uQGhvdG1haWwuY29tIDxsaW51c25pbHNz
b25AaG90bWFpbC5jb20+DQrDhG1uZTogUmU6IFt5b2N0b10gQ29ycmVjdCB3YXkgZm9yIG11bHRp
cGxlIHJlY2lwZXMgdG8gaW5zdGFsbCBmaWxlcyBpbiB0aGUgc2FtZSBkaXJlY3RvcnkNCg0KT24g
RnJpLCBBcHIgMTIgMjAyNCBhdCAwOToxNDo0NSBBTSAtMDc6MDA6MDAsIExpbnVzIE5pbHNzb24g
PGxpbnVzbmlsc3NvbkBob3RtYWlsLmNvbT4gd3JvdGU6DQpJIGhhdmVuJ3Qgd29ya2VkIHdpdGgg
dGhlIGNsYXNzZXMgeWV0IGJ1dCBJIGNhbiBzZWUgaG93IHRoZXkgY2FuIGJlIHVzZWQgdG8gbWFr
ZSB0aGluZ3MgYSBsb3QgZWFzaWVyIGluIG15IGNhc2UuDQoNCkJ1dCBkb24ndCB1c2UgY2xhc3Nl
biB0b28gaW52YXNpdmVseS4gVGhleSBjYW4gYmUgcHJvYmxlbWF0aWMsIGUuZy4gYW4gOmFwcGVu
ZCBtYXkgYmUgaWdub3JlZCBkZXBlbmRpbmcgb24gdGhlIEJCRklMRV9QUklPUklUWSBvZiBhIGxh
eWVyDQo=

--_000_GV1P195MB178586BEDD4B820A7BD7D559C80B2GV1P195MB1785EURP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9u
dC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpBcyBJIGhhdmUgbm8gcHJpb3Ig
ZXhwZXJpZW5jZSB3aXRoIGNsYXNzZXMgSSdsbCBoYXZlIHRvIHJlYWQgdGhyb3VnaCB0aGUgbWFu
dWFsIHRvIGxlYXJuIGFuZCBJJ2xsIGhhdmUgdGhhdCBpbiBtaW5kLCBjaGVlcnMuIPCfmYI8L2Rp
dj4NCjxkaXYgaWQ9ImFwcGVuZG9uc2VuZCI+PC9kaXY+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5s
aW5lLWJsb2NrO3dpZHRoOjk4JSIgdGFiaW5kZXg9Ii0xIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RN
c2ciIGRpcj0ibHRyIj48Zm9udCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBzdHlsZT0iZm9u
dC1zaXplOjExcHQiIGNvbG9yPSIjMDAwMDAwIj48Yj5GcsOlbjo8L2I+IE1hcmt1cyBWb2xrICZs
dDtmX2xfa0B0LW9ubGluZS5kZSZndDs8YnI+DQo8Yj5Ta2lja2F0OjwvYj4gZGVuIDEzIGFwcmls
IDIwMjQgMDA6NDg8YnI+DQo8Yj5UaWxsOjwvYj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyAmbHQ7eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyZndDs7IGxpbnVzbmlsc3NvbkBob3Rt
YWlsLmNvbSAmbHQ7bGludXNuaWxzc29uQGhvdG1haWwuY29tJmd0Ozxicj4NCjxiPsOEbW5lOjwv
Yj4gUmU6IFt5b2N0b10gQ29ycmVjdCB3YXkgZm9yIG11bHRpcGxlIHJlY2lwZXMgdG8gaW5zdGFs
bCBmaWxlcyBpbiB0aGUgc2FtZSBkaXJlY3Rvcnk8L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0K
PC9kaXY+DQo8ZGl2Pg0KPGRpdiBpZD0ieF9nZWFyeS1ib2R5IiBkaXI9ImF1dG8iPk9uIEZyaSwg
QXByIDEyIDIwMjQgYXQgMDk6MTQ6NDUgQU0gLTA3OjAwOjAwLCBMaW51cyBOaWxzc29uICZsdDts
aW51c25pbHNzb25AaG90bWFpbC5jb20mZ3Q7IHdyb3RlOjxicj4NCjxibG9ja3F1b3RlIHR5cGU9
ImNpdGUiPkkgaGF2ZW4ndCB3b3JrZWQgd2l0aCB0aGUgY2xhc3NlcyB5ZXQgYnV0IEkgY2FuIHNl
ZSBob3cgdGhleSBjYW4gYmUgdXNlZCB0byBtYWtlIHRoaW5ncyBhIGxvdCBlYXNpZXIgaW4gbXkg
Y2FzZS48L2Jsb2NrcXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5CdXQgZG9uJ3QgdXNl
IGNsYXNzZW4gdG9vIGludmFzaXZlbHkuIFRoZXkgY2FuIGJlIHByb2JsZW1hdGljLCBlLmcuIGFu
IDphcHBlbmQgbWF5IGJlIGlnbm9yZWQgZGVwZW5kaW5nIG9uIHRoZSBCQkZJTEVfUFJJT1JJVFkg
b2YgYSBsYXllcjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_GV1P195MB178586BEDD4B820A7BD7D559C80B2GV1P195MB1785EURP_--

