Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AB73E00717
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 16:10:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Oct 2012 16:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,567,1344236400"; d="scan'208";a="232455101"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2012 16:10:33 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 10 Oct 2012 16:10:33 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.154]) with mapi id
	14.01.0355.002; Wed, 10 Oct 2012 16:10:32 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH 2/5] crownbay.conf: specify the 8.0.4 version
	as preferred version of mesa-dri
Thread-Index: AQHNpmsEn7tdN8qRbUGwV5alcKA1mJeyuo4AgABu8SA=
Date: Wed, 10 Oct 2012 23:10:31 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C1573164F@ORSMSX106.amr.corp.intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
	<CAJTo0LYmbD=HJEECJC7usk7A7tLwDxnrFm-pxUoRo2=qyKGyvQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYmbD=HJEECJC7usk7A7tLwDxnrFm-pxUoRo2=qyKGyvQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Wed, 10 Oct 2012 23:10:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVydG9uLCBSb3NzIFtt
YWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIg
MTAsIDIwMTIgMjoyNCBBTQ0KPiBUbzogS2FtYmxlLCBOaXRpbiBBDQo+IENjOiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnOyBaYW51c3NpLCBUb207IEhhcnQsIERhcnJlbg0KPiBTdWJqZWN0OiBSZTog
W3lvY3RvXSBbUEFUQ0ggMi81XSBjcm93bmJheS5jb25mOiBzcGVjaWZ5IHRoZSA4LjAuNCB2ZXJz
aW9uIGFzDQo+IHByZWZlcnJlZCB2ZXJzaW9uIG9mIG1lc2EtZHJpDQo+IA0KPiBIaSBOaXRpbiwN
Cj4gDQo+IEZyb20gd2hhdCBJIHVuZGVyc3RhbmQsIEVNR0QncyBNZXNhIGRyaXZlciB3aWxsIG9u
bHkgd29yayBjb3JyZWN0bHkgd2l0aCBhDQo+IE1lc2EgdGhhdCBtYXRjaGVzIGV4YWN0bHkgdGhl
IGNvbmZpZ3VyYXRpb24gdGhhdCB3YXMgdXNlZCB0byBidWlsZCBFTUdELCBhcw0KPiB0aGUgZHJp
dmVyIGludGVyZmFjZSBpc24ndCBzdGFibGUuICBIYXZlIHlvdSB0ZXN0ZWQgdGhlIEdMIHN1cHBv
cnQgd2l0aCBtb3JlDQo+IHRoYW4gZ2x4aW5mbz8NCj4gDQo+IFJvc3MNCg0KSGkgUm9zcywNCiAg
ICBJIGZpbmQgdGhhdCBlbWdkIGRyaXZlciBpdHNlbGYgaXMgcHJvdmlkaW5nIHNvbWUgb2YgdGhl
IG1lc2EgbGlicmFyaWVzICYgaGVhZGVycy4gQW5kIEkgY291bGQgbm90IGZpbmQgYSBtYXRjaCBm
b3IgdGhvc2UgaW4gYW55IG9mIHRoZSByZWxlYXNlZCBtZXNhIHNvdXJjZXMgYXMgd2VsbCBhcyBt
ZXNhIGdpdCByZXBvc2l0b3J5LiBTbyBJIGRvbid0IHNlZSBhIHdheSB0byBtYXRjaCBtZXNhIGNv
ZGUgZXhhY3RseS4gSWYgc3VjaCBtZXNhIGlzIGF2YWlsYWJsZSBpbiBjbG9zZWQgc291cmNlLCBJ
IGFtIG5vdCBhd2FyZSBvZiBpdCBlaXRoZXIuIA0KICAgU28gZmFyIEkgaGF2ZSB0ZXN0ZWQgd2l0
aCBnbHhnZWFycyBhbmQgZ2x4aW5mbyB3aXRoIHRoZSA4LjAuNCB2ZXJzaW9uIG9mIG1lc2EtZHJp
LiBBbmQgSSBkaWQgbm90IGZpbmQgYW55IGlzc3Vlcy4gQW5kIFRvbSBoYXMgYmVlbiB0ZXN0aW5n
IHRoZSBzYW1lIHdheSBzbyBmYXIgd2l0aG91dCBhbnkgY29tcGxhaW50cy4gSWYgdGhlcmUgaXMg
c29tZXRoaW5nIHdoaWNoIGNhbiBoZWxwIHRoaW5ncyB0ZXN0IGZ1cnRoZXIsIGl0IHdvdWxkIGJl
IG5pY2UgdG8gYWRkIGl0IHRvIHRoZSBwb2t5IHRyZWU7IHNvIHRoYXQgaXQgY2FuIGJlY29tZSBw
YXJ0IG9mIHN0YW5kYXJkIHRlc3RzLCBhbmQgUUEgYWxzbyBjYW4gdXNlIGl0Lg0KDQpOaXRpbg0K

