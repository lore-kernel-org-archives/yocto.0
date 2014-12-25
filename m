Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21865E008DC; Wed, 24 Dec 2014 23:01:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [144.191.128.188 listed in list.dnswl.org]
Received: from USSTLZ-PINFEZ04.extemr.org (usstlz-pinfez04.extemr.org
	[144.191.128.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46062E00344
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 23:01:26 -0800 (PST)
Received: from USSTLZ-PMSG003.emrsn.org (10.16.72.185) by
	USSTLZ-PINFEZ04.extemr.org (10.16.8.77) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Thu, 25 Dec 2014 07:01:24 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.46]) by
	USSTLZ-PMSG003.emrsn.org ([169.254.7.205]) with mapi id 14.03.0158.001;
	Thu, 25 Dec 2014 07:01:15 +0000
From: <Neil.Wu@Emerson.com>
To: <raj.khem@gmail.com>
Thread-Topic: [yocto] problem of install kernel module(*.ko) to rootfs folder
Thread-Index: AQHQH/KS3uZ7JFVgO0yksUPrZqVfBZyf4Jbw
Date: Thu, 25 Dec 2014 07:01:16 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522035867E@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
	<CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com>
In-Reply-To: <CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: problem of install kernel module(*.ko) to rootfs folder
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
X-List-Received-Date: Thu, 25 Dec 2014 07:01:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmFqLA0KDQpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuIEkgaGF2ZSByZXNvbHZlZCB0aGUg
cHJvYmxlbS4gVGhhbmsgeW91ISENCg0KTmVpbA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21dIA0KU2VudDogVGh1
cnNkYXksIERlY2VtYmVyIDI1LCAyMDE0IDExOjI2IEFNDQpUbzogV3UsIE5laWwgW0NMSU1BVEUv
UlMvQ05dDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10g
cHJvYmxlbSBvZiBpbnN0YWxsIGtlcm5lbCBtb2R1bGUoKi5rbykgdG8gcm9vdGZzIGZvbGRlcg0K
DQpPbiBXZWQsIERlYyAyNCwgMjAxNCBhdCA3OjA4IFBNLCAgPE5laWwuV3VAZW1lcnNvbi5jb20+
IHdyb3RlOg0KPiBIaSBhbGwsDQo+DQo+DQo+DQo+IEZpcnN0IG9mIGFsbCAsIG1lcnJ5IENocmlz
dG1hcy4NCj4NCj4NCj4NCj4gSSBydW4gbWVudWNvbmZpZyBhbmQgc2F2ZSB0aGUgLmNvbmZpZyBh
cyBmb2xsb3dpbmc6DQo+DQo+DQo+DQo+IENPTkZJR19TUElfREVWX0lOVEVSRkFDRT1tDQo+DQo+
IENPTkZJR19QQUNLQUdFX2ttb2QtdXNiLWNvcmU9bQ0KPg0KPg0KPg0KPiBUaGVuIEkgYnVpbGQg
dGhlIGxpbnV4LXlvY3RvIGFuZCBjb3JlLWltYWdlLW1pbmltYWwgOg0KPg0KPiBCaXRiYWtlIGxp
bnV4LXlvY3RvDQo+DQo+IEJpdGJha2UgY29yZS1pbWFnZS1taW5pbWFsDQo+DQo+DQo+DQo+IEkg
ZXhwZWN0ZWQgYWxsIHRoZSBrZXJuZWwgbW9kdWxlIHdpbGwgaW5zdGFsbCBpbiBjb3JlLWltYWdl
LW1pbmltYWwgcm9vdGZzLA0KPiBidXQgLCBpbiB0aGUgLi9saWIvbW9kdWxlcy8zLjQuNDQtRzQg
LCBJIGp1c3QgZmluZA0KPg0KPg0KPg0KPiBtb2R1bGVzLmFsaWFzLCAgbW9kdWxlcy5hbGlhcy5i
aW4gLCBtb2R1bGVzLmJ1aWx0aW4uYmluLCAgbW9kdWxlcy5kZXAg4oCmDQo+DQo+DQo+DQo+IEl0
IGhhdmUgbm90aGluZyBrZXJuZWwgbW9kdWxlcyAoKi5rbykgZmlsZSBpbiAuL2xpYi9tb2R1bGVz
Ly4gSG93IHRvIGluc3RhbGwNCj4gdGhlICoua28gdG8gcm9vdGZzICBhdXRvbWF0aWNhbGx5ID8N
Cj4NCj4NCj4NCj4gU29tZW9uZSB0ZWxsIG1lIHRvIGNoYW5nZSB0aGUgLmNvbmZpZyBmaWxlIGFz
IHRoZXNlIDoNCj4NCj4gQ09ORklHX1NQSV9ERVZfSU5URVJGQUNFPXkNCj4NCj4gQ09ORklHX1BB
Q0tBR0Vfa21vZC11c2ItY29yZT15DQo+DQo+IEkgaGF2ZSB0ZXN0IGl0IHdoYXQgd2lsbCBidWls
ZCB0aGUga2VybmVsIG1vZHVsZXMgKCoua28gKSB0byBrZXJuZWwgaW1hZ2UsDQo+IHRoYXTigJlz
IG5vdCB3aGF0IEkgbmVlZC4NCj4NCj4NCj4NCj4NCj4NCj4gc28gLCAgIEkganVzdCB3YW50IHRv
IGtub3cgLiBob3cgdG8gaW5zdGFsbCB0aGUga2VybmVsIG1vZHVsZXMgKCoua28pIHRvDQo+IGNv
cmUtaW1hZ2UtbWluaW1hbCByb290ZnMgPyAgSWYgeW91IGtub3cgaXQgLCBwbGVhc2UgaGVscCBt
ZSAuDQoNCndlbGwgaXRzIGEgbWluaW1hbC1pbWFnZSBzbyBhbGwgbW9kdWxlcyBhcmUgZXhjbHVk
ZWQuIFlvdSBjYW4gYnVpbGQNCmNvcmUtaW1hZ2UtYmFzaWMgYW5kIGl0IHNob3VsZCBoYXZlIGl0
DQpvciB5b3UgY2FuIGRvIHNvbWV0aGluZyBsaWtlDQoNCk1BQ0hJTkVfRVhUUkFfUlJFQ09NTUVO
RFMgPSAiIGtlcm5lbC1tb2R1bGVzIg0KDQppbiB5b3VyIG1hY2hpbmUuY29uZg0KDQoNCj4NCj4g
VGhhbmsgeW91IHZlcnkgbXVjaC4NCj4NCj4NCj4NCj4gTmVpbA0KPg0KPg0KPg0KPg0KPg0KPg0K
Pg0KPg0KPg0KPg0KPg0KPg0KPg0KPg0KPg0KPg0KPiAtLQ0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4geW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlz
dGluZm8veW9jdG8NCj4NCg==

