Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.93])
 by mx.groups.io with SMTP id smtpd.web12.3187.1579711165498879919
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 08:39:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=RiINDLmm;
 spf=pass (domain: prevas.dk, ip: 40.107.7.93, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KzZcc2pc83Rd0wsabSbb65CuWLY8PsTWJ0gL9ePl2TxUV7rtxp2oKBKwhl3QtULrnUDwijsM1g5NvC7S29jE2m68W6leWkknSIljdcLY+ObL+YEvfRJAXhGolwf1s/2YRY7kbSiYo2qgNhDyqA77ITMANUP2Z6H8e08bVVZ6ldruVhDIg/l7064LLF4Kmg1BFpHrMW2CLfDIzkQhCMUcqur+BNACTCRjAUF8hPzrsLodmKklnVz7+g1pkHj3MphHE7FitDqoiSHV05D97W93eiebus+IGea1yTCZxIY+lHdmvuhcj0R4lnelaABauBsaYJ5hR09wZzmDHkSv+b+owA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gaBfJRs9F5RqMSeYWRdp5o5BXcc3q8RBtWN6AihjotQ=;
 b=e6NSqBZqi8RMsS2VtDjjq14x6OmTl1IVgf3WYDls1pYSooNpW5ZvgwWJ8TmOZD9EMAZpf4SGMd1Cx80oJ2RgkNOPS/IXJm2V/GBOiJUFMFUega7WYoIrTk7vjg77nJ+tRIsQ3gh3nu8gRGrpK0r2a5pp2ZXnvWL6ZeMsRx+pKmFbUA+44MDwFYQ9Qs2OuBqUJ4iaGhHzqDOdybIocyCTNFLuYkpDFM28V3qFUGgNxm8DjBUjgZK0gGcEtL9e6E95XuJWQP5NRP4HuYyg2dUL38k3L7JUnxKi2wedA13LFvjTzuBESScmKQXJWKCAygrYjXfZJfx9SKNGfqGP0SxfXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gaBfJRs9F5RqMSeYWRdp5o5BXcc3q8RBtWN6AihjotQ=;
 b=RiINDLmmjDk0xw560Cjn6ZIWj0qhGGQZ5FoPha+EqZeQDdGfsfsel85nOL0ouV7COrcKQYMLHAmkDtGb3YnO11ylxTzIh0E0S8FQmISnhX2nAUTpXbC9JK+KGRj9YTc6nwxrIL67aUtcFql7LK3rEqu6MrPUnZf1IzKGFyDfffY=
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (20.178.126.85) by
 VI1PR10MB3184.EURPRD10.PROD.OUTLOOK.COM (52.133.244.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 22 Jan 2020 16:39:22 +0000
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d]) by VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 16:39:22 +0000
Received: from [172.16.11.50] (81.216.59.226) by HE1PR05CA0187.eurprd05.prod.outlook.com (2603:10a6:3:f9::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend Transport; Wed, 22 Jan 2020 16:39:21 +0000
From: "Rasmus Villemoes" <rasmus.villemoes@prevas.dk>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] using d.expand() in a python function
Thread-Topic: [yocto] using d.expand() in a python function
Thread-Index: AQHV0SuPsZgqe2iPfkiqCWILQ/GGN6f2wBCAgAAkrgD///A2gIAADa8A
Date: Wed, 22 Jan 2020 16:39:22 +0000
Message-ID: <fbddc4d3-e0de-395b-b32a-0374f3eeab39@prevas.dk>
References: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
 <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
 <066e4ba4-a571-6d58-9118-c2a661da59c7@prevas.dk>
 <4fce81ff69a5610957d83aad2ef45a41338ac362.camel@linuxfoundation.org>
In-Reply-To: 
 <4fce81ff69a5610957d83aad2ef45a41338ac362.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0187.eurprd05.prod.outlook.com
 (2603:10a6:3:f9::11) To VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e1::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rasmus.villemoes@prevas.dk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72b3d0ee-0091-435b-c3be-08d79f59a22c
