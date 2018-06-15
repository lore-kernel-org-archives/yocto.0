Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 882BEE010A7; Fri, 15 Jun 2018 03:54:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7682BE009AC
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 03:54:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 6803B1871F;
	Fri, 15 Jun 2018 12:54:32 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id FxXFXu_uPjHb; Fri, 15 Jun 2018 12:54:30 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id E2383189ED;
	Fri, 15 Jun 2018 12:54:29 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D03A61A065;
	Fri, 15 Jun 2018 12:54:29 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C3B331A064;
	Fri, 15 Jun 2018 12:54:29 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Fri, 15 Jun 2018 12:54:29 +0200 (CEST)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by seth.se.axis.com (Postfix) with ESMTP id B71D42F60;
	Fri, 15 Jun 2018 12:54:29 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Fri, 15 Jun 2018 12:54:29 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1365.000; Fri, 15 Jun 2018 12:54:29 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] devtool finish & patch order
Thread-Index: AQHUA5SJPc8XwKUZd06zZnJXeJVK26RfM+YAgAEf8OCAAEhtAIAAiNIA
Date: Fri, 15 Jun 2018 10:54:29 +0000
Message-ID: <30c8258348d04952b48dd871c6472b43@XBOX02.axis.com>
References: <CALh9vaXCbqBe_49fi3OFs_Cj56s=J7Bvdv6f8BfWz9QMhmJQUw@mail.gmail.com>
	<CANNYZj9bbraOoEJChm2X7Ws1+h9+K86Kissdh2dWaPtr1PiOEw@mail.gmail.com>
	<3d30eca24f6f4709aa81cc5bf31c5850@XBOX02.axis.com>
	<CANNYZj9HprmGYL3V_2me2q2s-K0A6Um+Z6LBN+hYw5X8cnr9pg@mail.gmail.com>
In-Reply-To: <CANNYZj9HprmGYL3V_2me2q2s-K0A6Um+Z6LBN+hYw5X8cnr9pg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	"Paul Eggleton \(paul.eggleton@linux.intel.com\)"
	<paul.eggleton@linux.intel.com>
