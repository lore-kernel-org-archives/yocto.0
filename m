Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECC7DE005B7
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2011 21:37:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2011 21:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,372,1312182000"; d="scan'208";a="52348926"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2011 21:37:32 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 12 Sep 2011 21:37:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.19]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.126]) with mapi id
	14.01.0323.003; Mon, 12 Sep 2011 21:37:31 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "sgw@linux.intel.com" <sgw@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] kernel panic when boot core-image-sato-sdk for qemux86
Thread-Index: AcxvRXVK4jIOtaOXSrCsdTiRDT91HgAYykiAAIpA8YAAALwdYA==
Date: Tue, 13 Sep 2011 04:37:31 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E6F9B8@ORSMSX101.amr.corp.intel.com>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
	<4E6AE079.6000700@windriver.com>
	<1315864648.7424.2.camel@swold-mobl.bigsur.com>
In-Reply-To: <1315864648.7424.2.camel@swold-mobl.bigsur.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: kernel panic when boot core-image-sato-sdk for qemux86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVhaCwgSSBkaXNhYmxlZCBwcmVsaW5rZXIgYW5kIHdhcyBhYmxlIHRvIGJvb3QgdG8gc2F0byBm
b3IgYm90aCBxZW11eDg2IGFuZCBhcm0gYXMgd2VsbC4NCg0KLSBKZXNzaWNhDQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcg
W21haWx0bzp5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBTYXVs
IFdvbGQNClNlbnQ6IE1vbmRheSwgU2VwdGVtYmVyIDEyLCAyMDExIDI6NTcgUE0NClRvOiB5b2N0
b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBrZXJuZWwgcGFuaWMgd2hl
biBib290IGNvcmUtaW1hZ2Utc2F0by1zZGsgZm9yIHFlbXV4ODYNCg0KT24gRnJpLCAyMDExLTA5
LTA5IGF0IDIzOjU4IC0wNDAwLCBCcnVjZSBBc2hmaWVsZCB3cm90ZToNCj4gT24gMTEtMDktMDkg
MDc6MDkgUE0sIFpoYW5nLCBKZXNzaWNhIHdyb3RlOg0KPiA+IEhpLA0KPiA+DQo+ID4gSGFzIGFu
eWJvZHkgcmFuIGludG8ga2VybmVsIHBhbmljIHdoZW4gYm9vdCB1cCBjb3JlLWltYWdlLXNhdG8t
c2RrIGZvcg0KPiA+IHFlbXV4ODYuIEnigJl2ZSBiZWVuIGhhdmluZyB0aGlzIGlzc3VlIHdpdGgg
c2V2ZXJhbCBjbGVhbiBidWlsZCBmb3IgdHdvDQo+ID4gZGF5cy4gQW5kIG15IGxhdGVzdCBidWls
ZCB0cmVlIGlzIGEgZnJlc2hseSBjbG9uZWQgdHJlZSBhZ2FpbnN0DQo+ID4gcG9reS1tYXN0ZXIg
d2l0aCBjb21taXQ6DQo+ID4NCj4gPiBjb21taXQgMjBkYmYwMDI0Mzg1ZWFlZjYxYTA0ZDg3NzNm
ZDc2NDBlM2M4Y2M2ZA0KPiA+DQo+ID4gQXV0aG9yOiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5w
dXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gPg0KPiA+IERhdGU6IEZyaSBTZXAgOSAxOTow
Nzo0MCAyMDExICswMTAwDQo+ID4NCj4gPiBUaGUgcWVtdSBrZXJuZWwgcGFuaWMgbWVzc2FnZXMg
YXJlOg0KPiA+DQo+ID4gSU5JVDogdmVyc2lvbiAyLjg4IGJvb3RpbmcNCj4gPg0KPiA+IEluaXRb
MV06IHNlZ2ZhdWx0IGF0IDM4IGlwIDQ5NTA3NmM3IHNwIGJmZDliNjBjIGVycm9yIDQgaW4NCj4g
PiBsaWJjLTIuMTMuc29bNDk0OTIwMDArMTVmMDAwXQ0KPiA+DQo+ID4gSW5pdFsxXTogc2VnZmF1
bHQgYXQgMTYgaXAgMDgwNGIzYzcgc3AgYmZkOWIyODAgZXJyb3IgNCBpbg0KPiA+IGluaXQuc3lz
dmluaXRbODA0ODAwMCs3MDAwXQ0KPiA+DQo+ID4gS2VybmVsIHBhbmljIOKAkyBub3Qgc3luY2lu
ZzogQXR0ZW1wdGVkIHRvIGtpbGwgaW5pdCENCj4gPg0KPiA+IFBpZDogMSwgY29tbTogaW5pdCBO
b3QgdGFpbnRlZCAzLjAuNC15b2N0by1zdGFuZGFyZCsgIzENCj4gPg0KPiA+IEFueSBpZGVhPw0K
Pg0KPiBTaW5jZSBJJ3ZlIGJlZW4gYXQgTGludXggcGx1bWJlcnMgc2luY2UgV2VkbmVzZGF5LCBJ
IGNhbiBjb25maXJtDQo+IHRoYXQgbm90aGluZyBoYXMgY2hhbmdlZCBpbiB0aGUga2VybmVsIGl0
c2VsZi4gQW5kIEkganVzdCBib290ZWQNCj4gYW4gb2xkZXIgdXNlcnNwYWNlIHdpdGggYSBicmFu
ZCBuZXcga2VybmVsIGEgZmV3IG1pbnV0ZXMgYWdvLiBUaGF0IG1lYW5zDQo+IHRoYXQgc29tZXRo
aW5nIGVsc2UgaGFzIGNoYW5nZWQgd2hpY2ggaXMgcHJvZHVjaW5nIHRoZSBzZWdmYXVsdA0KPiAo
dG9vbGNoYWluLCBsaWJzLCAuLiBzb21ldGhpbmcpIGFuZCB0b3NzaW5nIHlvdSBvdXQgdG8gdGhl
IHBhbmljLg0KPg0KPiBJZiB5b3UgdHJ5IGFuIG9sZGVyIGZpbGVzeXN0ZW0gd2l0aCB5b3VyIHJl
Y2VudCBrZXJuZWwsIGRvIHlvdSBzZWUNCj4gYSBnb29kIGJvb3QuDQo+DQpCYXNlZCBvbiBNYXJr
J3Mgc3VnZ2VzdGlvbiB0byBidWlsZCB3aXRoIG91dCBta2xpYnMgb3IgcHJlbGlua2VyLCBJIGRp
ZA0KdGhhdCBhbmQgZm91bmQgdGhhdCBpdCdzIHRoZSBwcmVsaW5rZXIgdGhhdCBjYXVzaW5nIHRo
ZSBwcm9ibGVtLiAgSSBoYXZlDQpub3QgdHJhY2tlZCBpdCBhbnkgZnVydGhlciB0aGFuIHRoYXQg
cmlnaHQgbm93LCBidXQgSSBjYW4gYm9vdCBxZW11eDg2DQphbmQgcWVtdWFybSBnZXRzIHBhc3Qg
dGhlIFlvY3RvIFByb2plY3QgU3BsYXNoIHNjcmVlbiBub3cgdG8gU2F0byBub3cuDQoNClNhdSEN
Cg0KPiBCcnVjZQ0KPg0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+DQo+ID4gSmVzc2ljYQ0KPiA+DQo+
ID4NCj4gPg0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+ID4geW9jdG8gbWFpbGluZyBsaXN0DQo+ID4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K
PiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPg0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBt
YWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9jdG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9j
dG8NCg==

