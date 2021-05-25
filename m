Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.9520.1621948372557623741
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 May 2021 06:12:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=fNly1EId;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1621948373;
  x=1653484373;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=UAIckY9I1478XuNIkB01k1nnYRxqg+WlUbHd1KQ3e5c=;
  b=fNly1EIdmLa+DR5Kn7fDxqVOE3GGHKW8ygG9BOarhC2uZDGtUIwwTjT8
   s0aoAGeTuH+VSZyuBhxJ1JfOq0u80RRjMr+4XLiDAd/A8AciktDCN3uDT
   kZwfEOpBKq5pCzhwq9IC9YKkgx03JxgFaVUrFT0kbextpFC/deuVznaxB
   7NwJW0+LSMbRtMRy0OArHP7Bh8TpRYzakFKz0PooDhhkeIBsKD1OdIH2R
   fFLRiVsL7hBQmwLS26HFcRmG6DzueETszGLFfiTE0f1zAP6yyYG/FAtgi
   opXQP0xH5xRIdcXDVd6Yr5QeT1o35oem9zseV/DcX0VxJyrN0aysPhxZo
   g==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Vineela
	<vineela.tummalapalli@intel.com>
CC: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>, "Michael
 Halstead" <mhalstead@linuxfoundation.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is
 Released
Thread-Index: AddQyvpO+hVYaKnlSTmgnO7UocMWmQAk/pQA///n4YD//92NQA==
Date: Tue, 25 May 2021 13:12:50 +0000
Message-ID: <11f3b266de0a4120a96f32977064a7c1@XBOX03.axis.com>
References: <BYAPR11MB33017216B14BA159AF5601E588269@BYAPR11MB3301.namprd11.prod.outlook.com>
	 <8e289c9f6578427d85c56618de3a130d@XBOX03.axis.com>
 <f75c8b912e10f2383159c9edac3de2a8f84cee70.camel@linuxfoundation.org>
In-Reply-To: <f75c8b912e10f2383159c9edac3de2a8f84cee70.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Return-Path: peter.kjellerstedt@axis.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmlj
aGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gU2VudDogZGVuIDI1IG1haiAyMDIx
IDE0OjQ0DQo+IFRvOiBQZXRlciBLamVsbGVyc3RlZHQgPHBldGVyLmtqZWxsZXJzdGVkdEBheGlz
LmNvbT47IFZpbmVlbGENCj4gPHZpbmVlbGEudHVtbWFsYXBhbGxpQGludGVsLmNvbT4NCj4gQ2M6
ICd5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnJyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz47IE1pY2hhZWwNCj4gSGFsc3RlYWQgPG1oYWxzdGVhZEBsaW51eGZvdW5kYXRpb24ub3Jn
Pg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBbQU5OT1VOQ0VNRU5UXSBZb2N0byBQcm9qZWN0IDMu
My4xIChoYXJka25vdHQtMjUuMC4xKQ0KPiBpcyBSZWxlYXNlZA0KPiANCj4gT24gVHVlLCAyMDIx
LTA1LTI1IGF0IDEyOjEzICswMDAwLCBQZXRlciBLamVsbGVyc3RlZHQgd3JvdGU6DQo+ID4gSXQg
c2VlbXMgdGhlIOKAnWhhcmRrbm90dC0yNS4wLjHigJ0gdGFnIGlzIG1pc3NpbmcgZm9yIG1ldGEt
Z3BsdjIuDQo+ID4gVGhlIOKAnHlvY2N0by0zLjMuMeKAnSB0YWcgaXMgcHJlc2VudC4NCj4gDQo+
IFRoaXMgd2FzIGRlbGliZXJhdGUgc2luY2Ugd2UndmUgYmVlbiB0cnlpbmcgdG8gc3RlcCBhd2F5
IGZyb20gdGhlDQo+ICJwb2t5IiB2ZXJzaW9uIG51bWJlcnMsIEknbSBub3Qgc3VyZSB0aGV5IGFk
ZCBtdWNoIHRvIGFueXRoaW5nLg0KPiANCj4gSXMgdGhlcmUgYSBwYXJ0aWN1bGFyIHJlYXNvbiB5
b3Ugd2VyZSBsb29raW5nIGZvciB0aG9zZT8NCg0KV2VsbCwgdGhvc2UgYXJlIHRoZSBvbmVzIHdl
IGhhdmUgdHJhZGl0aW9uYWxseSBiZWVuIHVzaW5nLiBUaGUgYmVuZWZpdCBJIHNlZSANCndpdGgg
dGhlbSBhcmUgdGhhdCB0aGV5IGNvbnRhaW4gdGhlIHJlbGVhc2UgbmFtZS4gRm9yIG1lIGFzIGEg
dXNlciwgaXQgaXMgbXVjaCANCmVhc2llciB0byBzZWUgYW5kIHJlZmVyIHRvICJoYXJka25vdHQt
c29tZXRoaW5nLjEiIHRoYW4gInlvY3RvLTMuMy4xIi4gSS5lLiwgDQpJIGRvbid0IGhhdmUgYSBy
ZWxhdGlvbiB0byB0aGUgIjI1LjAiIG9yICIzLjMiIHBhcnQsIGJ1dCB0byB0aGUgcmVsZWFzZSBu
YW1lLiANCldlIHR5cGljYWxseSBvbmx5IHRhbGsgYWJvdXQgImhhcmRrbm90dCIgb3IgInRoZSBz
ZWNvbmQgaGFyZGtub3R0IHJlbGVhc2UiLiANCg0KVGhhdCBzYWlkLCBhIHRhZyBzdWNoIGFzICJ5
b2N0by1oYXJka25vdHQtMy4zLjEiIG9yICJoYXJka25vdHQtMy4zLjEiIHdvdWxkIA0KZnVsZmls
bCB0aGUgc2FtZSBwcm9wZXJ0aWVzIGFzICJoYXJka25vdHQtMjUuMC4xIiwgdGhvdWdoIHRoZSBv
bmUgd2l0aG91dCANCnRoZSAieW9jdG8tIiBwcmVmaXggaXMgbW9yZSBzdWl0YWJsZSB3aGVuIHRh
YiBjb21wbGV0aW5nLCBlLmcuLCANCmBnaXQgbG9nIGhhcmRrbm90dC0zLjMuLmhhcmRrbm90dC0z
LjMuMWAsIHNvIHRoYXQgaXMgdGhlIG9uZSBJIHdvdWxkIHVzZSBpZiANCml0IHdhcyB1cCB0byBt
ZS4gOykNCg0KPiBDaGVlcnMsDQo+IA0KPiBSaWNoYXJkDQoNCi8vUGV0ZXINCg0K
