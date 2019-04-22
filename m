Return-Path: <Archana.c727@toshiba-tsip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55AE7E00BC8; Mon, 22 Apr 2019 04:57:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 249 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Apr 2019 04:57:54 PDT
Received: from peak.toshiba-tesi.com (unknown [202.56.254.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFC50E00A62
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2019 04:57:54 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ATBwAkqr1c/xlVdApmHgEGBwaBZYJ5g?=
	=?us-ascii?q?SwKhASWRYhBhmCEY4UyK4Rrhig4EwEDAQEFAQEBAQKBCQELhXQRVwEVDQImAgQ?=
	=?us-ascii?q?wFRIEgzanfYEvGgKFK4RhgQsngV2MA4wvgjUiBIErAQEBi3+ZKAEGAQEBggpUh?=
	=?us-ascii?q?TuMNoF7AW2JIAOJCIwEkQ2FPIF3cIFugU4JiGKHZXKPUYEhAQE?=
X-IPAS-Result: =?us-ascii?q?A2ATBwAkqr1c/xlVdApmHgEGBwaBZYJ5gSwKhASWRYhBhmC?=
	=?us-ascii?q?EY4UyK4Rrhig4EwEDAQEFAQEBAQKBCQELhXQRVwEVDQImAgQwFRIEgzanfYEvG?=
	=?us-ascii?q?gKFK4RhgQsngV2MA4wvgjUiBIErAQEBi3+ZKAEGAQEBggpUhTuMNoF7AW2JIAO?=
	=?us-ascii?q?JCIwEkQ2FPIF3cIFugU4JiGKHZXKPUYEhAQE?=
X-IronPort-AV: E=Sophos;i="5.60,381,1549909800"; d="scan'208";a="20595536"
Received: from unknown (HELO tosblrmbx04.TOSHIBA-TSIP.COM) ([10.116.85.25])
	by peak.toshiba-tesi.com with ESMTP; 22 Apr 2019 17:06:27 +0530
Received: from TOSBLRMBX01.TOSHIBA-TSIP.COM ([fe80::1d8f:a072:df12:dcb2]) by
	tosblrmbx04.TOSHIBA-TSIP.COM ([fe80::2089:5e37:936d:8fb9%18]) with mapi
	id 14.02.0247.003; Mon, 22 Apr 2019 17:20:30 +0530
From: Archana Polampalli <Archana.c727@toshiba-tsip.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: .pc files are not avilable at build time
Thread-Index: AQHU+QGVAxU7eft6BE2Lic4a00hOAw==
Date: Mon, 22 Apr 2019 11:50:29 +0000
Message-ID: <1555933846.5224.23.camel@toshiba-tsip.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.80.64]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Apr 2019 02:14:18 -0700
Subject: .pc files are not avilable at build time
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
X-List-Received-Date: Mon, 22 Apr 2019 11:57:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BB4C0DD68A2EC446BE8F87899B2CD150@TOSHIBA-TSIP.COM>
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJIGFtIHRyeWluZyB0byBidWlsZCBidHJmcy10b29scyByZWNpcGVzLml0IG5l
ZWRzIHRoZSBleDJmcy5wYw0KcGtnY29uZmlnIGZpbGUuaSBoYXZlIGFscmVkeSBpbnN0YWxsZWQg
ZTJmc3Byb2dzIHJlY2lwZSBpdCBjcmVhdGVkIHRoZQ0KZXgyZnMucGMgaW4gaW1hZ2UgZGlyZWN0
b3J5LmJ1dCBidHJmc3Rvb2xzIHVuYWJsZSB0byB0YWtlIHRoZSBwa2djb25maWcNCmZpbGUuDQoN
CnBsZXNlIGFueSBoZWxwIG1lIGhvdyB0byBwcm92aWRlIGV4MmZzLnBjIGZpbGUgZm9yIGJ1aWxk
IGJ0cmZzLXRvb2xzDQoNClJlZ2FyZHMNCkFyY2hhbmEKVGhlIGluZm9ybWF0aW9uIGNvbnRhaW5l
ZCBpbiB0aGlzIGUtbWFpbCBtZXNzYWdlIGFuZCBpbiBhbnkNCmF0dGFjaG1lbnRzL2FubmV4dXJl
L2FwcGVuZGljZXMgaXMgY29uZmlkZW50aWFsIHRvIHRoZSANCnJlY2lwaWVudCBhbmQgbWF5IGNv
bnRhaW4gcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gDQpJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5k
ZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90aWZ5IHRoZQ0Kc2VuZGVyIGFuZCBkZWxldGUgdGhlIG1l
c3NhZ2UgYWxvbmcgd2l0aCBhbnkgDQphdHRhY2htZW50cy9hbm5leHVyZS9hcHBlbmRpY2VzLiBZ
b3Ugc2hvdWxkIG5vdCBkaXNjbG9zZSwNCmNvcHkgb3Igb3RoZXJ3aXNlIHVzZSB0aGUgaW5mb3Jt
YXRpb24gY29udGFpbmVkIGluIHRoZQ0KbWVzc2FnZSBvciBhbnkgYW5uZXh1cmUuIEFueSB2aWV3
cyBleHByZXNzZWQgaW4gdGhpcyBlLW1haWwgDQphcmUgdGhvc2Ugb2YgdGhlIGluZGl2aWR1YWwg
c2VuZGVyIGV4Y2VwdCB3aGVyZSB0aGUgc2VuZGVyIA0Kc3BlY2lmaWNhbGx5IHN0YXRlcyB0aGVt
IHRvIGJlIHRoZSB2aWV3cyBvZiANClRvc2hpYmEgU29mdHdhcmUgSW5kaWEgUHZ0LiBMdGQuIChU
U0lQKSxCYW5nYWxvcmUuDQoNCkFsdGhvdWdoIHRoaXMgdHJhbnNtaXNzaW9uIGFuZCBhbnkgYXR0
YWNobWVudHMgYXJlIGJlbGlldmVkIHRvIGJlDQpmcmVlIG9mIGFueSB2aXJ1cyBvciBvdGhlciBk
ZWZlY3QgdGhhdCBtaWdodCBhZmZlY3QgYW55IGNvbXB1dGVyIA0Kc3lzdGVtIGludG8gd2hpY2gg
aXQgaXMgcmVjZWl2ZWQgYW5kIG9wZW5lZCwgaXQgaXMgdGhlIHJlc3BvbnNpYmlsaXR5DQpvZiB0
aGUgcmVjaXBpZW50IHRvIGVuc3VyZSB0aGF0IGl0IGlzIHZpcnVzIGZyZWUgYW5kIG5vIHJlc3Bv
bnNpYmlsaXR5IA0KaXMgYWNjZXB0ZWQgYnkgVG9zaGliYSBFbWJlZGRlZCBTb2Z0d2FyZSBJbmRp
YSBQdnQuIEx0ZCwgZm9yIGFueSBsb3NzIG9yDQpkYW1hZ2UgYXJpc2luZyBpbiBhbnkgd2F5IGZy
b20gaXRzIHVzZS4K


