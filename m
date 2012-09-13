Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5171E0142C
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 12:56:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Sep 2012 12:55:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,418,1344236400"; d="scan'208";a="203233268"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 13 Sep 2012 12:56:01 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.89]) with mapi id
	14.01.0355.002; Thu, 13 Sep 2012 12:56:01 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH 0/1] Fix X issue on crownbay
Thread-Index: AQHNjJT+uO1HjNK9Y0mWQPcnr9R7mZeEtdOAgAI1QYCAAEG1QIAAfeqAgAEOzdA=
Date: Thu, 13 Sep 2012 19:56:00 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C15726C9A@ORSMSX106.amr.corp.intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<1347320069.25993.16.camel@empanada>
	<ADD6A3980E8C39419A432FF422031B4C15726661@ORSMSX106.amr.corp.intel.com>
	<CAJTo0LZLWBGsNyDcOKNj+cSWJTkazt51HWTOs6k2LvXQENY7tA@mail.gmail.com>
In-Reply-To: <CAJTo0LZLWBGsNyDcOKNj+cSWJTkazt51HWTOs6k2LvXQENY7tA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
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
X-List-Received-Date: Thu, 13 Sep 2012 19:56:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9zcywNCiAgTG9va2luZyBhdCB0aGUgYnVnLCBJIGFtIHRyeWluZyB3aXRoIHRoZSBsYXRlc3Qg
Y29tbWl0cyBub3cuIFdoZW4gaXQgZmFpbGVkLCBJIGxvb2tlZCBhdCB0aGUgYnVpbGQgYXJlYSwg
YW5kIGZvdW5kIHRoYXQgdGhlIHhvcmcteHNlcnZlciBwYWNrYWdlIHdhcyBidWlsdCBmaW5lLiBJ
IHRoaW5rIHRoZSBpc3N1ZSBoYXBwZW5lZCBpbiB0aGUgd2l0aCByb290ZnMgZ2VuZXJhdGlvbi4g
SSBoYXZlbid0IGZvdW5kIHdoeSBpdCB3YXMgbm90IGluY2x1ZGVkIGluIHRoZSByb290ZnMuIEZy
b20gdGhlIGJ1ZyBJIHRob3VnaHQgdGhlIGlzc3VlIGdvdCByZXNvbHZlZCBpbiB0aGUgbGF0ZXN0
IHRyZWUgSEVBRCwgc28gSSBhbSBnb2luZyB0byB0ZXN0IHRoZSBsYXRlc3QgaGVhZCBvbiBmZXcg
QlNQcywgYW5kIHdpbGwgZGlnIGZ1cnRoZXIgaWYgSSBlbmNvdW50ZXIgdGhlIGlzc3VlIGFnYWlu
Lg0KDQpOaXRpbg0KDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVy
dG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBXZWRuZXNk
YXksIFNlcHRlbWJlciAxMiwgMjAxMiAxOjQzIFBNDQo+IFRvOiBLYW1ibGUsIE5pdGluIEENCj4g
Q2M6IFphbnVzc2ksIFRvbTsgSGFydCwgRGFycmVuOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+
IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFtQQVRDSCAwLzFdIEZpeCBYIGlzc3VlIG9uIGNyb3duYmF5
DQo+IA0KPiBPbiAxMiBTZXB0ZW1iZXIgMjAxMiAyMToxNCwgS2FtYmxlLCBOaXRpbiBBIDxuaXRp
bi5hLmthbWJsZUBpbnRlbC5jb20+DQo+IHdyb3RlOg0KPiA+IEZZSSBXaGlsZSB0ZXN0aW5nIG9u
IHRoZSBmaXNocml2ZXIgcGxhdGZvcm0sIEkgYWxzbyBmaW5kIHRoYXQgdGhlcmUgaXMgbm8gWCBs
b2csDQo+IGFuZCBsb29raW5nIGZ1cnRoZXIgZm91bmQgb3V0IHRoYXQgeG9yZyBleGVjdXRhYmxl
IGlzIG5vdCBvbiB0aGUgaW1hZ2UuIEkNCj4gdGhpbmsgdGhlIHNhbWUgdGhpbmcgaXMgYWxzbyBo
YXBwZW5pbmcgb24gY3Jvd25iYXkuDQo+IA0KPiBUaGVyZSBoYXZlIGJlZW4gdHJhbnNpZW50IHJl
cG9ydHMgb2YgWG9yZyBtaXNzaW5nIGluIHRoZSBxZW11IGltYWdlcyB0b28gLS0NCj4gdHJhbnNp
ZW50IGJlY2F1c2UgdGhlIHJlcG9ydGVyIHNhaWQgdGhhdCB0aGUgbmV4dCBkYXkncyBhdXRvYnVp
bHQgaW1hZ2UgaGFkDQo+IHRoZSBwYWNrYWdlIGluc3RhbGxlZCBhZ2Fpbi4gIFZlcnkgb2RkLg0K
PiANCj4gSW4gdGhlIGJyb2tlbiBzeXN0ZW1zIHlvdSBzYXkgdGhlcmUgaXMgbm8gWG9yZyBiaW5h
cnkuIENhbiB5b3UgY29uZmlybSB0aGF0DQo+IHRoZXJlIGlzIG5vIHhzZXJ2ZXIteG9yZyBwYWNr
YWdlIHRvbz8gIENhbiB5b3UgaW5zcGVjdCB0aGUgYnVpbGQgYW5kIHNlZSBpZg0KPiB0aGlzIGZh
aWxlZCwgb3IgaWYgdGhlcmUgaXMgc29tZSBtYWNoaW5lIGNvbmZpZ3VyYXRpb24gZGlzYXN0ZXIg
d2hpY2ggbWVhbnMgaXQNCj4gZG9lc24ndCB0aGluayBpdCBuZWVkcyB0byBpbnN0YWxsIGFuIHhz
ZXJ2ZXI/DQo+IA0KPiBSb3NzDQo+IA0KPiBGV0lXLCBteSBxZW11YXJtIGltYWdlIGZyb20gZWFy
bGllciB0b2RheSB3b3Jrcy4NCg==

