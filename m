Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10EDCE00282
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 08:25:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 08:25:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170422822"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 08:25:05 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 Jul 2012 08:25:05 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.44]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.82]) with mapi id
	14.01.0355.002; Thu, 19 Jul 2012 08:25:04 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
Thread-Index: AQHNZKpNsY4FWoQDWUKwIg8ki89qS5cvivyAgABfOtCAAH5qAIAARcRQgAB7O4D//5F90A==
Date: Thu, 19 Jul 2012 15:25:04 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C03188FCC@ORSMSX106.amr.corp.intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
	<1342620801.2338.160.camel@trz-ThinkPad-T420>
	<ADD6A3980E8C39419A432FF422031B4C03188C9C@ORSMSX106.amr.corp.intel.com>
	<1342668398.2338.227.camel@trz-ThinkPad-T420>
	<ADD6A3980E8C39419A432FF422031B4C03188F51@ORSMSX106.amr.corp.intel.com>
	<1342709843.2338.233.camel@trz-ThinkPad-T420>
In-Reply-To: <1342709843.2338.233.camel@trz-ThinkPad-T420>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
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
X-List-Received-Date: Thu, 19 Jul 2012 15:25:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmFudXNzaSwgVG9tDQo+
IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDE5LCAyMDEyIDg6MjcgUE0NCj4gVG86IEthbWJsZSwgTml0
aW4gQQ0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgYnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbQ0KPiBTdWJqZWN0OiBSRTogW1BBVENIIDAvMV0gbWV0YTogdXBkYXRlIGNyb3duYmF5
LnNjYyBmb3IgbmV3ZXIgZW1nZCBkcml2ZXINCj4gDQo+IE9uIFRodSwgMjAxMi0wNy0xOSBhdCAw
NzozOSAtMDcwMCwgS2FtYmxlLCBOaXRpbiBBIHdyb3RlOg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogWmFudXNzaSwgVG9tDQo+ID4gPiBTZW50OiBU
aHVyc2RheSwgSnVseSAxOSwgMjAxMiA4OjU3IEFNDQo+ID4gPiBUbzogS2FtYmxlLCBOaXRpbiBB
DQo+ID4gPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgYnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbQ0KPiA+ID4gU3ViamVjdDogUkU6IFtQQVRDSCAwLzFdIG1ldGE6IHVwZGF0ZSBjcm93
bmJheS5zY2MgZm9yIG5ld2VyIGVtZ2QNCj4gPiA+IGRyaXZlcg0KPiA+ID4NCj4gPiA+IE9uIFdl
ZCwgMjAxMi0wNy0xOCBhdCAxOTo1OCAtMDcwMCwgS2FtYmxlLCBOaXRpbiBBIHdyb3RlOg0KPiA+
ID4gPg0KPiA+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+ID4gRnJv
bTogWmFudXNzaSwgVG9tDQo+ID4gPiA+ID4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDE4LCAyMDEy
IDc6NDMgUE0NCj4gPiA+ID4gPiBUbzogS2FtYmxlLCBOaXRpbiBBDQo+ID4gPiA+ID4gQ2M6IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmc7IGJydWNlLmFzaGZpZWxkQHdpbmRyaXZlci5jb20NCj4gPiA+
ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvMV0gbWV0YTogdXBkYXRlIGNyb3duYmF5LnNjYyBm
b3IgbmV3ZXINCj4gPiA+ID4gPiBlbWdkIGRyaXZlcg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gT24g
TW9uLCAyMDEyLTA3LTE2IGF0IDIyOjU3IC0wNzAwLCBuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20g
d3JvdGU6DQo+ID4gPiA+ID4gPiBGcm9tOiBOaXRpbiBBIEthbWJsZSA8bml0aW4uYS5rYW1ibGVA
aW50ZWwuY29tPg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IFRoaXMgY29tbWl0IGNoYW5nZXMg
ZW1nZCBrZXJuZWwgZHJpdmVyIGZvciBjcm93bmJheSBic3AgdG8gdGhlDQo+ID4gPiA+ID4gPiBl
bWdkLQ0KPiA+ID4gPiA+IDEuMTQuDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4g
Tml0aW4sDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBEb2Vzbid0IHN3aXRjaGluZyB0aGlzIG92ZXIg
aW4gdGhlIGtlbnJuZWwgcmVxdWlyZSBlbWdkLTEuMTQNCj4gPiA+ID4gPiB1c2Vyc3BhY2UgcmVj
aXBlIHVwZGF0ZXMgdG8gd29yaz8gIERpZCBJIG1pc3MgdGhvc2U/DQo+ID4gPiA+ID4NCj4gPiA+
ID4gPiBUb20NCj4gPiA+ID4gPg0KPiA+ID4gPiBUb20sDQo+ID4gPiA+ICAgICBJIGFtIGhvbGRp
bmcgdGhlIGVtZ2QgMS4xNCB1c2Vyc3BhY2UgY29tbWl0cyB1bnRpbCB0aGUga2VybmVsDQo+ID4g
PiA+IHJlcG9zaXRvcnkNCj4gPiA+IGNoYW5nZSBnb2VzIHVwc3RyZWFtLiBUaGUga2VybmVsIHJl
Y2lwZSB3aWxsIG5lZWQgbmV3IFNSQ1JFViAod2l0aA0KPiA+ID4gZW1nZA0KPiA+ID4gMS4xNCBr
ZXJuZWwgcGFydHMpIGZvciB0aGUgdXNlciBsZXZlbCBlbWdkIDEuMTQgcGFydHMgdG8gd29yay4g
QW5kDQo+ID4gPiB0aGF0IGRlcGVuZGVuY3kgd2lsbCBnZXQgc2F0aXNmaWVkIG9uY2UgdGhpcyBj
b21taXQgaXMgaW4uDQo+ID4gPiA+DQo+ID4gPg0KPiA+ID4gWWVhaCwgSSB1bmRlcnN0YW5kLCB0
aGUgY3Jvd25iYXkgaXMgdHlwaWNhbGx5IHRoZSBtb3N0IGNvbXBsaWNhdGVkDQo+ID4gPiB1cGRh
dGUgZm9yIGFsbCBvZiB0aG9zZSByZWFzb25zIC0gc2ltdWx0YW5lb3VzIG5ldyBrZXJuZWwNCj4g
PiA+IHZlcnNpb24vcmVjaXBlLCBuZXcgZW1nZCBicmFuY2gsIGFuZCBuZXcgZW1nZCB1c2Vyc3Bh
Y2UgcmVjaXBlIGFsbCBhdA0KPiB0aGUgc2FtZSB0aW1lLg0KPiA+ID4NCj4gPiA+IEluIHRoZSBw
YXN0IEkndmUgc3VibWl0dGVkIHRoZW0gYWxsIGF0IHRoZSBzYW1lIHRpbWUgZm9yDQo+ID4gPiBz
aW11bHRhbmVvdXMgcmV2aWV3IGFuZCBzb21lIGNvb3JkaW5hdGlvbiB3aXRoIEJydWNlIC0gb25j
ZSB0aGUNCj4gPiA+IGtlcm5lbCBwYXJ0cyBhcmUgaW4sIHRoZSBrZXJuZWwgcmVjaXBlIGFuZCB0
aGUgdXNlcnNwYWNlIHBhcnRzIGNhbg0KPiA+ID4gdGhlbiBiZSBwdWxsZWQgaW4gYWxvbmcgd2l0
aCBhIHNpbXBsZSBmb2xsb3ctb24gcGF0Y2ggdG8gdXBkYXRlIHRoZQ0KPiBTUkNSRVZzIEJydWNl
IGdpdmUgdXMuDQo+ID4gPg0KPiA+ID4gVGhlIHRoaW5nIGlzIHRoYXQgaWYgQnJ1Y2UgcHVsbHMg
aW4gdGhlIHBhdGNoIHRvIHN3aXRjaCB0byBlbWdkLTEuMTQNCj4gPiA+IGFuZCBvbmx5IGF0IHRo
YXQgcG9pbnQgZG8geW91IHBvc3QgdGhlIHVzZXJzcGFjZSByZWNpcGUsIGFuZCBpdCBlbmRzDQo+
ID4gPiB1cCBuZWVkaW5nIHNvbWUgcmV3b3JrLCBpbiB0aGUgbWVhbnRpbWUgdGhlIGdyYXBoaWNz
IHJlbWFpbg0KPiA+ID4gbm9uLWZ1bmN0aW9uYWwgKEkga25vdywgdGhleSBhbHJlYWR5IGFyZSwg
dGhhbmtzIHRvIHRoZSBwYWNrYWdlDQo+ID4gPiByZS1vcmRlcmluZyBwYXRjaGVzIGJyZWFraW5n
IHRoZSBjdXJyZW50IHJlY2lwZSwgYnV0IGhvcGVmdWxseSB0aGUNCj4gPiA+IDEuMTQgY2hhbmdl
cyB3aWxsIGJlIGluIGFuZCB3ZSBkb24ndCBoYXZlIHRvIHdvcnJ5IGFib3V0IGl0IGFueSBtb3Jl
LikuDQo+ID4gPg0KPiA+ID4gRG9lcyB0aGF0IG1ha2Ugc2Vuc2UsIGFuZCBjYW4geW91IGp1c3Qg
cG9zdCB0aGUgdXNlcnNwYWNlIGFuZCBrZXJuZWwNCj4gPiA+IHJlY2lwZSBwYXJ0cyBiZWZvcmUg
d2UgZ2l2ZSBCcnVjZSB0aGUgZ28tYWhlYWQgaW4gbWFraW5nIHRoZSBrZXJuZWwNCj4gPiA+IGNo
YW5nZXM/ICAoSSdkIGFsc28gbGlrZSB0byB0cnkgaXQgb3V0IG15c2VsZiBhcyB3ZWxsLi4uKS4N
Cj4gPiA+DQo+ID4gVG9tLA0KPiA+ICAgVW50aWwgdGhlIGNyb3duYmF5IGJzcCdzIExpbnV4LXlv
Y3RvIGtlcm5lbCByZWNpcGUncyBtZXRhIFNSQ1JFViBpcw0KPiB1cGRhdGVkLCB0aGVzZSBrZXJu
ZWwgcmVwbyBjaGFuZ2VzIGhhdmUgbm8gZWZmZWN0IGluIHRoZSBidWlsZCBwcm9jZXNzLg0KPiBS
aWdodCA/IFNvIGFzIEkgc2VlLCB0aGlzIGNvbW1pdCBkb2VzIG5vdCBtYWtlIGFueXRoaW5nIHdv
cnN0IChvciBiZXR0ZXIpLg0KPiA+IEkgYW0gc2VuZGluZyB0aGUgdXNlcmxhbmQgcmVjaXBlIGNv
bW1pdHMgYW55d2F5OyBTbyB0aGF0IHlvdSBjYW4gYWxzbyB0ZXN0DQo+IGl0IG91dC4NCj4gPg0K
PiANCj4gUmlnaHQsIGJ1dCB3aGF0IGlmIHdlIGhhdmUgdG8gdXBkYXRlIHRoZSBtZXRhIFNSQ1JF
ViBmb3IgYSBkaWZmZXJlbnQgcmVhc29uDQo+IGluIHRoZSBtZWFudGltZSAobGlrZSB3ZSBkaWQg
bGFzdCB3ZWVrIGZvciBpbnN0YW5jZSkuICBXZSdyZSB0aGVuIGZvcmNlZCB0bw0KPiB0YWtlIHRo
ZSBlbWdkIGNvbW1pdCBhcyB3ZWxsLg0KDQpJIHNlZSB0aGUgaXNzdWUgbm93LiBBbmQgSSBkb24n
dCBzZWUgYSBwZXJmZWN0IHNvbHV0aW9uIHRvIHRoZSBpc3N1ZS4gQmVjYXVzZSBvZiBjb21taXRz
IGluIHR3byBkaWZmZXJlbnQgcmVwb3MgdGhlcmUgYWx3YXlzIGdvaW5nIHRvIGJlIHRoaXMga2lu
ZCBvZiBhIHN5bmMgaXNzdWUuIFRoZSBiZXN0IGlzIHB1bGwgdGhlIGNvbW1pdHMgaW4gYm90aCBy
ZXBvc2l0b3JpZXMgYXQgdGhlIHNhbWUgdGltZS4NCg0KVGhhbmtzLA0KTml0aW4NCg0KPiANCj4g
SW4gYW55IGNhc2UsIGl0J3MgeW91ciBCU1Agc28gaXQncyB1cCB0byB5b3UgaG93IHlvdSB3YW50
IHRvIG1hbmFnZSBpdCwgSSdtIGp1c3QNCj4gdHJ5aW5nIHRvIHNhdmUgeW91IGFuZCB0aGUgdXNl
cnMgc29tZSBoZWFkYWNoZXMuICBJdCBhbHdheXMgbWFkZSBzZW5zZSB0bw0KPiBtZSB0byBkbyBp
dCBhbGwgYXQgdGhlIHNhbWUgdGltZSwgYWxsIGVsc2UgYmVpbmcgZXF1YWwuLi4NCj4gDQo+IFRv
bQ0KPiANCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBOaXRpbg0KPiA+DQo+ID4NCj4gPg0KPiANCg0K

