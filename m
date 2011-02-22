Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC4624C800B2
	for <yocto@yoctoproject.org>; Tue, 22 Feb 2011 02:18:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Feb 2011 00:18:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="889964628"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2011 00:18:05 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 22 Feb 2011 16:17:27 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 22 Feb 2011 16:17:26 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 22 Feb 2011 16:17:26 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>
Date: Tue, 22 Feb 2011 16:17:23 +0800
Thread-Topic: about the repo
Thread-Index: AcvRdsGQxYYvAz0WRvS3d8BYE2W91gA1SVEgAAW7vOA=
Message-ID: <789F9655DD1B8F43B48D77C5D306597332D34617@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D306597332D33DD0@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95151D7F93@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95151D7F93@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about the repo
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
X-List-Received-Date: Tue, 22 Feb 2011 08:18:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGmjrEplc3NpY2ENCg0KVGhhbmtzIQ0KDQpBbmQgSSBhbSBub3cgd3JpdGluZyBhIHNjcmlwdCBm
b3IgYXV0b21hdGluZyBvdXIgdG9vbGNoYWluIHRlc3QuDQoNCkN1cnJlbnRseTogVGVzdCBpbnB1
dA0KMSkgVGVzdF9pbWFnZSAobWV0YS10b29sY2hhaW4gdGFyYmFsbCwgdGFyZ2V0IHJvb3RmcyB0
YXJiYWxsLCBhZHRfaW5zdGFsbGVyIHRhcmJhbGwpDQoyKSBUZXN0X3Byb2plY3QgKGN2cywgU3Vk
b2t1LCBpcHRhYmxlcyBmb3IgbGlidG9vbHMpDQoNClRlc3QgYXJlYQ0KUGF0aCAxOiBvbGQgbWV0
YS10b29sY2hhaW4gdGVzdGluZw0KMSkgdW50YXIgbWV0YS10b29sY2hhaW4NCjIpIHNvdXJjZSBl
bnYgZmlsZXMsIGFuZCBjb21pbGUgYWxsIHRlc3QgcHJvamVjdHMuDQozKSB1bnRhciByb290ZnMg
Zm9yIGZ1dHVyZSBxZW11IGxhdW5jaGluZyB0ZXN0aW5nLg0KNCkgY29weSB0ZXN0X3Byb2plY3Rz
IGFuZCB0YXJnZXQgdGVzdCBzY3JpcHRzIGludG8gdGFyZ2V0IHJvb3RmcywgYWZ0ZXIgcWVtdSBs
YXVuY2hlcywgd2UgY2FuIHNpbXBseSBydW5uaW5nIHRoZSB0ZXN0IHNjcmlwdA0KDQpBYm92ZSBw
YXJ0IGlzIERvbmUuDQoNClBhdGggMjogQURUIGluc3RhbGxlciAoTm90IHJlYWR5IHlldCkuIE1v
c3QgY29kZSBzaG91bGQgYmUgcmV1c2VkIGZvciB0aGUgYWJvdmUgdHdvIHBhdGguIEkgdGhpbmsu
DQoNCk9ubHkgZm9yIHlvdXIgaW5mby4gSSB3aWxsIHVwZGF0ZSBtb3JlIGRldGFpbHMgaW4gdGhl
IHdlZWtseSBtZWV0aW5nLg0KDQpSZWdhcmRzLA0KY3JpcGluZw0KDQoNCj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmhhbmcsIEplc3NpY2ENCj4gU2VudDogVHVlc2RheSwg
RmVicnVhcnkgMjIsIDIwMTEgMTI6NTEgUE0NCj4gVG86IEtlLCBMaXBpbmc7IEx1LCBMaWFuaGFv
DQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJFOiBhYm91dCB0aGUg
cmVwbw0KPiANCj4gDQo+IEtlLCBMaXBpbmcgd3JvdGU6DQo+ID4gSGksIEplc3NpY2ENCj4gPg0K
PiA+IEkgYW0gdHJ5aW5nIHRoZSBhZHQtaW5zdGFsbGVyLiBUaGUgdGVtcG9yYXJ5IHJlcG8gY29u
dGFpbnMgc29tZQ0KPiA+IHRlc3RpbmcgZmlsZSwgeWV0IHRoZXJlJ3JlIG5vIHNob3J0IHN5bWJv
bGljIG5hbWVzIGZvciB0aGVtLiBGb3INCj4gPiBleGFtcGxlOiB1bmRlciBhZHRyZXBvLnlvY3Rv
cHJvamVjdC5vcmcvMS4wL3Jvb3Rmcy9xZW11YXJtLw0KPiA+IHRoZXJlJ3Mgbm8gc3ltYm9saWMg
ZmlsZSBvZiB6SW1hZ2UtcWVtdWFybS5iaW4gb3INCj4gPiBwb2t5LWltYWdlLW1pbmltYWwtcWVt
dWFybS50YXIuYnoyLg0KPiA+IEFsbCBmaWxlIG5hbWUgY29udGFpbiBsb25nIGRhdGUgaW5mb3Jt
YXRpb24uDQo+ID4NCj4gPiBTbyBteSBxdWVzdGlvbiBpcywgZm9yIGVhc2llciB0ZXN0aW5nLCBj
b3VsZCB5b3Ugc2hhcmUgbWUgaG93IHRvDQo+ID4gY3JlYXRlIHRob3NlIHN5bWJvbGljIG5hbWVz
IE9uIHRoZSByZXBvPyBBbHNvLCBJIGFtIG5vdCBzdXJlIGhvdyB0aGUNCj4gPiBleGlzdGluZyBp
bWFnZXMgZ2VuZXJhdGVkLCB0aGV5J3dlcmUgYXV0b21hdGljYWxseSBnZW5lcmF0ZWQgYnkNCj4g
PiBzY3JpcHRzIG9yIHlvdSBtYW51YWxseSBjcmVhdGVkKGNvcHkpIHRoZW0/DQo+IA0KPiBUaGV5
IHdlcmUgbWFudWFsbHkgY29waWVkIGFuZCBzaW5jZSB5b3UgZG9uJ3QgaGF2ZSBhY2NvdW50LCBJ
J2xsIGNyZWF0ZQ0KPiB0aGUNCj4gc3ltbGluayBmb3IgeW91Li4uDQo+ID4NCj4gPiBUaGFua3Mg
JiBSZWdhcmRzLA0KPiA+IGNyaXBpbmcNCg==

