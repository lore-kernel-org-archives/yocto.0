Return-Path: <caizhenjun@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BAC8E004DD
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 21:24:05 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 16 Sep 2011 12:23:49 +0800
Received: from WX-ExchMB.insigma.com.cn ([fe80::5efe:10.0.1.203]) by
	WX-ExchMB.insigma.com.cn ([fe80::5efe:10.0.1.203%12]) with mapi;
	Fri, 16 Sep 2011 12:23:48 +0800
From: =?utf-8?B?6JSh5oyv5Yab?= <caizhenjun@insigma.com.cn>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Cui, Dexuan" <dexuan.cui@intel.com>
Date: Fri, 16 Sep 2011 12:24:00 +0800
Thread-Topic: [yocto] tcf-agent fail to run on imx28evk
Thread-Index: AcxztN+pl+kJrqxCSPqXPnD+nZXycgAcw7Tw
Message-ID: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EC00766@WX-ExchMB.insigma.com.cn>
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EC00638@WX-ExchMB.insigma.com.cn>
	<1865303E0DED764181A9D882DEF65FB6BC05D6E36B@shsmsx502.ccr.corp.intel.com>
	<4E720D40.9080409@windriver.com>
In-Reply-To: <4E720D40.9080409@windriver.com>
Accept-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN
MIME-Version: 1.0
Subject: =?UTF-8?B?562U5aSNOiB0Y2YtYWdlbnQgZmFpbCB0byBydW4gb24gaW14Mjhldms=?=
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
X-List-Received-Date: Fri, 16 Sep 2011 04:24:08 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyayBEZXh1YW4sDQoNCiAgICAgICAgVXBkYXRpbmcgUG9reSB0byBsYXRlc3QgdmVyc2lv
biwgdGhlIGlzc3VlIGlzIHJlc29sdmVkLiBOb3cgdGNmLWFnZW50IHJ1biB3ZWxsLg0KDQpUaGFu
a3MNCkZleWUNCg0KLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0K5Y+R5Lu25Lq6OiB5b2N0by1ib3Vu
Y2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5v
cmddIOS7o+ihqCBNYXJrIEhhdGxlDQrlj5HpgIHml7bpl7Q6IDIwMTHlubQ55pyIMTXml6UgMjI6
MzYNCuaUtuS7tuS6ujogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K5Li76aKYOiBSZTogW3lvY3Rv
XSB0Y2YtYWdlbnQgZmFpbCB0byBydW4gb24gaW14MjhldmsNCg0KT24gOS8xNS8xMSA4OjQzIEFN
LCBDdWksIERleHVhbiB3cm90ZToNCj4gQ2FuIHlvdSBwbGVhc2UgdHJ5IHRvIHJlbW92ZSDigJxp
bWFnZS1wcmVsaW5rIiBmcm9tIGNvbmYvbG9jYWwuY29uZuKAmXMgVVNFUl9DTEFTU0VTDQo+IGFu
ZCByZS1idWlsZCBhbiBpbWFnZSB0byBzZWUgaWYgdGhhdCB3b3VsZCBtYWtlIGEgZGlmZmVyZW5j
ZT8NCj4NCj4NCj4NCj4gUmVjZW50bHkgbG9va3MgcHJlbGlua2luZyB3YXMgYnJva2VuIGFuZCB0
aGlzIGNhdXNlcyBzZWdmYXVsdHMgaW4gc29tZSBwYWNrYWdlcy4NCj4NCg0KSSBiZWxpZXZlIHRo
ZSBsYXRlc3QgcHJlbGlua2VyIHVwZGF0ZSB3ZW50IGluIHRoaXMgbW9ybmluZyAoVVMgdGltZSku
ICBTbyB0cnkNCmFnYWluIGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUgaXNzdWUuDQoNClRv
IGNoZWNrIGlmIHlvdSBhcmUgcnVubmluZyB0aGUgbGF0ZXN0IHZlcnNpb24gb2YgdGhlIHByZWxp
bmtlciwNCm1ldGEvcmVjaXBlcy1kZXZ0b29scy9wcmVsaW5rL3ByZWxpbmtfZ2l0LmJiIHNob3Vs
ZCByZWZlcmVuY2UgdGhlIFNSQ1JFViBvZg0KM2UzZjliMDg3NmFhNWFjODNhNzgzYTk1YjhiYWI1
MmNiMzhlZDc4NQ0KDQpUaGVyZSB3YXMgYSBwcmludGYgaXNzdWUgdGhhdCB3YXMgY2F1c2luZyB0
aGluZ3MgdXNpbmcgdGhyZWFkaW5nLCBzcGVjaWZpY2FsbHkNCnRocmVhZCBsb2NhbCBzdG9yYWdl
LCB0byBub3QgYWx3YXlzIHByZWxpbmsgcHJvcGVybHkuICBBUk0gc2VlbWVkIHRvIGhhdmUNCmNv
bXBvbmVudHMgdGhhdCB3ZXJlIHJhbmRvbWx5IGFmZmVjdGVkLg0KDQotLU1hcmsNCg0KPg0KPiBU
aGFua3MsDQo+DQo+IC0tIERleHVhbg0KPg0KPg0KPg0KPiAqRnJvbToqeW9jdG8tYm91bmNlc0B5
b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXQ0K
PiAqT24gQmVoYWxmIE9mICrolKHmjK/lhpsNCj4gKlNlbnQ6KiBUaHVyc2RheSwgU2VwdGVtYmVy
IDE1LCAyMDExIDU6MjcgUE0NCj4gKlRvOiogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiAqU3Vi
amVjdDoqIFt5b2N0b10gdGNmLWFnZW50IGZhaWwgdG8gcnVuIG9uIGlteDI4ZXZrDQo+DQo+DQo+
DQo+IEhpIEFMTCwNCj4NCj4gICAgICAgICAgSSBidWlsZCBvbmUgaW1hZ2UgZm9yIGlteDI4ZXZr
LiBCdXQgdGNmLWFnZW50IGZhaWwgdG8gc3RhcnQgaW4gYm9vdA0KPiBwcm9jZXNzIGFuZCBnZXQg
c2FtZSBmYXVsdCB3aGVuIEkgcnVuIGl0IG1hbnVhbGx5Lg0KPg0KPiBMb2cgbGlrZSB0aGlzOg0K
Pg0KPiAgICAgICAgICAgICAgICAgL0lOSVQ6IEVudGVyaW5nIHJ1bmxldmVsOiA1Lw0KPg0KPiAv
U3RhcnRpbmcgc3lzbG9nZC9rbG9nZDogZG9uZS8NCj4NCj4gL1N0YXJ0aW5nIHRjZi1hZ2VudDog
QWxpZ25tZW50IHRyYXA6IHRjZi1hZ2VudCAoMTUyNikgUEM9MHg0ZTcwNGNhNA0KPiBJbnN0cj0w
eGU3OTEzMTAzIEFkZHJlc3M9MHhmZmZmZmZmZSBGU1IgMHgwMDEvDQo+DQo+IC9TZWdtZW50YXRp
b24gZmF1bHQvDQo+DQo+IC9GQUlMLw0KPg0KPiAvU3RvcHBpbmcgQm9vdGxvZyBkYWVtb246IGJv
b3Rsb2dkLi8NCj4NCj4gICAgICAgICAgSSBoYXZlIHRyaWVkIHRvIHVwZGF0ZSB0aGUgdmVyc2lv
biBvZiB0Y2YtYWdlbnQuIEVycm9yIHN0aWxsIGV4aXN0Lg0KPg0KPg0KPg0KPiBCZXN0IHJlZ2Fy
ZHMNCj4NCj4gRmV5ZQ0KPg0KPg0KPg0KPg0KPg0KPiDolKHmjK/lhpsNCj4NCj4g572R5paw5oqA
5pyv5pyJ6ZmQ5YWs5Y+454mp6IGU572R5LqL5Lia6YOoDQo+DQo+IOadreW3nuWkqeebruWxsei3
rzIyNuWPt+e9keaWsOWkp+WOpg0KPg0KPiDnlLXor50tMTM4IDY3NDUgMTkxMA0KPg0KPg0KPg0K
Pg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiB5b2N0byBtYWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczov
L2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnlvY3RvIG1haWxpbmcgbGlzdA0KeW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZw0KaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3Rp
bmZvL3lvY3RvDQo=

