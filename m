Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 921C7E00D0E; Tue, 29 Dec 2015 17:55:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B5EFE00AC5
	for <yocto@yoctoproject.org>; Tue, 29 Dec 2015 17:55:13 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.20,346,1444665600"; 
   d="scan'208";a="2078606"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 30 Dec 2015 09:55:00 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id 02EC441887DE;
	Wed, 30 Dec 2015 09:54:49 +0800 (CST)
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Wed, 30 Dec 2015 09:54:49 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: Robert Yang <liezhi.yang@windriver.com>
Thread-Topic: plan about YP 2.0.1
Thread-Index: AdE7tMqB7Q7ITB8JRQGs8R5rUOVKvQGEPxKAADe9cAA=
Date: Wed, 30 Dec 2015 01:54:48 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDFE3FDF05@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDFE3FBFBD@G08CNEXMBPEKD01.g08.fujitsu.local>
	<5682334B.6020400@windriver.com>
In-Reply-To: <5682334B.6020400@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.93]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 02EC441887DE.AAC96
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: leimaohui@cn.fujitsu.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: plan about YP 2.0.1
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
X-List-Received-Date: Wed, 30 Dec 2015 01:55:18 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGkgWWFuZw0KDQo+IFdlIGFyZSB0YXJnZXRpbmcgdGhlIGJ1aWxkIGFuZCBz
aGlwIHRvIFFBIG9mIFlQIDIuMC4xIHJjMSBmb3IgMS8xMS4NCj4gDQo+IFRo
ZSBtZXJnZSB3aW5kb3cgc2hvdWxkIGJlIGFyb3VuZCBKYW4gNnRoLg0KDQpJ
IGdvdCBpdC4gVGhhbmsgeW91IHZlcnkgbXVjaC4NCg0KTGVpDQoNCg0KDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJvYmVydCBZ
YW5nIFttYWlsdG86bGllemhpLnlhbmdAd2luZHJpdmVyLmNvbV0NCj4gU2Vu
dDogVHVlc2RheSwgRGVjZW1iZXIgMjksIDIwMTUgMzoxNiBQTQ0KPiBUbzog
TGVpLCBNYW9odWkNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4g
U3ViamVjdDogUmU6IHBsYW4gYWJvdXQgWVAgMi4wLjENCj4gDQo+IA0KPiBP
biAxMi8yMS8yMDE1IDAyOjAwIFBNLCBMZWksIE1hb2h1aSB3cm90ZToNCj4g
PiBIZWxsbyBZYW5nDQo+ID4NCj4gPiAgICBDYW4geW91IHRlbGwgbWUgdGhl
IHNjaGVkdWxlIGFib3V0IHRoZSBZUCAyLjAuMT8NCj4gPiAgICBJIHdhbnQg
dG8ga25vdyB3aGVuIFlQIDIuMC4xIHdpbGwgYmUgcmVsZWFzZWQgYW5kIHdo
ZW4gdGhlIG1lcmdlIHdpbmRvdw0KPiB3aWxsIGJlIGNsb3NlZD8NCj4gDQo+
IFdlIGFyZSB0YXJnZXRpbmcgdGhlIGJ1aWxkIGFuZCBzaGlwIHRvIFFBIG9m
IFlQIDIuMC4xIHJjMSBmb3IgMS8xMS4NCj4gDQo+IFRoZSBtZXJnZSB3aW5k
b3cgc2hvdWxkIGJlIGFyb3VuZCBKYW4gNnRoLg0KPiANCj4gLy8gUm9iZXJ0
DQo+IA0KPiA+DQo+ID4NCj4gPiBCZXN0IHJlZ2FyZHMNCj4gPiBMZWkNCj4g
Pg0KPiA+DQo+ID4NCj4gPg0KPiANCg0KCgo=

