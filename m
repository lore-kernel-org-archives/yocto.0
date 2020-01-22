Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.93])
 by mx.groups.io with SMTP id smtpd.web11.3653.1579713294229808284
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 09:14:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=lFRyRyH9;
 spf=pass (domain: prevas.dk, ip: 40.107.22.93, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h01dfnlmHLKh5qltCELqN46kQgpaT0q7YrL3VaM1GOOGTuBbf9dop3wwLmIY/Bq8mthM5R1IkASb4C0wwpO+GAyoe2OKnxVsJbeNd3BglzoFvHZN9Lqhp9sZ2Dv7v3HLTVbHu2cyS9J4Zf8GhvFLgV0RRb/6xCj32/4rsRQs1WI1HpH6hm1iUtWLv+am6dWYOkUtQmvPVFM6AiDCgloKFwrq4yMNyMh5v/gfJ0BMNg77eS1NfsUE45jW5U1oeWQigSJ7lF10x1GnesD47tB/KyhZKIwWkmjaEcCRSNLat4wCSZQi6B3/rWec3wxu/5zwNdaXLjBHGouW3l9NWHXnRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSB9b5W7D9z3fehosHhK5Js46N5cafTd8/YVh7yHeFQ=;
 b=Fo+fxgBRFcqFVG6PHKjHS7E1Xt636oi2lVxCZyTT6jNkcZWg8SUT4nVqlU5rEEeCV5f8RxLzGnU1m8XG/nZkut1aJXXNrQRoKoyUpJOGQY/NcUrg4Ee3uuwUs+Kq8JcdyskQxzNB+DTucOR2rk9C/rYDFFQR0YyN40DXtn/roOffX5ELyitvfgWCgbxHLOlPUSsT0z4gHJuASuxTjZp+Aiogcodrr2TMToaUl5Cq+vx/jgbhSXhjYptfd+ikzkXJSonhTxFCY5lQONUQvBmTyVJ7bDgjD1norKeIyJtAQJS16ZRskW9GTMFpC1ErWxbW9MKqYP6oON0KbmdnMpRvdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSB9b5W7D9z3fehosHhK5Js46N5cafTd8/YVh7yHeFQ=;
 b=lFRyRyH9fgSY7I+9RdWIlGuAACRphtvk9ga6fDmq4Y3TvrwxrxdyEUu7jWj7ztpmt3cFK27ntr4t6buXZpOJZu2rujadwPKeOr2HG/wnRV+CwGlJIQ2wiO1aFQbUNl4hL01XAaPHJhFpzSpjh7ALrDy9xbnxx2fqaJ5nMS+IXOA=
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (20.178.126.85) by
 VI1PR10MB1968.EURPRD10.PROD.OUTLOOK.COM (52.134.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.22; Wed, 22 Jan 2020 17:14:51 +0000
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d]) by VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 17:14:51 +0000
Received: from [172.16.11.50] (81.216.59.226) by HE1PR05CA0389.eurprd05.prod.outlook.com (2603:10a6:7:94::48) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend Transport; Wed, 22 Jan 2020 17:14:51 +0000
From: "Rasmus Villemoes" <rasmus.villemoes@prevas.dk>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] using d.expand() in a python function
Thread-Topic: [yocto] using d.expand() in a python function
Thread-Index: 
 AQHV0SuPsZgqe2iPfkiqCWILQ/GGN6f2wBCAgAAkrgD///A2gIAAHnMA///0/gCAAAQpAA==
Date: Wed, 22 Jan 2020 17:14:51 +0000
Message-ID: <e71a3115-728a-cb4d-922b-0615e3b049f4@prevas.dk>
References: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
 <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
 <066e4ba4-a571-6d58-9118-c2a661da59c7@prevas.dk>
 <4fce81ff69a5610957d83aad2ef45a41338ac362.camel@linuxfoundation.org>
 <fbddc4d3-e0de-395b-b32a-0374f3eeab39@prevas.dk>
 <231a141301f7464313c22d9a4a928597c930c8df.camel@linuxfoundation.org>