Subject: Re: devtool finish & patch order
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
X-List-Received-Date: Fri, 15 Jun 2018 10:54:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBbGV4YW5kZXIgS2FuYXZpbiBb
bWFpbHRvOmFsZXgua2FuYXZpbkBnbWFpbC5jb21dDQo+IFNlbnQ6IGRlbiAxNSBqdW5pIDIwMTgg
MDY6MzcNCj4gVG86IFBldGVyIEtqZWxsZXJzdGVkdCA8cGV0ZXIua2plbGxlcnN0ZWR0QGF4aXMu
Y29tPg0KPiBDYzogVGltIEhhbW1lciA8dGRoYW1tZXI5OUBnbWFpbC5jb20+OyBZb2N0byBkaXNj
dXNzaW9uIGxpc3QNCj4gPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+OyBQYXVsIEVnZ2xldG9uIChw
YXVsLmVnZ2xldG9uQGxpbnV4LmludGVsLmNvbSkNCj4gPHBhdWwuZWdnbGV0b25AbGludXguaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBkZXZ0b29sIGZpbmlzaCAmIHBhdGNoIG9y
ZGVyDQo+IA0KPiAyMDE4LTA2LTE1IDI6MTEgR01UKzAzOjAwIFBldGVyIEtqZWxsZXJzdGVkdA0K
PiA8cGV0ZXIua2plbGxlcnN0ZWR0QGF4aXMuY29tPjoNCj4gPiAqIGBkZXZ0b29sIG1vZGlmeSAt
dyA8c29tZSBzaW1wbGUgcGFja2FnZT5gDQo+ID4gKiBNb2RpZnkgc29tZSBmaWxlLCBlLmcuLCBh
ZGQgc29tZSBjb21tZW50IHRvIHRoZSBNYWtlZmlsZS4NCj4gPiAqIENvbW1pdCBpdCB3aXRoIHN1
YmplY3QgIkNoYW5nZSAxIg0KPiA+ICogUmVwZWF0IHRoZSB0d28gc3RlcHMgYWJvdmUgdHdvIG1v
cmUgdGltZXMsIGluY3JlYXNpbmcgdGhlIG51bWJlciBpbg0KPiA+ICAgdGhlIHN1YmplY3QgZWFj
aCB0aW1lLg0KPiA+ICogYGRldnRvb2wgZmluaXNoIDxzb21lIHNpbXBsZSBwYWNrYWdlPiA8bGF5
ZXIgd2hlcmUgdGhlIHJlY2lwZSBpcz5gDQo+ID4gKiBFeGFtaW5lIHRoZSB1cGRhdGVkIHJlY2lw
ZS4gSW4gbXkgY2FzZSB0aGUgcGF0Y2hlcyB3ZXJlIGluIHRoZQ0KPiA+ICAgY29ycmVjdCBvcmRl
ciBhZnRlciB0aGlzIHN0ZXA6DQo+ID4NCj4gPiBTUkNfVVJJID0gIjxvcmlnaW5hbCBVUkk+IFwN
Cj4gPiAgICAgICAgICAgIGZpbGU6Ly8wMDAxLUNoYW5nZS0xLnBhdGNoIFwNCj4gPiAgICAgICAg
ICAgIGZpbGU6Ly8wMDAyLUNoYW5nZS0yLnBhdGNoIFwNCj4gPiAgICAgICAgICAgIGZpbGU6Ly8w
MDAzLUNoYW5nZS0zLnBhdGNoIFwNCj4gPiAgICAgICAgICAgICINCj4gPg0KPiA+ICogTm90IHRv
IGJlIGRpc2NvdXJhZ2VkLCBJIHN0YXJ0ZWQgb3ZlciAodXNpbmcgdGhlIGV4aXN0aW5nIHNvdXJj
ZQ0KPiA+ICAgZGlyKToNCj4gPiAqIGBkZXZ0b29sIG1vZGlmeSAtbiA8c29tZSBzaW1wbGUgcGFj
a2FnZT5gDQo+ID4gKiBgZ2l0IHJlYmFzZSAtaSAnSEVBRH4zJ2AgKGluIHdvcmtzcGFjZS9zb3Vy
Y2VzLzxzb21lIHNpbXBsZQ0KPiA+ICAgIHBhY2thZ2U+KQ0KPiA+ICogVXNlICJyZXdvcmQiIG9u
IHRoZSBsYXN0IHR3byBjb21taXRzIGFuZCBjaGFuZ2UgdGhlaXIgc3ViamVjdCBsaW5lcw0KPiA+
ICAgdG8gIkFub3RoZXIgY2hhbmdlIiBhbmQgIlNvbWUgdGhpcmQgY2hhbmdlIi4NCj4gPiAqIGBk
ZXZ0b29sIGZpbmlzaCA8c29tZSBzaW1wbGUgcGFja2FnZT4gPHNvbWUgb3RoZXIgbGF5ZXIgdGhh
biB3aGVyZQ0KPiAgICAgdGhlIHJlY2lwZSBpcz5gDQo+ID4gKiBOb3cgSSBlbmRlZCB1cCB3aXRo
IHRoZSBmb2xsb3dpbmcgaW4gdGhlIG5ldyAuYmJhcHBlbmQgZmlsZToNCj4gPg0KPiA+IFNSQ19V
UkkgKz0gImZpbGU6Ly8wMDAyLUFub3RoZXItY2hhbmdlLnBhdGNoIGZpbGU6Ly8wMDAzLVNvbWUt
dGhpcmQtY2hhbmdlLnBhdGNoIGZpbGU6Ly8wMDAxLUNoYW5nZS0xLnBhdGNoIg0KPiANCj4gV2Fp
dCwgd2hhdCB3b3VsZCBiZSB0aGUgY29ycmVjdCB0aGluZyBmb3IgZGV2dG9vbCB0byBkbyBoZXJl
PyBUaGUNCj4gb3JpZ2luYWwgcGF0Y2hlcyBhcmUgYWxyZWFkeSBhZGRlZCB0byB0aGUgcmVjaXBl
IGluIHRoZSBvcmlnaW5hbA0KPiBsYXllciwgc28gLmJiYXBwZW5kIHdvdWxkIGhhdmUgdG8gZmly
c3QgcmV2ZXJ0IHRoZW0gYW5kIGFkZCBuZXdseSANCj4gbW9kaWZpZWQgb25lcz8gSSBkb24ndCB0
aGluayBkZXZ0b29sIGlzIHRoYXQgY2xldmVyIDopIERvZXMgaXQgYWRkIA0KPiB0aGUgcGF0Y2hl
cyBjb3JyZWN0bHksIGlmIHlvdSByZXBlYXQgdGhlIGZpcnN0IGhhbGYgb2YgdGhlIHNlcXVlbmNl
IA0KPiAoYWRkaW5nIG5ldyBwYXRjaGVzKSwgYnV0IHVzZSBkZXZ0b29sIGZpbmlzaCB0byBzYXZl
IGNoYW5nZXMgdG8gYSANCj4gZGlmZmZlcmVudCBsYXllcj8NCj4gDQo+IEFsZXgNCg0KV2hlbiBJ
IHNhaWQgIkkgc3RhcnRlZCBvdmVyIiBhYm92ZSwgdGhhdCBpbmNsdWRlZCByZW1vdmluZyB0aGUg
DQpwYXRjaGVzIHRoYXQgaGFkIGJlZW4gYWRkZWQgdG8gdGhlIHJlY2lwZSBmaWxlLiBTbyBlYWNo
IHRpbWUgSSANCmRpZCBgZGV2dG9vbCBmaW5pc2ggLi4uYCwgdGhlIHJlY2lwZSBzdGF0ZSB3YXMg
dGhlIGluaXRpYWwgb25lIA0KKGkuZS4sIHdpdGhvdXQgYW55IHBhdGNoZXMgaW4gZWl0aGVyIHRo
ZSByZWNpcGUgb3IgYW55IGJiYXBwZW5kKS4NCg0KSSBhY3R1YWxseSBkaWQgdGhlIGRldnRvb2wg
bW9kaWZ5L2RldnRvb2wgZmluaXNoIGN5Y2xlIGEgbnVtYmVyIA0Kb2YgdGltZXMuIEkgbmV2ZXIg
Z290IHRoZSB3cm9uZ2x5IG9yZGVyZWQgcGF0Y2hlcyB3aGVuIHRoZXkgd2VyZSANCmFkZGVkIHRv
IHRoZSByZWNpcGUsIGJ1dCB3aGVuIHRoZXkgd2VyZSBhZGRlZCBpbiBhIGJiYXBwZW5kLCB0aGUg
DQpyZXN1bHRzIHZhcmllZC4gVGhlIGZpcnN0IHRpbWUgSSB0cmllZCB0aGV5IHdlcmUgaW4gdGhl
IHJpZ2h0IA0Kb3JkZXIsIGJ1dCB0aGVuIEkgZGlkIHRoZSByZXdyaXRpbmcgb2YgdGhlIGNvbW1p
dCBtZXNzYWdlcyBhbmQgDQp0aGVuIHRoZXkgZW5kZWQgdXAgaW4gdGhlIHdyb25nIG9yZGVyLg0K
DQovL1BldGVyDQoNCg==

