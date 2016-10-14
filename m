Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45E0AE00F15; Fri, 14 Oct 2016 01:36:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15487E00CCA
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 01:36:03 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga104.jf.intel.com with ESMTP; 14 Oct 2016 01:36:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,344,1473145200"; d="scan'208";a="19493652"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
	by fmsmga006.fm.intel.com with ESMTP; 14 Oct 2016 01:36:00 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.155]) by
	irsmsx105.ger.corp.intel.com ([169.254.7.196]) with mapi id
	14.03.0248.002; Fri, 14 Oct 2016 09:35:58 +0100
From: "Lock, Joshua G" <joshua.g.lock@intel.com>
To: "Eggleton, Paul" <paul.eggleton@intel.com>, "Yang, Liezhi (Wind River)"
	<liezhi.yang@windriver.com>, "srifenbark@gmail.com" <srifenbark@gmail.com>
Thread-Topic: [yocto] Migration info - runqemu
Thread-Index: AQHSJb0Mt89mDHId5U6yJo2OlnxeEaCnJIsAgABrLQA=
Date: Fri, 14 Oct 2016 08:35:58 +0000
Message-ID: <1476434156.3083.2.camel@intel.com>
References: <1707604.JiaMnXxcz2@peggleto-mobl.ger.corp.intel.com>
	<2371a296-57bd-affa-0b1f-1304ce81e0dc@windriver.com>