In-Reply-To: 
 <231a141301f7464313c22d9a4a928597c930c8df.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0389.eurprd05.prod.outlook.com
 (2603:10a6:7:94::48) To VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e1::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rasmus.villemoes@prevas.dk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68fa70a9-8bb2-43f0-26f6-08d79f5e9778
x-ms-traffictypediagnostic: VI1PR10MB1968:
x-microsoft-antispam-prvs: 
 <VI1PR10MB1968355A03C43DBCB116C5EC930C0@VI1PR10MB1968.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(376002)(136003)(346002)(39840400004)(366004)(396003)(189003)(199004)(81166006)(26005)(36756003)(86362001)(8936002)(478600001)(5660300002)(8976002)(316002)(110136005)(6486002)(16576012)(31696002)(81156014)(8676002)(44832011)(2906002)(52116002)(16526019)(186003)(31686004)(66476007)(66556008)(956004)(66446008)(66946007)(71200400001)(64756008)(2616005);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR10MB1968;H:VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: prevas.dk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KN+oKMS/ihoCIpQrQAPBOFYZV1DEpNU9beaBssTX03SUU9n9VCWMHlTO1oZ1jNlX+9kklTZtX5xuE4g6Jsu9WHg17nR5MmfI2f/qmEZeFr/N7iIFUYB5STKmZIybR9RfVsuYDtt304/UOvviIc2sLFDcpZQ2yJkVcG7Swm/nV+XvxcTFBEXGWqy9jRj62KShUS0IGFJkW5JHMg4XFPTTUqw/Y9DBIcSvrlAarlp3RDTzBQ/qzhML4ODnaXJcNMYqQYdBrBlsbtQe+oECBGCHj3tkSX4BgeQm83btryXXBQDaz8LqJbh0PAupeEeQHYHimR3w1Xt37uMSPne/2tpD05elaanGk7mdXNo7WdBjWflGqOxlJJkASJuEucij6a1nF5pc84LjUM1mrQUJvp337h8Zu0RU2hcGD6ZjXp4oMu58u+/TJe5V1UcVYmxz7p+P
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 68fa70a9-8bb2-43f0-26f6-08d79f5e9778
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 17:14:51.4929
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L+7ws0WA4lH2Vi3WkAiWYRj6LkEDdBX2BfOpwDuZNr1u7Ml/v0+jSOA/fjku5/j6r2tdZ6M+/BWaUMG4SdE0fSuYJBid4ToNrA2pJOYkDfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1968
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <61665EABFB4C0143979A2C97776DBC4B@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

