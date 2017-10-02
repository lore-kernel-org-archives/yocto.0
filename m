Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FBADE00B53; Mon,  2 Oct 2017 08:05:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B60C9E00A9C
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 08:05:29 -0700 (PDT)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Mon, 2 Oct 2017 09:05:28 -0600
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Mon, 2 Oct 2017 09:05:28 -0600
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1293.002;
	Mon, 2 Oct 2017 09:05:28 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "bruce.ashfield@windriver.com" <bruce.ashfield@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Configuration fragments not making it into kernel
	configuration
Thread-Index: AQHTOmSVeZY8pvkFA0SrnPsL+1+tr6LRDGiAgAADJoA=
Date: Mon, 2 Oct 2017 15:05:28 +0000
Message-ID: <1506956727.2816.5.camel@sdl.usu.edu>
References: <1506828179.7624.9.camel@sdl.usu.edu>
	<3fd40621-6c3e-d7e2-69c0-baa1aa4dab86@windriver.com>
In-Reply-To: <3fd40621-6c3e-d7e2-69c0-baa1aa4dab86@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.22.119]
MIME-Version: 1.0
Cc: Jack Kiefer <Jack.Kiefer@sdl.usu.edu>
Subject: Re: Configuration fragments not making it into kernel configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Oct 2017 15:05:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <5166DFD30DBF7E4BB98F373B7B2AC097@sdl.usu.edu>
Content-Transfer-Encoding: base64

