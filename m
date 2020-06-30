Received: from mail.actia.se (mail.actia.se [195.67.112.82])
 by mx.groups.io with SMTP id smtpd.web10.12195.1593511318721858420
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 03:01:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: actia.se, ip: 195.67.112.82, mailfrom: john.ernberg@actia.se)
Received: from S036ANL.actianordic.se (192.168.16.117) by
 S036ANL.actianordic.se (192.168.16.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2044.4; Tue, 30 Jun 2020 12:01:56 +0200
Received: from S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69]) by
 S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69%3]) with mapi id
 15.01.2044.004; Tue, 30 Jun 2020 12:01:56 +0200
From: "John Ernberg" <john.ernberg@actia.se>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] INCOMPATIBLE_LICENSE - how to use it properly?
Thread-Topic: [yocto] INCOMPATIBLE_LICENSE - how to use it properly?
Thread-Index: AQHWTsGsti6IBxq3eUqDhkIqYh9VRajwyjaAgAABt4A=
Date: Tue, 30 Jun 2020 10:01:56 +0000
Message-ID: <01d5b9db-cd7e-eee9-bc09-1ff346c7e2aa@actia.se>
References: <c57c1a5d-8b83-c9c8-7eba-20edf63e0de0@actia.se>
 <CANNYZj9jEMyhwHFoSsjPQbLV7ff=336_JYcaJ=NTJ1Smcyuz9w@mail.gmail.com>
In-Reply-To: <CANNYZj9jEMyhwHFoSsjPQbLV7ff=336_JYcaJ=NTJ1Smcyuz9w@mail.gmail.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.11.250.5]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <02DAB1D1C0E1DD429A3C7F9F0AC58DAE@actia.se>
Content-Transfer-Encoding: base64

