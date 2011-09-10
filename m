Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D56B4E01208
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2011 16:58:10 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Sep 2011 16:58:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,362,1312182000"; d="scan'208";a="49987326"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 10 Sep 2011 16:58:10 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 10 Sep 2011 16:58:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.19]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.133]) with mapi id
	14.01.0323.003; Sat, 10 Sep 2011 16:58:09 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Gary Thomas
	<gary@mlbassoc.com>
Thread-Topic: [yocto] kernel panic when boot core-image-sato-sdk for qemux86
Thread-Index: AcxvRXVK4jIOtaOXSrCsdTiRDT91HgAsKwcAAAR1IgAAAlsMgAAAscOg
Date: Sat, 10 Sep 2011 23:58:09 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E6F629@ORSMSX101.amr.corp.intel.com>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
	<4E6B6284.2020701@mlbassoc.com>  <4E6B806E.3020202@mlbassoc.com>
	<1315672125.1986.30.camel@ted>
In-Reply-To: <1315672125.1986.30.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel panic when boot core-image-sato-sdk for qemux86
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
X-List-Received-Date: Sat, 10 Sep 2011 23:58:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RG9uJ3Qga25vdyB3aGV0aGVyIHRoZXNlIGRhdGEgd2lsbCBoZWxwIGJ1dCBzZWVtcyB0aGUgaXNz
dWUgaGl0IHNldmVyYWwgcGVvcGxlLCBMaWFuaGFvIHJlcG9ydGVkIHRoZSBzYW1lIGZhaWx1cmUg
d2l0aCBoaXMgbG9jYWwgYnVpbGQgYXMgd2VsbC4gIEkgZmlyc3Qgbm90aWNlZCB0aGUgZmFpbHVy
ZSBoYXBwZW5lZCB3aXRoIG15IGxvY2FsIGJ1aWxkIG9uIDkvOCBuaWdodCB3aXRoIGEgZnJlc2hs
eSBjbG9uZWQgdHJlZS4gIEJ1dCBmb3IgdGhlIHNhbWUgbmlnaHQncyBuaWdodGx5IGJ1aWxkIG9u
IGF1dG9idWlsZGVyLCBpdCB3YXMgZmluZS4gIEV2ZW4gdGhvdWdodCBpdCBzaG91bGRuJ3QgbWF0
dGVyLCBteSBob3N0IG1hY2hpbmUgaXMgVWJ1bnR1IDEwLjA0IDMyYml0Lg0KDQpJJ2xsIGtpY2sg
b2ZmIGFuIGFybSBidWlsZCB0byBzZWUuLi4NCg0KLSBKZXNzaWNhDQoNCi0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQpGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFpbHRvOnJpY2hhcmQucHVyZGll
QGxpbnV4Zm91bmRhdGlvbi5vcmddDQpTZW50OiBTYXR1cmRheSwgU2VwdGVtYmVyIDEwLCAyMDEx
IDk6MjkgQU0NClRvOiBHYXJ5IFRob21hcw0KQ2M6IFpoYW5nLCBKZXNzaWNhOyB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBrZXJuZWwgcGFuaWMgd2hlbiBib290
IGNvcmUtaW1hZ2Utc2F0by1zZGsgZm9yIHFlbXV4ODYNCg0KT24gU2F0LCAyMDExLTA5LTEwIGF0
IDA5OjIxIC0wNjAwLCBHYXJ5IFRob21hcyB3cm90ZToNCj4gT24gMjAxMS0wOS0xMCAwNzoxMywg
R2FyeSBUaG9tYXMgd3JvdGU6DQo+ID4gT24gMjAxMS0wOS0wOSAxNzowOSwgWmhhbmcsIEplc3Np
Y2Egd3JvdGU6DQo+ID4+IEhpLA0KPiA+Pg0KPiA+PiBIYXMgYW55Ym9keSByYW4gaW50byBrZXJu
ZWwgcGFuaWMgd2hlbiBib290IHVwIGNvcmUtaW1hZ2Utc2F0by1zZGsgZm9yIHFlbXV4ODYuIEni
gJl2ZSBiZWVuIGhhdmluZyB0aGlzIGlzc3VlIHdpdGggc2V2ZXJhbCBjbGVhbiBidWlsZCBmb3Ig
dHdvIGRheXMuIEFuZCBteSBsYXRlc3QgYnVpbGQgdHJlZSBpcyBhDQo+ID4+IGZyZXNobHkgY2xv
bmVkIHRyZWUgYWdhaW5zdCBwb2t5LW1hc3RlciB3aXRoIGNvbW1pdDoNCj4gPj4NCj4gPj4gY29t
bWl0IDIwZGJmMDAyNDM4NWVhZWY2MWEwNGQ4NzczZmQ3NjQwZTNjOGNjNmQNCj4gPj4NCj4gPj4g
QXV0aG9yOiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9y
Zz4NCj4gPj4NCj4gPj4gRGF0ZTogRnJpIFNlcCA5IDE5OjA3OjQwIDIwMTEgKzAxMDANCj4gPj4N
Cj4gPj4gVGhlIHFlbXUga2VybmVsIHBhbmljIG1lc3NhZ2VzIGFyZToNCj4gPj4NCj4gPj4gSU5J
VDogdmVyc2lvbiAyLjg4IGJvb3RpbmcNCj4gPj4NCj4gPj4gSW5pdFsxXTogc2VnZmF1bHQgYXQg
MzggaXAgNDk1MDc2Yzcgc3AgYmZkOWI2MGMgZXJyb3IgNCBpbiBsaWJjLTIuMTMuc29bNDk0OTIw
MDArMTVmMDAwXQ0KPiA+Pg0KPiA+PiBJbml0WzFdOiBzZWdmYXVsdCBhdCAxNiBpcCAwODA0YjNj
NyBzcCBiZmQ5YjI4MCBlcnJvciA0IGluIGluaXQuc3lzdmluaXRbODA0ODAwMCs3MDAwXQ0KPiA+
Pg0KPiA+PiBLZXJuZWwgcGFuaWMg4oCTIG5vdCBzeW5jaW5nOiBBdHRlbXB0ZWQgdG8ga2lsbCBp
bml0IQ0KPiA+Pg0KPiA+PiBQaWQ6IDEsIGNvbW06IGluaXQgTm90IHRhaW50ZWQgMy4wLjQteW9j
dG8tc3RhbmRhcmQrICMxDQo+ID4NCj4gPiBWZXJpZmllZCAtIGZhaWxzIGZvciBtZSBoZXJlIGFz
IHdlbGwuIEEgQnJ1Y2Ugc2FpZCwgYSBidWlsZCBmcm9tIGp1c3QgYSBmZXcgZGF5cw0KPiA+IGFn
byBkaWQgd29yay4gTm90ZTogSSBvbmx5IHRyaWVkIGNvcmUtaW1hZ2Utc2F0bw0KPiA+DQo+ID4g
QXMgZmFyIGFzIEkgY2FuIHRlbGwsIHRoZSBvbmx5IHBhY2thZ2VzIHRoYXQgd2VyZSByZWJ1aWx0
IHNpbmNlIG15IGxhc3QgZ28gb24NCj4gPiBBdWcgMzEgd2VyZSB2aXJ0dWFsL2tlcm5lbCAmIHBl
cmYNCj4gPg0KPiA+IExvb2tzIGxpa2UgaXQncyBzb21ldGhpbmcgdG8gZG8gd2l0aCBrZXJuZWwg
Y2hhbmdlcy4NCj4gPg0KPg0KPiBBY3R1YWxseSwgSSBmb3Jnb3QgdGhhdCBxZW11eDg2IGFsc28g
dXNlcyBpNTg2IHBhY2thZ2VzLCBzbyB0aGVyZSB3ZXJlIHF1aXRlIGENCj4gZmV3IG90aGVyIHBh
Y2thZ2VzIGNoYW5nZWQgc2luY2UgQXVnIDMxLiAgWW91IGNhbiBzZWUgdGhlIGxpc3RzIGF0DQo+
ICAgIGh0dHA6Ly93d3cubWxiYXNzb2MuY29tL3Bva3kvcWVtdXg4Ni1ycG1zDQo+DQoNCkkndmUg
anVzdCB0ZXN0ZWQgcWVtdXg4NiBhbmQgcWVtdWFybSBpbWFnZXMgYW5kIGJvdGggb2YgdGhlc2Ug
d2VyZSBmaW5lDQooYXBhcnQgZnJvbSBwYW5nbyBpc3N1ZXMgd2hpY2ggSSBsb2NhbGx5IHJldmVy
dGVkIHRoZSBjaGFuZ2UgaW4gcXVlc3Rpb24NCmZvcikuIEknbSBhIGxpdHRsZSBwdXp6bGVkIHdo
eSB0aGluZ3MgYXJlIHRoZXJlZm9yZSBmYWlsaW5nIGZvciBwZW9wbGUNCmJ1dCBJIHdvdWxkIGxp
a2UgdG8gZ2V0IHRvIHRoZSBib3R0b20gb2YgaXQuLi4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoN
Cg0KDQoNCg0K

