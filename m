Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13AC4E00DF1; Wed, 12 Jun 2019 20:08:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AC46E00D94
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 20:08:04 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.63,367,1557158400"; d="scan'208";a="67173308"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 13 Jun 2019 11:08:01 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id C4B1D4CDE7E6
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 11:02:40 +0800 (CST)
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0439.000; Thu, 13 Jun 2019 11:02:45 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-security][PATCH] python3-fail2ban: Fix build
	error of xrange.
Thread-Index: AQHVBjCHcT7JsShESUiQJjaBVHvX2KaZHD0A
Date: Thu, 13 Jun 2019 03:02:46 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FD01BF12B4A2@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1555646319-7243-1-git-send-email-leimaohui@cn.fujitsu.com>
In-Reply-To: <1555646319-7243-1-git-send-email-leimaohui@cn.fujitsu.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.225.227]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: C4B1D4CDE7E6.AD54F
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
X-List-Received-Date: Thu, 13 Jun 2019 03:08:06 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGksDQoNClBsZWFzZSBtZXJnZSB0aGlzIHBhdGNoIHRvIHdhcnJpb3IgYnJh
bmNoLg0KDQpCZXN0IHJlZ2FyZHMNCkxlaQ0KDQo+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+IEZyb206IExlaSwgTWFvaHVpDQo+IFNlbnQ6IEZy
aWRheSwgQXByaWwgMTksIDIwMTkgMTE6NTkgQU0NCj4gVG86IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmcNCj4gQ2M6IExlaSwgTWFvaHVpDQo+IFN1YmplY3Q6
IFt5b2N0b10gW21ldGEtc2VjdXJpdHldW1BBVENIXSBweXRob24zLWZhaWwy
YmFuOiBGaXggYnVpbGQgZXJyb3Igb2YNCj4geHJhbmdlLg0KPiANCj4gTmFt
ZUVycm9yOiBuYW1lICd4cmFuZ2UnIGlzIG5vdCBkZWZpbmVkDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBMZWkgTWFvaHVpIDxsZWltYW9odWlAY24uZnVqaXRz
dS5jb20+DQo+IC0tLQ0KPiAgLi4uL2ZpbGVzLzAwMDEtVG8tZml4LWJ1aWxk
LWVycm9yLW9mLXhyYW5nLnBhdGNoICAgfCAyOCArKysrKysrKysrKysrKysr
KysrKysrDQo+ICAuLi4vZmFpbDJiYW4vcHl0aG9uMy1mYWlsMmJhbl8wLjEw
LjQuMC5iYiAgICAgICAgICB8ICA0ICsrKysNCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMzIgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHJl
Y2lwZXMtc2VjdXJpdHkvZmFpbDJiYW4vZmlsZXMvMDAwMS1Uby1maXgtYnVp
bGQtZXJyb3Itb2YtDQo+IHhyYW5nLnBhdGNoDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvcmVjaXBlcy1zZWN1cml0eS9mYWlsMmJhbi9maWxlcy8wMDAxLVRvLWZp
eC1idWlsZC1lcnJvci1vZi0NCj4geHJhbmcucGF0Y2ggYi9yZWNpcGVzLXNl
Y3VyaXR5L2ZhaWwyYmFuL2ZpbGVzLzAwMDEtVG8tZml4LWJ1aWxkLWVycm9y
LW9mLQ0KPiB4cmFuZy5wYXRjaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0K
PiBpbmRleCAwMDAwMDAwLi43ZjA4MTJjDQo+IC0tLSAvZGV2L251bGwNCj4g
KysrIGIvcmVjaXBlcy1zZWN1cml0eS9mYWlsMmJhbi9maWxlcy8wMDAxLVRv
LWZpeC1idWlsZC1lcnJvci1vZi14cmFuZy5wYXRjaA0KPiBAQCAtMCwwICsx
LDI4IEBADQo+ICtGcm9tIGZlMzQzNmQ2NTUxODA5OWQzNWM2NDM4NDhjYmE1
MDI1M2FiYzI0OWMgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxDQo+ICtGcm9t
OiBMZWkgTWFvaHVpIDxsZWltYW9odWlAY24uZnVqaXRzdS5jb20+DQo+ICtE
YXRlOiBUaHUsIDkgTWF5IDIwMTkgMTQ6NDQ6NTEgKzA5MDANCj4gK1N1Ympl
Y3Q6IFtQQVRDSF0gVG8gZml4IGJ1aWxkIGVycm9yIG9mIHhyYW5nZS4NCj4g
Kw0KPiArTmFtZUVycm9yOiBuYW1lICd4cmFuZ2UnIGlzIG5vdCBkZWZpbmVk
DQo+ICsNCj4gK1NpZ25lZC1vZmYtYnk6IExlaSBNYW9odWkgPGxlaW1hb2h1
aUBjbi5mdWppdHN1LmNvbT4NCj4gKy0tLQ0KPiArIGZhaWwyYmFuL19faW5p
dF9fLnB5IHwgMiArLQ0KPiArIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQ0KPiArDQo+ICtkaWZmIC0tZ2l0IGEvZmFp
bDJiYW4vX19pbml0X18ucHkgYi9mYWlsMmJhbi9fX2luaXRfXy5weQ0KPiAr
aW5kZXggZmE2ZGNmNy4uNjE3ODlhNCAxMDA2NDQNCj4gKy0tLSBhL2ZhaWwy
YmFuL19faW5pdF9fLnB5DQo+ICsrKysgYi9mYWlsMmJhbi9fX2luaXRfXy5w
eQ0KPiArQEAgLTgyLDcgKzgyLDcgQEAgc3RycHRpbWUoIjIwMTIiLCAiJVki
KQ0KPiArDQo+ICsgIyBzaG9ydCBuYW1lcyBmb3IgcHVyZSBudW1lcmljIGxv
Zy1sZXZlbCAoIkxldmVsIDI1IiBjb3VsZCBiZSB0cnVuY2F0ZWQgYnkNCj4g
c2hvcnQgZm9ybWF0cyk6DQo+ICsgZGVmIF9pbml0KCk6DQo+ICstCWZvciBp
IGluIHhyYW5nZSg1MCk6DQo+ICsrCWZvciBpIGluIHJhbmdlKDUwKToNCj4g
KyAJCWlmIGxvZ2dpbmcuZ2V0TGV2ZWxOYW1lKGkpLnN0YXJ0c3dpdGgoJ0xl
dmVsJyk6DQo+ICsgCQkJbG9nZ2luZy5hZGRMZXZlbE5hbWUoaSwgJyMlMDJk
LUxldi4nICUgaSkNCj4gKyBfaW5pdCgpDQo+ICstLQ0KPiArMi43LjQNCj4g
Kw0KPiBkaWZmIC0tZ2l0IGEvcmVjaXBlcy1zZWN1cml0eS9mYWlsMmJhbi9w
eXRob24zLWZhaWwyYmFuXzAuMTAuNC4wLmJiIGIvcmVjaXBlcy0NCj4gc2Vj
dXJpdHkvZmFpbDJiYW4vcHl0aG9uMy1mYWlsMmJhbl8wLjEwLjQuMC5iYg0K
PiBpbmRleCA1Yzg4N2U4Li4yM2VmMDI3IDEwMDY0NA0KPiAtLS0gYS9yZWNp
cGVzLXNlY3VyaXR5L2ZhaWwyYmFuL3B5dGhvbjMtZmFpbDJiYW5fMC4xMC40
LjAuYmINCj4gKysrIGIvcmVjaXBlcy1zZWN1cml0eS9mYWlsMmJhbi9weXRo
b24zLWZhaWwyYmFuXzAuMTAuNC4wLmJiDQo+IEBAIC0yLDMgKzIsNyBAQCBp
bmhlcml0IHNldHVwdG9vbHMzDQo+ICByZXF1aXJlIHB5dGhvbi1mYWlsMmJh
bi5pbmMNCj4gDQo+ICBSREVQRU5EU18ke1BOfS1wdGVzdCA9ICJweXRob24z
LWNvcmUgcHl0aG9uMy1pbyBweXRob24zLW1vZHVsZXMgcHl0aG9uMy0NCj4g
ZmFpbDJiYW4iDQo+ICsNCj4gK1NSQ19VUkkgKz0gIiBcDQo+ICsgICAgICAg
IGZpbGU6Ly8wMDAxLVRvLWZpeC1idWlsZC1lcnJvci1vZi14cmFuZy5wYXRj
aCBcDQo+ICsiDQo+IC0tDQo+IDIuNy40DQoNCgoK

