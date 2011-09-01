Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FBF6E0071A
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 15:05:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Sep 2011 15:05:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,315,1312182000"; d="scan'208";a="47401472"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 01 Sep 2011 15:05:13 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi; Thu, 1 Sep 2011
	15:05:13 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 1 Sep 2011 15:05:11 -0700
Thread-Topic: RT kernel with core-image-sato build failed for sugarbay
Thread-Index: Acxo8WrUk/OOqokrTnyhP/A/EvTjdQAAXB7A
Message-ID: <4BD43A85686FC34D819098DB1C3999D901889D7FF4@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
	<1314850760.10191.3.camel@elmorro> <4E5FF19D.6000409@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7F2E@orsmsx502.amr.corp.intel.com>
	<4E5FF413.1090205@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7F5C@orsmsx502.amr.corp.intel.com>
	<4E5FFE8F.3020307@linux.intel.com>
In-Reply-To: <4E5FFE8F.3020307@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 01 Sep 2011 22:05:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIHRoZSBidWlsZCBJIHJlbW92ZWQgdGhlIHJ0dGVzdHMgaW4gdGhlIElNQUdFX0lOU1RBTEwg
LCBzbyBpdCBpcyBub3Qgc2hvd2luZyB1cCBoZXJlLg0KDQpiaXRiYWtlIC1lIGNvcmUtaW1hZ2Ut
c2F0byB8IGVncmVwICJJTUFHRV9JTlNUQUxMPSIgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgDQojIE1VTFRJTElCX0lNQUdFX0lOU1RBTEw9IA0KIyBJTUFHRV9JTlNU
QUxMPSR7UE9LWV9CQVNFX0lOU1RBTEx9DQpJTUFHRV9JTlNUQUxMPSJ0YXNrLWNvcmUtYm9vdCAg
ICAgdGFzay1iYXNlLWV4dGVuZGVkIg0KDQpJIHdpbGwgcmVidWlsZCB3aXRoIHJ0dGVzdHMgYW5k
IHNlbmQgdGhlIG91dHB1dC4NCg0KVGhhbmtzDQpLaXNob3JlLg0KDQotLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KRnJvbTogRGFycmVuIEhhcnQgW21haWx0bzpkdmhhcnRAbGludXguaW50ZWwu
Y29tXSANClNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIgMDEsIDIwMTEgMjo1MiBQTQ0KVG86IEJv
ZGtlLCBLaXNob3JlIEsNCkNjOiBaYW51c3NpLCBUb207IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7
IEhhcnQsIERhcnJlbjsgU2F4ZW5hLCBSYWh1bA0KU3ViamVjdDogUmU6IFJUIGtlcm5lbCB3aXRo
IGNvcmUtaW1hZ2Utc2F0byBidWlsZCBmYWlsZWQgZm9yIHN1Z2FyYmF5DQoNCkNhbiB5b3UgcmVw
b3J0IHRoZSBvdXRwdXQgb2Y6DQoNCiQgYml0YmFrZSAtZSBjb3JlLWltYWdlLXNhdG8gfCBlZ3Jl
cCAiXklNQUdFX0lOU1RBTEw9Ig0KDQpUaGFua3MsDQoNCkRhcnJlbg0KDQpPbiAwOS8wMS8yMDEx
IDAyOjE0IFBNLCBCb2RrZSwgS2lzaG9yZSBLIHdyb3RlOg0KPiBZZWFoLCBpdCBpcyB0aGUgc2Ft
ZSBkb19yb290ZnMgZmFpbHVyZSBJIGdldCBmb3IgYm90aCB0aGUgYnVpbGRzLg0KPiBUaGFua3MN
Cj4gS2lzaG9yZS4NCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IERh
cnJlbiBIYXJ0IFttYWlsdG86ZHZoYXJ0QGxpbnV4LmludGVsLmNvbV0gDQo+IFNlbnQ6IFRodXJz
ZGF5LCBTZXB0ZW1iZXIgMDEsIDIwMTEgMjowOCBQTQ0KPiBUbzogQm9ka2UsIEtpc2hvcmUgSw0K
PiBDYzogWmFudXNzaSwgVG9tOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBIYXJ0LCBEYXJyZW47
IFNheGVuYSwgUmFodWwNCj4gU3ViamVjdDogUmU6IFJUIGtlcm5lbCB3aXRoIGNvcmUtaW1hZ2Ut
c2F0byBidWlsZCBmYWlsZWQgZm9yIHN1Z2FyYmF5DQo+IA0KPiBPbiAwOS8wMS8yMDExIDAyOjAx
IFBNLCBCb2RrZSwgS2lzaG9yZSBLIHdyb3RlOg0KPj4gQ2xlYW4gYnVpbGQgd2l0aCB0aGUgYmVs
b3cgVE9NJ3MgdHdvIGNvbW1pdCBJRHMgd29ya2VkIGZvciBtZSwgaWYgSQ0KPj4gZG8gbm90IGFk
ZCBJTUFHRV9JTlNUQUxMICs9ICJydHRlc3RzIiBmb3Igc3VnYXJiYXkuDQo+Pg0KPj4gSXQgZmFp
bGVkIGlmIEkgYWRkIHRoZSBJTUFHRV9JTlNUQUxMICs9ICJydHRlc3RzIg0KPiANCj4gRG8geW91
IGdldCB0aGUgc2FtZSBlcnJvcj8gSWYgc28sIGl0J3Mgc3RhcnRpbmcgdG8gc291bmQgbGlrZSB0
aGUgc2Vjb25kDQo+IGJ1aWxkIGlzIHdoYXQgZmFpbHMgc2luY2UgbmVpdGhlciBvZiB5b3VyIGZh
aWx1cmUgc2NlbmFyaW9zIGluY2x1ZGUNCj4gYSBjaGFuZ2UgdGhhdCdzIHJlbGF0ZWQgdG8gdGhl
IGZhaWx1cmUuIFBlcmhhcHMgYW4gaXNzdWUgd2l0aCBzc3RhdGUuLi4NCj4gDQo+IC0tDQo+IERh
cnJlbg0KPiANCj4+DQo+PiBUaGFua3MgS2lzaG9yZS4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0gRnJvbTogRGFycmVuIEhhcnQNCj4+IFttYWlsdG86ZHZoYXJ0QGxpbnV4LmludGVsLmNvbV0g
U2VudDogVGh1cnNkYXksIFNlcHRlbWJlciAwMSwgMjAxMQ0KPj4gMTo1NyBQTSBUbzogWmFudXNz
aSwgVG9tIENjOiBCb2RrZSwgS2lzaG9yZSBLOw0KPj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsg
SGFydCwgRGFycmVuOyBTYXhlbmEsIFJhaHVsIFN1YmplY3Q6IFJlOiBSVA0KPj4ga2VybmVsIHdp
dGggY29yZS1pbWFnZS1zYXRvIGJ1aWxkIGZhaWxlZCBmb3Igc3VnYXJiYXkNCj4+DQo+Pg0KPj4N
Cj4+IE9uIDA4LzMxLzIwMTEgMDk6MTkgUE0sIFRvbSBaYW51c3NpIHdyb3RlOg0KPj4+DQo+Pj4g
T24gV2VkLCAyMDExLTA4LTMxIGF0IDE2OjQ5IC0wNzAwLCBCb2RrZSwgS2lzaG9yZSBLIHdyb3Rl
Og0KPj4+PiBIaSwNCj4+Pj4NCj4+Pj4NCj4+Pj4NCj4+Pj4gSSBhbSB0cnlpbmcgdG8gYnVpbGQg
Y29yZS1pbWFnZS1zYXRvIHdpdGggcnQga2VybmVsIGZvciBzdWdhcmJheQ0KPj4+PiBhbmQgaXQg
ZmFpbHMgZm9yIHRoZSBkb19yb290ZnMgLg0KPj4+Pg0KPj4+DQo+Pj4gRldJVywgSSB3YXMgYWJs
ZSB0byBidWlsZCBhbmQgYm9vdCBjb3JlLWltYWdlLXNhdG8gd2l0aCB0aGUgcnQNCj4+PiBrZXJu
ZWw6DQo+Pj4NCj4+PiBMaW51eCBzdWdhcmJheSAzLjAuMy1ydDgteW9jdG8tcHJlZW1wdC1ydCsg
IzEgU01QIFBSRUVNUFQgUlQgV2VkDQo+Pj4gQXVnIDMxIDIxOjMzOjI3IENEVCAyMDExIHg4Nl82
NCBHTlUvTGludXgNCj4+Pg0KPj4+IHVzaW5nIHRoZSBmb2xsb3dpbmcgY29tbWl0czoNCj4+Pg0K
Pj4+IHBva3kvbWFzdGVyIDcwNWVjNTBlZGRhN2Y3ZmI4YzEzMjIzOGZlM2YxNDc3Mzg0YTQ3MGUg
bWV0YS9pbnRlbA0KPj4+IDkwMmQyZjNjOTE5Y2QxZDg3MGRjOGQzNWE3NTIxY2JiYTQyZTUzZWEN
Cj4+Pg0KPj4+IEFjdHVhbGx5LCBtZXRhL2ludGVsIHdhcyB0aGF0IGNvbW1pdCB3aXRoIERhcnJl
bidzIGdydWIgcGF0Y2ggb24NCj4+PiB0b3AgKG1ldGEtaW50ZWwvZHZoYXJ0L2dydWItZnJlZXR5
cGUpLg0KPj4+DQo+Pg0KPj4gS2lzaG9yZSwgd291bGQgeW91IHRyeSB3aXRoIGEgY2xlYW4gYnVp
bGQgYW5kIHNlZSBpZiB0aGlzIHdvcmtzIGZvcg0KPj4geW91Pw0KPj4NCj4+IEknbSBnb2luZyB0
byB0cnkgYW5kIGJ1aWxkIGZpcnN0IHdpdGhvdXQgLXJ0IGFuZCB0aGVuIHdpdGggcnQgYW5kIHNl
ZQ0KPj4gaWYgSSBjYW4gcmVwcm9kdWNlIHRoZSBpc3N1ZS4NCj4+DQo+PiBUaGFua3MsDQo+Pg0K
Pj4gRGFycmVuDQo+Pg0KPj4+IFRvbQ0KPj4+DQo+Pj4+DQo+Pj4+DQo+Pj4+IEF0dGFjaGVkIGlz
IHRoZSBidWlsZCBsb2cuDQo+Pj4+DQo+Pj4+DQo+Pj4+DQo+Pj4+IENvdWxkIHlvdSBwbGVhc2Ug
bGV0IG1lIGtub3cgd2hhdCB3ZW50IHdyb25nPw0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBUaGFu
a3MNCj4+Pj4NCj4+Pj4gS2lzaG9yZS4NCj4+Pj4NCj4+Pj4NCj4+Pg0KPj4+DQo+Pg0KPiANCg0K
LS0gDQpEYXJyZW4gSGFydA0KSW50ZWwgT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50ZXINCllv
Y3RvIFByb2plY3QgLSBMaW51eCBLZXJuZWwNCg==

