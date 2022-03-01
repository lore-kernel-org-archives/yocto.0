Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 100B0C433EF
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 06:06:11 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.47])
 by mx.groups.io with SMTP id smtpd.web10.5311.1646114768369781428
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 22:06:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=dHpfKnyv;
 spf=pass (domain: optimeas.de, ip: 40.107.7.47,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8qUKjF4uYXyvmRpVRJhsrSPO1Ud29FNJ1UsLHuZRJUDt24ucAPCVqsmIqMHebzx4E5jqGLZlYD02vpYz26GXszzrP3yluFAQFb1kV/4tdaGNxmOIqmZTncmUrQ7xAdLGWYvlZktV0l18I+Lk3w/4oSaQhY9V+bpzK2Zc8N9wIU+M5Py3Ot3UUbidQpbdZ+lJ7Anq9Jz9QL/63dVviuCJGTqzG6DPmIhKa0cT3Qg/kGYZJuBk1Ojsze6g/Sk54Elcn6Igf/x5z+LHaVtf5YzOaEvmXxIWCaAR8hYduo9+isADuWefRm0f3LXQRt0aA3W+TUOZ/iHPPG+i6i9y1LnPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qFczPEAC4PGeTK6kRPjHmj5I2YbWbqlAaZMGv53rSXE=;
 b=OnOsuUXPpRWxhvsMnpwkAFDPsW0fV910hFPWqSFTlD3sOeWbHdwCNCR5m6eb9xNRgUi38moBiXBotZI3QyKAD1mFvgZhlZLlrtk6yhJ0tL0IFgfOs8JuVPDE7MPiBtAxsxDOUi8N0TT7wEqTm5vXz10Q5bzA456q124/RcTMw7VlMY+Xweu/JT0i7RdTpL161QJ9d7taWLCF5Ig3VfMR6RQPAWqLvBSbF2AA0GtcQ5IoG5oIxKtxgdwSfdAzUB5zLavpAKTbzhPO5smJ23AhMaX9S8s5jsj5RDfqMt7utYS2ye6nIRjEiNu8+A8kDL+S1yoGup/TZ1ZDorrsmb4Krg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qFczPEAC4PGeTK6kRPjHmj5I2YbWbqlAaZMGv53rSXE=;
 b=dHpfKnyv5Kefbd3xxWpSf4zLYgySQ+IbDqNEmjN6aa9nPiP7jbYOSzG4RRdzRCeMcVf+F4KBrRSyzrWK9TbxNU6HNIZ30P8CAvuCuhutD1JYi4xNXNdmLnco1RDf9WTCzWu3GpE9Im6bms64+xyTAdtD0T7rK5Fb5cJRZ3QsoVA=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AS8PR10MB4725.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:337::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Tue, 1 Mar
 2022 06:06:04 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731%6]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 06:06:04 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Khem Raj <raj.khem@gmail.com>, Konrad Weihmann <kweihmann@outlook.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Tim Orling
	<ticotimo@gmail.com>, Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: AW: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Topic: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Index: AQHYLMXbpBlP1j5cmEeaztKMOU/KbKyqCoiA
Date: Tue, 1 Mar 2022 06:06:04 +0000
Message-ID: 
 <AM0PR10MB3107EB4581D02659E35986FE99029@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB4642ED6A0F16027A770DD9AFA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <AM0PR10MB31070795E5754234F7ED07ED99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB46428B0965F4ECB7AF9ABC89A8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <CAMKF1soa6JjfcSuiMKx7zcf7sTf=SNvQidtuCv0YAC6nJac5vQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1soa6JjfcSuiMKx7zcf7sTf=SNvQidtuCv0YAC6nJac5vQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4ea335e-491a-41e1-80db-08d9fb499185
