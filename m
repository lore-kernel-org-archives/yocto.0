Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF2B0E00CDE; Wed, 21 Sep 2016 18:52:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2259DE006C6
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 18:52:55 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="11229407"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 22 Sep 2016 09:52:54 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id 328214042406
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 09:52:54 +0800 (CST)
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0279.002; Thu, 22 Sep 2016 09:52:53 +0800
From: "Wang, Xin" <wangxin2015.fnst@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][meta-security][PATCH v2] samhain: 4.1.4 -> 4.1.5
Thread-Index: AQHSEkgdDy8fPorUkE+eZPb8NR4F8KCEw3tg
Date: Thu, 22 Sep 2016 01:52:52 +0000
Message-ID: <C43D7C6FFC265C429F44FEB1C68F1B25633E17CF@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <cea0cc0b-eedb-cff9-db4e-f839be442c98@gmail.com>
	<1474270394-13238-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
In-Reply-To: <1474270394-13238-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.120]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 328214042406.A8641
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Subject: Re: [meta-security][PATCH v2] samhain: 4.1.4 -> 4.1.5
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
X-List-Received-Date: Thu, 22 Sep 2016 01:52:58 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

cGluZw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogV2Fu
ZywgWGluL831IPbOIA0KU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMTksIDIw
MTYgMzozMyBQTQ0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkNjOiBX
YW5nLCBYaW4vzfUg9s4NClN1YmplY3Q6IFt5b2N0b11bbWV0YS1zZWN1cml0
eV1bUEFUQ0ggdjJdIHNhbWhhaW46IDQuMS40IC0+IDQuMS41DQoNCjEpIFVw
Z3JhZGUgc2FtaGFpbiBmcm9tIDQuMS40IHRvIDQuMS41Lg0KMikgQWRkIFRB
UkdFVF9DQ19BUkNILkZpeCBlcnJvci4NCiAgICBFUlJPUjogc2FtaGFpbi1z
ZXJ2ZXItNC4xLjUtcjAgZG9fcGFja2FnZV9xYTogUUEgSXNzdWU6IE5vIEdO
VV9IQVNIIGluIHRoZSBlbGYgYmluYXJ5OiAnL3lvY3RvL3dvcmswMDEvZm5z
dC93YW5neC9wb2t5L2J1aWxkL3RtcC93b3JrL2k1ODYtcG9reS1saW51eC9z
YW1oYWluLXNlcnZlci80LjEuNS1yMC9wYWNrYWdlcy1zcGxpdC9zYW1oYWlu
LXNlcnZlci91c3Ivc2Jpbi95dWxlX3NldHB3ZCcNCiAgICBObyBHTlVfSEFT
SCBpbiB0aGUgZWxmIGJpbmFyeTogJy95b2N0by93b3JrMDAxL2Zuc3Qvd2Fu
Z3gvcG9reS9idWlsZC90bXAvd29yay9pNTg2LXBva3ktbGludXgvc2FtaGFp
bi1zZXJ2ZXIvNC4xLjUtcjAvcGFja2FnZXMtc3BsaXQvc2FtaGFpbi1zZXJ2
ZXIvdXNyL3NiaW4veXVsZWN0bCcgW2xkZmxhZ3NdDQoNClNpZ25lZC1vZmYt
Ynk6IFdhbmcgWGluIDx3YW5neGluMjAxNS5mbnN0QGNuLmZ1aml0c3UuY29t
Pg0KLS0tDQogLi4uL3NhbWhhaW4ve3NhbWhhaW4tY2xpZW50XzQuMS40LmJi
ID0+IHNhbWhhaW4tY2xpZW50XzQuMS41LmJifSAgICAgIHwgMA0KIC4uLi9z
YW1oYWluL3tzYW1oYWluLXNlcnZlcl80LjEuNC5iYiA9PiBzYW1oYWluLXNl
cnZlcl80LjEuNS5iYn0gICAgICB8IDIgKysNCiByZWNpcGVzLXNlY3VyaXR5
L3NhbWhhaW4vc2FtaGFpbi5pbmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCA0ICsrLS0NCiAzIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkgIHJlbmFtZSByZWNpcGVzLXNlY3Vy
aXR5L3NhbWhhaW4ve3NhbWhhaW4tY2xpZW50XzQuMS40LmJiID0+IHNhbWhh
aW4tY2xpZW50XzQuMS41LmJifSAoMTAwJSkgIHJlbmFtZSByZWNpcGVzLXNl
Y3VyaXR5L3NhbWhhaW4ve3NhbWhhaW4tc2VydmVyXzQuMS40LmJiID0+IHNh
bWhhaW4tc2VydmVyXzQuMS41LmJifSAoOTclKQ0KDQpkaWZmIC0tZ2l0IGEv
cmVjaXBlcy1zZWN1cml0eS9zYW1oYWluL3NhbWhhaW4tY2xpZW50XzQuMS40
LmJiIGIvcmVjaXBlcy1zZWN1cml0eS9zYW1oYWluL3NhbWhhaW4tY2xpZW50
XzQuMS41LmJiDQpzaW1pbGFyaXR5IGluZGV4IDEwMCUNCnJlbmFtZSBmcm9t
IHJlY2lwZXMtc2VjdXJpdHkvc2FtaGFpbi9zYW1oYWluLWNsaWVudF80LjEu
NC5iYg0KcmVuYW1lIHRvIHJlY2lwZXMtc2VjdXJpdHkvc2FtaGFpbi9zYW1o
YWluLWNsaWVudF80LjEuNS5iYg0KZGlmZiAtLWdpdCBhL3JlY2lwZXMtc2Vj
dXJpdHkvc2FtaGFpbi9zYW1oYWluLXNlcnZlcl80LjEuNC5iYiBiL3JlY2lw
ZXMtc2VjdXJpdHkvc2FtaGFpbi9zYW1oYWluLXNlcnZlcl80LjEuNS5iYg0K
c2ltaWxhcml0eSBpbmRleCA5NyUNCnJlbmFtZSBmcm9tIHJlY2lwZXMtc2Vj
dXJpdHkvc2FtaGFpbi9zYW1oYWluLXNlcnZlcl80LjEuNC5iYg0KcmVuYW1l
IHRvIHJlY2lwZXMtc2VjdXJpdHkvc2FtaGFpbi9zYW1oYWluLXNlcnZlcl80
LjEuNS5iYg0KaW5kZXggZGY3OGY2My4uMGQ3NmI5YSAxMDA2NDQNCi0tLSBh
L3JlY2lwZXMtc2VjdXJpdHkvc2FtaGFpbi9zYW1oYWluLXNlcnZlcl80LjEu
NC5iYg0KKysrIGIvcmVjaXBlcy1zZWN1cml0eS9zYW1oYWluL3NhbWhhaW4t
c2VydmVyXzQuMS41LmJiDQpAQCAtMjEsNiArMjEsOCBAQCBQQUNLQUdFQ09O
RklHW2FjbF0gPSAiIC0tZW5hYmxlLXBvc2l4LWFjbCAsIC0tZGlzYWJsZS1w
b3NpeC1hY2wiDQogDQogU1JDX1VSSSArPSAiZmlsZTovL3NhbWhhaW4tc2Vy
dmVyLXZvbGF0aWxlcyINCiANCitUQVJHRVRfQ0NfQVJDSCArPSAiJHtMREZM
QUdTfSINCisNCiBFWFRSQV9PRUNPTkYgKz0gIiBcDQogICAgIC0td2l0aC1j
b25maWctZmlsZT1SRVFfRlJPTV9TRVJWRVIvZXRjL3NhbWhhaW5yYyBcDQog
ICAgIC0td2l0aC1kYXRhLWZpbGU9UkVRX0ZST01fU0VSVkVSL3Zhci9saWIv
c2FtaGFpbi9zYW1oYWluX2ZpbGUgXCBkaWZmIC0tZ2l0IGEvcmVjaXBlcy1z
ZWN1cml0eS9zYW1oYWluL3NhbWhhaW4uaW5jIGIvcmVjaXBlcy1zZWN1cml0
eS9zYW1oYWluL3NhbWhhaW4uaW5jDQppbmRleCA5MDdmNDMxLi41YmYyZWU3
IDEwMDY0NA0KLS0tIGEvcmVjaXBlcy1zZWN1cml0eS9zYW1oYWluL3NhbWhh
aW4uaW5jDQorKysgYi9yZWNpcGVzLXNlY3VyaXR5L3NhbWhhaW4vc2FtaGFp
bi5pbmMNCkBAIC05LDggKzksOCBAQCBTUkNfVVJJID0gImh0dHA6Ly9sYS1z
YW1obmEuZGUvYXJjaGl2ZS9zYW1oYWluX3NpZ25lZC0ke1BWfS50YXIuZ3og
XA0KIAkgICBmaWxlOi8vJHtJTklUU0NSSVBUX05BTUV9LmRlZmF1bHQgXA0K
IAkgICINCiANCi1TUkNfVVJJW21kNXN1bV0gPSAiMWFiNjk3YjcwMDBkMGEy
NzJkOWFkZTA1YmIxYmM2ZTAiDQotU1JDX1VSSVtzaGEyNTZzdW1dID0gIjMy
ZWU3NDc3YWYxMWQ5ZjJmNjRmMzBiOWNiMzE2YzM1MTg5N2MxYzk5NGM3Yjk4
YjBlZjE3ZmMwY2E1ZTFkMWEiDQorU1JDX1VSSVttZDVzdW1dID0gImJkYjZk
MjY1M2Q3MDZmMzE4MGUzN2VmM2Q5NWM4MjRkIg0KK1NSQ19VUklbc2hhMjU2
c3VtXSA9ICI0ZmY0YzM4NzY1Yzk0MmFiYmFhYzI1NzdkZjRjOGM0OTQwNDgy
YTFiZmZjNGE3MTlmMTgxYzRmY2E2ZjE3M2E3Ig0KIA0KIFMgPSAiJHtXT1JL
RElSfS9zYW1oYWluLSR7UFZ9Ig0KIA0KLS0NCjIuNy40DQoNCgoK

