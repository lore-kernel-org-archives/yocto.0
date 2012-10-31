Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A18E0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 08:53:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 31 Oct 2012 08:53:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,687,1344236400"; d="scan'208";a="162916195"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Oct 2012 08:53:49 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.140]) with mapi id
	14.01.0355.002; Wed, 31 Oct 2012 08:53:48 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 0/4] misc fixes for 1.3 meta-intel release
Thread-Index: AQHNtw7nbBzCMjJM30i7KDgF6QZRHJfT/QQA//+T0tA=
Date: Wed, 31 Oct 2012 15:53:47 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D910EF9@ORSMSX106.amr.corp.intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<1351696672.1762.8.camel@empanada>
In-Reply-To: <1351696672.1762.8.camel@empanada>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/4] misc fixes for 1.3 meta-intel release
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
X-List-Received-Date: Wed, 31 Oct 2012 15:53:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmFudXNzaSwgVG9tDQo+
IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciAzMSwgMjAxMiA4OjE4IEFNDQo+IFRvOiBLYW1ibGUs
IE5pdGluIEENCj4gQ2M6IEhhcnQsIERhcnJlbjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgQnVy
dG9uLCBSb3NzDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMC80XSBtaXNjIGZpeGVzIGZvciAxLjMg
bWV0YS1pbnRlbCByZWxlYXNlDQo+IA0KPiANCj4gT24gVHVlLCAyMDEyLTEwLTMwIGF0IDE5OjIz
IC0wNzAwLCBuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20gd3JvdGU6DQo+ID4gRnJvbTogTml0aW4g
QSBLYW1ibGUgPG5pdGluLmEua2FtYmxlQGludGVsLmNvbT4NCj4gPg0KPiA+IFRlc3RlZCB0aGVz
ZSBvbiBhbGwgQlNQcyBpIG1haW50YWluIHdpdGggcmVzdWx0cyBhcyBleHBlY3RlZC4NCj4gPiBB
bHNvIHRoaXMgdGVzdGluZyBBY2tzIHRoZSBrZXJuZWwgU1JDUkVWIGJ1bXBzIGRvbmUgYnkgVG9t
IHRvZGF5Lg0KPiA+DQo+IA0KPiBJJ3ZlIHZlcmlmaWVkIHRoaXMgd29ya3MgZmluZSBvbiBjcm93
bmJheSBhbmQgeW91J3ZlIHZlcmlmaWVkIG9uIHN1Z2FyYmF5IGFuZA0KPiBjaGllZnJpdmVyLCBj
b3JyZWN0Pw0KDQpDb3JyZWN0LiBJIHRlc3RlZCB0aGlzIHdpdGggYWxsIEJTUHMgSSBhbSBtYWlu
dGFpbmluZy4NCj4gDQo+IFRoYXQganVzdCBsZWF2ZXMgY2VkYXJ0cmFpbCBiZWZvcmUgd2UgY2Fu
IHB1bGwgdGhpcyBpbi4NCg0KQXMgUm9zcyBtZW50aW9uZWQgd2UgY2FuIHVwZGF0ZSB0aGUgbGli
dmEtaW50ZWwtZHJpdmVyIGZ1cnRoZXIgdG8gMS4wLjE4LiBJIHdpbGwgdHJ5IHRoYXQgaGVyZSB0
b2RheS4gRXZlbiBpZiB3ZSBkb24ndCBnZXQgdGhhdCB3ZSBzdGlsbCBoYXZlIGEgd29ya2luZyB0
cmVlIGZvciBCU1BzIG5vdy4NCg0KTml0aW4NCg0KPiANCj4gVG9tDQo+IA0KPiA+IFRoYW5rcywN
Cj4gPiBOaXRpbg0KPiA+DQo+ID4NCj4gPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29t
bWl0DQo+IDc2ZDI5NDIwODdkNzU2M2FlNDJmMGJlYTZkOTc0NjBlZTI1NjFmM2U6DQo+ID4NCj4g
PiAgIGNyeXN0YWxmb3Jlc3Q6IFVwZGF0ZSB0aGUgUkVBRE1FIEluc3RydWN0aW9ucy4gKDIwMTIt
MTAtMzAgMDg6NDc6NDANCj4gPiAtMDUwMCkNCj4gPg0KPiA+IGFyZSBhdmFpbGFibGUgaW4gdGhl
IGdpdCByZXBvc2l0b3J5IGF0Og0KPiA+ICAgZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvbWV0
YS1pbnRlbC1jb250cmliIG5pdGluL21pc2MNCj4gPg0KPiA+IGh0dHA6Ly9naXQueW9jdG9wcm9q
ZWN0Lm9yZy9jZ2l0LmNnaS9tZXRhLWludGVsLWNvbnRyaWIvbG9nLz9oPW5pdGluL20NCj4gPiBp
c2MNCj4gPg0KPiA+IE5pdGluIEEgS2FtYmxlICgzKToNCj4gPiAgIGxpYnZhOiB1cGRhdGUgdG8g
dGhlIGxhdGVzdCB2ZXJzaW9uDQo+ID4gICBsaWJ2YS1pbnRlbC1kcml2ZXI6IHVwZGF0ZSB0byB0
aGUgbGF0ZXN0IHZlcnNpb24NCj4gPiAgIG1lc2EtZHJpLmJiYXBwZW5kOiBhdm9pZCBjb25mbGlj
dCB3aXRoIGVtZ2QtZHJpdmVyLWJpbg0KPiA+DQo+ID4gUm9zcyBCdXJ0b24gKDEpOg0KPiA+ICAg
bGlidmE6IHJlbW92ZSByZWR1bmRhbnQgbGlidmEgMS4wLjEyDQo+ID4NCj4gPiAgLi4uL3JlY2lw
ZXMtZ3JhcGhpY3MvbWVzYS9tZXNhLWRyaV84LjAuNC5iYmFwcGVuZCAgfCAgIDI3DQo+ICsrKysr
KysrKysrKysrKysrLS0tDQo+ID4gIC4uLi9saWJ2YS9saWJ2YS1pbnRlbC1kcml2ZXIuaW5jICAg
ICAgICAgICAgICAgICAgIHwgICAgMiArLQ0KPiA+ICAuLi4vbGlidmEvbGlidmEtaW50ZWwtZHJp
dmVyXzEuMC4xNS5iYiAgICAgICAgICAgICB8ICAgIDggLS0tLS0tDQo+ID4gIC4uLi9saWJ2YS9s
aWJ2YS1pbnRlbC1kcml2ZXJfMS4wLjE3LmJiICAgICAgICAgICAgIHwgICAgOSArKysrKysNCj4g
PiAgY29tbW9uL3JlY2lwZXMtbXVsdGltZWRpYS9saWJ2YS9saWJ2YV8xLjAuMTIuYmIgICAgfCAg
ICA4IC0tLS0tLQ0KPiA+ICBjb21tb24vcmVjaXBlcy1tdWx0aW1lZGlhL2xpYnZhL2xpYnZhXzEu
MC4xNS5iYiAgICB8ICAgIDggLS0tLS0tDQo+ID4gIGNvbW1vbi9yZWNpcGVzLW11bHRpbWVkaWEv
bGlidmEvbGlidmFfMS4wLjE2LmJiICAgIHwgICAgOCArKysrKysNCj4gPiAgNyBmaWxlcyBjaGFu
Z2VkLCA0MSBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkgIGRlbGV0ZSBtb2RlDQo+ID4g
MTAwNjQ0IGNvbW1vbi9yZWNpcGVzLW11bHRpbWVkaWEvbGlidmEvbGlidmEtaW50ZWwtZHJpdmVy
XzEuMC4xNS5iYg0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiBjb21tb24vcmVjaXBlcy1t
dWx0aW1lZGlhL2xpYnZhL2xpYnZhLWludGVsLWRyaXZlcl8xLjAuMTcuYmINCj4gPiAgZGVsZXRl
IG1vZGUgMTAwNjQ0IGNvbW1vbi9yZWNpcGVzLW11bHRpbWVkaWEvbGlidmEvbGlidmFfMS4wLjEy
LmJiDQo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBjb21tb24vcmVjaXBlcy1tdWx0aW1lZGlhL2xp
YnZhL2xpYnZhXzEuMC4xNS5iYg0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgY29tbW9uL3JlY2lw
ZXMtbXVsdGltZWRpYS9saWJ2YS9saWJ2YV8xLjAuMTYuYmINCj4gPg0KPiANCg0K

