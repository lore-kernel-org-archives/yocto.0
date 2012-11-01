Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AA05E003D7
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 11:39:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Nov 2012 11:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,695,1344236400"; d="scan'208";a="214097517"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 01 Nov 2012 11:39:54 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.85]) with mapi id
	14.01.0355.002; Thu, 1 Nov 2012 11:39:53 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH 4/4] mesa-dri.bbappend: avoid conflict with
	emgd-driver-bin
Thread-Index: AQHNtw7otGFSEDPYSUG3knMjYokMjpfUHYoAgAEx+wA=
Date: Thu, 1 Nov 2012 18:39:52 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D911626@ORSMSX106.amr.corp.intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<4cd2ea50375322f08a3d2eedf480b3fb13c11ef5.1351650062.git.nitin.a.kamble@intel.com>
	<CAJTo0LZ68KNZUiDoJGKVskUDW1ezstn2bUS6TB1MFq5x4EuW4w@mail.gmail.com>
In-Reply-To: <CAJTo0LZ68KNZUiDoJGKVskUDW1ezstn2bUS6TB1MFq5x4EuW4w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 4/4] mesa-dri.bbappend: avoid conflict with emgd-driver-bin
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
X-List-Received-Date: Thu, 01 Nov 2012 18:39:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVydG9uLCBSb3NzIFtt
YWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIg
MzEsIDIwMTIgMTA6MTQgQU0NCj4gVG86IEthbWJsZSwgTml0aW4gQQ0KPiBDYzogWmFudXNzaSwg
VG9tOyBIYXJ0LCBEYXJyZW47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6
IFt5b2N0b10gW1BBVENIIDQvNF0gbWVzYS1kcmkuYmJhcHBlbmQ6IGF2b2lkIGNvbmZsaWN0IHdp
dGgNCj4gZW1nZC1kcml2ZXItYmluDQo+IA0KPiBIaSwNCj4gDQo+IE9uIDMxIE9jdG9iZXIgMjAx
MiAwMjoyMywgIDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEV4dGVuZCB0
aGUgbWVzYS1kcmkgcmVjaXBlIGZyb20gb2Vjb3JlIHRvIGF2b2lkIGNvbmZsaWN0IHdpdGggZmls
ZXMNCj4gPiBnZW5lcmF0ZWQgYnkgZW1nZC1kcml2ZXItYmluIHJlY2lwZS4NCj4gDQo+IFRoZSBz
YW1lIHByb2JsZW0gaGFwcGVucyB3aXRoIGNkdi1wdnItZHJpdmVyLCByaWdodD8NClllcywgSSBo
YXZlIGhlYXJkIGFib3V0IHRoZSBpc3N1ZSBmcm9tIFJhaHVsLg0KDQo+IA0KPiBJdCB0dXJucyBv
dXQgdGhhdCB0aGUgYmluYXJ5IERSSSBkcml2ZXJzIHRoZXNlIGNsb3NlZCBkcml2ZXIgcGFja2Fn
ZXMgaW5zdGFsbCBhcmUNCj4gdmVyeSBkZXBlbmRlbnQgb24gdGhlIE1lc2EgLSBzbyBpdCdzIGxp
a2VseSB0aGF0IHRoZXkganVzdCBkb24ndCB3b3JrIHdpdGggb3VyDQo+IE1lc2EgOC4wLjQuDQo+
IA0KPiBjZHYtcHZyLWRyaXZlciBuZWVkcyBNZXNhIDcuMTEuICBJIGNhbid0IHNlZSBhbnl0aGlu
ZyBpbiB0aGUgZG9jdW1lbnRhdGlvbg0KPiBhYm91dCB3aGF0IHZlcnNpb24gb2YgTWVzYSBFTUdE
IGV4cGVjdHMuDQoNCkVNR0QgdGFyYmFsbCByZWxlYXNlIG5vdGVzIGRvIG1lbnRpb24gTWVzYSB2
ZXJzaW9uIGRlcGVuZGVuY2llcy4gV2UgaGF2ZSBub3Qgc2VlbiBpc3N1ZXMgd2l0aCB0aGUgbmV3
ZXIgdmVyc2lvbiBvZiBtZXNhLCBzbyB3ZW50IGFoZWFkIHdpdGggdGhlIG5ld2VyIHZlcnNpb25z
IG9mIE1lc2EsIHdoaWxlIHBpbm5pbmcgdGhlIE1lc2EgdmVyc2lvbiBpbiB0aGUgbWFjaGluZS5j
b25mLg0KDQoNCj4gDQo+IEkgdGhpbmsgd2UndmUgdHdvIG9wdGlvbnM6IGVpdGhlciBkb24ndCBz
aGlwIGxpYkdMIGluIG91ciBCU1AgcGFja2FnZXMsIG9yIHNoaXANCj4gYSB2ZXJzaW9uIHRoYXQg
c2hvdWxkIGFjdHVhbGx5IHdvcmsuICBUaGlzIG1lYW5zIHNoaXBwaW5nIGEgbWVzYSByZWNpcGUg
aW4NCj4gbWV0YS1pbnRlbCBzbyB0aGF0IGl0J3MgdW5kZXIgbWV0YS1pbnRlbCdzIGNvbnRyb2ws
IHdpdGggdGhlIHVzZWZ1bCBzaWRlIGVmZmVjdA0KPiB0aGF0IHdlIGNhbiBtYWtlIGl0IGp1c3Qg
YnVpbGQgbGliR0wgYW5kIG5vdGhpbmcgZWxzZS4NCg0KVGhlc2UgYXJlIHRoZSByaWdodCBvcHRp
b25zIElNTy4gV2UgY2FuIGFsc28gZ2V0IGNvbXBsZXRlIG1lc2EgcmVjaXBlIGluIG1ldGEtaW50
ZWwsIHdoaWNoIHdpbGwgb3ZlcnJpZGUgdGhlIG9uZSBmcm9tIG9lY29yZSBsYXllciBjb21wbGV0
ZWx5LiBUaGVuIHdlIGhhdmUgZnVsbCBjb250cm9sIG9mIG1lc2EgZnJvbSBtZXRhLWludGVsIGxh
eWVycy4gQ3VycmVudGx5IGV4dGVuZGluZyB0aGUgb2Vjb3JlIG1lc2EgcmVjaXBlIGZyb20gbWV0
YS1pbnRlbCBpcyBub3QgdmVyeSBlbGVnYW50LCBidXQgYXQgbGVhc3QgaXQgaXMgd29ya2luZyBh
cyB3ZSB3YW50LiBBbHNvIG1ha2luZyBmZXcgY2hhbmdlcyB0byB0aGUgb2Vjb3JlIG1lc2EgcmVj
aXBlIHdpbGwgbWFrZSBpdCBlYXNpZXIgdG8gZXh0ZW5kIGl0IGZyb20gb3RoZXIgbGF5ZXJzLiAN
Cg0KTml0aW4NCg0KDQo+IA0KPiBSb3NzDQo=