T24gMjIvMDEvMjAyMCAxNy41OSwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+IE9uIFdlZCwgMjAy
MC0wMS0yMiBhdCAxNjozOSArMDAwMCwgUmFzbXVzIFZpbGxlbW9lcyB3cm90ZToNCj4+IE9uIDIy
LzAxLzIwMjAgMTYuNTAsIFJpY2hhcmQgUHVyZGllIHdyb3RlOg0KPj4+IE9uIFdlZCwgMjAyMC0w
MS0yMiBhdCAxNTo0NiArMDAwMCwgUmFzbXVzIFZpbGxlbW9lcyB3cm90ZToNCj4+Pj4gT24gMjIv
MDEvMjAyMCAxNS4zNSwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+Pg0KPj4gSSBjYW4ndCBiZSB0
aGUgZmlyc3Qgb25lIHRvIHdhbnQgdG8gc3Vic3RpdHV0ZSBiaXRiYWtlIHZhcmlhYmxlcyBpbg0K
Pj4gdmFyaW91cyBzb3VyY2UgZmlsZXMsIHdpdGhvdXQgbmVjZXNzYXJpbHkga25vd2luZyB1cGZy
b250IHdoaWNoDQo+PiB2YXJpYWJsZXMgbWlnaHQgYXBwZWFyLg0KPj4NCj4+IFNvIHRoaW5raW5n
IG91dCBsb3VkIChhbmQgYXBvbG9naWVzIGlmIHRoaXMgaXMgdmVyeSBzaWxseSk6IFdvdWxkIGl0
DQo+PiBiZQ0KPj4gcG9zc2libGUgdG8gaW1wbGVtZW50IHNvbWUgYXV0by1kZXBzIGNsYXNzIA0K
PiANCj4gV2h5IG5vdCBkbyB3aGF0IEkgYWxyZWFkeSBzdWdnZXN0ZWQ/DQoNClNvcnJ5LCBJJ20g
cHJvYmFibHkgYSBiaXQgc2xvdy4gRG8geW91IG1lYW4gdGhpcyBwYXJ0DQoNCiAgV2VsbCwgaWYg
eW91IGhhdmUgdGhlIGV4cGFuc2lvbiwganVzdCBwdXQgaXQgaW4gYSB2YXJpYWJsZSB0aGUNCiAg
ZnVuY3Rpb24gcmVmZXJlbmNlcy4uLg0KDQo/IFRoYXQgd2FzIGluIHJlc3BvbnNlIHRvIHNvbWV0
aGluZyB0aGF0IEkgc2luY2UgZGlzY292ZXJlZCB3b3VsZG4ndA0Kd29yayBbYmVjYXVzZSBkLmdl
dFZhcihsaW5lKSBkb2Vzbid0IG1hZ2ljYWxseSBmZWVkIGJhY2sgdGhlIGRlcHMgaW5mbw0KYXMg
bXkgbmFpdmUgZXhwZXJpbWVudCBsZWQgbWUgdG8gYmVsaWV2ZV0sIHNvIEkgbXVzdCBhZG1pdCBJ
IGRpZG4ndA0KdGhpbmsgdG9vIGhhcmQgYWJvdXQgaXQuIEJ1dCwgSSBkb24ndCBzZWUgaG93IHNs
dXJwaW5nIGluIHRoZSBmaWxlKHMpLA0KZG9pbmcgdGhlIGV4cGFuc2lvbiwgYW5kIHB1dHRpbmcg
dGhlIHJlc3VsdCBpbiBzb21lIHZhcmlhYmxlIHRoYXQgSSB0aGVuDQpkbyBhIChkdW1teT8pIHJl
ZmVyZW5jZSB0byB3b3VsZCBoZWxwIHRlYWNoIGJpdGJha2Ugd2hpY2ggdmFyaWFibGVzIHdlcmUN
CnVzZWQgZHVyaW5nIHRoZSBleHBhbnNpb24uDQoNCj4gSSBzdXNwZWN0IHJhdGhlciB0aGFuIGEg
Y2xhc3MgeW91J3JlIGxvb2tpbmcgZm9yIGEgaGVscGVyIGZ1bmN0aW9uIGluDQo+IGxpYi9vZSB0
byBjYWxsIGludG8/IEp1c3QgbW92ZSBteSBzdWdnZXN0ZWQgZnVuY3Rpb24gc29tZXdoZXJlIHRo
ZXJlPw0KDQpXZWxsLCB5ZXMsIEknbSBjZXJ0YWlubHkgbG9va2luZyBmb3Igb3IgYXNraW5nIGZv
ciBhIGxpYnJhcnkgZnVuY3Rpb24NCnRoYXQgd2lsbCBkbyB3aGF0IEkgd2FudC4gQnV0IEknbSBu
b3QgcmVhbGx5IHNlZWluZyBob3cgdG8gaW1wbGVtZW50DQp0aGF0LiBJIGRvIG5vdyBzZWUgaG93
IHRoZSB2YXJpYWJsZSBkZXBlbmRlbmNpZXMgbXVzdCBiZSBrbm93biBhdCBwYXJzZQ0KdGltZS4N
Cg0KUmFzbXVzDQo=
