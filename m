Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80B77E00D60; Mon, 10 Jun 2019 18:54:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E59A9E00D53
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 18:54:08 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jun 2019 18:54:08 -0700
X-ExtLoop1: 1
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by fmsmga004.fm.intel.com with ESMTP; 10 Jun 2019 18:54:06 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.167]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.171]) with mapi id
	14.03.0415.000; Tue, 11 Jun 2019 09:51:58 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	Poky Build User <pokybuild@debian8.yocto.io>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M1.rc1)
Thread-Index: AQHVH9prUV/mgdX96UGYZUA3BqNFfaaVsLfQ
Date: Tue, 11 Jun 2019 01:51:58 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D043481E6A23@PGSMSX109.gar.corp.intel.com>
References: <20190610213814.BC1771A009F@debian8-ty-1.yocto.io>
	<41f4e149903ed82864c7160a558ba5d41b2074e3.camel@linuxfoundation.org>
In-Reply-To: <41f4e149903ed82864c7160a558ba5d41b2074e3.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjZmZDI1MjUtZjcwNi00MzFkLWIyZTctMjAyZGZiZjQzOGVkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiazB2MzVSMTN3Q2x2YTEwUVFQYlRoalA0RGhubkxIcmEwTDhkQVdvbDErcmtzWkZsQmVhWExIXC9OMnhNa3dYTmwifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M1.rc1)
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
X-List-Received-Date: Tue, 11 Jun 2019 01:54:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmljaGFyZCwNCg0KVGhhbmtzIGZvciBpbmZvcm1pbmchIA0KDQpCZXN0IHJlZ2FyZHMsDQpZZW9o
IEVlIFBlbmcgDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiByaWNoYXJkLnB1
cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3Vu
ZGF0aW9uLm9yZ10gDQpTZW50OiBUdWVzZGF5LCBKdW5lIDExLCAyMDE5IDY6MTggQU0NClRvOiBQ
b2t5IEJ1aWxkIFVzZXIgPHBva3lidWlsZEBkZWJpYW44LnlvY3RvLmlvPjsgeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZw0KQ2M6IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyB5aS56aGFvQHdpbmRyaXZl
ci5jb207IFNhbmdhbCwgQXBvb3J2IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IFllb2gsIEVl
IFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBDaGFuLCBBYXJvbiBDaHVuIFlldyA8YWFy
b24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBBbmcsIENoaW4gSHVhdCA8Y2hpbi5odWF0LmFu
Z0BpbnRlbC5jb20+OyBha3VzdGVyODA4QGdtYWlsLmNvbTsgc2pvbGxleS55cC5wbUBnbWFpbC5j
b207IEphaW4sIFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT4NClN1YmplY3Q6IFJl
OiBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8t
Mi44X00xLnJjMSkNCg0KT24gTW9uLCAyMDE5LTA2LTEwIGF0IDIxOjM4ICswMDAwLCBQb2t5IEJ1
aWxkIFVzZXIgd3JvdGU6DQo+IEEgYnVpbGQgZmxhZ2dlZCBmb3IgUUEgKHlvY3RvLTIuOF9NMS5y
YzEpIHdhcyBjb21wbGV0ZWQgb24gdGhlIA0KPiBhdXRvYnVpbGRlciBhbmQgaXMgYXZhaWxhYmxl
IGF0Og0KPiANCj4gDQo+ICAgICBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxl
YXNlcy95b2N0by0yLjhfTTEucmMxDQo+IA0KDQpJJ3ZlIHRyaWdnZXJlZCBhbiByYzIgc2luY2Ug
b25lIG9mIHRoZSBhdXRvYnVpbGRlciB3b3JrZXJzIG1lc3NlZCB1cCB0aGUgbWlwcyBidWlsZHMu
DQoNCkNoZWVycywNCg0KUmljaGFyZA0KDQo=

