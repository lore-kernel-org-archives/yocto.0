Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 273F3E00C20; Mon, 28 Nov 2016 08:16:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63441E00BF3
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 08:16:34 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EUBQBOVjxY/yYyC4deHAEBBAEBCgEBg?=
	=?us-ascii?q?xQkAQEBAQEfgVsHAaRalHSCB4YhAhqBVUATAQIBAQEBAQEBA18ohGgBAQEBAxI?=
	=?us-ascii?q?REUUMBAIBCA0IAwICBh0DAgICMBQBEAEBBA4FCBqISwGiKIpjgikqAosPAQEBA?=
	=?us-ascii?q?QYBAQEBAQEBAQEegQuFM4RbhEuDAi2CMAWaVAGSYYhChhSNcYQMIAMygRSDVwI?=
	=?us-ascii?q?bgV1yhwABgQwBAQE?=
X-IPAS-Result: =?us-ascii?q?A2EUBQBOVjxY/yYyC4deHAEBBAEBCgEBgxQkAQEBAQEfgVs?=
	=?us-ascii?q?HAaRalHSCB4YhAhqBVUATAQIBAQEBAQEBA18ohGgBAQEBAxIREUUMBAIBCA0IA?=
	=?us-ascii?q?wICBh0DAgICMBQBEAEBBA4FCBqISwGiKIpjgikqAosPAQEBAQYBAQEBAQEBAQE?=
	=?us-ascii?q?egQuFM4RbhEuDAi2CMAWaVAGSYYhChhSNcYQMIAMygRSDVwIbgV1yhwABgQwBA?=
	=?us-ascii?q?QE?=
X-IronPort-AV: E=Sophos;i="5.31,564,1473134400"; d="scan'208";a="205010177"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	28 Nov 2016 11:16:33 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	28 Nov 2016 11:16:34 -0500
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0319.002;
	Mon, 28 Nov 2016 11:16:31 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] What source is included in sstate hash, how to change?
Thread-Index: AdJJh6Joeo+XlXDNTCG/JCB4s3VPBwAMrxeAAAnxBDA=
Date: Mon, 28 Nov 2016 16:16:30 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF8633B@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF86286@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaSCbZH75s_n=wURx1aNe1HKRN=EajOvw13hu_h=GpSAA@mail.gmail.com>
In-Reply-To: <CAJTo0LaSCbZH75s_n=wURx1aNe1HKRN=EajOvw13hu_h=GpSAA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What source is included in sstate hash, how to change?
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
X-List-Received-Date: Mon, 28 Nov 2016 16:16:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0
bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQo+IA0KPiBPbiAyOCBOb3ZlbWJlciAyMDE2IGF0IDE1
OjAyLCBWdWlsbGUsIE1hcnRpbiAoTWFydGluKQ0KPiA8dm1hcnRpbkBhdmF5YS5jb20+IHdyb3Rl
Og0KPiBPciBhbSBJIGNvbXBsZXRlbHkgb2ZmLXRyYWNrPw0KPiANCj4gSXQgd2lsbCB0cmFjayB0
aGUgbWQ1IG9mIGZpbGVzIG1lbnRpb25lZCBpbiBTUkNfVVJJLCBidXQgaWYgYSBmaWxlIGlzIGdl
bmVyYXRlZA0KPiBkeW5hbWljYWxseSB0aGVuIGJpdGJha2UgbWF5IG5vdCBiZSBhd2FyZSBvZiBp
dC4NCj4gDQo+IENhbiB5b3Ugc2hhcmUgYSBtaW5pbWFsIGV4YW1wbGU/DQoNClVuZm9ydHVuYXRl
bHksIHRoYXQgd291bGQgYmUgZGlmZmljdWx0Lg0KDQpCdXQgdGhlIFNSQ19VUkkgZG9lcyBjb3Zl
ciAke1N9Ly4uLCBzbyBteSBhc3N1bXB0aW9uIG11c3QgYmUgaW5jb3JyZWN0Lg0KDQpJIHdpbGwg
aGF2ZSB0byBpbnZlc3RpZ2F0ZSBmdXJ0aGVyDQoNClRoYW5rcw0KTVYNCg==

