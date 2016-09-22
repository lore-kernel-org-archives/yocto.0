Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 205ABE00BF8; Wed, 21 Sep 2016 18:45:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4975E00828
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 18:45:21 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="11229159"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 22 Sep 2016 09:45:20 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id A5DB14623479
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 09:45:17 +0800 (CST)
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0279.002; Thu, 22 Sep 2016 09:45:16 +0800
From: "Wang, Xin" <wangxin2015.fnst@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][meta-cgl][PATCH] resource-agents: 3.9.6 -> 3.9.7
Thread-Index: AQHSBAiqKo4aytb0REmjjENmhvTX9qCE3doA
Date: Thu, 22 Sep 2016 01:45:16 +0000
Message-ID: <C43D7C6FFC265C429F44FEB1C68F1B25633E1799@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <1472703837-1344-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
In-Reply-To: <1472703837-1344-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.120]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: A5DB14623479.AD460
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Subject: Re: [meta-cgl][PATCH] resource-agents: 3.9.6 -> 3.9.7
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
X-List-Received-Date: Thu, 22 Sep 2016 01:45:25 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

cGluZw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogV2Fu
ZywgWGluL831IPbOIA0KU2VudDogVGh1cnNkYXksIFNlcHRlbWJlciAwMSwg
MjAxNiAxMjoyNCBQTQ0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkNj
OiBXYW5nLCBYaW4vzfUg9s4NClN1YmplY3Q6IFt5b2N0b11bbWV0YS1jZ2xd
W1BBVENIXSByZXNvdXJjZS1hZ2VudHM6IDMuOS42IC0+IDMuOS43DQoNClVw
Z3JhZGUgcmVzb3VyY2UtYWdlbnRzIGZyb20gMy45LjYgdG8gMy45LjcuDQoN
ClNpZ25lZC1vZmYtYnk6IFdhbmcgWGluIDx3YW5neGluMjAxNS5mbnN0QGNu
LmZ1aml0c3UuY29tPg0KLS0tDQogLi4uL3tyZXNvdXJjZS1hZ2VudHNfMy45
LjYuYmIgPT4gcmVzb3VyY2UtYWdlbnRzXzMuOS43LmJifSAgICAgICAgICAg
IHwgNCArKy0tDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkgIHJlbmFtZSBtZXRhLWNnbC1jb21tb24vcmVjaXBl
cy1jZ2wvY2x1c3Rlci1yZXNvdXJjZS1hZ2VudHMve3Jlc291cmNlLWFnZW50
c18zLjkuNi5iYiA9PiByZXNvdXJjZS1hZ2VudHNfMy45LjcuYmJ9ICg5NSUp
DQoNCmRpZmYgLS1naXQgYS9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wv
Y2x1c3Rlci1yZXNvdXJjZS1hZ2VudHMvcmVzb3VyY2UtYWdlbnRzXzMuOS42
LmJiIGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0ZXItcmVz
b3VyY2UtYWdlbnRzL3Jlc291cmNlLWFnZW50c18zLjkuNy5iYg0Kc2ltaWxh
cml0eSBpbmRleCA5NSUNCnJlbmFtZSBmcm9tIG1ldGEtY2dsLWNvbW1vbi9y
ZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1h
Z2VudHNfMy45LjYuYmINCnJlbmFtZSB0byBtZXRhLWNnbC1jb21tb24vcmVj
aXBlcy1jZ2wvY2x1c3Rlci1yZXNvdXJjZS1hZ2VudHMvcmVzb3VyY2UtYWdl
bnRzXzMuOS43LmJiDQppbmRleCAxOGVmMWU4Li5hMGQ0ZTFmIDEwMDY0NA0K
LS0tIGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0ZXItcmVz
b3VyY2UtYWdlbnRzL3Jlc291cmNlLWFnZW50c18zLjkuNi5iYg0KKysrIGIv
bWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0ZXItcmVzb3VyY2Ut
YWdlbnRzL3Jlc291cmNlLWFnZW50DQorKysgc18zLjkuNy5iYg0KQEAgLTIw
LDggKzIwLDggQEAgU1JDX1VSSSA9ICJodHRwczovL2NvZGVsb2FkLmdpdGh1
Yi5jb20vQ2x1c3RlckxhYnMvcmVzb3VyY2UtYWdlbnRzL3Rhci5nei92JHtQ
Vn0NCiAgICAgICAgICAgIGZpbGU6Ly8wMy1maXgtaGVhZGVyLWRlZnMtbG9v
a3VwLnBhdGNoIFwNCiAgICAgICAgICAgIg0KIA0KLVNSQ19VUklbbWQ1c3Vt
XSA9ICI2ODczZDVhMjE3YWVlMzAyNjE5M2ZiODViZmExOGE0YSINCi1TUkNf
VVJJW3NoYTI1NnN1bV0gPSAiMzk3MjJjZGVlNjhmZjk2ZDA2Nzg4ZjA1ZjMy
NWJkMjFlYzJmYzU5YzU5ZDg0N2U1ZTRiMjNjNmRmMjNiZjY3OCINCitTUkNf
VVJJW21kNXN1bV0gPSAiYzU5MDk2YjFiYWNjNzA0ZThhNWEyODVmMTU3Mjkx
MDkiDQorU1JDX1VSSVtzaGEyNTZzdW1dID0gImU1YmQ2MjY1OGZiYzIzNmFj
YjgzYjcwOWY2NGIyY2Q5ZmFlNTJhYTRhNDIwYTQ0ZmVkNWViNjY3ZTkyOGIx
NTIiDQogDQogTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vQ09QWUlORztt
ZDU9NzUxNDE5MjYwYWE5NTQ0OTlmN2FiYWFiYWE4ODJiYmUgXA0KICAgICAg
ICAgICAgICAgICAgICAgZmlsZTovL0NPUFlJTkcuTEdQTDttZDU9NGZiZDY1
MzgwY2RkMjU1OTUxMDc5MDA4YjM2NDUxNmMgXA0KLS0NCjIuNy40DQoNCgoK

