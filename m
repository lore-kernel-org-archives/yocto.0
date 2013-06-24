Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF658E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 08:08:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Jun 2013 08:08:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,929,1363158000"; d="scan'208";a="259384601"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Jun 2013 08:08:01 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.165]) with mapi id
	14.03.0123.003; Mon, 24 Jun 2013 08:08:00 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
	- user configuration
Thread-Index: Ac5uWGop+mI2fmjhR1eciv3x50rfAQCNXcvQACJr5oAADJ05QP//tLKAgAAC5oCAAHLvgA==
Date: Mon, 24 Jun 2013 15:08:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
In-Reply-To: <CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 15:08:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgZmlndXJlIGlzIGZvciBZb2N0byBQcm9qZWN0IGRvY3VtZW50YXRpb24gc28gSSBhbSBnb2lu
ZyB0byBzaG93IHRoYXQgb2UtaW5pdC1idWlsZC1lbnYgZ2V0cyBpbmZvcm1hdGlvbiBmcm9tIG1l
dGEteW9jdG8uICBJIHVuZGVyc3RhbmQgdGhhdCBPRS1Db3JlIHNhbXBsZSBmaWxlcyBhcmUgaW4g
Im1ldGEiLiAgVGhlcmUgaXMgYSBzaW5nbGUgb2UtaW5pdC1idWlsZC1lbnYgc2NyaXB0IGFuZCBp
dCBsb29rcyBpbiBvbmUgb2YgdHdvIHBsYWNlcy4NCg0KU2NvdHQNCg0KPi0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+RnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50
ZWwuY29tXQ0KPlNlbnQ6IE1vbmRheSwgSnVuZSAyNCwgMjAxMyA3OjU3IEFNDQo+VG86IFJvYmVy
dCBQLiBKLiBEYXkNCj5DYzogUmlmZW5iYXJrLCBTY290dCBNOyB5b2N0b0B5b2N0b3Byb2plY3Qu
b3JnDQo+U3ViamVjdDogUmU6IFt5b2N0b10gRG9jdW1lbnRpbmcgWVAgRGV2ZWxvcG1lbnQgRW52
aXJvbm1lbnQgaW4gbW9yZQ0KPmRldGFpbCAtIHVzZXIgY29uZmlndXJhdGlvbg0KPg0KPk9uIDI0
IEp1bmUgMjAxMyAxNTo0NywgUm9iZXJ0IFAuIEouIERheSA8cnBqZGF5QGNyYXNoY291cnNlLmNh
PiB3cm90ZToNCj4+IE9uIE1vbiwgMjQgSnVuIDIwMTMsIFJpZmVuYmFyaywgU2NvdHQgTSB3cm90
ZToNCj4+DQo+Pj4gV2hhdCBJIHdhcyB0cnlpbmcgdG8gY29udmV5IGhlcmUgaXMgdGhhdCBvZS1p
bml0LWJ1aWxkLWVudiBkcmF3cyBvbg0KPj4+IHNvbWUgZmlsZXMgaW4gdGhlIG1ldGEteW9jdG8g
bGF5ZXIuICBUaGUgc2NyaXB0IG9lLWluaXQtYnVpbGQtZW52IGlzDQo+Pj4gaW4gdGhlIHBva3kg
cmVwb3NpdG9yeSAob3IgcmVmZXJlZCB0byBhcyAiU291cmNlIERpcmVjdG9yeSIgaW4gdGhlDQo+
Pj4gZG9jdW1lbnRhdGlvbikuICBUaGUgc2FtcGxlIGZpbGVzIGFyZSBpbiB0aGUgbWV0YS15b2N0
byBsYXllci4gIEkNCj4+PiB0aG91Z2h0IHRoZSBtZXRhLXlvY3RvIGxheWVyIHdhcyBuZWVkZWQu
Li4gbWF5YmUgSSBhbSB3cm9uZy4gIENhbiBJDQo+Pj4gZ2V0IG1vcmUgY2xhcmlmaWNhdGlvbiBv
biB0aGlzPw0KPj4NCj4+ICAgaSByZWd1bGFybHkgYnVpbGQgaW1hZ2VzIHdpdGhvdXQgYW55ICIq
eW9jdG8qIi1uYW1lZCBsYXllciwgdW5sZXNzDQo+PiBpJ20gbWlzdW5kZXJzdGFuZGluZyB0aGUg
aXNzdWUgaGVyZS4NCj4NCj5tZXRhLXlvY3RvIGlzIHdoYXQgbWFrZXMgUG9reSBQb2t5LCBvdGhl
cndpc2UgaXQgd291bGQgYmUganVzdCBvZS1jb3JlDQo+KyBiaXRiYWtlLiAgb2UtaW5pdC1idWls
ZC1lbnYgbG9va3MgZm9yIHNhbXBsZSBmaWxlcyBpbiAkVEVNUExBVEVDT05GLA0KPndoaWNoIGlz
IG9uZSBvZiB0aGUgdGhpbmdzIHRoYXQgZ2V0IG11bmdlZCBhcw0KPmJpdGJha2Urb2UtY29yZStt
ZXRhLXlvY3RvIGJlY29tZXMgcG9reS4NCj4NCj5Sb3NzDQo=

