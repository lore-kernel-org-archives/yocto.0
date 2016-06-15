Return-Path: <Monica.Rajasekaran@us.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58D81E00D42; Wed, 15 Jun 2016 13:47:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [168.127.0.57 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from fncnmp04.fnc.fujitsu.com (fncnmp04.fnc.fujitsu.com
	[168.127.0.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE98E00D35
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:47:29 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,477,1459832400"; d="scan'208";a="80117388"
Received: from rchexhcp2.fnc.net.local ([168.127.134.76])
	by fncnmp02.fnc.fujitsu.com with ESMTP/TLS/AES256-SHA;
	15 Jun 2016 15:47:26 -0500
Received: from RCHEXMBP1.fnc.net.local ([169.254.2.106]) by
	RCHEXHCP2.fnc.net.local ([168.127.134.76]) with mapi id 14.03.0294.000;
	Wed, 15 Jun 2016 15:47:26 -0500
From: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] autoreconf
Thread-Index: AdHHQradspqdggSsRDmRJnaYuJFirQAKyDOAAAovToD//7NpgIAAUspg
Date: Wed, 15 Jun 2016 20:47:25 +0000
Message-ID: <111ACD726EC3464BAED310F5EA7BEBDA600122@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<7482070.IBUNiqSIt6@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6000E2@RCHEXMBP1.fnc.net.local>
	<24600FD4-C8B5-4282-87C1-1F2AF3E403DF@gmail.com>
In-Reply-To: <24600FD4-C8B5-4282-87C1-1F2AF3E403DF@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [168.127.136.253]
x-tm-as-product-ver: SMEX-10.2.0.3176-8.000.1202-22394.002
x-tm-as-result: No--46.025600-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Wed, 15 Jun 2016 20:47:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmFqLA0KDQpXaWxsIGFkZGluZyBhIGxpbmUgaW4gdGhlIGltYWdlJ3MgcmVjaXBlIGZpbGUg
bGlrZSB0aGlzIHdvcmsgPw0KDQpJTUFHRV9JTlNUQUxMID0g4oCdYXV0b2NvbmbigJ0NCg0KSSBp
bnN0YWxsZWQgImdpdCIgYW5kICJyZXNvbHZjb25mIiBpbiB0aGUgc2FtZSB3YXkuIEp1c3Qgbm90
IHN1cmUgYWJvdXQgdGhlIHBhY2thZ2UgbmFtZSB0aGlzIHRpbWUuDQoNClRoYW5rcywNCk1vbmlj
YSANCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogW21haWx0
bzpyYWoua2hlbUBnbWFpbC5jb21dIA0KU2VudDogV2VkbmVzZGF5LCBKdW5lIDE1LCAyMDE2IDM6
NDIgUE0NClRvOiBSYWphc2VrYXJhbiwgTW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVq
aXRzdS5jb20+DQpDYzogUGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5j
b20+OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBhdXRvcmVj
b25mDQoNCllvdSBuZWVkIHRvIGFkZCBhdXRvY29uZiB0byB5b3VyIHRhcmdldCBpbWFnZSwgaWYg
eW91IGRvIG5vdCB1c2UgT25saW5lIHBhY2thZ2UgbWFuYWdlbWVudA0KDQpFWFRSQV9JTUFHRV9G
RUFUVVJFU19hcHBlbmQgPSDigJwgdG9vbHMtc2Rr4oCdDQoNCmluIGxvY2FsLmNvbmYgbWlnaHQg
aGVscA0KDQoNCj4gT24gSnVuIDE1LCAyMDE2LCBhdCAxOjM1IFBNLCBSYWphc2VrYXJhbiwgTW9u
aWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+IHdyb3RlOg0KPiANCj4gSGkg
UGF1bCwNCj4gDQo+IFRoYW5rIHlvdS4gVGhpcyBpcyBpbiB0aGUgdGFyZ2V0Lg0KPiANCj4gVGhh
bmtzLA0KPiBNb25pY2ENCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IFBhdWwgRWdnbGV0b24gW21haWx0bzpwYXVsLmVnZ2xldG9uQGxpbnV4LmludGVsLmNvbV0NCj4g
U2VudDogV2VkbmVzZGF5LCBKdW5lIDE1LCAyMDE2IDM6MjUgUE0NCj4gVG86IFJhamFzZWthcmFu
LCBNb25pY2EgPE1vbmljYS5SYWphc2VrYXJhbkB1cy5mdWppdHN1LmNvbT4NCj4gQ2M6IHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gYXV0b3JlY29uZg0KPiAN
Cj4gSGkgTW9uaWNhLA0KPiANCj4gT24gV2VkLCAxNSBKdW4gMjAxNiAyMDoxNzoxNiBSYWphc2Vr
YXJhbiwgTW9uaWNhIHdyb3RlOg0KPj4gV2hhdCBpcyB0aGUgcGFja2FnZSB0byBpbnN0YWxsIGF1
dG9yZWNvbmYgPyAoVWJ1bnR1IGVxdWl2YWxlbnQ6DQo+PiBhcHQtZ2V0IGluc3RhbGwgZGgtYXV0
b3JlY29uZiApDQo+PiANCj4+IEkgYW0gZ2V0dGluZyB0aGUgZm9sbG93aW5nIGVycm9yIGZvciBv
bmUgb2YgbXkgYXBwbGljYXRpb25zOg0KPj4gImF1dG9yZWNvbmY6IGNvbW1hbmQgbm90IGZvdW5k
Ig0KPiANCj4gYXV0b3JlY29uZiBpcyBwYXJ0IG9mIGF1dG9jb25mLg0KPiANCj4gV2hlcmUgaXMg
dGhpcz8gT24gdGhlIHRhcmdldCBvciB3aXRoaW4gdGhlIGJ1aWxkIHN5c3RlbT8NCj4gDQo+IENo
ZWVycywNCj4gUGF1bA0KPiANCj4gLS0NCj4gDQo+IFBhdWwgRWdnbGV0b24NCj4gSW50ZWwgT3Bl
biBTb3VyY2UgVGVjaG5vbG9neSBDZW50cmUNCj4gLS0NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0DQo+IHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3Rp
bmZvL3lvY3RvDQoNCg==

