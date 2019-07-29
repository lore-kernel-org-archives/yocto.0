Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78928E00BE6; Sun, 28 Jul 2019 18:12:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA400E0098A
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 18:12:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Jul 2019 18:12:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,320,1559545200"; d="scan'208";a="190376390"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2019 18:12:40 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.22]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.2]) with mapi id
	14.03.0439.000; Mon, 29 Jul 2019 09:12:40 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "hongxu.jia@windriver.com" <hongxu.jia@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/3] intel-media-driver: check for "opengl" feature
Thread-Index: AQHVQgg/1neSluhFPE25TPD1FuhCSabgS0CA
Date: Mon, 29 Jul 2019 01:12:39 +0000
Message-ID: <80dad6f993d4420ec0f324fc2268d72218207e37.camel@intel.com>
References: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
In-Reply-To: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.190.99]
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] intel-media-driver: check for "opengl" feature
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
X-List-Received-Date: Mon, 29 Jul 2019 01:12:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E880666D051C04193825387254573CC@intel.com>
Content-Transfer-Encoding: base64

SGkgSG9uZ3h1DQoNCkkgaGF2ZSBtZXJnZWQgdGhlc2UgY2hhbmdlcyBidXQgY291bGQgeW91IHNl
bmQgdGhlc2UgdG8gbWV0YS1pbnRlbCBsaXN0DQppbiBmdXR1cmUgcGxlYXNlPw0KDQpPbiBXZWQs
IDIwMTktMDctMjQgYXQgMTg6MTEgKzA4MDAsIEhvbmd4dSBKaWEgd3JvdGU6DQo+IFNpbmNlIGNv
bWl0IFthNzhjNDIwIGxpYnZhOiBjaGVjayBmb3IgIm9wZW5nbCIgZmVhdHVyZV0gYXBwbGllZCBp
bg0KPiBvZS1jb3JlLA0KPiBhbmQgaW50ZWwtbWVkaWEtZHJpdmVyIGRlcGVuZHMgb24gbGlidmEs
IGl0IHNob3VsZCBjaGVjayBmb3IgIm9wZW5nbCINCj4gZmVhdHVyZSB0b28uDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBIb25neHUgSmlhIDxob25neHUuamlhQHdpbmRyaXZlci5jb20+DQo+IC0tLQ0K
PiAgcmVjaXBlcy1tdWx0aW1lZGlhL2xpYnZhL2ludGVsLW1lZGlhLWRyaXZlcl8xOS4yLjAuYmIg
fCAzICsrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL3JlY2lwZXMtbXVsdGltZWRpYS9saWJ2YS9pbnRlbC1tZWRpYS1kcml2ZXJfMTkuMi4w
LmJiDQo+IGIvcmVjaXBlcy1tdWx0aW1lZGlhL2xpYnZhL2ludGVsLW1lZGlhLWRyaXZlcl8xOS4y
LjAuYmINCj4gaW5kZXggODY1Njk5Mi4uODA4NDU2NyAxMDA2NDQNCj4gLS0tIGEvcmVjaXBlcy1t
dWx0aW1lZGlhL2xpYnZhL2ludGVsLW1lZGlhLWRyaXZlcl8xOS4yLjAuYmINCj4gKysrIGIvcmVj
aXBlcy1tdWx0aW1lZGlhL2xpYnZhL2ludGVsLW1lZGlhLWRyaXZlcl8xOS4yLjAuYmINCj4gQEAg
LTE0LDYgKzE0LDkgQEAgTElDX0ZJTEVTX0NIS1NVTSA9ICINCj4gZmlsZTovL0xJQ0VOU0UubWQ7
bWQ1PTZhYWI1MzYzODIzMDk1Y2U2ODJiMTU1ZmVmMDIzMWYwIFwNCj4gICMgT25seSBmb3IgNjQg
Yml0IHVudGlsIHRoaXMgaXMgcmVzb2x2ZWQ6IA0KPiBodHRwczovL2dpdGh1Yi5jb20vaW50ZWwv
bWVkaWEtZHJpdmVyL2lzc3Vlcy8zNTYNCj4gIENPTVBBVElCTEVfSE9TVCA9ICcoeDg2XzY0KS4q
LWxpbnV4Jw0KPiAgDQo+ICtpbmhlcml0IGRpc3Ryb19mZWF0dXJlc19jaGVjaw0KPiArUkVRVUlS
RURfRElTVFJPX0ZFQVRVUkVTID0gIm9wZW5nbCINCj4gKw0KPiAgREVQRU5EUyArPSAibGlidmEg
Z21tbGliIg0KPiAgDQo+ICBTUkNfVVJJID0gImdpdDovL2dpdGh1Yi5jb20vaW50ZWwvbWVkaWEt
DQo+IGRyaXZlci5naXQ7cHJvdG9jb2w9aHR0cHM7YnJhbmNoPWludGVsLW1lZGlhLTE5LjIgXA0K

