Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20952E01211
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 11:34:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Sep 2011 11:34:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44468441"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 01 Sep 2011 11:34:29 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 1 Sep 2011 11:34:29 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi; Thu, 1 Sep 2011
	11:34:28 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Date: Thu, 1 Sep 2011 11:34:28 -0700
Thread-Topic: [yocto] e100 driver does not build
Thread-Index: Acxo1AwKwuXVOzzvSSecCNlXVqVGpQAABQ8g
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E1E596D@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E1E54F9@orsmsx505.amr.corp.intel.com>
	<4FF5AC937153B0459463C1A88EB478F2012E1E590F@orsmsx505.amr.corp.intel.com>
	<1314901316.10191.26.camel@elmorro>
In-Reply-To: <1314901316.10191.26.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: e100 driver does not build
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
X-List-Received-Date: Thu, 01 Sep 2011 18:34:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBJIGhhZCBub3RpY2VkIHRoYXQgaXQgaXMgcGFydCBvZiBpbnRlbC0xeHh4eCBmZWF0dXJl
IGFsc28uDQoNCkkgdGVuZCB0byB0aGluayB0aGF0IGl0IGlzIGJldHRlciB0byBzZXBhcmF0ZSBv
dXQgQ09ORklHX0UxMDAgb3B0aW9uIGZyb20gaW50ZWwtMXh4eHgNCkkgdGhpbmsgdGhhdCBwbGF0
Zm9ybXMgdGhhdCB3YW50IDFHLzEwRyBlbmFibGVkIHdvdWxkIG5vdCBuZWVkIDEwLzEwMCBkcml2
ZXIgICANCg0KPj4gSXQgbWVhbnMgdGhhdCBjb25maWcgb3B0aW9uIHdhcyBuZXZlciBzZXQgb3Ig
Z290IHR1cm5lZCBvZmYgYmVjYXVzZSBvZg0KdW5tZXQgZGVwZW5jaWVzIDw8DQoNCkhvd2V2ZXIg
SSBhbSBub3Qgc3VyZSBpZiB0aGlzIHdvcmtzIGluIGFsbCBjYXNlcyBhcyBJIGRpZCBub3Qgc2Vl
IA0KIiMgQ09ORklHX0UxMDAgaXMgbm90IHNldCIgZXZlbiB3aGVuIGl0cyBkZXBlbmRlbnQgY29u
ZmlndXJhdGlvbnMgd2VyZSBub3Qgc2F0aXNmaWVkIA0KDQpSYWh1bA0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogWmFudXNzaSwgVG9tIA0KU2VudDogVGh1cnNkYXksIFNlcHRl
bWJlciAwMSwgMjAxMSAxMToyMiBBTQ0KVG86IFNheGVuYSwgUmFodWwNCkNjOiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBlMTAwIGRyaXZlciBkb2VzIG5vdCBi
dWlsZA0KDQpPbiBUaHUsIDIwMTEtMDktMDEgYXQgMTE6MTEgLTA3MDAsIFNheGVuYSwgUmFodWwg
d3JvdGU6DQo+IFllcywgdGhlIHByb2JsZW0gd2FzIGR1ZSB0byBtaXNzaW5nIGRlcGVuZGVudCBv
cHRpb25zLi4NCj4gSSBoYWQgaW5jb3JyZWN0bHkgYXNzdW1lZCB0aGF0IGRlcGVuZGVudCBvcHRp
b25zIHdvdWxkIGdldCBwdWxsZWQgaW4gDQo+IG9yIHBlcmhhcHMgYSBlcnJvciB3b3VsZCAgYmUg
Z2VuZXJhdGVkLg0KPiBJdCB3b3JrZWQgYWZ0ZXIgSSBhZGRlZCBmb2xsb3dpbmcgMyBvcHRpb25z
IHN0YXRlZCBhcyBkZXBlbmRlbnQgb3B0aW9ucw0KPiBpbiBhIEtlcm5lbCBjb25maWd1cmF0aW9u
IGRhdGFiYXNlIHRoYXQgSSBzYXc6DQo+IA0KPiBDT05GSUdfSVNBDQo+IENPTkZJR19FSVNBDQo+
IENPTkZJR19ORVRfUENJDQo+IA0KPiBJIGFtIHN0aWxsIGl0ZXJhdGluZyB0byBjaGVjayBpZiBh
bGwgdGhyZWUgb2YgdGhlIGFib3ZlIGFyZSByZWFsbHkgbmVlZGVkIG9yDQo+IG9yIGlmIGp1c3Qg
dGhlIENPTkZJR19ORVRfUENJIG9wdGlvbiBpcyBuZWVkZWQuIA0KPiANCj4gSSBoYWQgZW5hYmxl
ZCB0aGUgb3B0aW9uIHVzaW5nIGEgLmNmZyBmaWxlLiAgQWxzbyBjaGVja2luZyBhZ2FpbiB0byBz
ZWUgaWYgYSB3YXJuaW5nDQo+IGdldHMgZ2VuZXJhdGVkIHdoZW4gdGhlIGRlcGVuZGVudCBvcHRp
b25zIGFyZSBub3QgaW5jbHVkZWQuDQo+IA0KDQpOb3RlIHRoYXQgaXQncyBhbHNvIHBhcnQgb2Yg
dGhlIGludGVsLTF4eHh4IGZlYXR1cmUsIHdoaWNoIGlzIGJhc2ljYWxseQ0KdGhlcmUgZm9yIHJl
dXNhYmlsaXR5IC0gdGhleSB3ZXJlIGFsbCB0b2dldGhlciBpbiBhIGJ1bmNoIG9mIEJTUHMgc28g
SQ0KbW92ZWQgdGhlbSBpbnRvIGEgZmVhdHVyZS4gIEknbSB3b25kZXJpbmcgd2hldGhlciB3ZSB3
YW50IHRvIGJyZWFrIHRoZW0NCnVwIG9yIGF0IGxlYXN0IGNyZWF0ZSBhIHNlcGFyYXRlIGUxMDAg
ZmVhdHVyZS4NCg0KPiBCVFcgd2hhdCBkb2VzIGEgbWVzc2FnZSBzdWNoIGFzIGZvbGxvd2luZyBp
biB0aGUgLmNvbmZpZyBmaWxlIG1lYW4gPw0KPiANCj4gIkNPTkZJR194eHh4eCBpcyBub3Qgc2V0
IiAgDQo+IA0KDQpJdCBtZWFucyB0aGF0IGNvbmZpZyBvcHRpb24gd2FzIG5ldmVyIHNldCBvciBn
b3QgdHVybmVkIG9mZiBiZWNhdXNlIG9mDQp1bm1ldCBkZXBlbmNpZXMuDQoNClRvbQ0KDQo+IA0K
PiBUaGFua3MNCj4gUmFodWwNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IEJydWNlIEFzaGZpZWxkIFttYWlsdG86YnJ1Y2UuYXNoZmllbGRAd2luZHJpdmVyLmNvbV0g
DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDMxLCAyMDExIDY6MjcgUE0NCj4gVG86IFphbnVz
c2ksIFRvbQ0KPiBDYzogU2F4ZW5hLCBSYWh1bDsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBT
dWJqZWN0OiBSZTogW3lvY3RvXSBlMTAwIGRyaXZlciBkb2VzIG5vdCBidWlsZA0KPiANCj4gT24g
MTEtMDgtMzEgNzoxOCBQTSwgVG9tIFphbnVzc2kgd3JvdGU6DQo+ID4NCj4gPiBPbiBXZWQsIDIw
MTEtMDgtMzEgYXQgMTY6MDQgLTA3MDAsIFNheGVuYSwgUmFodWwgd3JvdGU6DQo+ID4+IEkgYW0g
dW5hYmxlIHRvIGdldCB0aGUgZTEwMCBkcml2ZXIgdG8gYnVpbGQgZm9yIG15IEJTUC4NCj4gPj4N
Cj4gPj4gSSBoYXZlIGNvbmZpZ3VyZWQgdG8gYnVpbGQgaXQgYXMgYSBtb2R1bGUuIEkgZG8gIG5v
dCBzZWUgdGhlIGUxMDAua28NCj4gPj4gZmlsZSBiZWluZyBnZW5lcmF0ZWQgbm9yIGRvZXMNCj4g
Pj4NCj4gPj4gICBDT05GSUdfRTEwMCBhcHBlYXIgaW4gdGhlIGdlbmVyYXRlZCAuY29uZmlnIGZp
bGUgaW4gbXkgYnVpbGQgYXJlYS4NCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gSG93ZXZlciBJIGRv
IHNlZSB0aGUgZHJpdmVyIHNvdXJjZSBmaWxlIGUxMDAuYyBpbg0KPiA+PiAgICB0bXAvd29yay9i
c3BuYW1lLXBva3ktbGludXgvbGludXgteW9jdG8tMy4wLjMrZ2l0MQ0KPiA+PiAreHh4eCAuLi9s
aW51eC9kcml2ZXJzL25ldA0KPiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+PiBJIGRvIG5vdCBoYXZlIGFu
eSBwcm9ibGVtcyB3aXRoIG90aGVyIGRyaXZlcnMgKGlnYiwgRTEwMDAgZXRjKSAgdGhhdCBJDQo+
ID4+IGhhdmUgY29uZmlndXJlZCBpbiBleGFjdGx5IHNpbWlsYXIgd2F5Lg0KPiA+Pg0KPiA+Pg0K
PiA+Pg0KPiA+PiBBbnkgaW5zaWdodCBvbiB0aGlzIGlzc3VlID8NCj4gPj4NCj4gPg0KPiA+IEl0
J3MgcHJvYmFibHkgbWlzc2luZyBhbm90aGVyIG9wdGlvbiBpdCBkZXBlbmRzIG9uIGUuZy4gaXMN
Cj4gPiBDT05GSUdfTkVUX1BDSSBhbmQgQ09ORklHX01JSSBlbmFibGVkIGluIHlvdXIgLmNvbmZp
Zz8NCj4gDQo+IFRoaXMgaXMgbW9zdCBsaWtlbHkgd2hhdCBpdCBpcy4NCj4gDQo+IE91dCBvZiBj
dXJpb3NpdHksIGhvdyBkaWQgeW91IGVuYWJsZSB0aGUgb3B0aW9uID8gVmlhIGEgY29uZmlnIGZy
YWdlbWVudA0KPiAoLmNmZyBmaWxlKSBvciB2aWEgbWVudWNvbmZpZyAuLiBvciBzb21ldGhpbmcg
ZWxzZT8NCj4gDQo+IElmIHlvdSB0cmllZCB0byBzZXQgc29tZXRoaW5nIHZpYSBhIGZyYWdtZW50
IGFuZCBpdCBkb2Vzbid0IG1ha2UgaXQgdG8NCj4gdGhlIGZpbmFsIC5jb25maWcsIHlvdSBzaG91
bGQgc2VlIGEgd2FybmluZyBkdXJpbmcgdGhlIGtlcm5lbCBidWlsZA0KPiBwaGFzZS4NCj4gDQo+
IENoZWVycywNCj4gDQo+IEJydWNlDQo+IA0KPiA+DQo+ID4gVG9tDQo+ID4NCj4gPj4NCj4gPj4N
Cj4gPj4gVGhhbmtzDQo+ID4+DQo+ID4+IFJhaHVsDQo+ID4+DQo+ID4+DQo+ID4NCj4gPg0KPiA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4geW9j
dG8gbWFpbGluZyBsaXN0DQo+ID4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA+IGh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPiANCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0
DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qu
b3JnL2xpc3RpbmZvL3lvY3RvDQoNCg0K

