Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E10ECE002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 09:18:34 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Sep 2012 09:18:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,410,1344236400"; d="scan'208";a="144268700"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Sep 2012 09:18:33 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 12 Sep 2012 09:18:31 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.67]) with mapi id
	14.01.0355.002; Wed, 12 Sep 2012 09:18:31 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 0/1] Fix X issue on crownbay
Thread-Index: AQHNjJT+uO1HjNK9Y0mWQPcnr9R7mZeEtdOAgAI1QYA=
Date: Wed, 12 Sep 2012 16:18:30 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C157264D3@ORSMSX106.amr.corp.intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<1347320069.25993.16.camel@empanada>
In-Reply-To: <1347320069.25993.16.camel@empanada>
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
X-List-Received-Date: Wed, 12 Sep 2012 16:18:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVG9tLA0KICBUaGFua3MgZm9yIGxvb2tpbmcgaW50byB0aGUgbWF0dGVyLiBJIHdpbGwgdHJ5
IHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUgeW91IGFyZSBzZWVpbmcgd2l0aCBtYXN0ZXIuIEFuZCBz
ZW5kIGFub3RoZXIgcHVsbCByZXF1ZXN0IHdpdGggYWxsIHRoZSBmaXhlcy4NCg0KUmVnYXJkcywN
Ck5pdGluDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBaYW51c3Np
LCBUb20NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMTAsIDIwMTIgNDozNCBQTQ0KPiBUbzog
S2FtYmxlLCBOaXRpbiBBDQo+IENjOiBIYXJ0LCBEYXJyZW47IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAwLzFdIEZpeCBYIGlzc3VlIG9uIGNyb3duYmF5DQo+
IA0KPiBPbiBXZWQsIDIwMTItMDktMDUgYXQgMTc6NTkgLTA3MDAsIG5pdGluLmEua2FtYmxlQGlu
dGVsLmNvbSB3cm90ZToNCj4gPiBGcm9tOiBOaXRpbiBBIEthbWJsZSA8bml0aW4uYS5rYW1ibGVA
aW50ZWwuY29tPg0KPiA+DQo+ID4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdA0K
PiA2NmI1MTZmM2QzYTI4N2VlY2JmODgwNGIyMjIxYmZjMjdlMzZkYjYzOg0KPiA+DQo+ID4gICBS
RUFETUU6IGFkZCBpbmZvIGV4cGxhaW5pbmcgbWV0YS10bGsgbGF5ZXIgcHVycG9zZSAoMjAxMi0w
OS0wNg0KPiA+IDEwOjM2OjAyIC0wNTAwKQ0KPiA+DQo+ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUg
Z2l0IHJlcG9zaXRvcnkgYXQ6DQo+ID4gICBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9tZXRh
LWludGVsLWNvbnRyaWIgbml0aW4vd29yaw0KPiA+DQo+ID4gaHR0cDovL2dpdC55b2N0b3Byb2pl
Y3Qub3JnL2NnaXQuY2dpL21ldGEtaW50ZWwtY29udHJpYi9sb2cvP2g9bml0aW4vdw0KPiA+IG9y
aw0KPiA+DQo+IA0KPiBJIGJ1aWx0IGFuZCB0cmllZCB0aGlzLCBidXQgaXQgc3RpbGwgZGlkbid0
IGJvb3QgaW50byBYLCBhbmQgbm93IHRoZXJlJ3Mgbm90IGV2ZW4gYW4NCj4gWG9yZy5sb2cgdG8g
bG9vayBhdDoNCj4gDQo+IHJvb3RAY3Jvd25iYXk6L3Zhci9sb2cjIGxzIC1hbA0KPiBkcnd4ci14
ci14ICAgIDIgcm9vdCAgICAgcm9vdCAgICAgICAgICAgIDgwIFNlcCAxMCAyMDoxNSAuDQo+IGRy
d3hyd3hyd3QgICAgNyByb290ICAgICByb290ICAgICAgICAgICAxNDAgSmFuICA2ICAyMDA5IC4u
DQo+IC1ydy1yLS1yLS0gICAgMSByb290ICAgICByb290ICAgICAgICAgNzg0MjkgU2VwIDEwIDIw
OjE3IG1lc3NhZ2VzDQo+IC1ydy1ydy1yLS0gICAgMSByb290ICAgICByb290ICAgICAgICAgIDQy
MjQgU2VwIDEwIDIwOjE3IHd0bXANCj4gDQo+IEkgYXNzdW1lIHRoaXMgaXMgYSBkaWZmZXJlbnQg
WCBwcm9ibGVtIHJlbGF0ZWQgdG8gcmVjZW50IGNoYW5nZXMgaW4gbWF0ZXIuDQo+IENhbiB5b3Ug
dXBkYXRlIHRoZSBidWcgcmVwb3J0IHdpdGggdGhlIGNvbW1pdHMgdGhhdCB5b3UgdGVzdGVkIHdp
dGggc28gSQ0KPiBjYW4gdmVyaWZ5IHRoYXQgeW91ciBwYXRjaCBhdCBsZWFzdCB3b3Jrcz8NCj4g
DQo+IFRoYW5rcywNCj4gDQo+IFRvbQ0KPiANCj4gDQo+IA0KPiA+IE5pdGluIEEgS2FtYmxlICgx
KToNCj4gPiAgIGVtZ2QtZHJpdmVyLWJpbjogRml4IHBhY2thZ2UgbmFtaW5nIGlzc3VlDQo+ID4N
Cj4gPiAgLi4uL3hvcmcteHNlcnZlci9lbWdkLWRyaXZlci1iaW5fMS4xNC5iYiAgICAgICAgICAg
fCAgICA4ICsrKysrKystDQo+ID4gIDEgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9ucygtKQ0KPiA+DQo+IA0KDQo=

