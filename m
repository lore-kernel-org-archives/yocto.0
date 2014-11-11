Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF18FE00905; Tue, 11 Nov 2014 01:59:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDAE5E008B4
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 01:59:25 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="43194607"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 11 Nov 2014 17:56:09 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sAB9x8bt019788;
	Tue, 11 Nov 2014 17:59:08 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Tue, 11 Nov 2014 17:59:28 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] question about toaster in yocto 1.7
Thread-Index: AQHP/NbHWilKIe9i7Uu2an/eiFsTyZxbKvkA
Date: Tue, 11 Nov 2014 09:59:27 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAC160A@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <D0864728.4D9D1%belen.barros.pena@intel.com>
In-Reply-To: <D0864728.4D9D1%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.59]
MIME-Version: 1.0
Subject: Re: question about toaster in yocto 1.7
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
X-List-Received-Date: Tue, 11 Nov 2014 09:59:30 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQmVsqKZuDQoNCj4gTm8sIEkgYW0gYWZyYWlkIFRvYXN0ZXIgc3RpbGwgY2Fubm90IGxhdW5j
aCBidWlsZHMgaW4gWW9jdG8gUHJvamVjdCAxLjcuDQo+IFdlIGFyZSB3b3JraW5nIG9uIGl0IHRo
b3VnaCwgc28gVG9hc3RlciBzaG91bGQgYmUgYWJsZSB0byBsYXVuY2ggYnVpbGRzIGluIFlvY3Rv
DQo+IFByb2plY3QgMS44LiBJZiB5b3Ugd2FudCB0byBoZWxwIHVzIG1ha2UgaXQgaGFwcGVuIChj
b250cmlidXRpb25zIHNvcmVseSBuZWVkZWQpLA0KPiBsZXQgbWUga25vdy4NCg0KVGhhbmtzIGZv
ciB5b3VyIHJlcGx5Lg0KDQpBbHRob3VnaCBJIGFtIHZlcnkgaW50ZXJlc3RlZCBpbiBUb2FzdGVy
LCBidXQgSSdtIG5vdCBzdXJlIHRoZXJlIGlzIGVub3VnaCB0aW1lIHRvIGRvIHRoaXMuDQoNCkNo
ZWVycw0KDQpMZWkgTWFvaHVpDQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IEZyb206IEJhcnJvcyBQZW5hLCBCZWxlbiBbbWFpbHRvOmJlbGVuLmJhcnJvcy5wZW5hQGludGVs
LmNvbV0NCj4gU2VudDogTW9uZGF5LCBOb3ZlbWJlciAxMCwgMjAxNCA3OjA5IFBNDQo+IFRvOiBM
ZWksIE1hb2h1aS/A1yDDr7vbOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJl
OiBbeW9jdG9dIHF1ZXN0aW9uIGFib3V0IHRvYXN0ZXIgaW4geW9jdG8gMS43DQo+IA0KPiBPbiAx
MC8xMS8yMDE0IDEwOjIzLCAiTGVpLCBNYW9odWkiIDxsZWltYW9odWlAY24uZnVqaXRzdS5jb20+
IHdyb3RlOg0KPiANCj4gPkhpIGFsbA0KPiA+DQo+ID4gICBJIGhhdmUgcmVhZCB0aGUgIlRvYXN0
ZXIgTWFudWFsIDEuNyIgYW5kIGhhdmUgYSBxdWVzdGlvbiA6DQo+ID4gICBUaGUgdG9hc3RlciBz
dGlsbCBjYW4ndCBsYXVuY2ggYSBidWlsZCBpbiB5b2N0byAxLjcgPw0KPiANCj4gSGkgTGVpLA0K
PiANCj4gTm8sIEkgYW0gYWZyYWlkIFRvYXN0ZXIgc3RpbGwgY2Fubm90IGxhdW5jaCBidWlsZHMg
aW4gWW9jdG8gUHJvamVjdCAxLjcuDQo+IFdlIGFyZSB3b3JraW5nIG9uIGl0IHRob3VnaCwgc28g
VG9hc3RlciBzaG91bGQgYmUgYWJsZSB0byBsYXVuY2ggYnVpbGRzIGluIFlvY3RvDQo+IFByb2pl
Y3QgMS44LiBJZiB5b3Ugd2FudCB0byBoZWxwIHVzIG1ha2UgaXQgaGFwcGVuIChjb250cmlidXRp
b25zIHNvcmVseSBuZWVkZWQpLA0KPiBsZXQgbWUga25vdy4NCj4gDQo+IENoZWVycw0KPiANCj4g
QmVsqKZuDQo+IA0KPiA+DQo+ID5UaGFua3MsDQo+ID4NCj4gPkxlaSBNYW9odWkNCj4gPi0tDQo+
ID5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+eW9j
dG8gbWFpbGluZyBsaXN0DQo+ID55b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID5odHRwczovL2xp
c3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0K

