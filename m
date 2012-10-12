Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB1D8E0032E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 09:06:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2012 09:06:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,576,1344236400"; d="scan'208";a="226132159"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 12 Oct 2012 09:06:06 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.247]) with mapi id
	14.01.0355.002; Fri, 12 Oct 2012 09:06:05 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCHv4 6/8] mesa-dri.bbappend: avoid conflict with
	emgd-driver-bin
Thread-Index: AQHNqAjChNxZIOZCK0KNiW5ogUryd5e14sEA///wapA=
Date: Fri, 12 Oct 2012 16:06:04 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C157330DA@ORSMSX106.amr.corp.intel.com>
References: <cover.1349998086.git.nitin.a.kamble@intel.com>
	<0ef1ee65497461228a3b9da87ba40e120ab9818e.1349998086.git.nitin.a.kamble@intel.com>
	<CAJTo0LbvfOTBUNaZabbhuY5rb26t4Ukft169Tv5VLjKBZVA_RQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbvfOTBUNaZabbhuY5rb26t4Ukft169Tv5VLjKBZVA_RQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCHv4 6/8] mesa-dri.bbappend: avoid conflict with emgd-driver-bin
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
X-List-Received-Date: Fri, 12 Oct 2012 16:06:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVydG9uLCBSb3NzIFtt
YWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBGcmlkYXksIE9jdG9iZXIgMTIs
IDIwMTIgMjo0OSBBTQ0KPiBUbzogS2FtYmxlLCBOaXRpbiBBDQo+IENjOiBaYW51c3NpLCBUb207
IEhhcnQsIERhcnJlbjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lv
Y3RvXSBbUEFUQ0h2NCA2LzhdIG1lc2EtZHJpLmJiYXBwZW5kOiBhdm9pZCBjb25mbGljdCB3aXRo
DQo+IGVtZ2QtZHJpdmVyLWJpbg0KPiANCj4gT24gMTIgT2N0b2JlciAyMDEyIDAwOjMxLCAgPG5p
dGluLmEua2FtYmxlQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gRXh0ZW5kIHRoZSBtZXNhLWRyaSBy
ZWNpcGUgZnJvbSBvZWNvcmUgdG8gYXZvaWQgY29uZmxpY3Qgd2l0aCBmaWxlcw0KPiA+IGdlbmVy
YXRlZCBieSBlbWdkLWRyaXZlci1iaW4gcmVjaXBlLg0KPiANCj4gVGhlIGNvbW1pdCBtZXNzYWdl
IHNob3VsZCBhbHNvIHNheSB3aGF0IHRoZSBoaWdoIGxldmVsIGNoYW5nZXMgd2VyZSwgaW4NCj4g
dGhpcyBjYXNlDQo+IA0KDQpUaGUgaW5mb3JtYXRpb24gYWJvdXQgaGlnaCBsZXZlbCBjaGFuZ2Ug
aXMgaW4gdGhlIG5leHQgbGluZXMgaW4gdGhlIGNvbW1lbnQuIEFzIHNlZW4gaW4gdGhlIGxpbmVz
IGJlbGxvdyBoZXJlLg0KDQo+ID4gKyMgVG8gYXZvaWQgY29uZmxpY3QgZGlzYWJsZSBlZ2wsIGds
ZXMxLCBnbGVzMiBmcm9tIG1ldGEtZHJpIGlmIHRoZQ0KPiA+ICtCU1AgaW1hZ2UgIyBpcyBidW5k
bGluZyB0aGUgZW1nZCBkcml2ZXIuDQo+IA0KPiBJJ20gbm90IGVudGlyZWx5IGtlZW4gb24gdGhp
cyBsZXZlbCBvZiBkZWVwIGhhY2tlcnksIGl0IGxvb2tzIHZlcnkNCj4gZnJhZ2lsZS4gDQoNCldo
YXQgc2VlbXMgbGlrZSB0aGUgaGFja2VyeSBoZXJlLCBpcyBzaW1wbGUgY2hhbmdlIHRvIEVYVFJB
X09FQ09ORiB2YXJpYWJsZSBvZiB0aGUgbWVzYS1kcmkgcmVjaXBlLiBCdXQgdGhlIHdheSBvcmln
aW5hbCBtZXNhLWRyaSByZWNpcGUgaXMgd3JpdHRlbiwgdGhlcmUgaXMgbm8gc2ltcGxlciBiaXRi
YWtlIHdheSB0byBjaGFuZ2UgRVhUUkFfT0VDT05GLg0KDQo+ICBJcyB0aGVyZSBhbnkgZGlmZmVy
ZW5jZSBpbiB0aGUgaGVhZGVycyBpbnN0YWxsZWQgYnkgZW1nZA0KPiBhbmQgbWVzYT8gIA0KDQpZ
ZXMsIHRoZXJlIGFyZSBkaWZmZXJlbmNlcywgdGhlIEVNR0QgcmVjaXBlIGlzIHByb3ZpZGluZyBH
TCBpbXBsZW1lbnRhdGlvbiBhdCBBQkkgbGV2ZWwgd2hpY2ggaGFzIG5vdCBnb2luZyBpbiB0aGUg
b3BlbiBzb3VyY2UgdmVyc2lvbiBvZiBtZXNhLWRyaS4NCg0KPiBBbiBhbHRlcm5hdGl2ZSB3b3Vs
ZCBiZSB0byBjb25zaWRlciBtZXNhIGEgbW9yZSBjYW5vbmljYWwNCj4gc291cmNlIG9mIEdMIGhl
YWRlcnMgZm9yIHRoZSBidWlsZCwgYW5kIGNoYW5nZSBFTUdEIHRvIG5vdCBpbnN0YWxsDQo+IGFu
eXRoaW5nIHRvIHN0YWdpbmcuICAgVGhpcyB3b3VsZCBtZWFuIHRoYXQgZW1nZCB3b3VsZG4ndCBi
dWlsZC10aW1lDQo+IHByb3ZpZGUgYW55IHZpcnR1YWwvbGliZ2wgcGFja2FnZXMsIGp1c3QgcnVu
dGltZSBwcm92aWRlcyBzbyB0aGF0IHRoZSBpbWFnZQ0KPiBjYW4gYmUgYnVpbHQgdXNpbmcgRU1H
RCBhbmQgTWVzYSdzIGxpYmdsLg0KPiANCg0KVGhlcmUgaXMgYSByZWFzb24gRU1HRCByZWNpcGUg
aXMgcHJvdmlkaW5nIHRoZXNlIEdMIGxpYnJhcmllcyBpbiBiaW5hcnkgZm9ybSBhbmQgbm90IGlu
IHRoZSBzb3VyY2UgZm9ybSwgSSB0aGluayB0aGVyZSBpcyBFTUdEIHNwZWNpZmljIHByb3ByaWV0
YXJ5IGNvZGUgaW4gdGhlc2UgbGlicmFyaWVzLiBJIGNhbiBjaGVjayB3aXRoIEVNR0QgZ3V5cyB0
byBjb25maXJtIHRoaXMuIA0KDQo+IEZZSSwgSW4gcm9zcy94b3JnIEkndmUgc3RhcnRlZCByZS1h
cnJhbmdpbmcgdGhlIHBhY2thZ2luZyBvZiBtZXNhLCBzbyB0aGF0IHRoZQ0KPiBwYWNrYWdlcyBh
cmUgY2FsbGVkIGxpYmdsLW1lc2EgYW5kIFJQUk9WSURFIGxpYmdsLiAgSSBwbGFuIHRvIG1ha2Ug
dGhlIHNhbWUNCj4gY2hhbmdlcyB0byBFTUdEIG9uY2UgSSBoYXZlIHRoZSBzaGxpYiByZXNvbHV0
aW9uIHNvcnRlZC4NCj4gDQoNCkxvb2tzIGxpa2UgdGhpcyBraW5kIG9mIHBhY2thZ2luZyBjaGFu
Z2Ugd291bGQgbm90IGNoYW5nZSBmdW5jdGlvbmFsaXR5IG9mIGJvdGggcmVjaXBlcy4gDQoNCkNo
ZWVycywNCk5pdGluDQoNCg0KPiBSb3NzDQo=

