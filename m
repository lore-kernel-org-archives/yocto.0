Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B12B7E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 07:16:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Apr 2014 07:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,834,1389772800"; d="scan'208";a="490790916"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2014 07:16:32 -0700
Received: from irsmsx107.ger.corp.intel.com (163.33.3.99) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 10 Apr 2014 15:14:55 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.174]) with mapi id
	14.03.0123.003; Thu, 10 Apr 2014 15:14:55 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "denis@denix.org" <denis@denix.org>
Thread-Topic: [yocto] [meta-yocto][PATCH 1/2] beaglebone.conf: configuration
	updates
Thread-Index: AQHPVMHgiNF6xlwyTEq25pg9mXzDhJsK1E8A
Date: Thu, 10 Apr 2014 14:14:54 +0000
Message-ID: <1397139316.21633.8.camel@firebird.rb.intel.com>
References: <1397116933-20764-1-git-send-email-denis@denix.org>
	<1397137009.21633.6.camel@firebird.rb.intel.com>
In-Reply-To: <1397137009.21633.6.camel@firebird.rb.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.160]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"denys@ti.com" <denys@ti.com>
Subject: Re: [meta-yocto][PATCH 1/2] beaglebone.conf: configuration updates
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
X-List-Received-Date: Thu, 10 Apr 2014 14:16:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <4D9AB0DB772A0D448399F9C9F00C14B6@intel.com>
Content-Transfer-Encoding: base64

