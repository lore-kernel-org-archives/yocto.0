Return-Path: <maciej.szankin@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96839E0049D
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 04:31:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Oct 2012 04:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="202017985"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 05 Oct 2012 04:31:23 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.154]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.173]) with mapi id
	14.01.0355.002; Fri, 5 Oct 2012 12:31:22 +0100
From: "Szankin, Maciej" <maciej.szankin@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] eglibc fails to build
Thread-Index: Ac2iFb/bupgUDGZRSyqgq4UKsxUblwAAbdCAADSx4MA=
Date: Fri, 5 Oct 2012 11:31:21 +0000
Message-ID: <4D6A41946CB68D4EBC0E4378E53ED77F3ACCE6@IRSMSX104.ger.corp.intel.com>
References: <4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7@IRSMSX104.ger.corp.intel.com>
	<1349348593.18301.83.camel@ted>
In-Reply-To: <1349348593.18301.83.camel@ted>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eglibc fails to build
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
X-List-Received-Date: Fri, 05 Oct 2012 11:31:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyBkZWZhdWx0IGNvbmZpZ3VyYXRpb24gZm9yIHBva3ktdGlueSBhbmQgY29yZS1pbWFn
ZS1ydC4gRXZlbiB3aXRoIG5vIGNoYW5nZXMgdG8gZGVmYXVsdCBjb25maWd1cmF0aW9uIGl0IGZh
aWxzIHRvIGJ1aWxkLg0KIA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUmlj
aGFyZCBQdXJkaWUgW21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnXSAN
ClNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDA0LCAyMDEyIDE6MDMgUE0NClRvOiBTemFua2luLCBN
YWNpZWoNCkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBl
Z2xpYmMgZmFpbHMgdG8gYnVpbGQNCg0KT24gVGh1LCAyMDEyLTEwLTA0IGF0IDEwOjAyICswMDAw
LCBTemFua2luLCBNYWNpZWogd3JvdGU6DQo+IEhpLA0KPiBJ4oCZbSBoYXZpbmcgYSBoYXJkIHRp
bWUgYnVpbGRpbmcgeW9jdG8uDQo+IEnigJltIHRyeWluZyB0byBidWlsZCBhIHRpbnktcG9reSAv
IGNvcmUtaW1hZ2UtcnQgLCBidXQgaXQgZG9lc27igJl0IGV2ZW4gDQo+IG1hdHRlciBhcyBpbiBl
dmVyeSBjb25maWd1cmF0aW9uIGl0IGp1c3QgZmFpbHMgb24gZWdsaWJjLg0KPiBUYXJnZXQgYXJj
aGl0ZWN0dXJlIGlzIHg4Ni4NCj4gIA0KPiBJIHdpbGwga2VlcCBpdCBjbGVhbiBzbyB0aGUgZXJy
b3IgbG9nIHJldHVybmVkIGJ5IGJ1aWxkIGlzIGhlcmUgLT4NCj4gaHR0cDovL3Bhc3RlYmluLmNv
bS9STnY1dThIOA0KPg0KPiBJIHRoaW5rIHRoYXQgb25seSB0aGUgbGFzdCBsaW5lIGFyZSB3aGF0
IG1hdHRlcnMgdGhlIG1vc3QuIFRoZSBvbmx5IA0KPiBpc3N1ZSB0aGF0IEkgc2VlIGlzIG11bHRp
cGxlIHJlZmVyZW5jZSAoc3RhcnRzIEAgMjQxIGxpbmUpLg0KPiAgDQo+IEJlZm9yZSB0aGlzIEkg
aGFkIHByb2JsZW1zIHdpdGggYnVpbGRpbmcgZWxmdXRpbHMgYnV0IGFkZGluZyANCj4gbGliYy1m
dHJhdmVyc2UgYW5kIGxpYmMtcG9zaXgtY2xhbmctd2NoYXIgdG8gDQo+IERJU1RST19GRUFUVVJF
U19MSUJDX0RFRkFVTFRTIGZpeGVkIHRoaXMuDQo+ICANCj4gSXMgdGhlcmUgYW55dGhpbmcgdGhh
dCBJIGNhbiBkbyB3aXRoIGVnbGliYz8NCg0KSXQgc291bmRzIGxpa2UgdGhvc2UgbGliYyBvcHRp
b25zIHlvdSd2ZSBhZGRlZCBoYXZlIHNvbWUgZGVwZW5kZW5jaWVzIG9yIG90aGVyIGNvbmZpZ3Vy
YXRpb24geW91J3JlIG1pc3NpbmcuIEknbSBub3Qgc3VyZSB3aGF0IHRob3NlIGFyZSBidXQgaXQg
ZGVmaW5pdGVseSBsb29rcyBsaWtlIGFuIHVuc3VwcG9ydGVkIHNldCBvZiBlZ2xpYmMgY29uZmln
dXJhdGlvbiBvcHRpb25zIGNvbWJpbmF0aW9ucy4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoNCg0K
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCkludGVsIFRlY2hub2xvZ3kgUG9sYW5kIHNwLiB6IG8uby4KeiBzaWVkemli
YSB3IEdkYW5za3UKdWwuIFNsb3dhY2tpZWdvIDE3Mwo4MC0yOTggR2RhbnNrCgpTYWQgUmVqb25v
d3kgR2RhbnNrIFBvbG5vYyB3IEdkYW5za3UsIApWSUkgV3lkemlhbCBHb3Nwb2RhcmN6eSBLcmFq
b3dlZ28gUmVqZXN0cnUgU2Fkb3dlZ28sIApudW1lciBLUlMgMTAxODgyCgpOSVAgOTU3LTA3LTUy
LTMxNgpLYXBpdGFsIHpha2xhZG93eSAyMDAuMDAwIHpsCgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0
dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUg
dXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0
aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUg
aW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUg
YWxsIGNvcGllcy4K


