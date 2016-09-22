Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DA9EE00791; Wed, 21 Sep 2016 18:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37A9AE00566
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 18:34:03 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="11228781"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 22 Sep 2016 09:33:59 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 2E4484623495;
	Thu, 22 Sep 2016 09:33:58 +0800 (CST)
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0279.002; Thu, 22 Sep 2016 09:33:57 +0800
From: "Wang, Xin" <wangxin2015.fnst@cn.fujitsu.com>
To: Dai Caiyun <daicy.fnst@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] libmailtools-perl: 2.13 -> 2.18
Thread-Index: AQHR/DiOVIi/UlqMPkSlwzmYDDKrRKCE6k8g
Date: Thu, 22 Sep 2016 01:33:57 +0000
Message-ID: <C43D7C6FFC265C429F44FEB1C68F1B25633E16D3@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <1471844609-24851-1-git-send-email-daicy.fnst@cn.fujitsu.com>
In-Reply-To: <1471844609-24851-1-git-send-email-daicy.fnst@cn.fujitsu.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.120]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 2E4484623495.AA756
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Cc: =?gb2312?B?RGFpLCBDYWl5dW4vtPcgssrUxg==?= <daicy.fnst@cn.fujitsu.com>
Subject: Re: [meta-cgl][PATCH] libmailtools-perl: 2.13 -> 2.18
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
X-List-Received-Date: Thu, 22 Sep 2016 01:34:07 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

cGluZw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogeW9j
dG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgRGFpIENhaXl1
bg0KU2VudDogTW9uZGF5LCBBdWd1c3QgMjIsIDIwMTYgMTo0MyBQTQ0KVG86
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkNjOiBEYWksIENhaXl1bi+09yCy
ytTGDQpTdWJqZWN0OiBbeW9jdG9dIFttZXRhLWNnbF1bUEFUQ0hdIGxpYm1h
aWx0b29scy1wZXJsOiAyLjEzIC0+IDIuMTgNCg0KVXBncmFkZSBsaWJtYWls
dG9vbHMtcGVybCBmcm9tIDIuMTMgdG8gMi4xOC4NCg0KU2lnbmVkLW9mZi1i
eTogRGFpIENhaXl1biA8ZGFpY3kuZm5zdEBjbi5mdWppdHN1LmNvbT4NCi0t
LQ0KIC4uLi9wZXJsL3tsaWJtYWlsdG9vbHMtcGVybF8yLjEzLmJiID0+IGxp
Ym1haWx0b29scy1wZXJsXzIuMTguYmJ9ICAgICB8IDQgKystLQ0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pICBy
ZW5hbWUgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtcGVybC9wZXJsL3tsaWJt
YWlsdG9vbHMtcGVybF8yLjEzLmJiID0+IGxpYm1haWx0b29scy1wZXJsXzIu
MTguYmJ9ICg4MSUpDQoNCmRpZmYgLS1naXQgYS9tZXRhLWNnbC1jb21tb24v
cmVjaXBlcy1wZXJsL3BlcmwvbGlibWFpbHRvb2xzLXBlcmxfMi4xMy5iYiBi
L21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLXBlcmwvcGVybC9saWJtYWlsdG9v
bHMtcGVybF8yLjE4LmJiDQpzaW1pbGFyaXR5IGluZGV4IDgxJQ0KcmVuYW1l
IGZyb20gbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtcGVybC9wZXJsL2xpYm1h
aWx0b29scy1wZXJsXzIuMTMuYmINCnJlbmFtZSB0byBtZXRhLWNnbC1jb21t
b24vcmVjaXBlcy1wZXJsL3BlcmwvbGlibWFpbHRvb2xzLXBlcmxfMi4xOC5i
Yg0KaW5kZXggMjllNWJlZC4uN2FmY2IwNSAxMDA2NDQNCi0tLSBhL21ldGEt
Y2dsLWNvbW1vbi9yZWNpcGVzLXBlcmwvcGVybC9saWJtYWlsdG9vbHMtcGVy
bF8yLjEzLmJiDQorKysgYi9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1wZXJs
L3BlcmwvbGlibWFpbHRvb2xzLXBlcmxfMi4xOC5iYg0KQEAgLTE3LDggKzE3
LDggQEAgQkJDTEFTU0VYVEVORCA9ICJuYXRpdmUiDQogUFIgPSAicjEiDQog
DQogU1JDX1VSSSA9ICJodHRwOi8vc2VhcmNoLmNwYW4ub3JnL0NQQU4vYXV0
aG9ycy9pZC9NL01BL01BUktPVi9NYWlsVG9vbHMtJHtQVn0udGFyLmd6Ig0K
LVNSQ19VUklbbWQ1c3VtXSA9ICI1ZDZmYmRjNTZjNmUxMjA4ZTY4NDAxMjQz
N2I2N2UzMCINCi1TUkNfVVJJW3NoYTI1NnN1bV0gPSAiNzIxNjQwNDY4MWJl
YmNlNGUwOTY1MWUxNjE5YzNlMWVlYmUyYTdlMzg1NmYxMjMzYWYwZGQ5NjYw
YmEwNTJiNiINCitTUkNfVVJJW21kNXN1bV0gPSAiOTcyNDY4YWI1MjA3Yjkw
Mzk4ZDc3YmVkNGZmYzM2MWQiDQorU1JDX1VSSVtzaGEyNTZzdW1dID0gImRm
ZWU5ZTc3MDI1NzM3MTExMmYyMGQ5NzhlNjM3NzU5ZTgxYmM0ZjE5ZTk3YjA4
MzU4NWM3MWVjYWIzN2I1MjciDQogDQogUyA9ICIke1dPUktESVJ9L01haWxU
b29scy0ke1BWfSINCiANCi0tDQoyLjcuNA0KDQoNCg0KLS0gDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9j
dG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpodHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCgoK

