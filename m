Return-Path: <yaoxp@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63885E00BAE; Thu, 19 Jun 2014 23:24:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2252E00AFD
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 23:24:06 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.00,743,1396972800"; d="scan'208";a="32185211"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 20 Jun 2014 14:21:22 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s5K6O0E4032060;
	Fri, 20 Jun 2014 14:24:00 +0800
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Fri, 20 Jun 2014 14:24:02 +0800
From: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] [PATCH] add recipe cim-schema, cim-schema-docs and
	license file DMTF.
Thread-Index: AQHPhhwr+yLV4MOhuE+qhChSdTh9Zptsrq8AgAnRQND//4LEAIADjEOg
Date: Fri, 20 Jun 2014 06:24:07 +0000
Message-ID: <9AD1F2A584A7644C9605656D538412FEAA6515@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <1402543617-25861-1-git-send-email-yaoxp@cn.fujitsu.com>
	<20140612085627.GD2428@jama>
	<CAJTo0LZt+i_3rbmrjxgP6b5RgNsEFEvaQ6aEd2kX-qVMiUjR+g@mail.gmail.com>
	<9AD1F2A584A7644C9605656D538412FEAA5B8F@G08CNEXMBPEKD03.g08.fujitsu.local>
	<20140618075422.GD2117@jama>
