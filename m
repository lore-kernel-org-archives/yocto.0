Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55289E00BD2; Thu, 17 Dec 2015 04:30:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9E7B7E0071A
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 04:30:25 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Thu, 17 Dec 2015 13:30:24 +0100
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "lixin.fnst@cn.fujitsu.com" <lixin.fnst@cn.fujitsu.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 3/3] pacemaker: WARNING Fix
Thread-Index: AQHRNk6p7yxx60p7hE6GlGw9+iF1h57PEAgA
Date: Thu, 17 Dec 2015 12:30:23 +0000
Message-ID: <1450355426.2993.19.camel@sestows129.enea.se>
References: <1450083924-1727-1-git-send-email-lixin.fnst@cn.fujitsu.com>
	<1450083924-1727-3-git-send-email-lixin.fnst@cn.fujitsu.com>
In-Reply-To: <1450083924-1727-3-git-send-email-lixin.fnst@cn.fujitsu.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.141.157]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 3/3] pacemaker: WARNING Fix
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
X-List-Received-Date: Thu, 17 Dec 2015 12:30:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B7332493E0E90F4792154D5CFF660944@local>
Content-Transfer-Encoding: base64

T24gbcOlbiwgMjAxNS0xMi0xNCBhdCAxMjowNSArMDMwMCwgTGkgWGluIHdyb3RlOg0KPiAqIFdB
Uk5JTkc6IFFBIElzc3VlOiBwYWNlbWFrZXI6IEZpbGVzL2RpcmVjdG9yaWVzIHdlcmUgaW5zdGFs
bGVkIGJ1dCBub3Qgc2hpcHBlZCBpbiBhbnkgcGFja2FnZToNCj4gICAvbGliL3N5c3RlbWQvc3lz
dGVtL2NybV9tb24uc2VydmljZQ0KPiAgIFBsZWFzZSBzZXQgRklMRVMgc3VjaCB0aGF0IHRoZXNl
IGl0ZW1zIGFyZSBwYWNrYWdlZC4NCj4gDQo+ICogV0FSTklORzogUUEgSXNzdWU6IHBhY2VtYWtl
ci1saWJzIHJkZXBlbmRzIG9uIGRidXMtbGliLCBidXQgaXQgaXNuJ3QgYSBidWlsZCBkZXBlbmRl
bmN5PyBbYnVpbGQtZGVwc10NCj4gDQo+ICogQWxzbyBNb2RpZnkgU1JDX1VSSSxzaW5jZSBvcmln
aW5hbCBvbmUgaXMgYWx3YXlzIGRvX2ZldGNoIGZhaWxlZC4NCg0KSGkgTGksDQoNCkkgbWVyZ2Vk
IHRoZSBwYXRjaGVzIGFzIGl0J3MgYmV0dGVyIHRvIHVzZSBhIHJlbGVhc2VkIHZlcnNpb24sIGJ1
dCBJDQpuZXZlciBnb3QgYSBmZXRjaCBmYWlsdXJlIG9uIHRoZSBnaXQgcmVwby4gTWF5YmUgeW91
IGhhdmUgc29tZSBuZXR3b3JrDQpyZXN0cmljdGlvbnMgaWYgeW91IGFsd2F5cyBnZXQgaXQ/DQoN
Ci0tQWRyaWFuDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IExpIFhpbiA8bGl4aW4uZm5zdEBjbi5m
dWppdHN1LmNvbT4NCj4gLS0tDQo+ICBtZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvcGFjZW1h
a2VyL3BhY2VtYWtlcl8xLjEuMTMuYmIgfCAxMSArKysrKystLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9t
ZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEuMTMuYmIg
Yi9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEuMTMu
YmINCj4gaW5kZXggMTgwNmZlMS4uZDJlMjM5NSAxMDA3NTUNCj4gLS0tIGEvbWV0YS1jZ2wtY29t
bW9uL3JlY2lwZXMtY2dsL3BhY2VtYWtlci9wYWNlbWFrZXJfMS4xLjEzLmJiDQo+ICsrKyBiL21l
dGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9wYWNlbWFrZXIvcGFjZW1ha2VyXzEuMS4xMy5iYg0K
PiBAQCAtMTQsNyArMTQsNyBAQCBMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21k
NT02YWRjYTNiMzY0NzdjYzc3ZTA0Mzc2ZjlhNDBkZjMyYyBcDQo+ICAgICAgICAgICAgICAgICAg
ICAgIg0KPiAgREVQRU5EUyA9ICJjb3Jvc3luYyBsaWJ4c2x0IG9wZW5haXMgbGlieG1sMiBnbnV0
bHMgcmVzb3VyY2UtYWdlbnRzIGxpYnFiIHB5dGhvbi1uYXRpdmUiDQo+ICANCj4gLVNSQ19VUkkg
PSAiZ2l0Oi8vZ2l0aHViLmNvbS9DbHVzdGVyTGFicy9wYWNlbWFrZXIuZ2l0IFwNCj4gK1NSQ19V
UkkgPSAiaHR0cHM6Ly9naXRodWIuY29tL0NsdXN0ZXJMYWJzLyR7UE59L2FyY2hpdmUvUGFjZW1h
a2VyLSR7UFZ9LnppcCBcDQo+ICAgICAgICAgICAgIGZpbGU6Ly8wMDAxLXBhY2VtYWtlci1maXgt
eG1sLWNvbmZpZy5wYXRjaCBcDQo+ICAgICAgICAgICAgIGZpbGU6Ly8wMDAyLXBhY2VtYWtlci1z
ZWFyY2gtaGVhZGVyLWZyb20tU1RBR0lOR19JTkNESVItdG8td2Fsa2EucGF0Y2ggXA0KPiAgICAg
ICAgICAgICBmaWxlOi8vMDAwMy1wYWNlbWFrZXItZml4LWhlYWRlci1kZWZzLWxvb2t1cC5wYXRj
aCBcDQo+IEBAIC0yMywxMSArMjMsMTIgQEAgU1JDX1VSSSA9ICJnaXQ6Ly9naXRodWIuY29tL0Ns
dXN0ZXJMYWJzL3BhY2VtYWtlci5naXQgXA0KPiAgICAgICAgICAgICBmaWxlOi8vdm9sYXRpbGVz
IFwNCj4gICAgICAgICAgICAgZmlsZTovL3RtcGZpbGVzIFwNCj4gICAgICAgICAgICAiDQo+IC1T
UkNSRVYgPSAiNjA1MmNkMTZjMmY0NTU4MDlmODA4OGFmNzZjZTg2NDgzYmY5ODM1MyINCj4gK1NS
Q19VUklbbWQ1c3VtXSA9ICJkODRhNTE3MzMwNjcyN2E5ODFhNGY4N2UzNjAwNzU5NSINCj4gK1NS
Q19VUklbc2hhMjU2c3VtXSA9ICJlOTYzYmM1OWE1ZDk4YTNlMzQ0MWVhNWNjY2I0MmFhNjdmOWQ3
OTM0YjgwYzg4MThlMTlhZTkxYzVkYTQ4MzMxIg0KPiAgDQo+ICBpbmhlcml0IGF1dG90b29scy1i
cm9rZW5zZXAgcGtnY29uZmlnIHN5c3RlbWQgcHl0aG9uLWRpciB1c2VyYWRkDQo+ICANCj4gLVM9
IiR7V09SS0RJUn0vZ2l0Ig0KPiArUz0iJHtXT1JLRElSfS9wYWNlbWFrZXItUGFjZW1ha2VyLSR7
UFZ9Ig0KPiAgDQo+ICBFWFRSQV9PRUNPTkYgKz0gIlNUQUdJTkdfSU5DRElSPSR7U1RBR0lOR19J
TkNESVJ9IFwNCj4gICAgICAgICAgICAgICAgICAgLS1kaXNhYmxlLWZhdGFsLXdhcm5pbmdzIFwN
Cj4gQEAgLTY1LDcgKzY2LDcgQEAgRklMRVNfJHtQTn0tbGlicyA9ICIke2xpYmRpcn0vbGliY2li
LnNvLiogXA0KPiAgICAgICAgICAgICAgICAgICAgICAke2xpYmRpcn0vbGlic3Rvbml0aGQuc28u
KiBcDQo+ICAgICAgICAgICAgICAgICAgICAgICR7bGliZGlyfS9saWJ0cmFuc2l0aW9uZXIuc28u
KiBcDQo+ICAgICAgICAgICAgICAgICAgICAgIg0KPiAtUkRFUEVORFNfJHtQTn0tbGlicyArPSAi
bGlicWIiDQo+ICtSREVQRU5EU18ke1BOfS1saWJzICs9ICJsaWJxYiBkYnVzLWxpYiINCj4gIEZJ
TEVTXyR7UE59LWNsdXN0ZXItbGlicyA9ICIke2xpYmRpcn0vbGliY3JtY2x1c3Rlci5zby4qIg0K
PiAgUkRFUEVORFNfJHtQTn0tY2x1c3Rlci1saWJzICs9ICJsaWJxYiINCj4gIEZJTEVTXyR7UE59
LXJlbW90ZSA9ICIke3N5c2NvbmZkaXJ9L2luaXQuZC9wYWNlbWFrZXJfcmVtb3RlIFwNCj4gQEAg
LTgzLDcgKzg0LDcgQEAgRklMRVNfJHtQTn0tZGJnICs9ICIke2xpYmRpcn0vY29yb3N5bmMvbGNy
c28vLmRlYnVnIg0KPiAgUkRFUEVORFNfJHtQTn0gPSAiYmFzaCBweXRob24gbGlicWIiDQo+ICAN
Cj4gIFNZU1RFTURfUEFDS0FHRVMgKz0gIiR7UE59LXJlbW90ZSINCj4gLVNZU1RFTURfU0VSVklD
RV8ke1BOfSArPSAicGFjZW1ha2VyLnNlcnZpY2UiDQo+ICtTWVNURU1EX1NFUlZJQ0VfJHtQTn0g
Kz0gInBhY2VtYWtlci5zZXJ2aWNlIGNybV9tb24uc2VydmljZSINCj4gIFNZU1RFTURfU0VSVklD
RV8ke1BOfS1yZW1vdGUgKz0gInBhY2VtYWtlcl9yZW1vdGUuc2VydmljZSINCj4gIA0KPiAgVVNF
UkFERF9QQUNLQUdFUyA9ICIke1BOfSINCj4gLS0gDQo+IDEuOC40LjINCj4gDQo+IA0KPiANCg0K
DQo=

