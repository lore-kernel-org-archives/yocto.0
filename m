Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39A3BE00B63; Mon, 19 Jun 2017 01:28:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.38 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8185FE00AF0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 01:28:40 -0700 (PDT)
Received: from 1dMs33-0006u6-Vd by out10d.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1dMs34-0006ux-T4; Mon, 19 Jun 2017 01:28:37 -0700
Received: by emcmailer; Mon, 19 Jun 2017 01:28:37 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10d.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Dudau@enea.com>)
	id 1dMs33-0006u6-Vd; Mon, 19 Jun 2017 01:28:37 -0700
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0319.002; Mon, 19 Jun 2017 10:28:28 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "jackie.huang@windriver.com" <jackie.huang@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] pacemaker: update to 1.1.16
Thread-Index: AQHS4MyHCgnaxkUtP0+v/1fajB7H6KIryOyA
Date: Mon, 19 Jun 2017 08:28:28 +0000
Message-ID: <1497860907.1748.10.camel@enea.com>
References: <20170609025922.21564-1-jackie.huang@windriver.com>
In-Reply-To: <20170609025922.21564-1-jackie.huang@windriver.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.45]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: Re: [meta-cgl][PATCH] pacemaker: update to 1.1.16
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
X-List-Received-Date: Mon, 19 Jun 2017 08:28:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BA5851CF18F71D43AD4A1EE93EF006F5@enea.com>
Content-Transfer-Encoding: base64

