Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 545ECE00C58; Thu, 17 Dec 2015 18:17:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BCA2E00349
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 18:17:16 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.20,346,1444665600"; 
   d="scan'208";a="1721125"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 18 Dec 2015 10:16:57 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id 3E8244092556;
	Fri, 18 Dec 2015 10:16:49 +0800 (CST)
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Fri, 18 Dec 2015 10:16:49 +0800
From: "Li, Xin" <lixin.fnst@cn.fujitsu.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 3/3] pacemaker: WARNING Fix
Thread-Index: AQHROMbeLI3sd2uY2U+RumBhlX9+/57QAfcw
Date: Fri, 18 Dec 2015 02:16:48 +0000
Message-ID: <A8FC939F80655644A89BB21CCD3741E8014090A152@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <1450083924-1727-1-git-send-email-lixin.fnst@cn.fujitsu.com>
	<1450083924-1727-3-git-send-email-lixin.fnst@cn.fujitsu.com>
	<1450355426.2993.19.camel@sestows129.enea.se>
In-Reply-To: <1450355426.2993.19.camel@sestows129.enea.se>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.98]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 3E8244092556.A44EB
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixin.fnst@cn.fujitsu.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 3/3] pacemaker: WARNING Fix
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
X-List-Received-Date: Fri, 18 Dec 2015 02:17:21 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIEFkcmlhbg0KDQo+DQo+SSBtZXJnZWQgdGhlIHBhdGNoZXMgYXMgaXQn
cyBiZXR0ZXIgdG8gdXNlIGEgcmVsZWFzZWQgdmVyc2lvbiwgYnV0IEkgbmV2
ZXIgZ290IGENCj5mZXRjaCBmYWlsdXJlIG9uIHRoZSBnaXQgcmVwby4gTWF5
YmUgeW91IGhhdmUgc29tZSBuZXR3b3JrIHJlc3RyaWN0aW9ucyBpZiB5b3UN
Cj5hbHdheXMgZ2V0IGl0Pw0KDQpJIGdvdCBpdC4NCk1heWJlIG15IG5ldHdv
cmsgaXMgbm90IHZlcnkgb2suIEkgd2lsbCBkbyBzb21lIGV4dHJhIHRlc3Qu
DQoNClRoYW5rcyAmIFJlZ2FyZHMsDQpMaQ0KDQo+DQo+LS1BZHJpYW4NCj4N
Cj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBMaSBYaW4gPGxpeGluLmZuc3RAY24u
ZnVqaXRzdS5jb20+DQo+PiAtLS0NCj4+ICBtZXRhLWNnbC1jb21tb24vcmVj
aXBlcy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEuMTMuYmIgfCAxMQ0K
Pj4gKysrKysrLS0tLS0NCj4+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9t
ZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtl
cl8xLjEuMTMuYmINCj4+IGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2ds
L3BhY2VtYWtlci9wYWNlbWFrZXJfMS4xLjEzLmJiDQo+PiBpbmRleCAxODA2
ZmUxLi5kMmUyMzk1IDEwMDc1NQ0KPj4gLS0tIGEvbWV0YS1jZ2wtY29tbW9u
L3JlY2lwZXMtY2dsL3BhY2VtYWtlci9wYWNlbWFrZXJfMS4xLjEzLmJiDQo+
PiArKysgYi9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvcGFjZW1ha2Vy
L3BhY2VtYWtlcl8xLjEuMTMuYmINCj4+IEBAIC0xNCw3ICsxNCw3IEBAIExJ
Q19GSUxFU19DSEtTVU0gPQ0KPiJmaWxlOi8vQ09QWUlORzttZDU9NmFkY2Ez
YjM2NDc3Y2M3N2UwNDM3NmY5YTQwZGYzMmMgXA0KPj4gICAgICAgICAgICAg
ICAgICAgICAiDQo+PiAgREVQRU5EUyA9ICJjb3Jvc3luYyBsaWJ4c2x0IG9w
ZW5haXMgbGlieG1sMiBnbnV0bHMgcmVzb3VyY2UtYWdlbnRzIGxpYnFiDQo+
cHl0aG9uLW5hdGl2ZSINCj4+DQo+PiAtU1JDX1VSSSA9ICJnaXQ6Ly9naXRo
dWIuY29tL0NsdXN0ZXJMYWJzL3BhY2VtYWtlci5naXQgXA0KPj4gK1NSQ19V
UkkgPQ0KPj4gKyJodHRwczovL2dpdGh1Yi5jb20vQ2x1c3RlckxhYnMvJHtQ
Tn0vYXJjaGl2ZS9QYWNlbWFrZXItJHtQVn0uemlwIFwNCj4+ICAgICAgICAg
ICAgIGZpbGU6Ly8wMDAxLXBhY2VtYWtlci1maXgteG1sLWNvbmZpZy5wYXRj
aCBcDQo+Pg0KPmZpbGU6Ly8wMDAyLXBhY2VtYWtlci1zZWFyY2gtaGVhZGVy
LWZyb20tU1RBR0lOR19JTkNESVItdG8td2Fsa2EucGF0Y2ggXA0KPj4gICAg
ICAgICAgICAgZmlsZTovLzAwMDMtcGFjZW1ha2VyLWZpeC1oZWFkZXItZGVm
cy1sb29rdXAucGF0Y2ggXCBAQA0KPj4gLTIzLDExICsyMywxMiBAQCBTUkNf
VVJJID0gImdpdDovL2dpdGh1Yi5jb20vQ2x1c3RlckxhYnMvcGFjZW1ha2Vy
LmdpdCBcDQo+PiAgICAgICAgICAgICBmaWxlOi8vdm9sYXRpbGVzIFwNCj4+
ICAgICAgICAgICAgIGZpbGU6Ly90bXBmaWxlcyBcDQo+PiAgICAgICAgICAg
ICINCj4+IC1TUkNSRVYgPSAiNjA1MmNkMTZjMmY0NTU4MDlmODA4OGFmNzZj
ZTg2NDgzYmY5ODM1MyINCj4+ICtTUkNfVVJJW21kNXN1bV0gPSAiZDg0YTUx
NzMzMDY3MjdhOTgxYTRmODdlMzYwMDc1OTUiDQo+PiArU1JDX1VSSVtzaGEy
NTZzdW1dID0NCj4iZTk2M2JjNTlhNWQ5OGEzZTM0NDFlYTVjY2NiNDJhYTY3
ZjlkNzkzNGI4MGM4ODE4ZTE5YWU5MWM1ZGE0ODMzMSINCj4+DQo+PiAgaW5o
ZXJpdCBhdXRvdG9vbHMtYnJva2Vuc2VwIHBrZ2NvbmZpZyBzeXN0ZW1kIHB5
dGhvbi1kaXIgdXNlcmFkZA0KPj4NCj4+IC1TPSIke1dPUktESVJ9L2dpdCIN
Cj4+ICtTPSIke1dPUktESVJ9L3BhY2VtYWtlci1QYWNlbWFrZXItJHtQVn0i
DQo+Pg0KPj4gIEVYVFJBX09FQ09ORiArPSAiU1RBR0lOR19JTkNESVI9JHtT
VEFHSU5HX0lOQ0RJUn0gXA0KPj4gICAgICAgICAgICAgICAgICAgLS1kaXNh
YmxlLWZhdGFsLXdhcm5pbmdzIFwgQEAgLTY1LDcgKzY2LDcgQEANCj4+IEZJ
TEVTXyR7UE59LWxpYnMgPSAiJHtsaWJkaXJ9L2xpYmNpYi5zby4qIFwNCj4+
ICAgICAgICAgICAgICAgICAgICAgICR7bGliZGlyfS9saWJzdG9uaXRoZC5z
by4qIFwNCj4+ICAgICAgICAgICAgICAgICAgICAgICR7bGliZGlyfS9saWJ0
cmFuc2l0aW9uZXIuc28uKiBcDQo+PiAgICAgICAgICAgICAgICAgICAgICIN
Cj4+IC1SREVQRU5EU18ke1BOfS1saWJzICs9ICJsaWJxYiINCj4+ICtSREVQ
RU5EU18ke1BOfS1saWJzICs9ICJsaWJxYiBkYnVzLWxpYiINCj4+ICBGSUxF
U18ke1BOfS1jbHVzdGVyLWxpYnMgPSAiJHtsaWJkaXJ9L2xpYmNybWNsdXN0
ZXIuc28uKiINCj4+ICBSREVQRU5EU18ke1BOfS1jbHVzdGVyLWxpYnMgKz0g
ImxpYnFiIg0KPj4gIEZJTEVTXyR7UE59LXJlbW90ZSA9ICIke3N5c2NvbmZk
aXJ9L2luaXQuZC9wYWNlbWFrZXJfcmVtb3RlIFwgQEANCj4+IC04Myw3ICs4
NCw3IEBAIEZJTEVTXyR7UE59LWRiZyArPSAiJHtsaWJkaXJ9L2Nvcm9zeW5j
L2xjcnNvLy5kZWJ1ZyINCj4+ICBSREVQRU5EU18ke1BOfSA9ICJiYXNoIHB5
dGhvbiBsaWJxYiINCj4+DQo+PiAgU1lTVEVNRF9QQUNLQUdFUyArPSAiJHtQ
Tn0tcmVtb3RlIg0KPj4gLVNZU1RFTURfU0VSVklDRV8ke1BOfSArPSAicGFj
ZW1ha2VyLnNlcnZpY2UiDQo+PiArU1lTVEVNRF9TRVJWSUNFXyR7UE59ICs9
ICJwYWNlbWFrZXIuc2VydmljZSBjcm1fbW9uLnNlcnZpY2UiDQo+PiAgU1lT
VEVNRF9TRVJWSUNFXyR7UE59LXJlbW90ZSArPSAicGFjZW1ha2VyX3JlbW90
ZS5zZXJ2aWNlIg0KPj4NCj4+ICBVU0VSQUREX1BBQ0tBR0VTID0gIiR7UE59
Ig0KPj4gLS0NCj4+IDEuOC40LjINCj4+DQo+Pg0KPj4NCj4NCj4NCj4NCg0K
Cgo=