x-ms-traffictypediagnostic: VI1PR10MB3184:
x-microsoft-antispam-prvs: 
 <VI1PR10MB3184BD24C642473049039659930C0@VI1PR10MB3184.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(136003)(39840400004)(346002)(376002)(366004)(199004)(189003)(5660300002)(478600001)(110136005)(66556008)(66946007)(66476007)(66446008)(16576012)(64756008)(8976002)(8936002)(6486002)(31686004)(316002)(81156014)(36756003)(81166006)(86362001)(52116002)(31696002)(8676002)(2616005)(26005)(956004)(186003)(2906002)(16526019)(71200400001)(44832011);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR10MB3184;H:VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: prevas.dk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hVGgieYwvpYqpkwIfFJgj1sf2cotn3yxypk03SKRd3wn3vzpaHy3YohYsjBook/zjI2xW1bEu8qoex5Rqp27YGSJ8mdxGaQZ4m35xSxCEAqg4zxyexFhUNXnLBLYc+xQTTVsNsi+rfR28ybKATWQQmWTuBDl0zxX/u6ELA8uJhueuvCJXOqs4PqZW53T909gX+GyzNR2uFbsbdLeHAmCWnANOAo1bFOFDLFZrH3IE8QRyFQn4uqKUC335xl47ZqbAEf2NPLuHwHNoYEAGRBgwmPkdL3NCP6cJQGV0JVZmlFYDaO+D5tGLqZNGheCRDZ29VxrvQTJo4tBifBYw+teYfIKZbUyEIrsZmm+8M0A4atLCiC9KhG3qIylcT/vQEbBUy/6jOW3Gp1uir1gdA58gh/40IP/w3PL6UIxuni5FCw7uNdutREoyLQ+9iqZkl4V
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 72b3d0ee-0091-435b-c3be-08d79f59a22c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 16:39:22.0561
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MbefrLJRcfWsj6uFB1PMFlEhG3E/zmaCw2WvONBg9hb3Yzi/ZLPQDJvCQ+IIW40I8154LmTDvT2lUiAiHmZS6BOqeQU5JC59wGzLhJzZ7KM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3184
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <C9F66D2E1CA430498FB161496CE9C7D1@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