x-ms-traffictypediagnostic: AS8PR10MB4725:EE_
x-microsoft-antispam-prvs: 
 <AS8PR10MB47252C64D5115B882E5E651B99029@AS8PR10MB4725.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 j9UykFPOKgPmjWGOYYgO5Oy2jRJexSqYixU4A6q3cyLLgYTyNC9gTgmk1oX6CQlUkPHPQ4AMgKcb3Tj/UJOv4ncRIloB6lr9PiS+hQEUxvAjeS1Us18vBG4lWyU22UDSfRTdyFYRUp2WhD99lXkBlk/onxq05ke7lYKYBIQcCeuX110Wi+xbrAH20N/njduSBFdN89yQpZyozO+Bbg7HBwaOlqZaCcrBLHq2+EaDSDZ99UeJXAjnMYkYxZORKRxn4ssFDG3tzVr956zf831fwpKVDgHjq8SsPBWG0NkJXltuQudtYTFEFRtmd+iERo+M/a+B4W38pAh9JejoCrzBlxu8SKrs8jNVwOzpwng8l1jWzRrUtFUQeuoud/pbFSVhwwpxCx0sXD8/4J9Z+ra58fu3T/FNUZoQmBNjT++3Q+YAIxGFW7i/4/jzCcP1CeXPL0zsrtjDglGraru1UzO36xSScH3BS2qOL6ZDc/D/CKdyQHTNJYskr4nvhbksAdzeyBCGU5Dm5L82lIyH6i43g6sOKsajb28smJ9iT6/q744JOvbxkT1p5DizBj/FO465PVFSwrEA2sIuPOKIWWCrnw106xf/A6o08BtVYurB2yGt052HstURWAvsgefQdX67zPXKYomt50FbRdxG5dWDKHBIizxQHhm+hFZHO3BSL7e5bypnt869fKgDInb4qe4U8/YvZmAlnLQKAHojndFDc9Ob2/oaguN7Yy36mDCXOm8Fe+lJuByj/mThtRiZK+Crk2hO43B6x1cc8d03Hn3QxZS+N5u4r0RHHr72lxC6ZHE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(136003)(39830400003)(396003)(346002)(376002)(366004)(966005)(38100700002)(6506007)(53546011)(4326008)(71200400001)(66574015)(9686003)(122000001)(508600001)(55016003)(83380400001)(110136005)(54906003)(7696005)(44832011)(316002)(8936002)(52536014)(86362001)(38070700005)(5660300002)(2906002)(33656002)(186003)(66556008)(66446008)(66476007)(64756008)(76116006)(66946007)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?NVBRcFhPMWFGN0ZjU0xuN21hOWJyS3pDSmVhMzNSdjlDU01va2w0bGRmR3ky?=
 =?utf-8?B?WmQwVy83UjVhamoycEdpR05tdERoV1VGaU9sZnZXNWVRTlc0azV4WFF4azlk?=
 =?utf-8?B?SlcrYlFLbldacHQ5Q0k5SmFVcUp4NUNUeCtRQ2lZalRzSVJ3ckIyckhIWnBZ?=
 =?utf-8?B?Yy8zajMzcXRFODZ1Tjh2aDIrVVlEQ2lBbEwvSTFBTWFoUWdWZlBtZ0VxN3JL?=
 =?utf-8?B?VTVkTkNMeVhuQXdWYjB1R1JjWjFTNnZDcERNU3NJaGZOQk9WbStEOVNhWk5W?=
 =?utf-8?B?VFdESkM5UlVSdzd6RnRoZ08yeFRPb2NBRXlYUG9NT3BOcHBiUktKdDJ5M2Jh?=
 =?utf-8?B?UFp5cHZFSWp5b1ovTTVFWkFCVjJBNHA5TzZPT3lObVphUE94ZjArdjc0UTNH?=
 =?utf-8?B?c1U3M3QyUU5uNjlrZkZTNC9ablBaRW83Mm04VUJXc05vWmJqUXh0NWh6Sms2?=
 =?utf-8?B?clFuREp4cEZJdDF3Zng3ZTBlMmsrYVNqRTNvT0YyY2VMUmo2blZneXQ1ajhi?=
 =?utf-8?B?ZENXcU9kSXk5Tkg4aUhocmhJYVZGQ1ovSVk3QmRBSXRPbXZMMTVYeXRxV3NQ?=
 =?utf-8?B?cUJxRVowUWlKM3RkUFF2QzArRHlocUdwM2ZqSnNITTJpY0RjbytxK3lnN1Z0?=
 =?utf-8?B?WlRqTktrNW9mOW5qd3p6K3ZwSFVsR2JqWE5tSjF0MFJkVzB1cDlxUzhRNCs2?=
 =?utf-8?B?NUdiVEd4WFIwV3l6N3c2RU13eDVaUlpPeVlZdmZpOXRnNlBab0s0NkFPTEhV?=
 =?utf-8?B?RnorTjEvWThkVXdkVVJuYjBKN2NYdTZUR004ZnNNWW5BUzdsT3R4Q2hXdk1L?=
 =?utf-8?B?QmpmaVcrczlzYi9KMldCUzZtUjVlWURKMG5tWkJySkV6d3piTUNKZURTMHlL?=
 =?utf-8?B?QlIxUlBtcXVyc1pvY3NCbDNkRUVOelFGWG9wTDRUc2FRZjhTWnNGSWM4bGgx?=
 =?utf-8?B?NXg0VjJMc3BDSGVad3lYcGRSNlgyUjR5VGZLczNTM0RzamVuRjkzZGV2V1JJ?=
 =?utf-8?B?bnh3M0RPcDVLT1dCekJBRm0zc1FBRnc1R2JRbkI1U0c1VTZqQ09Mb01XT3dv?=
 =?utf-8?B?b05kRUZ6cERyYm5vOExXN3JTZzVVQzJwQUpYMVM0aGlWSWFYNTVPNUYwNDRK?=
 =?utf-8?B?bmdoRnF3NjU1WC9VcWpJM3RBeW16RTNkdmJ4bXVlNWlPNi9vc01CUFJyMUJo?=
 =?utf-8?B?a0Y4eFB2S1p5NzVHWVJkV1R4QXNoZUVSRWJhb01MNmQ1UTVEVG9WWExMSElw?=
 =?utf-8?B?Ri9ZZTNkTzYxZHVHMWxmeFpQbGYyMWlzbjV2ZTZyRDNkWHZmdjRoRlUrVGNF?=
 =?utf-8?B?WVNBOFJZeWpQTGtsK3M2NkNaUDZhSDZQbzlIcGtBdUZveVd0dHRxNDRjc0ZL?=
 =?utf-8?B?TkJqRTJMcStjcnNlT2M4OGRMTFd2U2N0N2tuRVFvc2tiQlR5ZjRaREhPL0No?=
 =?utf-8?B?RE9uVzJCMDkvZWJqVThhYTBMZ2lhNWdwSFVKTWxrakxGc3lGSm5mb0lYOFFm?=
 =?utf-8?B?ZUxhS253WGVlU2hnbExWZEViQThhVFpjQkVRaUxEbzZROXU4QzRNL296NUlO?=
 =?utf-8?B?cjRyelphd0dCY1NEZjVIU1hOMmI4NmpCeFVCSmhvdXI1ZEFzYjdQN3FUUEhE?=
 =?utf-8?B?dmFGeC9PaWJFVVN4ZTYvcHZRVkhhVVZOS0NoUHdDLzRRMVFqbHU4cnhBdlJi?=
 =?utf-8?B?cEVURTliZkNkV0wrZmRiTWdQL2ZzUE5EeHNJSitiVElMZCtMTW1uZEtJeDJN?=
 =?utf-8?B?OHJxRm9VdlMxMXFpTGFVc1EzTU1QdzlKT1d5K24zQnRCNEZ4U2czR2RNUnBa?=
 =?utf-8?B?dkFKQm1DVzBEY0gyenQzZWxOL284cVZHaVlxaURieitGMDRMbDN3VDhRMVVq?=
 =?utf-8?B?UmMzQ20yQXBoTTJhVkp5U3Zjd2hFMXdhNGNvRUQ0MUV4dTVUaDhkTVV2ZlYz?=
 =?utf-8?B?YWwzTWJlZFE5Z01ubGs0VzZNaE9nV1pqMVNMaGV0NUZ4emNsWXpWYXp0dldk?=
 =?utf-8?B?VFZnYjY4VkFGS2VlMFhXVXErOWlnYm5NcmhucDVXb0VmV0drV1JwTjBOZ3h2?=
 =?utf-8?B?NktIUkd5ZnlmSCswZXNyblpadXBtUWdvUXdScHZFcjUrbVovT0hPTlpUZkVn?=
 =?utf-8?B?WEFaaVMvcDUzQVlQR3BiMW1KejFlOHNvKzRiSEI1UnpWZ3VEbGhieVlPOUk1?=
 =?utf-8?B?SW9wWEo1VG5FTTVPdWlyeDNndVpvamFiaGtWbmhMaU5aUC9GenB5K2RicWpr?=
 =?utf-8?B?emlsRXMwakN4TUhXTHd2ZnROeVpEeGhMQlVlR2QrazFXODBhYmhabjYwTC9P?=
 =?utf-8?B?RmtDY2ZCdEFMUVhMelB1alZZSm1nL29IK0RrSkY4OVdXV2NnRi9OZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b4ea335e-491a-41e1-80db-08d9fb499185
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2022 06:06:04.1015
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ywYyW50aY7HtAfsz+FNZWESDJOQNNpggpvPfj2rWD2ouVqBwOSIorHmZuTju1/33tNgcera60QIqbX6ex5WdwEL50Xg17f6dun6n8hNnBxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB4725
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 06:06:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56331

