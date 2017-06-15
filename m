Return-Path: <zhengrq.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08962E00B97; Wed, 14 Jun 2017 21:03:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 435D3E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 21:03:41 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="20056597"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 15 Jun 2017 12:03:35 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 2567F46B5403
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 12:03:35 +0800 (CST)
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0319.002; Thu, 15 Jun 2017 12:03:36 +0800
From: "Zheng, Ruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-selinux] [PATCH] audit: 2.7.1 -> 2.7.6 
Thread-Index: AQHS1PlW2WI6Ciu8FUaIHsTmtqQ4jaIlbrng
Date: Thu, 15 Jun 2017 04:03:33 +0000
Message-ID: <33D4DBCAC5F2D74E96B07F6E7632BF7324596A70@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1495708762-66219-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
In-Reply-To: <1495708762-66219-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.100]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 2567F46B5403.A95B4
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
Subject: Re: [meta-selinux] [PATCH] audit: 2.7.1 -> 2.7.6
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
X-List-Received-Date: Thu, 15 Jun 2017 04:03:45 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

UGluZw0KDQpaaGVuZyBSdW9xaW4NCk5hbmppbmcgRnVqaXRzdSBOYW5kYSBT
b2Z0d2FyZSBUZWNoLiBDby4sIEx0ZC4oRk5TVCkNCkFERFIuOiBOby42IFdl
bnpodSBSb2FkLCBTb2Z0d2FyZSBBdmVudWUsDQogICAgICAgTmFuamluZywg
MjEwMDEyLCBDaGluYQ0KTUFJTCA6IHpoZW5ncnEuZm5zdEBjbi5mdWppc3R1
LmNvbQ0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBa
aGVuZywgUnVvcWluL9ajIMj0x9UgDQpTZW50OiBUaHVyc2RheSwgTWF5IDI1
LCAyMDE3IDY6MzkgUE0NClRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpD
YzogWmhlbmcsIFJ1b3Fpbi/WoyDI9MfVIDx6aGVuZ3JxLmZuc3RAY24uZnVq
aXRzdS5jb20+DQpTdWJqZWN0OiBbeW9jdG9dIFttZXRhLXNlbGludXhdIFtQ
QVRDSF0gYXVkaXQ6IDIuNy4xIC0+IDIuNy42IA0KDQpVcGdyYWRlIGF1ZGl0
IGZyb20gMi43LjEgdG8gMi43LjYNCg0KU2lnbmVkLW9mZi1ieTogemhlbmdy
cSA8emhlbmdycS5mbnN0QGNuLmZ1aml0c3UuY29tPg0KLS0tDQogcmVjaXBl
cy1zZWN1cml0eS9hdWRpdC97YXVkaXRfMi43LjEuYmIgPT4gYXVkaXRfMi43
LjYuYmJ9IHwgNCArKy0tDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkgIHJlbmFtZSByZWNpcGVzLXNlY3VyaXR5
L2F1ZGl0L3thdWRpdF8yLjcuMS5iYiA9PiBhdWRpdF8yLjcuNi5iYn0gKDk2
JSkNCg0KZGlmZiAtLWdpdCBhL3JlY2lwZXMtc2VjdXJpdHkvYXVkaXQvYXVk
aXRfMi43LjEuYmIgYi9yZWNpcGVzLXNlY3VyaXR5L2F1ZGl0L2F1ZGl0XzIu
Ny42LmJiDQpzaW1pbGFyaXR5IGluZGV4IDk2JQ0KcmVuYW1lIGZyb20gcmVj
aXBlcy1zZWN1cml0eS9hdWRpdC9hdWRpdF8yLjcuMS5iYg0KcmVuYW1lIHRv
IHJlY2lwZXMtc2VjdXJpdHkvYXVkaXQvYXVkaXRfMi43LjYuYmINCmluZGV4
IDk3NWU2ZTkuLjc1ZDRkMjMgMTAwNjQ0DQotLS0gYS9yZWNpcGVzLXNlY3Vy
aXR5L2F1ZGl0L2F1ZGl0XzIuNy4xLmJiDQorKysgYi9yZWNpcGVzLXNlY3Vy
aXR5L2F1ZGl0L2F1ZGl0XzIuNy42LmJiDQpAQCAtMTUsOCArMTUsOCBAQCBT
UkNfVVJJID0gImh0dHA6Ly9wZW9wbGUucmVkaGF0LmNvbS9zZ3J1YmIvJHtC
UE59LyR7QlBOfS0ke1BWfS50YXIuZ3ogXA0KICAgICAgICAgICAgZmlsZTov
L2F1ZGl0ZC5zZXJ2aWNlIFwNCiAgICAgICAgICAgIGZpbGU6Ly9hdWRpdC12
b2xhdGlsZS5jb25mIFwgICINCi1TUkNfVVJJW21kNXN1bV0gPSAiYjIyNGVh
NmYwMDBjODI4MWU1ZGVlZTg2OTAzYWM1YmEiDQotU1JDX1VSSVtzaGEyNTZz
dW1dID0gIjA0NDE3OTA3OTRmZDkzNzVkYmNhNTk4ZmEwZmZiNDZjNTdmZjM3
YjNhMjRiOTRmZmVjMGJiZWUzMjE1Y2NhMDkiDQorU1JDX1VSSVttZDVzdW1d
ID0gIjU1YTgxYmJlZDk3M2I1OGE5MDU5MGM5NDllNzFkYzNlIg0KK1NSQ19V
Uklbc2hhMjU2c3VtXSA9ICJmYTY1Mjg5Y2ZmZGM5NWEyNWJmYmRiYTU0MWY0
M2VlMWIxMmM3MDcwOTBhMzhmZDAyN2RjZjkzNTRiOTAxNGU3Ig0KIA0KIGlu
aGVyaXQgYXV0b3Rvb2xzIHB5dGhvbm5hdGl2ZSB1cGRhdGUtcmMuZCBzeXN0
ZW1kDQogDQotLQ0KMi43LjQNCg0KCgo=

