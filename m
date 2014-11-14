Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 000FAE008CC; Thu, 13 Nov 2014 21:05:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C386E00837
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 21:05:17 -0800 (PST)
Received: from USSTLZ-PMSG006.emrsn.org (10.16.72.188) by
	USSTLZ-PINFEZ04.extemr.org (10.16.8.77) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Fri, 14 Nov 2014 05:05:16 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.30]) by
	USSTLZ-PMSG006.emrsn.org ([169.254.1.142]) with mapi id 14.03.0158.001;
	Fri, 14 Nov 2014 05:05:16 +0000
From: <Neil.Wu@Emerson.com>
To: <xerofoify@gmail.com>
Thread-Topic: [yocto] Can't find the header files after install
	adt_installer.tar.gz
Thread-Index: AQHP/1M1mcLKnJuQLUOYlovCuwlH5Jxfc/VA
Date: Fri, 14 Nov 2014 05:05:15 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8521E20E474@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8521E20E32E@USSTLZ-PMSG012.emrsn.org>
	<CAPDOMVgwLM-PJVADkCL=iCoKkE1E9jLQTsF+DekQHk-kYNzo=A@mail.gmail.com>
In-Reply-To: <CAPDOMVgwLM-PJVADkCL=iCoKkE1E9jLQTsF+DekQHk-kYNzo=A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Can't find the header files after install adt_installer.tar.gz
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
X-List-Received-Date: Fri, 14 Nov 2014 05:05:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciB5b3VyIHJlcGx5Lg0KSSBqdXN0IG1vdmUgdGhlIGFkdF9pbnN0YWxsZXIu
dGFyLmd6IHRvIGFub3RoZXIgcGMgd2hpY2ggZG9uJ3QgaGF2ZSB5b2N0byBwcm9qZWN0LiBJbnN0
YWxsIHRoZSBhZHRfaW5zdGFsbGVyIGFuZCBleGVjdXRlIHRoZSBlbnZpcm9ubWVudC1zZXR1cC1h
cm12NXRlLXBva3ktbGludXgtZ251ZWFiaQ0KDQpUaGVuIGNvbXBpbGUgdGhlIGhlbGxvLmMNCmFy
bS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjIGhlbGxvLmMgLW8gaGVsbG8NCg0KSSBkb24ndCBrbm93
IHdoZXRoZXIgbmVlZCB0byBkbyBvdGhlciB0aGluZz8NCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQpGcm9tOiBOaWNrIEtyYXVzZSBbbWFpbHRvOnhlcm9mb2lmeUBnbWFpbC5jb21dIA0KU2Vu
dDogVGh1cnNkYXksIE5vdmVtYmVyIDEzLCAyMDE0IDExOjA1IFBNDQpUbzogV3UsIE5laWwgW0NM
SU1BVEUvUlMvQ05dDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5
b2N0b10gQ2FuJ3QgZmluZCB0aGUgaGVhZGVyIGZpbGVzIGFmdGVyIGluc3RhbGwgYWR0X2luc3Rh
bGxlci50YXIuZ3oNCg0KSGF2ZSB5b3UgcmVhZCB0aGUgeW9jdG8gZG9jcyBvbiBBRFQgZm9yIGJ1
aWxkaW5nIGNvcnJlY3RseSB5b3VyIGRldmVsb3BtZW50IGtpdCwgc2VlbXMgdG8gbWUgcmF0aGVy
IHRyaXZpYWwgZXJyb3IgaW4gZWl0aGVyIHlvdXIgYnVpbGQgb3IgYml0YmFrZSByZWNpcGUgZm9y
IGhlbGxvIHdvcmxkLg0KQ2hlZXJzIE5pY2sNCg0KT24gVGh1LCBOb3YgMTMsIDIwMTQgYXQgNDo0
MyBBTSwgIDxOZWlsLld1QGVtZXJzb24uY29tPiB3cm90ZToNCj4gSGkgYWxsIDoNCj4NCj4gICAg
ICAgICAgICBJIGhhdmUgaW5zdGFsbGVkICB0aGUgYWR0X2luc3RhbGxlciAudGFyLmd6IGxpa2Ug
Zmxsb3dpbmc6DQo+DQo+ICAgICAgICAgICAgICAgJCBjZCB+DQo+DQo+ICAgICAgICAgICAgICAg
JCB0YXIgLXhqZiBhZHRfaW5zdGFsbGVyLnRhci5iejINCj4NCj4gICAgICAgICAgICAgICAkIGNk
IGFkdC1pbnN0YWxsZXINCj4NCj4gICAgICAgICAgICAgICAkIC4vYWR0X2luc3RhbGxlcg0KPg0K
Pg0KPg0KPiAgICAgICAgIEJlY2F1c2UgdGhlDQo+IFlPQ1RPQURUX1RBUkdFVF9TWVNST09UX0xP
Q19hcm09IiRIT01FL3Rlc3QteW9jdG8vJFlPQ1RPQURUX1RBUkdFVF9NQUMNCj4gSElORV9hcm0N
Cj4gaW4gYWR0X2luc3RhbGxlci5jb25mIGZpbGUgLA0KPg0KPiAgICAgICAgIHRoZW4gSSBleHRy
YWN0IHRoZSBteXNlbGYgUm9vdCBGaWxlc3lzdGVtOg0KPg0KPiAgICAgICAgICAgICAgJHNvdXJj
ZSAvb3B0L3Bva3kvMS43L2Vudmlyb25tZW50LXNldHVwLWk1ODYtcG9reS1saW51eA0KPg0KPiAg
ICAgICAgICAgICAgJCBydW5xZW11LWV4dHJhY3Qtc2RrDQo+IH4vRG93bmxvYWRzL2NvcmUtaW1h
Z2UtYXJtLXJvb3Rmcy50YXIuYnoyICAgICAgICAgICAkSE9NRS8gdGVzdC15b2N0by8NCj4gcWVt
dWFybS8NCj4NCj4NCj4NCj4gICAgICAgIFRyeSB0byBjb21waWxlICB0aGUgIOKAnEhlbGxvd29y
bGTigJ0sIGl0IGFwcGVyIHRoaXMgZXJyb3I6DQo+DQo+ICAgICAgICAgICBoZWxsby5jOjE6MTk6
IGZhdGFsIGVycm9yOiBzdGRpby5oOiBObyBzdWNoIGZpbGUgb3IgDQo+IGRpcmVjdG9yeQ0KPg0K
Pg0KPg0KPiAgICAgRG8geW91IGtub3cgaG93IHRvIHJlc29sdmUgdGhlIGlzc3VlPyBQbGVhc2Ug
aGVscCBtZSAhDQo+DQo+ICAgICBUaGFuayB5b3UgdmVyeSBtdWNoIQ0KPg0KPg0KPiAtLQ0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBt
YWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4NCg==

