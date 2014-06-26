Return-Path: <yaoxp@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C59CE00524; Wed, 25 Jun 2014 19:55:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0655E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 19:55:15 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.00,779,1396972800"; d="scan'208";a="32451490"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 26 Jun 2014 10:52:33 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s5Q2tDs2026937;
	Thu, 26 Jun 2014 10:55:13 +0800
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Thu, 26 Jun 2014 10:55:23 +0800
From: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
To: Robert Yang <liezhi.yang@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  seek help: I want to get SRC_URI, SRC_URI[md5sum] and
	SRC_URI[sha256sum] of compiled recipes
Thread-Index: AQHPkOJde/atAzcoJ06L6EaFnp1A1puCpeCg//+FKACAAIboEA==
Date: Thu, 26 Jun 2014 02:55:18 +0000
Message-ID: <9AD1F2A584A7644C9605656D538412FEAA7938@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <9AD1F2A584A7644C9605656D538412FEAA78E9@G08CNEXMBPEKD03.g08.fujitsu.local>
	<53AB7E9C.1000805@windriver.com>
	<9AD1F2A584A7644C9605656D538412FEAA7918@G08CNEXMBPEKD03.g08.fujitsu.local>
	<53AB8A92.4010105@windriver.com>
In-Reply-To: <53AB8A92.4010105@windriver.com>
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
X-List-Received-Date: Thu, 26 Jun 2014 02:55:18 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBzZWUuIFRoYW5rIHlvdSBeX14NCg0KVGhhbmtzDQpZYW8gWGlucGFuDQoNCj4gT24gMDYvMjYv
MjAxNCAxMDo0NSBBTSwgeWFveHBAY24uZnVqaXRzdS5jb20gd3JvdGU6DQo+ID4+DQo+ID4+IE9u
IDA2LzI2LzIwMTQgMDk6NDQgQU0sIHlhb3hwQGNuLmZ1aml0c3UuY29tIHdyb3RlOg0KPiA+Pj4g
SGkgZXZlcnlvbmUNCj4gPj4+DQo+ID4+PiBJIHdhbnQgdG8gZ2V0IFNSQ19VUkksU1JDX1VSSVtt
ZDVzdW1dIGFuZCBTUkNfVVJJW3NoYTI1NnN1bV0gb2YNCj4gPj4gY29tcGlsZWQgcmVjaXBlcy4N
Cj4gPj4+IEhvdyB0byBhY2hpZXZlIGl0Pw0KPiA+Pj4NCj4gPj4+IGUuZy4NCj4gPj4+ICMgYml0
YmFrZSBjb3JlLWltYWdlLW1pbmltYWwNCj4gPj4+DQo+ID4+PiBJIHdhbnQgdG8gZ2V0IFNSQ19V
UkksU1JDX1VSSVttZDVzdW1dIGFuZCBTUkNfVVJJW3NoYTI1NnN1bV0gb2YNCj4gPj4gY29tcGls
ZWQgQkIgZmlsZXMsIGluY2x1ZGluZyBuYXRpdmUgQkIgZmlsZXMuDQo+ID4+DQo+ID4+IEkgdGhp
bmsgdGhhdCB5b3UgY2FuIGdldCB0aGVtIG9uZSBieSBvbmUsIHBlcmhhcHMgeW91IGNhbiBhZGQg
c29tZXRoaW5nDQo+IGxpa2U6DQo+ID4+DQo+ID4+IGQuZ2V0VmFyKCdTUkNfVVJJJywgVHJ1ZSkN
Cj4gPj4gZC5nZXRWYXJGbGFnKCdTUkNfVVJJJywgJ21kNXN1bScsIFRydWUpIGQuZ2V0VmFyRmxh
ZygnU1JDX1VSSScsDQo+ID4+ICdzaGEyNTZzdW0nLCBUcnVlKQ0KPiA+Pg0KPiA+PiB0byB0aGUg
YmFzZV9kb19mZXRjaCBpbiBtZXRhL2NsYXNzZXMvYmFzZS5iYmNsYXNzLg0KPiA+DQo+ID4gSSBz
ZWUuIFRoYW5rIHlvdSB2ZXJ5IG11Y2guDQo+ID4NCj4gPiBXaWxsIFlvY3RvIGFkZCB0aGlzIGZ1
bmN0aW9uYWxpdHk/DQo+IA0KPiBJIHRoaW5rIG5vOi0pIHNpbmNlIHRoaXMgaXMgbm90IGEgY29t
bW9uIGZ1bmN0aW9uLg0KPiANCj4gPg0KPiA+IEkgdGhpbmsgWW9jdG8gc2hvdWxkIGFjaGlldmUg
dGhlIGZvbGxvd2luZyBmdW5jdGlvbnM6DQo+ID4gMS4gQWxsb3dzIHRoZSBkZXZlbG9wbWVudGVy
IHRvIGVhc2lseSBrbm93IHdoaWNoIHJlY2lwZXMgd2VyZSBjb21waWxlZCBhbmQNCj4gdGhlIGlu
Zm9ybWF0aW9uIG9mIGNvbXBpbGVkIHJlY2lwZXMuDQo+ID4gICAgU3VjaCBhcyBhbGwgdGhlIGlu
Zm9ybWF0aW9uIGxpc3RlZCBpbiBhIGZpbGUuDQo+IA0KPiBNYXliZSB5b3UgY2FuIHRyeSB0aGUg
YXJjaGl2ZXIuYmJjbGFzcywgY2hlY2sNCj4gbWV0YS15b2N0by9jb25mL2xvY2FsLmNvbmYuc2Ft
cGxlLmV4dGVuZGVkDQo+IA0KPiBmb3IgbW9yZSBpbmZvLg0KPiANCj4gPiAyLiBXaGljaCByZWNp
cGVzIHdpbGwgYmUgY29tcGlsZWQgYmVmb3JlIHJlYWxseSBjb21waWxlLg0KPiANCj4gYml0YmFr
ZSAtZyBjb3JlLWltYWdlLW1pbmltYWwNCj4gDQo+IFRoZW4gSSB0aGluayB0aGF0IHRoZSBwbi1i
dWlsZGxpc3QgaXMgd2hhdCB5b3UgbmVlZC4NCj4gDQo+IC8vIFJvYmVydA0KPiANCj4gPg0KPiA+
IFRoYW5rcw0KPiA+IFlhbyBYaW5wYW4NCj4gPg0KPiA+Pg0KPiA+PiAvLyBSb2JlcnQNCj4gPj4N
Cj4gPj4+DQo+ID4+Pg0KPiA+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KPiA+Pj4gTkFNRTogWWFvIFhpbnBhbg0KPiA+Pj4gVEVMOjg1NTkNCj4gPj4+
DQo+ID4+Pg0K