In-Reply-To: <2371a296-57bd-affa-0b1f-1304ce81e0dc@windriver.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.18.184]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Migration info - runqemu
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
X-List-Received-Date: Fri, 14 Oct 2016 08:36:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <2FD46146D43E7042A49A16B4B3467D0A@intel.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDE2LTEwLTE0IGF0IDEwOjEyICswODAwLCBSb2JlcnQgWWFuZyB3cm90ZToNCj4g
SGkgUGF1bCBhbmQgU2NvdHQsDQo+IA0KPiBIZXJlIGl0IGlzLCBhbmQgcGxlYXNlIGZlZWwgZnJl
ZSB0byBjb21tZW50LCBtb3N0IG9mIHRoZW0gYXJlIGZyb20NCj4gcWVtdWJvb3QuYmJjbGFzczoN
Cj4gDQo+IFRoZSBuZXcgcnVucWVtdSBpcyBhIHB5dGhvbiBzY3JpcHQsIGl0IHJlcXVpcmVzIGEN
Cj4gPGltYWdlLW5hbWU+LTxtYWNoaW5lPi5xZW11Ym9vdC5jb25mIHRvIGJvb3QgdGhlIGJzcCwg
dGhlDQo+IHFlbXVib290LmNvbmYNCj4gaXMgZ2VuZXJhdGVkIGJ5IHFlbXVib290LmJiY2xhc3Mg
ZHVyaW5nIGJ1aWxkIHJvb3RmcywgcWVtdSBib290DQo+IGFyZ3VtZW50cyBjYW4gYmUgc2V0IGlu
IGJzcCdzIGNvbmYgZmlsZSwgYW5kIHFlbXVib290LmJiY2xhc3Mgd2lsbA0KPiBzYXZlDQo+IHRo
ZW0gdG8gcWVtdWJvb3QuY29uZi4NCg0KQ2FuIHdlIGFsc28gZG9jdW1lbnQgd2hlbiBxZW11Ym9v
dC5jb25mIHJlcXVpcmVkIGFuZCB3aGF0IGJlbmVmaXRzIGl0DQpicmluZ3M/IFByZXZpb3VzIHVz
YWdlIHBhdHRlcm5zIHNob3VsZCBhbHNvIGJlIHN1cHBvcnRlZCwgcmlnaHQ/DQoNClRoYW5rcywN
Cg0KSm9zaHVhDQoNCj4gDQo+IE5vdGUsICJRQiIgbWVhbnMgUWVtdSBCb290LCB0aGUgZm9sbG93
aW5nIHZhcnMgY2FuIGJlIHNldCBpbiBjb25mDQo+IGZpbGVzLCBzdWNoIGFzIDxic3AuY29uZj4g
dG8gbWFrZSBpdCBjYW4gYmUgYm9vdCBieSBydW5xZW11Og0KPiANCj4gUUJfU1lTVEVNX05BTUU6
IHFlbXUgbmFtZSwgZS5nLiwgInFlbXUtc3lzdGVtLWkzODYiDQo+IFFCX09QVF9BUFBFTkQ6IG9w
dGlvbnMgdG8gYXBwZW5kIHRvIHFlbXUsIGUuZy4sICItc2hvdy1jdXJzb3IiDQo+IFFCX0RFRkFV
TFRfS0VSTkVMOiBkZWZhdWx0IGtlcm5lbCB0byBib290LCBlLmcuLCAiYnpJbWFnZSINCj4gUUJf
REVGQVVMVF9GU1RZUEU6IGRlZmF1bHQgRlNUWVBFIHRvIGJvb3QsIGUuZy4sICJleHQ0Ig0KPiBR
Ql9NRU06IG1lbW9yeSwgZS5nLiwgIi1tIDUxMiINCj4gUUJfTUFDSElORTogcWVtdSBtYWNoaW5l
LCBlLmcuLCAiLW1hY2hpbmUgdmlydCINCj4gUUJfQ1BVOiBxZW11IGNwdSwgZS5nLiwgIi1jcHUg
cWVtdTMyIg0KPiBRQl9DUFVfS1ZNOiB0aGUgc2ltaWxhciB0byBRQl9DUFUsIGJ1dCB1c2VkIHdo
ZW4ga3ZtLCBlLmcuLCAnLWNwdQ0KPiBrdm02NCcsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgc2V0IGl0IHdoZW4gc3VwcG9ydCBrdm0uDQo+IFFCX0tFUk5FTF9DTURMSU5FX0FQUEVORDog
b3B0aW9ucyB0byBhcHBlbmQgdG8ga2VybmVsJ3MgLWFwcGVuZA0KPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBvcHRpb24sIGUuZy4sICJjb25z
b2xlPXR0eVMwIGNvbnNvbGU9dHR5Ig0KPiBRQl9EVEI6IHFlbXUgZHRiIG5hbWUNCj4gUUJfQVVE
SU9fRFJWOiBxZW11IGF1ZGlvIGRyaXZlciwgZS5nLiwgImFsc2EiLCBzZXQgaXQgd2hlbiBzdXBw
b3J0DQo+IGF1ZGlvDQo+IFFCX0FVRElPX09QVDogcWVtdSBhdWRpbyBvcHRpb24sIGUuZy4sICIt
c291bmRodyBhYzk3LGVzMTM3MCIsIHVzZWQNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgd2hlbiBRQl9BVURJT19EUlYgaXMgc2V0Lg0KPiBRQl9LRVJORUxfUk9PVDoga2VybmVsJ3Mg
cm9vdCwgZS5nLiwgL2Rldi92ZGENCj4gUUJfVEFQX09QVDogbmV0b3dyayBvcHRpb24gZm9yICd0
YXAnIG1vZGUsIGUuZy4sDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIi1uZXRkZXYgdGFw
LGlkPW5ldDAsaWZuYW1lPUBUQVBALHNjcmlwdD1ubyxkb3duc2NyaXB0PW4NCj4gbyAtZGV2aWNl
wqANCj4gdmlydGlvLW5ldC1kZXZpY2UsbmV0ZGV2PW5ldDAiDQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBOb3RlLCBydW5xZW11IHdpbGwgcmVwbGFjZSAiQFRBUEAiIHdpdGggdGhlIG9u
ZSB3aGljaA0KPiBpcyB1c2VkLMKgDQo+IHN1Y2ggYXMgdGFwMCwgdGFwMSAuLi4NCj4gUUJfU0xJ
UlBfT1BUOiBuZXR3b3JrIG9wdGlvbiBmb3IgU0xJUlAgbW9kZSwgZS5nLiwNCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAiLW5ldGRldiB1c2VyLGlkPW5ldDAgLWRldmljZSB2aXJ0aW8tbmV0
LQ0KPiBkZXZpY2UsbmV0ZGV2PW5ldDAiDQo+IFFCX1JPT1RGU19PUFQ6IHVzZWQgYXMgcm9vdGZz
LCBlLmcuLA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiLWRyaXZlIGlkPWRpc2sw
LGZpbGU9QFJPT1RGU0AsaWY9bm9uZSxmb3JtYXQ9cmF3DQo+IC1kZXZpY2XCoA0KPiB2aXJ0aW8t
YmxrLWRldmljZSxkcml2ZT1kaXNrMCINCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoE5v
dGUsIHJ1bnFlbXUgd2lsbCByZXBsYWNlICJAUk9PVEZTQCIgd2l0aCB0aGUgb25lDQo+IHdoaWNo
IGlzIHVzZWQswqANCj4gc3VjaCBhcyBjb3JlLWltYWdlLW1pbmltYWwtcWVtdWFybTY0LmV4dDQu
DQo+IFFCX1NFUklBTF9PUFQ6IHNlcmlhbCBwb3J0LCBlLmcuLCAiLXNlcmlhbCBtb246c3RkaW8i
DQo+IFFCX1RDUFNFUklBTF9PUFQ6IHRjcCBzZXJpYWwgcG9ydCBvcHRpb24sIGUuZy4sDQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIiAtZGV2aWNlIHZpcnRpby1zZXJp
YWwtZGV2aWNlIC1jaGFyZGV2wqANCj4gc29ja2V0LGlkPXZpcnRjb24scG9ydD1AUE9SVEAsaG9z
dD0xMjcuMC4wLjEgLWRldmljZQ0KPiB2aXJ0Y29uc29sZSxjaGFyZGV2PXZpcnRjb24iDQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgTm90ZSwgcnVucWVtdSB3aWxsIHJl
cGxhY2UgIkBQT1JUQCIgd2l0aCB0aGUgcG9ydA0KPiBudW1iZXLCoA0KPiB3aGljaCBpcyB1c2Vk
Lg0KPiANCj4gVXNhZ2U6DQo+IElNQUdFX0NMQVNTRVMgKz0gInFlbXVib290Ig0KPiBTZWUgInJ1
bnFlbXUgaGVscCIgZm9yIG1vcmUgaW5mbw0KPiANCj4gLy8gUm9iZXJ0DQo+IA0KPiBPbiAxMC8x
NC8yMDE2IDA5OjQ4IEFNLCBQYXVsIEVnZ2xldG9uIHdyb3RlOg0KPiA+IA0KPiA+IEhpIGZvbGtz
LA0KPiA+IA0KPiA+IFdlIG5lZWQgc29tZSBpbmZvIGZvciB0aGUgbWlncmF0aW9uIHNlY3Rpb24g
b2YgdGhlIDIuMiBtYW51YWwgYWJvdXQNCj4gPiB3aGF0IHRoZQ0KPiA+IHVzZXIgbmVlZHMgdG8g
ZG8gdG8gYWRhcHQgdG8gdGhlIG5ldyBweXRob24tYmFzZWQgcnVucWVtdS4gUm9iZXJ0IC8NCj4g
PiBKb3NodWEsDQo+ID4gY2FuIG9uZSBvZiB5b3UgcGxlYXNlIHdyaXRlIHNvbWV0aGluZyBzaG9y
dCB0aGF0IGV4cGxhaW5zIHdoYXQNCj4gPiB1c2VycyBuZWVkIHRvDQo+ID4gZG8gKGkuZS4gY2hh
bmdlcyB0byB0aGUgbWV0YWRhdGEgZm9yIEJTUHMsIG9yIGFueSBvdGhlciBjaGFuZ2VzIGluDQo+
ID4gb3BlcmF0aW9uKT8NCj4gPiBJdCBkb2Vzbid0IG5lZWQgdG8gYmUgcG9saXNoZWQsIFNjb3R0
IFJpZmVuYmFyayB3aWxsIHRha2UgY2FyZSBvZg0KPiA+IHRoYXQuIEp1c3QNCj4gPiByZXBseWlu
ZyB0byB0aGlzIGVtYWlsIHdpdGggU2NvdHQgb24gQ0Mgc2hvdWxkIGJlIHN1ZmZpY2llbnQuDQo+
ID4gDQo+ID4gVGhhbmtzLA0KPiA+IFBhdWwNCj4gPiAKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBv
cmF0aW9uIChVSykgTGltaXRlZApSZWdpc3RlcmVkIE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdp
c3RlcmVkIE9mZmljZTogUGlwZXJzIFdheSwgU3dpbmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIx
NzMgNDcKClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlk
ZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVu
dChzKS4gQW55IHJldmlldyBvciBkaXN0cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHBy
b2hpYml0ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBj
b250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLgo=


