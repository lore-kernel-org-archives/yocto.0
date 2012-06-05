Return-Path: <shane.wang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0335EE0044A
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 00:37:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jun 2012 00:37:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151693134"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 05 Jun 2012 00:37:48 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 5 Jun 2012 00:37:48 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.56]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.90]) with mapi id
	14.01.0355.002; Tue, 5 Jun 2012 15:37:45 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] something about gtk+-2.24.8.tar.bz2 that requires
	constant downloading?
Thread-Index: AQHNQuhsFmXH7ZZOZEywa+SNSlqiOZbrVk3Q
Date: Tue, 5 Jun 2012 07:37:45 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC23BCA672@SHSMSX102.ccr.corp.intel.com>
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
	<alpine.DEB.2.02.1206040435060.9995@oneiric>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA4CB@SHSMSX102.ccr.corp.intel.com>
	<CAMKF1srmT8221t=XuXJ-fReqwCK3QQb8ri2rxDjb8bHwFUbh9A@mail.gmail.com>
In-Reply-To: <CAMKF1srmT8221t=XuXJ-fReqwCK3QQb8ri2rxDjb8bHwFUbh9A@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Jun 2012 07:37:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpLaGVtIFJhaiB3cm90ZSBvbsKgMjAxMi0wNi0wNToNCg0KPiBPbiBNb24sIEp1biA0LCAyMDEy
IGF0IDEwOjA0IFBNLCBXYW5nLCBTaGFuZSA8c2hhbmUud2FuZ0BpbnRlbC5jb20+DQo+IHdyb3Rl
Og0KPj4gWWVhaCwgUm9iZXJ0LA0KPj4gDQo+PiBZb3UgZm91bmQgYSBidWcgaW4gYml0YmFrZS4g
SW4gdGhlIGZldGNoIGNvZGUsIGxvY2FsIGRpcmVjdG9yeQ0KPj4gL2hvbWUvcnBqZGF5L2RsL2d0
aystMi4yNC44LnRhci5iejIgaXMgZGVjb2RlZCBhcw0KPj4gL2hvbWUvcnBqZGF5L2RsL2d0ayUy
Qi0yLjI0LjgudGFyLmJ6MiBieSBuZXd1cmkgPSB1cmlfcmVwbGFjZShvcmlndWQsDQo+PiBmaW5k
LCByZXBsYWNlLCBsZCksIHdoaWNoIGlzIGxpbmUgNDgwIGluIGxpYi9iYi9mZXRjaDIvX19pbml0
X18ucHkuIEFuZA0KPj4gbGF0ZXIgb24gaXQgaXMgY2hlY2tlZCB3aGV0aGVyIG9yIG5vdCBleGlz
dGVkIGJ5IGlmIG5vdA0KPj4gb3MucGF0aC5leGlzdHMobmV3cGF0aCkgYW5kIHBhdGguZmluZCgi
KiIpID09IC0xOiwgd2hpY2ggaXMgbGluZSA2MSBpbg0KPj4gbGliL2JiL2ZldGNoMi9sb2NhbC5w
eS4NCj4+IA0KPj4gQWN0dWFsbHkgdGhlIGRpcmVjdG9yeSAvaG9tZS9ycGpkYXkvZGwvZ3RrKy0y
LjI0LjgudGFyLmJ6MiBpcyB0aGVyZSwgYnV0DQo+IC9ob21lL3JwamRheS9kbC9ndGslMkItMi4y
NC44LnRhci5iejIgY2FuJ3QgYmUgZm91bmQgYnkgYml0YmFrZSBjb2RlLiBUaGF0DQo+IGlzIHRo
ZSBwcm9ibGVtLiBUaGVyZWZvcmUsIEd0aysgc2hvdWxkbid0IGJlIGRlY29kZWQgYXMgZ3RrJTJC
Lg0KPj4gDQo+PiBJIGFtIG5vdCBmYW1pbGlhciB3aXRoIHRoZSB3aG9sZSBmZXRjaCBjb2RlIGFu
ZCBob3BlIHNvbWVvbmUgZWxzZSBjYW4NCj4gY29ycmVjdCBpdCwgc28gY2FuIHlvdSBwbGVhc2Ug
ZmlsZSBhIGJ1ZyBmaXJzdD8NCj4gDQo+IGl0cyBwcm9iYWJseSBkdWUgdG8gdXNlIG9mIHVybGxp
Yi51bnF1b3RlIGluIGRlY29kZXVybCBhbmQgbm90IGtlZXBpbmcNCj4gdGhlIHVucXVvdGVkIG5h
bWUgZm9yIHN1YnNlcXVlbnQgdXNlDQo+PiANCj4+IC0tDQo+PiBTaGFuZQ0KDQpDb3JyZWN0Lg0K
DQotLQ0KU2hhbmUNCg==

