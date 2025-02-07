Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A4CEC02196
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 11:52:42 +0000 (UTC)
Received: from ZRAP278CU002.outbound.protection.outlook.com (ZRAP278CU002.outbound.protection.outlook.com [52.101.186.22])
 by mx.groups.io with SMTP id smtpd.web11.67813.1738929154773141423
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 03:52:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=qUDrmd4f;
 spf=pass (domain: vrag.ch, ip: 52.101.186.22, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=up99aqE3gWYzzbZ9yQKgeUNhFweyD2ou1B8boAosQCfCeLKcYiyI8oe8yhwN8XeRV0OePKO89moE673nE9wSRoUsbwgbTI0q+qH2qI3SnQH9s/Ot3bdPdQ+k0C4lDG+KLDxIlF1de8oHOud5yudvIaOQoGpaNUnuvAorQTFR+4D8NCh5zwlYPvVXFrO81jBBETboupe0o2DRbJwQ39g2prWJiJTo+0/Pp5vyM1uh7gd32rrkeWhNOa2jc3VgI2ANozoW9wuIofGFyVk4TE1bQ+whO+pnjmVnWEsv/QGgYuRza23oV83kgHhRwV72S0n0OTPKWV+Kf3yDlnCuXcin9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZCmf6PwkNVF6COtIa/iB5CyonPL4s6E6zqW34MdGQGg=;
 b=F2ySsnMVdURZlQLDNytx2FRb/I82RdXWl6tPZ8bn3NQz8dAZaIl6PS8r90xPJTr6ZXHQ61MjQt4xqjvhYYM3ITYya6Ilg+dCM27CBB4Wf1bzps6Hyxy8wnESg08CMTpq3IF4L56rBl5Y/P+wUM7wSRap2h10TxfCHszR4XYtEF0/Q1CF8BtdoK6Bp/QFZi/lUIGIkFJLBcouseTERdodiLwe1sbwKBBJtW6JyPnOvQT5oYcQdXxxrm8AlPHO2aNHbi0E7i68Ycd96GcmPYQoRpH5AdP8n/02y3G6QDKUF+b7bCNVptPVbJZFjzQQrJle87/bFU82YtuqToAyyY5UBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZCmf6PwkNVF6COtIa/iB5CyonPL4s6E6zqW34MdGQGg=;
 b=qUDrmd4fNxJC7EPyhY4c406KjpT1JF/Ntq3oHtoWfsig2nPJfaB6xJ5hn7HUdJ2OB4SZ1zG0J71rptxYlLZU1jq1sfHwVxi/zr1+mZgA4tHJ/OWyYa3ybpYUlBgKRclYQMWLgjBBS7gQClojYf63nIvGvW+9yxSTI6yEbXgq/EE=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR1P278MB1591.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.14; Fri, 7 Feb
 2025 11:52:32 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%7]) with mapi id 15.20.8422.012; Fri, 7 Feb 2025
 11:52:32 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] PROVIDES virtual/kernel but was skipped: incompatible
 with machine
Thread-Topic: [yocto] PROVIDES virtual/kernel but was skipped: incompatible
 with machine
