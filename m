Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.113])
 by mx.groups.io with SMTP id smtpd.web09.2327.1579708017085858923
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 07:46:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=Hzto4A8A;
 spf=pass (domain: prevas.dk, ip: 40.107.14.113, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GYtP3AjthQ597vZi2RxyfelxJ9xw71sfEoQAvhysqkBDuzj36+3DPFEqdzlPknMy2HrHaa1NP6d41odstP/Nqfnhftg9au1H9sxoCKMZm3IEbZAjb3UxpZWSI1y7SYj+IFCko9PNEy6Cf2Ugdq2yBc/OBcBjB+0la88xhj02vbvS7BTolYLDBVLz7KrsEqG0RfmbpMbQU9aC8JByNPPA12P/f7KfcV+416+aVWIFOAnhT3eAr/55XwwgneabEKHLT/lvxeW/D1ZdF0Jssv63ytddMxrbvLgkCOJ7ty6arGZH/OA0l7h95JWzVYE8wq9B/tTyz58zvvLv9GV5ObdU8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3nI4maGV7/YTPENe+bjiFuEtJjAi9Z5lViB3WNolMiw=;
 b=FZUBZ8vmRmcbJEspwlCrnj7dsLYUJ1ZJZ0/AHYGdqKe1Nfjhl3v7s0FB2fIvmJDuK6FGv8XWJ+mSdjVOO4mT778BWW1SxEYAAyLSy16oN6Si7xhNv5jeTi1L6RtioBfdzr+Ko9QNLRPVVgLb+fPqHCM2W2ZUzBjPj1HrO6yMrcJZRKjbjADZvQCknOYhEfiTDyAtGcn/K7NlKgpXC/XMACR8ukN5xEVb7+hGB28WJDMNMBuTA1mVTjJXjVkuu2TeNVgnJbY8e8d8GANAaSKRNJ+BUZUMJhA1gPWKVgAOiGlMjsV+ev836W5oEGaZNuVl4v0NCUZPfSUen4CpzORLhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3nI4maGV7/YTPENe+bjiFuEtJjAi9Z5lViB3WNolMiw=;
 b=Hzto4A8A72BY3EO8GoWiBftmt156SJNu5YcvpsRsFZd9LqNSckCO/J6rqMeNJDORCjZFJIuj5+DwdmkVH3u739ePijnzbq6sKRwtzEZ1hMt0iSUk+z1XxqvXw0jgybtQ3CkYqRxPvASaxMdzUkd7UaN0FvUDP7MKO5onv7Lb00g=
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (20.178.126.85) by
 VI1PR10MB2382.EURPRD10.PROD.OUTLOOK.COM (20.177.62.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 22 Jan 2020 15:46:54 +0000
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d]) by VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 15:46:53 +0000
Received: from [172.16.11.50] (81.216.59.226) by HE1PR05CA0278.eurprd05.prod.outlook.com (2603:10a6:3:fc::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend Transport; Wed, 22 Jan 2020 15:46:53 +0000
From: "Rasmus Villemoes" <rasmus.villemoes@prevas.dk>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] using d.expand() in a python function
Thread-Topic: [yocto] using d.expand() in a python function
Thread-Index: AQHV0SuPsZgqe2iPfkiqCWILQ/GGN6f2wBCAgAAT6wA=
Date: Wed, 22 Jan 2020 15:46:53 +0000
Message-ID: <066e4ba4-a571-6d58-9118-c2a661da59c7@prevas.dk>
References: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
 <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
In-Reply-To: 
 <d405f16b039abad06373107dc5c5d63dcb216e7b.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0278.eurprd05.prod.outlook.com
 (2603:10a6:3:fc::30) To VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e1::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rasmus.villemoes@prevas.dk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a6a740c-cafb-444f-7690-08d79f524db6
x-ms-traffictypediagnostic: VI1PR10MB2382:
x-microsoft-antispam-prvs: 
 <VI1PR10MB23823BC64670ECD1F6CB1E42930C0@VI1PR10MB2382.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(39850400004)(376002)(366004)(136003)(346002)(189003)(199004)(8676002)(478600001)(52116002)(110136005)(956004)(81166006)(8976002)(36756003)(81156014)(2906002)(8936002)(186003)(16526019)(44832011)(31686004)(64756008)(66446008)(31696002)(86362001)(16576012)(66476007)(66556008)(71200400001)(66946007)(316002)(6486002)(5660300002)(2616005)(26005);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR10MB2382;H:VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: prevas.dk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 IwePvR84Cttu4tHrduNz06XA1dClIQoOU916KwZixMdZh9frIGpw1Qtl+maMohBJIy5ht7mBKQt0/jT8GIUfJYo/TIxWgYnIuIyEUJgAADUAv/3NjK5ufyPQ/IF4xqGG/OfVe6EzJzMHjuKwuJKY5LvHtT5uGEV5zqdd/gXaHIjL30tmv2UWKL1UuKXJOxSqt0ivR8HbvHUfPoee55ri1MNaOrU73CSeIa9vivUXA3eoIrbcZqiE9Zh9VhoqQO2H/c5HuCN646wBKQMK4aOspi7i8YeItE8Q0G36PWJ4zhUfkGfXYV8/MBuFRwRSPh61TRnHiGM9Jyh1dsg+iZKg0vEpE1Q72oNITOSTGn07U4GLiC8pgtlmGBs2N1/OC9gYDCJ+fOMEbAE1RA4CYpYu7hcHKTpCZBBvky3hT6aqXuxHC2pm7LU8vpYw4iKDkj6d
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a6a740c-cafb-444f-7690-08d79f524db6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 15:46:53.8211
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oJbwXGTewZWlcs//AIkA6cWlJetWX5v4XnbNylbzLppG39FFK3xwQ0VjZpuvdUNvDpxcOAeDBMx7q96Jmpvsg+ricJcY/lLPhhfm9wgd8iI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2382
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BE501DE1E854FC42BC8439E950BE9749@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

