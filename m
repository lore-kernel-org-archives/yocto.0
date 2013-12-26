Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 173EBE007CA
	for <yocto@yoctoproject.org>; Thu, 26 Dec 2013 04:12:26 -0800 (PST)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 888DF36C0D;
	Thu, 26 Dec 2013 17:42:03 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138]) (using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by jaguar.aricent.com (Postfix) with ESMTP id 7295836C0C;
	Thu, 26 Dec 2013 17:42:03 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.132]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Thu, 26 Dec 2013 17:42:03 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: Marko Lindqvist <cazfi74@gmail.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 26 Dec 2013 17:42:02 +0530
Thread-Topic: [yocto] Passing more than one md5sum in yocto
Thread-Index: Ac8BZxxGLls7Tlt2SI+hsr7yHNp8TQAzGbvA
Message-ID: <17797116383D4341B029FDF34C22BF6A72C568710E@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <17797116383D4341B029FDF34C22BF6A72C5687008@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAF6bG8c8v00U=g0vSXz6PW4OwUp4iHkcYcRT5QJyM=JOX081DA@mail.gmail.com>
In-Reply-To: <CAF6bG8c8v00U=g0vSXz6PW4OwUp4iHkcYcRT5QJyM=JOX081DA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: Re: Passing more than one md5sum in yocto
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
X-List-Received-Date: Thu, 26 Dec 2013 12:12:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB5b3VyIHByb21wdCByZXBseSEhDQoNCg0KUGxlYXNlIGhlbHAgbWUgb3V0IGhv
dyB0byBhZGQgYSBuZXcgZnVuY3Rpb24gdGFzayBpbiB5b2N0by4NCg0KQWN0dWFsbHkgSSB3YW50
IHRvIGFkZCBmdW5jdGlvbiB0aGF0IGNyZWF0ZSBsaW5rcyBhZnRlciBhbGwgZG9wb3B1bGF0ZSBz
eXNyb290IGZ1bmN0aW9uIGZpbmlzaGVkIC5Ib3cgdG8gYWRkIG15IGZ1bmN0aW9uDQoNClJlZ2Fy
ZHMsDQpSb2hpdCBKaW5kYWwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE1h
cmtvIExpbmRxdmlzdCBbbWFpbHRvOmNhemZpNzRAZ21haWwuY29tXQ0KU2VudDogV2VkbmVzZGF5
LCBEZWNlbWJlciAyNSwgMjAxMyA1OjE4IFBNDQpUbzogUm9oaXQyIEppbmRhbA0KQ2M6IHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmc7IFBhdWwgRWdnbGV0b24NClN1YmplY3Q6IFJlOiBbeW9jdG9dIFBh
c3NpbmcgbW9yZSB0aGFuIG9uZSBtZDVzdW0gaW4geW9jdG8NCg0KT24gMjUgRGVjZW1iZXIgMjAx
MyAxMzozNywgUm9oaXQyIEppbmRhbCA8cm9oaXQyLmppbmRhbEBhcmljZW50LmNvbT4gd3JvdGU6
DQo+IEhpLA0KPg0KPiBDYW4gdSBzdWdnZXN0IG1lIGEgd2F5IHRoYXQgd2UgY2FuIHBhc3MgbW9y
ZSB0aGFuIG9uZSBtZDVzdW0gaW4geW9jdG8NCj4gZm9yIHR3byBkaWZmZXJlbnQgc291cmNlcyB0
byBiZSBkb3dubG9hZGVkLg0KPg0KPg0KPg0KPiBTUkNfVVJJID0gIlwNCj4NCj4gICAgICBodHRw
Oi8vZnRwLmdudS5vcmcvZ251L2dsaWJjL2dsaWJjLXBvcnRzLTIuMTMudGFyLmd6XA0KPg0KPiAg
ICAgICAgIGh0dHA6Ly9mdHAuZ251Lm9yZy9nbnUvZ2xpYmMvZ2xpYmMtMi4xMy50YXIuZ3pcDQo+
DQo+ICINCj4NCj4gU1JDX1VSSVttZDVzdW1dID0gIjA5NGUzYzliNTdkYTYwNTkxN2E3ODBhYjI0
NTc1MTg3Ig0KPg0KPiBTUkNfVVJJW3NoYTI1NnN1bV0gPQ0KPiAiNDFjYmRjMDViZDdiMjMzNDY0
ZDY0OWI1OWIzNDQwNWU1YmYzOTk4NTIyNjQwYjlmOThmMmM0ZWI5MWU4NzMyMiINCj4NCj4gU1JD
X1VSSVttZDVzdW1dID0gImZhZmFiZTAxY2I5NzQ4YWNiMGExMWE2ODc5ZWJhYTdlIg0KPg0KPiBT
UkNfVVJJW3NoYTI1NnN1bV0gPQ0KPiAiYmQ5MGQ2MTE5YmNjMjg5OGJlZmQ2ZTFiYmIyY2IxZWQz
YmIxYzI5OTdkNWVhYTZmZGJjYTRlZTE2MTkxYTkwNiINCj4NCj4NCj4NCj4gSSB3YW50IHRvIGRv
IGxpa2UgdGhpcyBidXQgZXZlcnl0aW1lIGl0IGdpdmVzIGVycm9yIGR1ZSB0byBnbGliYy1wb3J0
cw0KPiBpdCBzYXkgbWlzbWF0Y2ggb2YgbWQ1c3VtIGFzIGl0IGNvbnNpZGVyIG1kNXN1bSBhcyBm
YWZi4oCmDQo+DQo+DQo+DQo+DQo+DQo+IEkgdHJpZWQgdG8gbWFrZSBpdCBzZXBhcmF0ZWQgYnV0
IHRoYXQgYWxzbyBkb2Vzbm90IHdvcmsNCj4NCj4NCj4NCj4NCj4NCj4gU1JDX1VSSSA9ICJcDQo+
DQo+DQo+IGh0dHBzOi8vbGF1bmNocGFkLm5ldC9nbGliYy9oZWFkLzIuMTMvK2Rvd25sb2FkL2ds
aWJjLXBvcnRzLTIuMTMudGFyLmd6Ig0KPg0KPg0KPg0KPg0KPg0KPiBTUkNfVVJJW21kNXN1bV0g
PSAiMDk0ZTNjOWI1N2RhNjA1OTE3YTc4MGFiMjQ1NzUxODciDQo+DQo+IFNSQ19VUklbc2hhMjU2
c3VtXSA9DQo+ICI0MWNiZGMwNWJkN2IyMzM0NjRkNjQ5YjU5YjM0NDA1ZTViZjM5OTg1MjI2NDBi
OWY5OGYyYzRlYjkxZTg3MzIyIg0KPg0KPg0KPg0KPiBTUkNfVVJJICs9DQo+ICJodHRwczovL2xh
dW5jaHBhZC5uZXQvZ2xpYmMvaGVhZC8yLjEzLytkb3dubG9hZC9nbGliYy0yLjEzLnRhci5neuKA
nQ0KPg0KPiBTUkNfVVJJW21kNXN1bV0gKz0gImZhZmFiZTAxY2I5NzQ4YWNiMGExMWE2ODc5ZWJh
YTdlIg0KPg0KPiBTUkNfVVJJW3NoYTI1NnN1bV0gKz0NCj4gImJkOTBkNjExOWJjYzI4OThiZWZk
NmUxYmJiMmNiMWVkM2JiMWMyOTk3ZDVlYWE2ZmRiY2E0ZWUxNjE5MWE5MDYiDQo+DQo+DQo+DQo+
DQo+DQo+IFBsZWFzZSBoZWxwIG1lIG91dCBzdWdnZXN0aW5nIHRoZSBwcm9wZXIgd2F5Lg0KPg0K
Pg0KPg0KPiBSZWdhcmRzLA0KPg0KPiBSb2hpdCBKaW5kYWwNCj4NCg0KIFNlZSByZWFkbGluZV82
LjIuYmIgZm9yIGFuIGV4YW1wbGUuDQoNCiBZb3UgZ2l2ZSBlYWNoIHNvdXJjZSBwYWNrYWdlIGEg
bmFtZSBwcm9wZXJ0eSBsaWtlOg0KIFNSQ19VUkkgPSAiaHR0cHM6Ly9sYXVuY2hwYWQubmV0L2ds
aWJjL2hlYWQvMi4xMy8rZG93bmxvYWQvZ2xpYmMtMi4xMy50YXIuZ3o7bmFtZT1nbGliYw0KXA0K
DQpodHRwczovL2xhdW5jaHBhZC5uZXQvZ2xpYmMvaGVhZC8yLjEzLytkb3dubG9hZC9nbGliYy1w
b3J0cy0yLjEzLnRhci5nejtuYW1lPXBvcnRzIg0KDQoNCiBhbmQgc3BlY2lmeSBjaGVja3N1bXMg
dG8gZm9yIHRoZXNlIG5hbWVzDQoNCiBTUkNfVVJJW2dsaWJjLm1kNXN1bV0gPSAiLi4uIg0KIFNS
Q19VUklbZ2xpYmMuc2hhMjU2c3VtID0gIi4uLiINCiBTUkNfVVJJW3BvcnRzLm1kNXN1bV0gPSAi
Li4uIg0KIFNSQ19VUklbcG9ydHMuc2hhMjU2LnN1bV0gPSAiLi4uDQoNCg0KDQoNCiAtIE1MDQoN
Cg0KDQoNCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NClBsZWFzZSByZWZlciB0byBodHRwOi8vd3d3
LmFyaWNlbnQuY29tL2xlZ2FsL2VtYWlsX2Rpc2NsYWltZXIuaHRtbA0KZm9yIGltcG9ydGFudCBk
aXNjbG9zdXJlcyByZWdhcmRpbmcgdGhpcyBlbGVjdHJvbmljIGNvbW11bmljYXRpb24uDQo9PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQo=

