Return-Path: <joseantonio.cardenas@niko.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06799C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 11:40:10 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.73])
 by mx.groups.io with SMTP id smtpd.web10.35690.1653910800110801066
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 04:40:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=vu//rN2/;
 spf=pass (domain: niko.eu, ip: 40.107.7.73,
 mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WyVp0h4C3FnAGwsnfsQwmCn+5j1YRIn26N4KQeGf85mhXkJeaNrUSjSEEP+T6WxQ8Q9yHCoROwdO8z1AnEXtTf6MLuM362kYz2kqUMloGisYvhhUsXyEww7/0vY0oRy9anPe0IB2eLcOUIEHTxE5E75+05NzBlHsqYWJYSTv3vzbDlwl8JORRXm682ymtjeCZkjxcMiAvh00SwCHFU/l16+jBuUNujhqJnS2jgM02icKmrM56b9RuQ6n1lNRsbWVqHRPB2orofiUx8Yjsvgpu8Ol0E4fvVOU2vOhIxfzMb1hdVzFTHM//l82SmYITRJkBWvAaqcB3XCkhLGA+Cyt1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/hoCwo5btZS7bhTyxRB1JzyBzKXXIu48bGyWERPMgg=;
 b=iPEbyUXY7fRgfrLBil0H81LW9uJTiW2BIOw6Uu+zyevScyw4F2DNH75oIcbcrGNpPTa3+agAz9HEseAqx6/1JU3B3yqs21oUbCYP3tLAdMggodht284wbpm8wSC3rkeXkH5Ruw7cifwAdiwBoVm3mrZ8nVY5PD/LjmyLT2FXMk4Bho2Kh+wYPjgcFdib3yn4HtdUdeA91r2iSv0wIhxYRdSsJCRFGS5Zoe/R1r8Z/ckYWlYcc7Qax62VaU2UBuFwWiCkEkBdO+HriISPVZ7LEwdPc4MexN4LHI32Hc+L8Zy8V8NgFoJeHUduX5ZdAOXwCuzq1Pc8QuAu6J1GCK9LYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/hoCwo5btZS7bhTyxRB1JzyBzKXXIu48bGyWERPMgg=;
 b=vu//rN2/gmjm95ljZwqyFArXkLa88ITf1iQ2qwRDT7PBD1axDwFTe6aXqahcDaR5DV+trBr5IFK34DEzsu5gT9+d9xGjg+yuetQYO0LbJk5Q82T73wksavhrqscoCqjHvhoHloIOIb7o2WuwvQq4BO1m2F55wbe7030d0WpUnus=
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com (2603:10a6:7:2d::18) by
 PAXPR08MB7574.eurprd08.prod.outlook.com (2603:10a6:102:23c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.19; Mon, 30 May
 2022 11:39:55 +0000
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec]) by HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec%4]) with mapi id 15.20.5293.019; Mon, 30 May 2022
 11:39:55 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] How to modify an existing file from an optional recipe?
Thread-Topic: [yocto] How to modify an existing file from an optional recipe?
Thread-Index: Adh0FpcNFMhYq0RjS4y2H4LIFObtZAAAeBsAAABfxDA=
Date: Mon, 30 May 2022 11:39:55 +0000
Message-ID: 
 <HE1PR08MB28592FED495F7FF57186CBE98BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
