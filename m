Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04AB3C41535
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com
 (APC01-TYZ-obe.outbound.protection.outlook.com [40.107.117.81])
 by mx.groups.io with SMTP id smtpd.web08.18299.1649604593642486824
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 08:30:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=TxWCLt+k;
 spf=pass (domain: advantech.cz, ip: 40.107.117.81,
 mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PqkTx3lcHSvMc0/fdtln2Eu5QvWBPe7aEJDqGGreoIdLxUSY02Zxr0RRzOUWtQFSbsmA+YgCeQX/h1Y8btKpHUU4YDvLiadLltB1pE2TyOk2vsatymxUWuh9bF5Heq3YlBwun3NPyYuqOHB0rPGzKrdqia7CsUKy/6mNCAIz5XMbxrGqXM7gWDiP+PX3vGKZtYHzGwbL1D//c7yCnYyJXIzpfBxWRjUda0LVdXmitWDZTgzpiX1NtlijRtoo+J2fybP8Qj27HRm96T7n8z0Y++WUa7VohrtMDqsyeT4bsitfxuOf+Qq8aY/z2I3qKvBsVbxfDFWWPqEo5q3OEaNDQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c39Xwh0Li/dbNtzbfGJbb1APRJ+WiGxEvsXdoaTqHEA=;
 b=mEAGpJxF+XFL0Cgh31hzftySqtF7FOHIde35NeXkExBRQCI6yAoSKqZifervC3iBOt6cxj85/oWyzQvjK5ZWLPAXR9bz6YycABAWBJc+1NLsCqjoVg5f698Nbl/j2Q1WnFlPv+rNM7VML29HQTMjwCtUwkWmWcyDLpbRGp8ZLVWJjtYCOnicopi5zHJ23wDPLj5QXVCVO/uuMd+c7a4AwlkKqtiW1OLZLNVh2p8WsjJot2J/5db9eXCbAik5oEqLhYoHNJP3ET0oTl7BlwM/v1RJzlJx/rFgTvy1TT2Zr+khqZIBYPeNy6+LhQ2EJBrWbmtaanrjUKd4iIA2itz4pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c39Xwh0Li/dbNtzbfGJbb1APRJ+WiGxEvsXdoaTqHEA=;
 b=TxWCLt+k6pXbTr6Kp3X13N+SBa+A+evs83cEU5XxbGOqBu6wNPdbuPCagSI89ky9L1+kc5tfnrsewmKRco8fZM+S2WnigMumZDZE2pTq7G2agrEL9Qzjv4qC4nLEetv9EeviniXjykygrGAv2tPqgHZT0XPpNeqlZ+z3sMV3gdeHFjVkOwqTcv78fNUY/hLd3opT4C2/rmA/O9kbAuYRfr3X+cwms9WxC1KMbFGAYZPfF1aJv0R/Cm/0HDIj9b3DUKuNx7mfTOHaGDGFRgq3UI9Vg9c+b8Qwn90OtAqsXSNxA6M4SRhKU1n4qGiGGgI/zFC3kOZN7AYFwzFhmuEzaw==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by SEYPR02MB5965.apcprd02.prod.outlook.com (2603:1096:101:84::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Sun, 10 Apr
 2022 15:29:47 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff%6]) with mapi id 15.20.5144.029; Sun, 10 Apr 2022
 15:29:47 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 0/6] upgrade and cleanup tpm2-software
Thread-Topic: [meta-security][PATCH 0/6] upgrade and cleanup tpm2-software
Thread-Index: AdhM7BSfGOJGTGWGR/+HkBjBdftFXw==
Date: Sun, 10 Apr 2022 15:29:47 +0000
Message-ID: 
 <TY2PR02MB367888A21F975AC1E450CEAE81EB9@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0439b2bb-9441-4fb1-99a3-08da1b06f258
