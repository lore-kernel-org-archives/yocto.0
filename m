Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF73CE0070C
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 01:49:18 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Mar 2012 01:49:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="114994996"
Received: from pgsmsx509.gar.corp.intel.com ([172.30.13.17])
	by orsmga001.jf.intel.com with ESMTP; 06 Mar 2012 01:49:17 -0800
Received: from pgsmsx104.gar.corp.intel.com (10.221.44.91) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 6 Mar 2012 17:47:56 +0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	PGSMSX104.gar.corp.intel.com (10.221.44.91) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 6 Mar 2012 17:47:56 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Tue, 6 Mar 2012 17:47:54 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: Robert Yang <liezhi.yang@windriver.com>, "Zanussi, Tom"
	<tom.zanussi@intel.com>
Thread-Topic: [yocto] iptables not building on master
Thread-Index: AQHM+1d8pMMUlAszokaFF5v3vrSMOJZcvemQgAA71DuAAALFoA==
Date: Tue, 6 Mar 2012 09:47:54 +0000
Message-ID: <A25F549E4D43CD42B4C02DF47A1913230FCD73D8@SHSMSX102.ccr.corp.intel.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
	<4F55D32F.6050705@windriver.com>
In-Reply-To: <4F55D32F.6050705@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: iptables not building on master
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
X-List-Received-Date: Tue, 06 Mar 2012 09:49:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9iZXJ0IFlhbmcgd3JvdGUgb24gMjAxMi0wMy0wNjoNCj4gSGkgVG9tLA0KPiBUaGFua3MgZm9y
IHRoZSB1cGRhdGUsIHRoZSByb290IGNhdXNlIGlzIHRoYXQgaXB0YWJsZXMgb2ZmZXJzIGEga2Vy
bmVsDQo+IGhlYWRlciBmaWxlIGluY2x1ZGUvbGludXgvdHlwZXMuaCwgYnV0IGl0IG1pcy1tYXRj
aGVzIHRoZSBrZXJuZWwgaW4NCj4gdGhlIHN5c3Jvb3QsIHdlIGNhbiBhZGQgdGhpczoNCj4gI2Rl
ZmluZSBfX2FsaWduZWRfdTY0IF9fdTY0IF9fYXR0cmlidXRlX18oKGFsaWduZWQoOCkpKQ0KPiB0
bzoNCj4gaXB0YWJsZXMtMS40LjEyLjIvaW5jbHVkZS9saW51eC90eXBlcy5oDQo+IHRvIGZpeCB0
aGlzIHByb2JsZW0uDQo+IA0KPiBBbm90aGVyIHNvbHV0aW9uIGlzIHRoYXQgYXMgRGV4dWFuIHN1
Z2dlc3RlZCB3ZSBjaGFuZ2UgdGhlIG9yZGVyIG9mDQo+IHRoZSBpbmNsdWRlIGhlYWRlciBmaWxl
cywgYnV0IEknbSBhZnJhaWQgdGhhdCBtYXkgY2F1c2Ugb3RoZXINCj4gcHJvYmxlbXMsIHNpbmNl
IEkgdGhpbmsgdGhhdCB0aGUgcGtnJ3Mgb3duIGhlYWRlciBmaWxlIHNob3VsZCBoYXZlIGENCj4g
aGlnaGVyIHByaW9yaXR5IHRoYW4gdGhlIHN5c3RlbSdzLCBzbyBJIHRoaW5rIHRoYXQgdGhlIGN1
cnJlbnQgb3JkZXIgaXMgY29ycmVjdC4NCk15IHVuZGVyc3RhbmRpbmcgaXM6DQpSZWNlbnRseSB0
aGUgcHJlZmVycmVkIGxpbnV4LWxpYmMtaGVhZGVycyB3YXMgdXBncmFkZWQgdG8gbGludXgtbGli
Yy1oZWFkZXJzLXlvY3RvLTMuMiwgdGhhdCBpbnRyb2R1Y2VkIGEgbmV3IHN0cnVjdCB0cGFja2V0
X2hkcl92MSBpbiBsaW51eC9pZl9wYWNrZXQuaCBhbmQgdGhlIG5ldyBzdHJ1Y3QgdXNlcyBfX2Fs
aWduZWRfdTY0IGJ1dCBfX2FsaWduZWRfdTY0IGlzIG5vdCBkZWZpbmVkIGluIGlwdGFibGVzJ3Mg
b3duIGxpbnV4L3R5cGVzLmgNCkN1cnJlbnRseSBpbiBpcHRhYmxlcydzIG1ha2VmaWxlLCBpdHMg
b3duIGxpbnV4L3R5cGVzLmggY29tZXMgZmlyc3QgdGhhbiB0aGF0IG9uZSBpbiBvdXIgc3lzcm9v
dCBpbiB0aGUgaGVhZGVyIGZpbGUgc2VhcmNoIG9yZGVyLCBhbmQgSSBub3RpY2VkIGlwdGFibGVz
IGRvZXNuJ3QgaGF2ZSBhIGZpbGUgbGludXgvaWZfcGFja2V0LmguIFNvLCB3aXRoIG91ciBzeXNy
b290J3MgbGludXgvaWZfcGFja2FnZS5oIGFuZCBpcHRhYmxlcydzIG93biBsaW51eC90eXBlcywg
d2UgZ2V0IHRoZSBmYWlsdXJlLg0KDQpJZiB3ZSBkZWZpbmUgX19hbGlnbmVkX3U2NCBfIGluIGlw
dGFibGVzJ3Mgb3duIGxpbnV4L3R5cGVzLmgsIHdlJ3JlIHN0aWxsIHVzaW5nIG91ciBzeXNyb290
J3MgbGludXgvaWZfcGFja2V0Lmggd2l0aCBpcHRhYmxlcydzIGxpbnV4L3R5cGVzLmggLS0gSSB0
aGluayB0aGlzIGlzIG5vdCBjb3JyZWN0IGV2ZW4gaWYgdGhlIGJ1aWxkIGNhbiBwYXNzPyAgSSB0
aGluayB3ZSBzaG91bGQgdXNlIGhlYWRlciBmaWxlcyBjb25zaXN0ZW50bHkuDQoNCg0KVGhhbmtz
LA0KLS0gRGV4dWFuDQoNCg0K

