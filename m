Return-Path: <caizhenjun@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 918EAE0071A
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 18:32:37 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 9 Sep 2011 09:32:11 +0800
Received: from WX-ExchMB.insigma.com.cn ([fe80::5efe:10.0.1.203]) by
	WX-ExchMB.insigma.com.cn ([fe80::5efe:10.0.1.203%12]) with mapi;
	Fri, 9 Sep 2011 09:32:10 +0800
From: =?gb2312?B?sszV8b78?= <caizhenjun@insigma.com.cn>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "scott.a.garman@intel.com"
	<scott.a.garman@intel.com>
Date: Fri, 9 Sep 2011 09:32:41 +0800
Thread-Topic: [yocto] qemu boot fail(root-nfs: unknown option: mountprog=21111)
Thread-Index: AcxuHRCoGOHKxAjzTAuPFRUDgeb/5AAci1MQ
Message-ID: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EB82BF8@WX-ExchMB.insigma.com.cn>
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EB829AE@WX-ExchMB.insigma.com.cn>
	<4E6870E1.30408@windriver.com>
In-Reply-To: <4E6870E1.30408@windriver.com>
Accept-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?562U5aSNOiBxZW11IGJvb3QgZmFpbChyb290LW5mczogdW5rbm93biBvcHRpb246IG1vdW50cHJvZz0yMTExMSk=?=
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
X-List-Received-Date: Fri, 09 Sep 2011 01:32:48 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQnJ1c2UsU2NvdHQNCiAgICAgICAgVGhlIGluZm9ybWF0aW9uIHlvdSBzdXBwbHkgaXMgaGVs
cGZ1bCB0byBtZS4gSSBoYXZlIGtub3duIHdoYXQgSSBuZWVkIHRvIG1ha2UgUUVNVSBydW4uDQoN
ClRoYW5rcyAoKl5fX14qKQ0KRmV5ZQ0KDQoNCi0tLS0t08q8/tStvP4tLS0tLQ0Kt6K8/sjLOiBC
cnVjZSBBc2hmaWVsZCBbbWFpbHRvOmJydWNlLmFzaGZpZWxkQHdpbmRyaXZlci5jb21dDQq3osvN
yrG85DogMjAxMcTqOdTCOMjVIDE1OjM4DQrK1bz+yMs6ILLM1fG+/A0Ks63LzTogeW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZw0K1vfM4jogUmU6IFt5b2N0b10gcWVtdSBib290IGZhaWwocm9vdC1uZnM6
IHVua25vd24gb3B0aW9uOiBtb3VudHByb2c9MjExMTEpDQoNCk9uIDExLTA5LTA4IDAxOjQ5IEFN
LCCyzNXxvvwgd3JvdGU6DQo+IEhpIEFMTA0KPg0KPiBRRU1VIHJ1biB3ZWxsIHdpdGggYSBwcmUt
YnVpbGQga2VybmVsIGltYWdlIGZyb20geW9jdG8gc2l0ZS4gTm93IGp1c3QNCj4gY2hhbmdlIHRo
ZSBrZXJuZWwgdG8gb25lIGJ1aWx0IG15c2VsZiwgc29tZSBlcnJvciBpbmZvcm1hdGlvbiBhcHBl
YXJlZA0KPiBhYm91dCBuZnMuIE15IGtlcm5lbCBpbWFnZSB2ZXJzaW9uIGlzIDIuNi4zNSBjb25m
aWd1cmVkIGJ5DQo+IHZlcnNhdGlsZV9kZWZjb25maWcuIEVycm9yIGluZm9ybWF0aW9uIGFzIGZv
bGxvd2luZzoNCj4NCj4gobByb290LW5mczogdW5rbm93biBvcHRpb246IG1vdW50cHJvZz0yMTEx
MaGxLHRoaXMgbWVzc2FnZSBzZWFyY2ggbm90aGluZw0KPiBvbiBnb29nbGUuDQo+DQo+IElzIHRo
ZXJlIHNvbWV0aGluZyB3cm9uZyB3aXRoIC5jb25maWc/IEFkZCBub3JtYWxseSBpcyB0aGVyZSBz
b21lDQo+IHNwZWNpYWwgY29uZmlndXJhdGlvbiBJIHNob3VsZCBkbyB3aXRoIGtlcm5lbCB0byBm
aXQgUUVNVQ0KDQpZb3UgY2FuJ3QgY2hhbmdlIG91dCB0aGUga2VybmVsIHZlcnNpb24gLyB0cmVl
IGFuZCBleHBlY3QgdG8gdXNlIHRoZSBmdWxsDQpmdW5jdGlvbmFsaXR5IHByb3ZpZGVkIGJ5IHRo
ZSBsaW51eC15b2N0byBrZXJuZWwuIEluIHRoaXMgY2FzZSB0aGVyZSBhcmUNCmNoYW5nZXMgdG8g
TkZTIGFuZCBycGMgdG8gc3VwcG9ydCBhbHRlcm5hdGUgcnBjIHBvcnRzIGJlaW5nIHVzZWQgdG8g
c3VwcG9ydA0KdXNlcm1vZGUgTkZTLiBZb3Ugd291bGQgbmVlZCB0byBwb3J0IGFuZCB0ZXN0IHRo
ZSBwYXRjaGVzIGZvciB0aGlzDQp3aGljaCBjYW4gYmUgZm91bmQgb24geW9jdG8vc3RhbmRhcmQv
YmFzZQ0KDQpDaGVlcnMsDQoNCkJydWNlDQoNCj4NCj4gQmVzdCByZWdhcmRzDQo+DQo+IEZleWUN
Cj4NCj4gsszV8b78DQo+DQo+IM340MK8vMr109DP3rmry77O78GqzfjKwtK1sr8NCj4NCj4gurzW
3czsxL/JvcK3MjI2usXN+NDCtPPPww0KPg0KPiC157uwLTEzOCA2NzQ1IDE5MTANCj4NCj4NCj4N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9j
dG8gbWFpbGluZyBsaXN0DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0
cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQoNCg==

