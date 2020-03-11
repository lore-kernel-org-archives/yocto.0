Received: from esa7.bmw.c3s2.iphmx.com (esa7.bmw.c3s2.iphmx.com [68.232.133.109])
 by mx.groups.io with SMTP id smtpd.web10.7164.1583930743089261434
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 05:45:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=ayxnG0ug;
 spf=pass (domain: bmw.de, ip: 68.232.133.109, mailfrom: prvs=332c451b5=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1583930743; x=1615466743;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=o+KEtV0B3F0xM6RH5OlPPnd+GxurY5FDASMHT0EiUdY=;
  b=ayxnG0ugD6HoDz6RPrjWfwFU6aHEUmAxe7O+zy01qiVCVLMq7Reusy5K
   /ufeKOyeJbe3gtILNUeVHPwRMwfj1aGB3/qWSYYDSbnPMScQc8eYD20jg
   wDedLoIZvzHLHTlkYmRx+kC/DO3G3N9aIfaSQtWnY1bvqLo2QVoOmOSzK
   4=;
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa7.bmw.c3s2.iphmx.com with ESMTP/TLS; 11 Mar 2020 13:45:32 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw5.muc with ESMTP/TLS;
 11 Mar 2020 13:45:22 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb4.muc with ESMTP/TLS; 11 Mar 2020 13:45:22 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Wed, 11 Mar 2020 13:45:21 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Wed,
 11 Mar 2020 13:45:21 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <richard.purdie@linuxfoundation.org>
CC: <sean.mckay@hpe.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Should changing a task in the .bb file cause the task to be rerun?
Thread-Topic: [yocto] Should changing a task in the .bb file cause the task to
 be rerun?
Thread-Index: AdXuiL6uK0y0gl2pQLikRTwB+tl67v//+pyAgBCCqgCAAAEngIABpSoA
Date: Wed, 11 Mar 2020 12:45:21 +0000
Message-ID: <20200311124520.GX104502@korppu>
References: <TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <18c5d510bec23fbb83c7d82e9ea7e2594b58d44f.camel@linuxfoundation.org>
 <20200310113348.GT104502@korppu>
 <da7cd1ba55525b1f63884bd83286555d1dd72218.camel@linuxfoundation.org>
In-Reply-To: <da7cd1ba55525b1f63884bd83286555d1dd72218.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <978CE32F98F72D4F8747DA0033D5B3F0@bmwmail.corp>
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMTAsIDIwMjAgYXQgMTE6Mzc6NTVBTSArMDAwMCwgUmljaGFyZCBQdXJkaWUg
d3JvdGU6DQo+IE9uIFR1ZSwgMjAyMC0wMy0xMCBhdCAxMTozMyArMDAwMCwgTWlra28uUmFwZWxp
QGJtdy5kZSB3cm90ZToNCj4gPiBPbiBGcmksIEZlYiAyOCwgMjAyMCBhdCAxMToyNTo1OVBNICsw
MDAwLCBSaWNoYXJkIFB1cmRpZSB3cm90ZToNCj4gPiA+IE9uIEZyaSwgMjAyMC0wMi0yOCBhdCAy
Mjo1MSArMDAwMCwgU2VhbiBNY0theSB3cm90ZToNCj4gPiA+ID4gVGhpcyBpcyBwcm9iYWJseSBh
IGZhaXJseSBzaG9ydCBxdWVzdGlvbiAoSSBob3BlKToNCj4gPiA+ID4gSeKAmW0gd29ya2luZyBv
biBhIGJyYW5jaCBiYXNlZCBvbiB6ZXVzLiBJIGZvdW5kIGEgYnVnIGluIHRoZSB3YXkgdGhhdA0K
PiA+ID4gPiBvbmUgb2Ygb3VyIHJlY2lwZXMgd2FzIGhhbmRsaW5nIHNvbWV0aGluZyBkdXJpbmcg
ZG9fY29uZmlndXJlICh3aGljaA0KPiA+ID4gPiBjYXVzZWQgYW4gZXJyb3IgdG8gcG9wIHVwIGlu
IGEgZG9fY29tcGlsZSB0YXNrKS4gV2hlbiBJIG1vZGlmaWVkIHRoZQ0KPiA+ID4gPiBkb19jb25m
aWd1cmUgdGFzayAoZG9fY29uZmlndXJlX2FwcGVuZCwgYWN0dWFsbHkpIHRvIGJlaGF2ZSBwcm9w
ZXJseQ0KPiA+ID4gPiAod2hpY2ggaW52b2x2ZWQgY2hhbmdpbmcgdGhlIGFjdHVhbCBjb21tYW5k
cyBydW4gaW4gdGhhdCBmdW5jdGlvbikNCj4gPiA+ID4gYW5kIHJlcmFuIGJpdGJha2UgLWMgY29t
cGlsZSA8cmVjaXBlPiwgdGhlIGRvX2NvbmZpZ3VyZSB0YXNrIHdhc27igJl0DQo+ID4gPiA+IHJl
cnVuIGRlc3BpdGUgdGhlIGNoYW5nZSB0byB0aGUgZnVuY3Rpb27igJlzIGNvZGUuDQo+ID4gPiA+
ICANCj4gPiA+ID4gSXMgaXQgc2FmZSB0byBhc3N1bWUgdGhpcyBtZWFucyB3ZeKAmXZlIGRvbmUg
c29tZXRoaW5nIHRvIG1lc3MgdXAgdGhlDQo+ID4gPiA+IHdheSBvdXIgc3lzdGVtIGlzIHByb2Nl
c3NpbmcgdGhpbmdzPyBPciBpcyB0aGF0IGV4cGVjdGVkIGJlaGF2aW9yDQo+ID4gPiANCj4gPiA+
IEl0cyBub3QgZXhwZWN0ZWQgYmVoYXZpb3VyIGFuZCB5ZXMsIGl0IHNvdW5kcyBsaWtlIHNvbWV0
aGluZyBpcyBtZXNzZWQNCj4gPiA+IHVwLi4uDQo+ID4gDQo+ID4gVGhpcyBpcyB3aGF0IEkndmUg
Y29tZSB0byBleHBlY3Qgd2l0aCB5b2N0byAyLjAgamV0aHJvLCAyLjUgc3VtbyBhbmQNCj4gPiAz
LjAgemV1cy4NCj4gPiANCj4gPiBUaGF0J3Mgd2h5IEkgYWx3YXlzIHdyaXRlOg0KPiA+IA0KPiA+
ICQgYml0YmFrZSAtYyBjbGVhbiByZWNpcGUgJiYgYml0YmFrZSAtYyBjbGVhbnNzdGF0ZSAmJiBi
aXRiYWtlIC1jIGNvbXBpbGUgcmVjaXBlDQo+ID4gDQo+ID4gd2hlbiBkZWJ1Z2dpbmcgY2hhbmdl
cyBpbiByZWNpcGVzIHRvX2NvbXBpbGUgYW5kIG90aGVyIGRlcGVuZGVudCB0YXNrcy4NCj4gPiBJ
J20gYWxzbyBjbGVhbmluZyB1cCBzc3RhdGUgdG8gYmUgc3VyZSBpdCdzIG5vdCBjb3JydXB0IG9y
IGZpbGxlZCB3aXRoDQo+ID4gc29tZWhvdyBiYWQgZGF0YS4NCj4gDQo+IFRoaXMgaXMgYmFkIGFu
ZCBzaG91bGRuJ3QgYmUgaGFwcGVuaW5nLiBDYW4gYW55b25lIHByb3ZpZGUgc29tZQ0KPiBleGFt
cGxlcyBJIGNhbiBsb29rIGF0Pw0KPiANCj4gWW91IHNob3VsZG4ndCBldmVyIG5lZWQgdG8gcnVu
IGNsZWFuc3N0YXRlIGluIHBhcnRpY3VsYXIuIElmIHlvdSBoYXZlDQo+IHRvLCB0aGVyZSBpcyBh
bm90aGVyIHVuZGVybHlpbmcgYnVnIHRoYXQgc2hvdWxkIGdldCBmaXhlZC4NCg0KU2FkbHkgY3Vz
dG9tIGJiY2xhc3NlcyBhbmQgQlNQIGxheWVycyBoYXZlIHRoaXMgZWZmZWN0IG9uIG15IGJ1aWxk
cyBhbmQgSQ0KY2FuJ3QgZnVsbHkgdHJ1c3QgbG9jYWwgaW5jcmVtZW50YWwgYnVpbGRzLiBIZW5j
ZSBJIGNsZWFuIHNzdGF0ZSBjYWNoZQ0Kb2Z0ZW4uDQoNCi1NaWtrbw==
