Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B323E00B84
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 01:29:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Apr 2014 01:29:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,855,1389772800"; d="scan'208";a="520032428"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2014 01:29:49 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 14 Apr 2014 09:29:46 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.26]) with mapi id
	14.03.0123.003; Mon, 14 Apr 2014 09:29:46 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] New RC for 1.6.
Thread-Index: AQHPVUU0aF2Qvcu//kSI9tcId6jxMpsQvCuA
Date: Mon, 14 Apr 2014 08:29:45 +0000
Message-ID: <1397464205.9306.3.camel@firebird.rb.intel.com>
References: <CAPhnLPDLvgMCN_e050a4sYWh=n=ukZMCjkuTskVWC2XWUd0oJQ@mail.gmail.com>
In-Reply-To: <CAPhnLPDLvgMCN_e050a4sYWh=n=ukZMCjkuTskVWC2XWUd0oJQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.160]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: New RC for 1.6.
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
X-List-Received-Date: Mon, 14 Apr 2014 08:29:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <ED224025F2B67747AAE98AB12E40D10C@intel.com>
Content-Transfer-Encoding: base64

SGkgQmV0aCwNCg0KVGhlcmUgYXJlIHNvbWUgYXJ0aWZhY3RzIG1pc3NpbmcgZm9yIGJlYWdsZWJv
bmUsIHRoZSAuZHRiIGZpbGVzLg0KcmMzIGhhZCB0aGVtLi4uIFRoaXMgaXMgb25seSBhIHByb2Js
ZW0gZm9yIG1pbmltYWwgaW1hZ2VzLCBhbGwgdGhlDQpvdGhlcnMgZG9uJ3QgbmVlZCB0aGUgZHRi
IGZpbGVzLCBidXQgdGhleSBzaG91bGQgYmUgdGhlcmUgbmV2ZXJ0aGVsZXNzDQooYmV0d2VlbiBy
YzMgYW5kIHJjNCBrZXJuZWwgaW1hZ2UgdHlwZSBjaGFuZ2VkIGZyb20gekltYWdlIHRvIHVJbWFn
ZQ0KZndpdywgc28gdGhlIGR0YiBmaWxlIGNoYW5nZWQgbmFtZSB0b28sIGFzIGluDQp1SW1hZ2Ut
YW0zMzV4LWJvbmVibGFjay5kdGIpDQoNCg0KQ2hlZXJzLA0KU3RlZmFuDQoNCk9uIFRodSwgMjAx
NC0wNC0xMCBhdCAyMjoxNSAtMDcwMCwgRmxhbmFnYW4sIEVsaXphYmV0aCB3cm90ZToNCj4gQWxs
LA0KPiANCj4gQSBmZXcgbXVjaCBuZWVkZWQgYnVnIGZpeGVzIGNhbWUgaW4gdG8gZml4IHNvbWUg
b2YgdGhlIGlzc3VlcyB3ZSBzYXcNCj4gd2l0aCByYzMuIFdlIGRlY2lkZWQgdGhhdCB3ZSBzaG91
bGQganVzdCByb2xsIGFuZCByYzQuIFBsZWFzZSBiZWdpbg0KPiB0ZXN0aW5nIHRoaXMgYXMgc29v
biBhcyBwb3NzaWJsZS4NCj4gDQo+IFdlJ3JlIHNlZWluZyBvbmUgaXNzdWUgb24gdGhlIHdvcmxk
IGJ1aWxkOg0KPiANCj4gaHR0cDovL2F1dG9idWlsZGVyLnlvY3RvcHJvamVjdC5vcmcvbWFpbi9i
dWlsZGVycy9uaWdodGx5LXdvcmxkL2J1aWxkcy80Mi9zdGVwcy9CdWlsZEltYWdlcy9sb2dzL3N0
ZGlvDQo+IA0KPiBidXQgYXMgdGhpcyBwcm9kdWNlcyBubyBwdWJsaXNoZWQgYXJ0aWZhY3RzLCBJ
IHRoaW5rIHdlJ3JlIG9rIHdpdGggYXQNCj4gbGVhc3QgdGhlIHJlbGVhc2UgYXJ0aWZhY3RzLg0K
PiANCj4gaHR0cDovL2F1dG9idWlsZGVyLnlvY3RvcHJvamVjdC5vcmcvcHViL3JlbGVhc2VzL3lv
Y3RvLTEuNl9NNS5yYzQNCj4gDQo+IGJpdGJha2UgYmI0OTgwYzYzZGIzODZjZTdkMzBkOWE2Yjg2
ZTlmMzg2MWIzYmMzYQ0KPiBlY2xpcHNlLXBva3ktanVubyAyNmJmYzQwNzc4MWFhMTg1ZjI0NGE0
N2JhNjMxMjAzNDNjZWU0YTM3DQo+IGVjbGlwc2UtcG9reS1rZXBsZXIgMWRmZTFkMmYxMzIyYjVm
ZGE4ZTFhNzYzN2M0NDdiMGUwNjBlZmIzZQ0KPiBtZXRhLWZzbC1hcm0gZDQzMTZmYWVmNzhjZWIw
MWZmMDIzNTc5ZTE1MTEwOTM5ZWM2OTQwOA0KPiBtZXRhLWZzbC1wcGMgYzRmYTFiNDMxZjRlZmM0
OTgyYTE2ODExOWRiOTUyMzZjZmE4Y2FkMw0KPiBtZXRhLWludGVsIGRiODRhY2ZjOGQ5ZWQ4ZGNj
ZDRhNzlkZTM5ZmVlMzM3YmM3Mjk2NjINCj4gbWV0YS1taW5ub3cgN2JkY2QxMTQwYjcyOTU5OGJh
ZTYyNDZhNGJiYzIxYzM5NTBhYWRkOA0KPiBtZXRhLXF0MyAzMDE2MTI5ZDkwYjdhYzg1MTdhNTIy
N2Q4MTlmMTBhZDQxN2I1YjQ1DQo+IG9lY29yZSBkY2ExYjRmMDczZmZmNzQwMzY0ZjA2NmY2YTY4
YmIzYzg2OTdiN2E2DQo+IHBva3kgYTA5NTgyNjEyNjUwNDk5MDRmZDc4YTJiYTAxOThkNDZlNWU2
NWVhOQ0KPiANCj4gDQo+IC0tIA0KPiBFbGl6YWJldGggRmxhbmFnYW4NCj4gWW9jdG8gUHJvamVj
dA0KPiBCdWlsZCBhbmQgUmVsZWFzZQ0KDQo=

