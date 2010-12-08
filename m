Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A26BB4C8122E
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 10:29:57 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 08:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="865945189"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 08:29:57 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi; Wed, 8 Dec 2010
	08:29:57 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Wed, 8 Dec 2010 08:29:55 -0800
Thread-Topic: strange bitbake error
Thread-Index: AcuWw5rsiC4pAOHoSuK5/JTv+XC9ogAMVKrQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE940254AC91@orsmsx504.amr.corp.intel.com>
References: <9DA5872FEF993D41B7173F58FCF6BE940254AA53@orsmsx504.amr.corp.intel.com>
	<1291804501.1554.264.camel@rex>
In-Reply-To: <1291804501.1554.264.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: strange bitbake error
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
X-List-Received-Date: Wed, 08 Dec 2010 16:29:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gT24gVHVlLCAyMDEwLTEyLTA3IGF0IDE5OjE1IC0wODAwLCBLYW1ibGUsIE5pdGluIEEg
d3JvdGU6DQo+ID4gICBJIGFtIGdldHRpbmcgZm9sbG93aW5nIGJpdGJha2UgZXJyb3IuIEkgYWxz
byB0cmllZCBwYXNzaW5nIOKAk0QNCj4gb3B0aW9uDQo+ID4gdG8gYml0YmFrZSwgYnV0IEkgZGlk
IG5vdCBmaW5kIGFueXRoaW5nIHVzZWZ1bC4gQWxzbyBiZWxsb3cgaXMgdGhlDQo+ID4gY2hhbmdl
IHdoaWNoIGlzIGNhdXNpbmcgdGhpcyBlcnJvci4NCj4gPg0KPiA+IEkgZG9u4oCZdCBzZWUgYW55
dGhpbmcgb2JsaXZpb3VzIGhlcmUuIEFzIEkgdW5kZXJzdGFuZCBqdXN0IGNoYW5naW5nDQo+IHRo
ZQ0KPiA+IHJlY2lwZSBmcm9tIGN2cyB0byBnaXQgc3JjX3VyaSBoYXMgY2F1c2VkIHRoaXMgaXNz
dWUuDQo+IA0KPiBJdHMgcHJvYmFibHkgZXhhY3RseSB0aGlzIGNoYW5nZSB0aGUgYnJlYWtzIHRo
aW5ncy4gZ2l0IFNSQ19VUklzIGhhdmUgYQ0KPiBkZXBlbmRlbmN5IG9uIGdpdC1uYXRpdmUuIGdp
dC1uYXRpdmUgcHJvYmFibHkgZGVwZW5kcyBvbg0KPiBnbnUtY29uZmlnLW5hdGl2ZSBpbmRpcmVj
dGx5LiBUaGUgZW5kIHJlc3VsdCBpcyBhIGNpcmN1bGFyIGRlcGVuZGVuY3kuDQo+IEJpdGJha2Ug
dHJpZWQgdG8gd29yayB0aGlzIG91dCBidXQgb2J2aW91c2x5IGdvdCBsb3N0IGluIHRoZSBjaXJj
dWxhcg0KPiBsb2dpYy4NCj4gDQpUaGFua3MgUmljaGFyZCBmb3IgdGhlIGNsYXJpZmljYXRpb24u
IFNvIHdoYXQgd291bGQgYmUgcG9zc2libGUgc29sdXRpb24gZm9yIHRoaXMgY2lyY3VsYXIgZGVw
ZW5kZW5jeSBpc3N1ZT8gSSBjYW4gY2hlY2sgaWYgd2UgY2FuIGdldCB0aGUgbGF0ZXN0IGdudS1j
b25maWcgdmlhIGN2cy4gQW55IG90aGVyIG9yIGJldHRlciBzb2x1dGlvbj8NCg0KVGhhbmtzLA0K
Tml0aW4NCg==

