Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C07E00C43; Tue, 13 Nov 2018 01:40:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AEC6E00C3C;
	Tue, 13 Nov 2018 01:40:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Nov 2018 01:40:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,498,1534834800"; d="scan'208";a="105821384"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2018 01:40:09 -0800
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.31]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.100]) with mapi id
	14.03.0415.000; Tue, 13 Nov 2018 17:40:08 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "theknoppix@gmail.com" <theknoppix@gmail.com>,
	"meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-intel] fb: switching to inteldrmfb from efi vga
Thread-Index: AQHUezOsguJaRGLZMk+2GMx8D84bEKVM7TWA
Date: Tue, 13 Nov 2018 09:40:08 +0000
Message-ID: <8bfde938743cce2dc00e203514d81800f9e80b57.camel@intel.com>
References: <CAD9sEJtuq21Y6-auquC+AW8a92TDYXxLw6W340NT3ef=khxwZA@mail.gmail.com>
In-Reply-To: <CAD9sEJtuq21Y6-auquC+AW8a92TDYXxLw6W340NT3ef=khxwZA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.170.71]
MIME-Version: 1.0
Subject: Re: [meta-intel] fb: switching to inteldrmfb from efi vga
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
X-List-Received-Date: Tue, 13 Nov 2018 09:40:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <F8A2F9B1103247489DB99195BD026B8B@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDE4LTExLTEzIGF0IDEyOjMwICswMzAwLCBLbm9wcGl4IHdyb3RlOg0KPiB5b2N0
byBhbmQgbWV0YS1pbnRlbDogMi41LjEvc3Vtbw0KPiBrZXJuZWw9bGludXgteW9jdG8tNC4xNS4x
OA0KPiBtYWNoaW5lPWludGVsLWNvcmVpNy02NA0KPiBkaXN0cm89cG9reQ0KPiANCj4gdGhlIHBy
b2JsZW0gaXM6DQo+IHdoZW4gSSBib290IHRoZSBzeXN0ZW0gaXQgY29tZXMgdG8gdGhpcyBtZXNz
YWdlIGFuZCBmcm96ZWVzOiAiIGZiOg0KPiBzd2l0Y2hpbmcgdG8gYW1kZ3B1ZHJtZmIgZnJvbSBl
ZmkgdmdhIg0KDQpUaGlzIGVycm9yIHNheXMgYW1kZ3B1IHdoaWxlIHRoZSBzdWJqZWN0IHNheXMg
aW50ZWwgZHJpdmVyIC4uLiBXaGljaA0Kb25lIGFyZSB5b3UgdXNpbmcgYW5kIG9uIHdoaWNoIGdy
YXBoaWNzIGNhcmQ/DQoNCkRvZXMgaXQgd29yayBpZiB5b3UgdXNlIDQuMTQga2VybmVsPw0KDQo+
IA0KPiBJIHNlYXJjaGVkIGEgbG90LCB0aGVyZSBpcyBhIHdvcmthcm91bmQgdG8gc29sdmUgcHJv
YmxlbSAoYWRkDQo+IG5vbW9kZXNldCB0byBncnViIHBhcmFtcykgYnV0IHdoZW4gaSBzZXQgdGhp
cyBzcGxhc2ggc2NyZWVuIGRvZXNuJ3QNCj4gd29yay4gKGFsc28gc29tZW9uZSBvbiBzdGFja292
ZXJmbG93IHNheXMgd2hlbiB5b3UgZG8gbm9tb2Rlc2V0IHlvdQ0KPiBjYW5ub3QgdXNlIGdyYXBo
aWNhbCBhY2NlbGVyYXRpb24uKQ0KPiANCj4gVGhlcmUgYXJlIGEgbG90IG9mIG9sZCBtZXNzYWdl
cyBhYm91dCB0aGlzIHNwZXNpZmljIHByb2JsZW0gd2hpY2gNCj4gdGhleQ0KPiBzYXkgIml0IGlz
IHNvbHZlZCBpbiBuZXcgdmVyc2lvbiBvZiBrZXJuZWwiIG9yICJhIG5ldyBpbnRlbCBkcm0tZml4
DQo+IHdpbGwgc29sdmUiIGJ1dCBJIGNhbWUgYWNjcm9zIHRoZSBwcm9ibGVtIG5vdy4NCj4gDQo+
IFdvdWxkIHlvdSBwbGVhc2UgYWR2aWNlIG1lIGFueSB0dXRvcmlhbCB0byBsZWFybiB3aGF0J3Mg
Z29pbmcgb24/DQo+IA0KPiAoRXhjdXNlIG1lIGZvciBteSBlbmdsaXNoLCBJIGFtIG5vdCBuYXRp
dmUpDQoNCg==

