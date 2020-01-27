Received: from esa2.bmw.c3s2.iphmx.com (esa2.bmw.c3s2.iphmx.com [68.232.133.169])
 by mx.groups.io with SMTP id smtpd.web09.4795.1580115891298904412
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 01:04:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=YZnQaORP;
 spf=pass (domain: bmw.de, ip: 68.232.133.169, mailfrom: prvs=288c7a6d7=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1580115891; x=1611651891;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=K/DJichNj26V2q79OlfZ4Pv0N4zEbz1mpuiOvPjOf4c=;
  b=YZnQaORPzy9ocfGhoyyJTnN2N4BMOyAxR69Oy2jyaLlU7zA/Mmo8y3pt
   bEGUW8wf8/rJAEz4FkFn9b8VUONRnA1ry+xJvkhzHyGZvdzRovQKiQeNQ
   /IEYepmpDGdjcH+esumhnSG+q/Wk18ZhaGnBXi7yQSq1ffvev8g14GUJB
   c=;
IronPort-SDR: kbbl5NSdTPVZRCzbnBuJFbNiBB7uNw1Dq0E41eJ0CkD4CGCEpUuWL9DvQyR33CbjlKH6lJgTGL
 Ahm9YupmX0pMrXurEwdGH7AMQcCKXp9hhQdAQkEi7P9pKiUgiwT2R06GAZ3ICT7gxl41I7b0xp
 fSHy9TVBBSqk9cmAFAtbaEz6ne/Af6tdnYpoyxTPWVc+Cy4vEP2ndOTVDtaR7goUU/sYl0ClRG
 wVgrtysFHJooU7zAtWRM5x34RM9biaOe1ytS0ARpB2zXF4LGCEuJtfgVYNE1/knygIXoOWYuZQ
 c2g=
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa2.bmw.c3s2.iphmx.com with ESMTP/TLS; 27 Jan 2020 10:04:49 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw2.muc with ESMTP/TLS;
 27 Jan 2020 10:04:48 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb6.muc with ESMTP/TLS; 27 Jan 2020 10:04:47 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Mon, 27 Jan 2020 10:04:47 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon,
 27 Jan 2020 10:04:47 +0100
IronPort-SDR: IVeS3UQvEXx0Gv+mLBymbwqYFWU3pBfeBxMzyGEovEUU3PakmmPDYmg76nmNeqNNIGj5A1zRTk
 CHAswrW7eVqtjwom+4cHNk+FpCiIo7l0k=
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <Anders.Montonen@iki.fi>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] cve-checker name collisions
Thread-Topic: [yocto] cve-checker name collisions
Thread-Index: AQHV0pUEnuBGhBMwSUOiczUy/7OYN6f5k0eAgASK4gCAAA2OgA==
Date: Mon, 27 Jan 2020 09:04:47 +0000
Message-ID: <20200127090446.GY104502@korppu>
References: <alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi>
 <866d4701-b299-dcc8-4541-4da98daeb8ed@intel.com>
 <A04CBFEE-A6E1-48BE-8F36-67F11D6886BD@iki.fi>