T24gMjIvMDEvMjAyMCAxNi41MCwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+IE9uIFdlZCwgMjAy
MC0wMS0yMiBhdCAxNTo0NiArMDAwMCwgUmFzbXVzIFZpbGxlbW9lcyB3cm90ZToNCj4+IE9uIDIy
LzAxLzIwMjAgMTUuMzUsIFJpY2hhcmQgUHVyZGllIHdyb3RlOg0KPj4+IEJpdGJha2UgY2FuIG9u
bHkgZGV0ZWN0IGRpcmVjdCByZWZlcmVuY2VzIHRvIHZhcmlhYmxlcy4gVGhlIGNvZGUNCj4+PiBh
Ym92ZSBvbmx5IHJ1bnMgYXQgY29uZmlndXJlIHRpbWUsIG5vdCBhdCBwYXJzZSB0aW1lIHNvIGl0
cyBub3QNCj4+PiByZWFsbHkgc3VycHJpc2luZyB0aGF0IGJpdGJha2UgY2FuJ3Qga25vdyB3aGF0
IGl0cyBkb2luZy4NCj4+DQo+PiBXZWxsLCBJIHRob3VnaHQgdGhhdCBhcyB3ZWxsIGF0IGZpcnN0
LiBCdXQgdGhlcmUgbXVzdCBiZSBzb21ldGhpbmcNCj4+IGRvbmUgYXQgcnVuLXRpbWUgdG8gZmVl
ZCBiYWNrIHRoZSB2YXJpYWJsZSBkZXBlbmRlbmNpZXMsIGJlY2F1c2UgaWYgSQ0KPj4gYWRkIGEg
Y29tcGxldGVseSBkdW1iDQo+Pg0KPj4gcHl0aG9uIGRvX2NvbmZpZ3VyZSgpIHsNCj4+ICAgICBp
bXBvcnQgZmlsZWlucHV0DQo+PiArICAgIGQuZ2V0VmFyKCJWQVJJQUJMRSIpICMgc2lsbHkNCj4+
ICAgICB3aXRoIG9wZW4oImZvby50eHQiLCAidyIpIGFzIG91dDoNCj4+ICAgICAgICAgZm9yIGxp
bmUgaW4NCj4+IGZpbGVpbnB1dC5pbnB1dChmaWxlcz1kLmdldFZhcigiRk9PX0lOUFVUIikuc3Bs
aXQoKSk6DQo+PiAgICAgICAgICAgICBsaW5lID0gZC5leHBhbmQobGluZSkNCj4+ICAgICAgICAg
ICAgIG91dC53cml0ZShsaW5lKQ0KPj4gfQ0KPj4NCj4+IGJ1aWxkIHRoZSByZWNpcGUgKGJlY2F1
c2Ugbm93IGl0IGhhcyBvZiBjb3Vyc2UgY2hhbmdlZCksIGFuZCB0aGVuDQo+PiBjaGFuZ2UgVkFS
SUFCTEUsIHRoZSByZWNpcGUgZG9lcyBnZXQgcmUtYnVpbHQuIE9yIGRvZXMgYml0YmFrZQ0KPj4g
c3BlY2lmaWNhbGx5IGxvb2sgZm9yIGQuZ2V0VmFyKDxsaXRlcmFsPikgd2hlbiBpdCBwYXJzZXMg
YSBweXRob24NCj4+IGZ1bmN0aW9uPw0KPiANCj4gQml0YmFrZSBoYXMgQVNUcyBmb3IgYWxsIGl0
cyBweXRob24gZnJhZ21lbnRzIGFuZCBjYW4gc2VhcmNoIHRob3NlIGZvcg0KPiBnZXRWYXIoKSBj
YWxscy4gSXQgd2lsbCBzcG90IGdldFZhcigiWCIpIGJ1dCBjYW4ndCBrbm93IHdoYXQgaXMgaW4N
Cj4gZC5leHBhbmQobGluZSkuDQoNClllYWgsIEkganVzdCB0cmllZCBjaGFuZ2luZyBpdCB0bw0K
DQogIHYxID0gIlZBUiINCiAgdjIgPSAiSUFCTEUiDQogIGQuZ2V0VmFyKHYxICsgdjIpDQoNCmFu
ZCBiaXRiYWtlIG5vIGxvbmdlciBrbmV3IGFib3V0IHRoZSBkZXBlbmRlbmN5IG9uIFZBUklBQkxF
IDooDQoNCkkgY2FuJ3QgYmUgdGhlIGZpcnN0IG9uZSB0byB3YW50IHRvIHN1YnN0aXR1dGUgYml0
YmFrZSB2YXJpYWJsZXMgaW4NCnZhcmlvdXMgc291cmNlIGZpbGVzLCB3aXRob3V0IG5lY2Vzc2Fy
aWx5IGtub3dpbmcgdXBmcm9udCB3aGljaA0KdmFyaWFibGVzIG1pZ2h0IGFwcGVhci4NCg0KU28g
dGhpbmtpbmcgb3V0IGxvdWQgKGFuZCBhcG9sb2dpZXMgaWYgdGhpcyBpcyB2ZXJ5IHNpbGx5KTog
V291bGQgaXQgYmUNCnBvc3NpYmxlIHRvIGltcGxlbWVudCBzb21lIGF1dG8tZGVwcyBjbGFzcyB0
aGF0IGEgcmVjaXBlIHBsYXlpbmcgdGhlDQphYm92ZSBnYW1lIGNvdWxkIGluaGVyaXQuIFNvbWV0
aGluZyBsaWtlDQoNCkFVVE9fREVQU19UQVNLUyA9ICJjb25maWd1cmUiDQpweXRob24oKSB7DQog
IGZvciB0IGluIEFVVE9fREVQU19UQVNLUzoNCiAgICBmID0gKHRtcGRpci9jYWNoZWRpci9zb21l
d2hlcmUpL2F1dG9kZXBzL3BuL3QuaW5jDQogICAgaWYgZiBkb2VzIG5vdCBleGlzdDoNCiAgICAg
ICBtYWtlIHN1cmUgdGhlIHJlY2lwZSBnZXRzIHJlYnVpbHQNCiAgICAgICByZXR1cm4NCiAgICBp
bmNsdWRlIGYNCn0NCg0KcHl0aG9uIHdyaXRlX2F1dG9kZXBzKGQsIHQpOg0KICBsb2dpYyB0byB3
cml0ZSBhICJkb190W3ZhcmRlcHNdICs9IC4uLiIgbGluZSB0byBmLCBjYWxsZWQgYXQgdGhlIGVu
ZA0Kb2YgdCAocHJlZmVyYWJseSBhdXRvbWF0aWNhbGx5LCBidXQgbWFudWFsbHkgaWYgbmVlZCBi
ZSkNCg0KcHl0aG9uIGV4cGFuZF9hdXRvZGVwcyhkLCBzKToNCiAgaGVscGVyIHRvIGJlIHVzZWQg
d2l0aGluIGFuIGF1dG9kZXBzIHRhc2ssIHJlY29yZGluZyBhbnkgdmFyaWFibGUgdXNlZA0KaW4g
dGhlIGV4cGFuc2lvbiBvZiBzDQoNClJhc211cw0K
