Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web11.6722.1592177490211073354
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Jun 2020 16:31:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=FZm7S4RT;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; l=3758; q=dns/txt; s=axis-central1;
  t=1592177490; x=1623713490;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=HT7QFSmdkNHrLamMeHVh/s657fhPfKCUkNhm2cOOjKw=;
  b=FZm7S4RTAI24m1Njrb1mDWjNq3Wr0vVQDjYb+G7Po3RfY4iLK2AzWiM9
   72741BXeFplcGJcF4uu8LI8n48YFW4b2gzCiEe383MiMfuUi2b3yD4mi5
   9pnsCzMekw0X0G+Lhghx7BBGWkxBRML3LhGoz8x4yLfCf4cffo4sU+Afz
   +6fqUIZKYrdGv+3rk3IvTRbxy1aS/aeD9vUySmUT133WMd1pnb0bnFPwd
   rHaqyT9fEjO7duQIdoypNyrtRYdzgmvB5Di6GShmTOWJ6SHhNR6UkpsBq
   JFZUv4ngFJmeUPNIYoH4UlaiXtv3FeYVSs5ZSii4O9TTn6XBvC7fruqGs
   w==;
IronPort-SDR: vWZCFNxKxm7iJIBF+DrVm8/h51JCaIGNc+iAqu44KGCZpKpu8rFy92uIa81leU4/shTVlmN8W1
 XBLJWaR41wNj7Pg7yTMk6Z7C0skIPa49bMNoStUTSEza+pXyZ9QWoxyliYVa57fwNY5kUa4syV
 OlwmOp4AYexGhefYECBm1+LwVMOPWG/SWKdZOO764/JocHoA/7j+F1OFwEtcSCJ82toXzi2v9Z
 O1+n6uKfsR1IQWZRUHkg88la5UoZOg/r/YBeRVxUQ3gXbXVKpM4Gq/udVTzBgkBW87ciQvwM1R
 FAo=
X-IronPort-AV: E=Sophos;i="5.73,512,1583190000"; 
   d="scan'208";a="9803397"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "kergoth@gmail.com" <kergoth@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] devtool modify issues with ubuntu 20 and fedora core 32
Thread-Topic: [yocto] devtool modify issues with ubuntu 20 and fedora core 32
Thread-Index: AQHWOSTT5l/Ko76eSkGCxv3PQJ6wUajGeKyAgABNSoCAAA/xAIAR/sqA
Date: Sun, 14 Jun 2020 23:31:27 +0000
Message-ID: <fb2e2a258d1943d0b1b2494e2f16adea@XBOX03.axis.com>
References: <115f3f1f445a163af79f94cdd48b497f478ae85d.camel@linuxfoundation.org>
 <E1827ACC-C046-4086-B4CB-026A0FC58904@gmail.com>
