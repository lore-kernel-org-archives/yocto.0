Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1155.1581058704084156213
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2020 22:58:27 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 aspmx.pardot.com}: limit exceeded (domain: tagmaster.com, ip: 140.211.169.56, mailfrom: pelle.windestam@tagmaster.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A299EE01685; Thu,  6 Feb 2020 22:58:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www; Thu, 06 Feb 2020 22:58:21 PST
Received: from mail.tagmaster.com (mail.tagmaster.com [37.233.78.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25BE6E01589
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2020 22:58:21 -0800 (PST)
Received: from TMEX01.tagmaster.com (10.10.55.12) by TMEX01.tagmaster.com
 (10.10.55.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.845.34; Fri, 7 Feb 2020
 07:43:17 +0100
Received: from TMEX01.tagmaster.com ([fe80::e438:720a:793e:d353]) by
 TMEX01.tagmaster.com ([fe80::e438:720a:793e:d353%9]) with mapi id
 15.01.0845.034; Fri, 7 Feb 2020 07:43:17 +0100
From: "Pelle Windestam" <pelle.windestam@tagmaster.com>
To: JH <jupiter.hce@gmail.com>, Andy Pont <andy.pont@sdcsystems.com>
CC: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] Support UBI u-boot
Thread-Topic: [yocto] Support UBI u-boot
Thread-Index: AQHV3LeU8swohIzFgEWMT1wWpwe1SqgPJfxGgAAgIvA=
Date: Fri, 7 Feb 2020 06:43:17 +0000
Message-ID: <c159fe1d7cc14f5c80878fe81a957bb4@tagmaster.com>
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <em86bbcd60-f004-4acb-b508-4471dac5c7c1@andys-imac.leeshillfarm.local>
 <CAA=hcWQsP1N58iqrxEggZBdSksgHk+gfuG7yz0+C3G7o0=DzOw@mail.gmail.com>
In-Reply-To: <CAA=hcWQsP1N58iqrxEggZBdSksgHk+gfuG7yz0+C3G7o0=DzOw@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.55.73]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+PkkgYWRkZWQgTkFORCBhbmQgVUJJRlMgc3VwcG9ydCB0byBteSBZb2N0byBsYXllciBtYWNo
aW5lIGNvbmZpZyBmaWxlOg0KPiA+Pg0KPiA+PlVCT09UX0NPTkZJRyA9ICJuYW5kIg0KPiA+PlVC
T09UX0NPTkZJR1tuYW5kXSArPSAibXg2dWxsXzE0eDE0X2V2a19jb25maWciDQo+ID4+VUJPT1Rf
Q09ORklHW25hbmRdICs9ICJteDZ1bGxfMTR4MTRfZXZrX25hbmRfY29uZmlnIg0KPiA+PlVCT09U
X0NPTkZJR1tuYW5kXSArPSAidWJpIg0KPiA+PlVCT09UX0NPTkZJR1tuYW5kXSArPSAidWJpZnMi
DQo+ID4+DQo+ID4+QnV0IG15IHUtYm9vdC5pbXgtbmFuZCBzdGlsbCBjb3VsZCBub3Qgc3VwcG9y
dCB1Ymk6DQo+ID4+DQo+ID4+PT4gdWJpIHBhcnQgcm9vdGZzDQo+ID4+VW5rbm93biBjb21tYW5k
ICd1YmknIC0gdHJ5IOKAmGhlbHDigJkNCj4gPiBZb3UgbmVlZCB0byBzdGFydCB0byByZWFkIHRo
cm91Z2ggdGhlIHZhcmlvdXMgc291cmNlcyB0byBmaWd1cmUgb3V0DQo+ID4gZm9yIHlvdXJzZWxm
IHdoYXQgaXMgZ29pbmcgb24hDQo+ID4NCj4gPiBTdGFydGluZyBmcm9tIHRoZSBib3R0b20sIGlu
IFUtQm9vdCAyMDE3LjAzIGFsbCBvZiB0aGUgY29tbWFuZCBzb3VyY2VzDQo+ID4gYXJlIGluIHRo
ZSDigJxjbWTigJ0gZGlyZWN0b3J5LiBUaGUg4oCcdWJpIOKApuKAnSBjb21tYW5kIGFyZSBhbGwg
aW4gdWJpLmMuDQo+ID4gUmVhZGluZyBjbWQvTWFrZWZpbGUgc2hvd3MgdGhhdCBmaWxlIGdldHMg
YWRkZWQgaW50byB0aGUgYnVpbGQgaWYNCj4gPiBDT05GSUdfQ01EX1VCSSBpcyBlbmFibGVkLg0K
PiANCj4gWW91IGFyZSByaWdodCwgdGhhdCBDT05GSUdfQ01EX1VCSSBpcyBub3QgZW5hYmxlZCwg
YnV0IEkgY291bGQgbm90IGZpbmQgYW55DQo+IGNvbmYgb3IgYmIgZmlsZXMgSSBjb3VsZCBjaGFu
Z2Ugb3IgZW5hYmxlIENPTkZJR19DTURfVUJJIGluIG1ldGEtZnJlZXNjYWxlDQo+IGxheWVyLg0K
PiANCj4gRGVzcGVyYXRlbHksIEkgaGFja2VkIHRvIHJ1biAibWFrZSBtZW51Y29uZmlnIiBhdCBV
LUJvb3QgMjAxNy4wMyBidWlsZA0KPiBkaXJlY3RvcnksIHNlbGVjdGVkIGFuZCBlbmFibGVkIENP
TkZJR19DTURfVUJJIGFuZCBzYXZlZCB0byAuY29uZmlnIGZpbGUgaW4NCj4gdGhhdCBidWlsZCBk
aXJlY3RvcnksIGJ1dCB0aGVuIHRvIHJ1biBiaXRiYWtlIHRvIGJ1aWxkIHUtYm9vdCBhZ2Fpbiwg
dGhlDQo+IC5jb25maWcgd2FzIHJlbW92ZWQgYW5kIHJlcGxhY2VkIGJ5IGFuIG9sZCBvbmUgZGlz
YWJsZWQgQ09ORklHX0NNRF9VQkkgYWdhaW4uDQo+IA0KPiBPdGhlciBwZW9wbGUgcmVjb21tZW5k
ZWQgdG8gYnVpbGQgdS1ib290IGluIGEgc3RhbmRhbG9uZSBlbnZpcm9ubWVudCBvdXQgb2YNCj4g
T0UgLyBZb2N0byBidWlsZCBzeXN0ZW0uIFNpbmNlIEkgaGF2ZSBzZXQgdXAgZXZlcnl0aGluZyBp
biBPRSAvIFlvY3RvDQo+IGVudmlyb25tZW50LCBJIHRob3VnaHQgaXQgY291bGQgYmUgZWFzaWVy
IGlmIEkgY291bGQgbW9kaWZ5IG9uZSBsaW5lIG9mIHUtDQo+IGJvb3QgY29uZmlnIGZpbGUgaW4g
YSByZWNpcGUuDQo+IA0KPiBBbnkgaWRlYSB3aGVyZSBpcyB0aGUgcmVjaXBlIGluIG1ldGEtZnJl
ZXNjYWxlIHRvIGFsbG93IG1lIHRvIGNoYW5nZSAvIGVuYWJsZQ0KPiBDT05GSUdfQ01EX1VCST8N
Cj4gDQo+IEFtIEkgdGhlIG9ubHkgb25lIHVuYWJsZSB0byBjaGFuZ2UgdS1ib290IGNvbmZpZyBm
aWxlIGluIE9FIC8gWW9jdHUgYnVpbGQ/DQo+IFRoYXQgbWFrZXMgbWUgdmVyeSBzYWQgOi0oLg0K
PiANCj4gDQo+ID4gVGhlIG5leHQgcGxhY2UgdG8gbG9vayBpcyB3aGV0aGVyIG9yIG5vdCB0aGF0
IGlzIHNldCBpbiB5b3VyIGRlZmNvbmZpZw0KPiA+IGZvciBVLUJvb3Qgb3Igb3ZlcndyaXR0ZW4g
c29tZXdoZXJlIGluIGEgcmVjaXBlIGluIHlvdXIgWW9jdG8gYnVpbGQNCj4gPiBlbnZpcm9ubWVu
dC4NCj4gDQo+IFllYWgsIEknbGwgYmVlbiBzZWFyY2hlZCBhbGwgZGF5LCBjb3VsZCBub3QgZmlu
ZCBhIHJlY2lwZSBZb2N0byBidWlsZA0KPiBlbnZpcm9ubWVudCwgSSB3YXMgdG9sZCBPRSAvIFlv
Y3RvIGRvZXMgbm90IGhhdmUgdGhhdCBzdGFjayBhbmQgbWVjaGFuaXNtIHRvDQo+IHNldCBhbmQg
Y2hhbmdlIHUtYm9vdCBjb25maWcsIGlzIGl0IHRydWU/DQo+IA0KDQpIaSwNCg0KSW4gbXkgY2Fz
ZSB1LWJvb3QgdXNlcyBhIGRlZmF1bHQgY29uZmlnIGNhbGxlZCBpbXg4cXhwX3Zhcl9zb21fZGVm
Y29uZmlnIHN0b3JlZCB1bmRlciB0aGUgY29uZmlncyBkaXJlY3RvcnkgaW4gdS1ib290IChub3Qg
c3VyZSBpZiBpdHMgaW4gdGhlIG9mZmljaWFsIHJlcG9zaXRvcmllcywgSSB1c2UgYSB2ZW5kb3Ig
c3VwcGxpZWQgdS1ib290IHJlcG8sIGJ1dCB0aGUgcHJvY2VkdXJlIHNob3VsZCBiZSB0aGUgc2Ft
ZSBlaXRoZXIgd2F5KSwgdGhlbiBJIGhhdmUgY3JlYXRlZCBhIC5iYmFwcGVuZC1maWxlIGZvciB0
aGUgdS1ib290IHJlY2lwZSwgYW5kIGFkZGVkIGEgcGF0Y2ggdGhhdCBtb2RpZmllcyB0aGUgZGVm
Y29uZmlnIGZpbGUgdG8gaW5jbHVkZSB0aGUgb3B0aW9ucyBJIHdhbnQgdG8gZW5hYmxlLiBUaGVu
IGFzIHUtYm9vdCBpcyBidWlsdCwgaXQgd2lsbCB1c2UgdGhlIHBhdGNoZWQgZGVmY29uZmlnIHdp
dGggdGhlIGFwcHJvcHJpYXRlIG9wdGlvbnMgZW5hYmxlZC4gSW4gdGhlIG1ldGEtZnJlZXNjYWxl
IGxheWVyIHRoZSB1LWJvb3QgcmVjaXBlcyBhcmUgdW5kZXIgbWV0YS1mcmVlc2NhbGUvcmVjaXBl
cy1ic3AvdS1ib290Lg0KDQpZb3Ugc2hvdWxkIGJlIGFibGUgdG8gZmlndXJlIG91dCBleGFjdGx5
IHdoaWNoIHUtYm9vdCByZWNpcGUgeW91IGFyZSB1c2luZyBieSBydW5uaW5nOg0KYml0YmFrZSAt
ZSA8aW1hZ2UgbmFtZT4gfCBncmVwIF5QUkVGRVJSRURfUFJPVklERVJfdmlydHVhbC9ib290bG9h
ZGVyDQoNCk5vdCBzdXJlIGlmIHRoaXMgaXMgdGhlIHJlY29tbWVuZGVkIHdheSB0byBnbywgYnV0
IHRoYXTigJlzIGhvdyBJIHNvbHZlZCBpdC4NCg0KLy9QZWxsZQ0KDQoNCg==