Thread-Index: AQHbeVZuZzzV9EOtakaySZKbKQo5C7M7utyA
Date: Fri, 7 Feb 2025 11:52:31 +0000
Message-ID: <c670dad5f93b1fdf349367e23227450f2c3b23f4.camel@vrag.ch>
References: <1821EAB8CBDF9A14.18160@lists.yoctoproject.org>
In-Reply-To: <1821EAB8CBDF9A14.18160@lists.yoctoproject.org>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR1P278MB1591:EE_
x-ms-office365-filtering-correlation-id: 35f1e6da-f103-4ff9-032b-08dd476de7ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?bDZmVGoza3NiS0dIMlFRV1pXTnZuU0xSUU9SUTBuZHJoMG1ta3oxWmJWOHhr?=
 =?utf-8?B?bTZGTlJrdkpLOWhIeDNaRzBSQ0tQN0p5UmxyN2lQdHdUMVRrdTBRZnc5OURB?=
 =?utf-8?B?RWRnZCtxME9lRTZBUS9ORXIzRUdTUFQxeWFCS3hHaElFa3RuelZYNGVMNHhY?=
 =?utf-8?B?TXJyaEZCeG00bG9zb2ZCczFoTTJxU2JBWU1iZkZKVk1BSVNFOHRSekxOaGtm?=
 =?utf-8?B?V3M0WmZVdkwyR0lmQTlGYWMxMzE4WnZZTzEySHVpZXJLS0U4eUF4c0UzVTc2?=
 =?utf-8?B?N1RTVW0vSmE5YkVNdUpGV0hncXhVeDZFTkRlc2k4MnlBLzlscjBSMDk0b0ox?=
 =?utf-8?B?L1JxOEw5aVBqWWxHWDI1aHkwU1ZnVWhJVm9iTEcwMHE1emcyZGpTOHNhN0RM?=
 =?utf-8?B?ZkJXK3ZrZTdSM2srRUtVUFRKU2lVbTRZVFdrVWJDVWh2c3dqaTV1NG13eGtM?=
 =?utf-8?B?N0pKZDdjaDdHN3FpOFB3Yk9JUmM3OUdQRk1XMlN3ZE51WjM2S3k5SU1SeHEv?=
 =?utf-8?B?N3RCMFd3L1lLZFZ3TVE0Sm1Jd3c0SXlJbXdOQVpZNHlWeXcrZkNuWEM5NkIy?=
 =?utf-8?B?MVpZdHorcnRpSnowNm9WbEc3T1dFaUNBOW5BU29aYTk4VWNTVEdzUE9xdHdK?=
 =?utf-8?B?eHBuMjBtenV0MzNOanZ0b3JPdzNRN2pjcWY3dXN3Um9WRVpvdUw3dkZWK2Jq?=
 =?utf-8?B?Vi9IYnJ5TjRVTU1DWlAyMFQ5ZWdmSU9kdlVuOTdWUm12aTNVR2E1M3cxMnhQ?=
 =?utf-8?B?WS9JaDJrNTQybjE4SXpwWUwrR3lhUzQzeCsydks1cTJCZkw3bnhBMllPdnI4?=
 =?utf-8?B?NWNKcnVGaVphZFY3NnphT1NyUFQxbjNLWnBxQ2JnZ2pUWERLVXg4VWR5Y3hN?=
 =?utf-8?B?M2ZyWHNCT0M3NWQ3Y3owSzB4ejBOeUNTZ2kvU0NZcTVEdE1WUUpKeE5XajFJ?=
 =?utf-8?B?SmdWU2FGWTJjUEE4N21WbVRTNWVzUkx2NDdpdk8xZ05kSEpoTFNWaWEzQTQ2?=
 =?utf-8?B?U3lRdG9Cby9lQnl3OUNXa3lGYzZHYlJ2c1RsRG04clJacldsdEtGZnE2RDNx?=
 =?utf-8?B?azlKK0RaRWZod3RtemxCNmVrTVBSZCtXb2pJSGFQTUZ1RDAzMElDYlIvaUNP?=
 =?utf-8?B?Z1BMU042amlYNXcxdUxkYlBvdW52MmMxd2tPK1JDN1RENTRCbE05VnczMDBE?=
 =?utf-8?B?clYxd1JQbGV2QzRkcUtmV1hXeVpYVFlJVEI2WUVKVzJRRm9nM0xmcE40bk92?=
 =?utf-8?B?d0MzVGJabkJEVVR5S0hpc0RXWDFrWDhiMkJTaWNWM0VTZ1FzcXlKbGY2M0ZU?=
 =?utf-8?B?WUR3VElEc0QvVFFZZFA0R2RvMWR4dkZyQlltYWUwUFdvMldadGZYVEtJYk80?=
 =?utf-8?B?cENHQmdLRGxCa2NDaWhsbXMvRzV6YWlzLzdBdDZGQUxYUWdWYnc1NjVHeStT?=
 =?utf-8?B?dnN3b3BBMnZtTGxxbExQNnQ5blFyUFU0OU1PKzZnTVB0WWpNTllLQjRxTkx3?=
 =?utf-8?B?S3hPZ1BVak1wb0F3c3IxYlVCSW5rK29yYkJTSm1KcHIyY2tvdGJoRllqSHpu?=
 =?utf-8?B?OE1hazJyUWd3bFpxandKTkpMOE9wY2FzMm5SdDlVeHAxZ1kvbGNIRitTU0RD?=
 =?utf-8?B?QmxicjF1VUs2NkpRTDJoa3ZIZ0lJSFZ0VDZMQ0NrWGJPVkIzN2RoR0JpSytK?=
 =?utf-8?B?cWdOSVQwZUdnZXVyTlVoMXR0NHMxaE1Wb1pNNDIyUWwzUTFvOGRzVVlZTjFu?=
 =?utf-8?B?dWl4YmQwVEtBSXZWSUZVazZ1ZjZES1RNUnFZZDRlUEVqaHpUNERlKy9BM0lP?=
 =?utf-8?B?UjJyR3ZRUzhCQUZZcUxYSURaQzVuY0d2OE4vMzRyNTZYUEp5MThwMXFKNVVD?=
 =?utf-8?Q?bL+1Gp7IMQvZB?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?T1ZUZFZ0aktlUVFJcmxzZDFQWE1IME0reG9UdkFNMkpXb2tqV0RmVVlEWHRz?=
 =?utf-8?B?aEVINm5lZXJKZzJVT1l5Yi80SFZrZnJId0hiUThVUjlLaE94YkZGNStLU3F5?=
 =?utf-8?B?VkZGSzQzR2w3STlhTjNzSnF4RHNhOHF5WGt5RzlNQW80YVR6K29rdW5ZK1Y0?=
 =?utf-8?B?RDBweFpxMVNiMVArQTRuQjVmbE9LY3NieHNhSmlmOHRUeUZGekh3TzNnbTZR?=
 =?utf-8?B?VlAwZEgrTHJCSXA1R1VtamMwbzFDYVBQTUFGOENFSzNiaDVjQWpsT3FWayt0?=
 =?utf-8?B?SjNJeUYwN2REZXRQc2pWczRtOHdqY1BWS1lyTkloUXUrSXRMQ3p2ZTFjTitt?=
 =?utf-8?B?QnVWMEF4NDRJL2h4bHZtcFByd2RDRGwwaE5yeitPYUxmSThTLzNpRlRIRUtP?=
 =?utf-8?B?aWZFSUxldStUdjZ4eWpWcTNWY3FLWmV6MXltQXB0SU0xZndjQ2NzVWI4Vjhs?=
 =?utf-8?B?YjlrbnlZMS94dlBzOWJxK3BBWWRwWW01WjB6bmdlWDA4eWVzM0UyZGszK2hj?=
 =?utf-8?B?blp3T0pHQ1VnTkRtRHUyVGxIYm9Pemk5RFg1WDFkdk1CdXo4aEh5eEs3MEFL?=
 =?utf-8?B?WGI2UXFsTHJuSjBvYzdTdlJjMytSV3lidFpCb2hQM3JSVFRyUkJFUmdlNTE3?=
 =?utf-8?B?TjE0VU1DcWhTUTJsL1Rkdm54Q050YTlDZUZKNk1aNE53Qy9XdEdPbEFFQjNk?=
 =?utf-8?B?RmNhcFRaU01WQ0o2UzEza1VtN29lcEhkMU43WVowTmVNRUlUOWtBK1U3UVA5?=
 =?utf-8?B?YUFSQmxPWVRBa3FuTlloT1NUV0MwSU84dlRTY1JhMlJCYklCQXZDZjJoeDYy?=
 =?utf-8?B?Z2ZtV2RhdE5XV0huWkZxd2pNTU4xNDJZK2lMVEtrTHdvU3V5UmFTWkVONSsw?=
 =?utf-8?B?bUIyS2tQZ3NIcWlFZ0FONnFSS1RyMlExTU56UnJmRVZpTzBZVVdPbmNNVXhu?=
 =?utf-8?B?dXZkeE9OZzVQYnhzckMyeEdEblNNTm9CbDIyaURGMkluMTlOQlhiSXdsbFg5?=
 =?utf-8?B?eFUrQ3Rib2dLVGZ1eGNINVBCTVFOMyt5NkVvUzhBYXh5Vm96elVSUE0yVnVm?=
 =?utf-8?B?NlZrQ1RIY3V4RkJiSHF6ODRnSmFuS3l0TGtYbXZLMy9RaWZkQ1R5SHk5TmtK?=
 =?utf-8?B?My95L2RQVDl6azY0eng3a21RMndUbmc0N0ZuREQ3L1NkeTJLeHdYc2ZJNHF2?=
 =?utf-8?B?UnQxNUIyWG9SdUJSK1Y0dVZaa3dBNWpUTHEvOEcvZmo5VFB5blRYVVNXeFNs?=
 =?utf-8?B?UmNraEc0a0dJNGtDeVVkUjQ1d3pTQnRyK2RCcHF6MVdPRWlTS3hvU2N0dHZl?=
 =?utf-8?B?ZHVxMjErb2k5cy9PRE1IdXlqUnNmTC9vTHJuV3IrR2dRRnBKUFMrMHl2ODBT?=
 =?utf-8?B?Y2UrZHRVODVmYWgyMENFSGthTHZuRlpZOUt1WTFpTElnZ09pellObWNqQjlr?=
 =?utf-8?B?WjJJbTAwd3N5TnVUVGJxZWdXYUlZTzU4bmtOVk51NC9hN2JwWldPRmNrYjVR?=
 =?utf-8?B?d2MxWHNHcFV2SDdpWVFzcnhRNk5BcnI5K2ZlMzlTdGxKUE5FWGtaSGRIdEsv?=
 =?utf-8?B?akRWK2htUTFGSDN1N24zWEFSZXp1cHRvUzdCNzhvWlVlUnBEclBKOHlWQXJD?=
 =?utf-8?B?cG5DNm4wRkc2d2todWZjVFpxM0pkTzJsejNiT1hSamlwVHgwMnJCWG9EUDhr?=
 =?utf-8?B?VnJBR1p4QjFBeC9Zakw1ZU5sdHQzeE1pRC9tNlZ0SWNuMnVSQUUzQXFqR1U5?=
 =?utf-8?B?aWJQRUYzSFJtZDBPTVdGK3l6bmlLOTBXVHJnSWtLSUxXYWZXVmRuSWg1cW9y?=
 =?utf-8?B?OXVJMlRVdFY1dGRUblRYbmpkWFFtZUpIYWZzbHBhOEJFdmI0K2FIUjhicDgx?=
 =?utf-8?B?Nm8zNk1qVEJiRTFFUk80RHEzQlBpZDVQTCtWME9QOGFUZGdiY2FtNUsxVnpR?=
 =?utf-8?B?dUpJM2NzbHdwWlBXRVdzdkF1aVl2Lyt2SlZ0MllIMjU3SStUMUd5Z3ZKb3Ji?=
 =?utf-8?B?YzRZYnFkdXRXQ2ZrYmU5UEwwZmdxek9pcE43SWhYZVVhdk1zR2JCSXAxNGNs?=
 =?utf-8?B?WmZVbjZLelE3S1htSHIxMyt0dmFEc2tVUG9HOUNZbmpzRlgvZlJKd0MrdnJm?=
 =?utf-8?Q?eu+M2lFF0ueMHGv4JRhTpNtmB?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3E0F42A7059C5B46B41090383761BE8E@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 35f1e6da-f103-4ff9-032b-08dd476de7ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 11:52:31.9729
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VI/gdPfymL+Ne38+AU2pPCLyrbXA5+mXSnTcodzv1FboFIh+ynHI17zmvYzOmWZgf7KpRGErEcjqOvNDmE+SJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR1P278MB1591
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 11:52:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64749