References: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj9Lr+1edD9Ha4wMYGuEYgZX6y9D=wn26YOH0J0SMH0H=g@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9Lr+1edD9Ha4wMYGuEYgZX6y9D=wn26YOH0J0SMH0H=g@mail.gmail.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=niko.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b2b685d-0a73-4aa6-59c2-08da42311e14
x-ms-traffictypediagnostic: PAXPR08MB7574:EE_
x-microsoft-antispam-prvs: 
 <PAXPR08MB7574C2775FB1E090F829511A8BDD9@PAXPR08MB7574.eurprd08.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Bty7Dwiz4+WaiIcjkkLwPXf0q+/C5FfzmHhMezyQeprXLXtEd0mEoFipEqAmi4nXk2846ZkOOc1qTlAbP4wq9PsSs7090rx9V5ar9z6y7Zif3KiSlFQ1/RK51zcNV3QiDQxfZlXC5LZ6JNLbb6A6zIN+5w8I+0okTcxEIh3mrdjDWmQj+PlLQhWK18aPwHDeyfx94cLnuuXB+RJyQpI9Kc4LTtarkcXbCrck9X2a4y/afGm8qxOXmMgUMrvy/KWmtUlaSMgqL1qPonjct/snKQWpoLeYhLtyxhOSm1ZsiPnX35NfXTIaY+PHsuUIt66ya6Oc2WepPgx1cBYXsgOcQXd9cPl269VeiJKTe+Nz7g2BmlHApwm3HYTWHopWfB5cv6gaNBwF1tsOHgmErc/nfyuO++6RtlR9xutoSi7G2e2eCsXorDUmacJdT5XQEZiGu5Tgs6KJp8Z3cUZdbmseb/fCkIyqJXVSFeFGa4hChtvmiG4hB1gTZwY1b6hALx//+kKH7SMMm4NfiNPMeBw+W669XAEUjs/HTIZmoJq7EVe1K5yOxO1Q63iTb1Ui8dGbkuokCpjGtZR79BAjZ7rVDuQyjZ0FEM2UP2M5pYgp8BzjXd65inzv4NSglIlaaphH9BICPLbw7awVpHSKZwwQpLu5qOfjSiyn19lTmbSfV1JKBx18y/1craTQCw/3m11A6FQEcvd0jRl8aMLRShG8wtr4um+a02t9uZFlF+Sl8MHwarJkJ+GaBaC0RW6HHQbggMjo9TfGdSTP+zJXdG0U5O+SeeubJDMRPYqaomBOsZA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR08MB2859.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(186003)(55016003)(38100700002)(8676002)(316002)(6916009)(4326008)(66476007)(76116006)(66446008)(83380400001)(38070700005)(66556008)(66946007)(8936002)(64756008)(52536014)(6506007)(86362001)(966005)(7696005)(508600001)(5660300002)(33656002)(122000001)(9686003)(26005)(71200400001)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cWdEQ1BJekNDWUhUVGJLeXRoTGRWV3N5L0NRUkJKTDhMUWQ4aDhuVkxpUVBN?=
 =?utf-8?B?eUxzUjdyUHgxb2FNUG5DbG85MWxjeGpMazJ0VWtGYmpVV3AvNlJQV3MyeFUz?=
 =?utf-8?B?L1hzVXN2c1ZjK216WlJXYUluL0Y0TUVYSHN2ZVZvTGFkejNQUk81RW53YTZP?=
 =?utf-8?B?elJjb3FvNEF2a1dyVnFGaUFWSWdpYjlwQUozeUlDcXBlUitacXM5My9DNXhC?=
 =?utf-8?B?bFVZMkY5MG12MkR6RGFTTlV0Z3diQllRTnFOdVB1eEhJaTVxRjRWYjZDTnVM?=
 =?utf-8?B?SldjTUxtV0ZoZ0dFdVFDTE4yRTk5SWZWTktjclc0Yk9ZTURDOU9wQ3lHLzNK?=
 =?utf-8?B?U2x5TEtHWHNoNXcyUXhxREVDSHEybjg5RS8wOUlLSUlYN0F1Ti8zQm1CT3V0?=
 =?utf-8?B?NXJ5eW1UVDhBejc2NGhhblAzb0hmZUVTS3YrNnArdG5MVFhMRW9aaHZzUjk4?=
 =?utf-8?B?YnZSenJMaG80TDU0ZFJUb1A0Qloyb2luM1VucjVMUTZiOEJMS0I3T0U4eUtX?=
 =?utf-8?B?MWF5M0Joam5xb1FjVUU0ZjM5OFJaaHFnelJIQnhmRzd3c3dScWI2Z2QrRCtL?=
 =?utf-8?B?NzlwUzQ1NmhLeHIrTEl4eGF0Y3RoOFVtaWpGeHZ1QWk5QUJjY0VydzZQdmYx?=
 =?utf-8?B?L3dtV2oybnVscUV2WlZ2S2pGMWRuOVdYRUwvQUV0YTZTR0pDSFVtT2h1RnB2?=
 =?utf-8?B?cXozVjVhM0VmaytUMTBMaFMxZTNwYml1R3lWQUl5dHdVTzJoMlQvb0ZqNUhE?=
 =?utf-8?B?TkgyeDJqd0tlUXVUaVQ0dHRnYndyRnVJMllVc3orTlI3MEpIdVN2ejQzRWVx?=
 =?utf-8?B?ZXVRUTYrTmwxYWpMa3pLbTlLZGptWS93SUd6WFNnSXBROWFtS0V0eEYzS2hq?=
 =?utf-8?B?a2pEdmNpQzZGaVRKSEZvUFY0a0JIR1F1d29GSmNHR2ZLLzVRaEF0MzlOMnpU?=
 =?utf-8?B?anRDUGRReGE2U1BPRzJyYXBCaEd2cVdLOUl5WkJDMjhNKzBpekdNZFdMUldp?=
 =?utf-8?B?RlFXQkYwNzl5dDAzRkFYWkRyd0ZhQ2hEM3piNVF5OUVYdkY2aGxBT29YSEhS?=
 =?utf-8?B?MlRveVU4Ylo2YlJwRGRJU0dCYUNBZkJnSWQvUTI5VDd4cmFmVjhCb1pPb2Q3?=
 =?utf-8?B?TWVOWGJIUkJsYmZXSkxSV1N5SzBZR3o3Vk04dCthRm5iRW0zYjVVclhNdUxi?=
 =?utf-8?B?Ny91NXhUR0hUaU9mZlV5OG10dVRVam5wbXQ2VUMzYmZicVBMZm5Xd1A0Y2hI?=
 =?utf-8?B?b2ZPSFpkM0FHVkx0cDFQNUtMNitheEVtNTdaaEQ5RGJTWEVLZy9TNGc4dVYy?=
 =?utf-8?B?Yi83aS96VkJiZmNCeTJJRmozWTJLWGR2ckFqMmZSSkh1RmUrQ2xqOUliZVpS?=
 =?utf-8?B?WE93amx0OW1lVllGbXRGM0F5K2cxRmY1MzQxdVRWMDgwSGJ5Wi9landiWmhz?=
 =?utf-8?B?TUI5UWkwTjY1SncwRUpOc0VWSXFpSU1SVFhzbFFKODVsT1ppM3ZnMVhYdVY0?=
 =?utf-8?B?K2dPaDI0MGRYQ2VqdXZBM2ZXL0txcENxems1Q3BBR2FyV253NjVBMHIyTngy?=
 =?utf-8?B?aWlrNzZ5U1V0QmVxY3A0U0ZNZGN3QVcvQzE0MVVHalNMME9WYWlUSEg0LzE0?=
 =?utf-8?B?Y25HQW5yMEpENDJEM0h6VHllaE5HNFl1blNHVTkwT1MyNmFMZnBleDhKbzB6?=
 =?utf-8?B?c2lLeTZlYWc4WUlsV1dySEh4R0FnaU44YmFkdzFMVVFpaE42Sk0zZ2ZlUXI0?=
 =?utf-8?B?VHd5Y0M3M0RRYTNveHk0U1YzTmtUUytqYXRmVWtHdGxzQlNySkp0aUhQNFc3?=
 =?utf-8?B?MzVKYkdZcDk2dXdzZkN2aExuUjB4cnhlYjg1TlRMVFZHYUlPV0duWUdsbXlH?=
 =?utf-8?B?Mk13S2tGenloL1pCNTN2VEtnQXpHRzR0b3JDbHhyZUg3bFZYaEJQTlF6ZlRu?=
 =?utf-8?B?VzhTLzBrTHYwUnRnQXRKcFU2blhzY2FvWmJ4MFJTWDl4dGdlSDM4dkozeTky?=
 =?utf-8?B?MHpiTE5BWHZyMlgzYmxEbVNWVHBKQlptOStIVkhhZlR1MnhLQkZyMENqYTZz?=
 =?utf-8?B?SmZ6VzBpTHdweURpRXNvMGRWUkRZbmxoSFZ5eE1hcTJZOEozWFgwSmR6ZjNq?=
 =?utf-8?B?amozMWFZZkxXWlJUM3JkcTBoYjZXOFAvTFlSMHI1a0pVeVJoZ1RhNmFzWVh3?=
 =?utf-8?B?dmx2eHI4czZOaG9HTW5rNk8wNHVwTGxSMkh3WmlnbFVWK3pFOGxqa21CQWt6?=
 =?utf-8?B?Mkk0bW5TendHR0lMS3dvSXJZbWw5UnAxLzVHTzQvcEhmdno0R1UyNnJnVFdy?=
 =?utf-8?B?VUJTMUpmMHdGcVVYWmFUQ3ZXbnRrYW5QcEFZcG5qeXNxTmFZcWIvYkpjajVH?=
 =?utf-8?Q?muyyhoO1MZV1Ql9c=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR08MB2859.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3b2b685d-0a73-4aa6-59c2-08da42311e14
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2022 11:39:55.1358
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 wMgrXetxNQAdT2lZ9jF5eTPVp9hvwrC6clXeDQw/CSdbz5hGRs8oPMG7vy8Zkrqcrx/zkEht9QMuUaftXrUzWgLMBihxjemW/mTDg6nTsUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7574
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 11:40:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57213

