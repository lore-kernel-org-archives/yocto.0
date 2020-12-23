Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web08.3685.1608688998331938280
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Dec 2020 18:03:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=DF+KCle9;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1608688998;
  x=1640224998;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Qy3mCp8OD3JwTakCmgAoMbaqHJ6A1rjtkHlPxHDKt4o=;
  b=DF+KCle9u6RUJKVAf/ETc+8vuXe+19Z3v1ImhNsTTlI00PfYfQrwqFPY
   OcXJthSPjd/faMS4eKZ/ZAifiBz5SHtZ2Pa7dFI+g9i/bDMwSu1ag6oXc
   rEWrLA0pgiOkrlMk7UuIggO6ZwPDs9ORT99noHAXV11jD4ZvlI/lMnl7c
   NY+qHfH0v3hO5V6Yx4s+bGMpRqqfnmn5k+PLCNCSR/1sckqLBUlvETTTI
   TZJ786Tss2jTZcbmLWr+1IzDYeON5t8Rdt2yeU7jzqDkEi3m9ekB6mWS0
   SmdGv4QPpUsbzQeL+L/UHbPHYo1K+e50upn0rNhKN8PxAcJjDt/Cj7Z+p
   g==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1) is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1)
 is Released
Thread-Index: AdbTG4rDkRnyxgcZTbap8GFLmyVcLAAGNySAAULuA4AAI6yeMA==
Date: Wed, 23 Dec 2020 02:03:15 +0000
Message-ID: <c2902cf4a4424fceb78b5da479d4012b@XBOX03.axis.com>
References: <BYAPR11MB279089CF30BA5D2240349ECE88C60@BYAPR11MB2790.namprd11.prod.outlook.com>
	 <fcdceff7753a4f52911b8b3c61a35d76@XBOX03.axis.com>
 <b6efb453e252ef83fbad6c465ac834156d7f52fd.camel@intel.com>
In-Reply-To: <b6efb453e252ef83fbad6c465ac834156d7f52fd.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNaXR0YWwsIEFudWogPGFudWou
bWl0dGFsQGludGVsLmNvbT4NCj4gU2VudDogZGVuIDIyIGRlY2VtYmVyIDIwMjAgMTc6NTUNCj4g
VG86IFR1bW1hbGFwYWxsaSwgVmluZWVsYSA8dmluZWVsYS50dW1tYWxhcGFsbGlAaW50ZWwuY29t
PjsgUGV0ZXINCj4gS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRAYXhpcy5jb20+DQo+
IENjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9d
IFtBTk5PVU5DRU1FTlRdIFlvY3RvIFByb2plY3QgMy4yLjEgKGdhdGVzZ2FydGgtDQo+IDI0LjAu
MSkgaXMgUmVsZWFzZWQNCj4gDQo+IE9uIFR1ZSwgMjAyMC0xMi0xNSBhdCAyMzowNyArMDAwMCwg
UGV0ZXIgS2plbGxlcnN0ZWR0IHdyb3RlOg0KPiA+ID4gUmVwb3NpdG9yeSBOYW1lOiBtZXRhLWdw
bHYyDQo+ID4gPiBSZXBvc2l0b3J5IExvY2F0aW9uOiBodHRwczovL2dpdC55b2N0b3Byb2plY3Qu
b3JnL2dpdC9tZXRhLWdwbHYyDQo+ID4gPiBCcmFuY2g6IGdhdGVzZ2FydGgNCj4gPiA+IFRhZzog
eW9jdG8tMy4yLjENCj4gPg0KPiA+IFRoZSB5b2N0by0zLjIuMSBhbmQgZ2F0ZXNnYXJ0aC0yNC4w
LjEgdGFncyBmb3IgbWV0YS1ncGx2MiBoYXZlIGJlZW4NCj4gPiBpbmNvcnJlY3RseQ0KPiA+IHNl
dCBvbiB0aGUgZHVuZmVsbCBicmFuY2ggcmF0aGVyIHRoYW4gdGhlIGdhdGVzZ2FydGggYnJhbmNo
LiBUaGUgR2l0DQo+ID4gcmV2aXNpb24NCj4gPiBhbmQgdGFyIGJhbGxzIGJlbG93IGFyZSBjb3Jy
ZWN0IHRob3VnaC4gU2luY2UgdGhlIHRhZ3MgYXJlIHNpZ25lZCBJDQo+ID4gZG8gbm93IHdhbnQN
Cj4gPiB0byBtb2RpZnkgdGhlbSBteXNlbGYsIHNvIHBsZWFzZSBjb3JyZWN0IHRoZW0gYXMgc29v
biBhcyBwb3NzaWJsZS4NCj4gDQo+IFZpbmVlbGEgaXNuJ3Qgd29ya2luZyB0aGlzIHdlZWsgSSB0
aGluayBzbyBzaGUgbWlnaHQgbm90IGJlIGFibGUgdG8NCj4gaGVscCBidXQgaXQgbG9va3MgbGlr
ZSB0aGUgY29tbWl0IHRhZ2dlZCBpcyBvbiBnYXRlc2dhcnRoIC4uLg0KPiANCj4gaHR0cHM6Ly9n
aXQueW9jdG9wcm9qZWN0Lm9yZy9jbGVhbi9jZ2l0LmNnaS9tZXRhLWdwbHYyL2xvZy8/aD1nYXRl
c2dhcnRoDQo+IA0KPiAkIGdpdCBicmFuY2ggLWEgLS1jb250YWlucyB5b2N0by0zLjIuMQ0KPiAq
IG1hc3Rlcg0KPiAgIHJlbW90ZXMvb3JpZ2luL0hFQUQgLT4gb3JpZ2luL21hc3Rlcg0KPiAgIHJl
bW90ZXMvb3JpZ2luL2dhdGVzZ2FydGgNCj4gICByZW1vdGVzL29yaWdpbi9tYXN0ZXINCj4gICBy
ZW1vdGVzL29yaWdpbi9tYXN0ZXItbmV4dA0KPiANCj4gVGhhbmtzLA0KPiANCj4gQW51ag0KDQpZ
b3UgYXJlIGFic29sdXRlbHkgY29ycmVjdC4gSXQgc2VlbXMgdGhlIHRhZ3Mgd2VyZSBpbmNvcnJl
Y3QgZm9yIGFuIGhvdXIgDQp3aGVuIGZpcnN0IGNyZWF0ZWQsIGFuZCBhcHBhcmVudGx5IG91ciBs
b2NhbCBHaXQgbWlycm9yIGRvZXMgbm90IGhhbmRsZSANCnRhZ3MgYmVpbmcgdXBkYXRlZCBzbyBp
dCBzdGlsbCBwcm92aWRlcyB0aGUgb3JpZ2luYWwgKGluY29ycmVjdCkgdGFncy4gDQpUaGFuayB5
b3UgZm9yIHBvaW50aW5nIG91dCB3aGF0IHdhcyBhIHByb2JsZW0gb24gb3VyIHNpZGUuIEkgd2ls
bCB0YWtlIA0KaXQgdXAgd2l0aCBvdXIgU0NNIHRlYW0uDQoNCi8vUGV0ZXINCg0K
