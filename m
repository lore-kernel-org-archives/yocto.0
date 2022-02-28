Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBDDC433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 12:56:31 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.43])
 by mx.groups.io with SMTP id smtpd.web10.19292.1646052989680546627
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 04:56:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=rgymrpJn;
 spf=pass (domain: optimeas.de, ip: 40.107.2.43,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VbnZe5RsoWn6OYWQtGT5dbBQ6r0wU1lGYyJmqRqVnQnowdVEHIC01+ZbLVRub0mtIxu285TG4A8tVsMyGdTfJLVOefYrGDfWlrzi69krlWmU8lpPAgIcNXIfixQd5x3STzRpqdSlzpNApenXf14HpsWAKXILt8iujEgqgHMgcvJMbHaEth/FwUDAUQyaEzLHrUsQGG4M86XY0F8fQ3FYUhbYiXAn8Pcd5ZG0psGXudsEt2WgMcdSM1lAqCY3Y5ZR8ztKwDBlW2bn8zJnDV2R1YzVHPCy56TNIMVfOVf1X7eZZP7J7s1xs3EbfrTzdeVSymfrNB9T+89aqcDBALjOwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hMG9ugEOCt8T8JJRvpT0hG2owUbG4F4FRM0B8xRanXg=;
 b=mn8KPZshleotJVtLJdQ9aDJiz4aaWkNheakrvRtZtM/fJdL8e3336rEch6CKSCDhu8FQbxnp/aFJ0Z9n/9dLqLv46F45p/JJs//psUPMof0d1l1IX2frEb4Kxbol5gpSoIJWrJepfx8GFWBoPstp9gaY3LhYrEzSssmAuYUeKBiY4YzQ5rTrsOTX7KUZ5Vfu11x7WZwReZg40w6LuMTwYnMBfVeMzOeIBHJ2gchLYGZmCCru3B/9A+da4Wcvn+dfBqoDK294ly7y2LOhIAMqOw/uhQUYVPyXeInVYSTu3R84D9NBwkwn2Dat8QdQIAFqnKtTaNgxQxyFebKQayQ2hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMG9ugEOCt8T8JJRvpT0hG2owUbG4F4FRM0B8xRanXg=;
 b=rgymrpJnm0ilunSqmDXiEYRDvzz66yE5pdI2eLDUeGcNXdWDGcmAGTDPgyfpKUoIKMjVf8rhDTbzFipGB8WKD+h0E44BrTZbXQWgsmog4rUQ1oN1odvX7tcZMaH9CMJyJtdW8p2EUemsxa56eiRD9w3h2ujc8D9idI2YDc+NA7I=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM4PR1001MB1268.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:200:90::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Mon, 28 Feb
 2022 12:56:26 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731%6]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 12:56:26 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Konrad Weihmann <kweihmann@outlook.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Topic: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Thread-Index: AdgsoDxwz5nPM39dSs+Z5RVAclHBUQAAYmGAAAAVuDA=
Date: Mon, 28 Feb 2022 12:56:25 +0000
Message-ID: 
 <AM0PR10MB3107024590B74E59994FCDD399019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4cb0ddb0-eb45-43fa-959f-08d9fab9bae4
