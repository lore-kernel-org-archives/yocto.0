Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.48])
 by mx.groups.io with SMTP id smtpd.web10.1555.1590517748696714595
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 May 2020 11:29:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=DMpWiibh;
 spf=pass (domain: spinetix.com, ip: 40.107.15.48, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+IA6ZOo/dbwsXbAPYwG4L3788Rb7leP6BtJUBdd/2SrMPMot7EdYkE9A8i0aBqVPdL6ug5lEtM7poqlD7lCLw8Ies5sdxILgZBREGu6zZ+yhT+TAabA0DpLgvmDeBmWW1y4axe1Y8aewo8YCOzPrB3SCi8Ug7Rp0qQr10VTlCwQuukp4X1f9EOzGFH8nA9DcfhTHjrTDyGYEnMvjDE3FJubBrEuAz5Vr/RfB778pQ7KNUKYo/tKc2NdcJirD+8f69CgSicrVZMjtF934Rz8PWEDaNlknGQ3g8G/PepyX3Ov6Dth3SgjYiFJeiX4qHxIx6HzRxPmdb8DEhzjPo19aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qt4ovGpFwOeEy//N4f6x64p0E1VkRp7RmM4aOR5X/8A=;
 b=UV9LUtXZZ44PhV0xZimChWKC969CvoQ+junoX2JLRh+q8+6ZPrCeqzBsGgFMap8DFM/fBJS0BXC3IKcUgx0WVXfjt+fFke/GbH/o416VjSg2PHu/m2iLsMual6PDcfhd/D2Tz1b/aWvmMeesPKXZFr4/KsR4LnpIca+SZh2SzUwFLXSE9s2/Vuvej3yJLeZ1qYkhyEaDGG9OsNaSQaEQixJXD5msqtxvwfmyuKqCG7UWc7hjVjDhzoPqNg+GLQ14rajEFCx5AAL4cl62jOdBwbMkqgWX9Od0LOg30ddGYnkeKUh4pW2IOH4gA3f2gLiQMlf9MgaqNLIzqWHabgBAcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qt4ovGpFwOeEy//N4f6x64p0E1VkRp7RmM4aOR5X/8A=;
 b=DMpWiibhbhHdK13J6/DdhuyCYBaCIlMEWD41AeAqJzXtFJ8IrUeE9K4KLq5gH8EeMiPOEeLyjW9SynA7YNRWYtXPEy9LFcnch5aKcLM0hH+0GMaHvDq4hdd8yeT++nLmcUjxZe9GS3d0oXFe5axBsSuCD7dHZ/osFYIvunmwq80=
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:cb::33) by VI1PR01MB7070.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:17f::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Tue, 26 May
 2020 18:29:06 +0000
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::11ae:165f:f75c:4996]) by VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::11ae:165f:f75c:4996%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 18:29:06 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "lefevre.da@gmail.com" <lefevre.da@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] gpg: can't connect to the agent: File name too long
Thread-Topic: [yocto] gpg: can't connect to the agent: File name too long
Thread-Index: AQHWMzxYhqnpHyqRVUeXdsjXVDFQ/Ki6rshw
Date: Tue, 26 May 2020 18:29:06 +0000
Message-ID: 
 <VI1PR01MB51673721D2BCB3F23D37E06E88B00@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
References: 
 <CA+FhBv8=d9doBMqQ2CL6bfet01i-4fAL_SDHVx7vgLTcoMxZcw@mail.gmail.com>
In-Reply-To: 
 <CA+FhBv8=d9doBMqQ2CL6bfet01i-4fAL_SDHVx7vgLTcoMxZcw@mail.gmail.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=spinetix.com;
