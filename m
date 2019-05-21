Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A249E00D5C; Mon, 20 May 2019 23:57:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB314E00C46
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 23:57:16 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.60,494,1549900800"; d="scan'208";a="63956661"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 21 May 2019 14:57:14 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id C75DA4CDAD75
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 14:57:16 +0800 (CST)
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0439.000; Tue, 21 May 2019 14:57:24 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-security][PATCH] python3-fail2ban: Fix build
	error of xrange.
Thread-Index: AQHVBjCHcT7JsShESUiQJjaBVHvX2KZ1OGdg
Date: Tue, 21 May 2019 06:57:21 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FD01BF11D5F1@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1555646319-7243-1-git-send-email-leimaohui@cn.fujitsu.com>
In-Reply-To: <1555646319-7243-1-git-send-email-leimaohui@cn.fujitsu.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.225.227]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: C75DA4CDAD75.AD620
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: leimaohui@cn.fujitsu.com
Subject: Re: [meta-security][PATCH] python3-fail2ban: Fix build error of xrange.
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
X-List-Received-Date: Tue, 21 May 2019 06:57:18 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

cGluZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IExlaSwgTWFvaHVpDQo+IFNlbnQ6IEZyaWRheSwgQXByaWwgMTksIDIwMTkg
MTE6NTkgQU0NCj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6
IExlaSwgTWFvaHVpDQo+IFN1YmplY3Q6IFt5b2N0b10gW21ldGEtc2VjdXJp
dHldW1BBVENIXSBweXRob24zLWZhaWwyYmFuOiBGaXggYnVpbGQgZXJyb3Ig
b2YNCj4geHJhbmdlLg0KPiANCj4gTmFtZUVycm9yOiBuYW1lICd4cmFuZ2Un
IGlzIG5vdCBkZWZpbmVkDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMZWkgTWFv
aHVpIDxsZWltYW9odWlAY24uZnVqaXRzdS5jb20+DQo+IC0tLQ0KPiAgLi4u
L2ZpbGVzLzAwMDEtVG8tZml4LWJ1aWxkLWVycm9yLW9mLXhyYW5nLnBhdGNo
ICAgfCAyOCArKysrKysrKysrKysrKysrKysrKysrDQo+ICAuLi4vZmFpbDJi
YW4vcHl0aG9uMy1mYWlsMmJhbl8wLjEwLjQuMC5iYiAgICAgICAgICB8ICA0
ICsrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQ0K
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHJlY2lwZXMtc2VjdXJpdHkvZmFpbDJi
YW4vZmlsZXMvMDAwMS1Uby1maXgtYnVpbGQtZXJyb3Itb2YtDQo+IHhyYW5n
LnBhdGNoDQo+IA0KPiBkaWZmIC0tZ2l0IGEvcmVjaXBlcy1zZWN1cml0eS9m
YWlsMmJhbi9maWxlcy8wMDAxLVRvLWZpeC1idWlsZC1lcnJvci1vZi0NCj4g
eHJhbmcucGF0Y2ggYi9yZWNpcGVzLXNlY3VyaXR5L2ZhaWwyYmFuL2ZpbGVz
LzAwMDEtVG8tZml4LWJ1aWxkLWVycm9yLW9mLQ0KPiB4cmFuZy5wYXRjaA0K
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwLi43ZjA4
MTJjDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvcmVjaXBlcy1zZWN1cml0
eS9mYWlsMmJhbi9maWxlcy8wMDAxLVRvLWZpeC1idWlsZC1lcnJvci1vZi14
cmFuZy5wYXRjaA0KPiBAQCAtMCwwICsxLDI4IEBADQo+ICtGcm9tIGZlMzQz
NmQ2NTUxODA5OWQzNWM2NDM4NDhjYmE1MDI1M2FiYzI0OWMgTW9uIFNlcCAx
NyAwMDowMDowMCAyMDAxDQo+ICtGcm9tOiBMZWkgTWFvaHVpIDxsZWltYW9o
dWlAY24uZnVqaXRzdS5jb20+DQo+ICtEYXRlOiBUaHUsIDkgTWF5IDIwMTkg
MTQ6NDQ6NTEgKzA5MDANCj4gK1N1YmplY3Q6IFtQQVRDSF0gVG8gZml4IGJ1
aWxkIGVycm9yIG9mIHhyYW5nZS4NCj4gKw0KPiArTmFtZUVycm9yOiBuYW1l
ICd4cmFuZ2UnIGlzIG5vdCBkZWZpbmVkDQo+ICsNCj4gK1NpZ25lZC1vZmYt
Ynk6IExlaSBNYW9odWkgPGxlaW1hb2h1aUBjbi5mdWppdHN1LmNvbT4NCj4g
Ky0tLQ0KPiArIGZhaWwyYmFuL19faW5pdF9fLnB5IHwgMiArLQ0KPiArIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0K
PiArDQo+ICtkaWZmIC0tZ2l0IGEvZmFpbDJiYW4vX19pbml0X18ucHkgYi9m
YWlsMmJhbi9fX2luaXRfXy5weQ0KPiAraW5kZXggZmE2ZGNmNy4uNjE3ODlh
NCAxMDA2NDQNCj4gKy0tLSBhL2ZhaWwyYmFuL19faW5pdF9fLnB5DQo+ICsr
KysgYi9mYWlsMmJhbi9fX2luaXRfXy5weQ0KPiArQEAgLTgyLDcgKzgyLDcg
QEAgc3RycHRpbWUoIjIwMTIiLCAiJVkiKQ0KPiArDQo+ICsgIyBzaG9ydCBu
YW1lcyBmb3IgcHVyZSBudW1lcmljIGxvZy1sZXZlbCAoIkxldmVsIDI1IiBj
b3VsZCBiZSB0cnVuY2F0ZWQgYnkNCj4gc2hvcnQgZm9ybWF0cyk6DQo+ICsg
ZGVmIF9pbml0KCk6DQo+ICstCWZvciBpIGluIHhyYW5nZSg1MCk6DQo+ICsr
CWZvciBpIGluIHJhbmdlKDUwKToNCj4gKyAJCWlmIGxvZ2dpbmcuZ2V0TGV2
ZWxOYW1lKGkpLnN0YXJ0c3dpdGgoJ0xldmVsJyk6DQo+ICsgCQkJbG9nZ2lu
Zy5hZGRMZXZlbE5hbWUoaSwgJyMlMDJkLUxldi4nICUgaSkNCj4gKyBfaW5p
dCgpDQo+ICstLQ0KPiArMi43LjQNCj4gKw0KPiBkaWZmIC0tZ2l0IGEvcmVj
aXBlcy1zZWN1cml0eS9mYWlsMmJhbi9weXRob24zLWZhaWwyYmFuXzAuMTAu
NC4wLmJiIGIvcmVjaXBlcy0NCj4gc2VjdXJpdHkvZmFpbDJiYW4vcHl0aG9u
My1mYWlsMmJhbl8wLjEwLjQuMC5iYg0KPiBpbmRleCA1Yzg4N2U4Li4yM2Vm
MDI3IDEwMDY0NA0KPiAtLS0gYS9yZWNpcGVzLXNlY3VyaXR5L2ZhaWwyYmFu
L3B5dGhvbjMtZmFpbDJiYW5fMC4xMC40LjAuYmINCj4gKysrIGIvcmVjaXBl
cy1zZWN1cml0eS9mYWlsMmJhbi9weXRob24zLWZhaWwyYmFuXzAuMTAuNC4w
LmJiDQo+IEBAIC0yLDMgKzIsNyBAQCBpbmhlcml0IHNldHVwdG9vbHMzDQo+
ICByZXF1aXJlIHB5dGhvbi1mYWlsMmJhbi5pbmMNCj4gDQo+ICBSREVQRU5E
U18ke1BOfS1wdGVzdCA9ICJweXRob24zLWNvcmUgcHl0aG9uMy1pbyBweXRo
b24zLW1vZHVsZXMgcHl0aG9uMy0NCj4gZmFpbDJiYW4iDQo+ICsNCj4gK1NS
Q19VUkkgKz0gIiBcDQo+ICsgICAgICAgIGZpbGU6Ly8wMDAxLVRvLWZpeC1i
dWlsZC1lcnJvci1vZi14cmFuZy5wYXRjaCBcDQo+ICsiDQo+IC0tDQo+IDIu
Ny40DQoNCgoK

