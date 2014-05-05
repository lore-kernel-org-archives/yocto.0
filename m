Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14C64E00A44; Mon,  5 May 2014 09:37:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 May 2014 09:37:11 PDT
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2887EE003C7
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 09:37:11 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgsFAJW8Z1PGmAcV/2dsb2JhbABZgmUhT1iCZ7oKGYc7GX8WdIIlAQEBAQMBAQEPERE6CwwEAgEIDQQEAQEBAgIGHQMCAgIfBgEKFAEICAEBBA4FCBqICwMRAQydGIpHnS4NhkIXgSqLEYFmFhsHBoJuNoEVBJZXagGIfoNyghmFXYM0gi8
X-IronPort-AV: E=Sophos;i="4.97,989,1389762000"; d="scan'208";a="61740155"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	05 May 2014 12:36:03 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	05 May 2014 12:19:49 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Mon, 5 May 2014 12:36:02 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Migrating LDAT fs_final.sh to Yocto
Thread-Index: Ac9oZm7EkUQLUgzqSqKg26dIjLxVtgAOvFuAAAhTuEA=
Date: Mon, 5 May 2014 16:36:01 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779820B8463D@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779820B845A8@AZ-US1EXMB03.global.avaya.com>
	<CAMKF1sqYj4=8O3zZMGTdn3111-kRx3jb-oHp2Q9ODfUxjRC2-Q@mail.gmail.com>
In-Reply-To: <CAMKF1sqYj4=8O3zZMGTdn3111-kRx3jb-oHp2Q9ODfUxjRC2-Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Migrating LDAT fs_final.sh to Yocto
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
X-List-Received-Date: Mon, 05 May 2014 16:37:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXhhY3RseSB3aGF0IEkgYW0gbG9va2luZyBmb3IuDQoNClRoYW5rcyENCk1WDQoNCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBn
bWFpbC5jb21dDQo+IFNlbnQ6IE1heSAwNSwgMjAxNCAxMjozNCBQTQ0KPiBUbzogVnVpbGxlLCBN
YXJ0aW4gKE1hcnRpbikNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDog
UmU6IFt5b2N0b10gTWlncmF0aW5nIExEQVQgZnNfZmluYWwuc2ggdG8gWW9jdG8NCj4gDQo+IE9u
IE1vbiwgTWF5IDUsIDIwMTQgYXQgNjozNCBBTSwgVnVpbGxlLCBNYXJ0aW4gKE1hcnRpbikNCj4g
PHZtYXJ0aW5AYXZheWEuY29tPiB3cm90ZToNCj4gPiBNaWdyYXRpbmcgZnJvbSBMREFUIHRvIFlv
Y3RvLCBhbmQgd29uZGVyaW5nIHdoZXRoZXINCj4gPg0KPiA+IHRoZXJlIGlzIGFuIGVxdWl2YWxl
bnQgdG8gTERBVOKAmXMgZnNfZmluYWwuc2ggc2NyaXB0Pw0KPiA+DQo+IA0KPiBEb24ndCBrbm93
IHdoYXQgdGhhdCBpcyBidXQgeW91IGNhbiB1c2UgaW1hZ2UgcG9zdCBwcm9jZXNzaW5nIGhvb2tz
IGluDQo+IHlvY3RvIHRvIGRvIHR3ZWFrcyB0byBpbWFnZXMuIHNlZSBJTUFHRV9QT1NUUFJPQ0VT
U19DT01NQU5EDQo+IA0KPiA+DQo+ID4NCj4gPiBUaGUgb2JqZWN0aXZlIGlzIHRvIGRvIHNvbWUg
cG9zdC1wcm9jZXNzaW5nIG9uIHRoZQ0KPiA+DQo+ID4gcm9vdGZzIOKAnHRyZWXigJ0gYmVmb3Jl
IGl0IGlzIHBhY2thZ2VkIGludG8gdGhlIFVCSUZTIGltYWdlLg0KPiA+DQo+ID4NCj4gPg0KPiA+
IE1WDQo+ID4NCj4gPg0KPiA+IC0tDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZv
L3lvY3RvDQo+ID4NCg==

