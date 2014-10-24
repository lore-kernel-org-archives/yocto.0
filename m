Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FE5BE00830; Fri, 24 Oct 2014 04:52:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 833BBE0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:51:52 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ap4FAPE8SlTGmAcV/2dsb2JhbABcgmsjgSwEgwLRbgIbcRYBAXyEAgEBAQEDEhERRQwEAgEIDQQEAQEBAgIGHQMCAgIwFAEICAEBBA4FCBqIHwGpS4pRlQABAQEBAQEBAwEBAQEBAQEBAQEBF4EsjnsxBwaCcTaBHgWSBY0Jg0mDG44Xg3hsgUiBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.04,779,1406606400"; d="scan'208";a="89030870"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	24 Oct 2014 07:51:51 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	24 Oct 2014 07:51:52 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Fri, 24 Oct 2014 07:51:51 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] QA Issue for recipe inheriting from native.bbclass
Thread-Index: Ac/u4oLjONMytIZoSmOxQ5X4e9gcJQApHWSAAAGRhHA=
Date: Fri, 24 Oct 2014 11:51:50 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841147302@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779841146D7D@AZ-US1EXMB03.global.avaya.com>
	<1414139719.30118.5.camel@ted>
In-Reply-To: <1414139719.30118.5.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Issue for recipe inheriting from native.bbclass
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
X-List-Received-Date: Fri, 24 Oct 2014 11:52:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFp
bHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddDQo+IFNlbnQ6IE9jdG9iZXIg
MjQsIDIwMTQgNDozNSBBTQ0KPiBUbzogVnVpbGxlLCBNYXJ0aW4gKE1hcnRpbikNCj4gQ2M6IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gUUEgSXNzdWUgZm9y
IHJlY2lwZSBpbmhlcml0aW5nIGZyb20gbmF0aXZlLmJiY2xhc3MNCj4gDQo+IE9uIFRodSwgMjAx
NC0xMC0yMyBhdCAxNjo1OCArMDAwMCwgVnVpbGxlLCBNYXJ0aW4gKE1hcnRpbikgd3JvdGU6DQo+
ID4gSSBoYXZlIGEgcmVjaXBlIHRoYXQgaW5oZXJpdHMgZnJvbSBtZXRhL2NsYXNzZXMvbmF0aXZl
LmJiY2xhc3MNCj4gPg0KPiA+IEkgYW0gZ2V0dGluZyBhbiBFUlJPUjogUUEgSXNzdWU6IGZvciB0
aGlzIHJlY2lwZToNCj4gPg0KPiA+IOKAnFZhcmlhYmxlIFJQUk9WSURFUyBpcyBzZXQgYXMgbm90
IGJlaW5nIHBhY2thZ2Ugc3BlY2lmaWMsIHBsZWFzZSBmaXgNCj4gPiB0aGlzLuKAnQ0KPiA+DQo+
IA0KPiBJcyBQQUNLQUdFUyBzZXQgdG8gc29tZSB2YWx1ZT8gSXQgc2hvdWxkbid0IHNob3cgdGhh
dCB3YXJuaW5nIGlmIFBBQ0tBR0VTDQo+IGlzIGVtcHR5Lg0KPiANCg0KVGhhbmtzLCB0aGF0IHB1
dCBtZSBvbiB0aGUgdHJhY2sgdG8gdGhlIHByb2JsZW0gKG1vZGlmeWluZyBQQUNLQUdFUw0KaW4g
YSAuYmJhcHBlbmQgdG8gdGhhdCByZWNpcGUpDQoNCk1WDQo=

