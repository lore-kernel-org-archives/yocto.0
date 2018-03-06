Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0693AE00971; Tue,  6 Mar 2018 08:00:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 023A8E00E66
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 08:00:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w26G08wh013446
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 6 Mar 2018 08:00:09 -0800 (PST)
Received: from ALA-MBC.corp.ad.wrs.com ([169.254.1.89]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0361.001;
	Tue, 6 Mar 2018 07:59:35 -0800
From: "Reyna, David" <david.reyna@windriver.com>
To: "Hatle, Mark" <mark.hatle@windriver.com>, "BURTON, ROSS"
	<ross.burton@intel.com>
Thread-Topic: Are Windows SDKs (mingw layer) supposed to work?
Thread-Index: AdO1CMCZFATDD4luQxutgHj7mOIsawAcbLGAAAZRq4AADAKkcA==
Date: Tue, 6 Mar 2018 15:59:35 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0F11F5909@ALA-MBC.corp.ad.wrs.com>
References: <5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2@ALA-MBC.corp.ad.wrs.com>
	<CAJTo0La4LkRgwmNqs6p9tGEj+fWY=Tm6q-ATLtTOm6TLUz3tuQ@mail.gmail.com>
	<2bd4e7ea-ee28-432d-0c74-f816c8223664@windriver.com>
In-Reply-To: <2bd4e7ea-ee28-432d-0c74-f816c8223664@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.119.141]
MIME-Version: 1.0
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Are Windows SDKs (mingw layer) supposed to work?
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
X-List-Received-Date: Tue, 06 Mar 2018 16:00:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyayBhbmQgUm9zcywNCg0KPiBSb3NzOiBIYXZlIHlvdSB0cmllZCB1c2luZyAyLjQgdG8g
aWRlbnRpZnkgd2hlbiBpdCBicm9rZT8NCgkNCkkgd2lsbCB0cnkgMi40IGFuZCBzZWUgaWYgaXQg
aXMgZGlmZmVyZW50Lg0KDQo+IE1hcms6IEluIHRoZSBwYXN0IDdaSVAgKHdoZW4gbm90IHRoZSBh
ZG1pbikgd291bGQgY3JlYXRlIGVpdGhlciBjb3BpZXMgb3IgJ3Nob3J0Y3V0cycgaW5zdGVhZCBv
ZiBhY3R1YWwgc3ltYm9saWMgbGlua3MuICANCg0KSSB3aWxsIGxvb2sgdG8gc2VlIGlmIHRoZXJl
IGlzIGEgbmV3IHNldHRpbmcgaW4gN1pJUC4NCg0KPiBNYXJrOiBXaGF0IHZlcnNpb24gb2Ygd2lu
ZG93cyBhcmUgeW91IHVzaW5nPyAgDQoNCkkgYW0gdXNpbmcgV2luZG93cyA3Lg0KDQpUaGFua3Ms
DQpEYXZpZA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTWFyayBIYXRsZSBb
bWFpbHRvOm1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbV0gDQpTZW50OiBUdWVzZGF5LCBNYXJjaCAw
NiwgMjAxOCA1OjQwIEFNDQpUbzogQlVSVE9OLCBST1NTOyBSZXluYSwgRGF2aWQNCkNjOiBZb2N0
bzsgV0FORywgWUFORw0KU3ViamVjdDogUmU6IEFyZSBXaW5kb3dzIFNES3MgKG1pbmd3IGxheWVy
KSBzdXBwb3NlZCB0byB3b3JrPw0KDQpPbiAzLzYvMTggNDozOSBBTSwgQnVydG9uLCBSb3NzIHdy
b3RlOg0KPiBIYXZlIHlvdSB0cmllZCB1c2luZyAyLjQgdG8gaWRlbnRpZnkgd2hlbiBpdCBicm9r
ZT/CoCBDbGVhcmx5IHdlIG5lZWQgDQo+IHRvIGV4dGVuZCB0aGUgc2VsZnRlc3Qgc28gdGhlIG1p
bmd3IFNESyBpcyBhY3R1YWxseSB0ZXN0ZWQuLi4NCj4gDQo+IFJvc3MNCj4gDQo+IE9uIDYgTWFy
Y2ggMjAxOCBhdCAwNTozMiwgUmV5bmEsIERhdmlkIDxkYXZpZC5yZXluYUB3aW5kcml2ZXIuY29t
IA0KPiA8bWFpbHRvOmRhdmlkLnJleW5hQHdpbmRyaXZlci5jb20+PiB3cm90ZToNCj4gDQo+ICAg
ICBIaSBhbGwsX19fXw0KPiANCj4gICAgIF9fwqBfXw0KPiANCj4gICAgIEkgYW0gdHJ5aW5nIHRv
IGVuYWJsZSBhIGN1c3RvbWVyIGZvciB1c2luZyBZUCBTREtzIG9uIFdpbmRvd3MuIEl0IGFwcGFy
ZW50bHkNCj4gICAgIGlzIHN1cHBvc2VkIHRvIHdvcmssIGJ1dCBJIGFtIHVuYWJsZSB0byBnZXQg
cGFzdCBmYXRhbCBlcnJvcnMuX19fXw0KPiANCj4gICAgIF9fwqBfXw0KPiANCj4gICAgIEkgaGF2
ZSBsb29rZWQgZm9yIGRvY3VtZW50YXRpb24gYXQgdGhlIFlQIHNpdGUgYW5kIHRoZSBtZXRhLW1p
bmd3IHJlcG8sIGJ1dA0KPiAgICAgdG8gbm8gYXZhaWwuX19fXw0KPiANCj4gICAgIF9fwqBfXw0K
PiANCj4gICAgIDEpIE15IHByb2plY3QgaXMgYSBzaW1wbGUgZGVmYXVsdCDigJxxZW11eDg2LTY0
4oCdIHdpdGggWVAtMi41IEhFQUQsIHdpdGggdGhlDQo+ICAgICBsYXRlc3Qg4oCcbWV0YS1taW5n
d+KAnSBsYXllciBhZGRlZCBhbmQgPFNES01BQ0hJTkUgPz0gDQo+ICJpNjg2LW1pbmd3MzIiPi5f
X19fDQo+IA0KPiAgICAgX1/CoF9fDQo+IA0KPiAgICAgVGhlIFNESyBidWlsZHMgZmluZSBhbmQg
SSBnZXQgdGhlIOKAnCoueHrigJ0gZ2VuZXJhdGVkIGZpbGUuX19fXw0KDQpUaGUgb3V0cHV0IGZv
cm1hdCBmcm9tIHRoZSBZb2N0byBQcm9qZWN0IG9mIGEgdGFyYmFsbCBoYXMgYmVlbiB0aGF0IHdh
eSBzaW5jZSB0aGUgYmVnaW5uaW5nLiAgV2UgKFdSKSBoYWQgY29kZSB0aGF0IHdvdWxkIHByb2R1
Y2UgYSB6aXAgZm9ybWF0LCBidXQgdGhhdCBzdG9wcGVkIHdvcmtpbmcgYSBmZXcgcmVsZWFzZXMg
YWdvIHdoZW4gdGhlIGFyY2hpdmUgY2hhaW5pbmcgd2FzIHJld29ya2VkLi4NCg0KV2UndmUgbm90
IHlldCByZXN1cnJlY3RlZCB0aGUgY29kZSBmb3IgdGhlIC56aXAgZ2VuZXJhdGlvbiBidXQgcHJv
YmFibHkgd2lsbCBpbiB0aGUgbmV4dCBmZXcgbW9udGhzLg0KDQo+ICAgICBfX8KgX18NCj4gDQo+
ICAgICAyKSBIb3dldmVyLCB3aGVuIEkgdXNlIDdaSVAgdG8gZXh0cmFjdCBpdCBvbiBteSBXaW5k
b3dzIGhvc3QgKHdoaWNoIGlzDQo+ICAgICByZWNvbW1lbmRlZCBmb3IgWFkgZmlsZXMpLCBJIGdl
dCBzZXZlcmFsIGZhdGFsIGlzc3Vlcy5fX19fDQo+IA0KPiAgICAgX1/CoF9fDQo+IA0KPiAgICAg
wqAgKGEpIEkgZ2V0IG1vcmUgdGhhbiBhIGh1bmRyZWQgZXJyb3JzIOKAnENhbiBub3QgY3JlYXRl
IHN5bWJvbGljIGxpbms6IEFjY2Vzcw0KPiAgICAgaXMgZGVuaWVk4oCdLiBfX19fDQoNClRoaXMg
aXMgb2RkLiAgSW4gdGhlIHBhc3QgN1pJUCAod2hlbiBub3QgdGhlIGFkbWluKSB3b3VsZCBjcmVh
dGUgZWl0aGVyIGNvcGllcyBvciAnc2hvcnRjdXRzJyBpbnN0ZWFkIG9mIGFjdHVhbCBzeW1ib2xp
YyBsaW5rcy4gIEl0IHNvdW5kcyBsaWtlIHNvbWV0aGluZyBoYXMgY2hhbmdlZCBpbiA3emlwLg0K
DQo+ICAgICBfX8KgX18NCj4gDQo+ICAgICBXaGlsZSBJIGRvIG5vdCBjYXJlIGFib3V0IHRoZSBv
bmVzIGZvciB0aGUgYmluIHRvb2xzIGluIHRoZSBzeXNyb290LCBJIGRvDQo+ICAgICBjYXJlIHRo
YXQgbW9zdCBvZiB0aGUgY3Jvc3MgdG9vbGNoYWluIEVYRSBmaWxlcyBhcmUgdGh1c2x5IGJyb2tl
biwgcGx1cyBtYW55DQo+ICAgICBvZiB0aGUgbGlicmFyaWVzIGFuZCBoZWFkZXIgZmlsZXMgaW4g
dGhlIHN5c3Jvb3QuX19fXw0KPiANCj4gICAgIF9fwqBfXw0KPiANCj4gICAgIEFtIEkgbWlzc2lu
ZyBhIHN0ZXA/X19fXw0KPiANCj4gICAgIF9fwqBfXw0KPiANCj4gICAgIElmIEkgaW4gZmFjdCBl
eHRyYWN0IHRoaXMgZmlsZSBvbiBteSBMaW51eCBob3N0LCBJIGNhbiBkaXJlY3RseSBzZWUgdGhh
dCBpdA0KPiAgICAgaXMgZnVsbCBvZiBzeW1saW5rcyEgV2h5IGFyZSB0aGVyZSBzeW1saW5rcyBp
biBhIFdpbmRvd3Mtc3BlY2lmaWMgDQo+IHRhcmJhbGw/X19fXw0KDQpPZnRlbiBJJ3ZlIGV4dHJh
Y3RlZCBpdCBvbiBhIGxpbnV4IG1hY2hpbmUsIGFuZCB0aGVuIHVzZXMgemlwIHRvIHJlY29tcHJl
c3MgaXQuDQooWW91IHN0aWxsIG5lZWQgdG8gdXNlIDd6aXAgdG8gZXh0cmFjdCBiZWNhdXNlIG9m
IHRoZSBsb25nIHBhdGhuYW1lcyB0aGF0IGJsb3cgdXAgd2luemlwLikNCg0KPiAgICAgX1/CoF9f
DQo+IA0KPiAgICAgwqAgKGIpIElmIEkgYXR0ZW1wdCB0byBidWlsZCBhIHNpbXBsZSBDIGZpbGUg
ZnJvbSB0aGUgc2hlbGwgaW4gdGhlIFNESw0KPiAgICAgZW52aXJvbm1lbnQsIEkgZWl0aGVyIGdl
dCBhIHNpbGVudCBmYWlsdXJlIChmb3IgdGhlIDMyLWJpdCB0b29sY2hhaW4pIG9yIGENCj4gICAg
IGJsYXRhbnQgZXJyb3IgYXMgcGVyOl9fX18NCg0KV2hhdCB2ZXJzaW9uIG9mIHdpbmRvd3MgYXJl
IHlvdSB1c2luZz8gIFRoZSBsYXN0IHRpbWUgSSB0ZXN0ZWQgdGhpcyAoUm9ja28pIGl0IHdhcyB3
b3JraW5nIHByb3Blcmx5IHN0aWxsLCBidXQgSSB0ZXN0ZWQgd2l0aCBXaW4gNy4gIFNvIGl0J3Mg
cG9zc2libGUgdGhhdCBzb21ldGhpbmcgbW9yZSByZWNlbnQgaGFzIGJyb2tlbiBpdC4NCg0KSSdt
IG5vdCBzdXJlIGlmIEknbGwgaGF2ZSB0aW1lIHRvZGF5IHRvIHJldHJ5IHRoaXMgd2l0aCBSb2Nr
bywgYnV0IEknbGwgc2VlIGlmIEkgY2FuLg0KDQotLU1hcmsNCg==

