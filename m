Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.115])
 by mx.groups.io with SMTP id smtpd.web10.3550.1579712589133670673
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 09:03:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=JaHfN+yD;
 spf=pass (domain: prevas.dk, ip: 40.107.20.115, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V7F/QI+LXO8fNTb/PgWUdbhJNaDkGg+Rfv+GNteMTlupamLS9AdGkg1Yz6C9q3s6I/TuZdh1/Lu/V4vf+RVFYJgbwNggG1JxGUX6Mohq60z5xQ817orbLfnKiuNL92w9HYQNEh16MntcMajQ/pXeR7Hl73uQg8c4QANrQCnxh9OyA/PzrSmEUxhEKzP46KTbwQyEZCgTGUPM2+h8K6+qZAVrqkBB8XPgBpTaTukQ/1s/cBxj8CiSH0GTB5wrBDkguIMALxnQWkgM8FX0wKL+qlh+0ZkXo4psX+WOk9F/fbOa9lWnpXYky+O1U1BqzPZvA63k9/AXN0diBpanZoHotg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJA8Vcl5lOmOxtxF002FOhtveGIEy1tFsNXz22HEcJU=;
 b=JdCVEjn7VaYXO8Enno06nw2mhD0avoUQSz4kHIilq3BHiQSKdrhnjr6nw/IwfRih93XlpGPN2ih9yhDc0Xx8nvV+B7pmamFsvvbnFbop0X5jGno8HNe0T/kOea1rClHT9QK3i9Jg8ieEleukmn6Jy3MKUX99XzKhZ2TeOCXLsP+Ou+n1LNyH6l2f0dBUkjmrfOQxEaWydl5+pzLdpxlxhAg9VD/t62VM79kTZgQdwEYd5OdckU5AGj48DYP3SsS+5K5d9qMmFmfyTQdEdZJPadwbQ0hH1QruOslqUPaj25zJ3+AW+T7CpJWit81zlrnXygallhog2Gdn7WAbGbx2Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJA8Vcl5lOmOxtxF002FOhtveGIEy1tFsNXz22HEcJU=;
 b=JaHfN+yDj8ORuihn/3HnOvzQtKx1chiVRe6eTX7WzFE8yRonjpHrha45dxzWiLJizCKMS7KBUzPYqVND0DhVoxT/zkjodEGIKEqqhkMf0SQ72pFpCQkKDBg4JkyALRwSxb7NiHy+WeXOOq2s7NBMQx5hhrnivjkpTWIAPB3822I=
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (20.178.126.85) by
 VI1PR10MB2367.EURPRD10.PROD.OUTLOOK.COM (20.177.59.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 22 Jan 2020 17:03:06 +0000
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d]) by VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 17:03:06 +0000
Received: from [172.16.11.50] (81.216.59.226) by HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend Transport; Wed, 22 Jan 2020 17:03:05 +0000
From: "Rasmus Villemoes" <rasmus.villemoes@prevas.dk>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] using d.expand() in a python function
Thread-Topic: [yocto] using d.expand() in a python function
Thread-Index: AQHV0SuPsZgqe2iPfkiqCWILQ/GGN6f2wBCAgAAkrgD///A2gIAADa8AgAAGo4A=
Date: Wed, 22 Jan 2020 17:03:06 +0000
Message-ID: <2e976455-eded-d802-7959-3041ea2d59fe@prevas.dk>
References: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
 <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
 <066e4ba4-a571-6d58-9118-c2a661da59c7@prevas.dk>
 <4fce81ff69a5610957d83aad2ef45a41338ac362.camel@linuxfoundation.org>
 <15EC42EFBE2BE50F.583@lists.yoctoproject.org>
In-Reply-To: <15EC42EFBE2BE50F.583@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14)
 To VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:803:e1::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rasmus.villemoes@prevas.dk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54c7df9e-6a07-42ce-8509-08d79f5cf314
