Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 714FE4C80053
	for <yocto@yoctoproject.org>; Sat, 12 Feb 2011 03:30:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Feb 2011 01:30:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,461,1291622400"; d="scan'208";a="601995527"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 12 Feb 2011 01:30:47 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 12 Feb 2011 17:30:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 12 Feb 2011 17:30:45 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Ke, Liping" <liping.ke@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"mark.hatle@windriver.com" <mark.hatle@windriver.com>
Date: Sat, 12 Feb 2011 17:30:44 +0800
Thread-Topic: [yocto] Master build error caused a small typo by commit today
	: fetch2: unpack revision
Thread-Index: AcvKcn5yiZZjPBwLS0ep3sKVS3OvqAAFrthQAACrA9A=
Message-ID: <1865303E0DED764181A9D882DEF65FB68629835F3E@shsmsx502.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Master build error caused a small typo by commit today : fetch2: unpack revision
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
X-List-Received-Date: Sat, 12 Feb 2011 09:30:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTWFyaywNCkFzIExpcGluZyBzYWlkLCB0aGUgZm9sbG93aW5nIGNoYW5nZSBicmVha3MgYnVp
bGRpbmcgeG9yZy1taW5pbWFsLWZvbnRzIGFzIGRlc3RkaXIgaXMgbm90IGNvcnJlY3QuDQpDYW4g
eW91IHBsZWFzZSBleHBsYWluIHRoZSBhY3R1YWwgZGlmZmVyZW50IGJldHdlZW4gY3AgYW5kIHRh
ciBoZXJlPyBJIHRoaW5rICJjcCAtcCIgaXMgc2ltaWxhciB0byAidGFyIC14IC1wIiBoZXJlPw0K
DQpAQCAtNzA2LDE3ICs3MjAsMTcgQEAgY2xhc3MgRmV0Y2hNZXRob2Qob2JqZWN0KToNCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZGVzdGRpciA9ICIuIg0KICAgICAgICAgICAgICAgICAg
ICAgICAgIGVsaWYgbm90IG9zLmFjY2VzcygiJXMvJXMiICUgKHJvb3RkaXIsIGRlc3RkaXIpLCBv
cy5GX09LKToNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3MubWFrZWRpcnMoIiVzLyVz
IiAlIChyb290ZGlyLCBkZXN0ZGlyKSkNCi0gICAgICAgICAgICAgICAgICAgIGNtZCA9ICdjcCAt
cFBSICVzICVzLyVzLycgJSAoZmlsZSwgcm9vdGRpciwgZGVzdGRpcikNCisgICAgICAgICAgICAg
ICAgICAgICNjbWQgPSAnY3AgLXBQUiAlcyAlcy8lcy8nICUgKGZpbGUsIHJvb3RkaXIsIGRlc3Rk
aXIpDQorICAgICAgICAgICAgICAgICAgICBjbWQgPSAndGFyIC1jZiAtIC1DICIlZCIgLXBzIC4g
fCB0YXIgLXhmIC0gLUMgIiVzLyVzLyInICUgKGZpbGUsIHJvb3RkaXIsIGRlc3RkaXIpDQoNCg0K
VGhhbmtzLA0KLS0gRGV4dWFuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiB5
b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1ib3VuY2VzQHlvY3Rv
cHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBLZSwgTGlwaW5nDQpTZW50OiAyMDExxOoy1MIxMsjV
IDE1OjUzDQpUbzogS2UsIExpcGluZzsgcmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9y
ZzsgbWFyay5oYXRsZUB3aW5kcml2ZXIuY29tDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K
U3ViamVjdDogUmU6IFt5b2N0b10gTWFzdGVyIGJ1aWxkIGVycm9yIGNhdXNlZCBhIHNtYWxsIHR5
cG8gYnkgY29tbWl0IHRvZGF5IDogZmV0Y2gyOiB1bnBhY2sgcmV2aXNpb24NCg0KSGksIE1hcmsN
Cg0KQWZ0ZXIgZml4aW5nIHRoaXMgdHlwbywgSSBmb3VuZCBhbm90aGVyIGVycm9yIHdoZW4gYml0
YmFrZSB4b3JnLW1pbmltYWwtZm9udHMsDQpJdCB3aWxsIHJlcG9ydA0KRVJST1I6IEZ1bmN0aW9u
ICdvcmctbWluaWFsLWZvbnRzOiBMSUNfRklMRVNfQ0hLU1VNIHBvaW50cyB0byBpbnZhbGlkIGZp
bGU6IC4uL21pc2MvZm9udHMvYWxpYXMnIGZhaWxlZA0KDQpJIGNoZWNrZWQgdGhlIGZvbGRlciBv
ZiBidWlsZC90bXAvd29yay9hbGwtcG9reS1saW51eC94b3JnLW1pbmltYWwtZm9udHMtMV8xLjAt
cjAsIGZvbnRzLmFsaWFzIGZvbnRzLmRpcg0KQ3Vyc29yLnBjZi5neiB3ZSBub3QgdW5kZXIgbWlz
YyBzdWJmb2xkZXIgYXMgaXRzIGV4cGVjdGF0aW9uLCBidXQgb24gdGhlIG91dGVyIGZvbGRlciwg
DQpzZWVtcyB0aGUgU1JDX1VSST0iZmlsZTovL21pc2MiIGRlZmluZWQgaW4gdGhlIFhvcmctbWlu
aW1hbC1mb250cy5iYiBkb2VzIG5vdCB3b3JrLg0KDQpUaGFua3MgYSBsb3QhDQpjcmlwaW5nDQoN
Cg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0by1ib3VuY2VzQHlv
Y3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by0NCj4gYm91bmNlc0B5b2N0b3Byb2plY3Qub3Jn
XSBPbiBCZWhhbGYgT2YgS2UsIExpcGluZw0KPiBTZW50OiBTYXR1cmRheSwgRmVicnVhcnkgMTIs
IDIwMTEgMTowNiBQTQ0KPiBUbzogcmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZzsg
bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tDQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+
IFN1YmplY3Q6IFt5b2N0b10gTWFzdGVyIGJ1aWxkIGVycm9yIGNhdXNlZCBhIHNtYWxsIHR5cG8g
YnkgY29tbWl0DQo+IHRvZGF5IDogZmV0Y2gyOiB1bnBhY2sgcmV2aXNpb24NCj4gDQo+IEhpLCBh
bGwNCj4gDQo+IEp1c3QgZm91bmQgYSBzbWFsbCB0eXBvIHdoaWNoIGNhdXNlZCBidWlsdCBlcnJv
ciB0b2RheS4gVGhlICIlZCIgKGZpbGUpDQo+IHNob3VsZCBiZSBjaGFuZ2VkIHRvICIlcyIsIG90
aGVyd2lzZSwgY29tcGlsZSBlcnJvci4NCj4gDQo+IEFueWJvZHkgY291bGQgaGVscCB0byBtb2Rp
ZnkgdGhlIHNtYWxsIGJ1ZyBpZiB5b3UncmUgaGFwcGVuaW5nIHNlbmRpbmcNCj4gcGF0Y2hlcy4N
Cj4gDQo+IFRoYW5rcyBhIGxvdCBmb3IgeW91ciBoZWxwIQ0KPiBjcmlwaW5nDQo+IA0KPiANCj4g
DQo+IA0KPiANCj4gYXV0aG9yCU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT4J
MjAxMS0wMi0xMQ0KPiAxNzo0Mzo1NCAoR01UKQ0KPiBjb21taXR0ZXIJIFJpY2hhcmQgUHVyZGll
IDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPgkyMDExLQ0KPiAwMi0xMiAwMDoz
MDoyOSAoR01UKQ0KPiBjb21taXQJM2ZhYTYzNWZkNDA4Njk1ZGQ1Yjc1NGZkYTNmNjA2MGRkNjcw
YjgxZCAocGF0Y2gpIChzaWRlLWJ5LQ0KPiBzaWRlIGRpZmYpDQo+IHRyZWUJZDBiYTVkMmQ0YWNj
YTlmNzc0ODAyOTExNmYzYTc0ODc3ZWU4OTljOQ0KPiBwYXJlbnQJZTU2ZjYzYTI4NDNlNWE3ZDcw
ZmQ2MGUwYWFlZDRkOTYyYTI3N2RhNyAoZGlmZikNCj4gZG93bmxvYWQJcG9reS0zZmFhNjM1ZmQ0
MDg2OTVkZDViNzU0ZmRhM2Y2MDYwZGQ2NzBiODFkLnppcA0KPiBwb2t5LTNmYWE2MzVmZDQwODY5
NWRkNWI3NTRmZGEzZjYwNjBkZDY3MGI4MWQudGFyLmd6DQo+IHBva3ktM2ZhYTYzNWZkNDA4Njk1
ZGQ1Yjc1NGZkYTNmNjA2MGRkNjcwYjgxZC50YXIuYnoyDQo+IA0KPiANCj4gDQo+IEBAIC03MDYs
MTcgKzcyMCwxNyBAQCBjbGFzcyBGZXRjaE1ldGhvZChvYmplY3QpOg0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGRlc3RkaXIgPSAiLiINCj4gICAgICAgICAgICAgICAgICAgICAgICAg
IGVsaWYgbm90IG9zLmFjY2VzcygiJXMvJXMiICUgKHJvb3RkaXIsDQo+IGRlc3RkaXIpLCBvcy5G
X09LKToNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcy5tYWtlZGlycygiJXMvJXMi
ICUgKHJvb3RkaXIsIGRlc3RkaXIpKQ0KPiAtICAgICAgICAgICAgICAgICAgICBjbWQgPSAnY3Ag
LXBQUiAlcyAlcy8lcy8nICUgKGZpbGUsIHJvb3RkaXIsDQo+IGRlc3RkaXIpDQo+ICsgICAgICAg
ICAgICAgICAgICAgICNjbWQgPSAnY3AgLXBQUiAlcyAlcy8lcy8nICUgKGZpbGUsIHJvb3RkaXIs
DQo+IGRlc3RkaXIpDQo+ICsgICAgICAgICAgICAgICAgICAgIGNtZCA9ICd0YXIgLWNmIC0gLUMg
IiVkIiAtcHMgLiB8IHRhciAteGYgLSAtQw0KPiAiJXMvJXMvIicgJSAoZmlsZSwgcm9vdGRpciwg
ZGVzdGRpcikNCj4gDQo+IA0KPiANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0
bw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnlvY3Rv
IG1haWxpbmcgbGlzdA0KeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KaHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

