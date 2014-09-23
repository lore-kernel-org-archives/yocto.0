Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95D78E00846; Tue, 23 Sep 2014 08:46:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DBB2E00786
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 08:46:43 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjwFAA+VIVSHCzIm/2dsb2JhbABggmsjU1cEgn3GW4dLARh0FgEBeYQDAQEBAQMSERFFDAQCAQgNBAQBAQECAgYdAwICAjAUAQgIAQEEDgUIGogcAQyid4pPlh0BF4EsjioxBwaCcjaBHQWPQoIYhDqOfY1eg2JsAQGBRoECAQEB
X-IronPort-AV: E=Sophos;i="5.04,580,1406606400"; d="scan'208";a="85898209"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	23 Sep 2014 11:46:41 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	23 Sep 2014 11:46:41 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Tue, 23 Sep 2014 11:46:41 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Forcing fetch task when source changes
Thread-Index: Ac/WV6OeWyp3DS2TR6W6LXTA2odZVAAIu5UAAAd+lKAALvOFgAAD/Dvg
Date: Tue, 23 Sep 2014 15:46:40 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377982FDD6F1C@AZ-US1EXMB03.global.avaya.com>
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
X-List-Received-Date: Tue, 23 Sep 2014 15:46:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VmVyeSBvZGQuDQoNCk91ciBCU1AgdmVuZG9yIGhhcyBjb25maWd1cmVkIEJCX1NJR05BVFVSRV9I
QU5ETEVSIHRvIHVzZSBPRUJhc2ljSGFzaCwNCkkgc2VlIGhhc2hlcyBpbiB0aGUgc3RhbXAgZmls
ZSBuYW1lcywgaWYgSSBjaGFuZ2UgdGhlIG1ldGFkYXRhIGl0c2VsZiB0aGUgY2hhbmdlDQppcyBk
ZXRlY3RlZCBhbmQgdGhlIHRhc2tzIGFyZSBydW4gYWdhaW4sIGJ1dCBjaGFuZ2luZyB0aGUgY29u
dGVudCBvZiBhIGZpbGUgbmFtZWQNCmluIGEgImZpbGU6Ly8iIFNSQ19VUkkgaGFzIG5vIGVmZmVj
dC4NCg0KQW55IGlkZWFzPw0KDQpNVg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IEZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCj4gU2Vu
dDogU2VwdGVtYmVyIDIzLCAyMDE0IDk6MzMgQU0NCj4gVG86IFZ1aWxsZSwgTWFydGluIChNYXJ0
aW4pDQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9d
IEZvcmNpbmcgZmV0Y2ggdGFzayB3aGVuIHNvdXJjZSBjaGFuZ2VzDQo+IA0KPiBPbiAyMyBTZXB0
ZW1iZXIgMjAxNCAxMzo0NiwgVnVpbGxlLCBNYXJ0aW4gKE1hcnRpbikgPHZtYXJ0aW5AYXZheWEu
Y29tPg0KPiB3cm90ZToNCj4gPiBQZXJoYXBzIGR1ZSB0byBteSBvbGQgdmVyc2lvbnM6IFBva3kg
MS4yIGFuZCBiaXRiYWtlIDEuMTUuMT8NCj4gDQo+IFllcy4NCj4gDQo+IGh0dHA6Ly9naXQueW9j
dG9wcm9qZWN0Lm9yZy9jZ2l0LmNnaS9wb2t5L2NvbW1pdC9tZXRhL2NvbmYvYml0YmFrZS5jb25m
P2kNCj4gZD1lYWY1NGI4ZGJmOTM3MTk2NWI0Y2NmMTg2MDllZGViOGVlZTE2MTQ0DQo+IGlzIHdo
ZXJlIHRoZSBoYXNoaW5nIHdhcyBpbnRyb2R1Y2VkIHRvIHJlYnVpbGQgYXV0b21hdGljYWxseSB3
aGVuIGlucHV0cw0KPiBjaGFuZ2UsIGJ1dCB0aGF0IGxhbmRlZCBpbiAxLjMgb253YXJkcy4gIFRo
ZSBzdXBwb3J0IHdhcyB0aGVyZSBpbiAxLjIgc28geW91DQo+IGNvdWxkIHRyeSBzZXR0aW5nIEJC
X1NJR05BVFVSRV9IQU5ETEVSIGluIHlvdXIgZGlzdHJpYnV0aW9uIGNvbmZpZ3VyYXRpb24NCj4g
dG8gc2VlIGlmIGl0IHdvcmtzLi4uDQo+IA0KPiBSb3NzDQo=

