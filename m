Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E68E00D9D; Wed,  4 Sep 2019 13:10:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.32 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E193E00C87
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 13:10:09 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 04 Sep 2019 20:10:07 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 4 Sep 2019 13:10:05 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 4 Sep 2019 13:10:05 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Thread-Topic: [yocto] [meta-raspberrypi] Confusion about U-Boot setup
Thread-Index: AdViiJ5RhcubeYNCQzmLxnNlgHvPtwApBekAAAT1MQAAFM9ogAAN8paQ
Date: Wed, 4 Sep 2019 20:10:05 +0000
Message-ID: <1667c72fdc9c4e57a454858b65b332c8@sakuraus.com>
References: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
	<CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com>
	<d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
	<CAGAf8Lyh-pqhaifi3n-i7RXdks_3RgSioDy9eV41mc=KtCDZcA@mail.gmail.com>
In-Reply-To: <CAGAf8Lyh-pqhaifi3n-i7RXdks_3RgSioDy9eV41mc=KtCDZcA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.158]
MIME-Version: 1.0
X-BESS-ID: 1567627807-893000-16806-347749-1
X-BESS-VER: 2019.3_20190823.2224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.218063 [from 
	cloudscan10-2.us-east-2a.ess.aws.cudaops.com]
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
X-List-Received-Date: Wed, 04 Sep 2019 20:10:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBab3JhbiBTdG9qc2F2bGpldmlj
IFttYWlsdG86em9yYW4uc3RvanNhdmxqZXZpY0BnbWFpbC5jb21dDQo+IFNlbnQ6IFdlZG5lc2Rh
eSwgU2VwdGVtYmVyIDA0LCAyMDE5IDEyOjQ0IFBNDQo+IFRvOiBHcmVnIFdpbHNvbi1MaW5kYmVy
ZyA8R1dpbHNvbkBzYWt1cmF1cy5jb20+DQo+IENjOiBCZWxpc2tvIE1hcmVrIDxtYXJlay5iZWxp
c2tvQGdtYWlsLmNvbT47IFlvY3RvIGxpc3QgZGlzY3Vzc2lvbg0KPiA8eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZz4NCj4gU3ViamVjdDogUmU6IFt5b2N0b10gW21ldGEtcmFzcGJlcnJ5cGldIENvbmZ1
c2lvbiBhYm91dCBVLUJvb3Qgc2V0dXANCj4gDQo+ID4gVGhlcmUgc2hvdWxkIGJlIHNvbWUgd2F5
IHRvIGNoYW5nZSB0aGUgdS1ib290IGRlbGF5IHRoYXQgd2FpdHMgZm9yDQo+ID4gdXNlciBpbnB1
dCwgYW1vbmcgb3RoZXIgdGhpbmdzLCBJIGp1c3QgaGF2ZW4ndCBiZWVuIGFibGUgdG8gZmluZCBp
dA0KPiA+IHlldCBhbmQgd2FzIHdvbmRlcmluZyBpZiBzb21lb25lIGNvdWxkIHBvaW50IG1lIHRv
IHdoZXJlIGl0IGNhbiBiZQ0KPiA+IGZvdW5kLg0KPiANCj4gSmVzdXMgQ2hyaXN0J3MsIEdyZWc/
IQ0KPiANCj4gVGhpcyBpcyB3aGF0IHlvdSBzaG91bGQgbG9vayBmb3IgKGV4YWN0IHN0cmluZyk6
DQo+ICNkZWZpbmUgQ09ORklHX0JPT1RERUxBWSAgICAgICAgICAgICAgICh3aGF0ZXZlciB7MCwx
LDIsMy4uLn0pDQo+IA0KPiBJbiB5b3VyICQoVUJPT1RfUk9PVCkvaW5jbHVkZS9jb25maWdzLzxj
b25maWdfZmlsZS5oPg0KDQpJIHdhc24ndCBvcmlnaW5hbGx5IGxvb2tpbmcgZm9yIHRoZSBib290
IGRlbGF5LCB0aGF0IGlzIHdoYXQgbWFyZWsgbWVudGlvbmVkLiBJIHdhcyBsb29raW5nIGZvciBn
ZW5lcmFsIGNvbmZpZ3VyYXRpb24gaW5mbyBhbmQgd2hlcmUgdGhlIHVFbnYudHh0IGdvdCBzZXR1
cC4gSSB0aG91Z2h0IHNvbWVob3cgSSBoYWQgbWlzc2VkIHNvbWUgZG9jcyBvbiB1LWJvb3QgY29u
ZmlndXJhdGlvbiBhcyB0aGVyZSBhcmUgc28gbWFueSBjb25maWd1cmF0aW9uIG9wdGlvbnMgdGhh
dCBjYW4gYmUgc2V0IGJ5IHlvY3RvIHZhcmlhYmxlcy4gSSBndWVzcyB0aGV5IGRvbid0IGV4aXN0
IGZvciB1LWJvb3QgYW5kIEkgd2lsbCBsb29rIGluIHRoZSB1LWJvb3QgY29uZmlnX2ZpbGUuaA0K
VGhhbmtzLA0KR3JlZw0KDQo+IA0KPiBab3Jhbg0KPiBfX19fX19fDQo+IA0KPiANCj4gT24gV2Vk
LCBTZXAgNCwgMjAxOSBhdCA2OjU3IFBNIEdyZWcgV2lsc29uLUxpbmRiZXJnDQo+IDxHV2lsc29u
QHNha3VyYXVzLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+ID4gPiBGcm9tOiBCZWxpc2tvIE1hcmVrIFttYWlsdG86bWFyZWsuYmVsaXNrb0BnbWFp
bC5jb21dDQo+ID4gPiBTZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciAwNCwgMjAxOSAxMjoyNiBB
TQ0KPiA+ID4gVG86IEdyZWcgV2lsc29uLUxpbmRiZXJnIDxHV2lsc29uQHNha3VyYXVzLmNvbT4N
Cj4gPiA+IENjOiBZb2N0byBsaXN0IGRpc2N1c3Npb24gPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+
DQo+ID4gPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBbbWV0YS1yYXNwYmVycnlwaV0gQ29uZnVzaW9u
IGFib3V0IFUtQm9vdCBzZXR1cA0KPiA+ID4NCj4gPiA+IEhpLA0KPiA+ID4NCj4gPiA+IE9uIFR1
ZSwgU2VwIDMsIDIwMTkgYXQgODo1OCBQTSBHcmVnIFdpbHNvbi1MaW5kYmVyZw0KPiA+ID4gPEdX
aWxzb25Ac2FrdXJhdXMuY29tPg0KPiA+ID4gd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+IEkndmUg
Y29uZmlndXJlZCBhIHN1bW8gYnVpbGQsIGJ5IHdheSBvZiBRVCdzIGJvb3QycXQgdG8gdXNlIHUt
Ym9vdA0KPiA+ID4gPiBhbmQgSSBhbQ0KPiA+ID4gc2VlaW5nIGEgdS1ib290IHByb21wdCBmb3Ig
a2V5cHJlc3MgdG8gZHJvcCBvdXQgb2YgYXV0b21hdGljIGJvb3RpbmcNCj4gPiA+IG9uIHN0YXJ0
dXAsIGJ1dCBJIGRvbid0IHNlZSBhbnkgY29uZmlndXJhdGlvbiBzY3JpcHRzIGZvciB1LWJvb3QN
Cj4gPiA+ICh1RW52LnR4dCBvciBhIHNjcmlwdCkgb24gdGhlIGltYWdlIG9yIGluIHRoZSBidWls
ZCB0bXAvIGRpci4NCj4gPiA+ID4NCj4gPiA+ID4gRm9yIHRoZSByYXNwYmVycnkgcGksIGhvdyBp
cyB1LWJvb3QgY29uZmlndXJlZCBvbiBzdGFydHVwPw0KPiA+ID4gdGhlcmUgaXMgdS1ib290IHZh
cmlhYmxlIGNhbGxlZCBib290ZGVsYXkgd2hpY2ggY2FuIGJlIHNldCB0byBlLmcuIDINCj4gPiA+
IHRvIHdhaXQgdW50aWwgYXV0b2Jvb3QgZm9yIDIgc2Vjcy4gSSB0aGluayB0aGlzIGlzIHRoZSBj
YXNlLiBUaGFua3MuDQo+ID4NCj4gPiBUaGVyZSBpcyBhIHZhcmlhYmxlICJCT09UX0RFTEFZIiwg
dGhhdCBpcyB1c2VkIHRvIHRlbGwgdGhlIFJhc3BiZXJyeSBQaSBib290DQo+IGxvYWRlciB0byBk
ZWxheSBhZnRlciBzZXR0aW5nIHVwIHRoZSBncmFwaGljcyBhbmQgYmVmb3JlIGxvYWRpbmcgdGhl
IGtlcm5lbC4gVGhpcyBoYXMNCj4gbm90aGluZyB0byBkbyB3aXRoIHUtYm9vdC4gIFRoZXJlIHNo
b3VsZCBiZSBzb21lIHdheSB0byBjaGFuZ2UgdGhlIHUtYm9vdCBkZWxheQ0KPiB0aGF0IHdhaXRz
IGZvciB1c2VyIGlucHV0LCBhbW9uZyBvdGhlciB0aGluZ3MsIEkganVzdCBoYXZlbid0IGJlZW4g
YWJsZSB0byBmaW5kIGl0IHlldA0KPiBhbmQgd2FzIHdvbmRlcmluZyBpZiBzb21lb25lIGNvdWxk
IHBvaW50IG1lIHRvIHdoZXJlIGl0IGNhbiBiZSBmb3VuZC4NCj4gPg0KPiA+IEJSLA0KPiA+IEdy
ZWcNCj4gPg0KPiA+ID4gPg0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiBHcmVnIFdpbHNvbi1M
aW5kYmVyZw0KPiA+ID4gPg0KPiA+ID4gPiAtLQ0KPiA+ID4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+ID4gPiB5b2N0byBtYWlsaW5nIGxpc3QN
Cj4gPiA+ID4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA+ID4gPiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4gPiA+DQo+ID4gPiBCUiwNCj4gPiA+DQo+
ID4gPiBtYXJlaw0KPiA+IC0tDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lv
Y3RvDQo=

