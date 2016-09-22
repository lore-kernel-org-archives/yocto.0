Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C90BFE00CD0; Wed, 21 Sep 2016 18:41:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3C82E00BF8
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 18:41:20 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="11229023"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 22 Sep 2016 09:41:19 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id 8BF0B4042406
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 09:41:14 +0800 (CST)
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0279.002; Thu, 22 Sep 2016 09:41:13 +0800
From: "Wang, Xin" <wangxin2015.fnst@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][meta-cgl][PATCH] pacemaker: 1.1.13 -> 1.1.15
Thread-Index: AQHSDDzwp3G5hZVhJEueU9P2c8AWJKCEzE9g
Date: Thu, 22 Sep 2016 01:41:14 +0000
Message-ID: <C43D7C6FFC265C429F44FEB1C68F1B25633E1786@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <1473605893-1558-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
In-Reply-To: <1473605893-1558-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.120]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 8BF0B4042406.AC0D8
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Subject: Re: [meta-cgl][PATCH] pacemaker: 1.1.13 -> 1.1.15
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
X-List-Received-Date: Thu, 22 Sep 2016 01:41:22 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

cGluZw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogV2Fu
ZywgWGluL831IPbOIA0KU2VudDogU3VuZGF5LCBTZXB0ZW1iZXIgMTEsIDIw
MTYgMTA6NTggUE0NClRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpDYzog
V2FuZywgWGluL831IPbODQpTdWJqZWN0OiBbeW9jdG9dW21ldGEtY2dsXVtQ
QVRDSF0gcGFjZW1ha2VyOiAxLjEuMTMgLT4gMS4xLjE1DQoNCjEpIFVwZ3Jh
ZGUgcGFjZW1ha2VyIGZyb20gMS4xLjEzIHRvIDEuMS4xNS4NCjIpIE1vZGlm
eSBwYXRjaCwgc2luY2UgdGhlIGRhdGEgaGFzIGJlZW4gY2hhbmdlZC4NCiAg
ICAwMDAyLXBhY2VtYWtlci1zZWFyY2gtaGVhZGVyLWZyb20tU1RBR0lOR19J
TkNESVItdG8td2Fsa2EucGF0Y2gNCg0KU2lnbmVkLW9mZi1ieTogV2FuZyBY
aW4gPHdhbmd4aW4yMDE1LmZuc3RAY24uZnVqaXRzdS5jb20+DQotLS0NCiAu
Li4vMDAwMi1wYWNlbWFrZXItc2VhcmNoLWhlYWRlci1mcm9tLVNUQUdJTkdf
SU5DRElSLXRvLXdhbGthLnBhdGNoICAgfCAyICstDQogLi4uL3BhY2VtYWtl
ci97cGFjZW1ha2VyXzEuMS4xMy5iYiA9PiBwYWNlbWFrZXJfMS4xLjE1LmJi
fSAgICAgICAgICAgIHwgNCArKy0tDQogMiBmaWxlcyBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pICByZW5hbWUgbWV0YS1jZ2wt
Y29tbW9uL3JlY2lwZXMtY2dsL3BhY2VtYWtlci97cGFjZW1ha2VyXzEuMS4x
My5iYiA9PiBwYWNlbWFrZXJfMS4xLjE1LmJifSAoOTYlKQ0KDQpkaWZmIC0t
Z2l0IGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL3BhY2VtYWtlci9w
YWNlbWFrZXIvMDAwMi1wYWNlbWFrZXItc2VhcmNoLWhlYWRlci1mcm9tLVNU
QUdJTkdfSU5DRElSLXRvLXdhbGthLnBhdGNoIGIvbWV0YS1jZ2wtY29tbW9u
L3JlY2lwZXMtY2dsL3BhY2VtYWtlci9wYWNlbWFrZXIvMDAwMi1wYWNlbWFr
ZXItc2VhcmNoLWhlYWRlci1mcm9tLVNUQUdJTkdfSU5DRElSLXRvLXdhbGth
LnBhdGNoDQppbmRleCAwODMxZmRhLi4zMTA0NTEyIDEwMDc1NQ0KLS0tIGEv
bWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL3BhY2VtYWtlci9wYWNlbWFr
ZXIvMDAwMi1wYWNlbWFrZXItc2VhcmNoLWhlYWRlci1mcm9tLVNUQUdJTkdf
SU5DRElSLXRvLXdhbGthLnBhdGNoDQorKysgYi9tZXRhLWNnbC1jb21tb24v
cmVjaXBlcy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtlci8wMDAyLXBhY2VtYWtl
ci1zZWENCisrKyByY2gtaGVhZGVyLWZyb20tU1RBR0lOR19JTkNESVItdG8t
d2Fsa2EucGF0Y2gNCkBAIC0yNyw3ICsyNyw3IEBAIGluZGV4IDA4YjQ2MTEu
LjZmY2QxYWEgMTAwNjQ0DQogIA0KICBkbmwgRXZlbnR1YWxseSByZW1vdmUg
dGhpcw0KICBpZiB0ZXN0ICIkY3Jvc3NfY29tcGlsaW5nIiAhPSAieWVzIjsg
dGhlbg0KLS0gICBDRkxBR1M9IiRDRkxBR1MgLUkke3ByZWZpeH0vaW5jbHVk
ZS9oZWFydGJlYXQiDQorLSAgIENQUEZMQUdTPSIkQ1BQRkxBR1MgLUkke3By
ZWZpeH0vaW5jbHVkZS9oZWFydGJlYXQiDQogKyAgIENGTEFHUz0iJENGTEFH
UyAtSSR7U1RBR0lOR19JTkNESVJ9L2hlYXJ0YmVhdCINCiArICAgQ1BQRkxB
R1M9IiRDUFBGTEFHUyAtSSR7U1RBR0lOR19JTkNESVJ9L2hlYXJ0YmVhdCIN
CiAgZmkNCmRpZmYgLS1naXQgYS9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1j
Z2wvcGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEuMTMuYmIgYi9tZXRhLWNnbC1j
b21tb24vcmVjaXBlcy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEuMTUu
YmINCnNpbWlsYXJpdHkgaW5kZXggOTYlDQpyZW5hbWUgZnJvbSBtZXRhLWNn
bC1jb21tb24vcmVjaXBlcy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEu
MTMuYmINCnJlbmFtZSB0byBtZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wv
cGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEuMTUuYmINCmluZGV4IGQyZTIzOTUu
LjE3YzlmZTQgMTAwNzU1DQotLS0gYS9tZXRhLWNnbC1jb21tb24vcmVjaXBl
cy1jZ2wvcGFjZW1ha2VyL3BhY2VtYWtlcl8xLjEuMTMuYmINCisrKyBiL21l
dGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9wYWNlbWFrZXIvcGFjZW1ha2Vy
XzEuMS4xNS5iYg0KQEAgLTIzLDggKzIzLDggQEAgU1JDX1VSSSA9ICJodHRw
czovL2dpdGh1Yi5jb20vQ2x1c3RlckxhYnMvJHtQTn0vYXJjaGl2ZS9QYWNl
bWFrZXItJHtQVn0uemlwIFwNCiAgICAgICAgICAgIGZpbGU6Ly92b2xhdGls
ZXMgXA0KICAgICAgICAgICAgZmlsZTovL3RtcGZpbGVzIFwNCiAgICAgICAg
ICAgIg0KLVNSQ19VUklbbWQ1c3VtXSA9ICJkODRhNTE3MzMwNjcyN2E5ODFh
NGY4N2UzNjAwNzU5NSINCi1TUkNfVVJJW3NoYTI1NnN1bV0gPSAiZTk2M2Jj
NTlhNWQ5OGEzZTM0NDFlYTVjY2NiNDJhYTY3ZjlkNzkzNGI4MGM4ODE4ZTE5
YWU5MWM1ZGE0ODMzMSINCitTUkNfVVJJW21kNXN1bV0gPSAiMzcyMTk3MWY4
YWRiYTI0ODA3NmI0M2Y5N2M0NTcxYWIiDQorU1JDX1VSSVtzaGEyNTZzdW1d
ID0gIjA3ODdjYmMxOGQxZjFiMzYwYTExZWI3Y2NiNjcxNDA0MjM2MGQ0OTQ4
YjI1MTdhOWZlNDNkYWY5ZTgzOWFmNjYiDQogDQogaW5oZXJpdCBhdXRvdG9v
bHMtYnJva2Vuc2VwIHBrZ2NvbmZpZyBzeXN0ZW1kIHB5dGhvbi1kaXIgdXNl
cmFkZA0KIA0KLS0NCjIuNy40DQoNCgoK

