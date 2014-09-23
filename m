Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E337E00873; Tue, 23 Sep 2014 06:50:27 -0700 (PDT)
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
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ECFFE0086E
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 06:50:20 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjwFAEp6IVTGmAcV/2dsb2JhbABggmsjU1cEgn3GW4dLARh1FgEBeYQDAQEBAQMSERFFDAQCAQgNBAQBAQECAgYdAwICAjAUAQgIAQEEDgUIGogcAQyiZopPlhYBF4EsjioxBwaCcjaBHQWPQoIYhDqOfY1eg2JsAQGBRoECAQEB
X-IronPort-AV: E=Sophos;i="5.04,580,1406606400"; d="scan'208";a="73216203"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	23 Sep 2014 09:49:58 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	23 Sep 2014 09:49:57 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Tue, 23 Sep 2014 09:49:57 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Forcing fetch task when source changes
Thread-Index: Ac/WV6OeWyp3DS2TR6W6LXTA2odZVAAIu5UAAAd+lKAALvOFgAAHzVpg
Date: Tue, 23 Sep 2014 13:49:56 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377982FDD6E91@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LZHQDW6ALvgvZZQ2snwd36TA5Ug6sKTnMWLyfUTq5GF1A@mail.gmail.com>
	<30C2D590D16A5C46ADFE6521910377982FDD6E5A@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LankC7Z_KZREj-eNciRo2RVus+Y5yc-V8dCT38mn4obbA@mail.gmail.com>
In-Reply-To: <CAJTo0LankC7Z_KZREj-eNciRo2RVus+Y5yc-V8dCT38mn4obbA@mail.gmail.com>
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
X-List-Received-Date: Tue, 23 Sep 2014 13:50:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3YXMgYWZyYWlkIG9mIHRoYXQuLi4NCg0KQW5vdGhlciBnb29kIHJlYXNvbiB0byB1cGdyYWRl
Lg0KDQpXaWxsIHRyeSB0aGUgd29yay1hcm91bmQuDQoNClRoYW5rcyBhZ2FpbiENCk1WDQoNCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86
cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBTZXB0ZW1iZXIgMjMsIDIwMTQgOTozMyBB
TQ0KPiBUbzogVnVpbGxlLCBNYXJ0aW4gKE1hcnRpbikNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gRm9yY2luZyBmZXRjaCB0YXNrIHdoZW4gc291
cmNlIGNoYW5nZXMNCj4gDQo+IE9uIDIzIFNlcHRlbWJlciAyMDE0IDEzOjQ2LCBWdWlsbGUsIE1h
cnRpbiAoTWFydGluKSA8dm1hcnRpbkBhdmF5YS5jb20+DQo+IHdyb3RlOg0KPiA+IFBlcmhhcHMg
ZHVlIHRvIG15IG9sZCB2ZXJzaW9uczogUG9reSAxLjIgYW5kIGJpdGJha2UgMS4xNS4xPw0KPiAN
Cj4gWWVzLg0KPiANCj4gaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQuY2dpL3Bva3kv
Y29tbWl0L21ldGEvY29uZi9iaXRiYWtlLmNvbmY/aQ0KPiBkPWVhZjU0YjhkYmY5MzcxOTY1YjRj
Y2YxODYwOWVkZWI4ZWVlMTYxNDQNCj4gaXMgd2hlcmUgdGhlIGhhc2hpbmcgd2FzIGludHJvZHVj
ZWQgdG8gcmVidWlsZCBhdXRvbWF0aWNhbGx5IHdoZW4gaW5wdXRzDQo+IGNoYW5nZSwgYnV0IHRo
YXQgbGFuZGVkIGluIDEuMyBvbndhcmRzLiAgVGhlIHN1cHBvcnQgd2FzIHRoZXJlIGluIDEuMiBz
byB5b3UNCj4gY291bGQgdHJ5IHNldHRpbmcgQkJfU0lHTkFUVVJFX0hBTkRMRVIgaW4geW91ciBk
aXN0cmlidXRpb24gY29uZmlndXJhdGlvbg0KPiB0byBzZWUgaWYgaXQgd29ya3MuLi4NCj4gDQo+
IFJvc3MNCg==