SGVsbG8gUmFqLA0KDQp5ZXMsIHlvdSBhcmUgcmlnaHQsIHtCfSB3b3JrcyB0b28sIGFuZCBsb29r
cyBtb3JlIGxvZ2ljYWwuDQoNClRoYW5rcyBmb3IgYWRhcHRpbmcgbXkgcGF0Y2ggYWNjb3JkaW5n
bHkuDQoNCk1hbnkgZ3JlZXRpbmdzLA0KTWF0dGhpYXMNCg0KDQotLS0tLVVyc3Byw7xuZ2xpY2hl
IE5hY2hyaWNodC0tLS0tDQpWb246IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IA0KR2Vz
ZW5kZXQ6IE1vbnRhZywgMjguIEZlYnJ1YXIgMjAyMiAxODowOA0KQW46IEtvbnJhZCBXZWlobWFu
biA8a3dlaWhtYW5uQG91dGxvb2suY29tPg0KQ2M6IE1hdHRoaWFzIEtsZWluIDxtYXR0aGlhcy5r
bGVpbkBvcHRpbWVhcy5kZT47IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IFRpbSBPcmxp
bmcgPHRpY290aW1vQGdtYWlsLmNvbT47IFJpY2hhcmQgUHVyZGllIDxyaWNoYXJkLnB1cmRpZUBs
aW51eGZvdW5kYXRpb24ub3JnPg0KQmV0cmVmZjogUmU6IFt5b2N0b10gcHl0aG9uMy1zbWJ1cyBu
byBsb25nZXIgYnVpbGRzIC0gRG9lcyBhbnlvbmUgaGF2ZSBhbiBpZGVhPw0KDQpPbiBNb24sIEZl
YiAyOCwgMjAyMiBhdCA1OjEwIEFNIEtvbnJhZCBXZWlobWFubiA8a3dlaWhtYW5uQG91dGxvb2su
Y29tPiB3cm90ZToNCj4NCj4gSGkgTWF0dGhpYXMsDQo+DQo+IHlvdSdyZSByaWdodCA6KA0KPg0K
PiBQWVBBX1dIRUVMID0gIiR7U30vcHktc21idXMvZGlzdC9zbWJ1cy0qLSoud2hsIg0KDQp0aGlz
IHNob3VsZCBiZSBCIGluc3RlYWQgSSB0aGluaw0KDQo+DQo+IGZpbmFsbHkgZG9lcyBpdA0KPg0K
PiBAVGltIEBSaWNoYXJkDQo+IFBZUEFfV0hFRUwgZG9lc24ndCByZXNwZWN0IFNFVFVQVE9PTFNf
U0VUVVBfUEFUSCwgd2hpY2ggbWlnaHQgYmUgDQo+IGFub3RoZXIgaXNzdWUgdG8gZml4DQo+DQo+
IEJSDQo+IEtvbnJhZA0KPg0KPiBPbiAyOC4wMi4yMiAxNDowNCwgTWF0dGhpYXMgS2xlaW4gd3Jv
dGU6DQo+ID4gSGVsbG8gS29ucmFkLA0KPiA+DQo+ID4gdW5mb3J0dW5hdGVseSBpdCBzdGlsbCBk
b2VzIG5vdCBidWlsZDoNCj4gPg0KPiA+IEVSUk9SOiBzbWJ1cy0qLSoud2hsIGlzIG5vdCBhIHZh
bGlkIHdoZWVsIGZpbGVuYW1lLg0KPiA+DQo+ID4gQmVzdCByZWdhcmRzLA0KPiA+IE1hdHRoaWFz
DQo+ID4NCj4gPiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQo+ID4gVm9uOiBL
b25yYWQgV2VpaG1hbm4gPGt3ZWlobWFubkBvdXRsb29rLmNvbT4NCj4gPiBHZXNlbmRldDogTW9u
dGFnLCAyOC4gRmVicnVhciAyMDIyIDEzOjU5DQo+ID4gQW46IE1hdHRoaWFzIEtsZWluIDxtYXR0
aGlhcy5rbGVpbkBvcHRpbWVhcy5kZT47IA0KPiA+IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcNCj4gPiBCZXRyZWZmOiBSZTogQVc6IFt5b2N0b10gcHl0aG9uMy1zbWJ1cyBubyBsb25nZXIg
YnVpbGRzIC0gRG9lcyBhbnlvbmUgaGF2ZSBhbiBpZGVhPw0KPiA+DQo+ID4gT24gMjguMDIuMjIg
MTM6NTYsIE1hdHRoaWFzIEtsZWluIHdyb3RlOg0KPiA+PiBIZWxsbyBLb25yYWQsDQo+ID4+DQo+
ID4+IFRoYW5rcyBmb3IgdGhlIHF1aWNrIGZlZWRiYWNrLg0KPiA+Pg0KPiA+PiBIYXZlIHlvdSBi
ZWVuIGFibGUgdG8gYnVpbGQgdGhlIHBhY2thZ2Ugd2l0aCB0aGUgY2hhbmdlPw0KPiA+PiBJIGdl
dCBhIHNpbWlsYXIgZXJyb3Igd2l0aCBpdDoNCj4gPg0KPiA+IERhbmcgLSB0aGF0J3MgdGhlIHNl
Y29uZCBpc3N1ZSBiZWluZyBvcGVuIGluIHRoaXMgc2VyaWVzLi4uDQo+ID4NCj4gPj4NCj4gPj4g
RVJST1I6IHNtYnVzLTQuMy0qLndobCBpcyBub3QgYSB2YWxpZCB3aGVlbCBmaWxlbmFtZS4NCj4g
Pg0KPiA+IFRyeQ0KPiA+DQo+ID4gUFlQQV9XSEVFTCA9ICIke1BJUF9JTlNUQUxMX0RJU1RfUEFU
SH0vc21idXMtKi0qLndobCINCj4gPg0KPiA+IGluc3RlYWQgLSBhbmQgaXQgc2hvdWxkIHJlYWxs
eSB3b3JrDQo+ID4NCj4gPj4NCj4gPj4gQmVzdCByZWFncmRzLA0KPiA+PiBNYXR0aGlhcw0KPiA+
Pg0KPiA+PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQo+ID4+IFZvbjogS29u
cmFkIFdlaWhtYW5uIDxrd2VpaG1hbm5Ab3V0bG9vay5jb20+DQo+ID4+IEdlc2VuZGV0OiBNb250
YWcsIDI4LiBGZWJydWFyIDIwMjIgMTM6NTENCj4gPj4gQW46IE1hdHRoaWFzIEtsZWluIDxtYXR0
aGlhcy5rbGVpbkBvcHRpbWVhcy5kZT47IA0KPiA+PiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnDQo+ID4+IEJldHJlZmY6IFJlOiBbeW9jdG9dIHB5dGhvbjMtc21idXMgbm8gbG9uZ2VyIGJ1
aWxkcyAtIERvZXMgYW55b25lIGhhdmUgYW4gaWRlYT8NCj4gPj4NCj4gPj4gSGkgTWF0dGhpYXMs
DQo+ID4+DQo+ID4+IHRoaXMgaXMgY2F1c2UgYnkgbWVyZ2VkIFBFUC01MTcgY2hhbmdlcy4NCj4g
Pj4gVG8gbWFrZSBpdCBidWlsZCBhZ2FpbiBqdXN0IGluamVjdA0KPiA+Pg0KPiA+PiBQSVBfSU5T
VEFMTF9QQUNLQUdFID0gInNtYnVzIg0KPiA+Pg0KPiA+PiBpbnRvIHRoZSByZWNpcGUgb3IgYSBi
YmFwcGVuZC4NCj4gPj4gTWFpbmx5IHRoZSBweXRob24zLXByZWZpeCBvZiB0aGUgcmVjaXBlLCBt
YWtlcyB0aGUgbmFtZSBndWVzc2luZyANCj4gPj4gZmFpbCwgSSBzdXNwZWN0IHBhdGNoZXMgdG8g
YmUgaW5jb21pbmcgc29vbg0KPiA+Pg0KPiA+PiBCUg0KPiA+PiBLb25yYWQNCj4gPj4NCj4gPj4g
T24gMjguMDIuMjIgMTM6NDUsIE1hdHRoaWFzIEtsZWluIHdyb3RlOg0KPiA+Pj4gSGVsbG8sDQo+
ID4+Pg0KPiA+Pj4gdGhlIHB5dGhvbjMtc21idXMgcGFja2FnZSBubyBsb25nZXIgYnVpbGRzLg0K
PiA+Pj4NCj4gPj4+IFRoZSBpbnN0YWxsIHN0ZXAgZW5kcyB3aXRoIHRoZSBmb2xsb3dpbmcgZXJy
b3IgbWVzc2FnZToNCj4gPj4+DQo+ID4+PiBFUlJPUjogcHl0aG9uM19zbWJ1cy00LjMtKi53aGwg
aXMgbm90IGEgdmFsaWQgd2hlZWwgZmlsZW5hbWUuDQo+ID4+Pg0KPiA+Pj4gRG9lcyBhbnlvbmUg
aGF2ZSBhbiBpZGVhIHdoYXQgaXMgdGhlIGNhdXNlPw0KPiA+Pj4NCj4gPj4+IE1hbnkgZ3JlZXRp
bmdzLA0KPiA+Pj4NCj4gPj4+IE1hdHRoaWFzDQo+ID4+Pg0KPiA+Pj4NCj4gPj4+DQo+ID4+Pg0K
PiA+Pj4NCj4NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gTGlua3M6IFlvdSByZWNlaXZl
IGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFlvdSBhdXRvbWF0aWNhbGx5IGZv
bGxvdyBhbnkgdG9waWNzIHlvdSBzdGFydCBvciByZXBseSB0by4NCj4gVmlldy9SZXBseSBPbmxp
bmUgKCM1NjMxNik6IA0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9t
ZXNzYWdlLzU2MzE2DQo+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2pl
Y3Qub3JnL210Lzg5NDQ5MjIwLzE5OTc5MTQNCj4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViIA0KPiBbcmFqLmtoZW1AZ21haWwuY29tXQ0KPiAtPS09
LT0tPS09LT0tPS09LT0tPS09LQ0KPg0K

