Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A960E00BFD; Tue,  6 Nov 2018 16:58:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3FBE00A6B
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 16:58:30 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2018 16:58:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,473,1534834800"; d="scan'208";a="84520628"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by fmsmga008.fm.intel.com with ESMTP; 06 Nov 2018 16:58:29 -0800
Received: from pgsmsx109.gar.corp.intel.com (10.221.44.109) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.3.408.0; Wed, 7 Nov 2018 08:58:28 +0800
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.31]) by
	PGSMSX109.gar.corp.intel.com ([169.254.14.66]) with mapi id
	14.03.0415.000; Wed, 7 Nov 2018 08:58:28 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "dimtass@gmail.com" <dimtass@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [poky] bug #8729 grub bootloader
Thread-Index: AQHUdeNS7OE3XxN2LE6bXzBoME+BzqVC+BiA
Date: Wed, 7 Nov 2018 00:58:27 +0000
Message-ID: <edf7530b3fc884d7fed1ee02a5745ba73fa71d18.camel@intel.com>
References: <CACKFPN2VuVTRr=eMqoDxsTjH8YcDcSBzgRs2Y07XD20mm2d66Q@mail.gmail.com>
In-Reply-To: <CACKFPN2VuVTRr=eMqoDxsTjH8YcDcSBzgRs2Y07XD20mm2d66Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.221.21.114]
MIME-Version: 1.0
Subject: Re: [poky] bug #8729 grub bootloader
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
X-List-Received-Date: Wed, 07 Nov 2018 00:58:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0137F6034C1A6949A926EC25C1C66511@intel.com>
Content-Transfer-Encoding: base64

SGkgRGltaXRyaXMNCg0KT24gVHVlLCAyMDE4LTExLTA2IGF0IDE2OjEyICswMTAwLCBEaW1pdHJp
cyBUYXNzb3BvdWxvcyB3cm90ZToNCj4gDQo+IEluIHRoaXMgY2FzZSB0aGUgYm9vdGltZy1lZmku
cHkgc2NyaXB0IGNyZWF0ZXMgdGhlIGV4dHJhIHBhcnRpdGlvbiwgYQ0KPiBkaWZmZXJlbnQgZ3J1
Yi5jZmcgYW5kIGFsc28NCj4gZWRpdHMgdGhlIC9ldGMvZnN0YWIgYW5kIG1vdW50cyB0aGlzIHBh
cnRpdGlvbiBvdmVyIC9ib290IGFuZA0KPiB0aGVyZWZvcmUgdmlydHVhbC9ncnViLWJvb3Rjb25m
DQo+IGJlY29tZXMgdW51c2VkLg0KPiANCj4gVGhpcyByYWlzZXMgdGhlIGZvbGxvd2luZyBxdWVz
dGlvbnM6DQo+IC0gV2h5IHRoZXJlIGFyZSB0d28gZGlmZmVyZW50IGZhY2lsaXRpZXMgdG8gYWNo
aWV2ZSB0aGUgc2FtZSB0aGluZz8NCj4gLSBXaHkgdGhlIHNlY29uZCBvdmVycmlkZXMgdGhlIGZp
cnN0IG9uZSwgaW5zdGVhZCBvZiBzaGFyaW5nIHRoZSBzYW1lDQo+IGZpbGVzPw0KPiAtIEhvdyB0
byBwcm9jZWVkIGZyb20gbm93IG9uPw0KPiANCg0KSSB0aGluayB0aGlzIG5lZWRlZCAtLWV4Y2x1
ZGUtcGF0aCBpbiB3a3MgdG8gYmUgdXNlZCB0byB0YWtlIGVmZmVjdC4NClBsZWFzZSBzZWU6DQoN
Cg0KaHR0cDovL2xpc3RzLm9wZW5lbWJlZGRlZC5vcmcvcGlwZXJtYWlsL29wZW5lbWJlZGRlZC1j
b3JlLzIwMTgtRmVicnVhcnkvMTQ3ODM3Lmh0bWwNCg0KYW5kIGJ1ZzoNCg0KaHR0cHM6Ly9idWd6
aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDA3Mw0K

