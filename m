Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59442E00717
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 16:14:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Oct 2012 16:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,567,1344236400"; d="scan'208";a="225320696"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 10 Oct 2012 16:14:15 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 10 Oct 2012 16:14:15 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.180]) with mapi id
	14.01.0355.002; Wed, 10 Oct 2012 16:14:14 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCHv2 2/5] crownbay.conf: specify the 8.0.4 version
	as preferred version of mesa-dri
Thread-Index: AQHNpoUQRUdwR0IzAkSEcQZspqMMEZeyup0AgABxQoA=
Date: Wed, 10 Oct 2012 23:14:14 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C1573165F@ORSMSX106.amr.corp.intel.com>
References: <cover.1349831664.git.nitin.a.kamble@intel.com>
	<5e3291d077a714c7fc69d8bcc308974d75baffd4.1349831664.git.nitin.a.kamble@intel.com>
	<CAJTo0La-n0y4jzvm5x2gFPMzV1eMm3oedvr7eaeN+WC0220seg@mail.gmail.com>
In-Reply-To: <CAJTo0La-n0y4jzvm5x2gFPMzV1eMm3oedvr7eaeN+WC0220seg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCHv2 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Wed, 10 Oct 2012 23:14:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVydG9uLCBSb3NzIFtt
YWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIg
MTAsIDIwMTIgMjoyNSBBTQ0KPiBUbzogS2FtYmxlLCBOaXRpbiBBDQo+IENjOiBaYW51c3NpLCBU
b207IEhhcnQsIERhcnJlbjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTog
W3lvY3RvXSBbUEFUQ0h2MiAyLzVdIGNyb3duYmF5LmNvbmY6IHNwZWNpZnkgdGhlIDguMC40IHZl
cnNpb24NCj4gYXMgcHJlZmVycmVkIHZlcnNpb24gb2YgbWVzYS1kcmkNCj4gDQo+IE9uIDEwIE9j
dG9iZXIgMjAxMiAwMjoxNiwgIDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+
IEF2b2lkIGZvbGxvd2luZyB3YXJuaW5ncyB3aGlsZSBidWlsZGluZyBjcm93bmJheSBCU1BzOg0K
PiA+DQo+ID4gIE5PVEU6IHByZWZlcnJlZCB2ZXJzaW9uIDcuMTEgb2YgbWVzYS1kcmkgbm90IGF2
YWlsYWJsZSAoZm9yIGl0ZW0NCj4gPiB2aXJ0dWFsL2xpYmdsKQ0KPiA+ICBOT1RFOiB2ZXJzaW9u
cyBvZiBtZXNhLWRyaSBhdmFpbGFibGU6IDI6OC4wLjQNCj4gPiAyOjguMC40K2dpdDErYzFmNDg2
N2M4OWFkYjFhNmIxOWQ2NmVjOGFkMTQ2MTE1OTA5ZjBhNw0KPiANCj4gVGhpcyBpcyB0aGUgcHJl
ZmVycmVkIHZlcnNpb24gaW4gb2UtY29yZSwgc28gd291bGRuJ3QgaXQgYmUgZWFzaWVyIHRvIGp1
c3QgZHJvcA0KPiB0aGlzIHByZWZlcnJlZCB2ZXJzaW9uIGxpbmUgYW5kIGF2b2lkIHRoaXMgcmVw
ZWF0aW5nIGl0c2VsZiBpbiB0aGUgZnV0dXJlPw0KPiANCj4gUm9zcw0KDQpIaSBSb3NzLA0KICBU
aGUgcmVhc29uIGlzIHdlIHdhbnQgdG8ga25vdyBpZiB0aGUgdmVyc2lvbiBvZiBtZXNhIGluIG9l
Y29yZSBoYXMgY2hhbmdlZCBvciBub3QuIEVNR0QgaGFzIHNwZWNpZmljIG5lZWRzIG9mIG1lc2Es
IGFuZCBpbiB0aGUgdGVzdGluZyB3ZSBhcmUgbm90IGZpbmRpbmcgYW55IGlzc3VlcyB3aXRoIHY4
LjAuNCBvZiBtZXNhLiBCdXQgdGhhdCBtYXkgbm90IGhvbGQgdHJ1ZSBmb3IgZnV0dXJlIHZlcnNp
b25zIG9mIG1lc2EsIHNvIHdlIHdvdWxkIGxpa2UgdG8gcGluIHRoZSB2ZXJzaW9uIGhlcmUgc28g
d2Uga25vdyB0aGF0IHRoaXMgdmVyc2lvbiB3b3JrcyBhcyBleHBlY3RlZC4NCg0KTml0aW4NCg0K