In-Reply-To: <E1827ACC-C046-4086-B4CB-026A0FC58904@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbg0KPiBCZWhhbGYgT2Yg
a2VyZ290aEBnbWFpbC5jb20NCj4gU2VudDogZGVuIDMganVuaSAyMDIwIDE2OjQwDQo+IFRvOiB5
b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGRldnRv
b2wgbW9kaWZ5IGlzc3VlcyB3aXRoIHVidW50dSAyMCBhbmQgZmVkb3JhIGNvcmUNCj4gMzINCj4g
DQo+ID4gT24gSnVuIDMsIDIwMjAsIGF0IDY6NDMgQU0sIFJpY2hhcmQgUHVyZGllDQo+IDxyaWNo
YXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToNCj4gPg0KPiA+IO+7v09uIFdl
ZCwgMjAyMC0wNi0wMyBhdCAxMTowNiArMDIwMCwgQWxleGFuZGVyIEthbmF2aW4gd3JvdGU6DQo+
ID4+IEknbSBub3Qgc3VyZSBpZiB0aGlzIGlzIGRpc3RybyBzcGVjaWZpYy4gX1BZVEhPTl9TWVND
T05GSUdEQVRBX05BTUUNCj4gPj4gaXMgc2V0IGZyb20gcHl0aG9uM25hdGl2ZS5iYmNsYXNzIHNv
IHRoYXQgbmF0aXZlIHB5dGhvbiBjYW4gcGljayB1cA0KPiA+PiB0YXJnZXQgY29uZmlndXJhdGlv
biwgYW5kIGlmIHRoZSB0YXJnZXQgY29uZmlndXJhdGlvbiBpcyBub3QgdGhlcmUNCj4gPj4gKGl0
IGNvbWVzIHdpdGggdGFyZ2V0IHB5dGhvbjMgYnVpbGQpLCB0aGVuIHRoZXJlIHdpbGwgYmUgYSBm
YWlsdXJlDQo+ID4+IGxpa2UgdGhlIGFib3ZlLiBIb3cgZG9lcyB5b3VyIHJlY2lwZSBsb29rIGxp
a2U/IERvIHlvdSBnZXQgdGhlIHNhbWUNCj4gPj4gZmFpbHVyZSBpZiB5b3UgdHJ5IGRldnRvb2wg
bW9kaWZ5IGluIGEgcGxhaW4geW9jdG8gZW52aXJvbm1lbnQgKG5vdA0KPiA+PiB0aGUgU0RLKT8N
Cj4gPg0KPiA+IENocmlzIGFuZCBJIGRpZCB0YWxrIGFib3V0IHRoaXMgb24gaXJjOg0KPiA+DQo+
ID4gKDIyOjMzOjM4KSBrZXJnb3RoOiBhY3R1YWxseSBmYWlscyBldmVuIHdpdGhvdXQgcHJzZXJ2
IGVuYWJsZWQgYXQgYWxsDQo+ID4gKDIyOjM0OjA3KSBrZXJnb3RoOiBqdXN0IGltcG9ydCBweWRv
YyB3aWxsIGNhbGwgc3lzY29uZmlnLmdldF9wYXRoKCkNCj4gd2hpY2ggZW50ZXJzIHRoYXQgY29k
ZXBhdGgNCj4gPiAoMjI6MzQ6MjIpIGtlcmdvdGg6IHNvIGNhbGxpbmcgYW55dGhpbmcgdGhhdCBp
bXBvcnRzIGJiIGZyb20gYSB0YXNrDQo+IHdpbGwgZXhwbG9kZQ0KPiA+ICgyMjozNDozMykga2Vy
Z290aDogY29va2VyIHB1bGxzIGluIHhtbHJwYywgd2hpY2ggcHVsbHMgaW4gcHlkb2MNCj4gPiAo
MjI6MzQ6NDEpIGtlcmdvdGg6IGJyZWFrcyBkZXZ0b29sIG1vZGlmeQ0KPiA+ICgyMjozNzowNCkg
UlA6IGtlcmdvdGg6IHJpZ2h0LCBpdCB3YXMgbW9yZSBhYm91dCBpdCBiZWluZyBhIGhpbnQgYXQg
dGhlDQo+IGtpbmRzIG9mIGlzc3Vlcw0KPiA+ICgyMjozNzoxMSkga2VyZ290aDogYWgsIGZhaXIg
ZW5vdWdoDQo+ID4gKDIyOjM3OjI2KSBrZXJnb3RoOiBpIGV4cGVjdCB3ZSBtYXkgbmVlZCB0byBj
aGFuZ2UgaG93IHB5dGhvbjNuYXRpdmUgaXMNCj4gZG9pbmcgaXRzIHRoaW5nDQo+ID4gKDIyOjQy
OjU1KSBSUDoga2VyZ290aDogcXVpdGUgcG9zc2libHkuIEkgbmV2ZXIgbGlrZWQgdGhhdCBmaXgg
YW5kDQo+IHN1c3BlY3RlZCB0aGVyZSB3YXMgbW9yZSB0byBpdCA6Lw0KPiA+ICgyMzoyMTozOSkg
a2VyZ290aDogUlA6IG1heWJlIHNvbWV0aGluZyBsaWtlDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9v
cGVuZW1iZWRkZWQvb3BlbmVtYmVkZGVkLQ0KPiBjb3JlL2NvbXBhcmUvbWFzdGVyLi4ua2VyZ290
aDpweXRob24tc3lzY29uZmlnID8gaSdsbCBtdWxsIGl0IG92ZXIuIG1ha2VzDQo+IHNlbnNlLCB0
aG91Z2guIHdlIHJlbmFtZSBfc3lzY29uZmlnIG9ubHkgZm9yIHRoZSBweXRob24zLW5hdGl2ZSBy
ZWNpcGUsDQo+IHNvIGl0J2QgbWFrZSBzZW5zZSBmb3IgdXMgdG8gb25seSBjaGFuZ2UgdGhhdCBu
YW1lIGZvciBvdXIgcHl0aG9uLCBub3QNCj4gYW55IHB5dGhvbiBydW4gZnJvbSB0aGUgdGFzaw0K
PiA+ICgyMzoyMTo0OSkga2VyZ290aDogX3N5c2NvbmZpZ2RhdGEsIHRoYXQgaXMNCj4gPiAoMjM6
NDY6MzUpIFJQOiBrZXJnb3RoOiBzb21ldGhpbmcgbGlrZSB0aGF0IHdvdWxkIG1ha2Ugc2Vuc2Us
IHllcw0KPiA+DQo+ID4gQ2hyaXM6IERpZCB5b3UgY29tZSB0byBhbnkgY29uY2x1c2lvbj8NCj4g
DQo+IEkgdGVzdGVkIHRoZSBpbml0aWFsIGxpbmtlZCBwcm90b3R5cGUgYnV0IGl0IGNhdXNlZCBm
YWlsdXJlcyBpbiB0aGUgZ2xpYg0KPiBidWlsZCBzbyBpdCBtdXN0IGhhdmUgYmVlbiBtaXNzaW5n
IHNvbWV0aGluZy4gSSBoYXZlbuKAmXQgaGFkIHRpbWUgdGhpcw0KPiB3ZWVrIHRvIGxvb2sgYmFj
ayBpbnRvIGl0IHlldC4NCj4gDQo+ID4gRG9lcyBzb21lb25lIHdhbnQgdG8gc2VuZCBhIHBhdGNo
Pw0KPiA+DQo+ID4gQ2hlZXJzLA0KPiA+DQo+ID4gUmljaGFyZA0KDQpXYXMgdGhlcmUgYW55IHBy
b2dyZXNzIG9uIHRoaXM/IEkgZ3Vlc3MgdGhlIGZhaWx1cmVzIGluIGdsaWIgc3RlbXMgZnJvbSBp
dCANCnVuc2V0dGluZyBfUFlUSE9OX1NZU0NPTkZJR0RBVEFfTkFNRSwgd2hpY2ggZG9lc24ndCBo
YXZlIGFueSBlZmZlY3Qgd2hlbiANCml0IGlzIHNldCB2aWEgdGhlIHdyYXBwZXIuIFRoZXJlIGFy
ZSBhIGNvdXBsZSBvZiByZWNpcGVzIGFuZCBiYmNsYXNzZXMgDQp0aGF0IGRvIHRoaXMuDQoNCi8v
UGV0ZXINCg0K
