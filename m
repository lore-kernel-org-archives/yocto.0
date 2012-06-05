Return-Path: <shane.wang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AF88E013A6
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 07:51:00 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Jun 2012 07:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151854819"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 05 Jun 2012 07:50:59 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 5 Jun 2012 07:50:58 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.56]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.90]) with mapi id
	14.01.0355.002; Tue, 5 Jun 2012 22:50:56 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] something about gtk+-2.24.8.tar.bz2 that requires
	constant downloading?
Thread-Index: AQHNQx+5ziOewFvn2E2rQLOvnGEAGpbrzg2Q
Date: Tue, 5 Jun 2012 14:50:55 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC23BCA9CF@SHSMSX102.ccr.corp.intel.com>
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
	<alpine.DEB.2.02.1206040435060.9995@oneiric>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA4CB@SHSMSX102.ccr.corp.intel.com>
	<CAMKF1srmT8221t=XuXJ-fReqwCK3QQb8ri2rxDjb8bHwFUbh9A@mail.gmail.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA672@SHSMSX102.ccr.corp.intel.com>
	<alpine.DEB.2.02.1206050929001.4572@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206050929001.4572@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: something about gtk+-2.24.8.tar.bz2 that requires constant downloading?
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
X-List-Received-Date: Tue, 05 Jun 2012 14:51:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9iZXJ0IFAuIEouIERheSB3cm90ZSBvbsKgMjAxMi0wNi0wNToNCj4gICBhdCB0aGlzIHBvaW50
LCBoYXMgdGhlIHByb2JsZW0gYmVlbiBpZGVudGlmaWVkPyAgb3IgZG9lcyB0aGlzIHN0aWxsDQo+
IHJlcXVpcmUgYSBidWd6aWxsYSBzdWJtaXNzaW9uPyAgaXQgd291bGQgYXBwZWFyIHRoYXQgdGhl
IGlzc3VlDQo+IGludm9sdmVzIGFueSBwYWNrYWdlIHdpdGggYSAiKyIgaW4gdGhlIHBhY2thZ2Ug
bmFtZSB3aGljaCwgZm9yIG5vdywNCj4gYXBwZWFycyB0byBiZSBqdXN0IHRoYXQgZ3RrKyBwYWNr
YWdlLiAgd291bGQgYW55IG90aGVyIHNwZWNpYWwNCj4gY2hhcmFjdGVycyB0cmlnZ2VyIHRoaXM/
ICB0aGF0J3MgdGhlIG9ubHkgcGFja2FnZSBpJ3ZlIHRyaXBwZWQgb3Zlcg0KPiB0aGF0IGNhdXNl
ZCB0aGlzIGJlaGF2aW91ci4NCj4gDQo+IHJkYXkNCj4NCg0KWWVzLCBpdCBoYXMgYmVlbiBpZGVu
dGlmaWVkLiBJZiB5b3UgY2FuJ3Qgc3VibWl0IGEgYnVnLCBJIGNhbiBkby4NClllcywgSSBiZWxp
ZXZlIG90aGVyIHNwZWNpYWwgY2hhcmFjdGVycyB3aWxsIHRyaWdnZXIgdGhhdC4NCg0KSnVzdCBi
ZWNhdXNlIEkgYW0gbm90IGZhbWlsaWFyIHdpdGggYWxsIGZldGNoIGNvZGUsIEkgY2FuIGZpeCBp
dCBmb3IgZ3RrKyBub3cgYnV0IEkgYW0gbm90IHN1cmUgd2hldGhlciB0aGF0IGZpeCB3aWxsIGJy
aW5nIGFueSByZWdyZXNzaW9uIGJ1Z3MuDQpHaXZlIG1lIG1vcmUgdGltZS4NCg0KLS0NClNoYW5l
DQo=

