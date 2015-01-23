Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01B95E00860; Thu, 22 Jan 2015 18:35:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3653CE00782
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 18:35:29 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56504456"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 23 Jan 2015 10:31:55 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0N2YjBw002063;
	Fri, 23 Jan 2015 10:34:45 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Fri, 23 Jan 2015 10:35:29 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>, "Qian, Lei"
	<qianl.fnst@cn.fujitsu.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 0/2] cluster: Fix some error and format
Thread-Index: AQHQM8/vJIK6NblrWEa+1OTvQp/nw5zGyYGAgAAX2wCAAXQzgIAEq02A
Date: Fri, 23 Jan 2015 02:35:23 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAE6AC4@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D77B0BA@SESTOEX04.enea.se>
	<20150119205758.1ff97d78@Fedora>
	<DDB0C57E45663A458C5CACB7B5688BC21D782E91@SESTOEX04.enea.se>
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D782E91@SESTOEX04.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.48]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 0/2] cluster: Fix some error and format
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
X-List-Received-Date: Fri, 23 Jan 2015 02:35:38 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQWxleA0KDQogID4gTGVpIE1hb2h1aSBkaWQgeW91IGV4cGVyaWVuY2UgdGhpcyBlcnJvciB3
aGVuIHlvdSB0ZXN0ZWQgdGhlIHJlY2lwZT8NCg0KV2hlbiBJIGJpdGJha2UgdGhlIGNsdXN0ZXIs
SSBkaWRuJ3QgbWV0IHRoZSBlcnJvci4NClFpYW4ncyB0YXJnZXQgaXMgeDg2XzY0LCBteSB0YXJn
ZXQgaXMgeDg2LCBtYXliZSBpdCB3YXMgdGhlIHJlYXNvbiB3aHkgSSBkaWRuJ3QgbWVldCB0aGUg
ZXJyb3IuIA0KDQpDaGVlcnMNCg0KTGVpIE1hb2h1aQ0KDQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+IEZyb206IEFsZXhhbmRydSBWYWR1dmEgW21haWx0bzpBbGV4YW5kcnUu
VmFkdXZhQGVuZWEuY29tXQ0KPiBTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDIwLCAyMDE1IDc6MTAg
UE0NCj4gVG86IFFpYW4sIExlaSANCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IExlaSwg
TWFvaHVpIA0KPiBTdWJqZWN0OiBSRTogW3lvY3RvXSBbbWV0YS1jZ2xdW1BBVENIIDAvMl0gY2x1
c3RlcjogRml4IHNvbWUgZXJyb3IgYW5kIGZvcm1hdA0KPiANCj4gWWVzIGJ1dCBvcGVubGRhcCBp
cyBhIGRlcGVuZGVuY3kgYnJvdWdodCB1cCBieSB0aGUgY2x1c3RlciByZWNpcGUuDQo+IFByb29m
Og0KPiBERVBFTkRTID0gImNvcm9zeW5jIGRidXMgb3BlbmxkYXAgb3BlbmFpcyBsaWJ4bWwyIG5j
dXJzZXMgcGVybCB6bGliIg0KPiANCj4gTGVpIE1hb2h1aSBkaWQgeW91IGV4cGVyaWVuY2UgdGhp
cyBlcnJvciB3aGVuIHlvdSB0ZXN0ZWQgdGhlIHJlY2lwZT8NCj4gDQo+IA0KPiBBbGV4IFZhZHV2
YQ0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUWlhbiBMZWkgW21h
aWx0bzpxaWFubC5mbnN0QGNuLmZ1aml0c3UuY29tXQ0KPiBTZW50OiBNb25kYXksIEphbnVhcnkg
MTksIDIwMTUgMjo1OCBQTQ0KPiBUbzogQWxleGFuZHJ1IFZhZHV2YQ0KPiBDYzogeW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBbbWV0YS1jZ2xdW1BBVENIIDAv
Ml0gY2x1c3RlcjogRml4IHNvbWUgZXJyb3IgYW5kIGZvcm1hdA0KPiANCj4gT24gTW9uLCAxOSBK
YW4gMjAxNSAxMTozMjozNSArMDAwMA0KPiBBbGV4YW5kcnUgVmFkdXZhIDxBbGV4YW5kcnUuVmFk
dXZhQGVuZWEuY29tPiB3cm90ZToNCj4gDQo+ID4gRG9lcyB0aGlzIGZpeCB0aGUgZXJyb3IgSSBl
bmNvdW50ZXIgd2hlbiBidWlsZGluZyB0aGUgcGFja2FnZS4NCj4gPiBUaGUgbG9nIGlzIGF0dGFj
aGVkIHRvIHRoaXMgZW1haWwgYW5kIGlzIGFsc28gYXZhaWxhYmxlIGluIHRoZQ0KPiA+IGJ1Z3pp
bGxhDQo+ID4gaXNzdWU6IGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9NzE3Ng0KPiANCj4gQWN0dWFsbHkgbm8uIFRoaXMgcGF0Y2ggdXNlIHRoZSBrZXJu
ZWwgc291cmNlIGluIGJpdGJha2Ugd29ybGQgaW5zdGVhZCBvZiB0aGF0DQo+IG9uIHRoZSBob3N0
LiBUaGlzIGVycm9yIG9ubHkgYXBwZWFyZWQgb24gbXkgYnVpbGQgZW52aXJvbWVudC4NCj4gDQo+
IEJ1dCB5b3VyIGVycm9yIGlzIHRvIGJ1aWxkIG9wZW5sZGFwLCBub3QgY2x1c3Rlci4NCj4gDQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IHlvY3RvLWJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZw0KPiA+IFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3By
b2plY3Qub3JnXQ0KPiA+IE9uIEJlaGFsZiBPZiBRaWFuIExlaSBTZW50OiBNb25kYXksIEphbnVh
cnkgMTksIDIwMTUgMTI6MDggUE0NCj4gPiBUbzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA+
IFN1YmplY3Q6IFt5b2N0b10gW21ldGEtY2dsXVtQQVRDSCAwLzJdIGNsdXN0ZXI6IEZpeCBzb21l
IGVycm9yIGFuZA0KPiA+IGZvcm1hdA0KPiA+DQo+ID4gVXNlIEtFUk5FTF9TUkMgaW5zdGVhZCBv
ZiBoYXJkY29kZSBwYXRoIGluIGNvbmZpZ3VyZS4gQWxzbyBmaXggbGljZW5zZSBmb3JtYXQuDQo+
ID4NCj4gPiAqKiogQkxVUkIgSEVSRSAqKioNCj4gPg0KPiA+IFFpYW4gTGVpICgyKToNCj4gPiAg
IGNsdXN0ZXI6IEZpeCBsaWNlbnNlIGZvcm1hdA0KPiA+ICAgY2x1c3RlcjogQWRkIGEgcGF0Y2gg
dG8gZml4IHRoZSBwYXRoIG9mIGtlcm5lbCBzb3VyY2UNCj4gPg0KPiA+ICAuLi4vY2x1c3Rlci8w
MDAxLUZpeC10aGUta2VybmVsLXNvdXJjZS1wYXRjaC5wYXRjaCB8IDM4DQo+ID4gKysrKysrKysr
KysrKysrKysrKysrKyAuLi4vcmVjaXBlcy1jZ2wvY2x1c3Rlci9jbHVzdGVyXzMuMi4wLmJiDQo+
IHwNCj4gPiA1ICstLSAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pICBjcmVhdGUgbW9kZQ0KPiA+IDEwMDY0NA0KPiA+IG1ldGEtY2dsLWNvbW1vbi9yZWNp
cGVzLWNnbC9jbHVzdGVyL2NsdXN0ZXIvMDAwMS1GaXgtdGhlLWtlcm5lbC1zb3VyY2UNCj4gPiAt
cGF0Y2gucGF0Y2gNCj4gPg0KPiA+IC0tDQo+ID4gMS44LjMuMQ0KPiA+DQo+ID4gLS0NCj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IHlvY3Rv
IG1haWxpbmcgbGlzdA0KPiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiBodHRwczovL2xp
c3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4gDQo+IA0KPiANCj4gLS0NCj4g
UWlhbiBMZWkNCg==

