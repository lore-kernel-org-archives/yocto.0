Return-Path: <Johannes.Schilling@ul.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCB1C433EF
	for <webhook@archiver.kernel.org>; Mon, 18 Jul 2022 13:42:32 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.41])
 by mx.groups.io with SMTP id smtpd.web09.27298.1658151746279336331
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jul 2022 06:42:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ul.com header.s=selector1 header.b=GqOPY207;
 spf=pass (domain: ul.com, ip: 40.107.236.41,
 mailfrom: johannes.schilling@ul.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8ijEALohhQc6AoioK2hnGMzj3qWbInn1z5m4Igq+YJFg7Au/pboJKTWMF5/9GikP9KmYJeXi9M5UDivPTdPYDy+V0sp5XyhVGmLhoSEHMkXx/GYSSqg05vZlO3ln2qBjQlF+1PuQXBen3K/Za4scdvlJKrg1Q0/xMfGkf6oiVesJyes1lH/ZVlOXMWvE27yvjASJkG+MnC390H/UTLxh+lUK+0BTymfiM40YchFmbxtCskTDkqY+osXPY68MKSUXAoKpHJByW/t3GPkC2o7CSSGtflxkWQREbau4Sie7iXnPIkSsa61aGY7QEX7QfwBveXKMv/h28X1eQciImiMYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbO/ghEzWFz2JTGpqcjNNB5ouppdXG9bVhfinYPopgA=;
 b=AVIPEy6VxcDj91j5r+Ks7TjrAFu428flYwNMXm/pGa0sDj4gIRy00zwluzEZbXhqfc6oXytejrke5NbohrGHjsn707kCbURoc9O/cz+4NpMpRRN1rOoFvFXDqq/icWhv+Df40C80E92AiaDQw0oi7N0tb4X8siOj9zMHIXbB6r+LC+1IRl4fqrDxzkp0keyQEOCPGgg2rGLh9Nqo2a7px/Qg/ZL7DjhGEr4eQqyzYY7BKhKOCZRcIfDyprexQOZbM5LEsQbWr1oVk9uES/YM4apDkJTiAGXCnrUKYqwX4xyVMS590gsIWn3+tttlFaSP8fwa0GszJD2gIDZj1lct+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ul.com; dmarc=pass action=none header.from=ul.com; dkim=pass
 header.d=ul.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ul.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lbO/ghEzWFz2JTGpqcjNNB5ouppdXG9bVhfinYPopgA=;
 b=GqOPY207JYQaMaNhX8wyGCaOWimee7JuWw+o6knig1ZXRhW91eVSIFnyGRbQzYDLa8LO28qSa0S0jyzHD4JzGoRJcDVM5e4rgoC57knBLWqQp4ngXg4U2wb8anN1wHn9VeyUhFD59WcYh2S2xhRKPlKs/50bxdcU/cKoGs6ZI08=
Received: from PH0PR16MB4182.namprd16.prod.outlook.com (2603:10b6:510:5d::15)
 by MW3PR16MB3786.namprd16.prod.outlook.com (2603:10b6:303:46::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Mon, 18 Jul
 2022 13:42:23 +0000
Received: from PH0PR16MB4182.namprd16.prod.outlook.com
 ([fe80::b0c4:f86:5c01:9639]) by PH0PR16MB4182.namprd16.prod.outlook.com
 ([fe80::b0c4:f86:5c01:9639%9]) with mapi id 15.20.5438.023; Mon, 18 Jul 2022
 13:42:23 +0000
From: "Schilling, Johannes" <Johannes.Schilling@ul.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [PATCHv2 2/2] image-without-static-linkage: add selftest
Thread-Topic: [yocto] [PATCHv2 2/2] image-without-static-linkage: add selftest
Thread-Index: AQHYmqw1rKl84kzIlkC7Cj4EVNdpmQ==
Date: Mon, 18 Jul 2022 13:42:23 +0000
Message-ID: <70cd60c80d819dac435e39937dbf7beaeb0f9ff5.camel@ul.com>
References: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
	 <16FEAD00052C073D.2437@lists.yoctoproject.org>
In-Reply-To: <16FEAD00052C073D.2437@lists.yoctoproject.org>
Accept-Language: en-150, en-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ul.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1a35930-5327-4103-2f8f-08da68c35823
x-ms-traffictypediagnostic: MW3PR16MB3786:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mqdVKEsDYyG0ycw+8us2q/n5lzeMnbBqYx9qXrK7LsgXnL1Jg80KUPDO2+Lx9tEudS+WZ1bTuoVZUxP4eVtS9MQSUP1vXAVcyI8RGHBOTssB+NxNmFSLrgxG6BgOso5l6sjh5urbO+uGeSIEf/PVVloOCXI2xcFrIs/+UV3XSKZ/oUSGS3Bw/ZkoLvEdV9V/JEJt1+3yY7BU+jDN10hKJB2ivdAEbvsPCZkzcG82k9r3GTlLsSKq6TvQtptc83pYgb5s1CfcgGOfNTduGgefkS4d3ocLyXcKvuEuQM4O6lZ87vHggog2YjoSlvHunLYFZYf/KKet0us9Lu45+1owpP8PIzTlPrc2Y9PFwGqyopKXVsl2tUTkcLzwgzQcbYJUCJ96xFiEySR76PDYVWqI+Fxrjbpi/n8TxtC0QcfiQN01pX2GqkwfnPzXbe0D+0Jsm3bNmkpm4zmgL0BXLyFRqfAvF8tlBVHrEX25OUVIC5iM0DZxjev6iuVs4T+GOki0h6YMtQfr42IU5IDPjGPEk7rVgTaEwxvP05T5iHRcRLHDkoadZ8Hkc7pQ7renoqeImJoFNycOf1aE3dfg3GXMbCr07Fl85PPvKjHOUPxnvJsmNpLHTmC8++xva8/dPOLTJxq4aeo9S/RaOa9YwLzs9T6nofjd9Uxbmm23Gr+SafLA4laiQmcQ3T1BN/NkmmFycbxTJ0t6rP0rtONfwzornL23MxWuvTudEqTeucMfS/sTX3k/vbcGeKN/dKo0e+LKl1QYnIAA6PDVxCvLKHDSk/cOPaVjm3dNOiSYHy0QOarP5Z7ZTRT9yh9KZSh4oqYk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR16MB4182.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(83380400001)(6512007)(66574015)(186003)(41300700001)(2906002)(6506007)(53546011)(478600001)(6486002)(5660300002)(8936002)(2616005)(86362001)(38100700002)(316002)(122000001)(38070700005)(6916009)(66446008)(66476007)(71200400001)(8676002)(91956017)(36756003)(66556008)(76116006)(66946007)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?b2dua0tuaytRQTNHOE0vT202QVhHYkdOYW5TUTh0aWVrOVpReThFeHFUTXZV?=
 =?utf-8?B?VXd1dGp4VE92SHRNSVBaSVExelJTcFVzM3hFK21TOUxDaXArTzNzUlV0aVNE?=
 =?utf-8?B?QUJIbW1zSTgyb2ZzY1hibUVTdmFNUXRrVzQwT0FBaDVJS2p5SFVBRnQ4ZUNx?=
 =?utf-8?B?MUw1S044eE8vanFtL3VleGt6U3BuaVZKd2VackhBU2F1T2dQSFpiSEdFWExq?=
 =?utf-8?B?UmRGQzM0VGJTUFM3WWxEVnRpSnFNUGtJWWJkTjRWUVA4N1NRVkJqeVBab2tJ?=
 =?utf-8?B?L3BTTHRLek1LV0MzZFpvdXlCM0g4akVYZ0plS2IyZjRxa08zUkJxdzZhdnVm?=
 =?utf-8?B?VVZzZ1NLdHZQLzgyRlV6MzdSUlRVbkFoVmVqMVk0b05zbjV3WUdwcWkyMEdq?=
 =?utf-8?B?TXFMdXkvelJsRXMyM3NrT2puSDFESDN2bVI2ZEZLM0Q0S2hCc0Zqd0xsenpX?=
 =?utf-8?B?aTU3SzkxUnBsMDV5ekR6M295RG9GK0x4amFwcUJQVkZxWUt4b25icVErUDA4?=
 =?utf-8?B?dk0wVkFkeDRqSzREenVWK0QrNU5qdk9CR2FGQ3YycXRuaTR3MHpUTVNNUWR2?=
 =?utf-8?B?TEtDOXVKN1poWnFGeEFLY0E5Vml5T0J5SnQvTGxDbzNwZER4cGRHMWRmWGUx?=
 =?utf-8?B?bDNDeHlUYWNQZFBzb1RDbHJSM0h3NjlMYlFnTjQ2Rk45c0hiU2dPOTI0cFd0?=
 =?utf-8?B?LzE4eHdDTHowYkkybEgrM1l4TzI3dHdNYjI2NlJKZ0d1RzdCemdSSW5KV2FN?=
 =?utf-8?B?S3dqckJiSGhwOXZqS0NYaFp0WVRBZExEWThqRUYveHYra2ppUlJFMm5hSVVk?=
 =?utf-8?B?d3paS1pPZHdKbFU4OVVEU21lenRIOGV2UDJIUFc1UWJCVko4eVQ1c1lqZThR?=
 =?utf-8?B?eVkzOXA5Mnc3OURjQk1KZjRXZkNGR3RjblluWTBxS1lFZjJ2aEFacmpWUmVn?=
 =?utf-8?B?WnZydDNCSU1yS0xKeGxlYXhMRFdqcFlJYXcvWXBYWk5oYVlVbzRZYzM5QTAy?=
 =?utf-8?B?bktHVDU2enNwZGErNkh2VlZXRk5hUXJDRjc0VzFwSisxNkRWbXlaak5DOXFo?=
 =?utf-8?B?cVBhZU9YYklCTitkdnpieEQxRU50UTBGRWhrWitCQWMrNDdFZzU1aG9PSzlr?=
 =?utf-8?B?cEF4TUVoYnB0cVEvWTNGN2NiZnVVbE5laXNQY2xXQXF3cmliVFNEZVZmYXln?=
 =?utf-8?B?ZTRFUCt4TVlCenk0YnVYbitJUzFDNEg0S1ZZV3dMSFpGUDdkZExRcUthQXgy?=
 =?utf-8?B?SG1pQjh2NEJPOW9PWk4yeXU1UjNrZG4vTnlXNlhyZUhMZldSWGtQOGhIbWFl?=
 =?utf-8?B?cjRlMkY1SG5OSXZVQmo1RjFHSXprbk9YRytma2sya2VsOHVaSm91UlM2NTVv?=
 =?utf-8?B?czh6R1I3Q0l4VWRiUnJ6NDNqVUppNjNXSGR3RmNTMGJ1N3JiVDIwM3YvOERk?=
 =?utf-8?B?TXg4Ynd1YkF1Z29HdzZXNHlZM1UxN1RIZFFjTzlVLytGd2hGUTNsdHdRNDM0?=
 =?utf-8?B?Qy9meXpOV0dlRzdRczVTaGV0eVI0OEFTL2FISWhtQ0tNT2dDTmYvdDMxSWJR?=
 =?utf-8?B?dXF2RG5pS3A0RmtKbk1OOFI5aTlwWnlNeUp0b0FrR2Yyb1EwWEFBcjc4ck9R?=
 =?utf-8?B?SUJjdHYwMDVsMHhGRHpjSFJSQ0RwM3lDZ0hLOHAwUFVzMzBCUkMwdnBJdXA2?=
 =?utf-8?B?YkpsME15M0hjQU10QkFYdVpUOG90NHdBRVJlM2M2c0Z6T3FrY0l0OXpWYjJo?=
 =?utf-8?B?ZnBhZFJHWk9RZDk0UkpuZVFScmZZbFVqTDVFNm4rRFh2M0JOOUpZZ2VOVzB2?=
 =?utf-8?B?YUxveWVNL2hNNTdhd2FqRHAzVzc0U1dEcHc2V09xbXVsNk9RNG81RTFSeStx?=
 =?utf-8?B?NUtRZjdHTTFQY2VkTTBPL1Vlc2p3L2xobXpSU3c1SlNqYm1nYi91eG5rNXo1?=
 =?utf-8?B?WlJxVHJqbjZFUXRGOHQ3SCtlNTZTZHJoRnI0eGZIWmFMako1NVVBbFNvMitX?=
 =?utf-8?B?NDlTQXJZOWljaCtZM2VocllKNCtBbEhkRllzdXR3bWhpcVlRYVpVK3ZvZGNi?=
 =?utf-8?B?N2d4NS9iNGtPZ0pvN0hFWVo0cC9kOWNkSVY0K24wOEw2dm9LU0RtWFd6WVpU?=
 =?utf-8?B?dEFPaHdDWUZlTFRYQUgxVWZ6R1F1aTUxdFdRWktnZTF6TVpDRW1ZYzczT0k4?=
 =?utf-8?B?dDNKK1pmS09ibW1rZ2FDWjEwQmFPVnNiU3hwMkVveUg3dys3SEVzZTh6WGVK?=
 =?utf-8?B?d2JKVi9aSE1JYmYxUlRJYkY0ejRRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CC795142AD3D7C408C82662AA1B4B2EE@namprd16.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ul.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR16MB4182.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f1a35930-5327-4103-2f8f-08da68c35823
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2022 13:42:23.2802
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70115954-0ccd-45f0-87bd-03b2a3587569
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 NRlcYzala+CfIuyalqEenAt7kMnO07ocVSYFcEeutncu4XfKJgsHOCVvCR4tRJA9xMXCqx1wdyKVBotMEtdIaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR16MB3786
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Jul 2022 13:42:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57561

RnJvbSA4N2MzYzhjYzRmM2U2N2IyYmMwNmFmNTM3MDVmMThjMGE5ZGU1ZGQ3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogSm9oYW5uZXMgU2NoaWxsaW5nIDxqb2hhbm5lcy5zY2hpbGxp
bmdAbWV0aG9kcGFyay5kZT4NCkRhdGU6IE1vbiwgMjcgSnVuIDIwMjIgMTY6MTI6MjUgKzAyMDAN
ClN1YmplY3Q6IFtQQVRDSCAyLzJdIGltYWdlLXdpdGhvdXQtc3RhdGljLWxpbmthZ2U6IGFkZCBz
ZWxmdGVzdA0KDQpUaGUgc2VsZnRlc3QgcnVucyB0aGUgc3RhdGljIGxpbmthZ2UgY2hlY2sgUUEg
dGVzdCBvbiBhIHNtYWxsIHJvb3RmcywNCmV4cGVjdGluZyBubyBzdGF0aWMgbGlua2FnZSBhZ2Fp
bnN0IHRoZSB0d28gY2hlY2tlcnMgInpsaWIiIGFuZA0KImxpYnJzdmciLiBUaGlzIHRlc3RzIHRo
YXQgdGhlIGNsYXNzIGFuZCB0aGUgY29uZmlnIGFyZSBjb3JyZWN0bHkgcHVsbGVkDQppbiwgdGhl
IGNoZWNrZXJzIGFyZSBmb3VuZCBhbiBydW4sIGFuZCB3aWxsIGZhaWwgaWYgeW9jdG8ncyBjb3Jl
IGltYWdlDQpldmVyIGRvZXMgc2hpcCBzdGF0aWNhbGx5IGxpbmtlZCBjb3BpZXMgb2Ygb25lIG9m
IHRoZXNlLg0KDQpTaWduZWQtT2ZmLUJ5OiBKb2hhbm5lcyBTY2hpbGxpbmcgPGpvaGFubmVzLnNj
aGlsbGluZ0BtZXRob2RwYXJrLmRlPg0KLS0tDQogLi4uL3NlbGZ0ZXN0L2Nhc2VzL3N0YXRpY19s
aW5rYWdlX2NoZWNrZXIucHkgIHwgMzkgKysrKysrKysrKysrKysrKysrKw0KIDEgZmlsZSBjaGFu
Z2VkLCAzOSBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGxpYi9vZXFhL3NlbGZ0
ZXN0L2Nhc2VzL3N0YXRpY19saW5rYWdlX2NoZWNrZXIucHkNCg0KZGlmZiAtLWdpdCBhL2xpYi9v
ZXFhL3NlbGZ0ZXN0L2Nhc2VzL3N0YXRpY19saW5rYWdlX2NoZWNrZXIucHkgYi9saWIvb2VxYS9z
ZWxmdGVzdC9jYXNlcy9zdGF0aWNfbGlua2FnZV9jaGVja2VyLnB5DQpuZXcgZmlsZSBtb2RlIDEw
MDY0NA0KaW5kZXggMDAwMDAwMC4uYTVmZGY2Yg0KLS0tIC9kZXYvbnVsbA0KKysrIGIvbGliL29l
cWEvc2VsZnRlc3QvY2FzZXMvc3RhdGljX2xpbmthZ2VfY2hlY2tlci5weQ0KQEAgLTAsMCArMSwz
OSBAQA0KK2ltcG9ydCBvcw0KK2ltcG9ydCByZQ0KKw0KK2Zyb20gb2VxYS5zZWxmdGVzdC5jYXNl
IGltcG9ydCBPRVNlbGZ0ZXN0VGVzdENhc2UNCitmcm9tIG9lcWEudXRpbHMuY29tbWFuZHMgaW1w
b3J0IGJpdGJha2UNCisNCitjbGFzcyBTdGF0aWNMaW5rYWdlQ2hlY2soT0VTZWxmdGVzdFRlc3RD
YXNlKToNCisgICAgZGVmIHRlc3Rfc3RhdGljX2xpbmthZ2VfY2hlY2soc2VsZik6DQorICAgICAg
ICBzZWxmLndyaXRlX3JlY2lwZWluYygnZW1wdHl0ZXN0JywgIiIiDQorU1VNTUFSWSA9ICJBIHNt
YWxsIGltYWdlIGp1c3QgY2FwYWJsZSBvZiBhbGxvd2luZyBhIGRldmljZSB0byBib290LiINCisN
CitJTUFHRV9JTlNUQUxMID0gInBhY2thZ2Vncm91cC1jb3JlLWJvb3QgJHtDT1JFX0lNQUdFX0VY
VFJBX0lOU1RBTEx9Ig0KKw0KK0NPUkVfSU1BR0VfRVhUUkFfSU5TVEFMTCA/PSAiIg0KKw0KK0xJ
Q0VOU0UgPSAiTUlUIg0KKw0KK2luaGVyaXQgaW1hZ2UNCisNCitJTUFHRV9ST09URlNfU0laRSA/
PSAiODE5MiINCisNCitpbmhlcml0IGltYWdlLXdpdGhvdXQtc3RhdGljLWxpbmthZ2UNCisNCitT
VEFUSUNfTElOS0FHRV9DSEVDS19DT05GSUcgPSAiJHtXT1JLRElSfS9zdGF0aWMtbGlua2FnZS1j
aGVjay1jb25maWcudG9tbCINCisNCitkb193cml0ZV9jb25maWcoKSB7DQorICAgIGVjaG8gIltj
aGVja2Vyc11cbm1vZHVsZXMgPSBbICJ6bGliIiwgImxpYnJzdmciIF1cbiIgPiAiJHtTVEFUSUNf
TElOS0FHRV9DSEVDS19DT05GSUd9Ig0KKyAgICBlY2hvICJbZXhjZXB0aW9uc10iID4+ICIke1NU
QVRJQ19MSU5LQUdFX0NIRUNLX0NPTkZJR30iDQorICAgIGVjaG8gImlnbm9yZV9kaXJzID0gW10i
ID4+ICIke1NUQVRJQ19MSU5LQUdFX0NIRUNLX0NPTkZJR30iDQorICAgIGVjaG8gImlnbm9yZV9j
aGVja3MgPSB7fSIgPj4gIiR7U1RBVElDX0xJTktBR0VfQ0hFQ0tfQ09ORklHfSINCit9DQorDQor
YWRkdGFzayBkb193cml0ZV9jb25maWcgYmVmb3JlIGRvX2ltYWdlX3FhDQorICAgICAgICAiIiIp
DQorDQorICAgICAgICByZXN1bHQgPSBiaXRiYWtlKCItYyBpbWFnZV9xYSBlbXB0eXRlc3QiLCBp
Z25vcmVfc3RhdHVzPVRydWUpDQorICAgICAgICBpZiByZXN1bHQuc3RhdHVzICE9IDA6DQorICAg
ICAgICAgICAgc2VsZi5sb2dnZXIud2FybihyZXN1bHQub3V0cHV0KQ0KKyAgICAgICAgICAgIHJh
aXNlIHNlbGYuZmFpbHVyZUV4Y2VwdGlvbigiYnVpbGQgZmFpbGVkLCBzb21ldGhpbmcgd2VudCB3
cm9uZy4uLiIpDQoNCg0KVGhpcyBlLW1haWwgbWF5IGNvbnRhaW4gcHJpdmlsZWdlZCBvciBjb25m
aWRlbnRpYWwgaW5mb3JtYXRpb24uIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGll
bnQ6ICgxKSB5b3UgbWF5IG5vdCBkaXNjbG9zZSwgdXNlLCBkaXN0cmlidXRlLCBjb3B5IG9yIHJl
bHkgdXBvbiB0aGlzIG1lc3NhZ2Ugb3IgYXR0YWNobWVudChzKTsgYW5kICgyKSBwbGVhc2Ugbm90
aWZ5IHRoZSBzZW5kZXIgYnkgcmVwbHkgZS1tYWlsLCBhbmQgdGhlbiBkZWxldGUgdGhpcyBtZXNz
YWdlIGFuZCBpdHMgYXR0YWNobWVudChzKS4gVW5kZXJ3cml0ZXJzIExhYm9yYXRvcmllcyBJbmMu
IGFuZCBpdHMgYWZmaWxpYXRlcyBkaXNjbGFpbSBhbGwgbGlhYmlsaXR5IGZvciBhbnkgZXJyb3Jz
LCBvbWlzc2lvbnMsIGNvcnJ1cHRpb24gb3IgdmlydXMgaW4gdGhpcyBtZXNzYWdlIG9yIGFueSBh
dHRhY2htZW50cy4NCg==

