Return-Path: <victor.rodriguez.bahena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 630B8E002AC; Fri, 20 Feb 2015 08:19:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8A1FE00288
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 08:19:35 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 20 Feb 2015 08:19:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,615,1418112000"; d="scan'208";a="530425077"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga003.jf.intel.com with ESMTP; 20 Feb 2015 08:10:47 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 20 Feb 2015 08:19:33 -0800
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.113]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.26]) with mapi id
	14.03.0195.001; Fri, 20 Feb 2015 08:19:33 -0800
From: "Rodriguez Bahena, Victor" <victor.rodriguez.bahena@intel.com>
To: "vaduvajanalexandru@yahoo.com" <vaduvajanalexandru@yahoo.com>
Thread-Topic: [yocto] [PATCH] Add mpich support
Thread-Index: AQHQTI0z6nya2ZldnUCOWhyr86Eokpz5CO+AgAE2FoA=
Date: Fri, 20 Feb 2015 16:19:33 +0000
Message-ID: <1424449171.16673.20.camel@vrodri3-mobl2.amr.corp.intel.com>
References: <1424382189-20469-1-git-send-email-Alexandru.Vaduva@enea.com>
	<1139246852.2134837.1424382581630.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1139246852.2134837.1424382581630.JavaMail.yahoo@mail.yahoo.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.219.17.186]
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 21 Feb 2015 16:59:29 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Add mpich support
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
X-List-Received-Date: Fri, 20 Feb 2015 16:19:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <F24AAE11EB670B4FB78E417F91A312DA@intel.com>
Content-Transfer-Encoding: base64

