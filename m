Return-Path: <Norman.Stetter@garz-fricke.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B5E0E00D48; Wed, 29 May 2019 06:31:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.72.187.39 listed in list.dnswl.org]
Received: from mailout-afstr39.mailout.artfiles.de
	(mailout-afstr39.mailout.artfiles.de [212.72.187.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C668E00D46
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 06:31:30 -0700 (PDT)
Received: from [89.27.136.47] (helo=mail.garz-fricke.com)
	auth=mx@garz-fricke.com by mailout.artfiles.de with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_CBC_SHA384:256) (Exim 4.86_2)
	id 1hVyfj-0005QU-7j; Wed, 29 May 2019 15:31:15 +0200
Received: from SRV24.hamburg.garz-fricke.de ([fe80::91bd:d629:787:188]) by
	SRV24.hamburg.garz-fricke.de ([fe80::91bd:d629:787:188%12]) with mapi
	id 14.03.0439.000; Wed, 29 May 2019 15:30:28 +0200
From: Norman Stetter <Norman.Stetter@garz-fricke.com>
To: Paul Barker <paul@betafive.co.uk>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Building single package as image, respecting dependencies
Thread-Index: AdUQmvjUgZzqIjtPR86llJuZzr/bmQAtXcWAAAUv9UD//+/YAP/+x/TwgAKG+QD//4+pIIAGt1YA//4LTUA=
Date: Wed, 29 May 2019 13:30:28 +0000
Message-ID: <A24DC035FE5F8F4BAE7F63FB1B07D7BC532FF8@SRV24.hamburg.garz-fricke.de>
References: <A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1@SRV24.hamburg.garz-fricke.de>
	<CAJTo0LYPsgt_8=F7bFQmSNuDrAsC9EZg6WFKoc=B0kknLq6oPQ@mail.gmail.com>
	<A24DC035FE5F8F4BAE7F63FB1B07D7BC53299E@SRV24.hamburg.garz-fricke.de>
	<CAJTo0Lb7a63q_LezyqOovtBh9DdGj9ra16MHAehipsJcwCvK7g@mail.gmail.com>
	<A24DC035FE5F8F4BAE7F63FB1B07D7BC532AD7@SRV24.hamburg.garz-fricke.de>
	<CAJTo0La8otdHXLLjH-ef_eFKavv2O7UkRasEWSjVc=S9L+3VOA@mail.gmail.com>
	<A24DC035FE5F8F4BAE7F63FB1B07D7BC532BF8@SRV24.hamburg.garz-fricke.de>
	<acf7205f-c3ed-59c1-8c4b-ad8d1cf40213@betafive.co.uk>
In-Reply-To: <acf7205f-c3ed-59c1-8c4b-ad8d1cf40213@betafive.co.uk>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.0.130]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building single package as image, respecting dependencies
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
X-List-Received-Date: Wed, 29 May 2019 13:31:32 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUGF1bCwNCg0KdGhhbmsgeW91IGZvciB5b3VyIHN1Z2dlc3Rpb24uIEkgd2lsbCBsb29r
IGludG8gaXQuDQoNCk1lYW53aGlsZSBJIHdvcmtlZCBhcm91bmQgbXkgaXNzdWUgYnkgYnVpbGRp
bmcgYWxsIHB5dGhvbjMgcGFja2FnZXMsIGJ1dCBleGNsdWRpbmcgdGhlbSBmcm9tIHRoZSByb290
ZnMuIFRoZW4gdGhleSBnZXQgaW5zdGFsbGVkIGludG8gYSBzZXBhcmF0ZSAncm9vdGZzJywgd2hp
Y2ggSSBwYWNrIGFzIGEgc3F1YXNoZnMgaW1hZ2UuDQoNCkl0IG1pZ2h0IG5vdCBiZSB0aGF0IGVs
ZWdhbnQsIGJ1dCBpdCB3b3Jrcy4NCg0KUmVnYXJkcywNCg0KTk9ybWFuDQoNCg0KTWl0IGZyZXVu
ZGxpY2hlbiBHcsO8w59lbiAvIEJlc3QgcmVnYXJkcw0KTm9ybWFuIFN0ZXR0ZXINClNXIEVOV0lD
S0xVTkcgRU1CRURERUQgU1lTVEVNUw0KR2FyeiAmIEZyaWNrZSBHbWJIDQoNCjIxMDc5IEhhbWJ1
cmcNCkRpcmVjdDogKzQ5IDQwIDc5MTg5OSAtIDQ3Nw0KRmF4OiArNDkgNDAgNzkxODk5IC0gMzkN
Ck5vcm1hbi5TdGV0dGVyQGdhcnotZnJpY2tlLmNvbQ0Kd3d3LmdhcnotZnJpY2tlLmNvbQ0KV0Ug
TUFLRSBJVCBZT1VSUyENCg0KU2l0eiBkZXIgR2VzZWxsc2NoYWZ0OiBELTIxMDc5IEhhbWJ1cmcN
ClJlZ2lzdGVyZ2VyaWNodDogQW10c2dlcmljaHQgSGFtYnVyZywgSFJCIDYwNTE0DQpHZXNjaMOk
ZnRzZsO8aHJlcjogTWF0dGhpYXMgRnJpY2tlLCBNYW5mcmVkIEdhcnosIE1hcmMtTWljaGFlbCBC
cmF1bg0KDQo+IC0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0LS0tLS0NCj4gVm9uOiBQYXVs
IEJhcmtlciBbbWFpbHRvOnBhdWxAYmV0YWZpdmUuY28udWtdDQo+IEdlc2VuZGV0OiBUdWVzZGF5
LCBNYXkgMjgsIDIwMTkgMTE6MzcgQU0NCj4gQW46IE5vcm1hbiBTdGV0dGVyIDxOb3JtYW4uU3Rl
dHRlckBnYXJ6LWZyaWNrZS5jb20+OyBCdXJ0b24sIFJvc3MNCj4gPHJvc3MuYnVydG9uQGludGVs
LmNvbT4NCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gQmV0cmVmZjogUmU6IFt5b2N0
b10gQnVpbGRpbmcgc2luZ2xlIHBhY2thZ2UgYXMgaW1hZ2UsIHJlc3BlY3RpbmcNCj4gZGVwZW5k
ZW5jaWVzDQo+IA0KPiBPbiAyNC8wNS8yMDE5IDE1OjI4LCBOb3JtYW4gU3RldHRlciB3cm90ZToN
Cj4gPiBJcyB0aGVyZSBubyB3YXkgdG8gc2ltcGx5IGZvcmNlIGJpdGJha2UgdG8gb25seSBidWls
ZCB0aGUgcGFja2FnZXMgSQ0KPiA+IHdhbnQsIGlnbm9yaW5nIGRlcGVuZGVuY2llcz8gV2UgdXNl
ZCB0byBidWlsZCB0aGUgaW1hZ2UgbGlrZSB0aGlzDQo+ID4gYmVmb3JlLCB1c2luZyBQVFhEaXN0
Lg0KPiA+DQo+ID4gRXZlcnl0aGluZyBlbHNlIHNlZW1zIHRvIGJlIGEgZGlydHkgaGFjay4NCj4g
DQo+IENhbiB5b3UganVzdCBjb2xsZWN0IHRoZSBleHRyYSBwYWNrYWdlcyAoaXBrL2RlYi9ycG0g
YXMgYXBwcm9wcmlhdGUpLCBwdXQNCj4gdGhlbSBpbiBhIHBhY2thZ2UgZmVlZCBhbmQgaW5zdGFs
bCB0aGVtIG9uLXRhcmdldCBhcyByZXF1aXJlZD8NCj4gDQo+IFRoZSBwYWNrYWdlIGZlZWQgZG9l
c24ndCBoYXZlIHRvIGJlIG9uIGEgd2Vic2VydmVyLCB5b3UgY291bGQgcHV0IGl0IGluIGENCj4g
ZGlyZWN0b3J5IGluIGEgc2VwYXJhdGUgcGFydGl0aW9uIG9uIHRoZSB0YXJnZXQgaWYgdGhhdCdz
IHdoYXQgeW91IG5lZWQuDQo+IA0KPiBUaGFua3MsDQo+IA0KPiAtLQ0KPiBQYXVsIEJhcmtlcg0K
PiBNYW5hZ2luZyBEaXJlY3RvciAmIFByaW5jaXBhbCBFbmdpbmVlcg0KPiBCZXRhIEZpdmUgTHRk
DQo=