WWVzLCBpbmRlZWQuIEl0J3MgYSBoYWNrIHRvIGJlIGFibGUgdG8gcnVuIHNvbWUgdGVzdHMuIERv
ZXMgdGhlICJpbWFnZSBwb3N0IHByb2Nlc3NpbmcgdGFzayIgdGhhdCB5b3UgY29tbWVudCByZWxh
dGVkIHdpdGggU0RLX1BPU1RQUk9DRVNTX0NPTU1BTkQ/DQoNClJlZ2FyZHMuDQoNCi0tLS0tTWVu
c2FqZSBvcmlnaW5hbC0tLS0tDQpEZTogQWxleGFuZGVyIEthbmF2aW4gPGFsZXgua2FuYXZpbkBn
bWFpbC5jb20+IA0KRW52aWFkbyBlbDogbHVuZXMsIDMwIGRlIG1heW8gZGUgMjAyMiAxMzoyOQ0K
UGFyYTogQ2FyZGVuYXMgSm9zZSBBbnRvbmlvIChKQ0FSREVOQSkgPEpvc2VBbnRvbmlvLkNhcmRl
bmFzQG5pa28uZXU+DQpDQzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KQXN1bnRvOiBS
ZTogW3lvY3RvXSBIb3cgdG8gbW9kaWZ5IGFuIGV4aXN0aW5nIGZpbGUgZnJvbSBhbiBvcHRpb25h
bCByZWNpcGU/DQoNCkNBVVRJT046IFRoaXMgZW1haWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUg
dGhlIG9yZ2FuaXphdGlvbi4gRG8gbm90IGNsaWNrIG9uIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVu
dHMgdW5sZXNzIHlvdSByZWNvZ25pemUgdGhlIHNlbmRlciBhbmQga25vdyB0aGUgY29udGVudCBp
cyBzYWZlLg0KDQpZb3UgY2FuIGRvIHRoaXMgd2l0aCBhIHBvc3RpbnN0IHNjcmlwdGxldCwgb3Ig
d2l0aCBhbiBpbWFnZSBwb3N0IHByb2Nlc3NpbmcgdGFzaywgYnV0IGdlbmVyYWxseSB0aGlzIGxv
b2tzIGxpa2UgYSBoYWNrIHJlZ2FyZGxlc3Mgb2YgaG93IHlvdSBkbyBpdC4gV2hhdCBpcyB0aGUg
ZmlsZSBmb3IsIGFuZCB3aHkgZG9lcyBpdCBuZWVkIHRvIGJlIHJlcGxhY2VkPw0KDQpBbGV4DQoN
Ck9uIE1vbiwgMzAgTWF5IDIwMjIgYXQgMTM6MjMsIENhcmRlbmFzIEpvc2UgQW50b25pbyAoSkNB
UkRFTkEpIDxqb3NlYW50b25pby5jYXJkZW5hc0BuaWtvLmV1PiB3cm90ZToNCj4NCj4gSGkgYWxs
LA0KPg0KPg0KPg0KPiBJIGhhdmUgYSByZWNpcGUgdGhhdCBpcyBidWlsdCBvbmx5IHdpdGggdGhl
IFNESyB0aGF0IG1vZGlmaWVzIHRoZSBjb250ZW50IG9mIGFuIGV4aXN0aW5nIGZpbGUgaW4gdGhl
IHJvb3RmcyBieSBkb2luZyDigJxpbnN0YWxsIC1tIDY0NCAke1dPUktESVJ9L215X2ZpbGUgJHtE
fSR7c3lzY29uZmRpcn0vbXlfZmlsZeKAnSBidXQgdGhpcyBjb21tYW5kIGlzIHJldHVybmluZyBu
ZXh0IGVycm9yOg0KPg0KPg0KPg0KPiBFcnJvcjogVHJhbnNhY3Rpb24gY2hlY2sgZXJyb3I6DQo+
DQo+ICAgZmlsZSAvZXRjL215X2ZpbGUgYmV0d2VlbiBhdHRlbXB0ZWQgaW5zdGFsbHMgb2YgDQo+
IG15X3JlY2lwZS0xLjAtcjAuNy5hcm12N2FoZl9uZW9uIGFuZCANCj4gaW5pdGlhbF9zY3JpcHQt
MS4wLXIxNTUuMS5hcm12N2FoZl9uZW9uDQo+DQo+DQo+DQo+IEkgaGF2ZSBzZWVuIHRoYXQgdGhl
IGJlc3QgcHJhY3RpY2UgdG8gbW9kaWZ5IGFuIGV4aXN0aW5nIGZpbGUgaXMgdG8gY3JlYXRlIGEg
LmJiYXBwZW5kIGJ1dCB0aGlzIG1vZGlmaWNhdGlvbiB3b3VsZCBiZSBkb25lIGZvciBhbGwgYnVp
bGRzLCBub3Qgb25seSBmb3IgdGhlIFNESy4gU28gd2hhdCB3b3VsZCBiZSB0aGUgYmVzdCB3YXkg
dG8gZG8gdGhpcz8NCj4NCj4NCj4NCj4gUmVnYXJkcy4NCj4NCj4gSm9zZQ0KPg0KPg0KPiAtPS09
LT0tPS09LT0tPS09LT0tPS09LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNl
bnQgdG8gdGhpcyBncm91cC4NCj4gVmlldy9SZXBseSBPbmxpbmUgKCM1NzIxMSk6IA0KPiBodHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzU3MjExDQo+IE11dGUg
VGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzkxNDI4NTkxLzE2
ODY0ODkNCj4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcN
Cj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vu
c3ViIA0KPiBbYWxleC5rYW5hdmluQGdtYWlsLmNvbV0NCj4gLT0tPS09LT0tPS09LT0tPS09LT0t
PS0NCj4NCg==