x-ms-traffictypediagnostic: SEYPR02MB5965:EE_
x-microsoft-antispam-prvs: 
 <SEYPR02MB5965047200346F0FCB4ACF3081EB9@SEYPR02MB5965.apcprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SkMWf3wPr4CI8aB0/dPRuDvJOL3b03z5mO+94/crBfVkg4YC3qkr3Zt2Xd3bi9yZ7RpPa6tQkNgFKwr6FyQvF9mmotWbyA7uu5FoXFHYmvBXRDv/SH+0yuuZjaiw/lhL6SpzAxV4/dFhPfsKAGo6qaUWLPzqgkBDVFTLHiQvyHSLnALK1NZXymdL6ZikIrkmJykcYHkXfOMRp7K79bMTveirxJE6BYezalL9xa2LXAyhcaHDni3IplQbU/L/ijX/yFyYw/5XjtIyi7yXjgf54rWW7ZRXXiaMl8EuD5sAhMr1vTZOf1T7sTEOf1qWqWaFk2c8mYC6R8fUDP1TH9sGJF4gEvTTXU2ZhycmKH0rVpypvy9ZJecfuTITLCz3F3Wc0NpwK6PeQ7QEfgg2FYsW2JDe0S5m20MmKeUFb6bi1dTP/2wk2dl1W35XCzc/7y10LBQtmNOTOL2V4ys0IZzzOCWH3CO6XFaYudBEkl4EgPy2zY562p0aK39fdXyAhtiD1pDAlgF4eIGSvqX+MePmNtv5qe5jJ0cBNbOiBk0LPNZIrPYN5GgCQ/tORCCQ7AxPQHJKtkEIPAGdBqNqShpjVaL01HbPMLHu0/+XdiajlUwFOqxCn+P0wwEa6fl731W4yFMB7eCH5i83Ih9+0zL9kE1pGFuNpcVVJXLtA5UU2hNxzleq7Mf5VaeLVOYedUQmPOFwKbYdVzagvVE+Jy6QuA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(83380400001)(86362001)(26005)(52536014)(8936002)(9686003)(7696005)(6506007)(508600001)(2906002)(55016003)(5660300002)(8676002)(38070700005)(71200400001)(15650500001)(33656002)(66946007)(66446008)(76116006)(122000001)(38100700002)(44832011)(316002)(66476007)(66556008)(64756008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UHBKVXNabmlYQVFMWWFVelRsK016L2Z5SEZRcjdVOHJXUS95MzQ2ZjR6eVRV?=
 =?utf-8?B?ZC9KSkdwdXJpVVN1UFpaN21oT3NaMDR5VlRqNjRpYzVQeGkvaU1XQVh0RzJ1?=
 =?utf-8?B?L3QzelpZcEowVHJNdlpwVnlBYUQrOGJnbm9WOUtWR0ZDTkJoQk90RElDVjRL?=
 =?utf-8?B?UXE1UzRtM1NKU2EwdkozVzlSRGJzMVZkaEUwa2dkVDhvV1c3M1ZGWTNtamF4?=
 =?utf-8?B?QlBQOTNFZTRsd1dqZFZkbFFSeGw2RVpNcXhGMVE0VWhHMWd6ZFBJd0JRVlBR?=
 =?utf-8?B?UHhIYW96U2hrMmxpM2lNVENtZW5FaGtHUjdaNnB2c2FIdGF5RGZwOS92SER1?=
 =?utf-8?B?RjBsazJPN083d0FJcHVCYVI0TXZISkNJZDNXanpJWlR3N0FCUmc4OFYrY0lj?=
 =?utf-8?B?TCtrR2lSUjdiZEpndUtrTnAya1pPWEVUYUE0bEJZalBGcUtqd1l2ZncvcXhk?=
 =?utf-8?B?S1JIU1RERFcrRFhlM1ZoVzZNeTdtUkdyaWtSejA2eUdybFp5WWY1UkdReEk1?=
 =?utf-8?B?d21EQkZSNzFWcXZIOWV2UjFDQmZEVWlDWjQ2VVN5eWQ3TlZaNUZOUFJXSVlZ?=
 =?utf-8?B?TWkzbEEzR2ZyQUtrMExVUnlTYisyb2U4QTNiYmZxQnMzWEIzdTRaV1UwVThH?=
 =?utf-8?B?WVU0UHM5cmJlK3lUdmJMRFhVUjJJcUxxeXp2WTlWZUFvWG5JRVlpaXZFMUph?=
 =?utf-8?B?MkhkTlF1VWJuV29CSFBTSUdxaXpHaXlhSkhLak03T3VuL3hLcnhnNUFDcDlR?=
 =?utf-8?B?OG90ZTNsRm1GYWl1L0ZyalZrNUY5NU5Qb2daVGZQUnFIS2czTEpiSlhmZDJO?=
 =?utf-8?B?aXNWZHNiTkZTcmFZeUZRLzg1dFFxSk42cFZHUEt1amFsOW1ZTTdKWUZTT1Iw?=
 =?utf-8?B?NzQrVVdlT0hpeTZ0RDgrdkhHZDFBMnl0U3EyN1JhVkk5Wkt3VjAreFVnaWQ1?=
 =?utf-8?B?MnYwVEdKUmF2d1BwaW4wRGFiL0JqQVJKcFhKYmc4Q1RFMzhCY3JIeUtKM2ZB?=
 =?utf-8?B?Q3VxZFNIbHZPNkZEcHU3c0VycVFja1EybkZ1eUM3ZW9wMlAwWmtyYzd4UUpv?=
 =?utf-8?B?bTVsNldWYTYzSHRQSFJXY2hwcUQ2eDVsbVd4eG81ZmU5R3cwS3d3YWpPSXlF?=
 =?utf-8?B?WGFUVkdJK29uQWhidlpXcHhCQWQwOGZwK0Evcm5ISTFjNEFFKzd6VU1FQVVo?=
 =?utf-8?B?bVcyV1ZCQmRucW5RS3RpTUNGTHd6b0NiRmordWZqOTdKMXFzbThBZ21pNVNU?=
 =?utf-8?B?OGYvSHdFYndLRDB5R0k1VkNSK01Fb0ZEWVdxcUdwNnFReGk5bHh5L2k1ak1W?=
 =?utf-8?B?RW1UMWpMVi83Q1Z3c21QbWZPeTdqUFdZQ05Qc041YXdJNVk5bmRNaE1Tbm9v?=
 =?utf-8?B?R2NRU0N5cys5TTMzREhrR01sbjFuOFZNRm9PWUd3d2JsM2NhajN2blh3Zlk1?=
 =?utf-8?B?MUt0a1BvRW00TFZyU2o4M3RDazM1MFkyUE05eUNyMnNDZnhLY1JHSzc4SU41?=
 =?utf-8?B?RXBWaXlBUkQxUXFZbDVMYWs2WXRVK1YvVkhVVTJHazg2WTB4SXBZd1RqVm4v?=
 =?utf-8?B?Z0Z4Tlc4YmVZRDAxdzN6MTZaYjlWVHhMb2x4RWd6bFZQWWsyWUZWOXNaRFVx?=
 =?utf-8?B?bmducUlPSEN0R1A2SkF2TURVNVhIdzhVMFVtT3p1RWxvOEpERk0zem1Ndmty?=
 =?utf-8?B?VnpxWFYzY29TS0xiMzk1bFN3czRuU1ZGVDNYejJjMCtmcWN1VEs4STF0bk1j?=
 =?utf-8?B?RkFRT0swRUtLL2JaUHgyb3Q2ZTIrR3V4SE1DeXpxczNFaFNxMGpMTzZlUFNL?=
 =?utf-8?B?dk9pd3duWmRSRm5VUHNxdU9WRkQ0QmQxeUFPME9CN3RBY2ozQnNYeGxzMlN3?=
 =?utf-8?B?TW9UbUpjVm0wdjllWWxhYTNDV3UxYTByUVFNcTYvNjRhNFh0dWZ2Z05DKzhl?=
 =?utf-8?B?aldWaUNSQmFNWXRWdm1NWncwbmJiZFBRdzVjeTBpQ3RXREp5VWFoclV0MlRI?=
 =?utf-8?B?cW1UUmJDRE56Mk5mVDJyek5sQWNSUzdKQ0MxUFFRaVdOMGQ0b1hqdCsxampj?=
 =?utf-8?B?NHVPTlJwTU85WlZ1amd5MGtrMjB5c3JkODg2bUVuTzQrZ1B0TGxxalhXT0ZU?=
 =?utf-8?B?RCtZT0Evd3NRaFdJc2xSejhTT3BmaGU0TGhDZVhiSFE3V3J6TjZZSkp2NWZ1?=
 =?utf-8?B?azUrd01zQkxaYzRRUzN2NWtUS214QnZRVTNTTnNjVzk2b1YvcTFwQUdPUGhN?=
 =?utf-8?B?aks0VXhmaG1CVDJicjJ0WHNhc0M3Y0FHM0gzZnNJRlZKNUc4QzIzQWdGc3d2?=
 =?utf-8?B?VDFBc0pDazIwQk11ZEZpOGx2MEZEM3IxUjlGLzNpMUZTTUlXd3ZiOWp5OFlR?=
 =?utf-8?Q?v/EUgzg7CdzViW8w=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0439b2bb-9441-4fb1-99a3-08da1b06f258
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2022 15:29:47.5524
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 FYMB1KgR1D5HRPSLb5GbRWmnuAbPaH/QiUxSBNcIG03FiyDKydtNsHPnKvLJjOnWnRKHGLJH5BbP8EyrbmwPPfCnytqJj/iB5zlFRq9moo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR02MB5965
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56703

SGVsbG8uIEknZCBzdWdnZXN0IHNvbWUgImhvdXNlIGNsZWFuaW5nIiBvZiB0aGUgdHBtMi1zb2Z0
d2FyZS4gKEkgYW0NCmEgbWVtYmVyIG9mIHRoZSB0cG0yLXNvZnR3YXJlIGNvbW11bml0eSBhbmQg
YW4gdXBzdHJlYW0gZGV2ZWxvcGVyIG9mDQp0aGUgdHBtMi1vcGVuc3NsIHByb3ZpZGVyLikNCg0K
SW4gZ2VuZXJhbDoNCg0KU29tZSB0cG0yLXNvZnR3YXJlIGlzIG5vdCBoYXZpbmcgdGhlIGxhdGVz
dCB2ZXJzaW9ucy4gRm9yIHRoZSBLaXJrc3RvbmUNCkkgc3VnZ2VzdCB1cGdyYWRpbmcgdG8gdGhl
IGxhdGVzdCwgd2hpY2ggaGFzIHRoZSBiZXN0IG9wZW5zc2wgMy4wIHN1cHBvcnQuDQoNCk1hbnkg
dHBtMi1zb2Z0d2FyZSBoYXZlIG51bGwgdmVyc2lvbiBzdHJpbmdzLiBJIHN1Z2dlc3QgZml4aW5n
IHRoZSBidWlsZA0KcHJvY2VkdXJlIHNvIHRoYXQgdGhlIHRvb2xzIGFyZSBhd2FyZSBvZiB0aGUg
Y29ycmVjdCB2ZXJzaW9uLiBJdCBpcw0KY3J1Y2lhbCBlLmcuIGZvciBsaWJyYXJ5IGRlcGVuZGVu
Y3kgY2hlY2tpbmcuDQoNClRoZXJlIHdlcmUgc29tZSB1bnVzZWQgcGF0Y2hlcywgc29tZSB2ZXJ5
LCB2ZXJ5IG9sZC4gRmV3IG90aGVyIHBhdGNoZXMNCmhhdmUgYmVlbiBhY2NlcHRlZCB0byB0aGUg
dXBzdHJlYW0gb3IgdGhlIHVwc3RyZWFtIGNoYW5nZWQgaW4gYSB3YXkgdGhlDQpwYXRjaGVzIGFy
ZSBubyBsb25nZXIgbmVlZGVkIChlLmcuIHRoZXJlIGlzIGEgc3dpdGNoIHRvIGRvIHRoZSBzYW1l
IHRoaW5nKS4NCg0KUGV0ciBHb3R0aGFyZCAoNik6DQogIHRwbTItdG9vbHM6IGZpeCBtaXNzaW5n
IHZlcnNpb24gbnVtYmVyDQogIHRwbTItb3BlbnNzbDogdXBkYXRlIHRvIDEuMS4wDQogIHRwbTIt
dHNzOiB1cGRhdGUgdG8gMy4yLjANCiAgdHBtMi1hYnJtZDogdXBkYXRlIHRvIDIuNC4xDQogIHRw
bTItdHNzLWVuZ2luZTogZml4IHZlcnNpb24gc3RyaW5nIGFuZCBidWlsZCB3aXRoIG9wZW5zc2wg
My4wDQogIHRwbTItcGtjczExOiB1cGRhdGUgdG8gMS44LjANCg0KIC4uLnBtMi1hYnJtZF8yLjQu
MC5iYiA9PiB0cG0yLWFicm1kXzIuNC4xLmJifSB8ICAgIDYgKy0NCiAuLi4vdHBtMi1vcGVuc3Ns
L3RwbTItb3BlbnNzbF8xLjAuYmIgICAgICAgICAgfCAgIDExIC0NCiAuLi4vdHBtMi1vcGVuc3Ns
L3RwbTItb3BlbnNzbF8xLjEuMC5iYiAgICAgICAgfCAgIDE5ICsNCiAuLi4vMDAwMS1yZW1vdmUt
bG9jYWwtYmluYXJ5LWNoZWNrZXMucGF0Y2ggICAgfCAgIDc3IC0NCiAuLi4vMDAwMS1zc2wtY29t
cGlsZS1hZ2FpbnN0LU9TU0wtMy4wLnBhdGNoICAgfCAxMzA1IC0tLS0tLS0tLS0tLS0tLS0tDQog
Li4uc3NsLXJlcXVpcmUtdmVyc2lvbi0xLjEuMC1vci1ncmVhdGVyLnBhdGNoIHwgICA5MyAtLQ0K
IC4uLi90cG0yLXBrY3MxMS9maWxlcy9ib290c3RyYXBfZml4dXAucGF0Y2ggICB8ICAgMTIgLQ0K
IC4uLjItcGtjczExXzEuNy4wLmJiID0+IHRwbTItcGtjczExXzEuOC4wLmJifSB8ICAgMTggKy0N
CiAuLi4vcmVjaXBlcy10cG0yL3RwbTItdG9vbHMvdHBtMi10b29sc181LjIuYmIgfCAgICA1ICsN
CiAuLi4vdHBtMi10c3MtZW5naW5lL3RwbTItdHNzLWVuZ2luZV8xLjEuMC5iYiAgfCAgIDE5ICst
DQogLi4uL3RwbTItdHNzL3RwbTItdHNzL2F4X3B0aHJlYWQubTQgICAgICAgICAgIHwgIDMzMiAt
LS0tLQ0KIC4uLi90cG0yLXRzcy9maXhfbXVzbF9zZWxlY3RfaW5jbHVkZS5wYXRjaCAgICB8ICAg
MzEgLQ0KIC4uLi90cG0yLXRzcy90cG0yLXRzcy9maXh1cF9ob3N0dG9vbHMucGF0Y2ggICB8ICAg
MjkgKy0NCiAuLi4ve3RwbTItdHNzXzMuMS4wLmJiID0+IHRwbTItdHNzXzMuMi4wLmJifSAgfCAg
ICA3ICstDQogMTQgZmlsZXMgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKSwgMTg5NiBkZWxldGlv
bnMoLSkNCiByZW5hbWUgbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItYWJybWQve3RwbTItYWJy
bWRfMi40LjAuYmIgPT4gdHBtMi1hYnJtZF8yLjQuMS5iYn0gKDkwJSkNCiBkZWxldGUgbW9kZSAx
MDA2NDQgbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItb3BlbnNzbC90cG0yLW9wZW5zc2xfMS4w
LmJiDQogY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLW9wZW5z
c2wvdHBtMi1vcGVuc3NsXzEuMS4wLmJiDQogZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEtdHBtL3Jl
Y2lwZXMtdHBtMi90cG0yLXBrY3MxMS9maWxlcy8wMDAxLXJlbW92ZS1sb2NhbC1iaW5hcnktY2hl
Y2tlcy5wYXRjaA0KIGRlbGV0ZSBtb2RlIDEwMDY0NCBtZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBt
Mi1wa2NzMTEvZmlsZXMvMDAwMS1zc2wtY29tcGlsZS1hZ2FpbnN0LU9TU0wtMy4wLnBhdGNoDQog
ZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXBrY3MxMS9maWxl
cy8wMDAyLW9zc2wtcmVxdWlyZS12ZXJzaW9uLTEuMS4wLW9yLWdyZWF0ZXIucGF0Y2gNCiBkZWxl
dGUgbW9kZSAxMDA2NDQgbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItcGtjczExL2ZpbGVzL2Jv
b3RzdHJhcF9maXh1cC5wYXRjaA0KIHJlbmFtZSBtZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi1w
a2NzMTEve3RwbTItcGtjczExXzEuNy4wLmJiID0+IHRwbTItcGtjczExXzEuOC4wLmJifSAoNzYl
KQ0KIGRlbGV0ZSBtb2RlIDEwMDY0NCBtZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10c3MvdHBt
Mi10c3MvYXhfcHRocmVhZC5tNA0KIGRlbGV0ZSBtb2RlIDEwMDY0NCBtZXRhLXRwbS9yZWNpcGVz
LXRwbTIvdHBtMi10c3MvdHBtMi10c3MvZml4X211c2xfc2VsZWN0X2luY2x1ZGUucGF0Y2gNCiBy
ZW5hbWUgbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdHNzL3t0cG0yLXRzc18zLjEuMC5iYiA9
PiB0cG0yLXRzc18zLjIuMC5iYn0gKDkxJSkNCg0KLS0gDQoyLjI1LjENCg0K