x-ms-traffictypediagnostic: VI1PR10MB2367:
x-microsoft-antispam-prvs: 
 <VI1PR10MB23678ADB0EB62B2E7AC438D1930C0@VI1PR10MB2367.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(39840400004)(136003)(396003)(366004)(376002)(346002)(199004)(189003)(316002)(110136005)(16576012)(186003)(26005)(31686004)(16526019)(6486002)(71200400001)(5660300002)(8976002)(31696002)(52116002)(81166006)(81156014)(8936002)(8676002)(956004)(2616005)(66446008)(478600001)(64756008)(36756003)(66476007)(86362001)(44832011)(66556008)(2906002)(66946007);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR10MB2367;H:VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: prevas.dk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3l7hS0IOtIDBBhUqm26wDl+d3V6lqouZPepOzu7o4Ak3uGHyhAxn664nSLvrnsh+Y++BEev+nGDFv1qAI0tTUatcxFxQfPrQQlBFkzmruLHndTiYzRUm8pbjHBhG6WJc2bsrQTur2zdB88ZjvO2Sx8s9ttyK2l129PGQwC4mhht64yDgFSkgeAzPEGEG/Kmlytb+x6dmlnykrRNLhjjUhiH0xShyLi6OEbBL5T2lIMJKIdfiLYfk7XL/im0ElR2jDcqhcouEjmQLop7JwsdFihLxBczGCigL2yfEAaKttEGZ6pphUQpuPRLYdsAp68d5S7qNxTmXLxTYhSNueorHL+Bw44uWC70ocHaWQiwdCARwhSvxIhcH3rB1g4TZ9iX8h9crstr7DDdTzdYA+l2KAj5eMeYqupgIDr3KBvSCJ7NV1GPvR2B9yyjulrKQAaLL
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 54c7df9e-6a07-42ce-8509-08d79f5cf314
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 17:03:06.1909
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xR6MFV79oUokHq/Pokaq2vjyDzFhn5yorkOP11Pvk3yFQl/Mni/nE67DJvF63TtqmeKjfQG3PlsxczHaw4z7eYlcRDJS3zRfKJ8EYMQynSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2367
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BEB676D935737E4EB7E12007BBE1B17E@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

