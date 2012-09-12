Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6166BE0049D
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 13:14:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Sep 2012 13:13:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,411,1344236400"; d="scan'208";a="202444785"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 12 Sep 2012 13:14:03 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 12 Sep 2012 13:14:02 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.67]) with mapi id
	14.01.0355.002; Wed, 12 Sep 2012 13:14:02 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 0/1] Fix X issue on crownbay
Thread-Index: AQHNjJT+uO1HjNK9Y0mWQPcnr9R7mZeEtdOAgAI1QYCAAEG1QA==
Date: Wed, 12 Sep 2012 20:14:01 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C15726661@ORSMSX106.amr.corp.intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<1347320069.25993.16.camel@empanada> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] Fix X issue on crownbay
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
X-List-Received-Date: Wed, 12 Sep 2012 20:14:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RllJIFdoaWxlIHRlc3Rpbmcgb24gdGhlIGZpc2hyaXZlciBwbGF0Zm9ybSwgSSBhbHNvIGZpbmQg
dGhhdCB0aGVyZSBpcyBubyBYIGxvZywgYW5kIGxvb2tpbmcgZnVydGhlciBmb3VuZCBvdXQgdGhh
dCB4b3JnIGV4ZWN1dGFibGUgaXMgbm90IG9uIHRoZSBpbWFnZS4gSSB0aGluayB0aGUgc2FtZSB0
aGluZyBpcyBhbHNvIGhhcHBlbmluZyBvbiBjcm93bmJheS4NCg0KTml0aW4NCg0KDQoNCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FtYmxlLCBOaXRpbiBBDQo+IFNlbnQ6
IFdlZG5lc2RheSwgU2VwdGVtYmVyIDEyLCAyMDEyIDk6MTggQU0NCj4gVG86IFphbnVzc2ksIFRv
bQ0KPiBDYzogSGFydCwgRGFycmVuOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6
IFJFOiBbUEFUQ0ggMC8xXSBGaXggWCBpc3N1ZSBvbiBjcm93bmJheQ0KPiANCj4gSGkgVG9tLA0K
PiAgIFRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoZSBtYXR0ZXIuIEkgd2lsbCB0cnkgdG8gcmVw
cm9kdWNlIHRoZSBpc3N1ZSB5b3UgYXJlDQo+IHNlZWluZyB3aXRoIG1hc3Rlci4gQW5kIHNlbmQg
YW5vdGhlciBwdWxsIHJlcXVlc3Qgd2l0aCBhbGwgdGhlIGZpeGVzLg0KPiANCj4gUmVnYXJkcywN
Cj4gTml0aW4NCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJv
bTogWmFudXNzaSwgVG9tDQo+ID4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMTAsIDIwMTIgNDoz
NCBQTQ0KPiA+IFRvOiBLYW1ibGUsIE5pdGluIEENCj4gPiBDYzogSGFydCwgRGFycmVuOyB5b2N0
b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCAwLzFdIEZpeCBYIGlz
c3VlIG9uIGNyb3duYmF5DQo+ID4NCj4gPiBPbiBXZWQsIDIwMTItMDktMDUgYXQgMTc6NTkgLTA3
MDAsIG5pdGluLmEua2FtYmxlQGludGVsLmNvbSB3cm90ZToNCj4gPiA+IEZyb206IE5pdGluIEEg
S2FtYmxlIDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+DQo+ID4gPg0KPiA+ID4gVGhlIGZvbGxv
d2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdA0KPiA+IDY2YjUxNmYzZDNhMjg3ZWVjYmY4ODA0YjIy
MjFiZmMyN2UzNmRiNjM6DQo+ID4gPg0KPiA+ID4gICBSRUFETUU6IGFkZCBpbmZvIGV4cGxhaW5p
bmcgbWV0YS10bGsgbGF5ZXIgcHVycG9zZSAoMjAxMi0wOS0wNg0KPiA+ID4gMTA6MzY6MDIgLTA1
MDApDQo+ID4gPg0KPiA+ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgZ2l0IHJlcG9zaXRvcnkgYXQ6
DQo+ID4gPiAgIGdpdDovL2dpdC55b2N0b3Byb2plY3Qub3JnL21ldGEtaW50ZWwtY29udHJpYiBu
aXRpbi93b3JrDQo+ID4gPg0KPiA+ID4gaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQu
Y2dpL21ldGEtaW50ZWwtY29udHJpYi9sb2cvP2g9bml0aW4NCj4gPiA+IC93DQo+ID4gPiBvcmsN
Cj4gPiA+DQo+ID4NCj4gPiBJIGJ1aWx0IGFuZCB0cmllZCB0aGlzLCBidXQgaXQgc3RpbGwgZGlk
bid0IGJvb3QgaW50byBYLCBhbmQgbm93DQo+ID4gdGhlcmUncyBub3QgZXZlbiBhbiBYb3JnLmxv
ZyB0byBsb29rIGF0Og0KPiA+DQo+ID4gcm9vdEBjcm93bmJheTovdmFyL2xvZyMgbHMgLWFsDQo+
ID4gZHJ3eHIteHIteCAgICAyIHJvb3QgICAgIHJvb3QgICAgICAgICAgICA4MCBTZXAgMTAgMjA6
MTUgLg0KPiA+IGRyd3hyd3hyd3QgICAgNyByb290ICAgICByb290ICAgICAgICAgICAxNDAgSmFu
ICA2ICAyMDA5IC4uDQo+ID4gLXJ3LXItLXItLSAgICAxIHJvb3QgICAgIHJvb3QgICAgICAgICA3
ODQyOSBTZXAgMTAgMjA6MTcgbWVzc2FnZXMNCj4gPiAtcnctcnctci0tICAgIDEgcm9vdCAgICAg
cm9vdCAgICAgICAgICA0MjI0IFNlcCAxMCAyMDoxNyB3dG1wDQo+ID4NCj4gPiBJIGFzc3VtZSB0
aGlzIGlzIGEgZGlmZmVyZW50IFggcHJvYmxlbSByZWxhdGVkIHRvIHJlY2VudCBjaGFuZ2VzIGlu
IG1hdGVyLg0KPiA+IENhbiB5b3UgdXBkYXRlIHRoZSBidWcgcmVwb3J0IHdpdGggdGhlIGNvbW1p
dHMgdGhhdCB5b3UgdGVzdGVkIHdpdGggc28NCj4gPiBJIGNhbiB2ZXJpZnkgdGhhdCB5b3VyIHBh
dGNoIGF0IGxlYXN0IHdvcmtzPw0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+DQo+ID4gVG9tDQo+ID4N
Cj4gPg0KPiA+DQo+ID4gPiBOaXRpbiBBIEthbWJsZSAoMSk6DQo+ID4gPiAgIGVtZ2QtZHJpdmVy
LWJpbjogRml4IHBhY2thZ2UgbmFtaW5nIGlzc3VlDQo+ID4gPg0KPiA+ID4gIC4uLi94b3JnLXhz
ZXJ2ZXIvZW1nZC1kcml2ZXItYmluXzEuMTQuYmIgICAgICAgICAgIHwgICAgOCArKysrKysrLQ0K
PiA+ID4gIDEgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQ0K
PiA+ID4NCj4gPg0KDQo=

