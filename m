Return-Path: <W.Vanhauwaert@TELEVIC.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B4A5E00D85; Tue, 29 Oct 2019 02:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.15.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150111.outbound.protection.outlook.com [40.107.15.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BFCE00BA2;
	Tue, 29 Oct 2019 02:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=a8ti9eNy2JM/zJpj318soe4t3JPNIyO+de7ZPNIuvi09MU/PXN3mLFcA4Cn65Iar1ygC3mcEstTiZ2PCxIoytJT+DrP8io0pH5oZicvGgqUqLBDE3Zza0uMErIxA4oCq3V1N+6Xc6PN1iSD19X0cL1tl2q4HJgYSTgSTSwdXhOWxiaME5hQW3UimErKQg0uD90RI0/gkoYYc3AEsElyVcZRHQwCVQwHv5mwvzvLBZjKaSf+G+pjs39isdBZ+a3l8MM9/g+ZVT926oYotfuJiKcnr+7bjOlwqM0xJmSXxPbmXrOUSmXrrrjUbNBWBX4hJDbmqptqu7gOOoOzghPpk5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ko9BU5Lsg3w4ED8v7ljFJtPn8gRq/Hq/oJ/g5m8yaVc=;
	b=Ahrq4EItW+1wu98DVjzWi6D3kEzErMcgsAfk/gCDvJXsT6VK8z90/QZv+4P6m6+S/MoOsMO801n99D3GnXXVXdXj26WySs/e4ckwx7UbcGAqHFWWdYMeKG2Sfdx1RPkWylr6evB091G/w9y4MEdIJVKc2xDNu1+LKULA9Bi5N0KRnkxrWxrhAYbh2rpkJQPZeD/3/r/xA059VgUGj63P7haPRPfRwWr0L1BEfOmYnm6KzWD3VVxO0bXvh+sO0A2L9ApZKRMdwruH334SVQnbtnw61pxCOZWiDrNaRvh4jSUgWFyT2s/mrfl5uzbQ9Kt6/6fRrK3nTVKk6vhrr8KZ6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=televic.com;
	dmarc=pass action=none header.from=televic.com; 
	dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ko9BU5Lsg3w4ED8v7ljFJtPn8gRq/Hq/oJ/g5m8yaVc=;
	b=O0A0TI7FllS6P62Q3qweK2svs/0yxrvIoqL5czaVztHUjF1Xuhaud6Dj3uC8LrZBnPTMU26f1OywUc/PbRcNH/55MtSL4y5+6iPyC7XlnucWqhyDp4OL5bLBCxNKrEMBTiM7kToRNXtnt7ax2nu9RwAjoEkSiJqlNMmDI+0Iohk=
Received: from AM0PR07MB5283.eurprd07.prod.outlook.com (20.178.20.20) by
	AM0PR07MB5842.eurprd07.prod.outlook.com (20.178.113.206) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.18; Tue, 29 Oct 2019 09:29:56 +0000
Received: from AM0PR07MB5283.eurprd07.prod.outlook.com
	([fe80::4445:8bb2:74c:b88e]) by AM0PR07MB5283.eurprd07.prod.outlook.com
	([fe80::4445:8bb2:74c:b88e%5]) with mapi id 15.20.2408.012;
	Tue, 29 Oct 2019 09:29:56 +0000
From: Wouter Vanhauwaert <W.Vanhauwaert@TELEVIC.com>
To: Andy Pont <andy.pont@sdcsystems.com>, meta-freescale Mailing List
	<meta-freescale@yoctoproject.org>
Thread-Topic: [wpe-webkit] Optimising imx6 performance for HTML5 using Cog +
	WPE WebKit
Thread-Index: AQHViZVIlLjk+14llkKUjjMB4Eo7g6dxYfJw
Date: Tue, 29 Oct 2019 09:29:56 +0000
Message-ID: <AM0PR07MB5283DB037D8C993ED836D9ABF8610@AM0PR07MB5283.eurprd07.prod.outlook.com>
References: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>
In-Reply-To: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>
Accept-Language: nl-BE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=W.Vanhauwaert@TELEVIC.com; 
x-originating-ip: [84.199.255.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e719dde-68a4-4f1c-7417-08d75c528fa3
x-ms-traffictypediagnostic: AM0PR07MB5842:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR07MB5842020E36D51304C604069CF8610@AM0PR07MB5842.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(366004)(376002)(136003)(39850400004)(396003)(346002)(189003)(199004)(13464003)(71190400001)(66556008)(3846002)(33656002)(102836004)(6246003)(64756008)(76116006)(110136005)(54906003)(5660300002)(2906002)(66446008)(55016002)(74316002)(4326008)(71200400001)(6116002)(316002)(305945005)(6306002)(9686003)(66574012)(86362001)(7736002)(6506007)(486006)(256004)(229853002)(66066001)(81156014)(52536014)(347745004)(66476007)(6436002)(66946007)(76176011)(8936002)(11346002)(14454004)(446003)(476003)(26005)(99286004)(53546011)(478600001)(8676002)(186003)(25786009)(81166006)(7696005)(966005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB5842;
	H:AM0PR07MB5283.eurprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: TELEVIC.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QZi4XoroV3ZPWAxuGs2XIGezdc5bZBdZdSVG4IlgNkTByxZpfSZsdPBXqj7TJI8Z05sxU2vsYxJ5YdbtCnnE4swgCu2ysJV3r/4s7PXBj2J7Um0jcRviRM4bUSAaUQN9/yo027RJImTydyT2oGxI6xAB05M1l+NrRXu9oRK9Qj/csfV3r7LLKQ4la64cbMcjppmvSIUVDDLdbylNbEul4wV9xqPEWc+XypGZNIxkegC1o4CSpjBX7lnZn0G/uUz3IqyaZzfNECdFYC+L/aGBt2jEMPc0kdW8hZgiJf8YoMAvc4hYpsPFJnQlvYV5yceMYp+UhAHMN11P/gf8fESJruB2Ze1P8ytFe0q+GfJY/vuXWEtuE8aXrWJCGmg9MQrEJQWw08lSLWgnmi58AvDwqWs7YYQCiSTA22yzOPTWcQoNByvgy1+hzQfkYu8VYxJ80Q6xp+qLG30k1r57hPOC40Gi3uXQmE/MWXkPctcqD4o=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e719dde-68a4-4f1c-7417-08d75c528fa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 09:29:56.1473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NTZWF1d5Xx2ibXFjj5E9yj1F7lWwTZDbGs57MIbYt88pPOFgMtOqHPYFPMIeIA3nP2QcLB5MjOkUXnRP3/EQzW4joGtFv03/x8lPwtW+R2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB5842
X-Mailman-Approved-At: Fri, 01 Nov 2019 12:07:53 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"webkit-wpe@lists.webkit.org" <webkit-wpe@lists.webkit.org>
Subject: Re: [wpe-webkit] Optimising imx6 performance for HTML5 using Cog + WPE WebKit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Oct 2019 09:30:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB3ZWJraXQtd3BlIFttYWlsdG86
d2Via2l0LXdwZS1ib3VuY2VzQGxpc3RzLndlYmtpdC5vcmddIE9uIEJlaGFsZiBPZg0KPiBBbmR5
IFBvbnQNCj4gU2VudDogd29lbnNkYWcgMjMgb2t0b2JlciAyMDE5IDEzOjI3DQo+IFRvOiBtZXRh
LWZyZWVzY2FsZSBNYWlsaW5nIExpc3QgPG1ldGEtZnJlZXNjYWxlQHlvY3RvcHJvamVjdC5vcmc+
DQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyB3ZWJraXQtd3BlQGxpc3RzLndlYmtpdC5v
cmcNCj4gU3ViamVjdDogW3dwZS13ZWJraXRdIE9wdGltaXNpbmcgaW14NiBwZXJmb3JtYW5jZSBm
b3IgSFRNTDUgdXNpbmcgQ29nICsNCj4gV1BFIFdlYktpdA0KPiBIZWxsbywNCj4gDQo+IEJyb2Fk
ZW5pbmcgdGhpcyBvdXQgdG8gdGhlIEZyZWVzY2FsZSBhbmQgWW9jdG8gbWFpbGluZyBsaXN0cyB0
byBzZWUgaWYgYW55IG9uZQ0KPiBoYXMgYW55IGFuc3dlcnPigKYNCj4gDQo+IFdlIGFyZSB1c2lu
ZyBDb2cgYW5kIFdQRSBXZWJraXQgb24gYW4gaS5NWDYgU29sbyBiYXNlZCBib2FyZCB3aXRoIGEg
dXNlcg0KPiBpbnRlcmZhY2UgdGhhdCBpcyBiYXNlZCBvbiBIVE1MNSwgSmF2YXNjcmlwdCBhbmQg
Q1NTIGFuZCBhcmUgaGF2aW5nIHNvbWUNCj4gaXNzdWVzIHdpdGggZmFkaW5nIGFuZCBvdGhlciBj
YW52YXMgZWZmZWN0cy4gIFRoZSBib2FyZCBpcyBydW5uaW5nIGEgWW9jdG8NCj4gaW1hZ2Ugd2l0
aCB0aGUgZm9sbG93aW5nIGluIGNvbmYvbG9jYWwuY29uZjoNCj4gDQo+IFBSRUZFUlJFRF9QUk9W
SURFUl92aXJ0dWFsL3dwZWJhY2tlbmQgPSAid3BlYmFja2VuZC1yZGsiDQo+IFBBQ0tBR0VDT05G
SUdfcG4td3BlYmFja2VuZC1yZGsgPSAiaW14NiINCj4gDQo+IFBBQ0tBR0VDT05GSUdfYXBwZW5k
X3BuLWNhaXJvID0gIiBnbGVzdjIgZWdsIg0KPiBQQUNLQUdFQ09ORklHX2FwcGVuZF9wbi13cGV3
ZWJraXQgPSAiIDJkY2FudmFzIg0KPiANCj4gV2Ugc3RhcnQgdGhlIGJyb3dzZXIgd2l0aCB0aGUg
Zm9sbG93aW5nIGNvbW1hbmQgbGluZToNCj4gDQo+IGNvZyAtLWVuYWJsZS1hY2NlbGVyYXRlZC0y
ZC1jYW52YXM9MSBhcHB1aS9pbmRleC5odG1sDQo+IA0KPiBBcmUgdGhlcmUgYW55IG90aGVyIHNl
dHRpbmdzIHdlIHNob3VsZCBiZSB1c2luZyBlaXRoZXIgaW4gdGhlIFlvY3RvIGJ1aWxkIG9yDQo+
IHdoZW4gbGF1bmNoaW5nIENvZyBhcyB3ZSBhcmUgZmluZGluZyB0aGUgQ1BVIHVzYWdlIGlzID45
MCU/DQo+IA0KPiBJcyB0aGVyZSBhIGRlZmluaXRpdmUgd2F5IHRvIHNob3cgdGhhdCBhbGwgb2Yg
dGhlIG5lY2Vzc2FyeSBkcml2ZXJzIGFyZSBsb2FkZWQNCj4gYW5kIENvZyBpcyBtYWtpbmcgdXNl
IG9mIHRoZSBHUFU/DQo+IA0KPiBJIGhhdmUgdHJpZWQgdGhpcyB3aXRoIENvZyAwLjMuMCBidWls
dCB3aXRoIFdQRSBXZWJLaXQgMi4yNC4xIGFuZCBDb2cNCj4gMC40LjAgYnVpbHQgd2l0aCBXUEUg
V2ViS2l0IDIuMjYuMSBhbmQgYm90aCBnaXZlIHRoZSBzYW1lIGRpc3NhcHBvaW50aW5nDQo+IHJl
c3VsdHMsIGFzIGRvZXMgcnVubmluZyBvbiB0aGUgaU1YNlEtU0RQIGJvYXJkIEkgYWxzbyBoYXZl
IGhlcmUuDQoNClByb2JsZW0gd2l0aCAnaW50ZXJmYWNlIGJhc2VkIG9uIEhUTUw1LCBqYXZhc2Ny
aXB0IGFuZCBDU1MnLCBpcyB0aGF0IGl0IGNhbiBiZSBkb25lIGluIGEgdGhvdXNhbmQgd2F5cy4u
Lg0KU29tZSBvZiB0aGVtIHdpbGwgZmFsbCBiYWNrIHRvIGhhcmR3YXJlLCBhbmQgc29tZSBvZiB0
aGVtIHdpbGwgbmVlZCBjYWxjdWxhdGlvbiBzbyB0YWtlIENQVSB0aW1lLg0KV2l0aG91dCBhbiBp
bnNpZ2h0IGluIGEgY29kZS1hYnN0cmFjdGlvbiwgaXQncyBpbXBvc3NpYmxlIHRvIHRlbGwgd2hh
dCB0aGUgaXNzdWUgaXMuDQoNCmh0dHBzOi8vbWVkaXVtLmNvbS9vdXRzeXN0ZW1zLWV4cGVydHMv
aG93LXRvLWFjaGlldmUtNjAtZnBzLWFuaW1hdGlvbnMtd2l0aC1jc3MzLWRiN2I5ODYxMDEwOCA9
PiBzb21lIGhpbnRzIG9uIGhvdyB0byBpbXByb3ZlIG1vYmlsZSBwZXJmb3JtYW5jZQ0KaHR0cHM6
Ly93d3cuc2l0ZXBvaW50LmNvbS9pbnRyb2R1Y3Rpb24tdG8taGFyZHdhcmUtYWNjZWxlcmF0aW9u
LWNzcy1hbmltYXRpb25zLyA9PiBzb21lIG1vcmUgaGludHMgdG8gbGV2ZXJhZ2UgZnVuY3Rpb25z
IHRvIGhhcmR3YXJlDQoNCkJ1dCBJIGFsc28gZG9uJ3QgcmVhY2ggNjBmcHMgb24gaW14NiAoeWV0
PykNCg0KR3J0LA0KV291dGVyDQo=

