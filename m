Return-Path: <thshin@telechips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46B27E00DC3; Mon, 21 Sep 2015 20:30:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE,
	T_FILL_THIS_FORM_SHORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from telegweb.telechips.com (unknown [219.240.43.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1977CE009F3
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 20:30:09 -0700 (PDT)
x-mimeole: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 22 Sep 2015 12:29:11 +0900
Message-ID: <F4F751F96C54D346898D4C77E196E3DB0F1AC843@telegweb.telechips.com>
In-Reply-To: <5600C404.3080503@gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [yocto] packageconfig for non-autotooled project
Thread-Index: AdD04zKAyM+asAlTT8OAhvnlk3J+mgAAu94A
References: <F4F751F96C54D346898D4C77E196E3DB0F0AB278@telegweb.telechips.com>
	<5600C404.3080503@gmail.com>
From: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>
To: "Trevor Woerner" <twoerner@gmail.com>,
	<yocto@yoctoproject.org>
Subject: Re: packageconfig for non-autotooled project
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
X-List-Received-Date: Tue, 22 Sep 2015 03:30:13 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

WWVzLCBpZiB5b3UgY2FuIGRvIGl0LCBpdCBpcyB0aGUgYmVzdC4NClRoZSBuZWNlc3NhcnkgcGMg
ZmlsZXMgYXJlIGFzIGZvbGxvd3M6DQplZ2wucGMNCmdsZXN2MV9jbS5wYw0KZ2xlc3YyLnBjDQp2
Zy5wYw0KDQoNClRoYW5rcw0KDQpCZXN0IHJlZ2FyZHMsDQpXaWx5IFRhZWtoeXVuIFNoaW4NCg0K
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0NCldpbHkgVGFla2h5dW4gU2hpbg0KUmVzZWFyY2ggRW5naW5l
ZXINClImRCBDZW50ZXINClRlbGVjaGlwcyBJbmMuDQpUZWwgOiArIDgyLTItMzQ0My02NzkyKEV4
dC4zOTApDQpGYXggOiArIDgyLTItNjQyNC03NzkzIA0KTW9iaWxlIDogKyA4Mi0xMC00Mzc2LTU1
MzANCkUtbWFpbCA6IHRoc2hpbkB0ZWxlY2hpcHMuY29tDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IFRyZXZvciBXb2VybmVyIFttYWlsdG86dHdvZXJuZXJAZ21haWwuY29t
XSANClNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAyMiwgMjAxNSAxMTo1OSBBTQ0KVG86IOyLoO2D
ne2YhCAoVGFlayBIeXVuIFNoaW4pOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBS
ZTogW3lvY3RvXSBwYWNrYWdlY29uZmlnIGZvciBub24tYXV0b3Rvb2xlZCBwcm9qZWN0DQoNCk9u
IDA5LzIxLzE1IDIyOjA0LCDsi6Dtg53tmIQgKFRhZWsgSHl1biBTaGluKSB3cm90ZToNCj4NCj4g
Q3JlYXRlIGEgc3VueGktbWFsaV9naXQuYmJhcHBlbmQgZmlsZSwgdG8gc2VlIHRoZSBwYyBmaWxl
IG9mIHRoZSBNRVNBIA0KPiBQcm9qZWN0IGNhbiBiZSB1c2VkIHRvIG1hbnVhbGx5IGNyZWF0ZSBh
IC5wYyBmaWxlLg0KPg0KDQpUaGFua3MgZm9yIHlvdXIgcmVwbHkuDQoNCkkgdGhpbmsgdGhpcyBp
cyBiZXN0IGZpeGVkIGluIHRoZSBtZXRhLXN1bnhpIGxheWVyIGl0c2VsZiwgaW5zdGVhZCBvZiBy
ZXF1aXJpbmcgdXNlcnMgdG8gYmJhcHBlbmQgdGhpcyByZWNpcGUgaW4gdGhlaXIgbGF5ZXJzLiBJ
J2xsIGJlIGdlbmVyYXRpbmcgYSBnaXRodWIgcHVsbCByZXF1ZXN0IHRvIHRoZSBtYWludGFpbmVy
cyBzaG9ydGx5Lg0KDQo=

