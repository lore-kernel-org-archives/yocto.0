Received: from posti.hhpartners.fi (posti.hhpartners.fi [85.194.237.131])
 by mx.groups.io with SMTP id smtpd.web10.5208.1621321766629727330
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 00:09:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hhpartners.fi, ip: 85.194.237.131, mailfrom: mikko.murto@hhpartners.fi)
Received: from MAIL.hhpartners.local (172.25.43.54) by MAIL.hhpartners.local
 (172.25.43.54) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.14; Tue, 18 May
 2021 10:09:02 +0300
Received: from MAIL.hhpartners.local ([fe80::fdc9:661:735b:235f]) by
 MAIL.hhpartners.local ([fe80::fdc9:661:735b:235f%4]) with mapi id
 15.01.2176.014; Tue, 18 May 2021 10:09:02 +0300
From: "Mikko Murto" <mikko.murto@hhpartners.fi>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: VS: [yocto] Make do_image_complete wait for an earlier task
Thread-Topic: [yocto] Make do_image_complete wait for an earlier task
Thread-Index: AddLrPttjmjp2ufPRwmA9MTCu36eVf//2bqA///L29A=
Date: Tue, 18 May 2021 07:09:02 +0000
Message-ID: <9e36070b41c94e8d92eb6fe0c0185528@hhpartners.fi>
References: <a28139be6f11445c9f4af80d748457c5@hhpartners.fi>
 <824c8a0e7910ec93cc1cd61acca4c8cf803ebda3.camel@linuxfoundation.org>
In-Reply-To: <824c8a0e7910ec93cc1cd61acca4c8cf803ebda3.camel@linuxfoundation.org>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.113.2]
MIME-Version: 1.0
Content-Language: fi-FI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBMw6RoZXR0w6Rqw6Q6IFJpY2hhcmQgUHVyZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5k
YXRpb24ub3JnPg0KPiBMw6RoZXRldHR5OiB0aWlzdGFpIDE4LiB0b3Vrb2t1dXRhIDIwMjEgOS41
Nw0KPiANCj4gT24gVHVlLCAyMDIxLTA1LTE4IGF0IDA2OjE1ICswMDAwLCBNaWtrbyBNdXJ0byB3
cm90ZToNCj4gPiBIaSwNCj4gPg0KPiA+IEkndmUgY3JlYXRlZCBhIHRhc2sgZG9fY3JlYXRlX3Nw
ZHggdGhhdCBnZXRzIHNvbWUgZGF0YSBmcm9tIHBhY2thZ2VzDQo+ID4gYWZ0ZXIgZG9fcGFja2Fn
ZS4gVGhlIHRhc2sgaXMgY3VycmVudGx5IGFkZGVkIHdpdGggYGFkZHRhc2sNCj4gPiBkb19jcmVh
dGVfc3BkeCBhZnRlciBkb19wYWNrYWdlIGJlZm9yZSBkb19wYWNrYWdlZGF0YWAgVGhlIGRhdGEg
aXMNCj4gPiB0aGVuIGVucmljaGVkIGFuZCBjb21iaW5lZCBpbiBkb19pbWFnZV9jb21wbGV0ZSBi
eSBhZGRpbmcgdGhlIGNvbWJpbmluZw0KPiBmdW5jdGlvbiB0byBJTUFHRV9QT1NUUFJPQ0VTU19D
T01NQU5ELg0KPiA+IEZvciB0aGUgbW9zdCBwYXJ0IGV2ZXJ5dGhpbmcgd29ya3MgYXMgZXhwZWN0
ZWQsIGJ1dCBmb3Igc29tZSBwYWNrYWdlcw0KPiA+IGRvX2NyZWF0ZV9zcGR4IGRvZXMgbm90IGNv
bXBsZXRlIGluIHRpbWUgZm9yIHRoZSBjb21iaW5hdGlvbiBzdGVwIGluDQo+IGRvX2ltYWdlX2Nv
bXBsZXRlLg0KPiA+IElzIHRoZXJlIGEgd2F5IGZvciBtZSBmb3JjZSBkb19pbWFnZV9jb21wbGV0
ZSB0byB3YWl0IGZvcg0KPiA+IGRvX2NyZWF0ZV9zcGR4IHRvIGhhdmUgYmVlbiBjb21wbGV0ZWQg
Zm9yIGFsbCBwYWNrYWdlcz8NCj4gDQo+IFRoaXMgc2VlbXMgYSBsaXR0bGUgb2RkIHNpbmNlIGlt
YWdlLmJiY2xhc3MgaGFzOg0KPiANCj4gZG9fcm9vdGZzW3JlY3JkZXB0YXNrXSArPSAiZG9fcGFj
a2FnZWRhdGEiDQo+IA0KPiB3aGljaCBtZWFucyBkb19yb290ZnMgc2hvdWxkIG9ubHkgaGFwcGVu
IGFmdGVyIGFsbCBkb19wYWNrYWdlZGF0YSBoYXZlIHJ1bi4NCj4gWW91ciB0YXNrIGlzIGFkZGVk
IGJlZm9yZSBkb19wYWNrYWdlZGF0YS4NCj4gZG9faW1hZ2UgYW5kIGRvX2ltYWdlX2NvbXBsZXRl
IHNob3VsZCBydW4gYWZ0ZXIgZG9fcm9vdGZzLg0KPiANCj4gSSdtIHdvbmRlcmluZyBpZiB0aGUg
aXNzdWUgaXMgbW9yZSB0byBkbyB3aXRoIHJldXNlIG9mIHByZXZpb3VzIGJ1aWxkIGFydGVmYWN0
cw0KPiB3aGVyZSBzc3RhdGUgaXMgaW52b2x2ZWQuIERvZXMgeW91ciBhZGRlZCB0YXNrIGFjY291
bnQgZm9yIHNzdGF0ZT8NCg0KVGhhdCBpcyBvZGQgaW5kZWVkLiBJIG5lZWQgdG8gZ2l2ZSBpdCBh
bm90aGVyIGdvLiBBcyBmb3IgYWNjb3VudGluZyBmb3Igc3N0YXRlLCBubywgYXQgbGVhc3Qgbm90
IGludGVudGlvbmFsbHkuIA0KDQo+IEkndmUgYmVlbiBnaXZpbmcgc29tZSB0aG91Z2h0IHRvIFNE
UFggYW5kIFNCT00gZHVyaW5nIG91ciBidWlsZCBwcm9jZXNzIHNvIEkNCj4gYW0gY3VyaW91cyB3
aGF0IHlvdSdyZSBkb2luZywgaXMgdGhlIHdvcmsgcHVibGljIGFueXdoZXJlPw0KDQpQdWJsaWMg
YXQgaHR0cHM6Ly9naXRodWIuY29tL2RvdWJsZW9wZW4tcHJvamVjdC9tZXRhLWRvdWJsZW9wZW4u
IFRoZSB1c3VhbCBkaXNjbGFpbWVycyBhYm91dCBQb0MtbGV2ZWwgc3BhZ2hldHRpIGFwcGx5OyBh
bGwgcXVlc3Rpb25zIGFuZCBjb21tZW50cyB2ZXJ5IG11Y2ggYXBwcmVjaWF0ZWQhIPCfmIoNCg0K
TWlra28NCg==