T24gMjIvMDEvMjAyMCAxNy4zOSwgUmFzbXVzIFZpbGxlbW9lcyB2aWEgTGlzdHMuWW9jdG9wcm9q
ZWN0Lk9yZyB3cm90ZToNCj4gT24gMjIvMDEvMjAyMCAxNi41MCwgUmljaGFyZCBQdXJkaWUgd3Jv
dGU6DQo+PiBPbiBXZWQsIDIwMjAtMDEtMjIgYXQgMTU6NDYgKzAwMDAsIFJhc211cyBWaWxsZW1v
ZXMgd3JvdGU6DQo+Pj4gT24gMjIvMDEvMjAyMCAxNS4zNSwgUmljaGFyZCBQdXJkaWUgd3JvdGU6
DQo+Pj4+IEJpdGJha2UgY2FuIG9ubHkgZGV0ZWN0IGRpcmVjdCByZWZlcmVuY2VzIHRvIHZhcmlh
Ymxlcy4gVGhlIGNvZGUNCj4+Pj4gYWJvdmUgb25seSBydW5zIGF0IGNvbmZpZ3VyZSB0aW1lLCBu
b3QgYXQgcGFyc2UgdGltZSBzbyBpdHMgbm90DQo+Pj4+IHJlYWxseSBzdXJwcmlzaW5nIHRoYXQg
Yml0YmFrZSBjYW4ndCBrbm93IHdoYXQgaXRzIGRvaW5nLg0KPj4+DQo+Pj4gV2VsbCwgSSB0aG91
Z2h0IHRoYXQgYXMgd2VsbCBhdCBmaXJzdC4gQnV0IHRoZXJlIG11c3QgYmUgc29tZXRoaW5nDQo+
Pj4gZG9uZSBhdCBydW4tdGltZSB0byBmZWVkIGJhY2sgdGhlIHZhcmlhYmxlIGRlcGVuZGVuY2ll
cywgYmVjYXVzZSBpZiBJDQo+Pj4gYWRkIGEgY29tcGxldGVseSBkdW1iDQo+Pj4NCj4+PiBweXRo
b24gZG9fY29uZmlndXJlKCkgew0KPj4+ICAgICBpbXBvcnQgZmlsZWlucHV0DQo+Pj4gKyAgICBk
LmdldFZhcigiVkFSSUFCTEUiKSAjIHNpbGx5DQo+Pj4gICAgIHdpdGggb3BlbigiZm9vLnR4dCIs
ICJ3IikgYXMgb3V0Og0KPj4+ICAgICAgICAgZm9yIGxpbmUgaW4NCj4+PiBmaWxlaW5wdXQuaW5w
dXQoZmlsZXM9ZC5nZXRWYXIoIkZPT19JTlBVVCIpLnNwbGl0KCkpOg0KPj4+ICAgICAgICAgICAg
IGxpbmUgPSBkLmV4cGFuZChsaW5lKQ0KPj4+ICAgICAgICAgICAgIG91dC53cml0ZShsaW5lKQ0K
Pj4+IH0NCj4+Pg0KPiBTbyB0aGlua2luZyBvdXQgbG91ZCAoYW5kIGFwb2xvZ2llcyBpZiB0aGlz
IGlzIHZlcnkgc2lsbHkpOiBXb3VsZCBpdCBiZQ0KPiBwb3NzaWJsZSB0byBpbXBsZW1lbnQgc29t
ZSBhdXRvLWRlcHMgY2xhc3MNCg0KQWx0ZXJuYXRpdmVseSwgYXMgSSB3aWxsIG9ubHkgbmVlZCB0
aGlzIGZvciBmaWxlcyBJIHByb3ZpZGUgdmlhIGZpbGU6Ly8NClNSQ19VUklzLCBwZXJoYXBzIHRo
YXQgZmV0Y2hlciBjb3VsZCBiZSB0YXVnaHQgYSAiO3ZhcmV4cGFuZD0xIg0KcGFyYW1ldGVyLiBC
aXRiYWtlIG11c3QgYmUgZG9pbmcgbWQ1c3VtIG9yIHNpbWlsYXIgb24gbG9jYWwgZmlsZXMgYW55
d2F5DQooPyBob3cgZWxzZSBhcmUgY2hhbmdlcyBpbiB0aG9zZSBkZXRlY3RlZCksIHNvIGhhdmlu
ZyB2YXJleHBhbmQ9MSBtZWFuDQoiZ3JlcCBhbGwgJHtmb299IHJlZmVyZW5jZXMgYW5kIGFkZCBm
b28gdG8gZG9fdW5wYWNrW3ZhcmRlcHNdIiBkdXJpbmcNCnBhcnNpbmcgc2hvdWxkbid0IGFkZCB0
aGF0IG11Y2guDQoNCkFuZCBvZiBjb3Vyc2UgaGF2aW5nIGJpdGJha2UgYXV0b21hdGljYWxseSBh
Y3R1YWxseSBkbyB0aGUgZXhwYW5zaW9uIGFzDQpwYXJ0IG9mIHBsYWNpbmcgdGhlIGZpbGUgaW4g
V09SS0RJUiBtZWFucyBvbmUgY2FuIGF2b2lkIHRoYXQgbG9naWMNCmFsdG9nZXRoZXIgaW4gdGhl
IHJlY2lwZSAoc28gbXkgZG9fY29uZmlndXJlIGNvdWxkIGJlY29tZSBhIHNpbXBsZSBzaGVsbA0K
ZnVuY3Rpb24gdGhhdCBkb2VzICJjYXQgJHtGT09fSU5QVVR9ID4gZm9vLnR4dCIpLg0KDQpSYXNt
dXMNCg==