DQoNCg0KT24gVGh1LCAyMDE0LTA0LTEwIGF0IDEzOjM2ICswMDAwLCBTdGFuYWNhciwgU3RlZmFu
WCB3cm90ZToNCj4gSGkgRGVueXMsDQo+IA0KPiBXaXRoIHRoaXMgcGF0Y2ggYXBwbGllZCBhbmQg
dGhlIHVwZGF0ZWQgUkVBRE1FIEkgY2FuIGJvb3QgYSBCZWFnbGVib25lDQo+IEJsYWNrIChyZXYg
QTYpIHdpdGggYSBkZWZhdWx0IHlvY3RvIGltYWdlL2NvbmZpZyAoSSd2ZSB1c2VkDQo+IGNvcmUt
aW1hZ2Utc2F0by1zZGsgRldJVykuIEV2ZXJ5dGhpbmcgc2VlbXMgZmluZSwgSSByYW4gYSBidW5j
aCBvZiB0ZXN0cw0KPiBvbiB0aGUgaW1hZ2UsIGV4Y2VwdCBmb3IgWCAtIGl0IGRvZXNuJ3Qgc3Rh
cnQgOiguDQo+IEkndmUgYnVpbHQgd2l0aCBmYmRldiBhbmQgb21hcGZiIHRvby4NCj4gDQo+IFgg
bG9nIGZvciBmYmRldjogDQo+IGh0dHA6Ly9wYXN0ZWJpbi5jb20vc3FOYzM1VTANCj4gDQo+IGZv
ciBvbWFwZmI6DQo+IGh0dHA6Ly9wYXN0ZWJpbi5jb20vZk1rek1XOFUNCj4gDQo+IElzIHRoZXJl
IGFueXRoaW5nIGVsc2UgdGhhdCBuZWVkcyB0byBjaGFuZ2VkL2FkZGVkPyBJIGNvdWxkIGFkZCBh
DQo+IHhvcmcuY29uZiBvbiB0aGUgaW1hZ2UgdG9vLCBidXQgdGhlbiBpdCBiZWF0cyB0aGUgcG9p
bnQuLi4NCj4gDQoNCldoYXQgSSB3YXMgdHJ5aW5nIHRvIHNheSBpcyB0aGF0IHdlIGFyZSBtaXNz
aW5nIGEgLmJiYXBwZW5kIGZvcg0KeHNlcnZlci14Zjg2LWNvbmZpZyB0aGF0IGFkZHMgdGhlIHJp
Z2h0IHhvcmcuY29uZiAoZWl0aGVyIGZvciBmYmRldiBvcg0Kb21hcGZiKS4gSSdsbCB0cnkgdG8g
Y29tZSB1cCB3aXRoIG9uZS4NCg0KQ2hlZXJzLA0KU3RlZmFuDQoNCj4gQ2hlZXJzLA0KPiBTdGVm
YW4NCj4gDQo+IA0KPiBPbiBUaHUsIDIwMTQtMDQtMTAgYXQgMDQ6MDIgLTA0MDAsIERlbnlzIERt
eXRyaXllbmtvIHdyb3RlOg0KPiA+IEZyb206IERlbnlzIERteXRyaXllbmtvIDxkZW55c0B0aS5j
b20+DQo+ID4gDQo+ID4gKiBVc2UgZmJkZXYgdmlkZW8gZHJpdmVyIGZvciB4c2VydmVyLXhvcmcN
Cj4gPiAqIFJlY29tbWVuZCBpbnN0YWxsaW5nIGRldmljZSB0cmVlIERUQiBmaWxlcyBpbnRvIHJv
b3RmcyAvYm9vdCBkaXJlY3RvcnkNCj4gPiAqIFN3aXRjaCBiYWNrIHRvIHVJbWFnZSBrZXJuZWwg
Zm9ybWF0IGZyb20gekltYWdlLCBhcyBVLWJvb3Qgd2FzIG5vdCB1cGRhdGVkDQo+ID4gICAtIGRl
ZmF1bHQgaGFzIGNoYW5nZWQgdG8gekltYWdlIGluIG5ld2VyIFUtYm9vdCAyMDEzLjEwKywgYnV0
IHdlIHVzZSAyMDEzLjA3DQo+ID4gKiBDb3JyZWN0IGNvcHkvcGFzdGUgdHlwbyBpbiBzZXJpYWwg
Y29uc29sZQ0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IERlbnlzIERteXRyaXllbmtvIDxkZW55
c0B0aS5jb20+DQo+ID4gLS0tDQo+ID4gIG1ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9iZWFn
bGVib25lLmNvbmYgfCAxMCArKysrKy0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL21ldGEteW9j
dG8tYnNwL2NvbmYvbWFjaGluZS9iZWFnbGVib25lLmNvbmYgYi9tZXRhLXlvY3RvLWJzcC9jb25m
L21hY2hpbmUvYmVhZ2xlYm9uZS5jb25mDQo+ID4gaW5kZXggZjJlZjBjZi4uNDI2MzcxNSAxMDA2
NDQNCj4gPiAtLS0gYS9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvYmVhZ2xlYm9uZS5jb25m
DQo+ID4gKysrIGIvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUuY29uZg0K
PiA+IEBAIC02LDExICs2LDEwIEBAIFBSRUZFUlJFRF9QUk9WSURFUl92aXJ0dWFsL3hzZXJ2ZXIg
Pz0gInhzZXJ2ZXIteG9yZyINCj4gPiAgWFNFUlZFUiA/PSAieHNlcnZlci14b3JnIFwNCj4gPiAg
ICAgICAgICAgICB4Zjg2LWlucHV0LWV2ZGV2IFwNCj4gPiAgICAgICAgICAgICB4Zjg2LWlucHV0
LW1vdXNlIFwNCj4gPiAtICAgICAgICAgICB4Zjg2LXZpZGVvLW9tYXBmYiBcDQo+ID4gKyAgICAg
ICAgICAgeGY4Ni12aWRlby1mYmRldiBcDQo+ID4gICAgICAgICAgICAgeGY4Ni1pbnB1dC1rZXli
b2FyZCINCj4gPiAgDQo+ID4gLSMgU2hpcCBhbGwga2VybmVsIG1vZHVsZXMgYnkgZGVmYXVsdA0K
PiA+IC1NQUNISU5FX0VYVFJBX1JSRUNPTU1FTkRTID0gIiBrZXJuZWwtbW9kdWxlcyINCj4gPiAr
TUFDSElORV9FWFRSQV9SUkVDT01NRU5EUyA9ICIga2VybmVsLW1vZHVsZXMga2VybmVsLWRldmlj
ZXRyZWUiDQo+ID4gIA0KPiA+ICBFWFRSQV9JTUFHRURFUEVORFMgKz0gInUtYm9vdCINCj4gPiAg
DQo+ID4gQEAgLTIwLDEzICsxOSwxNCBAQCBpbmNsdWRlIGNvbmYvbWFjaGluZS9pbmNsdWRlL3R1
bmUtY29ydGV4YTguaW5jDQo+ID4gIElNQUdFX0ZTVFlQRVMgKz0gInRhci5iejIgamZmczIiDQo+
ID4gIEVYVFJBX0lNQUdFQ01EX2pmZnMyID0gIi1sbnAgIg0KPiA+ICANCj4gPiAtU0VSSUFMX0NP
TlNPTEUgPSAiMTE1MjAwIHR0eU8yIg0KPiA+ICtTRVJJQUxfQ09OU09MRSA9ICIxMTUyMDAgdHR5
TzAiDQo+ID4gIA0KPiA+ICBQUkVGRVJSRURfUFJPVklERVJfdmlydHVhbC9rZXJuZWwgPz0gImxp
bnV4LXlvY3RvIg0KPiA+ICBQUkVGRVJSRURfVkVSU0lPTl9saW51eC15b2N0byA/PSAiMy4xNCUi
DQo+ID4gIA0KPiA+IC1LRVJORUxfSU1BR0VUWVBFID0gInpJbWFnZSINCj4gPiArS0VSTkVMX0lN
QUdFVFlQRSA9ICJ1SW1hZ2UiDQo+ID4gIEtFUk5FTF9ERVZJQ0VUUkVFID0gImFtMzM1eC1ib25l
LmR0YiBhbTMzNXgtYm9uZWJsYWNrLmR0YiINCj4gPiArS0VSTkVMX0VYVFJBX0FSR1MgKz0gIkxP
QURBRERSPSR7VUJPT1RfRU5UUllQT0lOVH0iDQo+ID4gIA0KPiA+ICBTUExfQklOQVJZID0gIk1M
TyINCj4gPiAgVUJPT1RfU1VGRklYID0gImltZyINCj4gPiAtLSANCj4gPiAxLjkuMQ0KPiA+IA0K
PiANCg0K