DQpPbiBNb24sIDIwMTctMTAtMDIgYXQgMTA6NTQgLTA0MDAsIEJydWNlIEFzaGZpZWxkIHdyb3Rl
Og0KPiBPbiAwOS8zMC8yMDE3IDExOjIyIFBNLCBKb25hdGhhbiBIYXdzIHdyb3RlOg0KPiA+IA0K
PiA+IEFsbCwNCj4gPiANCj4gPiBJJ3ZlIGNyZWF0ZWQgYSBiYmFwcGVuZCB0aGF0IGFwcGVuZHMg
dG8gdGhlIGxpbnV4LXlvY3RvLXJ0IHJlY2lwZQ0KPiA+IHRvDQo+ID4gc2ltcGx5IGFwcGx5IGNv
bmZpZ3VyYXRpb24gZnJhZ21lbnRzLsKgwqBJJ3ZlIGJlZW4gdXNpbmcgdGhpcyByZWNpcGUNCj4g
PiBmb3INCj4gPiBzb21lIHRpbWUgKHRocm91Z2ggbWFueSByZWxlYXNlcykgYnV0IHNpbmNlIEkg
bW92ZWQgdG8gdGhlIG1vcnR5DQo+ID4gYnJhbmNoDQo+ID4gbXkgZnJhZ21lbnRzIGFyZW4ndCBn
ZXR0aW5nIGFwcGxpZWQgdG8gdGhlIGFjdHVhbCBrZXJuZWwNCj4gPiBjb25maWd1cmF0aW9uLg0K
PiA+IMKgIFRoZSBrZXJuZWxfY29uZmlnY2hlY2sgdGFzayBkb2Vzbid0IGNhdGNoIHRoZSBlcnJv
ciBlaXRoZXIuDQo+ID4gDQo+ID4gV2hhdCBJJ20gdHJ5aW5nIHRvIGRvIGluIGEgbnV0c2hlbGwg
aXMgZGlzYWJsZSB0aGUgaW4ta2VybmVsIElHQg0KPiA+IGRyaXZlcg0KPiA+IGFuZCB1c2UgbXkg
b3duLCBwYXRjaGVkIHZlcnNpb24uwqDCoFRoZSBjb25maWd1cmF0aW9uIGZyYWdtZW50cyBhcmUN
Cj4gPiBpbnN0YWxsZWQgYnkgbXkgcmVjaXBlIGluOg0KPiA+IA0KPiA+IDxidWlsZD4vdG1wL3dv
cmsvY29yZWk3LTY0LWludGVsLWNvbW1vbi1zaWdtYS1saW51eC9saW51eC15b2N0by0NCj4gPiBy
dC80LjguMytnaXRBVVRPSU5DKzZkMDI4ZDI4MThfNDA1NzU1NmMwNC1yMC8NCj4gPiANCj4gPiBI
b3dldmVyIHRoZSAuY29uZmlnIGZpbGUgYXQ6DQo+ID4gDQo+ID4gwqAgPGJ1aWxkPi90bXAvd29y
ay9jb3JlaTctNjQtaW50ZWwtY29tbW9uLXNpZ21hLWxpbnV4L2xpbnV4LXlvY3RvLQ0KPiA+IHJ0
LzQuOC4zK2dpdEFVVE9JTkMrNmQwMjhkMjgxOF80MDU3NTU2YzA0LXIwL2xpbnV4LWNvcmVpNy02
NC1pbnRlbC0NCj4gPiBjb21tb24tcHJlZW1wdC1ydC1idWlsZC8uY29uZmlnDQo+ID4gDQo+ID4g
ZG9lc24ndCBoYXZlIHRoZSBuZWNlc3NhcnkgY29uZmlndXJhdGlvbiAtIGl0IHN0aWxsIGhhcyB0
aGUNCj4gPiBkZWZhdWx0Lg0KPiA+IA0KPiA+IEkga25vdyBJIGNhbiBmaXggdGhpcyBieSBzaW1w
bHkgZG9pbmcgYSBtZW51Y29uZmlnLCBidXQgdGhhdCBpc24ndA0KPiA+IHRoZQ0KPiA+IHByb3Bl
ciB3YXkgdG8gZG8gaXQgLSBJIGhhdmUgbXVsdGlwbGUgQlNQIGxheWVycyB0aGF0IGRvIHRoZSBz
YW1lDQo+ID4gdGhpbmcNCj4gPiBhbmQgdGhleSBhbGwgYmVoYXZlIGluIHRoZSBzYW1lIHdheS4N
Cj4gPiANCj4gPiBXaGF0IGFtIEkgZG9pbmcgd3Jvbmc/wqDCoEkndmUgYXR0YWNoZWQgbXkgbGF5
ZXIgdGhhdCBjb250YWlucyB0aGUNCj4gPiByZWNpcGUuwqDCoElmIHRoZSBmcmFnbWVudHMgYXJl
IGdldHRpbmcgaW5zdGFsbGVkIEkgdGhpbmsgdGhlIHJlY2lwZQ0KPiA+IGlzDQo+ID4gd29ya2lu
ZyByaWdodCAtIGJ1dCBpcyB0aGVyZSBzb21ldGhpbmcgaW4gdGhlIGxvd2VyLWxldmVsIGNsYXNz
DQo+ID4gdGhhdA0KPiA+IGlzbid0IHdvcmtpbmcgb3IgZG8gSSBoYXZlIGEgY29uZmlndXJhdGlv
biB0aGF0IGlzIGJyZWFraW5nIGl0Pw0KPiBJIGRpZCBhIGJ1aWxkIHdpdGggbW9ydHkgYW5kIHlv
dXIgQlNQLCBhbmQgSSdtIG5vdCBzZWVpbmcNCj4gdGhlIHNhbWUgcmVzdWx0cy4NCj4gDQo+IE9u
ZSBub3RhYmxlIGRpZmZlcmVuY2UgaXMgdGhhdCBpZiB5b3UgYXJlIHVzaW5nIHRoZSB0aXAgb2YN
Cj4gdGhlIG1vcnR5IGJyYW5jaGVzLCB5b3Ugc2hvdWxkIGdldCA0LjguMTcsIG5vdCA0LjguMy4N
Cj4gDQo+IEkgZGlkIHplcm8gZXh0cmEgY29uZmlndXJhdGlvbiwganVzdCBhZGRlZCB5b3VyIGxh
eWVyLCBtZXRhLWludGVsDQo+IGFuZCB0aGVuIGJpdGJha2VkIGxpbnV4LXlvY3RvLXJ0Lg0KDQpJ
IGp1c3Qgbm90aWNlZCB0aGF0IG15IG1ldGEtaW50ZWwgbGF5ZXIgd2FzIGEgZmV3IGNvbW1pdHMg
YmVoaW5kLCBhDQpsaWtlbHkgY3VscHJpdCBmb3Igd2hhdCBJJ20gc2VlaW5nLiDCoEknbSByZWJ1
aWxkaW5nIHRvIHNlZSB3aGF0IEkgZ2V0Lg0KSSdsbCByZXBvcnQgYmFjayB3aGVuIEkgaGF2ZSBz
b21ldGhpbmcuDQoNCklmIHRoaXMgZG9lc24ndCBzb2x2ZSBteSBpc3N1ZSwgd291bGQgeW91IHJl
Y29tbWVuZCB3aXBpbmcgbXkgc3N0YXRlPw0KSSd2ZSBhbHJlYWR5IHdpcGVkIG91dCB0bXAgd2l0
aG91dCBzdWNjZXNzLg0KDQo+IE1heWJlIEknbSBtaXN1bmRlcnN0YW5kaW5nIHdoYXQgSSBzZWUg
aW4gdGhlIEJTUCBsYXllciwgYnV0IEkNCj4gZGlkIGdldCBJR0IgZGlzYWJsZWQ6DQo+IA0KPiA6
fi9wb2t5L2J1aWxkL3RtcC93b3JrL2NvcmVpNy02NC1pbnRlbC1jb21tb24tcG9reS1saW51eC9s
aW51eC15b2N0by0NCj4gcnQvNC44LjE3K2dpdEFVVE9JTkMrYmI2OTg0ZjQ2Yl85YzRmNTJjYjJi
LXIwL2xpbnV4LWNvcmVpNy02NC1pbnRlbC0NCj4gY29tbW9uLXByZWVtcHQtcnQtYnVpbGQkwqAN
Cj4gZ3JlcCBDT05GSUdfSUdCIC5jb25maWcNCj4gIyBDT05GSUdfSUdCIGlzIG5vdCBzZXQNCj4g
Q09ORklHX0lHQlZGPW0NCj4gDQo+IEFuZCBJIGRpZCBnZXQgYSB3YXJuaW5nIGR1cmluZyB0aGUg
YnVpbGQ6DQo+IA0KPiAtLS0tLS0tLS0tIENPTkZJR19JR0JfRENBIC0tLS0tLS0tLS0tLS0tLS0t
DQo+IENvbmZpZzogQ09ORklHX0lHQl9EQ0ENCj4gRnJvbTrCoA0KPiAvaG9tZS9icnVjZS9wb2t5
L2J1aWxkL3RtcC93b3JrLXNoYXJlZC94cGVkaXRlNzU3MC9rZXJuZWwtDQo+IHNvdXJjZS8ua2Vy
bmVsLW1ldGEvY29uZmlncy9zdGFuZGFyZC9wcmVlbXB0LQ0KPiBydC9pbnRlbC9mZWF0dXJlcy9k
Y2EvZGNhLmNmZw0KPiBSZXF1ZXN0ZWQgdmFsdWU6wqDCoENPTkZJR19JR0JfRENBPXkNCj4gQWN0
dWFsIHZhbHVlOg0KPiANCj4gQ29uZmlnICdJR0JfRENBJyBoYXMgdGhlIGZvbGxvd2luZyBjb25k
aXRpb25hbHM6DQo+IMKgwqDCoElHQiAmJiBEQ0EgJiYgIShJR0IgPSB5ICYmIERDQSA9IG0pICh2
YWx1ZTogIm4iKQ0KPiBJR0IgJiYgRENBICYmICEoSUdCID0geSAmJiBEQ0EgPSBtKSAodmFsdWU6
ICJuIikNCj4gRGVwZW5kZW5jeSB2YWx1ZXMgYXJlOg0KPiDCoMKgwqB5IFt5XSBtIFttXSBJR0Ig
W25dIERDQSBbeV0NCj4gDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiBXaGljaCBleHBs
YWlucyB3aHkgQ09ORklHX0lHQl9EQ0EgZGlkbid0IG1ha2UgaXQgaW50byB0aGUgZmluYWwNCj4g
LmNvbmZpZw0KPiANCj4gQ2FuIHlvdSBjbGFyaWZ5IHdoYXQgeW91IHdlcmUgbG9va2luZyB0byBn
ZXQgZm9yIGZpbmFsIGNvbmZpZ3VyYXRpb24NCj4gc2V0dGluZ3MgPw0KDQpUaGUgdGhyZWUgZnJh
Z21lbnRzIHNob3VsZCBkaXNhYmxlIHRoZSBJbnRlbCBJR0IgZHJpdmVyIChDT05GSUdfSUdCIG5v
dA0Kc2V0KSwgZW5hYmxlIHNvbWUgR1BJTyBJMkMgZHJpdmVycywgYW5kIGVuYWJsZSBkaXJlY3Qg
Y2FjaGUgYWNjZXNzLg0KDQpJJ20gZ3Vlc3NpbmcgQ09ORklHX0lHQl9EQ0Egd2FzIHNldCBpbiB0
aGUgb3JpZ2luYWwgY29uZmlnIGFuZA0KQ09ORklHX0lHQiBpcyBub3QgYmVpbmcgc2V0LCBzbyBJ
R0JfRENBIGlzIGdldHRpbmcgdW5zZXQgY2F1c2luZyB0aGUNCndhcm5pbmcuIMKgSSdsbCBhZGp1
c3QgbXkgSUdCIGZyYWdtZW50IHRvIGV4cGxpY2l0eSBkaXNhYmxlDQpDT05GSUdfSUdCX0RDQSBh
cyB3ZWxsLg0KDQo+ID4gDQo+ID4gDQo+ID4gQW55IGhlbHAgb3IgZGlyZWN0aW9uIGlzIGFwcHJl
Y2lhdGVkLsKgwqBUaGlzIGhhcyBiZWVuIHJlYWxseQ0KPiA+IGZydXN0cmF0aW5nDQo+ID4gc2lu
Y2UgSSBrbm93IEkndmUgZG9uZSB0aGlzIGJlZm9yZSBhbmQgYWxsIHRoZSB0aHJlYWRzIEkndmUg
Zm91bmQNCj4gPiBvbg0KPiA+IHRoZSBsaXN0cyBmcm9tIGJlZm9yZSBoYXZlbid0IHJlYWxseSBn
aXZlbiBhbiBhbnN3ZXIgLSBtYXliZSBJIGp1c3QNCj4gPiBtaXNzZWQgdGhlIGdvbGRlbiB0aHJl
YWQ/DQo+ID4gDQo+ID4gVGhhbmtzIQ0KPiA+IEpvbg0KPiA+IA0KPiA+IA0KPiA+IA==