U28gbGV0IG1lIHNlZSBpZiBJIHVuZGVyc3RhbmQsIHRoZSBmb2xsb3dpbmcgZXJyb3IgKCBidWls
ZCBsb2cgZnJvbSB0aGlzDQpwYXRjaCk6IA0KDQpOT1RFOiBFeGVjdXRpbmcgUnVuUXVldWUgVGFz
a3MNCkVSUk9SOiBRQSBJc3N1ZTogcGFja2FnZSBtcGljaCBjb250YWlucyBiYWQNClJQQVRIIC9o
b21lL3Zyb2RyaTMvcG9reS9idWlsZC90bXAvc3lzcm9vdHMvcWVtdXg4Ni91c3IvbGliIGluDQpm
aWxlIC9ob21lL3Zyb2RyaTMvcG9reS9idWlsZC90bXAvd29yay9pNTg2LXBva3ktbGludXgvbXBp
Y2gvMy4xLjEtcjAvcGFja2FnZXMtc3BsaXQvbXBpY2gvdXNyL2Jpbi9pNTg2LXBva3ktbGludXgt
bXBpZXhlYy5oeWRyYSBbcnBhdGhzXQ0KV0FSTklORzogUUEgSXNzdWU6IG1waWNoIHJkZXBlbmRz
IG9uIGxpYnhtbDIsIGJ1dCBpdCBpc24ndCBhIGJ1aWxkDQpkZXBlbmRlbmN5PyBbYnVpbGQtZGVw
c10NCldBUk5JTkc6IFFBIElzc3VlOiBtcGljaCByZGVwZW5kcyBvbiBsaWJwY2lhY2Nlc3MsIGJ1
dCBpdCBpc24ndCBhIGJ1aWxkDQpkZXBlbmRlbmN5PyBbYnVpbGQtZGVwc10NCldBUk5JTkc6IFFB
IElzc3VlOiBtcGljaCByZXF1aXJlcyAvdXNyL2Jpbi9iYXNoLCBidXQgbm8gcHJvdmlkZXJzIGlu
IGl0cw0KUkRFUEVORFMgW2ZpbGUtcmRlcHNdDQpFUlJPUjogUUEgcnVuIGZvdW5kIGZhdGFsIGVy
cm9ycy4gUGxlYXNlIGNvbnNpZGVyIGZpeGluZyB0aGVtLg0KRVJST1I6IEZ1bmN0aW9uIGZhaWxl
ZDogZG9fcGFja2FnZV9xYQ0KRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQNCmluOiAv
aG9tZS92cm9kcmkzL3Bva3kvYnVpbGQvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4L21waWNoLzMu
MS4xLXIwL3RlbXAvbG9nLmRvX3BhY2thZ2VfcWEuMjAwMjINCkVSUk9SOiBUYXNrIDkNCigvaG9t
ZS92cm9kcmkzL21ldGEtb3BlbmVtYmVkZGVkL21ldGEtb2UvcmVjaXBlcy1kZXZ0b29scy9tcGlj
aC9tcGljaF8zLjEuMS5iYiwgZG9fcGFja2FnZV9xYSkgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcx
Jw0KTk9URTogVGFza3MgU3VtbWFyeTogQXR0ZW1wdGVkIDY2NyB0YXNrcyBvZiB3aGljaCA2NDYg
ZGlkbid0IG5lZWQgdG8gYmUNCnJlcnVuIGFuZCAxIGZhaWxlZC4NCldhaXRpbmcgZm9yIDAgcnVu
bmluZyB0YXNrcyB0byBmaW5pc2g6DQoNCg0KSXMgZHVlIHRvIHRoZSBmYWN0IHRoYXQgc29tZSBv
ZiB0aGUgUUEgc2NyaXB0cyBuZWVkIHNoIGluc3RlYWQgb2YgYmFzaA0KKCBvciBzb21ldGhpbmcg
c2ltaWxhciApID8gDQoNCkkgYW0gYSBsaXR0bGUgYml0IGxvc3QgaGVyZSANCg0KVGhhbmtzIGZv
ciB0aGUgaGVscA0KDQpWaWN0b3IgUm9kcmlndWV6DQoNCg0KDQpPbiBUaHUsIDIwMTUtMDItMTkg
YXQgMjE6NDkgKzAwMDAsIEFsZXhhbmRydSBWYWR1dmEgd3JvdGU6DQo+IEZvcmdvdCB0byBtZW50
aW9uIHRoYXQgSSBpZGVudGlmaWVkIHRoZSBsaW5lOg0KPiBzcmMvcG0vaHlkcmEvdG9vbHMvdG9w
by9od2xvYy9od2xvYy9jb250cmliL2hnL3NldC1oZy1zaGFyZS1wZXJtcy5jc2g6MTojIS9iaW4v
Y3NoIC1mDQo+IA0KPiANCj4gSXQgc2VlbXMgdGhhdCBvbmUgc2NyaXB0IHVzZXMgL2Jpbi9jaCwg
YW5kIGFsc28gYW5vdGhlciBvbmUNCj4gdXNpbmcgL2Jpbi9iYXNoLg0KPiBBZGRpbmcgUkRFUEVO
RFNfJHtQTn0gKz0gImJhc2ggcGVybCB0Y3NoIiBkaWQgbm90IHNvbHZlZCB0aGUgcHJvYmxlbS4N
Cj4gYnV0IG1heWJlIGNoYW5naW5nIHRoZW0gbyAvYmluL3NoIHdpbGwgZG8uDQo+IFRoZSBpZGVh
IGlzIHNpbWlsYXIgdG8gdGhlIGNoYW5nZSBmcm9tIA0KPiANCj4gbWV0YS9yZWNpcGVzLWV4dGVu
ZGVkL2xzYi9sc2J0ZXN0L0xTQl9UZXN0LnMNCj4gTGluazogW09FLWNvcmVdIFtQQVRDSCA2Lzld
IGxzYnRlc3Q6IG5vIGJhc2hpc20gaW4gTFNCX1Rlc3Quc2ggIA0KPiANCj4gIA0KPiAgDQo+ICAN
Cj4gIA0KPiAgDQo+ICANCj4gW09FLWNvcmVdIFtQQVRDSCA2LzldIGxzYnRlc3Q6IG5vIGJhc2hp
c20gaW4gTFNCX1Rlc3Quc2gNCj4gW09FLWNvcmVdIFtQQVRDSCA2LzldIGxzYnRlc3Q6IG5vIGJh
c2hpc20gaW4gTFNCX1Rlc3Quc2ggUm9iZXJ0IFlhbmcNCj4gbGllemhpLnlhbmcgYXQgd2luZHJp
dmVyLmNvbSBXZWQgQXVnIDI3IDE1OjU3OjExIFVUQyAyMDE0IA0KPiANCj4gVmlldyBvbiBsaXN0
cy5vcGVuZW1iZWRkZWQub3JnDQo+IFByZXZpZXcgYnkgWWFob28NCj4gDQo+ICANCj4gV2hhdCBk
byB5b3Ugc2F5Pw0KPiANCj4gDQo+IA0KPiANCj4gQWxleCBWYWR1dmENCj4gDQo+IA0KPiANCj4g
T24gVGh1cnNkYXksIEZlYnJ1YXJ5IDE5LCAyMDE1IDExOjQ0IFBNLCBBbGV4YW5kcnUuIFZhZHV2
YQ0KPiA8QWxleGFuZHJ1LlZhZHV2YUBlbmVhLmNvbT4gd3JvdGU6DQo+IA0KPiANCj4gDQo+IEZy
b206IFZpY3RvciBSb2RyaWd1ZXogPHZpY3Rvci5yb2RyaWd1ZXouYmFoZW5hQGludGVsLmNvbT4N
Cj4gDQo+IFRoaXMgcGF0Y2ggYWRkIG1waWNoIHN1cHBvcnQgdG8geW9jdG8gaW4gb3JkZXIgdG8g
cnVuIE1QSSBmcmFtZXdvcmsgb24NCj4gZW1iZWRkZWQNCj4gc3lzdGVtcy4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEFsZWphbmRybyBIZXJuYW5kZXoNCj4gPGFsZWphbmRyby5oZXJuYW5kZXpAbGlu
dXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgUm9kcmlndWV6IDx2aWN0b3Iu
cm9kcmlndWV6LmJhaGVuYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRydS5W
YWR1dmEgPEFsZXhhbmRydS5WYWR1dmFAZW5lYS5jb20+DQo+IC0tLQ0KPiBtZXRhLW9lL3JlY2lw
ZXMtZGV2dG9vbHMvbXBpY2gvbXBpY2hfMy4xLjEuYmIgfCAyOQ0KPiArKysrKysrKysrKysrKysr
KysrKysrKysrKysNCj4gMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKykNCj4gY3JlYXRl
IG1vZGUgMTAwNjQ0IG1ldGEtb2UvcmVjaXBlcy1kZXZ0b29scy9tcGljaC9tcGljaF8zLjEuMS5i
Yg0KPiANCj4gZGlmZiAtLWdpdCBhL21ldGEtb2UvcmVjaXBlcy1kZXZ0b29scy9tcGljaC9tcGlj
aF8zLjEuMS5iYg0KPiBiL21ldGEtb2UvcmVjaXBlcy1kZXZ0b29scy9tcGljaC9tcGljaF8zLjEu
MS5iYg0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwLi4yZjQyMjZlDQo+
IC0tLSAvZGV2L251bGwNCj4gKysrIGIvbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL21waWNoL21w
aWNoXzMuMS4xLmJiDQo+IEBAIC0wLDAgKzEsMjkgQEANCj4gK1NVTU1BUlkgPSAiTWVzc2FnZSBQ
YXNzaW5nIEludGVyZmFjZShNUEkpIGltcGxlbWVudGF0aW9uIg0KPiArSE9NRVBBR0UgPSAiaHR0
cDovL2dpdC5tcGljaC5vcmcvbXBpY2guZ2l0LyINCj4gK1NFQ1RJT04gPSAiZGV2ZWwiDQo+ICsN
Cj4gK0xJQ0VOU0UgPSAiQlNELTItQ2xhdXNlIg0KPiArTElDX0ZJTEVTX0NIS1NVTSA9DQo+ICJm
aWxlOi8vQ09QWVJJR0hUO21kNT0yMTA2ZjA0MzUwNTZmM2RkOTM0OTc0N2E3NjZlNTgxNiINCj4g
Kw0KPiArU1JDX1VSSSA9DQo+ICJodHRwOi8vd3d3Lm1waWNoLm9yZy9zdGF0aWMvZG93bmxvYWRz
LyR7UFZ9L21waWNoLSR7UFZ9LnRhci5neiINCj4gK1NSQ19VUklbbWQ1c3VtXSA9ICI0MGRjNDA4
YjFlMDNjYzM2ZDgwMjA5YmFhYTJkMzJiNyINCj4gK1NSQ19VUklbc2hhMjU2c3VtXSA9DQo+ICI0
NTVjY2ZhZjRlYzcyNGQyY2Y1ZDhiZmYxZjNkMjZhOTU4YWQxOTYxMjFlN2VhMjY1MDRmZDMwMTg3
NTc2NTJkIg0KPiArDQo+ICtSREVQRU5EU18ke1BOfSArPSAiYmFzaCBwZXJsIHRjc2giDQo+ICtT
ID0gIiR7V09SS0RJUn0vJHtQTn0tJHtQVn0iDQo+ICsNCj4gK0VYVFJBX09FQ09ORiA9ICItLWVu
YWJsZS1kZWJ1Z2luZm8gXA0KPiArICAgICAgICAgICAgICAgIC0tZW5hYmxlLWZhc3QgXA0KPiAr
ICAgICAgICAgICAgICAgIC0tZW5hYmxlLXNoYXJlZCAgXA0KPiArICAgICAgICAgICAgICAgIC0t
ZGlzYWJsZS1mNzcgXA0KPiArICAgICAgICAgICAgICAgIC0tZGlzYWJsZS1mYyBcDQo+ICsgICAg
ICAgICAgICAgICAgLS1kaXNhYmxlLWZvcnRyYW4gXA0KPiArICAgICAgICAgICAgICAgIC0tZGlz
YWJsZS1jeHgiDQo+ICsNCj4gK2luaGVyaXQgYXV0b3Rvb2xzLWJyb2tlbnNlcCBnZXR0ZXh0DQo+
ICsNCj4gK2RvX2NvbmZpZ3VyZV9wcmVwZW5kKCkgew0KPiArICAgIGF1dG9yZWNvbmYgLS12ZXJi
b3NlIC0taW5zdGFsbCAtLWZvcmNlIC1JIC4gLUkgY29uZmRiLyAtSSBtYWludC8NCj4gKyAgICBv
ZV9ydW5jb25mDQo+ICsgICAgZXhpdA0KPiArfQ0KPiAtLSANCj4gMS45LjENCj4gDQo+IC0tIA0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0
byBtYWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3Rz
LnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4gDQo+IA0KPiANCg0KDQotLSANClZp
Y3RvciBSb2RyaWd1ZXoNCg0KT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50ZXINCg0K

