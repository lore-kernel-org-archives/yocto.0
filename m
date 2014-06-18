Return-Path: <yaoxp@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5686FE00B5D; Wed, 18 Jun 2014 00:31:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8268EE00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 00:30:51 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.00,730,1396972800"; d="scan'208";a="32076763"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 18 Jun 2014 15:28:07 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s5I7UjIf003454;
	Wed, 18 Jun 2014 15:30:45 +0800
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Wed, 18 Jun 2014 15:30:51 +0800
From: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH] add recipe cim-schema, cim-schema-docs and
	license file DMTF.
Thread-Index: AQHPhhwr+yLV4MOhuE+qhChSdTh9Zptsrq8AgAnRQNA=
Date: Wed, 18 Jun 2014 07:30:49 +0000
Message-ID: <9AD1F2A584A7644C9605656D538412FEAA5B8F@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <1402543617-25861-1-git-send-email-yaoxp@cn.fujitsu.com>
	<20140612085627.GD2428@jama>
	<CAJTo0LZt+i_3rbmrjxgP6b5RgNsEFEvaQ6aEd2kX-qVMiUjR+g@mail.gmail.com>
In-Reply-To: <CAJTo0LZt+i_3rbmrjxgP6b5RgNsEFEvaQ6aEd2kX-qVMiUjR+g@mail.gmail.com>
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
X-List-Received-Date: Wed, 18 Jun 2014 07:31:02 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2h5IG5vdCBpbiBvZS1jb3JlPw0KV2hhdCByZWNpcGUgY2FuIGJlIHB1dCBpbiBvZS1jb3JlLCBh
bmQgd2hhdCByZWNpcGUgY2FuIGJlIHB1dCBpbiBtZXRhLW9lPw0KDQp0aGFua3MNCllhbyBYaW5w
YW4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJvc3Mg
W21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEy
LCAyMDE0IDU6MjcgUE0NCj4gVG86IFlhbywgWGlucGFuDQo+IENjOiB5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFtQQVRDSF0gYWRkIHJlY2lwZSBjaW0tc2No
ZW1hLCBjaW0tc2NoZW1hLWRvY3MgYW5kDQo+IGxpY2Vuc2UgZmlsZSBETVRGLg0KPiANCj4gT24g
MTIgSnVuZSAyMDE0IDA5OjU2LCBNYXJ0aW4gSmFuc2EgPG1hcnRpbi5qYW5zYUBnbWFpbC5jb20+
IHdyb3RlOg0KPiA+IFdoeSBpcyB0aGlzIHJlY2lwZSBuZWVkZWQgaW4gb2UtY29yZSBsYXllcj8g
V291bGRuJ3QgbWV0YS1uZXR3b3JraW5nDQo+ID4gYmUgbW9yZSBzdWl0YWJsZT8NCj4gPg0KPiA+
IFRoZSBwYXRjaCBhbHNvIGJlbG9uZ3MgdG8gb2UtY29yZSBNTCBub3QgeW9jdG8uDQo+IA0KPiBB
Z3JlZWQsIHVubGVzcyB0aGVyZSdzIGEgc3Ryb25nIHJlYXNvbiB0aGVuIHRoaXMgc2hvdWxkIGdv
IHRvIG1ldGEtbmV0d29ya2luZw0KPiAoc28gc2VuZCB0byB0aGUgb3BlbmVtYmVkZGVkLWRldmVs
IGxpc3QpLg0KPiANCj4gUm9zcw0K

