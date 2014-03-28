Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B205E00BA7
	for <yocto@yoctoproject.org>; Fri, 28 Mar 2014 01:21:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 28 Mar 2014 01:21:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,749,1389772800"; d="scan'208";a="501538857"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 28 Mar 2014 01:21:40 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 28 Mar 2014 08:20:38 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.2]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.180]) with mapi id
	14.03.0123.003; Fri, 28 Mar 2014 08:20:38 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Zhao, Yi (Wind River)" <yi.zhao@windriver.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
Thread-Topic: Reducing nightly/release build artifacts.
Thread-Index: AQHPSizPBgRJMP8/hUCAyHdNJ7+qB5r2KLVw
Date: Fri, 28 Mar 2014 08:20:36 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961B6869CB@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
	<CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
	<CAPhnLPDwbCTBNg4aPHqYpakMwEz-wCyBYD-fr_ap97JC1fDWfg@mail.gmail.com>
	<5334DD22.5070806@windriver.com>
In-Reply-To: <5334DD22.5070806@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Fri, 28 Mar 2014 08:21:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQpXZSBuZWVkIGdlbmVyaWN4ODYtNjQgbHNiIGltYWdlLiBJdCBpcyB1c2VkIGZvciBzdHJl
c3MgdGVzdGluZy4NCg0KUmVnYXJkcywNCi0tDQpBbGV4YW5kcnUgR2Vvcmdlc2N1DQoNCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBZaSBaaGFvIFttYWlsdG86eWkuemhhb0B3aW5k
cml2ZXIuY29tXSANClNlbnQ6IEZyaWRheSwgTWFyY2ggMjgsIDIwMTQgNDoyNCBBTQ0KVG86IEZs
YW5hZ2FuLCBFbGl6YWJldGgNCkNjOiBPdGF2aW8gU2FsdmFkb3I7IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmc7IEdlb3JnZXNjdSwgQWxleGFuZHJ1IEMNClN1YmplY3Q6IFJlOiBSZWR1Y2luZyBuaWdo
dGx5L3JlbGVhc2UgYnVpbGQgYXJ0aWZhY3RzLg0KDQpIaSBCZXRoLA0KDQoNCuS6jiAyMDE05bm0
MDPmnIgyN+aXpSAwNTozMCwgRmxhbmFnYW4sIEVsaXphYmV0aCDlhpnpgZM6DQo+IEEgbGlzdCBv
ZiBleGFjdGx5IHdoYXQgZmlsZXMgeW91IHVzZSBmb3IgUUEgd291bGQgYmUgZ3JhbmQuDQo+DQo+
IFdlIGNhbiB1c2UgaHR0cDovL2F1dG9idWlsZGVyLnlvY3RvcHJvamVjdC5vcmcvcHViL25pZ2h0
bHkvMjAxNDAzMjYtMS8NCj4gYXMgb3VyIGJhc2UuDQoNCldlIGRvbid0IHVzZSBhbGwgcWVtdS1s
c2IgLCBiZWFnbGVib2FyZC1sc2IsIHJvdXRlcnN0YXRpb25wcm8tbHNiLCBhbmQgcDEwMjJkcy1s
c2IgYXJ0aWZhY3RzLg0KRm9yIHRoZSBpbWFnZSB0eXBlLCB3ZSBkb24ndCBuZWVkIG1pbmltYWwt
ZGV2IGFuZCBzYXRvLWRldi4NCg0KVGhhbmtzLA0KWWkNCg0KDQo+DQo+IC1iDQo+DQo+IE9uIFdl
ZCwgTWFyIDI2LCAyMDE0IGF0IDI6MjIgUE0sIE90YXZpbyBTYWx2YWRvciANCj4gPG90YXZpb0Bv
c3N5c3RlbXMuY29tLmJyPiB3cm90ZToNCj4+IEhlbGxvIEJldGgsDQo+Pg0KPj4gT24gV2VkLCBN
YXIgMjYsIDIwMTQgYXQgNjoxNCBQTSwgRmxhbmFnYW4sIEVsaXphYmV0aCANCj4+IDxlbGl6YWJl
dGguZmxhbmFnYW5AaW50ZWwuY29tPiB3cm90ZToNCj4+PiBJJ2QgbGlrZSB0byBzdGFydCBsb29r
aW5nIGF0IHJlZHVjaW5nIHRoZSBudW1iZXIgb2YgYXJ0aWZhY3RzIHdlJ3JlIA0KPj4+IHJlbGVh
c2luZyBib3RoIGZvciBvdXIgbmlnaHRseSBidWlsZHMgKHdoaWNoIGlzIGF0IDI1MCwwMDAgYXJ0
aWZhY3RzIA0KPj4+IGFuZCAuMjUgVEIhKSBhbmQgcmVsZWFzZXMuDQo+Pj4NCj4+PiBXaGF0IEkn
bSB0aGlua2luZyBpcyB0aGlzOg0KPj4+DQo+Pj4gUmVkdWNlIG5pZ2h0bHk6DQo+Pj4gLSBSZWR1
Y2UgQURULVJFUE8gdG8ganVzdCBxZW11KiBhcmNoZXMgZm9yIGFsbCBidWlsZHMNCj4+PiAtIElm
IGV2ZXJ5IFFBIHRlYW0gY291bGQgcHJvdmlkZSBtZSBhIGxpc3Qgb2Ygd2hhdCBmaWxlcyB0aGV5
IA0KPj4+IGFjdHVhbGx5IG5lZWQgSSBjb3VsZCByZWR1Y2UgdGhlIHB1Ymxpc2hlZCBhcnRpZmFj
dHMgdG8gKmp1c3QqIHdoYXQgaXMgbmVlZGVkLg0KPj4+DQo+Pj4gUmVkdWNlIHJlbGVhc2VzOg0K
Pj4+IC0gUmVkdWNlIEFEVC1SRVBPIHRvIGp1c3QgcWVtdQ0KPj4+IC0gRG9uJ3QgcmVsZWFzZSBp
cGsvcnBtL2RlYnMuIENvbnRpbnVlIHRvIHJlbGVhc2UgaXBrcyB0aHJvdWdoIEFEVA0KPj4+IC0g
RG9uJ3QgcmVsZWFzZSBtYWNoaW5lcyBvdXRzaWRlIG9mIEJTUCB0YXJiYWxsIC9iaW5hcnkgZGly
ZWN0b3J5DQo+Pj4NCj4+PiBJZiBmb2xrcyB3aG8gZG8gUUEgY291bGQgZ2V0IG1lIGEgbGlzdCBv
ZiBhbGwgdGhlIGZpbGVzIHRoZXkgdXNlLCB3ZSANCj4+PiBjYW4gc3RhcnQgcmVtb3ZpbmcgZXhj
ZXNzIGFydGlmYWN0cy4gSSBrbm93IHRoaXMgaXMgYSBiYWxhbmNlLCBidXQgDQo+Pj4gSSdkIHJl
YWxseSBsaWtlIHVzIHRvIHN0YXJ0IHRhcmdldGluZyBvdXIgcmVsZWFzZSBhcnRpZmFjdHMgdG8g
anVzdCANCj4+PiB0aGUgdGhpbmdzIHdlIG5lZWQuDQo+PiBJIGZ1bGx5IGFncmVlIG9uIHRoYXQu
DQo+Pg0KPj4gSXMgdGhlcmUgYW55dGhpbmcgeW91IG5lZWQgc3BlY2lmaWNhbGx5IGZyb20gbWU/
DQo+Pg0KPj4gLS0NCj4+IE90YXZpbyBTYWx2YWRvciAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgTy5TLiBTeXN0ZW1zDQo+PiBodHRwOi8vd3d3Lm9zc3lzdGVtcy5jb20uYnIgICAgICAgIGh0
dHA6Ly9jb2RlLm9zc3lzdGVtcy5jb20uYnINCj4+IE1vYmlsZTogKzU1ICg1MykgOTk4MS03ODU0
ICAgICAgICAgICAgTW9iaWxlOiArMSAoMzQ3KSA5MDMtOTc1MA0KPg0KPg0KDQo=

