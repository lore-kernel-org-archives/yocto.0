Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBFBAE00871; Tue, 23 Sep 2014 05:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 821E2E0086E
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 05:46:14 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjoFAN5qIVSHCzIm/2dsb2JhbABggmsjgSoEgn3OJQEYdRYBAXmEAwEBAQEDEhERRQwEAgEIDQQEAQEBAgIGHQMCAgIwFAEICAEBBA4FCBqIHAGjDYpPljMBF4EsjioxBwaCcjaBHQWRWpM3jV6DYmyBSIECAQEB
X-IronPort-AV: E=Sophos;i="5.04,579,1406606400"; d="scan'208";a="85863169"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	23 Sep 2014 08:46:12 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	23 Sep 2014 08:46:12 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Tue, 23 Sep 2014 08:46:12 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Forcing fetch task when source changes
Thread-Index: Ac/WV6OeWyp3DS2TR6W6LXTA2odZVAAIu5UAAAd+lKA=
Date: Tue, 23 Sep 2014 12:46:11 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377982FDD6E5A@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LZHQDW6ALvgvZZQ2snwd36TA5Ug6sKTnMWLyfUTq5GF1A@mail.gmail.com>
In-Reply-To: <CAJTo0LZHQDW6ALvgvZZQ2snwd36TA5Ug6sKTnMWLyfUTq5GF1A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Forcing fetch task when source changes
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
X-List-Received-Date: Tue, 23 Sep 2014 12:46:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGVyaGFwcyBJIG1pc3VuZGVyc3Rvb2QgeW91ciBzdWdnZXN0aW9uIG9yIEkgYW0gbWlzc2luZw0K
c29tZXRoaW5nIG9idmlvdXMsIGJ1dCB0aGlzIGRvZXNuJ3Qgd29yayBlaXRoZXIuDQoNCklmIEkg
cG9pbnQgdG8gbXkgc291cmNlIHdpdGggU1JDX1VSSSwgdGhlIHNvdXJjZSBkb2VzIGdldA0KY29w
aWVkIG92ZXIgdG8gJHtTfSBidXQgY2hhbmdpbmcgdGhlIHNvdXJjZSBkb2Vzbid0IHRyaWdnZXIN
CmEgbmV3IGZldGNoL3VucGFjay4NCg0KVGhpcyBpcyBjbGVhbmVyIHRoYW4gd2hhdCBJIHdhcyBk
b2luZywgYnV0IGRvZXNuJ3QgYWRkcmVzcw0KbXkgaXNzdWUgb2YgaGF2aW5nIHRvIG1hbnVhbGx5
IGZvcmNlIGEgZmV0Y2gvdW5wYWNrIGV2ZXJ5DQp0aW1lIHRoZSBzb3VyY2UgY2hhbmdlcy4NCg0K
UGVyaGFwcyBkdWUgdG8gbXkgb2xkIHZlcnNpb25zOiBQb2t5IDEuMiBhbmQgYml0YmFrZSAxLjE1
LjE/DQoNCk1WDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0
b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQo+IFNlbnQ6IFNlcHRlbWJl
ciAyMiwgMjAxNCA3OjM0IEFNDQo+IFRvOiBWdWlsbGUsIE1hcnRpbiAoTWFydGluKQ0KPiBDYzog
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBGb3JjaW5nIGZl
dGNoIHRhc2sgd2hlbiBzb3VyY2UgY2hhbmdlcw0KPiANCj4gT24gMjIgU2VwdGVtYmVyIDIwMTQg
MTI6MjUsIFZ1aWxsZSwgTWFydGluIChNYXJ0aW4pIDx2bWFydGluQGF2YXlhLmNvbT4NCj4gd3Jv
dGU6DQo+ID4gSSBoYXZlIGRlZmluZWQgYSBjbGFzcyB3aXRoIGEgY3VzdG9taXplZCBmZXRjaCB0
YXNrICh0aGF0DQo+ID4NCj4gPiBjb3BpZXMgZmlsZXMgZnJvbSBhIGxvY2FsIHJlYWQtb25seSBk
aXJlY3RvcnkgdG8gdGhlICR7U30NCj4gPg0KPiA+IGRpcmVjdG9yeSkuDQo+ID4NCj4gPg0KPiA+
DQo+ID4gSSBhbSBsb29raW5nIGZvciBhIHdheSB0byBjYXVzZSB0aGUgZmV0Y2ggdGFzayB0byBy
dW4NCj4gPg0KPiA+IGFnYWluIHdoZW5ldmVyIHRoZSBjb250ZW50cyBvZiB0aGUgbG9jYWwgZGly
ZWN0b3J5DQo+ID4NCj4gPiBjaGFuZ2Ugdy5yLnQuIHdoYXQgd2FzIGxhc3QgZmV0Y2hlZC9jb3Bp
ZWQgdG8gJHtTfS4NCj4gDQo+IFdoeSBub3QganVzdCB1c2UgbG9jYWwgVVJJcyBpbiB0aGUgU1JD
X1VSSToNCj4gDQo+IFNSQ19VUkk9ImZpbGU6Ly8vaG9tZS9mb28vYmFyL2Zsb2IuYyINCj4gDQo+
IFJvc3MNCg==

