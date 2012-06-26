Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37BCDE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:23:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jun 2012 07:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160868686"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by azsmga001.ch.intel.com with ESMTP; 26 Jun 2012 07:23:56 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	FMSMSX103.amr.corp.intel.com (10.19.9.34) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 26 Jun 2012 07:23:56 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.47]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.87]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 22:23:54 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] how many meta-toolchain-* targets are there?
Thread-Index: AQHNU3PkwpLre6Xhq0OEqDxwRJhRy5cMp7nS
Date: Tue, 26 Jun 2012 14:23:54 +0000
Message-ID: <54y9bgcvpqnvn1k5suel8fh0.1340720628471@email.android.com>
References: <alpine.DEB.2.02.1206260410060.21539@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206260410060.21539@oneiric>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how many meta-toolchain-* targets are there?
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
X-List-Received-Date: Tue, 26 Jun 2012 14:23:57 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

dG9vbGNoYWluLWdtYWUgaXMgZXhhY3RseSB0aGUgdG9vbGNoYWluLXNkay4gcXRlIGlzIGZvciBl
bWJlZGRlZCBxdA0KDQoNCiJSb2JlcnQgUC4gSi4gRGF5IiA8cnBqZGF5QGNyYXNoY291cnNlLmNh
PrHg0LSjug0KDQoNCiAgc29tZXRoaW5nIHRoYXQgY291bGQgYmUgY2xlYXJlZCB1cCBhIGJpdCBp
biB0aGUgZG9jcyAuLi4gaG93IG1hbnkNCnRvb2xjaGFpbi1yZWxhdGVkIHRhcmdldHMgYXJlIHRo
ZXJlPw0KDQogIGZvciBpbnN0YW5jZSwgcnVubmluZyBiaXRiYWtlIHN1Z2dlc3RzIHRoYXQgY29t
bW9uIHRhcmdldHMgaW5jbHVkZQ0KbWV0YS10b29sY2hhaW4gYW5kIG1ldGEtdG9vbGNoYWluLXNk
ay4gIG9uIHRoZSBvdGhlciBoYW5kLCB0aGUgQURUDQptYW51YWwgbWFrZXMgbm8gcmVmZXJlbmNl
IHRvIG1ldGEtdG9vbGNoYWluLXNkayBidXQgKmRvZXMqIG1lbnRpb24NCm1ldGEtdG9vbGNoYWlu
LWdtYWUgKHdpdGhvdXQgZXhwbGFpbmluZyB0byB0aGUgcmVhZGVyIHdoYXQgdGhhdA0KcmVwcmVz
ZW50cyBidXQgbm9uZXRoZWxlc3MgcmVjb21tZW5kcyB0byB0aGUgcmVhZGVyIHRoYXQgaWYgaGUg
bmVlZHMNCkdNQUUsIGhlIHNob3VsZCBidWlsZCB0aGF0LCB3aGVyZXVwb24gdGhlIHBvb3IgcmVh
ZGVyIGlzIGxlZnQNCndvbmRlcmluZyB3aGF0IHRoZSBoZWNrIEdNQUUgaXMgYW5kIHdoZXRoZXIg
aXQncyBpbXBvcnRhbnQpLg0KDQogIGFuZCBhIHNlYXJjaCBvZiB0aGUgc291cmNlIHNob3dzIGEg
bWV0YS10b29sY2hhaW4tcXRlLCBmb3Igd2hpY2ggaQ0KY2FuIHNlZSBubyBtZW50aW9uIHdoYXRl
dmVyIGluICphbnkqIG9mIHRoZSBkb2NzLg0KDQogIHRob3VnaHRzPw0KDQpyZGF5DQoNCi0tDQoN
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQ0KUm9iZXJ0IFAuIEouIERheSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIE90dGF3YSwgT250YXJpbywgQ0FOQURBDQogICAgICAgICAgICAgICAgICAgICAg
ICBodHRwOi8vY3Jhc2hjb3Vyc2UuY2ENCg0KVHdpdHRlcjogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBodHRwOi8vdHdpdHRlci5jb20vcnBqZGF5DQpMaW5rZWRJbjogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaHR0cDovL2NhLmxpbmtlZGluLmNvbS9pbi9ycGpk
YXkNCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCnlvY3RvIG1haWxpbmcgbGlzdA0KeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

