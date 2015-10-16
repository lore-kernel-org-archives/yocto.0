Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52353E00AAB; Fri, 16 Oct 2015 11:58:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Oct 2015 11:58:51 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 658AAE0048C
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 11:58:50 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2BPAwBBP8ZV/xUHmMZbGQEBAYJTLIE9BoMeugwJh30CHIEKOBQBAQEBAQEBgQqEIwEBAQECARIREUUFCwIBCA0IAQICAgYdAwICAh8RFAEQAQEEDgUIGod3AwoIAax4ilaQLw2FLAEBAQEBAQEDAQEBAQEBAQEBAQEXgSKKL4JPggkxB4JpL4EUBZULAYdrBYMFAYpliVGHMxcPg31vgUiBBAEBAQ
X-IPAS-Result: A2BPAwBBP8ZV/xUHmMZbGQEBAYJTLIE9BoMeugwJh30CHIEKOBQBAQEBAQEBgQqEIwEBAQECARIREUUFCwIBCA0IAQICAgYdAwICAh8RFAEQAQEEDgUIGod3AwoIAax4ilaQLw2FLAEBAQEBAQEDAQEBAQEBAQEBAQEXgSKKL4JPggkxB4JpL4EUBZULAYdrBYMFAYpliVGHMxcPg31vgUiBBAEBAQ
X-IronPort-AV: E=Sophos;i="5.15,634,1432612800"; d="scan'208";a="124610150"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	16 Oct 2015 14:57:45 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	16 Oct 2015 14:57:45 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Fri, 16 Oct 2015 14:57:44 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Package with both daemon and shared object
Thread-Index: AdEGnEUn6LHpNUmSSime7EG2RKnvUgAKnlYAAF9JgSA=
Date: Fri, 16 Oct 2015 18:57:43 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779853A5A882@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779853A592C9@AZ-US1EXMB03.global.avaya.com>
	<3688E390-18E9-49C2-A8F7-44FA68D85D3F@gmail.com>
In-Reply-To: <3688E390-18E9-49C2-A8F7-44FA68D85D3F@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package with both daemon and shared object
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
X-List-Received-Date: Fri, 16 Oct 2015 18:58:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0gDQo+IFNlbnQ6IE9j
dG9iZXIgMTQsIDIwMTUgMToyNSBQTQ0KPiANCj4gDQo+ID4gT24gT2N0IDE0LCAyMDE1LCBhdCA5
OjI1IEFNLCBWdWlsbGUsIE1hcnRpbiAoTWFydGluKSA8dm1hcnRpbkBhdmF5YS5jb20+IHdyb3Rl
Og0KPiA+IA0KPiA+IEhpLA0KPiA+ICANCj4gPiBJIGFtIGhhdmluZyBhIGJpdCBvZiB0cm91Ymxl
IHVuZGVyc3RhbmRpbmcgc29tZXRoaW5nIGFib3V0DQo+ID4gcGFja2FnaW5nLg0KPiA+ICANCj4g
PiBJIGhhdmUgYSBjdXN0b20gcmVjaXBlIHRvIGJ1aWxkIGEgcGFja2FnZSB0aGF0IGNvbnRhaW5z
IGJvdGgNCj4gPiBhIGRhZW1vbiBleGVjdXRhYmxlIGFuZCBhIHNoYXJlZCBvYmplY3QgaW50ZXJm
YWNlIGxpYnJhcnkNCj4gPiBmb3IgdGhlIGRhZW1vbi4NCj4gPiAgDQo+ID4gQnV0IHRoZSAuc28g
aXMgb25seSBwYWNrYWdlZCBpbiAke1BOfS1kZXYsIG5vdCAke1BOfSwgc28NCj4gPiBpdCBkb2Vz
buKAmXQgZW5kIHVwIG9uIHRoZSB0YXJnZXQuDQo+IA0KPiB5ZXMgdGhhdHMgZGVmYXVsdCBhbmQg
aWYgdGhlIC5zbyB3YXMgYnVpbHQgdXNpbmcgcHJvcGVyIC5zbyB2ZXJzaW9uaW5nIHNjaGVtZS4N
Cj4gLnNvIGlzIGEgc3ltbGluayB0byAuc28uWC5ZLloNCg0KVGhhbmtzISBJIGtuZXcgYWJvdXQg
dGhpcyBhdCBzb21lIHBvaW50IGJ1dCBpdCBjb21wbGV0ZWx5IHNsaXBwZWQgbXkgbWluZC4NCg0K
UHJvYmxlbSBmaXhlZCBub3cNCk1WDQo=

