Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D195E00294
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 09:49:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Nov 2012 09:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,693,1344236400"; d="scan'208";a="243012564"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2012 09:49:36 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.82]) with mapi id
	14.01.0355.002; Thu, 1 Nov 2012 09:49:36 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>
Thread-Topic: [Patch v2 0/4] Misc Fixes for meta-intel 1.3 release
Thread-Index: AQHNt/ACDjpgTWRxh0u4y3nMkL6cJZfU6F0AgACH/AD//8FhIA==
Date: Thu, 1 Nov 2012 16:49:35 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D9115B6@ORSMSX106.amr.corp.intel.com>
References: <cover.1351746741.git.nitin.a.kamble@intel.com>
	<50920806.2090401@intel.com> <1351776792.30635.3.camel@empanada>
In-Reply-To: <1351776792.30635.3.camel@empanada>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Patch v2 0/4] Misc Fixes for meta-intel 1.3 release
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
X-List-Received-Date: Thu, 01 Nov 2012 16:49:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmFudXNzaSwgVG9tDQo+
IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAwMSwgMjAxMiA2OjMzIEFNDQo+IFRvOiBIYXJ0LCBE
YXJyZW4NCj4gQ2M6IEthbWJsZSwgTml0aW4gQTsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgQnVy
dG9uLCBSb3NzDQo+IFN1YmplY3Q6IFJlOiBbUGF0Y2ggdjIgMC80XSBNaXNjIEZpeGVzIGZvciBt
ZXRhLWludGVsIDEuMyByZWxlYXNlDQo+IA0KPiBPbiBXZWQsIDIwMTItMTAtMzEgYXQgMjI6MjYg
LTA3MDAsIERhcnJlbiBIYXJ0IHdyb3RlOg0KPiA+IE9uIDEwLzMxLzIwMTIgMTA6MTQgUE0sIG5p
dGluLmEua2FtYmxlQGludGVsLmNvbSB3cm90ZToNCj4gPiA+IEZyb206IE5pdGluIEEgS2FtYmxl
IDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+DQo+ID4gPg0KPiA+ID4gVGhpcyB2MiBwdWxsIHJl
cXVlc3QgaXMgd2l0aCBuZXdlciB2ZXJzaW9uIG9mIGxpYnZhLWludGVsLWRyaXZlci4NCj4gPiA+
IFRoZXNlIGNvbW1pdHMgdGVzdGVkIG9uIEFsbCB0aGUgQlNQcyBJIGFtIG1haW50YWluaW5nIHdp
dGggZXhwZWN0ZWQNCj4gcmVzdWx0cy4NCj4gPiA+DQo+ID4NCj4gPiBOaXRpbiwgZG8gdGhlc2Ug
cGF0Y2hlcyBmaXggYW55IHNwZWNpZmljIGJ1Zz8gU3VjaCBhcyAzMzQ4PyBZb3UNCj4gPiBtZW50
aW9uIGEgY291cGxlLCBidXQgbm90IGNsZWFybHkgdGhhdCB0aGVzZSBwYXRjaGVzIGZpeCB0aGVt
LiBJZiBzbywNCj4gPiBwbGVhc2UNCj4gPiBpbmNsdWRlOg0KPiA+DQo+ID4gRml4ZXMgW1lPQ1RP
ICNYWFhYXQ0KPiA+DQo+ID4gaW4gdGhlIGNvbW1pdCBsb2cgZm9yIHRoZSBhc3NvY2lhdGVkIHBh
dGNoKGVzKS4NCj4gPg0KPiANCj4gVG8gc2F2ZSB0aW1lLCBJJ2xsIGdvIGFoZWFkIGFuZCBhZGQg
dGhhdCB0byB0aG9zZSAyIHBhdGNoZXMgd2hlbiBJIHB1bGwgaXQgaW4uLi4NClRoYW5rcyBUb20s
DQpOaXRpbg0KPiANCj4gVG9tDQo+IA0KPiA+IE90aGVyd2lzZSB0aGlzIGxvb2tzIHRvIGJlIHdo
YXQgd2UgaGF2ZSBkaXNjdXNzZWQuDQo+ID4NCj4gPiBUaGFua3MsDQo+ID4NCj4gPiBEYXJyZW4N
Cj4gPg0KPiA+ID4gVGhhbmtzLA0KPiA+ID4gTml0aW4NCj4gPiA+DQo+ID4gPiBUaGUgZm9sbG93
aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0DQo+IDQzYjJlOWMzNDM2M2FkZTQyNDFhNjBmNjk5YjQ3
MTc5OTI5YzZmYjY6DQo+ID4gPg0KPiA+ID4gICBuNDUwOiBBZGQgV0VCVElUTEUgYW5kIGJvaWxl
cnBsYXRlIFJFQURNRSAoMjAxMi0xMC0zMSAwODo0MDoxNQ0KPiA+ID4gLTA3MDApDQo+ID4gPg0K
PiA+ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgZ2l0IHJlcG9zaXRvcnkgYXQ6DQo+ID4gPiAgIGdp
dDovL2dpdC55b2N0b3Byb2plY3Qub3JnL21ldGEtaW50ZWwtY29udHJpYiBuaXRpbi9taXNjDQo+
ID4gPg0KPiA+ID4gaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQuY2dpL21ldGEtaW50
ZWwtY29udHJpYi9sb2cvP2g9bml0aW4NCj4gPiA+IC9taXNjDQo+ID4gPg0KPiA+ID4gTml0aW4g
QSBLYW1ibGUgKDMpOg0KPiA+ID4gICBsaWJ2YTogdXBkYXRlIHRvIHRoZSBsYXRlc3QgdmVyc2lv
bg0KPiA+ID4gICBsaWJ2YS1pbnRlbC1kcml2ZXI6IHVwZGF0ZSB0byB0aGUgbGF0ZXN0IHZlcnNp
b24NCj4gPiA+ICAgbWVzYS1kcmkuYmJhcHBlbmQ6IGF2b2lkIGNvbmZsaWN0IHdpdGggZW1nZC1k
cml2ZXItYmluDQo+ID4gPg0KPiA+ID4gUm9zcyBCdXJ0b24gKDEpOg0KPiA+ID4gICBsaWJ2YTog
cmVtb3ZlIHJlZHVuZGFudCBsaWJ2YSAxLjAuMTINCj4gPiA+DQo+ID4gPiAgLi4uL3JlY2lwZXMt
Z3JhcGhpY3MvbWVzYS9tZXNhLWRyaV84LjAuNC5iYmFwcGVuZCAgfCAgIDI3DQo+ICsrKysrKysr
KysrKysrKysrLS0tDQo+ID4gPiAgLi4uL2xpYnZhL2xpYnZhLWludGVsLWRyaXZlci5pbmMgICAg
ICAgICAgICAgICAgICAgfCAgICAyICstDQo+ID4gPiAgLi4uL2xpYnZhL2xpYnZhLWludGVsLWRy
aXZlcl8xLjAuMTUuYmIgICAgICAgICAgICAgfCAgICA4IC0tLS0tLQ0KPiA+ID4gIC4uLi9saWJ2
YS9saWJ2YS1pbnRlbC1kcml2ZXJfMS4wLjE4LmJiICAgICAgICAgICAgIHwgICAgOCArKysrKysN
Cj4gPiA+ICBjb21tb24vcmVjaXBlcy1tdWx0aW1lZGlhL2xpYnZhL2xpYnZhXzEuMC4xMi5iYiAg
ICB8ICAgIDggLS0tLS0tDQo+ID4gPiAgY29tbW9uL3JlY2lwZXMtbXVsdGltZWRpYS9saWJ2YS9s
aWJ2YV8xLjAuMTUuYmIgICAgfCAgICA4IC0tLS0tLQ0KPiA+ID4gIGNvbW1vbi9yZWNpcGVzLW11
bHRpbWVkaWEvbGlidmEvbGlidmFfMS4wLjE2LmJiICAgIHwgICAgOCArKysrKysNCj4gPiA+ICA3
IGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKSAgZGVsZXRl
IG1vZGUNCj4gPiA+IDEwMDY0NCBjb21tb24vcmVjaXBlcy1tdWx0aW1lZGlhL2xpYnZhL2xpYnZh
LWludGVsLWRyaXZlcl8xLjAuMTUuYmINCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiA+
IGNvbW1vbi9yZWNpcGVzLW11bHRpbWVkaWEvbGlidmEvbGlidmEtaW50ZWwtZHJpdmVyXzEuMC4x
OC5iYg0KPiA+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBjb21tb24vcmVjaXBlcy1tdWx0aW1lZGlh
L2xpYnZhL2xpYnZhXzEuMC4xMi5iYg0KPiA+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBjb21tb24v
cmVjaXBlcy1tdWx0aW1lZGlhL2xpYnZhL2xpYnZhXzEuMC4xNS5iYg0KPiA+ID4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBjb21tb24vcmVjaXBlcy1tdWx0aW1lZGlhL2xpYnZhL2xpYnZhXzEuMC4xNi5i
Yg0KPiA+ID4NCj4gPg0KPiANCg0K

