Return-Path: <laurentiu.serban@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85546E0076A
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 06:34:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Aug 2012 06:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,304,1344236400"; d="scan'208";a="210518072"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2012 06:34:27 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.34]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.75]) with mapi id
	14.01.0355.002; Fri, 24 Aug 2012 14:33:56 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: 1.3 M3 Full Pass test results
Thread-Index: Ac2BY2ArS5dRmnanT+CdJRPDq9FOEgAdoSeAAAidMNA=
Date: Fri, 24 Aug 2012 13:33:50 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC191761D6@IRSMSX102.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1917553B@IRSMSX102.ger.corp.intel.com>
	<1345803711.14369.69.camel@ted>
In-Reply-To: <1345803711.14369.69.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: 1.3 M3 Full Pass test results
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
X-List-Received-Date: Fri, 24 Aug 2012 13:34:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUmljaGFyZCwNCg0KRXZlbiBpZiB0aGUgaW5zdGFsbGVyIGlzIHVzZWQgaW4gdGhlIGRl
ZmF1bHQgbW9kZSwgaXNzdWVzIHN0aWxsIG9jY3VyIChzZWUgY29tbWVudCA3KS4gSSB0aGluayB0
aGUgcm9vdCBjYXVzZSBmb3IgdGhlc2UgaXMgdGhlIHNhbWUsIHNvIEkgZGlkIG5vdCBzdWJtaXQg
YSBuZXcgYnVnLg0KDQpUaGFuayB5b3UsDQpMYXVyZW50aXUgDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBQdXJkaWUsIFJpY2hhcmQgDQpTZW50OiBGcmlkYXksIEF1Z3VzdCAy
NCwgMjAxMiAxOjIyIFBNDQpUbzogU2VyYmFuLCBMYXVyZW50aXUNCkNjOiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnOyBMaXUsIFNvbmc7IFN0ZXdhcnQsIERhdmlkIEM7IFdvbGQsIFNhdWwNClN1Ympl
Y3Q6IFJlOiAxLjMgTTMgRnVsbCBQYXNzIHRlc3QgcmVzdWx0cw0KDQpPbiBUaHUsIDIwMTItMDgt
MjMgYXQgMjA6MTMgKzAxMDAsIFNlcmJhbiwgTGF1cmVudGl1IHdyb3RlOg0KDQo+IEhlcmUgYXJl
IHRoZSByZXN1bHRzIGZvciB0aGUgZnVsbCBwYXMgdGVzdHMgb24gMS4zIE0zIFJDMi4gVGhlIGNv
bW1pdCANCj4gdXNlZCBmb3IgdGVzdGluZyBpcyA4Yjg3NDhjOGY5NjM5MDBiODNkYzBmZGQ3NzU3
NTU2ZjkxN2ZlNGZkLg0KPg0KPiBTb21lIGRldGFpbHMgYWJvdXQgdGhlIGVuY291bnRlcmVkIGlz
c3VlcyBiZWxvdzoNCj4gIA0KPiBCU1Ag4oCTIFN1ZG9rdS1zYXZhbnQgcHJvamVjdCBidWlsZCBp
c3N1ZSAoMjg3OCkNCj4NCj4gQURUIOKAkyB0aGUgcmVsb2NhdGFibGUgc2RrIGlzc3VlICgyOTgw
KSBjYXVzZXMgMTMgdGVzdCBjYXNlcyB0byBiZSBvbiANCj4gZmFpbGUvYmxvY2tlZCBzdGF0ZQ0K
DQpJIHRob3VnaHQgaXQgd29ya2VkIGFzIGxvbmcgYXMgeW91IGRpZG4ndCBoYXZlIHRvIHJlbG9j
YXRlIGl0IHNvIG5vIHRlc3RzIHNob3VsZCBoYXZlIGJlZW4gYmxvY2tlZCwgd2UganVzdCBoYXZl
IHRoZSByZWxvY2F0aW9uIGlzc3VlPw0KDQo+ICAsIGFsc28gdGhlIENsdXR0ZXIgQyB0ZW1wbGF0
ZSBpc3N1ZSBpcyB1bnNvbHZlZCAoMjU3NykNCj4NCj4gQ29yZSBCdWlsZCBTeXN0ZW0g4oCTIHgz
MiBpcyBzdGlsbCBhbiBpc3N1ZSAoMjg4OCksIGNsZWFuaW5nIHNzdGF0ZSANCj4gaXNzdWUgaXMg
c3RpbGwgbm90IHNvbHZlZCAoMjg5NyksIGluY3JlbWVudGFsIFJQTSBpbWFnZSBnZW5lcmF0aW9u
IA0KPiAoMjk2OSksIHNvdXJjZSBhcmNoaXZpbmcgKDI2MTkpLCB0aGUga3ZtIGlzc3VlIHdhcyBy
ZXByb2R1Y2VkIGJ5IA0KPiBhbm90aGVyIGNvbGxlYWd1ZSAoMjc5MCkgWW9jdG8gQlNQIGNyZWF0
aW9uIHZpYSBKU09OICgyNjkzKSBvciBmb3IgDQo+IHFlbXUgKDI5OTEpIGZhaWxzLCBtdWx0aWxp
YiBpc3N1ZSAoMjkxOCDigJMgdGhpcyByZXF1aXJlcyBhIGxpdHRsZSBtb3JlIA0KPiBpbnZlc3Rp
Z2F0aW9uIGZyb20gUUEpLA0KPg0KPiBIT0IgLSBhbGwgc2VlbXMgb2sgZm9yIFJDMg0KPg0KPiBT
ZWxmLWhvc3RlZC1pbWFnZSAgLSBjYW5ub3Qgc3RhcnQgb24gVmlydHVhbCBCb3ggKFggaXNzdWUp
LCBpdCBpcyB2ZXJ5IA0KPiBzbG93IG9uIHFlbXUgYW5kIGl0IGhhcyBhIG00IHBhY2thZ2UgYnVp
bGQgKDMwMDUpIGlzc3VlIG9uIFZNV2FyZS4gSWYgDQo+IHRoZSBzZWxmLWhvc3RlZC1pbWFnZSBp
cyB1c2VkIG9uIG1hY2hpbmUgd2l0aCBpbnRlcm5ldCBjb25uZWN0aXZpdHkgDQo+IHZpYSBwcm94
eSB0aGVyZSB3aWxsIGJlIGFuIGluaXRpYWwgc2FuaXR5IGNoZWNrIGZhaWx1cmUsIGJ1dCB0aGlz
IGlzIA0KPiBub3QgYSBibG9ja2luZyBpc3N1ZS4NCj4gIA0KPiBBIG1lbnRpb24gZm9yIHRoZSBw
ZXJmb3JtYW5jZSB0ZXN0aW5nOiBvbiBhIFViYnVudHUgMTIuMDQgIGk3IG1hY2hpbmUgDQo+IHVz
aW5nIDggdGhyZWFkcyB0aGUgYnVpbGQgdGltZSB3YXMgODMgbWludXRlcyAod2l0aCBwcmlvciBm
ZXRjaGluZykuDQoNCkhvdyBkb2VzIHRoaXMgY29tcGFyZSB3aXRoIG91ciBvdGhlciBwZXJmb3Jt
YW5jZSBudW1iZXJzLiBGcm9tIHdoYXQgSSByZW1lbWJlciwgd2UgdXNlZCB0byBob3ZlciBhcm91
bmQgdGhlIDEwNS0xMTUgbWludXRlIG1hcmsuIERpZCB3ZSBoYXZlIHNvbWUgc2lnbmlmaWNhbnQg
c3BlZWQgZ2FpbnMgb3IgaXMgdGhpcyBqdXN0IGFuIGFydGVmYWN0IG9mIGNoYW5naW5nIHRoZSB0
ZXN0IG1hY2hpbmU/DQoNCkNoZWVycywNCg0KUmljaGFyZA0KDQoNCg0K

