Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C07E01068; Tue, 26 Jun 2018 22:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB846E00DE1
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 22:47:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jun 2018 22:47:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,277,1526367600"; d="scan'208";a="61714863"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jun 2018 22:47:35 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.131]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.136]) with mapi id
	14.03.0319.002; Wed, 27 Jun 2018 13:47:34 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Yeoh, Ee Peng"
	<ee.peng.yeoh@intel.com>
Thread-Topic: [PATCH] [yocto-ab-helper] Add qemux86, qemux86-64 WIC
	testimage buildset-config
Thread-Index: AQHUDSrd2uREcQgQwk6otPG7LpMqKKRx0MwAgAHIAgA=
Date: Wed, 27 Jun 2018 05:47:33 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068DBEB5@PGSMSX103.gar.corp.intel.com>
References: <1530003066-28005-1-git-send-email-aaron.chun.yew.chan@intel.com>
	<347aa2e327ad1ba9da226f819137cc78fa058b2b.camel@linuxfoundation.org>
In-Reply-To: <347aa2e327ad1ba9da226f819137cc78fa058b2b.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWM0YzlmZmEtNGM0ZS00ZDk1LWEzN2MtMGVkYjE5MDlkYzlhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYjVjV0NIXC9zVGZyUGMwWXhXQ2VPbHRpbDZrWjlhN3lzTW5VdHV5SG16b2xBQlhOYVpOajlUU0N6TzhPTktNRXQifQ==
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: [PATCH] [yocto-ab-helper] Add qemux86, qemux86-64 WIC testimage buildset-config
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
X-List-Received-Date: Wed, 27 Jun 2018 05:47:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZA0KDQpGdW5kYW1lbnRhbGx5IHdlIGFyZSBwZXJmb3JtaW5nICB0aGUgUUEgcmVs
ZWFzZSBmb3IgWW9jdG8gd2l0aCB0aGlzIGJ1aWxkc2V0IGNvbmZpZyBjb3ZlcmluZyBxZW11eDg2
LCBxZW11eDg2LTY0IG9uIGNvcmUtaW1hZ2UtbHNiLXNkayBpbWFnZS4NCklmIHRoZSBjb21tdW5p
dHkgZmVlbHMgdGhhdCB3ZSBoYXZlIHN1ZmZpY2llbnQgY292ZXJhZ2Ugd2hpY2ggaXMgcmVxdWly
ZWQsIHdlIGNhbiBvbWl0IHRoaXMgc3VwcG9ydCBmcm9tIGZ1dHVyZSBRQSBjeWNsZXMuIA0KDQpJ
ZiB0aGlzIGlzIHN0aWxsICJnb29kIHRvIGhhdmUiIEkgd2lsbCByZXNlbmQgYSAiYmV0dGVyIGRl
c2NyaXB0aW9uIiBpbiB0aGUgbmV4dCBzdWJtaXNzaW9uLg0KDQpDaGVlcnMsDQpBYXJvbg0KDQot
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogcmljaGFyZC5wdXJkaWVAbGludXhmb3Vu
ZGF0aW9uLm9yZyBbbWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddIA0K
U2VudDogVHVlc2RheSwgSnVuZSAyNiwgMjAxOCA2OjMwIFBNDQpUbzogQ2hhbiwgQWFyb24gQ2h1
biBZZXcgPGFhcm9uLmNodW4ueWV3LmNoYW5AaW50ZWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZzsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT4NClN1YmplY3Q6IFJl
OiBbUEFUQ0hdIFt5b2N0by1hYi1oZWxwZXJdIEFkZCBxZW11eDg2LCBxZW11eDg2LTY0IFdJQyB0
ZXN0aW1hZ2UgYnVpbGRzZXQtY29uZmlnDQoNCk9uIFR1ZSwgMjAxOC0wNi0yNiBhdCAxNjo1MSAr
MDgwMCwgQWFyb24gQ2hhbiB3cm90ZToNCj4gU2lnbmVkLW9mZi1ieTogQWFyb24gQ2hhbiA8YWFy
b24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgY29uZmlnLmpzb24gfCAzMiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMxIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KVGhpcyBwYXRjaCBsb29rcyBsaWtlIGl0IG1p
Z2h0IGJlIGNvcnJlY3QuIEkgc2F5ICJtaWdodCIgYXMgeW91ciBjb21taXQgbWVzc2FnZSB0ZWxs
cyBtZSB3aGF0IHlvdSBkaWQgKGtpbmQgb2YpIGJ1dCBub3Qgd2h5Lg0KDQpJIHNheSAia2luZCBv
ZiIgYXMgeW91J3JlIHVzaW5nIGNvcmUtaW1hZ2UtbHNiLXNkayBhbmQgcG9reS1sc2IgaGVyZSwg
cHJvYmFibHkgZm9yIGEgZ29vZCByZWFzb24gYnV0IHlvdSBkb24ndCBzYXkgd2h5Lg0KDQpUaGUg
a2V5IHRoaW5nIEkgbmVlZCB0byBrbm93IGlzIHdoYXQgZXh0cmEgdGVzdGluZyB0aGlzIHByb3Zp
ZGVzIHRoYXQgaXNuJ3QgYWxyZWFkeSBjb3ZlcmVkIGVsc2V3aGVyZSBvbiB0aGUgYXV0b2J1aWxk
ZXIgLSB3aHkgZG8gd2UgbmVlZCB0byBzcGVuZCB0aGUgdGltZSB0ZXN0aW5nIHRoaXM/DQoNCkNh
biB5b3UgcmVzZW5kIHdpdGggYSBiZXR0ZXIgZGVzY3JpcHRpb24gb2Ygd2h5IHdlIG5lZWQgdG8g
ZG8gdGhpcyBwbGVhc2U/DQoNCkNoZWVycywNCg0KUmljaGFyZA0KDQo+IA0K

