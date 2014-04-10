Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04EACE00BE2
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 09:37:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2014 09:31:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,835,1389772800"; d="scan'208";a="518611217"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 10 Apr 2014 09:35:54 -0700
Received: from irsmsx154.ger.corp.intel.com (163.33.192.96) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 10 Apr 2014 17:35:52 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.252]) with mapi id
	14.03.0123.003; Thu, 10 Apr 2014 17:35:52 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "denis@denix.org" <denis@denix.org>
Thread-Topic: [yocto] [meta-yocto][PATCH 1/2] beaglebone.conf: configuration
	updates
Thread-Index: AQHPVMHgiNF6xlwyTEq25pg9mXzDhJsK1E8AgAAUVwCAAAhnAIAACqMA
Date: Thu, 10 Apr 2014 16:35:51 +0000
Message-ID: <1397147772.21633.12.camel@firebird.rb.intel.com>
References: <1397116933-20764-1-git-send-email-denis@denix.org>
	<1397137009.21633.6.camel@firebird.rb.intel.com>
	<1397139316.21633.8.camel@firebird.rb.intel.com>
	<1397143684.21633.9.camel@firebird.rb.intel.com>
	<20140410155808.GN3370@denix.org>
In-Reply-To: <20140410155808.GN3370@denix.org>
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
X-List-Received-Date: Thu, 10 Apr 2014 16:37:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <C5B95ECC82384B4382DB2AACDAAD9240@intel.com>
Content-Transfer-Encoding: base64

