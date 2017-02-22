Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CB97E009AD; Wed, 22 Feb 2017 08:05:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 148 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Feb 2017 08:05:02 PST
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFA7BE0098A
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 08:05:02 -0800 (PST)
Received: from 1cgZNA-0005WK-Uk by out10c.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1cgZNA-0005Ww-VT; Wed, 22 Feb 2017 08:02:32 -0800
Received: by emcmailer; Wed, 22 Feb 2017 08:02:32 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10c.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Dudau@enea.com>)
	id 1cgZNA-0005WK-Uk; Wed, 22 Feb 2017 08:02:32 -0800
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0319.002; Wed, 22 Feb 2017 17:02:32 +0100
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "akuster808@gmail.com" <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH 2/3] openais: change SRC_URI http to
	fix error
Thread-Index: AQHSjSUSP2XrQWx95E6YNHtUwLLOTw==
Date: Wed, 22 Feb 2017 16:02:31 +0000
Message-ID: <1487779351.2955.2.camel@enea.com>
References: <1486082196-29895-1-git-send-email-akuster808@gmail.com>
	<1486082196-29895-2-git-send-email-akuster808@gmail.com>
	<d760735f-9b53-8afc-1d89-7894c72ea570@gmail.com>
In-Reply-To: <d760735f-9b53-8afc-1d89-7894c72ea570@gmail.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.45]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: Re: [meta-cgl][PATCH 2/3] openais: change SRC_URI http to fix error
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
X-List-Received-Date: Wed, 22 Feb 2017 16:05:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <043A7E3D78604645AD2F385D794631FC@enea.com>
Content-Transfer-Encoding: base64

T24gc8O2biwgMjAxNy0wMi0xOSBhdCAxOTo1MSAtMDgwMCwgYWt1c3RlcjgwOCB3cm90ZToNCj4g
cGluZy4NCj4gDQo+IGlzIHRoZXJlIGFuIGlzc3VlIHdpdGggdGhpcyBwYXRjaCA/DQo+IA0KPiAt
IGFybWluDQoNCkhpIEFybWluLA0KVGhlcmUgaXMgbm90aGluZyB3cm9uZyB3aXRoIHlvdXIgcGF0
Y2hlcywganVzdCB0aGF0IEkndmUgYmVlbiBvbg0KdmFjYXRpb24gdGhlIHBhc3Qgd2Vla3MgYW5k
IG5vdyBJIHdhcyB0cnlpbmcgdG8gZ2V0IG1ldGEtY2dsIHRvIGJ1aWxkDQphZ2FpbiBvbiBtYXN0
ZXIgYmVmb3JlIG1lcmdpbmcgdGhlbS7CoA0KDQpBbnl3YXlzLCBJIHNlZSBBbGV4YW5kcnUgbWVy
Z2VkIHlvdXIgcGF0Y2hlcywgc28gYWxsJ3MgZ29vZC4NCg0KYmVzdCByZWdhcmRzLA0KLS1BZHJp
YW4NCg0KPiANCj4gT24gMDIvMDIvMjAxNyAwNDozNiBQTSwgQXJtaW4gS3VzdGVyIHdyb3RlOg0K
PiA+IA0KPiA+IEZyb206IEFybWluIEt1c3RlciA8YWt1c3RlckBtdmlzdGEuY29tPg0KPiA+IA0K
PiA+IEVSUk9SOiBvcGVuYWlzLTEuMS40LXIwIGRvX2ZldGNoOiBFcnJvciBleGVjdXRpbmcgYSBw
eXRob24gZnVuY3Rpb24NCj4gPiBpbiBleGVjX3B5dGhvbl9mdW5jKCkgYXV0b2dlbmVyYXRlZDoN
Cj4gPiANCj4gPiBmdHA6Ly9mdHBAIGJyZWFrcyB0aGUgZmV0Y2hlciBhbmQgcmVhbGx5IGlzIG5v
dCBuZWVkZWQuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQXJtaW4gS3VzdGVyIDxha3VzdGVy
QG12aXN0YS5jb20+DQo+ID4gLS0tDQo+ID4gwqAgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2ds
L29wZW5haXMvb3BlbmFpc18xLjEuNC5iYiB8IDIgKy0NCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvbWV0
YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL29wZW5haXMvb3BlbmFpc18xLjEuNC5iYg0KPiA+IGIv
bWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL29wZW5haXMvb3BlbmFpc18xLjEuNC5iYg0KPiA+
IGluZGV4IDY5OTM0YTUuLmU1MDNjZWMgMTAwNjQ0DQo+ID4gLS0tIGEvbWV0YS1jZ2wtY29tbW9u
L3JlY2lwZXMtY2dsL29wZW5haXMvb3BlbmFpc18xLjEuNC5iYg0KPiA+ICsrKyBiL21ldGEtY2ds
LWNvbW1vbi9yZWNpcGVzLWNnbC9vcGVuYWlzL29wZW5haXNfMS4xLjQuYmINCj4gPiBAQCAtNSw3
ICs1LDcgQEAgREVQRU5EUyA9ICJjbHVzdGVyLWdsdWUgY29yb3N5bmMiDQo+ID4gwqDCoA0KPiA+
IMKgwqANCj4gPiDCoCBTUkNfVVJJID0gIiBcDQo+ID4gLcKgwqDCoMKgZnRwOi8vZnRwQHR1eC5y
YWluc2lkZS5zay9nZW50b28vZGlzdGZpbGVzL29wZW5haXMtJHtQVn0udGFyLmcNCj4gPiB6IFwN
Cj4gPiArwqDCoMKgwqBodHRwOi8vdHV4LnJhaW5zaWRlLnNrL2dlbnRvby9kaXN0ZmlsZXMvb3Bl
bmFpcy0ke1BWfS50YXIuZ3ogXA0KPiA+IMKgwqDCoMKgwqDCoGZpbGU6Ly9maXgtbGNyc28tbGlu
a2FnZS5wYXRjaCBcDQo+ID4gwqDCoMKgwqDCoMKgZmlsZTovL2J1aWxkLWNsZWFudXAtY29uZmln
dXJlLWFjLnBhdGNoIFwNCj4gPiDCoMKgwqDCoMKgwqBmaWxlOi8vb3BlbmFpcy1maXgtYmFzaC5w
YXRjaCBcDQo=

