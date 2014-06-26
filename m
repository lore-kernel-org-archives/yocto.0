Return-Path: <yaoxp@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4491DE00524; Wed, 25 Jun 2014 19:45:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BCC0E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 19:45:45 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.00,779,1396972800"; d="scan'208";a="32451154"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 26 Jun 2014 10:43:03 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s5Q2jgC4026385;
	Thu, 26 Jun 2014 10:45:42 +0800
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Thu, 26 Jun 2014 10:45:52 +0800
From: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
To: Robert Yang <liezhi.yang@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  seek help: I want to get SRC_URI, SRC_URI[md5sum] and
	SRC_URI[sha256sum] of compiled recipes
Thread-Index: AQHPkOJde/atAzcoJ06L6EaFnp1A1puCpeCg
Date: Thu, 26 Jun 2014 02:45:48 +0000
Message-ID: <9AD1F2A584A7644C9605656D538412FEAA7918@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <9AD1F2A584A7644C9605656D538412FEAA78E9@G08CNEXMBPEKD03.g08.fujitsu.local>
	<53AB7E9C.1000805@windriver.com>
In-Reply-To: <53AB7E9C.1000805@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.250]
MIME-Version: 1.0
Subject: Re: seek help: I want to get SRC_URI, SRC_URI[md5sum] and SRC_URI[sha256sum] of compiled recipes
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
X-List-Received-Date: Thu, 26 Jun 2014 02:45:49 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiANCj4gT24gMDYvMjYvMjAxNCAwOTo0NCBBTSwgeWFveHBAY24uZnVqaXRzdS5jb20gd3JvdGU6
DQo+ID4gSGkgZXZlcnlvbmUNCj4gPg0KPiA+IEkgd2FudCB0byBnZXQgU1JDX1VSSSxTUkNfVVJJ
W21kNXN1bV0gYW5kIFNSQ19VUklbc2hhMjU2c3VtXSBvZg0KPiBjb21waWxlZCByZWNpcGVzLg0K
PiA+IEhvdyB0byBhY2hpZXZlIGl0Pw0KPiA+DQo+ID4gZS5nLg0KPiA+ICMgYml0YmFrZSBjb3Jl
LWltYWdlLW1pbmltYWwNCj4gPg0KPiA+IEkgd2FudCB0byBnZXQgU1JDX1VSSSxTUkNfVVJJW21k
NXN1bV0gYW5kIFNSQ19VUklbc2hhMjU2c3VtXSBvZg0KPiBjb21waWxlZCBCQiBmaWxlcywgaW5j
bHVkaW5nIG5hdGl2ZSBCQiBmaWxlcy4NCj4gDQo+IEkgdGhpbmsgdGhhdCB5b3UgY2FuIGdldCB0
aGVtIG9uZSBieSBvbmUsIHBlcmhhcHMgeW91IGNhbiBhZGQgc29tZXRoaW5nIGxpa2U6DQo+IA0K
PiBkLmdldFZhcignU1JDX1VSSScsIFRydWUpDQo+IGQuZ2V0VmFyRmxhZygnU1JDX1VSSScsICdt
ZDVzdW0nLCBUcnVlKQ0KPiBkLmdldFZhckZsYWcoJ1NSQ19VUkknLCAnc2hhMjU2c3VtJywgVHJ1
ZSkNCj4gDQo+IHRvIHRoZSBiYXNlX2RvX2ZldGNoIGluIG1ldGEvY2xhc3Nlcy9iYXNlLmJiY2xh
c3MuDQoNCkkgc2VlLiBUaGFuayB5b3UgdmVyeSBtdWNoLg0KDQpXaWxsIFlvY3RvIGFkZCB0aGlz
IGZ1bmN0aW9uYWxpdHk/DQoNCkkgdGhpbmsgWW9jdG8gc2hvdWxkIGFjaGlldmUgdGhlIGZvbGxv
d2luZyBmdW5jdGlvbnM6DQoxLiBBbGxvd3MgdGhlIGRldmVsb3BtZW50ZXIgdG8gZWFzaWx5IGtu
b3cgd2hpY2ggcmVjaXBlcyB3ZXJlIGNvbXBpbGVkIGFuZCB0aGUgaW5mb3JtYXRpb24gb2YgY29t
cGlsZWQgcmVjaXBlcy4NCiAgU3VjaCBhcyBhbGwgdGhlIGluZm9ybWF0aW9uIGxpc3RlZCBpbiBh
IGZpbGUuDQoyLiBXaGljaCByZWNpcGVzIHdpbGwgYmUgY29tcGlsZWQgYmVmb3JlIHJlYWxseSBj
b21waWxlLg0KDQpUaGFua3MgDQpZYW8gWGlucGFuDQoNCj4gDQo+IC8vIFJvYmVydA0KPiANCj4g
Pg0KPiA+DQo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiA+IE5BTUU6IFlhbyBYaW5wYW4NCj4gPiBURUw6ODU1OQ0KPiA+DQo+ID4NCg==