DQoNCg0KT24gVGh1LCAyMDE0LTA0LTEwIGF0IDExOjU4IC0wNDAwLCBEZW55cyBEbXl0cml5ZW5r
byB3cm90ZToNCj4gT24gVGh1LCBBcHIgMTAsIDIwMTQgYXQgMDM6Mjc6NDNQTSArMDAwMCwgU3Rh
bmFjYXIsIFN0ZWZhblggd3JvdGU6DQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gT24gVGh1LCAyMDE0
LTA0LTEwIGF0IDE0OjE0ICswMDAwLCBTdGFuYWNhciwgU3RlZmFuWCB3cm90ZToNCj4gPiA+IA0K
PiA+ID4gDQo+ID4gPiBPbiBUaHUsIDIwMTQtMDQtMTAgYXQgMTM6MzYgKzAwMDAsIFN0YW5hY2Fy
LCBTdGVmYW5YIHdyb3RlOg0KPiA+ID4gPiBIaSBEZW55cywNCj4gPiA+ID4gDQo+ID4gPiA+IFdp
dGggdGhpcyBwYXRjaCBhcHBsaWVkIGFuZCB0aGUgdXBkYXRlZCBSRUFETUUgSSBjYW4gYm9vdCBh
IEJlYWdsZWJvbmUNCj4gPiA+ID4gQmxhY2sgKHJldiBBNikgd2l0aCBhIGRlZmF1bHQgeW9jdG8g
aW1hZ2UvY29uZmlnIChJJ3ZlIHVzZWQNCj4gPiA+ID4gY29yZS1pbWFnZS1zYXRvLXNkayBGV0lX
KS4gRXZlcnl0aGluZyBzZWVtcyBmaW5lLCBJIHJhbiBhIGJ1bmNoIG9mIHRlc3RzDQo+ID4gPiA+
IG9uIHRoZSBpbWFnZSwgZXhjZXB0IGZvciBYIC0gaXQgZG9lc24ndCBzdGFydCA6KC4NCj4gPiA+
ID4gSSd2ZSBidWlsdCB3aXRoIGZiZGV2IGFuZCBvbWFwZmIgdG9vLg0KPiA+ID4gPiANCj4gPiA+
ID4gWCBsb2cgZm9yIGZiZGV2OiANCj4gPiA+ID4gaHR0cDovL3Bhc3RlYmluLmNvbS9zcU5jMzVV
MA0KPiA+ID4gPiANCj4gPiA+ID4gZm9yIG9tYXBmYjoNCj4gPiA+ID4gaHR0cDovL3Bhc3RlYmlu
LmNvbS9mTWt6TVc4VQ0KPiA+ID4gPiANCj4gPiA+ID4gSXMgdGhlcmUgYW55dGhpbmcgZWxzZSB0
aGF0IG5lZWRzIHRvIGNoYW5nZWQvYWRkZWQ/IEkgY291bGQgYWRkIGENCj4gPiA+ID4geG9yZy5j
b25mIG9uIHRoZSBpbWFnZSB0b28sIGJ1dCB0aGVuIGl0IGJlYXRzIHRoZSBwb2ludC4uLg0KPiA+
ID4gPiANCj4gPiA+IA0KPiA+ID4gV2hhdCBJIHdhcyB0cnlpbmcgdG8gc2F5IGlzIHRoYXQgd2Ug
YXJlIG1pc3NpbmcgYSAuYmJhcHBlbmQgZm9yDQo+ID4gPiB4c2VydmVyLXhmODYtY29uZmlnIHRo
YXQgYWRkcyB0aGUgcmlnaHQgeG9yZy5jb25mIChlaXRoZXIgZm9yIGZiZGV2IG9yDQo+ID4gPiBv
bWFwZmIpLiBJJ2xsIHRyeSB0byBjb21lIHVwIHdpdGggb25lLg0KPiA+IA0KPiA+IA0KPiA+IE9r
YXkgaWdub3JlIHRoYXQgaXQgZGlkbid0IGhlbHBlZCwgSSB0aGluayBJIGtub3cgd2hhdCdzIG1p
c3NpbmcuLiBJDQo+ID4gbmVlZCB0aGUgbGF0ZXN0IFNSQ1JFVl9tZXRhIGZvciBrZXJuZWwuDQo+
IA0KPiBTb3JyeSBmb3IgdGhlIGRlbGF5IC0geWVzLCBjb3VwbGUgdHdlYWtzIGFyZSBuZWVkZWQg
ZnJvbSBCU1AgYXMgd2VsbC4NCg0KSSd2ZSByZWJ1aXQgd2l0aCBsYXRlc3QgU1JDUkVWX21ldGEg
YW5kIGluZGVlZCBYIHN0YXJ0cyBmaW5lIG5vdywNCnRoYW5rcy4NCg0KQ2hlZXJzLA0KU3RlZmFu
DQoNCj4gDQo+IA0KPiA+ID4gPiBPbiBUaHUsIDIwMTQtMDQtMTAgYXQgMDQ6MDIgLTA0MDAsIERl
bnlzIERteXRyaXllbmtvIHdyb3RlOg0KPiA+ID4gPiA+IEZyb206IERlbnlzIERteXRyaXllbmtv
IDxkZW55c0B0aS5jb20+DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gKiBVc2UgZmJkZXYgdmlkZW8g
ZHJpdmVyIGZvciB4c2VydmVyLXhvcmcNCj4gPiA+ID4gPiAqIFJlY29tbWVuZCBpbnN0YWxsaW5n
IGRldmljZSB0cmVlIERUQiBmaWxlcyBpbnRvIHJvb3RmcyAvYm9vdCBkaXJlY3RvcnkNCj4gPiA+
ID4gPiAqIFN3aXRjaCBiYWNrIHRvIHVJbWFnZSBrZXJuZWwgZm9ybWF0IGZyb20gekltYWdlLCBh
cyBVLWJvb3Qgd2FzIG5vdCB1cGRhdGVkDQo+ID4gPiA+ID4gICAtIGRlZmF1bHQgaGFzIGNoYW5n
ZWQgdG8gekltYWdlIGluIG5ld2VyIFUtYm9vdCAyMDEzLjEwKywgYnV0IHdlIHVzZSAyMDEzLjA3
DQo+ID4gPiA+ID4gKiBDb3JyZWN0IGNvcHkvcGFzdGUgdHlwbyBpbiBzZXJpYWwgY29uc29sZQ0K
PiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IERlbnlzIERteXRyaXllbmtvIDxk
ZW55c0B0aS5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gIG1ldGEteW9jdG8tYnNwL2Nv
bmYvbWFjaGluZS9iZWFnbGVib25lLmNvbmYgfCAxMCArKysrKy0tLS0tDQo+ID4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9iZWFn
bGVib25lLmNvbmYgYi9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvYmVhZ2xlYm9uZS5jb25m
DQo+ID4gPiA+ID4gaW5kZXggZjJlZjBjZi4uNDI2MzcxNSAxMDA2NDQNCj4gPiA+ID4gPiAtLS0g
YS9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvYmVhZ2xlYm9uZS5jb25mDQo+ID4gPiA+ID4g
KysrIGIvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUuY29uZg0KPiA+ID4g
PiA+IEBAIC02LDExICs2LDEwIEBAIFBSRUZFUlJFRF9QUk9WSURFUl92aXJ0dWFsL3hzZXJ2ZXIg
Pz0gInhzZXJ2ZXIteG9yZyINCj4gPiA+ID4gPiAgWFNFUlZFUiA/PSAieHNlcnZlci14b3JnIFwN
Cj4gPiA+ID4gPiAgICAgICAgICAgICB4Zjg2LWlucHV0LWV2ZGV2IFwNCj4gPiA+ID4gPiAgICAg
ICAgICAgICB4Zjg2LWlucHV0LW1vdXNlIFwNCj4gPiA+ID4gPiAtICAgICAgICAgICB4Zjg2LXZp
ZGVvLW9tYXBmYiBcDQo+ID4gPiA+ID4gKyAgICAgICAgICAgeGY4Ni12aWRlby1mYmRldiBcDQo+
ID4gPiA+ID4gICAgICAgICAgICAgeGY4Ni1pbnB1dC1rZXlib2FyZCINCj4gPiA+ID4gPiAgDQo+
ID4gPiA+ID4gLSMgU2hpcCBhbGwga2VybmVsIG1vZHVsZXMgYnkgZGVmYXVsdA0KPiA+ID4gPiA+
IC1NQUNISU5FX0VYVFJBX1JSRUNPTU1FTkRTID0gIiBrZXJuZWwtbW9kdWxlcyINCj4gPiA+ID4g
PiArTUFDSElORV9FWFRSQV9SUkVDT01NRU5EUyA9ICIga2VybmVsLW1vZHVsZXMga2VybmVsLWRl
dmljZXRyZWUiDQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICBFWFRSQV9JTUFHRURFUEVORFMgKz0g
InUtYm9vdCINCj4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gQEAgLTIwLDEzICsxOSwxNCBAQCBpbmNs
dWRlIGNvbmYvbWFjaGluZS9pbmNsdWRlL3R1bmUtY29ydGV4YTguaW5jDQo+ID4gPiA+ID4gIElN
QUdFX0ZTVFlQRVMgKz0gInRhci5iejIgamZmczIiDQo+ID4gPiA+ID4gIEVYVFJBX0lNQUdFQ01E
X2pmZnMyID0gIi1sbnAgIg0KPiA+ID4gPiA+ICANCj4gPiA+ID4gPiAtU0VSSUFMX0NPTlNPTEUg
PSAiMTE1MjAwIHR0eU8yIg0KPiA+ID4gPiA+ICtTRVJJQUxfQ09OU09MRSA9ICIxMTUyMDAgdHR5
TzAiDQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICBQUkVGRVJSRURfUFJPVklERVJfdmlydHVhbC9r
ZXJuZWwgPz0gImxpbnV4LXlvY3RvIg0KPiA+ID4gPiA+ICBQUkVGRVJSRURfVkVSU0lPTl9saW51
eC15b2N0byA/PSAiMy4xNCUiDQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+IC1LRVJORUxfSU1BR0VU
WVBFID0gInpJbWFnZSINCj4gPiA+ID4gPiArS0VSTkVMX0lNQUdFVFlQRSA9ICJ1SW1hZ2UiDQo+
ID4gPiA+ID4gIEtFUk5FTF9ERVZJQ0VUUkVFID0gImFtMzM1eC1ib25lLmR0YiBhbTMzNXgtYm9u
ZWJsYWNrLmR0YiINCj4gPiA+ID4gPiArS0VSTkVMX0VYVFJBX0FSR1MgKz0gIkxPQURBRERSPSR7
VUJPT1RfRU5UUllQT0lOVH0iDQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICBTUExfQklOQVJZID0g
Ik1MTyINCj4gPiA+ID4gPiAgVUJPT1RfU1VGRklYID0gImltZyINCj4gPiA+ID4gPiAtLSANCj4g
PiA+ID4gPiAxLjkuMQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+IA0KPiA+IA0KDQo=

