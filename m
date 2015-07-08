Return-Path: <bfleming@meteorcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D28E00978; Wed,  8 Jul 2015 10:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [208.65.145.77 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 225 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Jul 2015 10:09:31 PDT
Received: from p02c12o144.mxlogic.net (p02c12o144.mxlogic.net [208.65.145.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACB12E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 10:09:31 -0700 (PDT)
Received: from unknown [66.194.68.135] (EHLO mail.meteorcomm.com)
	by p02c12o144.mxlogic.net(mxl_mta-8.4.0-1) with ESMTP id
	b495d955.2b5e9b65e940.314999.00-495.844997.p02c12o144.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 08 Jul 2015 11:09:31 -0600 (MDT)
X-MXL-Hash: 559d594b2c47b274-222c73de4a754ae44ba97d42791b104c037eeca6
Received: from unknown [66.194.68.135] (EHLO mail.meteorcomm.com)
	by p02c12o144.mxlogic.net(mxl_mta-8.4.0-1)
	with ESMTP id 6685d955.0.311241.00-263.834475.p02c12o144.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 08 Jul 2015 11:05:42 -0600 (MDT)
X-MXL-Hash: 559d58666bdac1cc-24bc755bb14cd1cd79deea47018a09bc39a73990
Received: from MCCRENEX01.MeteorComm.lan (10.20.0.34) by
	MCCRENEX01.meteorcomm.lan (10.20.0.34) with Microsoft SMTP Server (TLS)
	id 15.0.1076.9; Wed, 8 Jul 2015 10:05:41 -0700
Received: from MCCRENEX01.MeteorComm.lan ([fe80::752d:6914:6d6:db29]) by
	MCCRENEX01.meteorcomm.lan ([fe80::752d:6914:6d6:db29%14]) with mapi id
	15.00.1076.000; Wed, 8 Jul 2015 10:05:41 -0700
From: Benjamin Fleming <bfleming@meteorcomm.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] populate_sdk and kernel headers
Thread-Index: AdC5BnS9N7dIQ8PTStSMJIydFi1wEQATMN2AAA6dJyA=
Date: Wed, 8 Jul 2015 17:05:41 +0000
Message-ID: <12506c4bd3d74f129ccf68753b0b280c@MCCRENEX01.meteorcomm.lan>
References: <0a834e96761d47fe91dc52870a8906f8@MCCRENEX02.meteorcomm.lan>
	<CAJ86T=UQ1wmWiSJmhSzS97Z5y5bDFqhX0Bv5e38Q2jRf2bLSww@mail.gmail.com>
In-Reply-To: <CAJ86T=UQ1wmWiSJmhSzS97Z5y5bDFqhX0Bv5e38Q2jRf2bLSww@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.17.166]
MIME-Version: 1.0
X-AnalysisOut: [v=2.1 cv=M49ZKkAs c=1 sm=1 tr=0 a=/XjKdzJjB8Y25GP6vDHOEw==]
X-AnalysisOut: [:117 a=/XjKdzJjB8Y25GP6vDHOEw==:17 a=oLoTwKZ2AAAA:8 a=YlVT]
X-AnalysisOut: [AMxIAAAA:8 a=QP8GsjE2h34A:10 a=BLceEmwcHowA:10 a=IkcTkHD0f]
X-AnalysisOut: [ZMA:10 a=xqWC_Br6kY4A:10 a=zOBTXjUuO1YA:10 a=pGLkceISAAAA:]
X-AnalysisOut: [8 a=iGHA9ds3AAAA:8 a=NEAV23lmAAAA:8 a=YdXqP3_d-hWm8hViLzUA]
X-AnalysisOut: [:9 a=QEXdDO2ut3YA:10]
X-Spam: [F=0.5000000000; CM=0.500; MH=0.500(2015070809); S=0.200(2014051901)]
X-MAIL-FROM: <bfleming@meteorcomm.com>
X-SOURCE-IP: [66.194.68.135]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sdk and kernel headers
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
X-List-Received-Date: Wed, 08 Jul 2015 17:09:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2ssIA0KYWRkaW5nIGtlcm5lbC1kZXZzcmMgdG8gbXkgSU1BR0VfSU5TVEFMTCBjYXVzZWQgdGhl
IGtlcm5lbCBzb3VyY2UgdG8gYmUgaW5jbHVkZWQgaW4gdGhlIFNESy4gVW5mb3J0dW5hdGVseSwg
aXQgaXMgbm93IGFsc28gaW5jbHVkZWQgaW4gdGhlIHRhcmdldCBpbWFnZS4gDQpJIGZvdW5kIGFk
ZGluZyBrZXJuZWwtZGV2c3JjIGluc3RlYWQgdG8gVE9PTENIQUlOX1RBUkdFVF9UQVNLIGdhdmUg
bWUgd2hhdCBJIHdhbnRlZCAoL3Vzci9zcmMva2VybmVsIGluIHRoZSBTREsgYnV0IE5PVCBpbiB0
aGUgdGFyZ2V0IGltYWdlKQ0KDQpBbHNvLCBJIHJlYWxseSBvbmx5IG5lZWQgdGhlIGtlcm5lbCBo
ZWFkZXJzIChzaW1pbGFyIHRvIHRoZSBsaW51eC1oZWFkZXJzIHBhY2thZ2VzIGluIFVidW50dSkg
Zm9yIGRldmVsb3Bpbmcgb3V0LW9mLXNvdXJjZSBrZXJuZWwgbW9kdWxlcy4gSXMgdGhlcmUgaXMg
YSBkaWZmZXJlbnQgcGFja2FnZSBJIHNob3VsZCBiZSB1c2luZz8gDQoNClRoYW5rcywNCkJlbg0K
DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFuZHJlIE1jQ3VyZHkgW21h
aWx0bzphcm1jY3VyZHlAZ21haWwuY29tXQ0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDA3LCAyMDE1
IDU6NTQgUE0NCj4gVG86IEJlbmphbWluIEZsZW1pbmcNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gcG9wdWxhdGVfc2RrIGFuZCBrZXJuZWwgaGVh
ZGVycw0KPiANCj4gT24gVHVlLCBKdWwgNywgMjAxNSBhdCA0OjE2IFBNLCBCZW5qYW1pbiBGbGVt
aW5nDQo+IDxiZmxlbWluZ0BtZXRlb3Jjb21tLmNvbT4gd3JvdGU6DQo+ID4gSGVsbG8sDQo+ID4g
SSB3YW50IG15IGtlcm5lbCBoZWFkZXJzIHRvIGJlIGluY2x1ZGVkIGluIHRoZSBTREsgb3V0cHV0
IHdoZW4gSSBydW4NCj4gYml0YmFrZSBteWltYWdlIC1jIHBvcHVsYXRlX3Nkay4gSSBleHBlY3Qg
dG8gc2VlIHRoZSBoZWFkZXJzIGluIG15IGluc3RhbGxlZA0KPiBTREsgZm9sZGVyIHN1Y2ggYXMg
PHNkaz4vc3lzcm9vdC88dGFyZ2V0X21hY2g+L3Vzci9zcmMva2VybmVsOyBob3dldmVyLCBJDQo+
IGRvbid0IHNlZSBhbnl0aGluZyB0aGVyZS4gQWxzbywgSSBkb24ndCB3YW50IHRoZSBoZWFkZXJz
IGFwcGVhcmluZyBvbiB0aGUNCj4gdGFyZ2V0Lg0KPiA+DQo+ID4gSW4gbXkgcmVjaXBlIEkgaGF2
ZSBhZGRlZCBJTUFHRV9JTlNUQUxMICs9IGtlcm5lbC1tb2R1bGVzLCBhbmQNCj4gPiBTREtJTUFH
RV9GRUFUVVJFUyArPSBrZXJuZWwtZGV2c3JjLiAgVGhlIGtlcm5lbCBJJ20gdXNpbmcgaXMNCj4g
PiBsaW51eC1hbHRlcmEtbHRzaS1ydCBmcm9tDQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL2tyYWov
bWV0YS1hbHRlcmEvYmxvYi9tYXN0ZXIvcmVjaXBlcy1rZXJuZWwvbGludXgvbA0KPiA+IGludXgt
YWx0ZXJhLWx0c2ktcnRfMy4xMC5iYg0KPiA+IFdoYXQgYW0gSSBtaXNzaW5nPw0KPiANCj4gVHJ5
IGFkZGluZyBrZXJuZWwtZGV2c3JjIHRvIElNQUdFX0lOU1RBTEwgcmF0aGVyIHRoYW4NCj4gU0RL
SU1BR0VfRkVBVFVSRVMuDQo+IA0KPiA+IFRoYW5rcywNCj4gPg0KPiA+IEJlbg0KPiA+IC0tDQo+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiB5
b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

