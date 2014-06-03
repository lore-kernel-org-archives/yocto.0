Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07077E00B20; Tue,  3 Jun 2014 07:30:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0A7C0E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 07:30:31 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Tue, 3 Jun 2014 16:30:23 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "vaduvajanalexandru@yahoo.com" <vaduvajanalexandru@yahoo.com>
Thread-Topic: [yocto] bitbake virtual/kernel -c devshell doesn't build the sdk
Thread-Index: AQHPfnEe8iYlL7JsrUeovmxWOf1Bk5teGWGAgAE47YA=
Date: Tue, 3 Jun 2014 14:30:23 +0000
Message-ID: <1401805825.28197.2.camel@sestows129.enea.se>
References: <1401720252.7631.19.camel@sestows129.enea.se>
	<1401738625.64137.YahooMailNeo@web122502.mail.ne1.yahoo.com>
In-Reply-To: <1401738625.64137.YahooMailNeo@web122502.mail.ne1.yahoo.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.141.146]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake virtual/kernel -c devshell doesn't build the sdk
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
X-List-Received-Date: Tue, 03 Jun 2014 14:30:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FCA92027C5020B4696962A260AE09FBE@local>
Content-Transfer-Encoding: base64

aGksDQoNCk9uIG3DpW4sIDIwMTQtMDYtMDIgYXQgMTI6NTAgLTA3MDAsIEFsZXhhbmRydSBWYWR1
dmEgd3JvdGU6DQo+IA0KPiBBZHJpYW4gZGlkIHlvdSBydW4gYSAtYyBjb21waWxlIGJlZm9yZSAt
YyBkZXZzaGVsbD8NCg0KTm8gSSBoYXZlIG5vdC4gQW5kIGl0IHdhcyBpbnRlbnRpb25hbC4gSSBr
bm93IHRoYXQgaWYgSSBjb21waWxlIGFueXRoaW5nDQpJIHdpbGwgZ2V0IHRoZSBjcm9zc2RrLg0K
DQo+IEkgZG8gbm90IGJlbGlldmUgeW91IHNob3VsZCBoYXZlIGEgY3Jvc3NzZGsgd2l0aCBvbmx5
IGNhbGxpbmcgLWMNCj4gZGV2c2hlbGwgb24gYSBwYWNoYWdlL3JlY2lwZS4NCg0KTXkgdW5kZXJz
dGFuZGluZyB3YXMgdGhlIG9wcG9zaXRlLiBCdXQgaWYgdGhpcyBpcyBub3JtYWwgYmVoYXZpb3Vy
IHRoYW4NCkkgYW0gb2sgd2l0aCBpdC4gDQo+IA0KPiANCj4gQWxleA0KDQotLUFkcmlhbg0KPiAN
Cj4gT24gTW9uZGF5LCBKdW5lIDIsIDIwMTQgODoyMSBQTSwgQWRyaWFuIER1ZGF1IDxBZHJpYW4u
RHVkYXVAZW5lYS5jb20+DQo+IHdyb3RlOg0KPiANCj4gDQo+IA0KPiBIaSwNCj4gDQo+IFN0YXJ0
aW5nIGZyb20gYSBmcmVzaCBidWlsZCBmb2xkZXIsIEkgcnVuICJiaXRiYWtlIC1jIGRldnNoZWxs
DQo+IHZpcnR1YWwva2VybmVsIiBhbmQgZXhwZWN0IHRvIGhhdmUgdGhlIGNyb3NzIFNESyBzb3Vy
Y2VkIGFuZCBiZSBhYmxlDQo+IHRvDQo+IGJ1aWxkIHRoZSBrZXJuZWwgaW4gdGhlIGRldnNoZWxs
LiBUaGUgaXNzdWUgaXMgdGhhdCBldmVuIHRob3VnaCBQQVRIDQo+IGlzDQo+IHByZXBwZW5kZWQg
Y29ycmVjdGx5IHdpdGggdGhlIGV4cGVjdGVkIGxvY2F0aW9uIG9mIHRoZSBTREsgKGluIG15IGNh
c2UNCj4gdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL3BwY2U1MDB2Mi1lbmVhLWxp
bnV4LWdudXNwZSksIHRoZQ0KPiBjcm9zcyBTREsgaXMgbm90IGJ1aWx0LiAgQW0gSSB3cm9uZyBh
c3N1bWluZyB0aGF0ICAtYyBkZXZzaGVsbA0KPiB2aXJ0dWFsL2tlcm5lbCBzaG91bGQgZGVwZW5k
IG9uIHRoZSBjcm9zc3Nkaz8NCj4gDQo+IGJlc3QgcmVnYXJkcywNCj4gLS1BZHJpYW4NCj4gLS0g
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IHlv
Y3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IGh0dHBzOi8vbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPiANCj4gDQo+IA0KDQo=

