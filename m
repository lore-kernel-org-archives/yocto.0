Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C2C2E00547; Tue,  1 Jul 2014 09:05:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.207.212.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com
	[91.207.212.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDD06E00342
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 09:05:54 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx08-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	s61G5rXi001531
	for <yocto@yoctoproject.org>; Tue, 1 Jul 2014 18:05:53 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx08-00178001.pphosted.com with ESMTP id 1mugecmxyq-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 01 Jul 2014 18:05:53 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F04F54E
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 16:05:52 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas6.st.com [10.75.90.73])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D46015A3C3
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 16:05:52 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by Safex1hubcas6.st.com
	([10.75.90.73]) with mapi; Tue, 1 Jul 2014 18:05:52 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 1 Jul 2014 18:05:51 +0200
Thread-Topic: [yocto] Can't add shared libraries into final image
Thread-Index: Ac+VQ703oS3UnHKWQh+SD5f1wpZ4SwAAkjUA
Message-ID: <888B7DC5D4899F46A9721989283666969C1E50ABBB@SAFEX1MAIL5.st.com>
References: <888B7DC5D4899F46A9721989283666969C1E50ABAF@SAFEX1MAIL5.st.com>
	<CAP71WjyGP+PoT9XzzO-j96iEHJQt7kytu8_4mfSz4caMz8_0kw@mail.gmail.com>
In-Reply-To: <CAP71WjyGP+PoT9XzzO-j96iEHJQt7kytu8_4mfSz4caMz8_0kw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-07-01_06:2014-07-01, 2014-07-01,
	1970-01-01 signatures=0
Subject: Re: Can't add shared libraries into final image
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
X-List-Received-Date: Tue, 01 Jul 2014 16:05:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIE5pY29sYXMNCg0KWW91J3JlIHJpZ2h0LiBOb3cgaWYgeW91IGRvbid0IGtub3cgLi4u
IA0KDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmljb2xhcyBEZWNo
ZXNuZSBbbWFpbHRvOm5pY29sYXMuZGVjaGVzbmVAbGluYXJvLm9yZ10NCj4gU2VudDogbWFyZGkg
MSBqdWlsbGV0IDIwMTQgMTc6NDcNCj4gVG86IFBpZXJyZSBZdmVzIE1PUkRSRVQNCj4gQ2M6IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gQ2FuJ3QgYWRkIHNo
YXJlZCBsaWJyYXJpZXMgaW50byBmaW5hbCBpbWFnZQ0KPiANCj4gT24gVHVlLCBKdWwgMSwgMjAx
NCBhdCA1OjI0IFBNLCBQaWVycmUgWXZlcyBNT1JEUkVUIDxwaWVycmUtDQo+IHl2ZXMubW9yZHJl
dEBzdC5jb20+IHdyb3RlOg0KPiA+IEknbSBpbiBmcm9udCBvZiBhbiBpc3N1ZSB0aGF0IEkgcmVh
bGx5IGRvbid0IHVuZGVyc3RhbmQuIEkgd3JvdGUgYSBxdWl0ZSBzaW1wbGUNCj4gcmVjaXBlIHRv
IGludGVncmF0ZSBhbiBSUE0gcGFja2FnZS4NCj4gPiBBdCB0aGUgZW5kIG9mIGNvbXBpbGF0aW9u
L2luc3RhbGwvcGFja2FnaW5nL3Jvb3RmcywgSSBzYXcgbXkgc2hhcmVkDQo+IGxpYnJhcmllcyB3
ZXJlIG5vdCBwYXJ0IG9mIHRoZSBmaW5hbCBpbWFnZS4NCj4gPiBJIHVuZGVyc3Rvb2QgcXVpY2ts
eSBhZnRlciBjaGVja2luZyAgRklMRVNfJHtQTn0tZGV2LiBTaW5jZSBteSBzaGFyZWQNCj4gbGli
cmFyaWVzIGFyZSAuc28gKGFuZCBub3QgLnNvLlgpICwgYWxsIG9mIHRoZW0gZmFsbCBpbnRvIC1k
ZXYgcGFja2FnZS4NCj4gPg0KPiA+IFRodXMgSSBuYWl2ZWx5IGFkZCBGSUxFU18ke1BOfSArID0i
ICR7bGliZGlyfS9saWIqLnNvICIgaW50byBteSByZWNpcGUgLi4uIEkgd2FzDQo+IHN1cmUgdGhp
cyB3b3VsZCBzb2x2ZSBteSBpc3N1ZSwgYnV0IGRvbid0IC4NCj4gPiBJbnN0ZWFkIG15IHNoYXJl
ZCBsaWJyYXJpZXMgc3RpbGwgcmVtYWluIGluIC1kZXYgcGFja2FnZS4NCj4gPg0KPiA+IERvZXMg
YW55b25lIGNhbid0IHRlbGwgbWUgd2h5ID8gb3IgcG9pbnQgbWUgb3V0IG15IG1pc3Rha2UgPw0K
PiANCj4gVGhlIC1kZXYgcGFja2FnZSBpcyBwcm9jZXNzZWQgZmlyc3QgZHVyaW5nIHRoZSBwYWNr
YWdpbmcsIHNvIGV2ZW4gdGhvdWdoIHlvdQ0KPiB0cnkgdG8gYWRkIHRoZSAuc28gaW4gdGhlIG1h
aW4gcGFja2FnZSwgdGhlIGZpbGVzIHdpbGwgYmUgcGFja2FnZWQgaW4gLWRldiBmaXJzdC4NCj4g
eW91IG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIC5zbyBhcmUgbm90IHB1bGxlZCBpbnRvIHRo
ZSAtZGV2IHBhY2thZ2U6DQo+IA0KPiBGSUxFU19TT0xJQlNERVYgPSAiIg0KPiBGSUxFU18ke1BO
fSArPSAiJHtsaWJkaXJ9Lyouc28iDQo=

