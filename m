Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73E83E0027E
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 16:39:13 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Oct 2012 16:39:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="155285299"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Oct 2012 16:39:12 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.223]) with mapi id
	14.01.0355.002; Thu, 11 Oct 2012 16:39:11 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH 2/5] crownbay.conf: specify the 8.0.4 version
	as preferred version of mesa-dri
Thread-Index: AQHNpmsEn7tdN8qRbUGwV5alcKA1mJeyuo4AgABu8SCAAaD0gP//+8Tw
Date: Thu, 11 Oct 2012 23:39:10 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C15731D0E@ORSMSX106.amr.corp.intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
	<CAJTo0LYmbD=HJEECJC7usk7A7tLwDxnrFm-pxUoRo2=qyKGyvQ@mail.gmail.com>
	<ADD6A3980E8C39419A432FF422031B4C1573164F@ORSMSX106.amr.corp.intel.com>
	<CAJTo0LaA9FMThnZpb+F3T8d_XfUqFW55BXUns57jW92Phi_wGw@mail.gmail.com>
In-Reply-To: <CAJTo0LaA9FMThnZpb+F3T8d_XfUqFW55BXUns57jW92Phi_wGw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Thu, 11 Oct 2012 23:39:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVydG9uLCBSb3NzIFtt
YWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBUaHVyc2RheSwgT2N0b2JlciAx
MSwgMjAxMiA5OjU0IEFNDQo+IFRvOiBLYW1ibGUsIE5pdGluIEENCj4gQ2M6IHlvY3RvQHlvY3Rv
cHJvamVjdC5vcmc7IFphbnVzc2ksIFRvbTsgSGFydCwgRGFycmVuDQo+IFN1YmplY3Q6IFJlOiBb
eW9jdG9dIFtQQVRDSCAyLzVdIGNyb3duYmF5LmNvbmY6IHNwZWNpZnkgdGhlIDguMC40IHZlcnNp
b24gYXMNCj4gcHJlZmVycmVkIHZlcnNpb24gb2YgbWVzYS1kcmkNCj4gDQo+IE9uIDExIE9jdG9i
ZXIgMjAxMiAwMDoxMCwgS2FtYmxlLCBOaXRpbiBBIDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+
DQo+IHdyb3RlOg0KPiA+ICAgIFNvIGZhciBJIGhhdmUgdGVzdGVkIHdpdGggZ2x4Z2VhcnMgYW5k
IGdseGluZm8gd2l0aCB0aGUgOC4wLjQgdmVyc2lvbiBvZg0KPiBtZXNhLWRyaS4gQW5kIEkgZGlk
IG5vdCBmaW5kIGFueSBpc3N1ZXMuIEFuZCBUb20gaGFzIGJlZW4gdGVzdGluZyB0aGUgc2FtZQ0K
PiB3YXkgc28gZmFyIHdpdGhvdXQgYW55IGNvbXBsYWludHMuIElmIHRoZXJlIGlzIHNvbWV0aGlu
ZyB3aGljaCBjYW4gaGVscA0KPiB0aGluZ3MgdGVzdCBmdXJ0aGVyLCBpdCB3b3VsZCBiZSBuaWNl
IHRvIGFkZCBpdCB0byB0aGUgcG9reSB0cmVlOyBzbyB0aGF0IGl0IGNhbg0KPiBiZWNvbWUgcGFy
dCBvZiBzdGFuZGFyZCB0ZXN0cywgYW5kIFFBIGFsc28gY2FuIHVzZSBpdC4NCj4gDQo+IEEgc2xp
Z2h0bHkgYmV0dGVyIHRlc3QgdGhhbiBnbHhnZWFycyB0aGF0IGlzIGluIG9lLWNvcmUgaXMgaW4g
bGliY2x1dHRlci1nbHgtMS4wLQ0KPiBleGFtcGxlcy4gIFJ1biAidGVzdC1pbnRlcmFjdGl2ZSB0
ZXN0X2NhaXJvX2Zsb3dlcnMiIGluIGEgdGVybWluYWwsIHlvdQ0KPiBzaG91bGQgZ2V0IGZsb3dl
cnMgZmFsbGluZyBkb3duIHRoZSBzY3JlZW4uDQo+IA0KDQoNCkhpIFJvc3MsDQogICBJIGFtIG5v
dCBmaW5kaW5nIHRoaXMgcmVjaXBlIGluIHRoZSBwb2t5IG1hc3Rlci4NCg0KTml0aW4NCg0KDQoN
Cj4gKG9uIGNkdCwgdGhpcyByZXN1bHRzIGluIGEgUFZSIGRyaXZlciBlcnJvciAtICMzMjgwKQ0K
PiANCj4gUm9zcw0K

