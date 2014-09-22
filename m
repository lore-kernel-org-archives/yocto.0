Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B05EFE0086B; Mon, 22 Sep 2014 05:03:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Sep 2014 05:03:58 PDT
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B38EEE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:03:58 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AiAFANMOIFTGmAcV/2dsb2JhbABggmsjgSoEgn3PGwEZcRYBAXiEAwEBAQEDEhERRQwEAgEIDQQEAQEBAgIGHQMCAgIwFAEICAEBBA4FCBqIHAGjV4pPlXYBF4EsjikxBwaCcjaBHQWRV5M0jV2DYWyBSIECAQEB
X-IronPort-AV: E=Sophos;i="5.04,571,1406606400"; d="scan'208";a="85689259"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	22 Sep 2014 08:02:47 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	22 Sep 2014 08:02:47 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Mon, 22 Sep 2014 08:02:46 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Forcing fetch task when source changes
Thread-Index: Ac/WV6OeWyp3DS2TR6W6LXTA2odZVAAIu5UAAAd+lKA=
Date: Mon, 22 Sep 2014 12:02:46 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377982FDD65C6@AZ-US1EXMB03.global.avaya.com>
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
X-List-Received-Date: Mon, 22 Sep 2014 12:03:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V291bGQgdGhpcyB3b3JrIGZvciBhIGRpcmVjdG9yeSB0cmVlIGFzIG9wcG9zZWQgdG8gYSBzaW5n
bGUgZmlsZT8NCg0KQWxzbywgdGhlIGN1cnJlbnQgImNvcHkiIGlzIG5vdCBhIHN0cmFpZ2h0IGNv
cHksIGl0IGV4Y2x1ZGVzIGNlcnRhaW4gZmlsZXMuDQpCdXQgSSBtaWdodCBiZSBhYmxlIHRvIGRl
YWwgd2l0aCB0aGF0IHBvc3QtZmV0Y2guDQoNCk1WDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5j
b21dDQo+IFNlbnQ6IFNlcHRlbWJlciAyMiwgMjAxNCA3OjM0IEFNDQo+IFRvOiBWdWlsbGUsIE1h
cnRpbiAoTWFydGluKQ0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBS
ZTogW3lvY3RvXSBGb3JjaW5nIGZldGNoIHRhc2sgd2hlbiBzb3VyY2UgY2hhbmdlcw0KPiANCj4g
T24gMjIgU2VwdGVtYmVyIDIwMTQgMTI6MjUsIFZ1aWxsZSwgTWFydGluIChNYXJ0aW4pIDx2bWFy
dGluQGF2YXlhLmNvbT4NCj4gd3JvdGU6DQo+ID4gSSBoYXZlIGRlZmluZWQgYSBjbGFzcyB3aXRo
IGEgY3VzdG9taXplZCBmZXRjaCB0YXNrICh0aGF0DQo+ID4NCj4gPiBjb3BpZXMgZmlsZXMgZnJv
bSBhIGxvY2FsIHJlYWQtb25seSBkaXJlY3RvcnkgdG8gdGhlICR7U30NCj4gPg0KPiA+IGRpcmVj
dG9yeSkuDQo+ID4NCj4gPg0KPiA+DQo+ID4gSSBhbSBsb29raW5nIGZvciBhIHdheSB0byBjYXVz
ZSB0aGUgZmV0Y2ggdGFzayB0byBydW4NCj4gPg0KPiA+IGFnYWluIHdoZW5ldmVyIHRoZSBjb250
ZW50cyBvZiB0aGUgbG9jYWwgZGlyZWN0b3J5DQo+ID4NCj4gPiBjaGFuZ2Ugdy5yLnQuIHdoYXQg
d2FzIGxhc3QgZmV0Y2hlZC9jb3BpZWQgdG8gJHtTfS4NCj4gDQo+IFdoeSBub3QganVzdCB1c2Ug
bG9jYWwgVVJJcyBpbiB0aGUgU1JDX1VSSToNCj4gDQo+IFNSQ19VUkk9ImZpbGU6Ly8vaG9tZS9m
b28vYmFyL2Zsb2IuYyINCj4gDQo+IFJvc3MNCg==

