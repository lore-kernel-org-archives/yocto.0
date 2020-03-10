Received: from esa1.bmw.c3s2.iphmx.com (esa1.bmw.c3s2.iphmx.com [68.232.133.201])
 by mx.groups.io with SMTP id smtpd.web11.3340.1583840032302190678
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 04:33:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=gjp3aJpc;
 spf=pass (domain: bmw.de, ip: 68.232.133.201, mailfrom: prvs=3311916b7=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1583840032; x=1615376032;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=iqGDkhqGUNtjTNVI+KuPcf3vXKx6QZDYQpieIaosvrk=;
  b=gjp3aJpcuHV4241hESiPWdbw+pR1FWqvud0PXHgvWwYc+cJbxSmRT5iK
   b02Zv9mhA0kpX60yA6HO/YQXVFfWhCRLHQSP11TR+jnFj2p08VoSoC8tP
   nu7wieL04q5f586Gm42RjrfK6Do6J6pdtaf+nbgqWoiHJSNpvvWS0QMzR
   g=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa1.bmw.c3s2.iphmx.com with ESMTP/TLS; 10 Mar 2020 12:33:50 +0100
Received: from esabb2.muc ([160.50.100.34])  by esagw2.muc with ESMTP/TLS;
 10 Mar 2020 12:33:50 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb2.muc with ESMTP/TLS; 10 Mar 2020 12:33:49 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Tue, 10 Mar 2020 12:33:49 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 10 Mar 2020 12:33:49 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <richard.purdie@linuxfoundation.org>
CC: <sean.mckay@hpe.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Should changing a task in the .bb file cause the task to be rerun?
Thread-Topic: [yocto] Should changing a task in the .bb file cause the task to
 be rerun?
Thread-Index: AdXuiL6uK0y0gl2pQLikRTwB+tl67v//+pyAgBCCqgA=
Date: Tue, 10 Mar 2020 11:33:49 +0000
Message-ID: <20200310113348.GT104502@korppu>
References: <TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <18c5d510bec23fbb83c7d82e9ea7e2594b58d44f.camel@linuxfoundation.org>
In-Reply-To: <18c5d510bec23fbb83c7d82e9ea7e2594b58d44f.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <EC8BD711EEFBBF4FB65473C82267FB27@bmwmail.corp>
Content-Transfer-Encoding: base64

T24gRnJpLCBGZWIgMjgsIDIwMjAgYXQgMTE6MjU6NTlQTSArMDAwMCwgUmljaGFyZCBQdXJkaWUg
d3JvdGU6DQo+IE9uIEZyaSwgMjAyMC0wMi0yOCBhdCAyMjo1MSArMDAwMCwgU2VhbiBNY0theSB3
cm90ZToNCj4gPiBUaGlzIGlzIHByb2JhYmx5IGEgZmFpcmx5IHNob3J0IHF1ZXN0aW9uIChJIGhv
cGUpOg0KPiA+IEnigJltIHdvcmtpbmcgb24gYSBicmFuY2ggYmFzZWQgb24gemV1cy4gSSBmb3Vu
ZCBhIGJ1ZyBpbiB0aGUgd2F5IHRoYXQNCj4gPiBvbmUgb2Ygb3VyIHJlY2lwZXMgd2FzIGhhbmRs
aW5nIHNvbWV0aGluZyBkdXJpbmcgZG9fY29uZmlndXJlICh3aGljaA0KPiA+IGNhdXNlZCBhbiBl
cnJvciB0byBwb3AgdXAgaW4gYSBkb19jb21waWxlIHRhc2spLiBXaGVuIEkgbW9kaWZpZWQgdGhl
DQo+ID4gZG9fY29uZmlndXJlIHRhc2sgKGRvX2NvbmZpZ3VyZV9hcHBlbmQsIGFjdHVhbGx5KSB0
byBiZWhhdmUgcHJvcGVybHkNCj4gPiAod2hpY2ggaW52b2x2ZWQgY2hhbmdpbmcgdGhlIGFjdHVh
bCBjb21tYW5kcyBydW4gaW4gdGhhdCBmdW5jdGlvbikNCj4gPiBhbmQgcmVyYW4gYml0YmFrZSAt
YyBjb21waWxlIDxyZWNpcGU+LCB0aGUgZG9fY29uZmlndXJlIHRhc2sgd2FzbuKAmXQNCj4gPiBy
ZXJ1biBkZXNwaXRlIHRoZSBjaGFuZ2UgdG8gdGhlIGZ1bmN0aW9u4oCZcyBjb2RlLg0KPiA+ICAN
Cj4gPiBJcyBpdCBzYWZlIHRvIGFzc3VtZSB0aGlzIG1lYW5zIHdl4oCZdmUgZG9uZSBzb21ldGhp
bmcgdG8gbWVzcyB1cCB0aGUNCj4gPiB3YXkgb3VyIHN5c3RlbSBpcyBwcm9jZXNzaW5nIHRoaW5n
cz8gT3IgaXMgdGhhdCBleHBlY3RlZCBiZWhhdmlvcg0KPiANCj4gSXRzIG5vdCBleHBlY3RlZCBi
ZWhhdmlvdXIgYW5kIHllcywgaXQgc291bmRzIGxpa2Ugc29tZXRoaW5nIGlzIG1lc3NlZA0KPiB1
cC4uLg0KDQpUaGlzIGlzIHdoYXQgSSd2ZSBjb21lIHRvIGV4cGVjdCB3aXRoIHlvY3RvIDIuMCBq
ZXRocm8sIDIuNSBzdW1vIGFuZA0KMy4wIHpldXMuDQoNClRoYXQncyB3aHkgSSBhbHdheXMgd3Jp
dGU6DQoNCiQgYml0YmFrZSAtYyBjbGVhbiByZWNpcGUgJiYgYml0YmFrZSAtYyBjbGVhbnNzdGF0
ZSAmJiBiaXRiYWtlIC1jIGNvbXBpbGUgcmVjaXBlDQoNCndoZW4gZGVidWdnaW5nIGNoYW5nZXMg
aW4gcmVjaXBlcyB0b19jb21waWxlIGFuZCBvdGhlciBkZXBlbmRlbnQgdGFza3MuDQpJJ20gYWxz
byBjbGVhbmluZyB1cCBzc3RhdGUgdG8gYmUgc3VyZSBpdCdzIG5vdCBjb3JydXB0IG9yIGZpbGxl
ZCB3aXRoDQpzb21laG93IGJhZCBkYXRhLg0KDQotTWlra28=