8J+ZiO+4jyBJdCB3YXMgYW4gZXJyb3IgaW4gdGhlIE1BQ0hJTkVPVkVSUklERVMgYXNzaWdubWVu
dC4gU29ycnkgZm9yIHRoZQ0Kbm9pc2UuDQoNCkFtIEZyZWl0YWcsIGRlbSAwNy4wMi4yMDI1IHVt
IDExOjUwICswMDAwIHNjaHJpZWIgRGF2aWQgRGFuaWVsIHZpYQ0KbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZzoNCj4gSGkgYWxsDQo+IEkgaGF2ZSBhIHdlaXJkIHByb2JsZW0gd2l0aCBteSBpbWFnZSB0
aGF0IGp1c3QgcG9wcGVkIHVwIC0gSSBoYXZlIGENCj4gY3VzdG9tIG1hY2hpbmUgKGNhbGxlZCBi
ZjEzMykgdGhhdCBwcm92aWRlcyB0aGUga2VybmVsIHJlY2lwZSAoYXMNCj4gbGludXgtYmYxMzMp
IHdoZXJlaW4gSSBzcGVjaWZ5IHRoZSB0aGUgbWFjaGluZSBhcyBjb21wYXRpYmxlLiBGb3INCj4g
c29tZQ0KPiByZWFzb24gdGhvdWdoIGJpdGJha2Ugc3BpdHMgYW4gZXJyb3IgdGhhdCB0aGUga2Vy
bmVsIGlzIGluY29tcGF0aWJsZQ0KPiB3aXRoIHRoYXQgbWFjaGluZSAtIGJ1dCBJIGRlZmluZWQg
aXQgdG8gYmUgY29tcGF0aWJsZS4gVGhpcyBpcyB0aGUNCj4ga2VybmVsIHJlY2lwZToNCj4gDQo+
IHJlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LWJmMTMzXzYuNi42NS5iYjoNCj4gDQo+IMKgwqDC
oCBpbmhlcml0IGtlcm5lbA0KPiDCoMKgwqAgcmVxdWlyZSByZWNpcGVzLWtlcm5lbC9saW51eC9s
aW51eC15b2N0by5pbmMNCj4gwqDCoMKgIA0KPiDCoMKgwqAgTElDRU5TRSA9ICJHUEwtMi4wLW9u
bHkiDQo+IMKgwqDCoCBMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly8ke0NPTU1PTl9MSUNFTlNF
X0RJUn0vR1BMLTIuMC0NCj4gb25seTttZDU9ODAxZjgwOTgwZDE3MWRkNjQyNTYxMDgzM2EyMmRi
ZTYiDQo+IMKgwqDCoCANCj4gwqDCoMKgIFNSQ19VUkkgPSAiXA0KPiDCoMKgwqDCoMKgwqDCoA0K
PiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xp
bnV4LmdpdDtwcm90b2MNCj4gb2w9aHR0cHM7YnJhbmNoPWxpbnV4LTYuNi55O25hbWU9a2VybiBc
DQo+IMKgwqDCoMKgwqDCoMKgDQo+IGZpbGU6Ly8wMDAyLWZpeC1taXNzaW5nLW1zci1kZS1iaXQu
cGF0Y2g7c3ViZGlyPWdpdDtuYW1lPW1zcnBhdGNowqBcDQo+IMKgwqDCoMKgwqDCoMKgIGZpbGU6
Ly9kZWZjb25maWc7bmFtZT1jb25maWfCoFwNCj4gwqDCoMKgwqDCoMKgwqANCj4gZmlsZTovL2Jm
MTMzLmR0cztuYW1lPWR0cztzdWJkaXI9Z2l0L2FyY2gvJHtBUkNIfS9ib290L2R0cy9mc2zCoFwN
Cj4gwqDCoMKgICINCj4gwqDCoMKgIA0KPiDCoMKgwqAgS0VSTkVMX0RFVklDRVRSRUUgPSAiZnNs
L2JmMTMzLmR0YiINCj4gwqDCoMKgIA0KPiDCoMKgwqAgTElOVVhfVkVSU0lPTiA9ICI2LjYuNjUi
DQo+IMKgwqDCoCBQViA9ICI2LjYuNjUiDQo+IMKgwqDCoCANCj4gwqDCoMKgIExJTlVYX0tFUk5F
TF9UWVBFID0gInJ0Ig0KPiDCoMKgwqAgDQo+IMKgwqDCoCAjIE9uIHBvd2VycGM2NCB0aGUga2Vy
bmVsIGltYWdlIGNvbnRhaW5zIHJlbG9jYXRpb25zIGluIHRoZSB0ZXh0DQo+IHNlZ21lbnQuIFRo
aXMNCj4gwqDCoMKgICMganVzdCBoYXBwZW5zIHRvIGhhcHBlbiwgd2UgY2Fubm90IGRvIGFueXRo
aW5nIGFib3V0IHRoaXMgYW5kIGluDQo+IGZhY3Qgd2UgZG9uJ3QNCj4gwqDCoMKgICMgY2FyZSwg
dGhpcyB3aWxsIG5vdCBzbG93IGRvd24gYW55dGhpbmcgKGV4Y2VwdCBmb3IgYSBuYW5vc2Vjb25k
DQo+IGF0IGJvb3R1cA0KPiDCoMKgwqAgIyBtYXliZSkuIFRoaXMgbWFrZXMgc3VyZSB0aGF0IFFB
IGNoZWNrcyBkb24ndCBicmVhayBvdXIgYnVpbGQNCj4gYmVjYXVzZSBvZiB0aGlzLg0KPiDCoMKg
wqAgIyBJTlNBTkVfU0tJUDprZXJuZWwtdm1saW51eDpiZjEzMyArPSAidGV4dHJlbCINCj4gwqDC
oMKgIA0KPiDCoMKgwqAgIyBNb2RpZnkgU1JDUkVWIHRvIGEgZGlmZmVyZW50IGNvbW1pdCBoYXNo
IGluIGEgY29weSBvZiB0aGlzDQo+IHJlY2lwZSB0bw0KPiDCoMKgwqAgIyBidWlsZCBhIGRpZmZl
cmVudCByZWxlYXNlIG9mIHRoZSBMaW51eCBrZXJuZWwuDQo+IMKgwqDCoCAjIHRhZyBuYW1lwqDC
oMKgwqDCoCB2Ni42LjY1DQo+IChiNGFjMmU5ZDU5OTExMTNhMDFhNjljYTkxYjJlOGVkN2Y4Y2M2
NmFmKQ0KPiDCoMKgwqAgU1JDUkVWX2tlcm4gPSAiYjRhYzJlOWQ1OTkxMTEzYTAxYTY5Y2E5MWIy
ZThlZDdmOGNjNjZhZiINCj4gwqDCoMKgIA0KPiDCoMKgwqAgIyBPdmVycmlkZSBDT01QQVRJQkxF
X01BQ0hJTkUgdG8gaW5jbHVkZSB5b3VyIG1hY2hpbmUgaW4gYSBjb3B5DQo+IG9mIHRoaXMgcmVj
aXBlDQo+IMKgwqDCoCAjIGZpbGUuIExlYXZpbmcgaXQgZW1wdHkgaGVyZSBlbnN1cmVzIGFuIGVh
cmx5IGV4cGxpY2l0IGJ1aWxkDQo+IGZhaWx1cmUuDQo+IMKgwqDCoCBDT01QQVRJQkxFX01BQ0hJ
TkUgPSAiKGJmMTMzKSINCj4gDQo+IA0KPiBJbiBteSBtYWNoaW5lIGNvbmZpZ3VyYXRpb24gSSBz
cGVjaWZpeSB0aGUgcHJvdmlkZXIgb2YgdGhlIGtlcm5lbA0KPiB3aXRoOg0KPiANCj4gCVBSRUZF
UlJFRF9QUk9WSURFUl92aXJ0dWFsL2tlcm5lbCA9ICJsaW51eC1iZjEzMyINCj4gDQo+IEJ1dCBJ
IGdldA0KPiANCj4gCWxpbnV4LWJmMTMzIFBST1ZJREVTIHZpcnR1YWwva2VybmVsIGJ1dCB3YXMg
c2tpcHBlZDoNCj4gaW5jb21wYXRpYmxlIHdpdGggbWFjaGluZSBiZjEzMyAobm90IGluIENPTVBB
VElCTEVfTUFDSElORSkNCj4gDQo+IFdoYXQgYW0gSSBkb2luZyB3cm9uZyBoZXJlPw0KPiANCj4g
DQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVz
c2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBWaWV3L1JlcGx5IE9ubGluZSAoIzY0NzQ4KToN
Cj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS82NDc0OA0K
PiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC8xMTEw
NTA1MTcvNzgwMTQ2NQ0KPiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZw0KPiBVbnN1YnNjcmliZToNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2cveW9jdG8vdW5zdWLCoFtkYXZpZC5kYW5pZWxAdnJhZy5jaF0NCj4gLT0tPS09LT0tPS09LT0t
PS09LT0tPS0NCj4gDQoNCi0tIA0KRGF2aWQgRGFuaWVsDQoNClZSIEFHDQpSw7x0aXN0cmFzc2Ug
MTgNCjg5NTIgU2NobGllcmVuDQpUZWxlZm9uOg0KKzQxIDQ0IDczOCAzMiAwNw0KDQpXZWI6IGh0
dHBzOi8vdnJhZy5jaA0KDQpJU085MDAxIHplcnRpZml6aWVydCB8IFNXSVNTIExBQkVMIE1pdGds
aWVkIHwgTGVocmJldHJpZWINCg0KDQoNCg==

