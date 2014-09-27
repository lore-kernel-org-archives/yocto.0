Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C8B0E007B9; Fri, 26 Sep 2014 17:16:11 -0700 (PDT)
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
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C74E006DB
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 17:16:02 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhsFAJ0AJlTGmAcV/2dsb2JhbABfgmsjgSoEgn3PGAIZbhYBAXqEAwEBAQEDEhERRQwEAgEIDQQEAQEBAgIGHQMCAgIwFAEICAIEDgUIGogcAZ5Hik+WAAEXgSyOQTEHBoJyNoEdBZFjkz2NYoNjbIFIgQIBAQE
X-IronPort-AV: E=Sophos;i="5.04,607,1406606400"; d="scan'208";a="86433665"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	26 Sep 2014 20:16:00 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	26 Sep 2014 20:16:00 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Fri, 26 Sep 2014 20:16:00 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Forcing fetch task when source changes
Thread-Index: Ac/WV6OeWyp3DS2TR6W6LXTA2odZVAAIu5UAAAd+lKAALvOFgAAD/DvgAKRufoAAA3lSwA==
Date: Sat, 27 Sep 2014 00:15:59 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377982FDD8504@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LZHQDW6ALvgvZZQ2snwd36TA5Ug6sKTnMWLyfUTq5GF1A@mail.gmail.com>
	<30C2D590D16A5C46ADFE6521910377982FDD6E5A@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LankC7Z_KZREj-eNciRo2RVus+Y5yc-V8dCT38mn4obbA@mail.gmail.com>
	<30C2D590D16A5C46ADFE6521910377982FDD6F1C@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LYbRDv=qD23CTEFSkoEy3Mudex04SScTHezTour=+LHAA@mail.gmail.com>
In-Reply-To: <CAJTo0LYbRDv=qD23CTEFSkoEy3Mudex04SScTHezTour=+LHAA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
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
X-List-Received-Date: Sat, 27 Sep 2014 00:16:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UncmUgcGxhbm5pbmcgYW4gdXBkYXRlIHRvIERpenp5LCBhbmQgdG8ga2VlcCB1cC10by1kYXRl
IGFmdGVyIHRoYXQuDQoNClRoYW5rcyBmb3IgeW91ciBoZWxwDQpNVg0KDQo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9u
QGludGVsLmNvbV0NCj4gU2VudDogU2VwdGVtYmVyIDI2LCAyMDE0IDU6NTUgUE0NCj4gVG86IFZ1
aWxsZSwgTWFydGluIChNYXJ0aW4pDQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1
YmplY3Q6IFJlOiBbeW9jdG9dIEZvcmNpbmcgZmV0Y2ggdGFzayB3aGVuIHNvdXJjZSBjaGFuZ2Vz
DQo+IA0KPiBPbiAyMyBTZXB0ZW1iZXIgMjAxNCAxNjo0NiwgVnVpbGxlLCBNYXJ0aW4gKE1hcnRp
bikgPHZtYXJ0aW5AYXZheWEuY29tPg0KPiB3cm90ZToNCj4gPiBWZXJ5IG9kZC4NCj4gPg0KPiA+
IE91ciBCU1AgdmVuZG9yIGhhcyBjb25maWd1cmVkIEJCX1NJR05BVFVSRV9IQU5ETEVSIHRvIHVz
ZQ0KPiBPRUJhc2ljSGFzaCwNCj4gPiBJIHNlZSBoYXNoZXMgaW4gdGhlIHN0YW1wIGZpbGUgbmFt
ZXMsIGlmIEkgY2hhbmdlIHRoZSBtZXRhZGF0YSBpdHNlbGYNCj4gPiB0aGUgY2hhbmdlIGlzIGRl
dGVjdGVkIGFuZCB0aGUgdGFza3MgYXJlIHJ1biBhZ2FpbiwgYnV0IGNoYW5naW5nIHRoZQ0KPiA+
IGNvbnRlbnQgb2YgYSBmaWxlIG5hbWVkIGluIGEgImZpbGU6Ly8iIFNSQ19VUkkgaGFzIG5vIGVm
ZmVjdC4NCj4gPg0KPiA+IEFueSBpZGVhcz8NCj4gDQo+IE5vbmUsIHNvcnJ5LiAgUG9zc2libHkg
eW91J3ZlIGZvdW5kIGEgYnVnIGluIHRoZSAxLjItZXJhIGhhc2hpbmcgY29kZS4NCj4gQ2FuIHlv
dSBsZWFuIG9uIHlvdXIgQlNQIHByb3ZpZGVyIHRvIHN0b3AgdXNpbmcgMi41IHllYXIgb2xkIHJl
bGVhc2VzPw0KPiA6Lw0KPiANCj4gUm9zcw0K

