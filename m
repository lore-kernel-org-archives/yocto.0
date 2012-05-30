Return-Path: <michel.racine@hp.com>
Received: from g1t0028.austin.hp.com (g1t0028.austin.hp.com [15.216.28.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C072AE00723
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 07:36:08 -0700 (PDT)
Received: from G1W3635G.americas.hpqcorp.net (g1w3635g.austin.hp.com
	[16.193.48.86]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g1t0028.austin.hp.com (Postfix) with ESMTPS id 7DC7D1C564
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 14:36:08 +0000 (UTC)
Received: from G1W3626G.americas.hpqcorp.net (16.193.48.84) by
	G1W3635G.americas.hpqcorp.net (16.193.48.86) with Microsoft SMTP Server
	(TLS) id 14.2.283.4; Wed, 30 May 2012 14:35:25 +0000
Received: from G2W2535.americas.hpqcorp.net ([169.254.4.45]) by
	G1W3626G.americas.hpqcorp.net ([16.193.48.84]) with mapi id
	14.02.0283.003; Wed, 30 May 2012 14:35:24 +0000
From: "Racine, Michel" <michel.racine@hp.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Build issue (syslinux ext2_fs.h error) in Edison 6.0.1
Thread-Index: Ac0+b81lgAGq7WbMTqWlvRwCXraGSgAANvUAAAAfZ8A=
Date: Wed, 30 May 2012 14:35:23 +0000
Message-ID: <3142CB09BE468C408BD5916115E8D45F012A0C@G2W2535.americas.hpqcorp.net>
References: <3142CB09BE468C408BD5916115E8D45F0129A8@G2W2535.americas.hpqcorp.net>
	<CAJTo0LbO9isDBoeO-oMf3nR5+57mgJq66Q1njfEsaR1A2whi=g@mail.gmail.com>
In-Reply-To: <CAJTo0LbO9isDBoeO-oMf3nR5+57mgJq66Q1njfEsaR1A2whi=g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.13]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build issue (syslinux ext2_fs.h error) in Edison 6.0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 May 2012 14:36:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IFJvc3MuDQoNCkknbSBjdXJyZW50bHkgd29ya2luZyBmcm9tIGEgdGFyIGJhbGwg
cmVsZWFzZSBvZiA2LjAuMS4gQ291bGQgeW91IHBsZWFzZSBwb2ludCBtZSB0byBkb2NzL2xpbmsg
dG8gb2J0YWluIGEgcGF0Y2g/IEkgcHJvYmFibHkgbWlzc2VkIGl0IGZyb20gdGhlIGRvY3MgSSBs
b29rZWQgYXQuLi4NCg0KTGF0ZXIsDQpNaWNoZWwuDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0g
DQpTZW50OiBXZWRuZXNkYXksIE1heSAzMCwgMjAxMiA4OjMwIEFNDQpUbzogUmFjaW5lLCBNaWNo
ZWwNCkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBCdWls
ZCBpc3N1ZSAoc3lzbGludXggZXh0Ml9mcy5oIGVycm9yKSBpbiBFZGlzb24gNi4wLjENCg0KSGkg
TWljaGVsLA0KDQpPbiAzMCBNYXkgMjAxMiAxNToyMywgUmFjaW5lLCBNaWNoZWwgPG1pY2hlbC5y
YWNpbmVAaHAuY29tPiB3cm90ZToNCj4gV2UgYXJlIGNyZWF0aW5nIGEgZGlzdHJvIGZvciBJbnRl
bCBOMjYwMC9OTTEwIHVzaW5nIEVkaXNvbiA2LjAuMSBhbmQgQlNQDQo+IENlZGFyIFRyYWlsIDYu
MC4xLiBUaGUgYnVpbGQgc3RvcHMgd2l0aCBhIGZhaWx1cmUgb24gc3lzbGludXggKHNlZSBiZWxv
dyBmb3INCj4gdGhlIGxhc3QgZmV3IGxpbmVzKS4gSSBjaGVja2VkIHRoZSBZb2N0byBidWd6aWxs
YSwgYW5kIHRoYXQgc2VlbWVkIHRvIGhhdmUNCj4gYmVlbiBhbiBpc3N1ZSBpbiB0aGUgcGFzdCwg
YnV0IEknbSBub3Qgc3VyZSBob3cgdG8gZ2V0IHRoZSBmaXggb3Igd29yaw0KPiBhcm91bmQgaXQu
DQoNCkZ1bm5pbHkgZW5vdWdoIEkgd2FzIGp1c3QgbG9va2luZyBhdCB0aGlzLg0KDQpUaGUgcmVs
ZXZhbnQgYnVnIGlzDQpodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcu
Y2dpP2lkPTIyMzYuICBBcyBpdCBzYXlzLA0KdGhpcyBpcyBmaXhlZCBpbiBtYXN0ZXIuICBZb3Ug
Y2FuIGVpdGhlciBjaGVycnktcGljayB0aGUgY29tbWl0IGlmDQp5b3UncmUgd29ya2luZyBmcm9t
IGEgZ2l0IGNsb25lIG9mIEVkaXNvbiwgb3IgYXBwbHkgdGhlIGZpbmFsIHBhdGNoIHRvDQp5b3Vy
IGVkaXNvbi4NCg0KSSB0aGluayB0aGlzIGlzIGEgZ29vZCBjYW5kaWRhdGUgZm9yIGJhY2twb3J0
aW5nIHRvIHRoZSBuZXh0IEVkaXNvbg0KcG9pbnQgcmVsZWFzZS4NCg0KUm9zcw0K