x-ms-traffictypediagnostic: AM4PR1001MB1268:EE_
x-microsoft-antispam-prvs: 
 <AM4PR1001MB12682284FBFCE93D2F2DB8CA99019@AM4PR1001MB1268.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OPdE6mL4l1QCiEqlcqKNVchXOx+6vJUiMplizfsYMTc0qQM9jft02114Al5oiPMhwRQmA910tj1Kq8DOVrIb5myK/enY1QNPPGHLU576wr+fB1ckwggHWmkOPwp+ZCJVm/g/5NiQG1HZAKiAdvXd9NGaV704Lz9Rhuj7xBG+rwTq1r7yEh+AXOcKuaBby7SNM2VYnSz8ZZ8uRx4vPv1EIC8juE0o4lkvc+ueergw/xf2Irfe9TnzKE0wt+JLjIGnnP6GL/Lc1rbL6LUbDCUiF7GTHHcNK30NK1tpATb0MiyaDQURwcY6CwKz7smyKsmAwA14iKCp8dJi6rtMsGVaSLUrOvTVItgadUauXWIzwAxEPMq8NofjDsEuqCIEUH2vtqZ4mCBxAvpguhe79bQ+iRc3XDCTckCmNxkO636CNPTG/2u8kuaMmICgfFrjoIum9k8pX76eDZTPz/gIUadwE5FY9LLcQ0I1kEz9qqZPKZjWMWiHfzW3dlG2VzeVmYRRpo2AA0oLyrlJdCU02S5K2kKlwv5O38381d8Mx5WxbBOcIPd9YVIJ+omqMJ6SdByqF3mwAn+D5ktitfToO1TK8rShXnzHyMARIDTjgS5MdCloOWDxNwnVgW3SUoo6V6TqhnAXvF8HMaGpEEiuILmucHia9J5TlKgG8eOP/B18c1VfGFZcxGL097j1BnTZqgrQzpeqod6FxeGJWER3kW5xuwP7xqGJR5mEWn63phIVql1dc+vc8cincN16DQRDe4bsGS3x0thMNnOZkBGj76+K1UTUyuqCTIGwkyUGukfLMxA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(136003)(39830400003)(346002)(376002)(396003)(366004)(44832011)(2906002)(76116006)(64756008)(66446008)(66556008)(66476007)(66946007)(8676002)(38100700002)(5660300002)(38070700005)(8936002)(86362001)(122000001)(52536014)(33656002)(186003)(9686003)(508600001)(45080400002)(966005)(71200400001)(6506007)(7696005)(53546011)(316002)(55016003)(110136005)(66574015)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?WGRUOHYrY1NvRVVkZXJiNUFCSU5rZE9iNzBnb2hLYXZnZFgvS3QrZGo2bUl1?=
 =?utf-8?B?bUZqemxDTWE2OENMbmxLcXNBb01ZV0I5SkJVNHhVWmxzVDRIeXZkYzU2Y3li?=
 =?utf-8?B?VXdKRE96cmxRSDRZZHdUZVdJNEdFelh5WmtKWGdvZGVkY2ZKbWJlbVVzeW1x?=
 =?utf-8?B?SDBJazBhOGVXeXFON3Q0TCtmMEl0ZlZETHl3WWZJK0ZqakhPc2RpOG1melYx?=
 =?utf-8?B?QU5Wc2xsKzg2a2Q0cVE3WCtHM0htZDk0ZldYZlhZUE51a044cWdiM0lHYW03?=
 =?utf-8?B?OVdwczF5eldrWklRK0t2V0ZWcU02TWR3Z2xaUUU0UlpQRUpjYmNIMDRXM0FC?=
 =?utf-8?B?SitjUVMzdDF4QU5IcjVYS253QVBrQkJ4TEhwZE9nNU9zSHErSEwrNVo3OFB1?=
 =?utf-8?B?SDBRTW1HR01OcktpeXB2VEtwMmZiUnoxN0IwSFJWejJybzVkSXFmUk1pNVdm?=
 =?utf-8?B?WCtBWlduU3VPcVpqbC9KbWZqRjJZVEVLQStGcTZWcXJMeW9yYWpvYzdrSHBh?=
 =?utf-8?B?b0Jia0NCalRYZFZlL3ZGMXBUcUZaZGFrRWZoVllSY3VmaVhoSytpbkgwaGFW?=
 =?utf-8?B?OHpzNDZ6RUR2dEZLWUZFSEgvaXdaYnpUSWNGcDhsd0JPZEs3VUNVMWtDL1Y2?=
 =?utf-8?B?UnZTaVBZL3RvbE9Td3kzRmZaUkRKeEV2Z2hCcFQ2a1Vpc3g0a3greUhzekc1?=
 =?utf-8?B?eGwyaWcxTUh2UTZSeWdoRTBkKzlWZXJIYWQ3cjZXanc1ZkpYckFrdXVIQi9T?=
 =?utf-8?B?UDladU1qeXA2VDFqM0VydDd2VURWNTNOYkJveksxcGlXVEh3ZG53T1FKK0R2?=
 =?utf-8?B?UzZGSFB0eUZDeHlhbG9oQTFhZmhoNjhENXlqL3dpeVBxTVlmdmdsYnVrR1Jk?=
 =?utf-8?B?TEEwZkt2TGpsT1Jyb09oYUJTc1lzcHNqaE4rSXNMeE1xaFpTZjUrVk9QUXlz?=
 =?utf-8?B?RzB5QVpDamRFUi9LUzlsQi96Zy9vMWxjRlFrM04yK3NRNkc5K3pKNE9KSG02?=
 =?utf-8?B?WEdRVnBPbEprYi9DdVJqQVd5akVXK2FabndrZkRPQlNxTXFyWlFGVmVmYkFC?=
 =?utf-8?B?NkQ1Vjg4ZjVoSTFWQlV1VUV2TlMvS0k3SHhkcDFZZVZwVlhZY0RCK3hwYVRD?=
 =?utf-8?B?WGNwRDJtWk50R2ZpZCs4blVpY3lzS0JzcmlXOE1xUk5UckhmalRBNE4veStE?=
 =?utf-8?B?L3ErM1VQT0xvVTRhcm85MWExMmFncVlCakRxWEpIbEtKR3hIWTh2ZkhKMUxK?=
 =?utf-8?B?UGhPek5QeGpHRUtCdlp0V0I1YTVMTnNkMmNuYlVMQVppY3VPM1lJVmw1V0hD?=
 =?utf-8?B?eGJoTXZ3SVJjcEQzaUxxTTlvS0pFV09JOFMvWnR1OFNwdmpIeE55ZTJlK3NK?=
 =?utf-8?B?b2VzTFkzdHczMzBjcWtuVk9lZnlHcGFPSTBaR0tmLzRiQWo0aWdraHhEMndW?=
 =?utf-8?B?WkJTeW53anlYbWtVdTJhTnB5WXlhTEJ1UTBLUHBtdlZBUkxGVS9aWS85OTdW?=
 =?utf-8?B?b09tT3ZqaGpFMDhYUDJhaDZmdVNoVnFxOFRHdUp0ZmhYRTRramdtY3ZMOUkr?=
 =?utf-8?B?V1dIdGhPVlZnVzZTU1NFTENTT0VLaGM1cTRUanRheHBpL1B0dWRyRWVvZGY4?=
 =?utf-8?B?WTBNdDdueCtwT0JsV0xjQ1ZRcm01SE4vc2JrVTZ1VHdMd2pZcm9Xb3JyS1d0?=
 =?utf-8?B?S0l3bzJTczZnZVpEUlFjSERhejljclpzdjZWcHg5VUI4TCtVZnRsQ08wT3M1?=
 =?utf-8?B?TjBwVnd2cnNyWHB2QWt6V080bm5LaGUvZUNjMERTY3dDaEVaaDAxdWJGQWwy?=
 =?utf-8?B?ZXp1bmRMcm90YzZHOTdxT2RoNHFkNGVEenhrNDhzY2FsRmhiUjkvTzZ4ZTZ5?=
 =?utf-8?B?MXN6VlM0dzJXME5DNnBoWGNSRkFDc1UrdzZSUkNya2hIeUI2L1pGZFl3eDZP?=
 =?utf-8?B?UDZRTmltalFlZXBVdXRLZk9DVHNxZzNraXFxWFkweGtWQll5bHFVZitETGxK?=
 =?utf-8?B?WmNRdnpQWSs3M2tZNzlrdUhwcEh6RSt2S0E2b2NFM3RYMlF6bVhSREdRZ2s0?=
 =?utf-8?B?bHJhcU14bTNOYVVJbVVMTXduUElranpjaGpOUkFHQ204OGJqTFlwOGFBUENC?=
 =?utf-8?B?b3h5VmFPWTN1cFNzZGhGVmVWNHJmV1N4WGdSR1dkSlpwU2ovZE9QeFhqOHhn?=
 =?utf-8?B?a2hvR0xGT0RyWC9zdThOZExZSnRsYk8xNmN2TXFHMkhScGRHdmFCOU93VnQ4?=
 =?utf-8?B?bS9vbk9KMFlnRlluVFZzNWtwQTd3am1qZjA0QnNoZWlFVk8yajZwUVo1OXFN?=
 =?utf-8?B?NXJsY0M3VmJaNEpMZk1LWkJBUnUzbnRJYlNZZHdRejlTdHNyVGZSUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4cb0ddb0-eb45-43fa-959f-08d9fab9bae4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 12:56:26.0291
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 AuqyhFBzpM372Vhs0IvdMmqpUcdaWiTnyeZuyrZPEbR9vVzHC/TQQlNCWhRaHQoDBTNkIhVBk4NI027tds1S4L8qrxsz/mBtsVtcrhGB/pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR1001MB1268
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 12:56:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56312

