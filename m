Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90668E00E05; Wed,  4 Sep 2019 09:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.33 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 435A3E00DA3
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 09:56:18 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx14.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 04 Sep 2019 16:56:16 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 4 Sep 2019 09:56:15 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 4 Sep 2019 09:56:14 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Belisko Marek <marek.belisko@gmail.com>
Thread-Topic: [yocto] [meta-raspberrypi] Confusion about U-Boot setup
Thread-Index: AdViiJ5RhcubeYNCQzmLxnNlgHvPtwApBekAAAT1MQA=
Date: Wed, 4 Sep 2019 16:56:14 +0000
Message-ID: <d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
References: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
	<CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com>
In-Reply-To: <CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.158]
MIME-Version: 1.0
X-BESS-ID: 1567616175-893026-13410-334648-1
X-BESS-VER: 2019.1_20190823.2224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.218057 [from 
	cloudscan21-128.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Confusion about U-Boot setup
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
X-List-Received-Date: Wed, 04 Sep 2019 16:56:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCZWxpc2tvIE1hcmVrIFttYWls
dG86bWFyZWsuYmVsaXNrb0BnbWFpbC5jb21dDQo+IFNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVy
IDA0LCAyMDE5IDEyOjI2IEFNDQo+IFRvOiBHcmVnIFdpbHNvbi1MaW5kYmVyZyA8R1dpbHNvbkBz
YWt1cmF1cy5jb20+DQo+IENjOiBZb2N0byBsaXN0IGRpc2N1c3Npb24gPHlvY3RvQHlvY3RvcHJv
amVjdC5vcmc+DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFttZXRhLXJhc3BiZXJyeXBpXSBDb25m
dXNpb24gYWJvdXQgVS1Cb290IHNldHVwDQo+IA0KPiBIaSwNCj4gDQo+IE9uIFR1ZSwgU2VwIDMs
IDIwMTkgYXQgODo1OCBQTSBHcmVnIFdpbHNvbi1MaW5kYmVyZyA8R1dpbHNvbkBzYWt1cmF1cy5j
b20+DQo+IHdyb3RlOg0KPiA+DQo+ID4gSSd2ZSBjb25maWd1cmVkIGEgc3VtbyBidWlsZCwgYnkg
d2F5IG9mIFFUJ3MgYm9vdDJxdCB0byB1c2UgdS1ib290IGFuZCBJIGFtDQo+IHNlZWluZyBhIHUt
Ym9vdCBwcm9tcHQgZm9yIGtleXByZXNzIHRvIGRyb3Agb3V0IG9mIGF1dG9tYXRpYyBib290aW5n
IG9uIHN0YXJ0dXAsIGJ1dA0KPiBJIGRvbid0IHNlZSBhbnkgY29uZmlndXJhdGlvbiBzY3JpcHRz
IGZvciB1LWJvb3QgKHVFbnYudHh0IG9yIGEgc2NyaXB0KSBvbiB0aGUgaW1hZ2Ugb3INCj4gaW4g
dGhlIGJ1aWxkIHRtcC8gZGlyLg0KPiA+DQo+ID4gRm9yIHRoZSByYXNwYmVycnkgcGksIGhvdyBp
cyB1LWJvb3QgY29uZmlndXJlZCBvbiBzdGFydHVwPw0KPiB0aGVyZSBpcyB1LWJvb3QgdmFyaWFi
bGUgY2FsbGVkIGJvb3RkZWxheSB3aGljaCBjYW4gYmUgc2V0IHRvIGUuZy4gMiB0byB3YWl0IHVu
dGlsDQo+IGF1dG9ib290IGZvciAyIHNlY3MuIEkgdGhpbmsgdGhpcyBpcyB0aGUgY2FzZS4gVGhh
bmtzLg0KDQpUaGVyZSBpcyBhIHZhcmlhYmxlICJCT09UX0RFTEFZIiwgdGhhdCBpcyB1c2VkIHRv
IHRlbGwgdGhlIFJhc3BiZXJyeSBQaSBib290IGxvYWRlciB0byBkZWxheSBhZnRlciBzZXR0aW5n
IHVwIHRoZSBncmFwaGljcyBhbmQgYmVmb3JlIGxvYWRpbmcgdGhlIGtlcm5lbC4gVGhpcyBoYXMg
bm90aGluZyB0byBkbyB3aXRoIHUtYm9vdC4gIFRoZXJlIHNob3VsZCBiZSBzb21lIHdheSB0byBj
aGFuZ2UgdGhlIHUtYm9vdCBkZWxheSB0aGF0IHdhaXRzIGZvciB1c2VyIGlucHV0LCBhbW9uZyBv
dGhlciB0aGluZ3MsIEkganVzdCBoYXZlbid0IGJlZW4gYWJsZSB0byBmaW5kIGl0IHlldCBhbmQg
d2FzIHdvbmRlcmluZyBpZiBzb21lb25lIGNvdWxkIHBvaW50IG1lIHRvIHdoZXJlIGl0IGNhbiBi
ZSBmb3VuZC4NCg0KQlIsDQpHcmVnDQoNCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4gR3JlZyBXaWxz
b24tTGluZGJlcmcNCj4gPg0KPiA+IC0tDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3Rp
bmZvL3lvY3RvDQo+IA0KPiBCUiwNCj4gDQo+IG1hcmVrDQo=