In-Reply-To: <20140618075422.GD2117@jama>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.206]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] add recipe cim-schema, cim-schema-docs and license file DMTF.
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
X-List-Received-Date: Fri, 20 Jun 2014 06:24:23 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiANCj4gT24gV2VkLCBKdW4gMTgsIDIwMTQgYXQgMDc6MzA6NDlBTSArMDAwMCwgeWFveHBAY24u
ZnVqaXRzdS5jb20gd3JvdGU6DQo+ID4gV2h5IG5vdCBpbiBvZS1jb3JlPw0KPiA+IFdoYXQgcmVj
aXBlIGNhbiBiZSBwdXQgaW4gb2UtY29yZSwgYW5kIHdoYXQgcmVjaXBlIGNhbiBiZSBwdXQgaW4g
bWV0YS1vZT8NCj4gDQo+ICJjb3JlIiByZWNpcGVzIHdoaWNoIGFyZSB1c2VkIGJ5IG1vc3QgaWYg
bm90IGFsbCBPRSBidWlsZHMNCj4gDQo+ICJvcHQtaW4iIGV4dHJhIHJlY2lwZXMgZ28gdG8gZGlm
ZmVyZW50ICJ0b3BpYyIgbGF5ZXJzDQo+IA0KPiBub2JvZHkgbmVlZGVkIG9yIGFza2VkIGZvciBj
aW0gdW50aWwgbm93LCBzbyBpdCdzIG5vdCAiY29yZSIgYnkgdGhpcyBkZWZpbml0aW9uLg0KDQpJ
dCBpcyBEZXZlbG9wbWVudC9MaWJyYXJpZXMgaW4gRmVkb3JhLg0KDQpXaHkgcHV0IGluIG1ldGEt
bmV0d29ya2luZz8NCg0KLS0tLQ0KJCBycG0gLXFpIGNpbS1zY2hlbWEtMi4zMy4wLTYuZmMyMC5u
b2FyY2gNCk5hbWUgICAgICAgIDogY2ltLXNjaGVtYQ0KVmVyc2lvbiAgICAgOiAyLjMzLjANClJl
bGVhc2UgICAgIDogNi5mYzIwDQpBcmNoaXRlY3R1cmU6IG5vYXJjaA0KSW5zdGFsbCBEYXRlOiBX
ZWQgMTEgSnVuIDIwMTQgMDM6MjQ6MTggUE0gQ1NUDQpHcm91cCAgICAgICA6IERldmVsb3BtZW50
L0xpYnJhcmllcw0KU2l6ZSAgICAgICAgOiA2MDA2MjUyDQpMaWNlbnNlICAgICA6IERNVEYNClNp
Z25hdHVyZSAgIDogUlNBL1NIQTI1NiwgV2VkIDA3IEF1ZyAyMDEzIDEwOjAzOjA0IEFNIENTVCwg
S2V5IElEIDJlYjE2MWZhMjQ2MTEwYzENClNvdXJjZSBSUE0gIDogY2ltLXNjaGVtYS0yLjMzLjAt
Ni5mYzIwLnNyYy5ycG0NCkJ1aWxkIERhdGUgIDogU2F0IDAzIEF1ZyAyMDEzIDAxOjA4OjEwIFBN
IENTVA0KQnVpbGQgSG9zdCAgOiBhcm0wMi1idWlsZGVyMjAuYXJtLmZlZG9yYXByb2plY3Qub3Jn
DQpSZWxvY2F0aW9ucyA6IChub3QgcmVsb2NhdGFibGUpDQpQYWNrYWdlciAgICA6IEZlZG9yYSBQ
cm9qZWN0DQpWZW5kb3IgICAgICA6IEZlZG9yYSBQcm9qZWN0DQpVUkwgICAgICAgICA6IGh0dHA6
Ly93d3cuZG10Zi5vcmcvDQpTdW1tYXJ5ICAgICA6IENvbW1vbiBJbmZvcm1hdGlvbiBNb2RlbCAo
Q0lNKSBTY2hlbWENCkRlc2NyaXB0aW9uIDoNCkNvbW1vbiBJbmZvcm1hdGlvbiBNb2RlbCAoQ0lN
KSBpcyBhIG1vZGVsIGZvciBkZXNjcmliaW5nIG92ZXJhbGwNCm1hbmFnZW1lbnQgaW5mb3JtYXRp
b24gaW4gYSBuZXR3b3JrIG9yIGVudGVycHJpc2UgZW52aXJvbm1lbnQuIENJTQ0KY29uc2lzdHMg
b2YgYSBzcGVjaWZpY2F0aW9uIGFuZCBhIHNjaGVtYS4gVGhlIHNwZWNpZmljYXRpb24gZGVmaW5l
cyB0aGUNCmRldGFpbHMgZm9yIGludGVncmF0aW9uIHdpdGggb3RoZXIgbWFuYWdlbWVudCBtb2Rl
bHMuIFRoZSBzY2hlbWENCnByb3ZpZGVzIHRoZSBhY3R1YWwgbW9kZWwgZGVzY3JpcHRpb25zLg0K
DQoNCg0KQXV0aG9yczoNCi0tLS0tLS0tDQogICAgRFRNRiA8aHR0cDovL3d3dy5kbXRmLm9yZy9h
Ym91dC9jb250YWN0Pg0KDQo+IA0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
PiA+IEZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCj4g
PiA+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEyLCAyMDE0IDU6MjcgUE0NCj4gPiA+IFRvOiBZYW8s
IFhpbnBhbg0KPiA+ID4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiA+IFN1YmplY3Q6
IFJlOiBbeW9jdG9dIFtQQVRDSF0gYWRkIHJlY2lwZSBjaW0tc2NoZW1hLCBjaW0tc2NoZW1hLWRv
Y3MNCj4gPiA+IGFuZCBsaWNlbnNlIGZpbGUgRE1URi4NCj4gPiA+DQo+ID4gPiBPbiAxMiBKdW5l
IDIwMTQgMDk6NTYsIE1hcnRpbiBKYW5zYSA8bWFydGluLmphbnNhQGdtYWlsLmNvbT4gd3JvdGU6
DQo+ID4gPiA+IFdoeSBpcyB0aGlzIHJlY2lwZSBuZWVkZWQgaW4gb2UtY29yZSBsYXllcj8gV291
bGRuJ3QNCj4gPiA+ID4gbWV0YS1uZXR3b3JraW5nIGJlIG1vcmUgc3VpdGFibGU/DQo+ID4gPiA+
DQo+ID4gPiA+IFRoZSBwYXRjaCBhbHNvIGJlbG9uZ3MgdG8gb2UtY29yZSBNTCBub3QgeW9jdG8u
DQo+ID4gPg0KPiA+ID4gQWdyZWVkLCB1bmxlc3MgdGhlcmUncyBhIHN0cm9uZyByZWFzb24gdGhl
biB0aGlzIHNob3VsZCBnbyB0bw0KPiA+ID4gbWV0YS1uZXR3b3JraW5nIChzbyBzZW5kIHRvIHRo
ZSBvcGVuZW1iZWRkZWQtZGV2ZWwgbGlzdCkuDQo+ID4gPg0KPiA+ID4gUm9zcw0KPiA+IC0tDQo+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiB5
b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+IA0KPiAtLQ0KPiBNYXJ0
aW4gJ0phTWEnIEphbnNhICAgICBqYWJiZXI6IE1hcnRpbi5KYW5zYUBnbWFpbC5jb20NCg==