SGVsbG8gS29ucmFkLA0KDQpUaGFua3MgZm9yIHRoZSBxdWljayBmZWVkYmFjay4NCg0KSGF2ZSB5
b3UgYmVlbiBhYmxlIHRvIGJ1aWxkIHRoZSBwYWNrYWdlIHdpdGggdGhlIGNoYW5nZT8NCkkgZ2V0
IGEgc2ltaWxhciBlcnJvciB3aXRoIGl0Og0KDQpFUlJPUjogc21idXMtNC4zLSoud2hsIGlzIG5v
dCBhIHZhbGlkIHdoZWVsIGZpbGVuYW1lLg0KDQpCZXN0IHJlYWdyZHMsDQpNYXR0aGlhcw0KDQot
LS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQpWb246IEtvbnJhZCBXZWlobWFubiA8
a3dlaWhtYW5uQG91dGxvb2suY29tPiANCkdlc2VuZGV0OiBNb250YWcsIDI4LiBGZWJydWFyIDIw
MjIgMTM6NTENCkFuOiBNYXR0aGlhcyBLbGVpbiA8bWF0dGhpYXMua2xlaW5Ab3B0aW1lYXMuZGU+
OyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpCZXRyZWZmOiBSZTogW3lvY3RvXSBweXRo
b24zLXNtYnVzIG5vIGxvbmdlciBidWlsZHMgLSBEb2VzIGFueW9uZSBoYXZlIGFuIGlkZWE/DQoN
CkhpIE1hdHRoaWFzLA0KDQp0aGlzIGlzIGNhdXNlIGJ5IG1lcmdlZCBQRVAtNTE3IGNoYW5nZXMu
DQpUbyBtYWtlIGl0IGJ1aWxkIGFnYWluIGp1c3QgaW5qZWN0DQoNClBJUF9JTlNUQUxMX1BBQ0tB
R0UgPSAic21idXMiDQoNCmludG8gdGhlIHJlY2lwZSBvciBhIGJiYXBwZW5kLg0KTWFpbmx5IHRo
ZSBweXRob24zLXByZWZpeCBvZiB0aGUgcmVjaXBlLCBtYWtlcyB0aGUgbmFtZSBndWVzc2luZyBm
YWlsLCBJIHN1c3BlY3QgcGF0Y2hlcyB0byBiZSBpbmNvbWluZyBzb29uDQoNCkJSDQpLb25yYWQN
Cg0KT24gMjguMDIuMjIgMTM6NDUsIE1hdHRoaWFzIEtsZWluIHdyb3RlOg0KPiBIZWxsbywNCj4g
DQo+IHRoZSBweXRob24zLXNtYnVzIHBhY2thZ2Ugbm8gbG9uZ2VyIGJ1aWxkcy4NCj4gDQo+IFRo
ZSBpbnN0YWxsIHN0ZXAgZW5kcyB3aXRoIHRoZSBmb2xsb3dpbmcgZXJyb3IgbWVzc2FnZToNCj4g
DQo+IEVSUk9SOiBweXRob24zX3NtYnVzLTQuMy0qLndobCBpcyBub3QgYSB2YWxpZCB3aGVlbCBm
aWxlbmFtZS4NCj4gDQo+IERvZXMgYW55b25lIGhhdmUgYW4gaWRlYSB3aGF0IGlzIHRoZSBjYXVz
ZT8NCj4gDQo+IE1hbnkgZ3JlZXRpbmdzLA0KPiANCj4gTWF0dGhpYXMNCj4gDQo+IA0KPiANCj4g
LT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdl
cyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFZpZXcvUmVwbHkgT25saW5lICgjNTYzMTApOiANCj4g
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS81NjMxMA0KPiBN
dXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC84OTQ0OTIy
MC8zNjQ3NDc2DQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnDQo+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0
by91bnN1YiANCj4gW2t3ZWlobWFubkBvdXRsb29rLmNvbV0NCj4gLT0tPS09LT0tPS09LT0tPS09
LT0tPS0NCj4gDQo=

