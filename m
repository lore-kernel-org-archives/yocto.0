Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 157FBC433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 23:08:11 +0000 (UTC)
Received: from outbound-ip2b.ess.barracuda.com
 (outbound-ip2b.ess.barracuda.com [209.222.82.184])
 by mx.groups.io with SMTP id smtpd.web10.18103.1633388889136619865
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 16:08:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: sakuraus.com, ip: 209.222.82.184, mailfrom: gwilson@sakuraus.com)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
 mx-outbound19-31.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 04 Oct 2021 23:08:06 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (172.23.0.14) by SFAMAIL.SAKURAUS.LOCAL
 (172.23.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_DHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Mon, 4 Oct 2021
 16:08:05 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd]) by
 SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd%13]) with mapi id
 15.01.2242.012; Mon, 4 Oct 2021 16:08:05 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] virtual/egl on Raspberry Pi 4
Thread-Topic: [yocto] virtual/egl on Raspberry Pi 4
Thread-Index: Ade5V3yaHATh5XXBTUa/y6q/HGx7UAASGNoAAAriOaA=
Date: Mon, 4 Oct 2021 23:08:05 +0000
Message-ID: <aa11888f9dc34eed9383c55ceae3eb9f@sakuraus.com>
References: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
 <0a038b52-6f11-662a-8d77-786919852079@gmail.com>
In-Reply-To: <0a038b52-6f11-662a-8d77-786919852079@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [47.157.31.169]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-BESS-ID: 1633388886-104895-4748-4090-1
X-BESS-VER: 2019.1_20211004.2220
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
 rules version 3.2.2.234930 [from
	cloudscan8-38.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
 KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 23:08:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54946

SGkgS2hlbSwNClllcywgdGhlIFJhc3BiZXJyeSBQaSBib2FyZHMgZG8gdXNlIGNsb3NlZCBzb3Vy
Y2UgZHJpdmVycy4gV2hhdCBJIG5lZWQgaXMgaG93IGRvIEkgaW5jbHVkZSB0aGUgcHJvcGVyIHBh
Y2thZ2UgdGhhdCB3aWxsIGJyaW5nIGluIHRoZSBuZWNlc3NhcnkgdmlydHVhbC9lZ2wgZm9yIHRo
ZSBSYXNwYmVycnkgUGkgNC4NCg0KR3JlZw0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiBGcm9tOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0KPiBTZW50OiBNb25kYXksIE9j
dG9iZXIgNCwgMjAyMSAxNDoxNw0KPiBUbzogR3JlZyBXaWxzb24tTGluZGJlcmcgPEdXaWxzb25A
c2FrdXJhdXMuY29tPjsNCj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0
OiBSZTogW3lvY3RvXSB2aXJ0dWFsL2VnbCBvbiBSYXNwYmVycnkgUGkgNA0KPiANCj4gDQo+IA0K
PiBPbiAxMC80LzIxIDEyOjM5IFBNLCBHcmVnIFdpbHNvbi1MaW5kYmVyZyB3cm90ZToNCj4gPiBI
ZWxsbyBsaXN0LA0KPiA+DQo+ID4gSSdtIHdvcmtpbmcgb24gYSBRdCBzdXBwbGllZCBib290MnF0
IFlvY3RvIGJ1aWxkIGN1cnJlbnRseSBiYXNlZCBvbg0KPiA+IFpldXMgdGhhdCBpcyBydW5uaW5n
IG9uIGEgUmFzcGJlcnJ5IFBpIDQuIEkgcmVjZW50bHkgdXBkYXRlZCB0aGUgcXQNCj4gPiB2ZXJz
aW9uIHRvIDUuMTUuNiBhbmQgUXQgY2hhbmdlZCBzb21ldGhpbmcgaW4gdGhlIFlvY3RvIGNvbmZp
Z3VyYXRpb24NCj4gPiB0aGF0IHRoZXkgYXJlIHVzaW5nIGFuZCBub3cgb25lIG9mIHRoZSByZWNp
cGVzIHRoYXQgd2UgdXNlIGlzIGZhaWxpbmcNCj4gPiBzYXlpbmcgdGhhdCBpbiBuZWVkcyAndmly
dHVhbC9lZ2wnIGJ1dCB0aGF0IGl0IGlzIG5vdCBwcm92aWRlZCBieSBhbnkgcmVjaXBlLg0KPiA+
DQo+ID4gSW4gdGhlIHNlYXJjaGluZyB0aGF0IEkgaGF2ZSBkb25lIEkgaGF2ZSBmb3VuZCB0aGF0
IHRoZSByYXNwYmVycnkgcGkgNA0KPiA+IGlzIHBhcnRpY3VsYXIgb24gd2hpY2ggcGFja2FnZSBz
dXBwbGllcyB0aGUgdmlydHVhbC9lZ2wgYnV0IEkgaGF2ZW4ndA0KPiA+IHNlZW4gYW55dGhpbmcg
dGhhdCBpbmRpY2F0ZXMgd2hhdCBJIHNob3VsZCBkbyB0byByZS1lbmFibGUgaXQuDQo+ID4NCj4g
PiBDYW4gYW55b25lIHRlbGwgbWUgd2hhdCBJIG5lZWQgdG8gZG8gdG8gZW5hYmxlIHRoZSBjb3Jy
ZWN0IGRyaXZlciB0bw0KPiA+IGdldCB2aXJ0dWFsL2VnbCBwcm92aWRlZCBvbiB0aGUgUmFzcGJl
cnJ5IFBpIDQ/IE9yIG1heWJlIGV2ZW4gYmV0dGVyLA0KPiA+IGhvdyBJIGNvdWxkIHNlYXJjaCB0
aHJvdWdoIHRoZSBwYWNrYWdlcyB0aGF0IGFyZSBlbmFibGVkIG9uIHRoZSBvbGQNCj4gPiBhbmQg
bmV3IFlvY3RvIHRyZWVzIHNvIHRoYXQgSSBjYW4gZmlndXJlIG91dCB3aGF0IGNoYW5nZWQgYmV0
d2VlbiB0aGUNCj4gPiByZWxlYXNlcyBhbmQgcmUtZW5hYmxlIHRoZSB2aXJ0dWFsL2VnbC4NCj4g
Pg0KPiANCj4gaXQgc2hvdWxkIGJlIHByb3ZpZGVkIGJ5IHVzZXJsYW5kIHBhY2thZ2UgaWYgeW91
IGFyZSB1c2luZyBjbG9zZWQgc291cmNlDQo+IGdyYXBoaWNzIGRyaXZlci4NCj4gDQo+ID4gQmVz
dCBSZWdhcmRzLA0KPiA+DQo+ID4gR3JlZyBXaWxzb24tTGluZGJlcmcNCj4gPg0KPiA+DQo+ID4N
Cj4gPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiA+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwg
bWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiA+IFlvdSBhdXRvbWF0aWNhbGx5IGZvbGxv
dyBhbnkgdG9waWNzIHlvdSBzdGFydCBvciByZXBseSB0by4NCj4gPiBWaWV3L1JlcGx5IE9ubGlu
ZSAoIzU0OTQzKToNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9t
ZXNzYWdlLzU0OTQzDQo+ID4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJv
amVjdC5vcmcvbXQvODYwNzY2MTEvMTk5NzkxNA0KPiA+IEdyb3VwIE93bmVyOiB5b2N0bytvd25l
ckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+ID4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViDQo+ID4gW3Jhai5raGVtQGdtYWlsLmNvbV0N
Cj4gPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiA+DQo=

