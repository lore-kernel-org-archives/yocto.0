Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17A66E00D74; Tue, 17 Sep 2019 23:52:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1835E00963
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 23:52:57 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.64,519,1559491200"; d="scan'208";a="75637493"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 18 Sep 2019 14:52:56 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 68FA54CE0C9C;
	Wed, 18 Sep 2019 14:52:53 +0800 (CST)
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0439.000; Wed, 18 Sep 2019 14:52:56 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: Yi Zhao <yi.zhao@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Adrian.Dudau@enea.com" <Adrian.Dudau@enea.com>, 
	"alexandru.vaduva@linux.com" <alexandru.vaduva@linux.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 3/3] libhtml-tagset-perl: remove recipe
Thread-Index: AQHVLIEOcLc8w301Bkex/fRrd/aCH6cxgKrA
Date: Wed, 18 Sep 2019 06:53:00 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FD01C3071B81@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1561595941-25137-1-git-send-email-yi.zhao@windriver.com>
	<1561595941-25137-3-git-send-email-yi.zhao@windriver.com>
In-Reply-To: <1561595941-25137-3-git-send-email-yi.zhao@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.225.227]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 68FA54CE0C9C.A02AF
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: leimaohui@cn.fujitsu.com
Subject: Re: [meta-cgl][PATCH 3/3] libhtml-tagset-perl: remove recipe
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
X-List-Received-Date: Wed, 18 Sep 2019 06:52:59 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGkNCg0KSSBtZXQgYSBkZXBlbmQgZXJyb3Igd2hlbiBJIGJ1aWx0IG1ldGEt
Y2dsKHdhcnJpb3IgYnJhbmNoKSB3aXRoIG1ldGEtb2Uod2FycmlvciBicmFu
Y2gpLg0KDQpFUlJPUjogTm90aGluZyBQUk9WSURFUyAnbGliaHRtbC10YWdz
ZXQtcGVybC1uYXRpdmUnLi4uDQoNCkkgZG9uJ3QgdGhpbmsgdGhpcyBwYXRj
aCBzaG91bGQgYmUgbWVyZ2VkIHRvIHdhcnJpb3IgYnJhbmNoLCBiZWNhdXNl
IGxpYmh0bWwtdGFnc2V0LXBlcmwgaGFzbid0IGJlZW4gYWRkZWQgaW50byBt
ZXRhLW9lJ3Mgd2FycmlvciBicmFuY2guDQoNCkJlc3QgcmVnYXJkcw0KTGVp
DQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5
b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1i
b3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uDQo+IEJlaGFsZiBPZiBZaSBa
aGFvDQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDI3LCAyMDE5IDg6MzkgQU0N
Cj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEFkcmlhbi5EdWRhdUBl
bmVhLmNvbTsgYWxleGFuZHJ1LnZhZHV2YUBsaW51eC5jb20NCj4gU3ViamVj
dDogW3lvY3RvXSBbbWV0YS1jZ2xdW1BBVENIIDMvM10gbGliaHRtbC10YWdz
ZXQtcGVybDogcmVtb3ZlIHJlY2lwZQ0KPiANCj4gVGhlIGxpYmh0bWwtdGFn
c2V0LXBlcmwgcmVjaXBlIHdhcyBhZGRlZCB0byBtZXRhLXBlcmwgbGF5ZXIg
d2l0aCBjb21taXQ6DQo+IDQwNThlNjVmM2M0ZTE3YWQwNDQyM2Y0YzllZGY4
NjA3ZmU2ZmRiNGYNCj4gV2UgY2FuIGRyb3AgdGhpcyBkdXBsaWNhdGUgcmVj
aXBlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogWWkgWmhhbyA8eWkuemhhb0B3
aW5kcml2ZXIuY29tPg0KPiAtLS0NCj4gIC4uLi9yZWNpcGVzLXBlcmwvcGVy
bC9saWJodG1sLXRhZ3NldC1wZXJsXzMuMjAuYmIgICAgICAgfCAxNyAtLS0t
LS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGRlbGV0aW9u
cygtKQ0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2dsLWNvbW1vbi9y
ZWNpcGVzLXBlcmwvcGVybC9saWJodG1sLXRhZ3NldC0NCj4gcGVybF8zLjIw
LmJiDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lw
ZXMtcGVybC9wZXJsL2xpYmh0bWwtdGFnc2V0LXBlcmxfMy4yMC5iYg0KPiBi
L21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLXBlcmwvcGVybC9saWJodG1sLXRh
Z3NldC1wZXJsXzMuMjAuYmINCj4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0
DQo+IGluZGV4IDI3NjVjZDIuLjAwMDAwMDANCj4gLS0tIGEvbWV0YS1jZ2wt
Y29tbW9uL3JlY2lwZXMtcGVybC9wZXJsL2xpYmh0bWwtdGFnc2V0LXBlcmxf
My4yMC5iYg0KPiArKysgL2Rldi9udWxsDQo+IEBAIC0xLDE3ICswLDAgQEAN
Cj4gLURFU0NSSVBUSU9OID0gIkhUTUwgVGFnc2V0IGJpdHMuIg0KPiAtSE9N
RVBBR0UgPSAiaHR0cDovL3NlYXJjaC5jcGFuLm9yZy9kaXN0L0hUTUwtVGFn
c2V0LyINCj4gLVNFQ1RJT04gPSAibGlicyINCj4gLUxJQ0VOU0UgPSAiQXJ0
aXN0aWMtMS4wIHwgR1BMLTEuMCsiDQo+IC1MSUNfRklMRVNfQ0hLU1VNID0N
Cj4gImZpbGU6Ly9SRUFETUU7YmVnaW5saW5lPTYwO21kNT0xNmRkZGEyZDg0
NWE1NTQ2ZjYxNWU2YjEyMmQxZGJhZCINCj4gLVBSID0gInI0Ig0KPiAtDQo+
IC1TUkNfVVJJID0gImh0dHA6Ly9zZWFyY2guY3Bhbi5vcmcvQ1BBTi9hdXRo
b3JzL2lkL1AvUEUvUEVUREFOQ0UvSFRNTC1UYWdzZXQtDQo+ICR7UFZ9LnRh
ci5neiINCj4gLQ0KPiAtUyA9ICIke1dPUktESVJ9L0hUTUwtVGFnc2V0LSR7
UFZ9Ig0KPiAtDQo+IC1pbmhlcml0IGNwYW4NCj4gLQ0KPiAtQkJDTEFTU0VY
VEVORD0ibmF0aXZlIg0KPiAtDQo+IC1TUkNfVVJJW21kNXN1bV0gPSAiZDJi
ZmExOGZlMTkwNGRmN2Y2ODNlOTY2MTFlODc0MzciDQo+IC1TUkNfVVJJW3No
YTI1NnN1bV0gPQ0KPiAiYWRiMTdkYWM5ZTM2Y2QwMTFmNTI0Mzg4MWM5NzM5
NDE3ZmQxMDJmY2U3NjBmOGRlNGU5YmU0YzcxMzExMDhlMiINCj4gLS0NCj4g
Mi43LjQNCj4gDQo+IC0tDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0K
PiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IGh0dHBzOi8vbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPiANCg0KCgo=