T24gZnJlLCAyMDE3LTA2LTA5IGF0IDEwOjU5ICswODAwLCBqYWNraWUuaHVhbmdAd2luZHJpdmVy
LmNvbSB3cm90ZToNCj4gRnJvbTogSmFja2llIEh1YW5nIDxqYWNraWUuaHVhbmdAd2luZHJpdmVy
LmNvbT4NCj4gDQo+ICogdXBkYXRlIHRoZSBsaWNlbnNlcyBhbmQgY2hlY2tzdW0NCj4gKiBmaXgg
UE4gLT4gQlBOIGZvciBtdWx0aWxpYiBidWlsZHMNCj4gKiBhZGQgUEFDS0FHRUNPTkZJRyBmb3Ig
c3lzdGVtZCBhbmQgbGlic210cA0KPiAqIGFkZCBmaXggZm9yIGxpYmdudXRscw0KPiANCj4gU2ln
bmVkLW9mZi1ieTogSmFja2llIEh1YW5nIDxqYWNraWUuaHVhbmdAd2luZHJpdmVyLmNvbT4NCj4g
LS0tDQo+IMKgLi4uMDA2LXBhY2VtYWtlci1kby1ub3QtdXNlLWxpYmdudXRscy1jb25maWcucGF0
Y2ggfCAyOQ0KPiArKysrKysrKysrKysrKysrKysrKysrDQo+IMKgLi4uL3twYWNlbWFrZXJfMS4x
LjE1LmJiID0+IHBhY2VtYWtlcl8xLjEuMTYuYmJ9wqDCoMKgfCAyMiArKysrKysrKystLS0NCj4g
LS0tLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkNCj4gwqBjcmVhdGUgbW9kZSAxMDA3NTUgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtDQo+IGNn
bC9wYWNlbWFrZXIvcGFjZW1ha2VyLzAwMDYtcGFjZW1ha2VyLWRvLW5vdC11c2UtbGliZ251dGxz
LQ0KPiBjb25maWcucGF0Y2gNCj4gwqByZW5hbWUgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2ds
L3BhY2VtYWtlci97cGFjZW1ha2VyXzEuMS4xNS5iYiA9Pg0KPiBwYWNlbWFrZXJfMS4xLjE2LmJi
fSAoODQlKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9w
YWNlbWFrZXIvcGFjZW1ha2VyLzAwMDYtDQo+IHBhY2VtYWtlci1kby1ub3QtdXNlLWxpYmdudXRs
cy1jb25maWcucGF0Y2ggYi9tZXRhLWNnbC0NCj4gY29tbW9uL3JlY2lwZXMtY2dsL3BhY2VtYWtl
ci9wYWNlbWFrZXIvMDAwNi1wYWNlbWFrZXItZG8tbm90LXVzZS0NCj4gbGliZ251dGxzLWNvbmZp
Zy5wYXRjaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDc1NQ0KPiBpbmRleCAwMDAwMDAwLi40NmU0NWRm
DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL3Bh
Y2VtYWtlci9wYWNlbWFrZXIvMDAwNi1wYWNlbWFrZXItDQo+IGRvLW5vdC11c2UtbGliZ251dGxz
LWNvbmZpZy5wYXRjaA0KPiBAQCAtMCwwICsxLDI5IEBADQo+ICtjb21taXQgYmIyNmI3YzI5MDQ3
M2FmOTg4YWE5ZDQxMzJlZjU1Y2E5MDcwOTFlNg0KPiArQXV0aG9yOiBKb2UgU2xhdGVyIDxqc2xh
dGVyQHdpbmRyaXZlci5jb20+DQo+ICtEYXRlOsKgwqDCoE1vbiBNYXIgMTEgMTU6NDc6NTQgMjAx
MyAtMDcwMA0KPiArDQo+ICvCoMKgwqDCoHBhY2VtYWtlcjogZG8gbm90IHVzZSBsaWJnbnV0bHMt
Y29uZmlnDQo+ICsNCj4gK8KgwqDCoMKgRG8gbm90IHRyeSB0byB1c2UgbGliZ251dGxzLWNvbmZp
ZyB3aGVuIGNvbmZpZ3VyaW5nLg0KPiArwqDCoMKgwqBJdCBoYXMgYmVlbiBkZXByZWNhdGVkIGFu
ZCB3ZSBkbyBub3Qgc3VwcGx5IGl0LsKgwqBJZiBhDQo+ICvCoMKgwqDCoGhvc3QgdmVyc2lvbiBp
cyBmb3VuZCwgYmFkIHRoaW5ncyBjYW4gaGFwcGVuLg0KDQpUaGlzIGNvZGUgcGF0Y2ggbmVlZHMg
YW4gVXBzdHJlYW0tU3RhdHVzIHRhZy4NCg0KPiArDQo+ICtTaWduZWQtb2ZmLWJ5OiBKb2UgU2xh
dGVyIDxqc2xhdGVyQHdpbmRyaXZlci5jb20+DQo+ICtTaWduZWQtb2ZmLWJ5OiBKYWNraWUgSHVh
bmcgPGphY2tpZS5odWFuZ0B3aW5kcml2ZXIuY29tPg0KPiArDQo+ICsNCj4gKy0tLSBhL2NvbmZp
Z3VyZS5hYw0KPiArKysrIGIvY29uZmlndXJlLmFjDQo+ICtAQCAtMTQyNyw5ICsxNDI3LDkgQEAg
ZG5sID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiArIEFDX0NIRUNLX0hF
QURFUlMoZ251dGxzL2dudXRscy5oKQ0KPiArIEFDX0NIRUNLX0hFQURFUlMoc2VjdXJpdHkvcGFt
X2FwcGwuaCBwYW0vcGFtX2FwcGwuaCkNCj4gK8KgDQo+IA0KDQo8c25pcD4NCg0KPiDCoMKgwqDC
oMKgIyBEb24ndCBwYWNrYWdlIHNvbWUgZmlsZXMNCj4gwqDCoMKgwqDCoGZpbmQgJHtEfSAtbmFt
ZSAiKi5weW8iIC1leGVjIHJtIHt9IFw7DQo+IC0twqANCj4gMi4xMS4wDQo+IA0KDQpPdGhlcndp
c2UgdGhlIHBhdGNoIGxvb2tzIGdvb2QsIHNvIHBsZWFzZSBzZW5kIGEgdjIgYW5kIEknbGwgbWVy
Z2UgaXQuDQoNCkJlc3QgcmVnYXJkcywNCi0tQWRyaWFuDQo=

