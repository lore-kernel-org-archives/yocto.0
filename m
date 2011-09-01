Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E258CE0071A
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 14:14:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Sep 2011 14:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44514301"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 01 Sep 2011 14:14:26 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Thu, 1 Sep 2011 14:14:26 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 1 Sep 2011 14:14:24 -0700
Thread-Topic: RT kernel with core-image-sato build failed for sugarbay
Thread-Index: Acxo6yryxwMdBx6GSaGcpQc5ir0EDQAALz1A
Message-ID: <4BD43A85686FC34D819098DB1C3999D901889D7F5C@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
	<1314850760.10191.3.camel@elmorro> <4E5FF19D.6000409@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7F2E@orsmsx502.amr.corp.intel.com>
	<4E5FF413.1090205@linux.intel.com>
In-Reply-To: <4E5FF413.1090205@linux.intel.com>
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
X-List-Received-Date: Thu, 01 Sep 2011 21:14:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVhaCwgaXQgaXMgdGhlIHNhbWUgZG9fcm9vdGZzIGZhaWx1cmUgSSBnZXQgZm9yIGJvdGggdGhl
IGJ1aWxkcy4NClRoYW5rcw0KS2lzaG9yZS4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IERhcnJlbiBIYXJ0IFttYWlsdG86ZHZoYXJ0QGxpbnV4LmludGVsLmNvbV0gDQpTZW50
OiBUaHVyc2RheSwgU2VwdGVtYmVyIDAxLCAyMDExIDI6MDggUE0NClRvOiBCb2RrZSwgS2lzaG9y
ZSBLDQpDYzogWmFudXNzaSwgVG9tOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBIYXJ0LCBEYXJy
ZW47IFNheGVuYSwgUmFodWwNClN1YmplY3Q6IFJlOiBSVCBrZXJuZWwgd2l0aCBjb3JlLWltYWdl
LXNhdG8gYnVpbGQgZmFpbGVkIGZvciBzdWdhcmJheQ0KDQpPbiAwOS8wMS8yMDExIDAyOjAxIFBN
LCBCb2RrZSwgS2lzaG9yZSBLIHdyb3RlOg0KPiBDbGVhbiBidWlsZCB3aXRoIHRoZSBiZWxvdyBU
T00ncyB0d28gY29tbWl0IElEcyB3b3JrZWQgZm9yIG1lLCBpZiBJDQo+IGRvIG5vdCBhZGQgSU1B
R0VfSU5TVEFMTCArPSAicnR0ZXN0cyIgZm9yIHN1Z2FyYmF5Lg0KPiANCj4gSXQgZmFpbGVkIGlm
IEkgYWRkIHRoZSBJTUFHRV9JTlNUQUxMICs9ICJydHRlc3RzIg0KDQpEbyB5b3UgZ2V0IHRoZSBz
YW1lIGVycm9yPyBJZiBzbywgaXQncyBzdGFydGluZyB0byBzb3VuZCBsaWtlIHRoZSBzZWNvbmQN
CmJ1aWxkIGlzIHdoYXQgZmFpbHMgc2luY2UgbmVpdGhlciBvZiB5b3VyIGZhaWx1cmUgc2NlbmFy
aW9zIGluY2x1ZGUNCmEgY2hhbmdlIHRoYXQncyByZWxhdGVkIHRvIHRoZSBmYWlsdXJlLiBQZXJo
YXBzIGFuIGlzc3VlIHdpdGggc3N0YXRlLi4uDQoNCi0tDQpEYXJyZW4NCg0KPiANCj4gVGhhbmtz
IEtpc2hvcmUuIC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tIEZyb206IERhcnJlbiBIYXJ0DQo+
IFttYWlsdG86ZHZoYXJ0QGxpbnV4LmludGVsLmNvbV0gU2VudDogVGh1cnNkYXksIFNlcHRlbWJl
ciAwMSwgMjAxMQ0KPiAxOjU3IFBNIFRvOiBaYW51c3NpLCBUb20gQ2M6IEJvZGtlLCBLaXNob3Jl
IEs7DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEhhcnQsIERhcnJlbjsgU2F4ZW5hLCBSYWh1
bCBTdWJqZWN0OiBSZTogUlQNCj4ga2VybmVsIHdpdGggY29yZS1pbWFnZS1zYXRvIGJ1aWxkIGZh
aWxlZCBmb3Igc3VnYXJiYXkNCj4gDQo+IA0KPiANCj4gT24gMDgvMzEvMjAxMSAwOToxOSBQTSwg
VG9tIFphbnVzc2kgd3JvdGU6DQo+PiANCj4+IE9uIFdlZCwgMjAxMS0wOC0zMSBhdCAxNjo0OSAt
MDcwMCwgQm9ka2UsIEtpc2hvcmUgSyB3cm90ZToNCj4+PiBIaSwNCj4+PiANCj4+PiANCj4+PiAN
Cj4+PiBJIGFtIHRyeWluZyB0byBidWlsZCBjb3JlLWltYWdlLXNhdG8gd2l0aCBydCBrZXJuZWwg
Zm9yIHN1Z2FyYmF5DQo+Pj4gYW5kIGl0IGZhaWxzIGZvciB0aGUgZG9fcm9vdGZzIC4NCj4+PiAN
Cj4+IA0KPj4gRldJVywgSSB3YXMgYWJsZSB0byBidWlsZCBhbmQgYm9vdCBjb3JlLWltYWdlLXNh
dG8gd2l0aCB0aGUgcnQNCj4+IGtlcm5lbDoNCj4+IA0KPj4gTGludXggc3VnYXJiYXkgMy4wLjMt
cnQ4LXlvY3RvLXByZWVtcHQtcnQrICMxIFNNUCBQUkVFTVBUIFJUIFdlZA0KPj4gQXVnIDMxIDIx
OjMzOjI3IENEVCAyMDExIHg4Nl82NCBHTlUvTGludXgNCj4+IA0KPj4gdXNpbmcgdGhlIGZvbGxv
d2luZyBjb21taXRzOg0KPj4gDQo+PiBwb2t5L21hc3RlciA3MDVlYzUwZWRkYTdmN2ZiOGMxMzIy
MzhmZTNmMTQ3NzM4NGE0NzBlIG1ldGEvaW50ZWwNCj4+IDkwMmQyZjNjOTE5Y2QxZDg3MGRjOGQz
NWE3NTIxY2JiYTQyZTUzZWENCj4+IA0KPj4gQWN0dWFsbHksIG1ldGEvaW50ZWwgd2FzIHRoYXQg
Y29tbWl0IHdpdGggRGFycmVuJ3MgZ3J1YiBwYXRjaCBvbg0KPj4gdG9wIChtZXRhLWludGVsL2R2
aGFydC9ncnViLWZyZWV0eXBlKS4NCj4+IA0KPiANCj4gS2lzaG9yZSwgd291bGQgeW91IHRyeSB3
aXRoIGEgY2xlYW4gYnVpbGQgYW5kIHNlZSBpZiB0aGlzIHdvcmtzIGZvcg0KPiB5b3U/DQo+IA0K
PiBJJ20gZ29pbmcgdG8gdHJ5IGFuZCBidWlsZCBmaXJzdCB3aXRob3V0IC1ydCBhbmQgdGhlbiB3
aXRoIHJ0IGFuZCBzZWUNCj4gaWYgSSBjYW4gcmVwcm9kdWNlIHRoZSBpc3N1ZS4NCj4gDQo+IFRo
YW5rcywNCj4gDQo+IERhcnJlbg0KPiANCj4+IFRvbQ0KPj4gDQo+Pj4gDQo+Pj4gDQo+Pj4gQXR0
YWNoZWQgaXMgdGhlIGJ1aWxkIGxvZy4NCj4+PiANCj4+PiANCj4+PiANCj4+PiBDb3VsZCB5b3Ug
cGxlYXNlIGxldCBtZSBrbm93IHdoYXQgd2VudCB3cm9uZz8NCj4+PiANCj4+PiANCj4+PiANCj4+
PiBUaGFua3MNCj4+PiANCj4+PiBLaXNob3JlLg0KPj4+IA0KPj4+IA0KPj4gDQo+PiANCj4gDQoN
Ci0tIA0KRGFycmVuIEhhcnQNCkludGVsIE9wZW4gU291cmNlIFRlY2hub2xvZ3kgQ2VudGVyDQpZ
b2N0byBQcm9qZWN0IC0gTGludXggS2VybmVsDQo=