In-Reply-To: <A04CBFEE-A6E1-48BE-8F36-67F11D6886BD@iki.fi>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <9B86B57B624D9149AAB9D26D0A3E9CCC@bmwmail.corp>
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTA6MTY6MTZBTSArMDIwMCwgQW5kZXJzIE1vbnRvbmVu
IHdyb3RlOg0KPiBPbiAyNCBKYW4gMjAyMCwgYXQgMTI6NTQsIFJvc3MgQnVydG9uIDxyb3NzLmJ1
cnRvbkBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IA0KPiA+IE9uIDI0LzAxLzIwMjAgMDk6MDIsIEFu
ZGVycyBNb250b25lbiB3cm90ZToNCj4gPj4gSGksDQo+ID4+IFdoYXQncyB0aGUgYmVzdCB3YXkg
Zm9yIGhhbmRsaW5nIG5hbWUgY29sbGlzaW9ucyB3aGVuIHVzaW5nIHRoZSBjdmUtY2hlY2tlciB0
b29sPyBGb3IgZXhhbXBsZSwgdGhlcmUncyBhIHRvbiBvZiBBZG9iZSBGbGV4IHZ1bG5lcmFiaWxp
dGllcyB0aGF0IGFyZSByZXBvcnRlZCBhZ2FpbnN0IHRoZSBGbGV4IGxleGljYWwgYW5hbHl6ZXIg
Z2VuZXJhdG9yIHRvb2wuIFdoaXRlbGlzdGluZyB0aGUgaW5kaXZpZHVhbCBDVkVzIHdvdWxkIGJl
IG9uZSBvcHRpb24sIGJ1dCB0aGUgbGlzdCBpcyBwcmV0dHkgbG9uZy4NCj4gPiANCj4gPiBTZXQg
Q1ZFX1BST0RVQ1QsIGlmIHlvdSB1c2UgYSBjb2xvbiB0aGVuIHlvdSBjYW4gc2V0IHRoZSB2ZW5k
b3IgdG9vLg0KPiA+IA0KPiA+IFRoaXMgc3BlY2lmaWMgaW5zdGFuY2UgaXMgYWxyZWFkeSBmaXhl
ZCBpbiBvZS1jb3JlIG1hc3RlcjoNCj4gPiANCj4gPiAjIE5vdCBBcGFjaGUgRmxleCwgb3IgQWRv
YmUgRmxleCwgb3IgSUJNIEZsZXguDQo+ID4gQ1ZFX1BST0RVQ1QgPSAiZmxleF9wcm9qZWN0OmZs
ZXjigJ0NCj4gDQo+IFRoYW5rcyAoYW5kIHRvIE1pa2tvIHRvbyksIHRoYXQgd29ya2VkLCB0aG91
Z2ggSeKAmW0gYSBiaXQgY3VyaW91cyBob3cgb25lIHdvdWxkIGZpbmQgdGhlIHByb3BlciB2ZW5k
b3IgbmFtZSwgZXNwZWNpYWxseSBmb3IgYSBwcm9qZWN0IGxpa2UgdGhpcyB3aGVyZSB0aGVyZeKA
mXMgbm8gY2xlYXIgY29tcGFueSBuYW1lLg0KDQpJIGFsd2F5cyBzZWFyY2ggZm9yIGV4aXN0aW5n
IENWRXMgZm9yIHRoZSBTVyBjb21wb25lbnQgYW5kIGNoZWNrIHdoYXQNCnByb2plY3QgYW5kIHBy
b2R1Y3QgbmFtZXMgd2VyZSB1c2VkLg0KDQpGb3IgZmxleCwgSW50ZXJuZXQgc2VhcmNoIHNob3dz
IGZvciBleGFtcGxlDQpodHRwczovL3d3dy5zdXNlLmNvbS9zZWN1cml0eS9jdmUvQ1ZFLTIwMTkt
NjI5My8NCg0Kd2hpY2ggaGFzICJmbGV4X3Byb2plY3Q6ZmxleCIgaW4gTlZEOg0KDQpodHRwczov
L252ZC5uaXN0Lmdvdi92dWxuL2RldGFpbC9DVkUtMjAxOS02MjkzDQoNCkluIG15IHByb2plY3Rz
IEkgYWxzbyBoYXZlIGV4cG9ydGVkIENWRV9QUk9EVUNUIHRvIGJ1aWxkaGlzdG9yeSBhbmQNCmhh
dmUgYSBjaGVjayBmb3IgQ1ZFIHByb2R1Y3QgbmFtZS4gQW55IFNXIGNvbXBvbmVudHMgd2l0aCBu
b24tQ0xPU0VEDQpMSUNFTlNFIG11c3QgZWl0aGVyIGhhdmUgYSBtYXRjaGluZyBDUEUgaW4gTlZE
IGRhdGFiYXNlIG9yIGJlIGNoZWNrZWQNCm1hbnVhbGx5IGFuZCB3aGl0ZWxpc3RlZC4NCg0KQ2hl
ZXJzLA0KDQotTWlra28=
