Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 540FCE00B76; Mon, 19 Jun 2017 19:24:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F24AE00AD0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 19:24:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5K2OlJw009116
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 19 Jun 2017 19:24:47 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([fe80::d894:a649:cd4c:89b7]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0294.000;
	Mon, 19 Jun 2017 19:24:46 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Thread-Topic: [yocto] [meta-cgl][PATCH] pacemaker: update to 1.1.16
Thread-Index: AQHS4MyHCgnaxkUtP0+v/1fajB7H6KIryOyAgAFOG8A=
Date: Tue, 20 Jun 2017 02:24:46 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B7F85EC@ALA-MBD.corp.ad.wrs.com>
References: <20170609025922.21564-1-jackie.huang@windriver.com>
	<1497860907.1748.10.camel@enea.com>
In-Reply-To: <1497860907.1748.10.camel@enea.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.112]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 20 Jun 2017 02:24:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWRyaWFuIER1ZGF1IFtt
YWlsdG86QWRyaWFuLkR1ZGF1QGVuZWEuY29tXQ0KPiBTZW50OiBNb25kYXksIEp1bmUgMTksIDIw
MTcgMTY6MjgNCj4gVG86IEh1YW5nLCBKaWUgKEphY2tpZSk7IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gW21ldGEtY2dsXVtQQVRDSF0gcGFjZW1ha2VyOiB1
cGRhdGUgdG8gMS4xLjE2DQo+IA0KPiBPbiBmcmUsIDIwMTctMDYtMDkgYXQgMTA6NTkgKzA4MDAs
IGphY2tpZS5odWFuZ0B3aW5kcml2ZXIuY29tIHdyb3RlOg0KPiA+IEZyb206IEphY2tpZSBIdWFu
ZyA8amFja2llLmh1YW5nQHdpbmRyaXZlci5jb20+DQo+ID4NCj4gPiAqIHVwZGF0ZSB0aGUgbGlj
ZW5zZXMgYW5kIGNoZWNrc3VtDQo+ID4gKiBmaXggUE4gLT4gQlBOIGZvciBtdWx0aWxpYiBidWls
ZHMNCj4gPiAqIGFkZCBQQUNLQUdFQ09ORklHIGZvciBzeXN0ZW1kIGFuZCBsaWJzbXRwDQo+ID4g
KiBhZGQgZml4IGZvciBsaWJnbnV0bHMNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEphY2tpZSBI
dWFuZyA8amFja2llLmh1YW5nQHdpbmRyaXZlci5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4wMDYt
cGFjZW1ha2VyLWRvLW5vdC11c2UtbGliZ251dGxzLWNvbmZpZy5wYXRjaCB8IDI5DQo+ID4gKysr
KysrKysrKysrKysrKysrKysrKw0KPiA+IMKgLi4uL3twYWNlbWFrZXJfMS4xLjE1LmJiID0+IHBh
Y2VtYWtlcl8xLjEuMTYuYmJ9wqDCoMKgfCAyMiArKysrKysrKystLS0NCj4gPiAtLS0tDQo+ID4g
wqAyIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4g
wqBjcmVhdGUgbW9kZSAxMDA3NTUgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtDQo+ID4gY2dsL3Bh
Y2VtYWtlci9wYWNlbWFrZXIvMDAwNi1wYWNlbWFrZXItZG8tbm90LXVzZS1saWJnbnV0bHMtDQo+
ID4gY29uZmlnLnBhdGNoDQo+ID4gwqByZW5hbWUgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2ds
L3BhY2VtYWtlci97cGFjZW1ha2VyXzEuMS4xNS5iYiA9Pg0KPiA+IHBhY2VtYWtlcl8xLjEuMTYu
YmJ9ICg4NCUpDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMt
Y2dsL3BhY2VtYWtlci9wYWNlbWFrZXIvMDAwNi0NCj4gPiBwYWNlbWFrZXItZG8tbm90LXVzZS1s
aWJnbnV0bHMtY29uZmlnLnBhdGNoIGIvbWV0YS1jZ2wtDQo+ID4gY29tbW9uL3JlY2lwZXMtY2ds
L3BhY2VtYWtlci9wYWNlbWFrZXIvMDAwNi1wYWNlbWFrZXItZG8tbm90LXVzZS0NCj4gPiBsaWJn
bnV0bHMtY29uZmlnLnBhdGNoDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA3NTUNCj4gPiBpbmRleCAw
MDAwMDAwLi40NmU0NWRmDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL21ldGEtY2dsLWNv
bW1vbi9yZWNpcGVzLWNnbC9wYWNlbWFrZXIvcGFjZW1ha2VyLzAwMDYtDQo+IHBhY2VtYWtlci0N
Cj4gPiBkby1ub3QtdXNlLWxpYmdudXRscy1jb25maWcucGF0Y2gNCj4gPiBAQCAtMCwwICsxLDI5
IEBADQo+ID4gK2NvbW1pdCBiYjI2YjdjMjkwNDczYWY5ODhhYTlkNDEzMmVmNTVjYTkwNzA5MWU2
DQo+ID4gK0F1dGhvcjogSm9lIFNsYXRlciA8anNsYXRlckB3aW5kcml2ZXIuY29tPg0KPiA+ICtE
YXRlOsKgwqDCoE1vbiBNYXIgMTEgMTU6NDc6NTQgMjAxMyAtMDcwMA0KPiA+ICsNCj4gPiArwqDC
oMKgwqBwYWNlbWFrZXI6IGRvIG5vdCB1c2UgbGliZ251dGxzLWNvbmZpZw0KPiA+ICsNCj4gPiAr
wqDCoMKgwqBEbyBub3QgdHJ5IHRvIHVzZSBsaWJnbnV0bHMtY29uZmlnIHdoZW4gY29uZmlndXJp
bmcuDQo+ID4gK8KgwqDCoMKgSXQgaGFzIGJlZW4gZGVwcmVjYXRlZCBhbmQgd2UgZG8gbm90IHN1
cHBseSBpdC7CoMKgSWYgYQ0KPiA+ICvCoMKgwqDCoGhvc3QgdmVyc2lvbiBpcyBmb3VuZCwgYmFk
IHRoaW5ncyBjYW4gaGFwcGVuLg0KPiANCj4gVGhpcyBjb2RlIHBhdGNoIG5lZWRzIGFuIFVwc3Ry
ZWFtLVN0YXR1cyB0YWcuDQoNClVwc3RyZWFtLVN0YXR1cyBpcyBhZGRlZCBhbmQgdjIgaXMgc2Vu
dC4NCg0KVGhhbmtzLA0KSmFja2llDQoNCj4gDQo+ID4gKw0KPiA+ICtTaWduZWQtb2ZmLWJ5OiBK
b2UgU2xhdGVyIDxqc2xhdGVyQHdpbmRyaXZlci5jb20+DQo+ID4gK1NpZ25lZC1vZmYtYnk6IEph
Y2tpZSBIdWFuZyA8amFja2llLmh1YW5nQHdpbmRyaXZlci5jb20+DQo+ID4gKw0KPiA+ICsNCj4g
PiArLS0tIGEvY29uZmlndXJlLmFjDQo+ID4gKysrKyBiL2NvbmZpZ3VyZS5hYw0KPiA+ICtAQCAt
MTQyNyw5ICsxNDI3LDkgQEAgZG5sID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KPiA+ICsgQUNfQ0hFQ0tfSEVBREVSUyhnbnV0bHMvZ251dGxzLmgpDQo+ID4gKyBBQ19DSEVD
S19IRUFERVJTKHNlY3VyaXR5L3BhbV9hcHBsLmggcGFtL3BhbV9hcHBsLmgpDQo+ID4gKw0KPiA+
DQo+IA0KPiA8c25pcD4NCj4gDQo+ID4gwqDCoMKgwqDCoCMgRG9uJ3QgcGFja2FnZSBzb21lIGZp
bGVzDQo+ID4gwqDCoMKgwqDCoGZpbmQgJHtEfSAtbmFtZSAiKi5weW8iIC1leGVjIHJtIHt9IFw7
DQo+ID4gLS0NCj4gPiAyLjExLjANCj4gPg0KPiANCj4gT3RoZXJ3aXNlIHRoZSBwYXRjaCBsb29r
cyBnb29kLCBzbyBwbGVhc2Ugc2VuZCBhIHYyIGFuZCBJJ2xsIG1lcmdlIGl0Lg0KPiANCj4gQmVz
dCByZWdhcmRzLA0KPiAtLUFkcmlhbg0K

