Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D3C3F4C80039
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 20:34:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Dec 2010 18:34:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="359684092"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 09 Dec 2010 18:34:08 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 10 Dec 2010 10:33:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 10 Dec 2010 10:33:12 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Fri, 10 Dec 2010 10:33:10 +0800
Thread-Topic: [yocto] PULL] ADT installer script implementation, Liping Ke
Thread-Index: AcuX29wZJ9XBcNrmTLiN30zMpu71kwANO0yQ
Message-ID: <789F9655DD1B8F43B48D77C5D3065973312DBF9B@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DBD16@shsmsx501.ccr.corp.intel.com>
	<1291924853.1554.933.camel@rex>
In-Reply-To: <1291924853.1554.933.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: PULL] ADT installer script implementation, Liping Ke
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
X-List-Received-Date: Fri, 10 Dec 2010 02:34:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIFJpY2hhcmQgJiBKZXNzaWNhDQoNCkFjdHVhbGx5IEkgYW0gbm90IHN1cmUgdXNlciByZXF1
aXJlbWVudCBhYm91dCB0aGUgY29uZmlndXJhdGlvbiBpbnB1dCBVSSBpbnRlcmFjdGl2ZSBpbnRl
cmZhY2UNCg0KT25lIHBvc3NpYmxlIHNvbHV0aW9uIGlzIA0KMSkgRm9yIHRob3NlIGNhbid0IGJl
IGNoYW5nZWQgYnkgdXNlcnMgKHN1cHBvcnRlZCBhcmNocywgc3VwcG9ydGVkIG9zLCBpdCBpcyBk
ZWZpbmVkIGJ5IHVzKSwgSSBwcmVmZXIgbm8gVUkgaW50ZXJhY3Rpb24sIGFuZCBoYXJkIGNvZGUg
aW4gc2NyaXB0DQoyKSBGb3IgdGhvc2UgY291bGQgYmUgY2hhbmdlZCwgYnV0IHJhcmVseSAobG9n
IGZpbGUgbG9jYXRpb24sIGltYWdlIGRvd25sb2FkaW5nIHRlbXBvcmFyeSBmb2xkZXIsIG9wa2cg
Y29uZmlndXJhdGlvbiBmaWxlbmFtZSksIEkgd2lsbCBzdGlsbCBsZXQgaXQgaW4gdGhlIGNvbmZp
Z3VyYXRpb24gZmlsZSwgDQogICBJZiBjb25maWd1cmF0aW9uIGZpbGUgZG9lcyBub3QgZXhpc3Qs
IEkgd2lsbCBnaXZlIGEgZGVmYXVsdCB2YWx1ZS4ge1F1ZXN0aW9uIGhlcmUsIGRvIHlvdSBuZWVk
IEkgcHJvbXB0IHVzZXIgZWFjaCBvZiB0aG9zZSBjb25maWd1cmF0aW9ucywgYW5kIGluIHNjcmVl
biBnaXZlIGFub3RoZXIgY2hhbmNlIG9mIGNoYW5naW5nIGluc3RlYWQgb2YgY2hhbmdpbmcgY29u
ZmlndXJhdGlvbiBmaWxlPykNCjMpIEZvciB0aG9zZSBuZWVkIHVzZXIgaW5wdXQgKG1vc3RseSBp
biB5b2N0b19pbnN0YWxsZXIuY29uZiksIGlmIHRoaXMgZmlsZSBkb2VzIG5vdCBleGlzdCwgZGly
ZWN0bHkgcHJvbXB0IHVzZXIgZXJyb3JzIGFuZCBleGl0IGluc3RhbGxhdGlvbj8gU2luY2Ugd2l0
aG91dCB0aGlzIGZpbGUsIHdlIGRvbid0IGtub3cgdXNlciB3YW50IHRvIGluc3RhbGwgd2hhdD8N
ClNvIHN0aWxsIHRoZSBxdWVzdGlvbiwgaWYgYWxyZWFkeSBoYXZpbmcgY29uZmlndXJhdGlvbiBm
aWxlLCB3ZSBzdGlsbCBuZWVkIHVzZXIgdG8gaW5wdXQgc29tZXRoaW5nIGluIHNjcmVlbiBiZXNp
ZGVzIFkgb3IgTj8NCg0KQW5vdGhlciBxdWVzdGlvbiBpcyB0aGF0IHNpbmNlIHdlIG5lZWQgdG8g
Yml0YmFrZSB0aGUgaW5zdGFsbGF0aW9uIHRhcmJhbGwgb3V0LiBTbyB3ZSB3aWxsIGZldGNoIG9w
a2cgc291cmNlIHRhcmJhbGwgYnkgYml0YmFrZSBpbnN0ZWFkIG9mIHByb3ZpZGluZyBhIGRlZmF1
bHQgb25lIGluIHRoZSBsb2NhbCBmb2xkZXIuIElzIHRoYXQgcmlnaHQ/DQoNClRoYW5rcyAmIFJl
Z2FyZHMsDQpjcmlwaW5nDQoNCg0KDQoNCj4gSSB0aGluayBpdCB3b3VsZCBtYWtlIG1vc3Qgc2Vu
c2UgZm9yIHRoZSB1c2VyIHRvIGJlIHByb21wdGVkIGZvciB1bnNldA0KPiB2YWx1ZXMgd2l0aCAi
ZW50ZXIiIHNlbGVjdGluZyBhIHNhbmUgc2V0IG9mIGRlZmF1bHRzLg0KPiANCj4gU28gaW4gc3Vt
bWFyeSwgSSB0aGluayB0aGUgcmlnaHQgcGllY2VzIGFyZSB0aGVyZSBpbiB0ZXJtcyBvZg0KPiBj
b25maWd1cmF0aW9uIGJ1dCB0aGUgdXNlciBpbnRlcmFjdGlvbiBuZWVkcyBhIGxvdCBtb3JlIHRo
b3VnaHQuIEkNCj4gZGlkbid0IHRyeSBhbiBhY3R1YWwgaW5zdGFsbGF0aW9uIGFzIEkgZG9uJ3Qg
aGF2ZSBhIGxvY2FsIHNldHVwIHRvDQo+IGFsbG93DQo+IGl0Lg0KPiANCg==

