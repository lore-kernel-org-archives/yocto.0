Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEBA7E00DA4; Thu, 21 Dec 2017 08:25:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D7C4E00D9C
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:25:27 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:25:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; 
   d="scan'208";a="4364600"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2017 08:25:27 -0800
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 21 Dec 2017 08:25:27 -0800
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.59]) by
	FMSMSX119.amr.corp.intel.com ([169.254.14.129]) with mapi id
	14.03.0319.002; Thu, 21 Dec 2017 08:25:27 -0800
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.3.3 RC1
Thread-Index: AdN6AciR9idPrllZSQ6ed0xJ1DH7/wAq2SiAAABzVYAADbI5UA==
Date: Thu, 21 Dec 2017 16:25:26 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A4897B@fmsmsx107.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A48868@fmsmsx107.amr.corp.intel.com>
	<1513867433.16507.94.camel@intel.com>
	<736f1bcb-4842-1193-8f25-a1592683812e@intel.com>
In-Reply-To: <736f1bcb-4842-1193-8f25-a1592683812e@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGFmNjFjMjMtZDc5Ny00NDJiLTk2MzMtMTdkYzRhZDMzNjBkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJsdVQ3WE1NUmtHWEhJN2p4OG1lbUJLWlg4UmlGZUxBQlBybnRoNVwvRHZIdWVKM2E3QUdvVUZvVzdCejNtNmdMMiJ9
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: FW: QA cycle report for 2.3.3 RC1
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
X-List-Received-Date: Thu, 21 Dec 2017 16:25:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFjaGluZSB3YXMgcmVib290ZWQNCg0KbGFzdCB3ZWVrIDEyLzEyDQoNCi0kIHdobyAtYg0KICAg
ICAgICAgIHN5c3RlbSBib290ICAyMDE3LTEyLTEyIDA5OjE4DQoNCi0kIHVwdGltZSAtcw0KICAg
ICAgICAgIDIwMTctMTItMTIgMDk6MTk6MjgNCg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQpGcm9tOiBQZXJleiBDYXJyYW56YSwgSm9zZSANClNlbnQ6IFRodXJzZGF5LCBEZWNlbWJl
ciAyMSwgMjAxNyA4OjU3IEFNDQpUbzogUHVyZGllLCBSaWNoYXJkIDxyaWNoYXJkLnB1cmRpZUBp
bnRlbC5jb20+OyBDcnV6LCBMaWJlcnRhZCA8bGliZXJ0YWQuY3J1ekBpbnRlbC5jb20+OyB5b2N0
b0B5b2N0b3Byb2plY3Qub3JnOyBMb2NrLCBKb3NodWEgRyA8am9zaHVhLmcubG9ja0BpbnRlbC5j
b20+OyBKb2xsZXksIFN0ZXBoZW4gSyA8c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20+OyBaaGFu
ZywgSmVzc2ljYSA8amVzc2ljYS56aGFuZ0BpbnRlbC5jb20+DQpDYzogU2FuZ2FsLCBBcG9vcnYg
PGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGlu
dGVsLmNvbT4NClN1YmplY3Q6IFJlOiBRQSBjeWNsZSByZXBvcnQgZm9yIDIuMy4zIFJDMQ0KDQoN
Ck9uIDEyLzIxLzIwMTcgMDg6NDMgQU0sIFJpY2hhcmQgUHVyZGllIHdyb3RlOg0KPiBPbiBXZWQs
IDIwMTctMTItMjAgYXQgMjA6MjUgLTA4MDAsIENydXosIExpYmVydGFkIHdyb3RlOg0KPj4gSGVs
bG8gQWxsLA0KPj4gRW5qb3kgdmlld2luZyB0aGUgZnVsbCBSZXBvcnQgZm9yIDIuMy4zIFJDMTrC
oCBodHRwczovL3dpa2kueW9jdG9wcm9qZQ0KPj4gY3Qub3JnL3dpa2kvV1c1MV8tXzIwMTctMTIt
MjAtX0Z1bGxfVGVzdF9DeWNsZV8tXzIuMy4zX3JjMQ0KPj4NCj4+ID09PT09PT0gU3VtbWFyeSA9
PT09PT09PQ0KPj4NCj4+IFRoZSBRQSBjeWNsZSBmb3IgcmVsZWFzZSAyLjMuMyBSQzEgaXMgY29t
cGxldGUuwqAgVGhlcmUgYXJlIDQgbmV3IGJ1Z3MgDQo+PiBmcm9tIHdoaWNoIHNvIGZhciBub25l
IG9mIHRoZW0gYXJlIGhpZ2guIFFBIGhhcyB0d28gYmlnIGNvbmNlcm5zOg0KPj4NCj4+ICDCoMKg
wqDCoMKgwqDCoMKgMS7CoMKgUGVyZm9ybWFuY2UgcmVwb3J0IHNob3dzIGFuIGluY3JlYXNlIG9m
IDMwJSBidWlsZCB0aW1lIA0KPj4gb24gdGhlIGVTREsgaW4gZmVkb3JhIDIzLCBidWcgaGFzIG5v
dCBiZWVuIGNyZWF0ZWQgdW50aWwgZnVydGhlciANCj4+IGludmVzdGlnYXRpb24gd2l0aCBzZXR1
cCBvdXRzaWRlIG9mIHRoZSBHREMgZW52aXJvbm1lbnQuDQo+IENvdWxkIHlvdSBjb25maXJtIHdo
ZW4gdGhlIHBlcmZvcm1hbmNlIHRlc3QgbWFjaGluZXMgd2VyZSBsYXN0IA0KPiByZWJvb3RlZD8g
V2UndmUgaGFkIGlzc3VlcyBiZWZvcmUgd2hlcmUgdGhlIGJlbmNobWFya3MgZHJpZnQgd2l0aCAN
Cj4gbWFjaGluZSB1cHRpbWUuIElmIHRoZSd2ZSBiZWVuIHJ1bm5pbmcgZm9yIG1vcmUgdGhhbiBh
Ym91dCAzIHdlZWtzIEknZCANCj4gbGlrZSB0byBydW4gdGhlIGJlbmNobWFya3MgYWdhaW4gYWZ0
ZXIgYSByZWJvb3QuDQpJdCB3YXMgbGFzdCB3ZWVrIDEyLzEyDQoNCi0kIHdobyAtYg0KIMKgwqDC
oMKgwqDCoMKgwqAgc3lzdGVtIGJvb3TCoCAyMDE3LTEyLTEyIDA5OjE4DQoNCi0kIHVwdGltZSAt
cw0KIMKgwqDCoMKgwqDCoMKgwqAgMjAxNy0xMi0xMiAwOToxOToyOA0KDQo+IFRoYW5rcyENCj4N
Cj4gUmljaGFyZA0KDQotLQ0KU2FsdWRvcw0KSm9zw6kNCg0K