T24gMjIvMDEvMjAyMCAxNS4zNSwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+IE9uIFdlZCwgMjAy
MC0wMS0yMiBhdCAxMzo1NSArMDAwMCwgUmFzbXVzIFZpbGxlbW9lcyB3cm90ZToNCj4+IEkgaGF2
ZSBhIGRvX2NvbmZpZ3VyZSgpIHB5dGhvbiBmdW5jdGlvbiB3aGljaCBpcyBlc3NlbnRpYWxseQ0K
Pj4NCj4+IHB5dGhvbiBkb19jb25maWd1cmUoKSB7DQo+PiAgICAgaW1wb3J0IGZpbGVpbnB1dA0K
Pj4gICAgIHdpdGggb3BlbigiZm9vLnR4dCIsICJ3IikgYXMgb3V0Og0KPj4gICAgICAgICBmb3Ig
bGluZSBpbg0KPj4gZmlsZWlucHV0LmlucHV0KGZpbGVzPWQuZ2V0VmFyKCJGT09fSU5QVVQiKS5z
cGxpdCgpKToNCj4+ICAgICAgICAgICAgIGxpbmUgPSBkLmV4cGFuZChsaW5lKQ0KPj4gICAgICAg
ICAgICAgb3V0LndyaXRlKGxpbmUpDQo+PiB9DQo+Pg0KPj4gU28gc29tZSBvZiB0aG9zZSBpbnB1
dCBmaWxlcyBjYW4gY29udGFpbiAke1ZBUklBQkxFfSBhbmQgaXQgZ2V0cw0KPj4gcmVwbGFjZWQg
YXBwcm9wcmlhdGVseS4gQnV0IHRvIG15IHN1cnByaXNlLCB3aGVuIEkgdGhlbiBjaGFuZ2UNCj4+
IFZBUklBQkxFLA0KPj4gdGhlIHJlY2lwZSBkb2Vzbid0IGdldCByZWJ1aWx0LCBzbyBpdCBzZWVt
cyB0aGF0IGJpdGJha2UgZG9lc24ndA0KPj4gYXV0b21hdGljYWxseSByZWFsaXplIHRoYXQgdGhl
IHJlY2lwZSAob3IgdGFzaykgZGVwZW5kcyBvbiBWQVJJQUJMRS4NCj4+DQo+PiBTbyBkaWdnaW5n
IGEgYml0IGludG8gdGhlIGNvZGUsIGl0IHNlZW1zIHRoYXQgZC5leHBhbmQoKSBjYWxscw0KPj4g
ZXhwYW5kV2l0aFJlZnMoKSwgd2hpY2ggcmV0dXJucyBhIFZhcmlhYmxlUGFyc2Ugb2JqZWN0LCBi
dXQgdGhlbiBvbmx5DQo+PiB1c2VzIHRoZSAudmFsdWUgcHJvcGVydHksIHRocm93aW5nIGF3YXkg
LnJlZmVyZW5jZXMuIFNvIEkgYXNzdW1lIHRoYXQNCj4+IHdoYXQgSSByZWFsbHkgc2hvdWxkIGJl
IGRvaW5nIGlzIGNhbGwgZXhwYW5kV2l0aFJlZnMgYW5kIHRoZW4gc29tZWhvdw0KPj4gbWFudWFs
bHkgcGFzcyAucmVmZXJlbmNlcyB0by4uLiBzb21ldGhpbmc/IE9yLCB0aGVyZSBtdXN0IGJlIHNv
bWUNCj4+IG90aGVyDQo+PiBiaXRiYWtlIGludGVyZmFjZSBmb3IgZG9pbmcgdGhpcyBwcm9wZXJs
eT8NCj4gDQo+IEJpdGJha2UgY2FuIG9ubHkgZGV0ZWN0IGRpcmVjdCByZWZlcmVuY2VzIHRvIHZh
cmlhYmxlcy4gVGhlIGNvZGUgYWJvdmUNCj4gb25seSBydW5zIGF0IGNvbmZpZ3VyZSB0aW1lLCBu
b3QgYXQgcGFyc2UgdGltZSBzbyBpdHMgbm90IHJlYWxseQ0KPiBzdXJwcmlzaW5nIHRoYXQgYml0
YmFrZSBjYW4ndCBrbm93IHdoYXQgaXRzIGRvaW5nLg0KDQpXZWxsLCBJIHRob3VnaHQgdGhhdCBh
cyB3ZWxsIGF0IGZpcnN0LiBCdXQgdGhlcmUgbXVzdCBiZSBzb21ldGhpbmcgZG9uZQ0KYXQgcnVu
LXRpbWUgdG8gZmVlZCBiYWNrIHRoZSB2YXJpYWJsZSBkZXBlbmRlbmNpZXMsIGJlY2F1c2UgaWYg
SSBhZGQgYQ0KY29tcGxldGVseSBkdW1iDQoNCnB5dGhvbiBkb19jb25maWd1cmUoKSB7DQogICAg
aW1wb3J0IGZpbGVpbnB1dA0KKyAgICBkLmdldFZhcigiVkFSSUFCTEUiKSAjIHNpbGx5DQogICAg
d2l0aCBvcGVuKCJmb28udHh0IiwgInciKSBhcyBvdXQ6DQogICAgICAgIGZvciBsaW5lIGluIGZp
bGVpbnB1dC5pbnB1dChmaWxlcz1kLmdldFZhcigiRk9PX0lOUFVUIikuc3BsaXQoKSk6DQogICAg
ICAgICAgICBsaW5lID0gZC5leHBhbmQobGluZSkNCiAgICAgICAgICAgIG91dC53cml0ZShsaW5l
KQ0KfQ0KDQpidWlsZCB0aGUgcmVjaXBlIChiZWNhdXNlIG5vdyBpdCBoYXMgb2YgY291cnNlIGNo
YW5nZWQpLCBhbmQgdGhlbiBjaGFuZ2UNClZBUklBQkxFLCB0aGUgcmVjaXBlIGRvZXMgZ2V0IHJl
LWJ1aWx0LiBPciBkb2VzIGJpdGJha2Ugc3BlY2lmaWNhbGx5DQpsb29rIGZvciBkLmdldFZhcig8
bGl0ZXJhbD4pIHdoZW4gaXQgcGFyc2VzIGEgcHl0aG9uIGZ1bmN0aW9uPw0KDQo+IFlvdSdkIG5l
ZWQgdG8gcmVhZCB0aGUgZGF0YSBmcm9tIHRoaXMgZmlsZSBhdCBwYXJzZSB0aW1lIGZvciBiaXRi
YWtlIHRvDQo+IHN0YW5kIHNvbWUgY2hhbmNlIG9mIHNlZWluZyBpdCwgb3IgbWFudWFsbHkgc2V0
IHRoZSB2YXJpYWJsZXMgaXQNCj4gZGVwZW5kcyB1cG9uIHVzaW5nIHRoZSB2YXJkZXBzIGZsYWcu
DQo+IA0KPiBTb21ldGhpbmcgbGlrZToNCj4gDQo+IGRvX2NvbmZpZ3VyZVt2YXJkZXBzXSA9ICIk
e0BteV9kZXBlbmRzX2Z1bmN0aW9uKGQpfSINCj4gDQo+IHdoZXJlIG15X2RlcGVuZHNfZnVuY3Rp
b24gd291bGQgcmV0dXJuIGEgbGlzdCBvZiB2YXJpYWJsZXMgaXQNCj4gcmVmZXJlbmNlcy4NCj4g
DQo+IFJlYWRpbmcgZmlsZXMgbGlrZSB0aGF0IGF0IHBhcnNlIHRpbWUgZG9lc24ndCB3b3JrIG91
dCB3ZWxsIGZvcg0KPiBwZXJmb3JtYW5jZS4NCg0KWWVhaCwgc28gSSdkIHZlcnkgbXVjaCBsaWtl
IHRvIGF2b2lkIHRoYXQsIGFuZCB0aGUgYWJvdmUgb2JzZXJ2YXRpb24NCnN1Z2dlc3RzIHRoYXQg
SSBtaWdodCBiZSBhYmxlIHRvIGRvIHRoZSBleHBhbnNpb24gbWFudWFsbHksIGp1c3QgbG9va2lu
Zw0KZm9yIHRoZSBcJFx7Li4uXH0gcmVnZXhwIGFuZCBjYWxsaW5nIGdldFZhciB0byBmaW5kIHRo
ZSByZXBsYWNlbWVudC4gQnV0DQp0aGF0IHNlZW1zIGxpa2Ugc29tZXRoaW5nIHRoYXQgc2hvdWxk
IGJlIHNvbHZlZCBhbHJlYWR5Lg0KDQpUaGFua3MsDQpSYXNtdXMNCg==