SGkgQWxleCwNCg0KSSB3aWxsIGdpdmUgdGhpcyBhIHRyeSBvbiBtYXN0ZXIuDQoNCk9uZSBxdWVz
dGlvbiB0aG91Z2gsIHdpbGwgdGhpcyBzdGlsbCBjYXRjaCBidWlsZC1vbmx5IGxpYnJhcmllcz8g
KGkuZS4gYSANCmxpYnJhcnkgdGhhdCBjb25zaXN0cyBvbmx5IG9mIGhlYWRlcnMpLiBJIGRvbid0
IHRoaW5rIHdlIGhhdmUgc3VjaCANCnJlY2lwZXMgcmlnaHQgbm93LCBpdCdzIG1vcmUgdG8gdW5k
ZXJzdGFuZCBob3cgdGhpcyBmZWF0dXJlIHdvcmtzLg0KDQpUaGFuayB5b3UuDQoNCkJlc3QgcmVn
YXJkcyAvLyBKb2huIEVybmJlcmcNCg0KT24gNi8zMC8yMCAxMTo1NSBBTSwgQWxleGFuZGVyIEth
bmF2aW4gd3JvdGU6DQo+IE9uIG1hc3RlciwgeW91IGNhbiBzZXQgSU5DT01QQVRJQkxFX0xJQ0VO
U0UgaW4gdGhlIGltYWdlIHJlY2lwZSwgcmF0aGVyIA0KPiB0aGFuIGdsb2JhbGx5LCB0aGVuIHRo
ZSBjaGVjayB3b3VsZCBvbmx5IGJlIHBlcmZvcm1lZCBvbiBpdGVtcyB0aGF0IA0KPiBhY3R1YWxs
eSBnbyBpbnRvIHRoYXQgaW1hZ2UuDQo+IA0KPiBXYXJyaW9yIGRvZXMgbm90IGhhdmUgdGhhdCBm
ZWF0dXJlIHlldCwgSSB0aGluaywgc28geW91ciBvbmx5IG9wdGlvbiANCj4gdGhlcmUgaXMgbWV0
YS1ncGwyLg0KPiANCj4gQWxleA0KPiANCj4gT24gVHVlLCAzMCBKdW4gMjAyMCBhdCAxMTozNCwg
Sm9obiBFcm5iZXJnIDxqb2huLmVybmJlcmdAYWN0aWEuc2UgDQo+IDxtYWlsdG86am9obi5lcm5i
ZXJnQGFjdGlhLnNlPj4gd3JvdGU6DQo+IA0KPiAgICAgSGksDQo+IA0KPiAgICAgSSBoYXZlIGJl
ZW4gdHJ5aW5nIHRvIHVzZSBJTkNPTVBBVElCTEVfTElDRU5TRSB0byBmaWx0ZXIgb3V0DQo+ICAg
ICB1bmRlc2lyYWJsZQ0KPiAgICAgbGljZW5zZXMgZm9yIHVzIGZyb20gb3VyIGltYWdlcy4gSSBz
dGFydGVkIHNpbXBsZSBhbmQgcGlja2VkIHRoZQ0KPiAgICAgZXhhbXBsZXMgZnJvbSB0aGUgbWFu
dWFsIChBR1BMLTMuMCwgR1BMLTMuMCBhbmQgTEdQTC0zLjApLg0KPiANCj4gICAgIEN1cnJlbnRs
eSB3ZSdyZSBiYXNlZCBvbiBXYXJyaW9yLCBidXQgSSBhbHNvIGRpZCBhIHNob3J0IHRlc3Qgb24g
bWFzdGVyDQo+ICAgICAocmVzdWx0cyBsYXRlciBpbiB0aGUgbWVzc2FnZSkNCj4gDQo+ICAgICBP
dXIgaW1hZ2VzIHVzZSBzeXN0ZW1kIGFzIGluaXQgc3lzdGVtLiBXZSB1c2UgYnVzeWJveCBhc2gg
YXMgc2hlbGwgb24NCj4gICAgIHRoZXNlIGltYWdlcyBmb3Igbm93Lg0KPiANCj4gICAgIFdoZW4g
c2V0dGluZyB0aGUgSU5DT01QQVRJQkxFX0xJQ0VOU0UgYWNjb3JkaW5nIHRvIHRoZSBtYW51YWwg
ZXhhbXBsZSwNCj4gICAgIHN5c3RlbWQgY2Fubm90IGJlIGJ1aWx0IGFueW1vcmUgYmVjYXVzZSBi
YXNoIGlzIGJlaW5nIHNraXBwZWQgZHVlIHRvDQo+ICAgICBsaWNlbnNlLg0KPiANCj4gICAgIFR1
cm5zIG91dCB0aGF0IGJlY2F1c2Ugc3lzdGVtZC1iYXNoLWNvbXBsZXRpb24gYW5kDQo+ICAgICBz
eXN0ZW1kLWtlcm5lbC1pbnN0YWxsIGJvdGggcmRlcGVuZCBvbiBiYXNoLCB3ZSBjYW4ndCBidWls
ZCBzeXN0ZW1kIGF0DQo+ICAgICBhbGwsIGJlY2F1c2UgYmFzaCBpcyBub3QgYnVpbGRhYmxlLiBF
dmVuIGlmIHdlJ3JlIG5vdCBpbnN0YWxsaW5nIHRob3NlDQo+ICAgICBmZWF0dXJlcyBvZiBzeXN0
ZW1kLg0KPiANCj4gICAgIEEgZGl2ZSBpbnRvIFRhc2tEYXRhIHN1Z2dlc3RzIHRoYXQgYWxsIHRo
ZSByZGVwZW5kcyBvZiBhbGwgcGFja2FnZXMNCj4gICAgIHByb3ZpZGVkIGJ5IGEgcmVjaXBlIGFy
ZSBmbGF0dGVuZWQgaW50byBkZXBlbmRzIG9mIHRoZSByZWNpcGUgd2hlbg0KPiAgICAgdGVzdGlu
ZyBidWlsZGFiaWxpdHkuDQo+IA0KPiAgICAgQSBxdWljayB0ZXN0IG9uIG1hc3RlciBmcm9tIGFi
b3V0IDIgd2Vla3MgYWdvIHNob3cgdGhlIHNhbWUgYmVoYXZpb3IuDQo+IA0KPiAgICAgRm9yIHRo
ZSB0ZXN0IG9uIG1hc3RlciBhbGwgSSBkaWQgd2FzIGNoYW5nZSB0aGUgRElTVFJPX0ZFQVRVUkVT
IG9mDQo+ICAgICBjb3JlLWltYWdlLW1pbmltYWwgdG8gaW5jbHVkZSBzeXN0ZW1kLg0KPiANCj4g
DQo+ICAgICBBbSBJIHVzaW5nIElDT01QQVRJQkxFX0xJQ0VOU0UgcHJvcGVybHkgc28gZmFyPw0K
PiAgICAgSWYgc28sIGlzIGJlaW5nIHVuYWJsZSB0byBmdWxmaWxsIGFuIHJkZXBlbmQgZm9yIGFu
IHVudXNlZCBwYWNrYWdlDQo+ICAgICBtZWFudA0KPiAgICAgdG8gZmFpbCB0aGUgd2hvbGUgYnVp
bGQsIGFuZCBob3cgY2FuIEkgYXZvaWQgaXQgc2hvcnQgb2YgaW5jbHVkaW5nDQo+ICAgICBtZXRh
LWdwbHYyIG9yIHdyaXRpbmcgbG90cyBvZiAuYmJhcHBlbmRzIHRvIHJlbW92ZSB0aGUgZGVwZW5k
ZW5jaWVzPw0KPiAgICAgT3RoZXJ3aXNlLCB3aGVyZSBkaWQgSSBnbyB3cm9uZywgYW5kIHdoYXQg
c2hvdWxkIEkgYmUgdHJ5aW5nIGluc3RlYWQ/DQo+IA0KPiAgICAgVGhhbmsgeW91Lg0KPiANCj4g
ICAgIEJlc3QgcmVnYXJkcyAvLyBKb2huIEVybmJlcmcNCj4gICAgIA0KPiANCg==
