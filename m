Return-Path: <hamish.guthrie@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CB6DE00C29; Thu, 22 Dec 2016 07:07:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.223.79.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx1.kistler.com (mx1.kistler.com [91.223.79.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0A3DE00953
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 07:07:26 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.33,388,1477954800"; d="scan'208";a="27195601"
Received: from kihagsepp01.int.kistler.com ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	22 Dec 2016 16:07:24 +0100
Received: from mx1.kistler.com (kihagciip01.int.kistler.com [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Thu, 22 Dec 2016 16:07:24 +0100 (CET)
X-IronPort-AV: E=Sophos;i="5.33,388,1477954800"; d="scan'208";a="27195599"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx1.kistler.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	22 Dec 2016 16:07:24 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%14]) with mapi
	id 14.03.0266.001; Thu, 22 Dec 2016 16:07:24 +0100
From: Hamish Guthrie <Hamish.Guthrie@kistler.com>
To: 'Rick Altherr' <raltherr@google.com>
Thread-Topic: [yocto] fitImage and initramfs
Thread-Index: AdJbqVNnBUCbCbYDS66rJ3mlKS7xKf//+HUA///sf0CAABy/gP//7cLAgAA1boD//rAugA==
Date: Thu, 22 Dec 2016 15:07:24 +0000
Message-ID: <7411EC580D08984EBA0A1730211182191AA8E97E@kihagwinex01.int.kistler.com>
References: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
	<CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7C3@kihagwinex01.int.kistler.com>
	<CAPLgG==_xUCSGDEitJNj_OY-wvOUB50_eagrdW+58n4aXreX_w@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7ED@kihagwinex01.int.kistler.com>
	<CAPLgG==LF60y5yevKR32jJp3V78+dcfqAWTowh=35MZina_RRw@mail.gmail.com>
In-Reply-To: <CAPLgG==LF60y5yevKR32jJp3V78+dcfqAWTowh=35MZina_RRw@mail.gmail.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fitImage and initramfs
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
X-List-Received-Date: Thu, 22 Dec 2016 15:07:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaywNCg0KSSBmb3VuZCB0aGUgY2F1c2Ugb2YgdGhlIHByb2JsZW0sIGJ1dCBJIHBvc3Np
Ymx5IHN0aWxsIGRvIG5vdCB1bmRlcnN0YW5kIHdoeSB0aGlzIGhhcHBlbnMuIEl0IHR1cm5zIG91
dCB0aGF0IGluIGZhY3QgdHdvIHByb2Nlc3NlcyB0cnkgdG8gZGVjb21wcmVzcyB0aGUgY3Bpby54
eHggZmlsZSBjb25jdXJyZW50bHkgd2hlbiBidWlsZGluZyB0aGUgZml0SW1hZ2UuIFRoZXJlIGlz
IHNvbWV0aGluZyBzaW1pbGFyIHdoaWNoIGhhcHBlbnMgd2l0aCB0YXIgLSBzZWUgdGhpcyBjb21t
aXQ6IDhjNWYzNDU0OTcxMDc0ZDNmMWRlN2JjZGU5NDgxZTg4MTIyMWUwNzYuDQoNClRoaXMgcGF0
Y2ggZml4ZXMgdGhlIGlzc3VlDQoNCmRpZmYgLS1naXQgYS9tZXRhL2NsYXNzZXMva2VybmVsLmJi
Y2xhc3MgYi9tZXRhL2NsYXNzZXMva2VybmVsLmJiY2xhc3MNCmluZGV4IGZhNTk4Y2YuLjM5NTk3
M2YgMTAwNjQ0DQotLS0gYS9tZXRhL2NsYXNzZXMva2VybmVsLmJiY2xhc3MNCisrKyBiL21ldGEv
Y2xhc3Nlcy9rZXJuZWwuYmJjbGFzcw0KQEAgLTE2MCw2ICsxNjAsNyBAQCBFWFRSQV9PRU1BS0Ug
PSAiIEhPU1RDQz0iJHtCVUlMRF9DQ30iIEhPU1RDUFA9IiR7QlVJTERfQ1BQfSIiDQogS0VSTkVM
X0FMVF9JTUFHRVRZUEUgPz89ICIiDQoNCiBjb3B5X2luaXRyYW1mcygpIHsNCisgICAgICAgc2V0
ICtlDQogICAgICAgIGVjaG8gIkNvcHlpbmcgaW5pdHJhbWZzIGludG8gLi91c3IgLi4uIg0KICAg
ICAgICAjIEluIGNhc2UgdGhlIGRpcmVjdG9yeSBpcyBub3QgY3JlYXRlZCB5ZXQgZnJvbSB0aGUg
Zmlyc3QgcGFzcyBjb21waWxlOg0KICAgICAgICBta2RpciAtcCAke0J9L3Vzcg0KDQotIEhhbWlz
aA0KDQogDQpPbiBXZWQsIERlYyAyMSwgMjAxNiBhdCAxMDoxMSBBTSwgSGFtaXNoIEd1dGhyaWUg
PEhhbWlzaC5HdXRocmllQGtpc3RsZXIuY29tPiB3cm90ZToNCkhpIFJpY2ssDQoNCj4+IFdoYXQg
aGFwcGVucyBpZiB5b3UgdXNlIGNvcmUtaW1hZ2UtbWluaW1hbC1pbml0cmFtZnMgZm9yIElOSVRS
QU1GU19JTUFHRT/CoA0KDQpJIGp1c3QgdHJpZWQgdGhhdCBhbmQgWW9jdG8gY29tcGxhaW5zIHdp
dGggTm90aGluZyBQUk9WSURFUyAnY29yZS1pbWFnZS1taW5pbWFsLWluaXRyYW1mcycNCg0KPj4g
SSB0aGluayB0aGUgbWFpbiBwcm9ibGVtIGlzIHRoYXQgeW91IGFyZSB0ZWxsaW5nIFlvY3RvIHRv
IGluY2x1ZGUgdGhlIGZ1bGwgcm9vdGZzIGltYWdlIGFzIGFuIGluaXRyYW1mcyBpbnN0ZWFkIG9m
IHRoZSByZWR1Y2VkLCBzcGVjaWFsLXB1cnBvc2UgaW5pdHJhbWZzIGltYWdlLg0KDQpJIGFtIG5v
dCBzdXJlIHRoYXQgWW9jdG8gc2hvdWxkIGdpdmUgYSBkYW1uIGFib3V0IHdoYXQgSSBhbSB0cnlp
bmcgdG8gcHV0IGludG8gbXkgaW5pdHJhbWZzLCBpZiBJIGFtIHN0dXBpZCBlbm91Z2ggdG8gaW5j
bHVkZSBhIDEwMEcgaW1hZ2UgaW50byBteSBpbml0cmFtZnMsIGl0IGlzIG15IHByb2JsZW0sIG5v
dCBZb2N0bydzISBJZiBJIGFtIHN0dXBpZCBlbm91Z2ggdG8gZG8gdGhhdCwga25vd2luZyB0aGF0
IEkgb25seSBoYXZlIDI1Nk0gUkFNLCBJIHNob3VsZCBiZSB0aGUgb25lIGJpdHRlbiENCg0KSSBo
YXZlIHRyaWVkIGRvaW5nIHRoZSBzYW1lIHRoaW5nIHdpdGggYSBzcGVjaWFsIHJlZHVjZWQgZmls
ZXN5c3RlbSBmb3Igb3VyIHVwZGF0ZSBzb2Z0d2FyZSAod2hpY2ggaXMgYWJvdXQgNE0sIGJ5IHRo
ZSB3YXkpLCBhbmQgSSBnZXQgdGhlIHNhbWUgZXJyb3Igd2l0aCAoVW5leHBlY3RlZCBlbmQgb2Yg
aW5wdXQpLCBzbyBJIGRvIG5vdCBiZWxpZXZlIGZvciBhIG1vbWVudCBpdCBpcyB0aGUgc2l6ZSBv
ZiB0aGUgaW5pdHJhbWZzLiBJIHN1c3BlY3Qgc29tZXRoaW5nIGluIHRoZSBrZXJuZWwuYmJjbGFz
cywgYnV0IGZvciB0aGUgbGlmZSBvZiBtZSBJIGNhbm5vdCBzZWUgd2h5IGl0IHdvdWxkIGZhaWwu
IEl0IHNob3VsZCBqdXN0IFdPUkshDQoNCkhhbWlzaA0KDQo=

