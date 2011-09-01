Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D144E0071A
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 14:01:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Sep 2011 14:01:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="44272787"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 01 Sep 2011 14:01:51 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 1 Sep 2011 14:01:51 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi; Thu, 1 Sep 2011
	14:01:51 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, "Zanussi, Tom"
	<tom.zanussi@intel.com>
Date: Thu, 1 Sep 2011 14:01:47 -0700
Thread-Topic: RT kernel with core-image-sato build failed for sugarbay
Thread-Index: Acxo6bWN73LaWavjStyLFPFBGWYNtAAACEFw
Message-ID: <4BD43A85686FC34D819098DB1C3999D901889D7F2E@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
	<1314850760.10191.3.camel@elmorro> <4E5FF19D.6000409@linux.intel.com>
In-Reply-To: <4E5FF19D.6000409@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: RT kernel with core-image-sato build failed for sugarbay
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
X-List-Received-Date: Thu, 01 Sep 2011 21:01:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2xlYW4gYnVpbGQgd2l0aCB0aGUgYmVsb3cgVE9NJ3MgdHdvIGNvbW1pdCBJRHMgd29ya2VkIGZv
ciBtZSwgaWYgSSBkbyBub3QgYWRkIElNQUdFX0lOU1RBTEwgKz0gInJ0dGVzdHMiIGZvciBzdWdh
cmJheS4NCg0KSXQgZmFpbGVkIGlmIEkgYWRkIHRoZSBJTUFHRV9JTlNUQUxMICs9ICJydHRlc3Rz
Ig0KDQpUaGFua3MNCktpc2hvcmUuDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTog
RGFycmVuIEhhcnQgW21haWx0bzpkdmhhcnRAbGludXguaW50ZWwuY29tXSANClNlbnQ6IFRodXJz
ZGF5LCBTZXB0ZW1iZXIgMDEsIDIwMTEgMTo1NyBQTQ0KVG86IFphbnVzc2ksIFRvbQ0KQ2M6IEJv
ZGtlLCBLaXNob3JlIEs7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEhhcnQsIERhcnJlbjsgU2F4
ZW5hLCBSYWh1bA0KU3ViamVjdDogUmU6IFJUIGtlcm5lbCB3aXRoIGNvcmUtaW1hZ2Utc2F0byBi
dWlsZCBmYWlsZWQgZm9yIHN1Z2FyYmF5DQoNCg0KDQpPbiAwOC8zMS8yMDExIDA5OjE5IFBNLCBU
b20gWmFudXNzaSB3cm90ZToNCj4gDQo+IE9uIFdlZCwgMjAxMS0wOC0zMSBhdCAxNjo0OSAtMDcw
MCwgQm9ka2UsIEtpc2hvcmUgSyB3cm90ZToNCj4+IEhpLA0KPj4NCj4+ICANCj4+DQo+PiBJIGFt
IHRyeWluZyB0byBidWlsZCBjb3JlLWltYWdlLXNhdG8gd2l0aCBydCBrZXJuZWwgZm9yIHN1Z2Fy
YmF5IGFuZA0KPj4gaXQgZmFpbHMgZm9yIHRoZSBkb19yb290ZnMgLg0KPj4NCj4gDQo+IEZXSVcs
IEkgd2FzIGFibGUgdG8gYnVpbGQgYW5kIGJvb3QgY29yZS1pbWFnZS1zYXRvIHdpdGggdGhlIHJ0
IGtlcm5lbDoNCj4gDQo+IExpbnV4IHN1Z2FyYmF5IDMuMC4zLXJ0OC15b2N0by1wcmVlbXB0LXJ0
KyAjMSBTTVAgUFJFRU1QVCBSVCBXZWQgQXVnIDMxDQo+IDIxOjMzOjI3IENEVCAyMDExIHg4Nl82
NCBHTlUvTGludXgNCj4gDQo+IHVzaW5nIHRoZSBmb2xsb3dpbmcgY29tbWl0czoNCj4gDQo+IHBv
a3kvbWFzdGVyIDcwNWVjNTBlZGRhN2Y3ZmI4YzEzMjIzOGZlM2YxNDc3Mzg0YTQ3MGUNCj4gbWV0
YS9pbnRlbCA5MDJkMmYzYzkxOWNkMWQ4NzBkYzhkMzVhNzUyMWNiYmE0MmU1M2VhDQo+IA0KPiBB
Y3R1YWxseSwgbWV0YS9pbnRlbCB3YXMgdGhhdCBjb21taXQgd2l0aCBEYXJyZW4ncyBncnViIHBh
dGNoIG9uIHRvcA0KPiAobWV0YS1pbnRlbC9kdmhhcnQvZ3J1Yi1mcmVldHlwZSkuDQo+IA0KDQpL
aXNob3JlLCB3b3VsZCB5b3UgdHJ5IHdpdGggYSBjbGVhbiBidWlsZCBhbmQgc2VlIGlmIHRoaXMg
d29ya3MgZm9yIHlvdT8NCg0KSSdtIGdvaW5nIHRvIHRyeSBhbmQgYnVpbGQgZmlyc3Qgd2l0aG91
dCAtcnQgYW5kIHRoZW4gd2l0aCBydCBhbmQgc2VlIGlmDQpJIGNhbiByZXByb2R1Y2UgdGhlIGlz
c3VlLg0KDQpUaGFua3MsDQoNCkRhcnJlbg0KDQo+IFRvbQ0KPiANCj4+ICANCj4+DQo+PiBBdHRh
Y2hlZCBpcyB0aGUgYnVpbGQgbG9nLg0KPj4NCj4+ICANCj4+DQo+PiBDb3VsZCB5b3UgcGxlYXNl
IGxldCBtZSBrbm93IHdoYXQgd2VudCB3cm9uZz8NCj4+DQo+PiAgDQo+Pg0KPj4gVGhhbmtzDQo+
Pg0KPj4gS2lzaG9yZS4NCj4+DQo+Pg0KPiANCj4gDQoNCi0tIA0KRGFycmVuIEhhcnQNCkludGVs
IE9wZW4gU291cmNlIFRlY2hub2xvZ3kgQ2VudGVyDQpZb2N0byBQcm9qZWN0IC0gTGludXggS2Vy
bmVsDQo=

