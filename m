Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFFDEE00A16; Sun, 14 Dec 2014 18:41:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67246E00752
	for <yocto@yoctoproject.org>; Sun, 14 Dec 2014 18:41:10 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="45147107"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 15 Dec 2014 10:37:49 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sBF2ehL2028868;
	Mon, 15 Dec 2014 10:40:44 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Mon, 15 Dec 2014 10:41:14 +0800
From: "Bian, Naimeng" <biannm@cn.fujitsu.com>
To: "akuster808@gmail.com" <akuster808@gmail.com>
Thread-Topic: [Dizzy] Backport patch of CVE-2014-9112
Thread-Index: AdAYDGdEV9OsZL6cQXGGlUVTy8JPLw==
Date: Mon, 15 Dec 2014 02:41:10 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CC73DE2D79@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [Dizzy] Backport patch of CVE-2014-9112
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
X-List-Received-Date: Mon, 15 Dec 2014 02:41:16 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGkgQXJtaW4NCg0KVGhpcyBwYXRjaCBzZXQgaGF2ZSBiZWVuIGFwcGxpZWQgaW50byBtYXN0ZXIg
b2YgbWV0YS1vZSBhbmQgcG9reS4NCldvdWxkIHlvdSBtaW5kIHRvIGJhY2twb3J0IGl0IHRvIERp
enp5Lg0KDQpUaGUgY29tbWl0IGlkIGF0IG1hc3RlciBvZiBwb2t5IGFzIGJlbG93Lg0KYjkwMDFi
NjliMjMxZWZlZmJiOWVkMWUwOWVlYzIxMWU2MWNkOGNiMQ0KODAxOGY2MTY3YjczNDMzNzNmZTUz
YzZkMmJjNTNjNTY5MjI4YjNjYg0KDQpUaGFua3MNCiBCaWFuDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBCaWFuLCBOYWltZW5nIA0KU2VudDogTW9uZGF5LCBEZWNlbWJlciAw
OCwgMjAxNCAxOjQ1IFBNDQpUbzogb3BlbmVtYmVkZGVkLWNvcmVAbGlzdHMub3BlbmVtYmVkZGVk
Lm9yZw0KQ2M6IEJpYW4sIE5haW1lbmc7IFNlcmdleSBQb3pueWFrb2ZmDQpTdWJqZWN0OiBbUEFU
Q0ggMC8yXSBjcGlvOiBiYWNrcG9ydCBwYXRjaCBvZiBDVkUtMjAxNC05MTEyDQoNCmNwaW86IEZp
eCBtZW1vcnkgb3ZlcnJ1biBvbiByZWFkaW5nIGltcHJvcGVybHkgY3JlYXRlZCBsaW5rIHJlY29y
ZHMNCg0KU2lnbmVkLW9mZi1ieTogQmlhbiBOYWltZW5nIDxiaWFubm1AY24uZnVqaXRzdS5jb20+
DQoNCmh0dHA6Ly9naXQuc2F2YW5uYWguZ251Lm9yZy9jZ2l0L2NwaW8uZ2l0L2NvbW1pdC8/aWQ9
NzQ2ZjNmZjY3MGRjZmNkZDI4ZmNjOTkwZTc5Y2Q2ZmNjYzdhZTQ4ZA0KICAqIHNyYy9jb3B5aW4u
YyAoZ2V0X2xpbmtfbmFtZSk6IE5ldyBmdW5jdGlvbi4NCiAgKGxpc3RfZmlsZSwgY29weWluX2xp
bmspOiB1c2UgZ2V0X2xpbmtfbmFtZQ0KDQogICogdGVzdHMvc3ltbGluay1iYWQtbGVuZ3RoLmF0
OiBOZXcgZmlsZS4NCiAgKiB0ZXN0cy9zeW1saW5rLWxvbmcuYXQ6IE5ldyBmaWxlLg0KICAqIHRl
c3RzL01ha2VmaWxlLmFtOiBBZGQgbmV3IGZpbGVzLg0KICAqIHRlc3RzL3Rlc3RzdWl0ZS5hdDog
TGlrZXdpc2UuDQoNCiAgU2VlIGh0dHA6Ly9saXN0cy5nbnUub3JnL2FyY2hpdmUvaHRtbC9idWct
Y3Bpby8yMDE0LTExL21zZzAwMDA3Lmh0bWwNCg0KVXBzdHJlYW0tU3RhdHVzOiBCYWNrcG9ydA0K
U2lnbmVkLW9mZi1ieTogU2VyZ2V5IFBvem55YWtvZmYgPGdyYXlAZ251Lm9yZy51YT4NCg0KQmlh
biBOYWltZW5nICgyKToNCiAgY3BpbzogZml4IGJ1ZyBDVkUtMjAxNC05MTEyIGZvciBjcGlvLTIu
OA0KICBjcGlvOiBmaXggYnVnIENWRS0yMDE0LTkxMTIgZm9yIGNwaW8tMi4xMQ0KDQogLi4uL2Nw
aW8vY3Bpby0yLjExL2ZpeC1tZW1vcnktb3ZlcnJ1bi5wYXRjaCAgICAgICAgfCAyMjAgKysrKysr
KysrKysrKysrKysrKysrDQogLi4uL2NwaW8vY3Bpby0yLjgvZml4LW1lbW9yeS1vdmVycnVuLnBh
dGNoICAgICAgICAgfCAyMTcgKysrKysrKysrKysrKysrKysrKysNCiBtZXRhL3JlY2lwZXMtZXh0
ZW5kZWQvY3Bpby9jcGlvXzIuMTEuYmIgICAgICAgICAgICB8ICAgMyArLQ0KIG1ldGEvcmVjaXBl
cy1leHRlbmRlZC9jcGlvL2NwaW9fMi44LmJiICAgICAgICAgICAgIHwgICA3ICstDQogNCBmaWxl
cyBjaGFuZ2VkLCA0NDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBtZXRhL3JlY2lwZXMtZXh0ZW5kZWQvY3Bpby9jcGlvLTIuMTEvZml4LW1lbW9yeS1v
dmVycnVuLnBhdGNoDQogY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEvcmVjaXBlcy1leHRlbmRlZC9j
cGlvL2NwaW8tMi44L2ZpeC1tZW1vcnktb3ZlcnJ1bi5wYXRjaA0KDQotLQ0KMS45LjENCg0K

