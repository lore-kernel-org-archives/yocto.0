Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F6D1E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:28:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2014 08:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,834,1389772800"; d="scan'208";a="518402150"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2014 08:28:37 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.45]) with mapi id
	14.03.0123.003; Thu, 10 Apr 2014 16:27:43 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "denis@denix.org" <denis@denix.org>
Thread-Topic: [yocto] [meta-yocto][PATCH 1/2] beaglebone.conf: configuration
	updates
Thread-Index: AQHPVMHgiNF6xlwyTEq25pg9mXzDhJsK1E8AgAAUVwA=
Date: Thu, 10 Apr 2014 15:27:43 +0000
Message-ID: <1397143684.21633.9.camel@firebird.rb.intel.com>
References: <1397116933-20764-1-git-send-email-denis@denix.org>
	<1397137009.21633.6.camel@firebird.rb.intel.com>
	<1397139316.21633.8.camel@firebird.rb.intel.com>
In-Reply-To: <1397139316.21633.8.camel@firebird.rb.intel.com>
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
X-List-Received-Date: Thu, 10 Apr 2014 15:28:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <E1DB5DEBFCE536449FC778D6F45DE6C4@intel.com>
Content-Transfer-Encoding: base64

DQoNCg0KT24gVGh1LCAyMDE0LTA0LTEwIGF0IDE0OjE0ICswMDAwLCBTdGFuYWNhciwgU3RlZmFu
WCB3cm90ZToNCj4gDQo+IA0KPiBPbiBUaHUsIDIwMTQtMDQtMTAgYXQgMTM6MzYgKzAwMDAsIFN0
YW5hY2FyLCBTdGVmYW5YIHdyb3RlOg0KPiA+IEhpIERlbnlzLA0KPiA+IA0KPiA+IFdpdGggdGhp
cyBwYXRjaCBhcHBsaWVkIGFuZCB0aGUgdXBkYXRlZCBSRUFETUUgSSBjYW4gYm9vdCBhIEJlYWds
ZWJvbmUNCj4gPiBCbGFjayAocmV2IEE2KSB3aXRoIGEgZGVmYXVsdCB5b2N0byBpbWFnZS9jb25m
aWcgKEkndmUgdXNlZA0KPiA+IGNvcmUtaW1hZ2Utc2F0by1zZGsgRldJVykuIEV2ZXJ5dGhpbmcg
c2VlbXMgZmluZSwgSSByYW4gYSBidW5jaCBvZiB0ZXN0cw0KPiA+IG9uIHRoZSBpbWFnZSwgZXhj
ZXB0IGZvciBYIC0gaXQgZG9lc24ndCBzdGFydCA6KC4NCj4gPiBJJ3ZlIGJ1aWx0IHdpdGggZmJk
ZXYgYW5kIG9tYXBmYiB0b28uDQo+ID4gDQo+ID4gWCBsb2cgZm9yIGZiZGV2OiANCj4gPiBodHRw
Oi8vcGFzdGViaW4uY29tL3NxTmMzNVUwDQo+ID4gDQo+ID4gZm9yIG9tYXBmYjoNCj4gPiBodHRw
Oi8vcGFzdGViaW4uY29tL2ZNa3pNVzhVDQo+ID4gDQo+ID4gSXMgdGhlcmUgYW55dGhpbmcgZWxz
ZSB0aGF0IG5lZWRzIHRvIGNoYW5nZWQvYWRkZWQ/IEkgY291bGQgYWRkIGENCj4gPiB4b3JnLmNv
bmYgb24gdGhlIGltYWdlIHRvbywgYnV0IHRoZW4gaXQgYmVhdHMgdGhlIHBvaW50Li4uDQo+ID4g
DQo+IA0KPiBXaGF0IEkgd2FzIHRyeWluZyB0byBzYXkgaXMgdGhhdCB3ZSBhcmUgbWlzc2luZyBh
IC5iYmFwcGVuZCBmb3INCj4geHNlcnZlci14Zjg2LWNvbmZpZyB0aGF0IGFkZHMgdGhlIHJpZ2h0
IHhvcmcuY29uZiAoZWl0aGVyIGZvciBmYmRldiBvcg0KPiBvbWFwZmIpLiBJJ2xsIHRyeSB0byBj
b21lIHVwIHdpdGggb25lLg0KDQoNCk9rYXkgaWdub3JlIHRoYXQgaXQgZGlkbid0IGhlbHBlZCwg
SSB0aGluayBJIGtub3cgd2hhdCdzIG1pc3NpbmcuLiBJDQpuZWVkIHRoZSBsYXRlc3QgU1JDUkVW
X21ldGEgZm9yIGtlcm5lbC4NCg0KQ2hlZXJzLA0KU3RlZmFuDQoNCg0KPiBDaGVlcnMsDQo+IFN0
ZWZhbg0KPiANCj4gPiBDaGVlcnMsDQo+ID4gU3RlZmFuDQo+ID4gDQo+ID4gDQo+ID4gT24gVGh1
LCAyMDE0LTA0LTEwIGF0IDA0OjAyIC0wNDAwLCBEZW55cyBEbXl0cml5ZW5rbyB3cm90ZToNCj4g
PiA+IEZyb206IERlbnlzIERteXRyaXllbmtvIDxkZW55c0B0aS5jb20+DQo+ID4gPiANCj4gPiA+
ICogVXNlIGZiZGV2IHZpZGVvIGRyaXZlciBmb3IgeHNlcnZlci14b3JnDQo+ID4gPiAqIFJlY29t
bWVuZCBpbnN0YWxsaW5nIGRldmljZSB0cmVlIERUQiBmaWxlcyBpbnRvIHJvb3RmcyAvYm9vdCBk
aXJlY3RvcnkNCj4gPiA+ICogU3dpdGNoIGJhY2sgdG8gdUltYWdlIGtlcm5lbCBmb3JtYXQgZnJv
bSB6SW1hZ2UsIGFzIFUtYm9vdCB3YXMgbm90IHVwZGF0ZWQNCj4gPiA+ICAgLSBkZWZhdWx0IGhh
cyBjaGFuZ2VkIHRvIHpJbWFnZSBpbiBuZXdlciBVLWJvb3QgMjAxMy4xMCssIGJ1dCB3ZSB1c2Ug
MjAxMy4wNw0KPiA+ID4gKiBDb3JyZWN0IGNvcHkvcGFzdGUgdHlwbyBpbiBzZXJpYWwgY29uc29s
ZQ0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEZW55cyBEbXl0cml5ZW5rbyA8ZGVueXNA
dGkuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2Jl
YWdsZWJvbmUuY29uZiB8IDEwICsrKysrLS0tLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEv
bWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUuY29uZiBiL21ldGEteW9jdG8t
YnNwL2NvbmYvbWFjaGluZS9iZWFnbGVib25lLmNvbmYNCj4gPiA+IGluZGV4IGYyZWYwY2YuLjQy
NjM3MTUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvYmVh
Z2xlYm9uZS5jb25mDQo+ID4gPiArKysgYi9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvYmVh
Z2xlYm9uZS5jb25mDQo+ID4gPiBAQCAtNiwxMSArNiwxMCBAQCBQUkVGRVJSRURfUFJPVklERVJf
dmlydHVhbC94c2VydmVyID89ICJ4c2VydmVyLXhvcmciDQo+ID4gPiAgWFNFUlZFUiA/PSAieHNl
cnZlci14b3JnIFwNCj4gPiA+ICAgICAgICAgICAgIHhmODYtaW5wdXQtZXZkZXYgXA0KPiA+ID4g
ICAgICAgICAgICAgeGY4Ni1pbnB1dC1tb3VzZSBcDQo+ID4gPiAtICAgICAgICAgICB4Zjg2LXZp
ZGVvLW9tYXBmYiBcDQo+ID4gPiArICAgICAgICAgICB4Zjg2LXZpZGVvLWZiZGV2IFwNCj4gPiA+
ICAgICAgICAgICAgIHhmODYtaW5wdXQta2V5Ym9hcmQiDQo+ID4gPiAgDQo+ID4gPiAtIyBTaGlw
IGFsbCBrZXJuZWwgbW9kdWxlcyBieSBkZWZhdWx0DQo+ID4gPiAtTUFDSElORV9FWFRSQV9SUkVD
T01NRU5EUyA9ICIga2VybmVsLW1vZHVsZXMiDQo+ID4gPiArTUFDSElORV9FWFRSQV9SUkVDT01N
RU5EUyA9ICIga2VybmVsLW1vZHVsZXMga2VybmVsLWRldmljZXRyZWUiDQo+ID4gPiAgDQo+ID4g
PiAgRVhUUkFfSU1BR0VERVBFTkRTICs9ICJ1LWJvb3QiDQo+ID4gPiAgDQo+ID4gPiBAQCAtMjAs
MTMgKzE5LDE0IEBAIGluY2x1ZGUgY29uZi9tYWNoaW5lL2luY2x1ZGUvdHVuZS1jb3J0ZXhhOC5p
bmMNCj4gPiA+ICBJTUFHRV9GU1RZUEVTICs9ICJ0YXIuYnoyIGpmZnMyIg0KPiA+ID4gIEVYVFJB
X0lNQUdFQ01EX2pmZnMyID0gIi1sbnAgIg0KPiA+ID4gIA0KPiA+ID4gLVNFUklBTF9DT05TT0xF
ID0gIjExNTIwMCB0dHlPMiINCj4gPiA+ICtTRVJJQUxfQ09OU09MRSA9ICIxMTUyMDAgdHR5TzAi
DQo+ID4gPiAgDQo+ID4gPiAgUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwva2VybmVsID89ICJs
aW51eC15b2N0byINCj4gPiA+ICBQUkVGRVJSRURfVkVSU0lPTl9saW51eC15b2N0byA/PSAiMy4x
NCUiDQo+ID4gPiAgDQo+ID4gPiAtS0VSTkVMX0lNQUdFVFlQRSA9ICJ6SW1hZ2UiDQo+ID4gPiAr
S0VSTkVMX0lNQUdFVFlQRSA9ICJ1SW1hZ2UiDQo+ID4gPiAgS0VSTkVMX0RFVklDRVRSRUUgPSAi
YW0zMzV4LWJvbmUuZHRiIGFtMzM1eC1ib25lYmxhY2suZHRiIg0KPiA+ID4gK0tFUk5FTF9FWFRS
QV9BUkdTICs9ICJMT0FEQUREUj0ke1VCT09UX0VOVFJZUE9JTlR9Ig0KPiA+ID4gIA0KPiA+ID4g
IFNQTF9CSU5BUlkgPSAiTUxPIg0KPiA+ID4gIFVCT09UX1NVRkZJWCA9ICJpbWciDQo+ID4gPiAt
LSANCj4gPiA+IDEuOS4xDQo+ID4gPiANCj4gPiANCj4gDQoNCg==

