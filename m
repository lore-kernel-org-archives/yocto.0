Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E77FDE0087C; Mon,  3 Nov 2014 08:18:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EB8E00874
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 08:18:07 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjgGAN+pV1TGmAcV/2dsb2JhbABcgmsjgSwEgwLSUQIcgQYWAQEBAQEBfIQCAQEBAQMSERFFDAQCAQgNBwEBAgICBh0DAgICHxEUARABAQQOBQgaiAoDEgGpDopRjWUNhhEBAQEBAQEBAQEBAQEBAQEBAQEBAQEXgS2NKYIJFhsHgnc2gR4Fj3uCH4lVAYNChm2HQ4JmhAmCAB6BWmyBSIEDAQEB
X-IronPort-AV: E=Sophos;i="5.07,308,1413259200"; d="scan'208";a="90371745"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	03 Nov 2014 11:18:06 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Nov 2014 11:18:06 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Mon, 3 Nov 2014 11:18:05 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] Another sstate rebuild issue, badly need help
	understanding sstate
Thread-Index: Ac/3ZHenwuDsNv5FQjOB/ZYFOtnF4wAPTCAAAApuzVD//70DAIAAUstw
Date: Mon, 3 Nov 2014 16:18:04 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841158691@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
	<1415027190.5111.17.camel@ted>
	<30C2D590D16A5C46ADFE652191037798411585F0@AZ-US1EXMB03.global.avaya.com>
	<20141103160528.GB2799@jama>
In-Reply-To: <20141103160528.GB2799@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another sstate rebuild issue, badly need help understanding sstate
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
X-List-Received-Date: Mon, 03 Nov 2014 16:18:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcnRp
biBKYW5zYSBbbWFpbHRvOm1hcnRpbi5qYW5zYUBnbWFpbC5jb21dDQo+IFNlbnQ6IE5vdmVtYmVy
IDAzLCAyMDE0IDExOjA1IEFNDQo+IA0KPiBPbiBNb24sIE5vdiAwMywgMjAxNCBhdCAwMzowOTo0
M1BNICswMDAwLCBWdWlsbGUsIE1hcnRpbiAoTWFydGluKSB3cm90ZToNCj4gPiBIaSBSaWNoYXJk
LA0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogUmlj
aGFyZCBQdXJkaWUgW21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnXQ0K
PiA+ID4gU2VudDogTm92ZW1iZXIgMDMsIDIwMTQgMTA6MDYgQU0NCj4gPiA+DQo+ID4gPiBPbiBN
b24sIDIwMTQtMTEtMDMgYXQgMTI6NTMgKzAwMDAsIFZ1aWxsZSwgTWFydGluIChNYXJ0aW4pIHdy
b3RlOg0KPiA+ID4gPiBJIGhhdmUgYSB2YXJpYWJsZSDigJxSRVZfVE9PTFPigJ0gZGVmaW5lZCBp
biBkaXN0cm8vY29uZi9zb21lbmFtZS5jb25mDQo+ID4gPiA+IGluIGEgY3VzdG9tIGRpc3RybyBs
YXllciBmcm9tIGEgZ2l0IHJlcG8uDQo+ID4gPiA+DQo+ID4gPiA+IFRoaXMgdmFyaWFibGUgaXMg
YXNzaWduZWQgdG8gU1JDUkVWIGluIGEgbnVtYmVyIG9mIHJlY2lwZXMgKFNSQ1JFVg0KPiA+ID4g
PiA9DQo+ID4gPiA+IOKAnCR7UkVWX1RPT0xTfeKAnSkgZm9yIHBhY2thZ2VzIGluY2x1ZGVkIGlu
IG15IGltYWdlcyBhbmQgU0RLcy4NCj4gPiA+DQo+ID4gPiBDYW4geW91IGRlc2NyaWJlIGhvdyB0
aGUgdmFsdWUgb2YgUkVWX1RPT0xTIGlzIHNldD8gSXMgaXQganVzdA0KPiA+ID4gYXNzaWduZWQg
c29tZSB2YWx1ZSBvciBkb25lIHdpdGggc29tZSBjb2RlPw0KPiA+ID4NCj4gPg0KPiA+IFJFVl9U
T09MUyA9ICI8c29tZSBnaXQgY29tbWl0IGhhc2ggc3RyaW5nPiINCj4gPg0KPiA+ID4gRG9lcyBj
bGVhcmluZyB0aGUgYml0YmFrZSBjYWNoZSBtYWtlIHRoaW5ncyByZWJ1aWxkIGFzIGV4cGVjdGVk
IChtdg0KPiA+ID4gdG1wL2NhY2hlIHRtcC9jYWNoZS1vbGQpID8NCj4gPiA+DQo+ID4NCj4gPiBJ
IGRpZCBhIGNsZWFuc3N0YXRlIG9uIHRoZSBhZmZlY3RlZCBwYWNrYWdlcyBhbmQgdGhleSByZWJ1
aWxkIGFzIGV4cGVjdGVkLg0KPiANCj4gRG8geW91ciBwYWNrYWdlcyBoYXZlIFNSQ1BWIGluIFBW
Pw0KPiANCj4gU1JDUkVWIGlzbid0IGluY2x1ZGVkIGluIHNzdGF0ZSBzaWduYXR1cmUgd2l0aG91
dCBTUkNQViBpbiBQViBvciB0aGlzDQo+IHBhdGNoOg0KPiANCj4gY29tbWl0IGE0MTRiMTdlMWQ3
ODNhZDY4YTJkMGY3ZDU5MjI5Njc0NDljMDU3OTcNCj4gQXV0aG9yOiBSb3NzIEJ1cnRvbiA8cm9z
cy5idXJ0b25AaW50ZWwuY29tPg0KPiBEYXRlOiAgIE1vbiBTZXAgMjkgMTU6NDA6MTQgMjAxNCAr
MDEwMA0KPiANCj4gICAgIGJhc2UuYmJjbGFzczogYWRkIFNSQ1JFViB0byBkb19mZXRjaCgpIGhh
c2gNCj4gDQo+IGJ1dCBldmVuIHdpdGggdGhpcyBwYXRjaCBpdCBkb2Vzbid0IHdvcmsgZm9yIHJl
Y2lwZXMgd2l0aCBtdWx0aXBsZQ0KPiByZXBvc2l0b3JpZXMgKHlvdSBjYW4gZmluZCBhbiBlLW1h
aWwgd2l0aCBtb3JlIGRldGFpbHMgaW4gb2UtY29yZSBNTCkuDQoNClRoYW5rcyENCg0KTm8sIHRo
ZSBwYWNrYWdlcyBkbyBub3QgdXNlIFNSQ1BWLiBJIGRvbid0IHRoaW5rIHdlIGhhdmUgYW55IGNh
c2VzDQpvZiByZWNpcGVzIHdpdGggbXVsdGlwbGUgcmVwb3MuDQoNCldlIHdpbGwgcmV2aWV3IHRo
aXMgYW5kIGVpdGhlciB1c2UgU1JDUFYgb3IgYXBwbHkgdGhlIHBhdGNoLg0KDQpNVg0K