x-originating-ip: [2a02:120b:2c6c:52f0:a8b2:6f0d:b77a:4875]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b6c0706-7067-4e66-4506-08d801a2accc
x-ms-traffictypediagnostic: VI1PR01MB7070:
x-microsoft-antispam-prvs: 
 <VI1PR01MB7070DFB75327A3DBAA9D4FA988B00@VI1PR01MB7070.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JUSWPehTf+yMPwOh23Gk3pdNLlZDDwDMlPl1UUPVBUyjnM1dnI69PifApaHBJjfXHvqxRIplqQgxxOWnmtKwefKU4h5V4eVr2LbKkx67eqo/H5ha1jW00pMeoWjC6Jrm8YujoIOWi7v23v8OXVRC+z9aBPWemP7rXwgYpd1274Q0CuyQCRq0rV9mcao3TwDiddXZq1qTT/N9H7B/jP8KkMsojVOTgC9JxNz+AZdauvltjezE4MU6NqhkBUSf/NuMHNK4lM8MYdghDQK0lDo4HZptIPf2+3wuqJlZivMPxZxnnGGD/f8/y8YSkTUw/t+b
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR01MB5167.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFTY:;SFS:(39830400003)(366004)(376002)(136003)(396003)(346002)(508600001)(52536014)(64756008)(66556008)(53546011)(66476007)(110136005)(8936002)(6506007)(2906002)(86362001)(66446008)(76116006)(186003)(66946007)(9686003)(55016002)(33656002)(316002)(71200400001)(5660300002)(7696005)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 4E3nnUBQwMiwW4Q7LyvSWqJlSEwMNhlIgoLGj31m6Pd1ONswBh9XCuGlMcElXpk1QkVNPFPTob4phZfhnzKWs2lweWaR3CfIkSDIm1wfExr/w3OXG9NIxwups6I72dNx5CBnBacKRoSyQvIfVZ+6rgDTtPFYWflmHSgUzG6SKaRiZKkEIcyQ0M5RDhdjcXb3Dg1NjyUjI74lQrBAvAoY4QXLc+Llu8kVKpmze55ucNlEkIiBuAz+vnO6ypVoGxAcN7fVkr4kSdHMb62VW6mgWGHmVVIFaxa0WeDfHomGmaYG1e+LUGZQZ6vOAqmCBgEr4GB/p2dNRzYG34I2PR+UVx9wHPfVgTw4fkK6gTQlGITE2ErChyEFmP1qypI4e6GJfzgWhPEaYdnEq3NAIOKc8rOKr1GCBDfxLFTM3sjIGMNunH2zmcodXMjDdQOSG9GWlSameof/YvuMcUttlV9fNlHyHnjDr85tDiLadwUeikPiEnyiizA7LLRJJdN5eR4mQCMUX8TBbqPzZ2wbkKlf8cdYS+zEYYpIFVMsXUtvfTRrVd7X4pwsLIirZfp1e0Kf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b6c0706-7067-4e66-4506-08d801a2accc
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 18:29:06.6304
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ae1cZ6RfnZU10rqnQPs9vNHbieBxoFQQED4pUr/Kzv/7JxnKFq3fSdU6Nw1clSennwiPIU0G3vZZV8d6nmkB00Scepk1Oy4rmH8lwzKNyq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB7070
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbg0KPiBCZWhhbGYgT2Yg
RGFtaWVuIExFRkVWUkUgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU2VudDogMjYgTWF5
IDIwMjAgMTE6MDINCj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVj
dDogUmU6IFt5b2N0b10gZ3BnOiBjYW4ndCBjb25uZWN0IHRvIHRoZSBhZ2VudDogRmlsZSBuYW1l
IHRvbyBsb25nDQo+IA0KPiBJIHRoaW5rIG15IHByb2JsZW0gaXMgdGhhdCB0aGUgZG9faW1hZ2Vf
KiBhcmUgcnVubmluZyBhcyBmYWtlcm9vdC9wc2V1ZG8uDQo+IA0KPiBJcyB0aGVyZSBhIHdheSB0
byBydW4gdGhpcyB0YXNrIGFzIGEgbm9ybWFsIGxvY2FsIHVzZXIuDQo+IA0KPiBJIHJlYWQgdGhh
dCBJIHNob3VsZCBjcmVhdGUgdGhlIHNvY2tldCB3aGVuIG5vdCBydW5uaW5nIHVuZGVyIGxvY2Fs
IHVzZXIgd2l0aA0KPiBncGdjb25mIC0tY3JlYXRlLXNvY2tldGRpcg0KPiANCj4gDQo+IEJ1dCB0
aGlzIGZhaWxzIHRvbyBhbHRob3VnaCBJIHNldCBwZXJtaXNzaW9ucyBmb3IgYWxsIG9uIHRoZSBn
cGcgZmlsZXMgYW5kDQo+IGRpcmVjdG9yaWVzOg0KPiAnJycNCj4gfCBncGdjb25mOiBzb2NrZXRk
aXIgaXMgJy90ZXN0LXdhcnJpb3IvYnVpbGQtamV0c29uLQ0KPiB4YXZpZXIvdG1wL3dvcmsvamV0
c29uX3hhdmllci1wb2t5LWxpbnV4L3Rlc3QtaW1hZ2UvMS4wLQ0KPiByMC9teV9pbWcvaG9tZScN
Cj4gfCBncGdjb25mOiBubyAvcnVuL3VzZXIgZGlyDQo+IHwgZ3BnY29uZjogdXNpbmcgaG9tZWRp
ciBhcyBmYWxsYmFjaw0KPiB8IGdwZ2NvbmY6IGVycm9yIGNyZWF0aW5nIHNvY2tldCBkaXJlY3Rv
cnkNCj4gfCBncGdjb25mOiBmYXRhbCBlcnJvciAoZXhpdCBzdGF0dXMgMSkNCj4gDQo+ICcnJw0K
PiANCj4gQmFzaWNhbGx5IEkgbmVlZCB0bywgYXMgYSBub3JtYWwgdXNlciwgcnVuIGdwZyBhZnRl
ciBkb19pbWFnZV90ZWdyYS4NCj4gDQo+IEFueSBoaW50Pw0KDQpUaGUgcHJvYmxlbSBpcyB0aGF0
IHRoZSBwYXRoIHRvIFVOSVggc29ja2V0cyBhcmUgbGltaXRlZCBpbiBsZW5ndGggYW5kIHlvdSBh
cmUgcHJvYmFibHkgaGl0dGluZyB0aGF0IGxpbWl0LiBUaGUgYmFzZSBjbGFzc2VzIHRha2UgY2Fy
ZSBvZiBhdm9pZGluZyB0aGF0IGJ1dCBJIGRpZCBoaXQgdGhpcyBwcm9ibGVtIGluIGEgY3VzdG9t
IHJlY2lwZSB0aGF0IHdhcyB1c2luZyBncGcgZGlyZWN0bHkuDQoNCkkgc29sdmVkIHByb2JsZW0g
aW4gdGhlIHRhc2sgc2hlbGwgZnVuY3Rpb24gdGhhdCB3YXMgY2FsbGluZyBncGcgYnkgdXNpbmcg
YSBob3N0IHRlbXBvcmFyeSBkaXJlY3RvcnkgKC92YXIvdG1wLy4uLikgYXMgYSB0aHJvdyBhd2F5
IEdQRyBob21lIGRpcmVjdG9yeS4NCg0KZ3BnZGlyPWBta3RlbXAgLXRkICR7UE59LWdwZy5YWFhY
WFhgDQppbnN0YWxsIC1tIDcwMCAtZCAkZ3BnZGlyL2hvbWUNCmdwZyAtLWJhdGNoIC0taG9tZWRp
ciAkZ3BnZGlyL2hvbWUgLi4uDQouLi4NCnJtIC1yZiAkZ3BnZGlyDQoNCkhvcGUgdGhhdCBoZWxw
cy4NCg0KLS0gDQpEaWVnbyBTYW50YSBDcnV6LCBQaEQNClRlY2hub2xvZ3kgQXJjaGl0ZWN0DQpz
cGluZXRpeC5jb20NCg0KDQo=
