Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web11.976.1601930216075747590
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Oct 2020 13:36:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=b0vJcx7f;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; l=4196; q=dns/txt; s=axis-central1;
  t=1601930216; x=1633466216;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=vqHIxketefihGzSGJOObaRAKHCIapPBYt44lWL+QEMo=;
  b=b0vJcx7fFqoPYsg7tQwvPX2cM55d2W+uxssZgdu3TQcMki5AnrHrhFiU
   okQUbUy+dmgb4XuK8Zeo89DE7+hrQnHi86m1mkPwe4FTvbYDSjW/nXKid
   OiFpcnGbpzhi9VIccKB/B/XsSBGt4pevUnNEKYEOBeQGmBO0VRoSi5H62
   ybxBrBi3lwwt2aZDNVFUHWwSwRIqvfZsLlxxWrBQ4KgYosECc6EtmEVuZ
   XlSRD0Y5Zq4GyKuFWsHcXnhfKPL9yj9mvJVLsiAiM0PU1jXCz6k5Y/Vzy
   ylIrHec4yaUq2diz85Zkg3K2M7M4DvJKgcQd4UldBpk4rhmgXlMI5vLaM
   w==;
IronPort-SDR: V2eMtFoTZMrcOjjFVSa2vQPNip/U60ZcjS+Q05BADklHChdgKu9fKIJuwR4oUnmng52mN+ZBFx
 NyQLJYAN9e+C1CvZJxFlPO2x+PGv7H4EjMirGD/WV9QaZCSSIdXp9koENJBGUKwIIC2DwPgqnF
 i9OVmJCb3J6tX8CnfR8GvfjfJmWjUki3g0cLxU28/3c2155la4+EJFwcEizAe3SfDxA0+tiS+V
 fjm9uBmEWci+M0kTYzbUdIAE6mh6O4qXiZyxsVONTwjZu1fmx/WH+13E4Sc7TVKBHPKBwgtwLt
 xP0=
X-IronPort-AV: E=Sophos;i="5.77,340,1596492000"; 
   d="scan'208";a="13187193"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Joshua Watt <JPEWhacker@gmail.com>, Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-gplv2] [PATCH] gnupg: Make it build with GCC 10 (which uses -fno-common by default)
Thread-Topic: [yocto] [meta-gplv2] [PATCH] gnupg: Make it build with GCC 10
 (which uses -fno-common by default)
Thread-Index: AQHWl2mIYsSBhx4nhEC68gdPiKt5VqmBkpqAgAEKGgCABuDtcA==
Date: Mon, 5 Oct 2020 20:36:52 +0000
Message-ID: <39a0f312f43f4a19919eeec0451ff8d3@XBOX03.axis.com>
References: <20200831224444.16097-1-pkj@axis.com>
 <CAJdd5GakOno5nBi4HicYQ=PFrwo6o_GD8+C2Pfn4nr-7+Y_6OQ@mail.gmail.com>
 <CAMKF1soCn187tLQbrbtGg2_gWyS=+gU8q7utwo8J0Bdu+NQrbw@mail.gmail.com>
 <CAJdd5GbfPOcAFk5cZfthBK=jL_yNypqFNeVtvC0snh9rBsj_5g@mail.gmail.com>
In-Reply-To: <CAJdd5GbfPOcAFk5cZfthBK=jL_yNypqFNeVtvC0snh9rBsj_5g@mail.gmail.com>
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
Sm9zaHVhIFdhdHQNCj4gU2VudDogZGVuIDEgb2t0b2JlciAyMDIwIDE1OjI3DQo+IFRvOiBLaGVt
IFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0KPiBDYzogUGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRl
ci5ramVsbGVyc3RlZHRAYXhpcy5jb20+Ow0KPiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFttZXRhLWdwbHYyXSBbUEFUQ0hdIGdudXBnOiBNYWtl
IGl0IGJ1aWxkIHdpdGggR0NDDQo+IDEwICh3aGljaCB1c2VzIC1mbm8tY29tbW9uIGJ5IGRlZmF1
bHQpDQo+IA0KPiBPbiBXZWQsIFNlcCAzMCwgMjAyMCBhdCA0OjM0IFBNIEtoZW0gUmFqIDxyYWou
a2hlbUBnbWFpbC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gT24gV2VkLCBTZXAgMzAsIDIwMjAgYXQg
MTozNyBQTSBKb3NodWEgV2F0dCA8SlBFV2hhY2tlckBnbWFpbC5jb20+DQo+IHdyb3RlOg0KPiA+
ID4NCj4gPiA+IFdpdGggdGhpcyBwYXRjaCBhcHBsaWVkLCBJIGdldCB0aGUgZm9sbG93aW5nIGVy
cm9ycyB3aGVuIHVzaW5nIHRoZQ0KPiA+ID4gbGF0ZXN0IG1hc3RlciBicmFuY2hlczoNCj4gPiA+
DQo+ID4gPiB8IC4uL21waS9saWJtcGkuYShtcGl1dGlsLm8pOiBJbiBmdW5jdGlvbiBgbXBpX2Fs
bG9jX2xpbWJfc3BhY2UnOg0KPiA+ID4gfCBtcGl1dGlsLmM6KC50ZXh0KzB4ODQpOiB1bmRlZmlu
ZWQgcmVmZXJlbmNlIHRvIGBtZW1vcnlfZGVidWdfbW9kZScNCj4gPiA+IHwgLi4vbXBpL2xpYm1w
aS5hKG1waXV0aWwubyk6IEluIGZ1bmN0aW9uIGBtcGlfYWxsb2MnOg0KPiA+ID4gfCBtcGl1dGls
LmM6KC50ZXh0KzB4ZGEpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBtZW1vcnlfZGVidWdfbW9k
ZScNCj4gPiA+IHwgLi4vbXBpL2xpYm1waS5hKG1waXV0aWwubyk6IEluIGZ1bmN0aW9uIGBtcGlf
YWxsb2Nfc2VjdXJlJzoNCj4gPiA+IHwgbXBpdXRpbC5jOigudGV4dCsweDE0YSk6IHVuZGVmaW5l
ZCByZWZlcmVuY2UgdG8gYG1lbW9yeV9kZWJ1Z19tb2RlJw0KPiA+ID4gfCAuLi9tcGkvbGlibXBp
LmEobXBpdXRpbC5vKTogSW4gZnVuY3Rpb24gYG1waV9mcmVlX2xpbWJfc3BhY2UnOg0KPiA+ID4g
fCBtcGl1dGlsLmM6KC50ZXh0KzB4MWM3KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgbWVtb3J5
X2RlYnVnX21vZGUnDQo+ID4gPiB8IC4uL21waS9saWJtcGkuYShtcGl1dGlsLm8pOiBJbiBmdW5j
dGlvbiBgbXBpX2ZyZWUnOg0KPiA+ID4gfCBtcGl1dGlsLmM6KC50ZXh0KzB4MjY3KTogdW5kZWZp
bmVkIHJlZmVyZW5jZSB0byBgbWVtb3J5X2RlYnVnX21vZGUnDQo+ID4gPiB8IC4uL3V0aWwvbGli
dXRpbC5hKGlvYnVmLm8pOiBJbiBmdW5jdGlvbiBgZmlsZV9maWx0ZXInOg0KPiA+ID4gfCBpb2J1
Zi5jOigudGV4dCsweDFjMCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGlvYnVmX2RlYnVnX21v
ZGUnDQo+ID4gPiB8IGlvYnVmLmM6KC50ZXh0KzB4MWVhKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0
byBgaW9idWZfZGVidWdfbW9kZScNCj4gPiA+IHwgaW9idWYuYzooLnRleHQrMHgyZTApOiB1bmRl
ZmluZWQgcmVmZXJlbmNlIHRvIGBpb2J1Zl9kZWJ1Z19tb2RlJw0KPiA+ID4gfCBpb2J1Zi5jOigu
dGV4dCsweDMwNSk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGlvYnVmX2RlYnVnX21vZGUnDQo+
ID4gPiB8IC4uL3V0aWwvbGlidXRpbC5hKGlvYnVmLm8pOiBJbiBmdW5jdGlvbiBgdW5kZXJmbG93
JzoNCj4gPiA+IHwgaW9idWYuYzooLnRleHQrMHg0YjMpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRv
IGBpb2J1Zl9kZWJ1Z19tb2RlJw0KPiA+ID4gfCAuLi91dGlsL2xpYnV0aWwuYShpb2J1Zi5vKTpp
b2J1Zi5jOigudGV4dCsweDU2Nyk6IG1vcmUgdW5kZWZpbmVkDQo+ID4gPiByZWZlcmVuY2VzIHRv
IGBpb2J1Zl9kZWJ1Z19tb2RlJyBmb2xsb3cNCj4gPiA+IHwgY29sbGVjdDI6IGVycm9yOiBsZCBy
ZXR1cm5lZCAxIGV4aXQgc3RhdHVzDQo+ID4gPg0KPiA+ID4gSWYgSSByZXZlcnQgdGhpcyBjb21t
aXQsIGdudXBnLW5hdGl2ZSB3aWxsIGFnYWluIGJ1aWxkIGNvcnJlY3RseS4gQW55DQo+ID4gPiBp
ZGVhcz8NCg0KSW50ZXJlc3RpbmcuIEkgaGFkIG5vdCBjb25zaWRlcmVkIGJ1aWxkaW5nIHRoZSBy
ZWNpcGVzIGZyb20gDQptZXRhLWdwbHYyIGZvciBuYXRpdmUgYXMgd2Ugb25seSB1c2UgdGhlbSBm
b3IgdGFyZ2V0IGJ1aWxkcy4NCg0KPiA+IGRvZXMgaXQgaGVscCBpZiB5b3UgYWRkIC1mbm8tY29t
bW9uIHRvIG5hdGl2ZSBDRkxBR1MNCj4gDQo+IE5vLiBJdCB3b3JrcyBpbiBhbGwgY2FzZXMgaWYg
SSByZW1vdmUgdGhlIHBhdGNoIGFuZCB1c2UgIi1mY29tbW9uIg0KPiB0aG91Z2guIE9kZGx5IGVu
b3VnaCwgaW4gbXkgYnVpbGQgaGF2aW5nIHRoZSBwYXRjaCBjYXVzZWQgdGhlIHRhcmdldA0KPiBy
ZWNpcGUgdG8gZmFpbCBvbmUgd2F5LCBhbmQgbm90IGhhdmluZyBpdCBjYXVzZWQgaXQgdG8gZmFp
bCBhbm90aGVyDQo+IHdheS4uLi4NCg0KQXJlIHlvdSBzYXlpbmcgeW91IHN0aWxsIGhhdmUgYnVp
bGQgZmFpbHVyZXMgd2hlbiBidWlsZGluZyBnbnVwZyBmb3IgDQp0YXJnZXQgYXMgd2VsbCwgd2l0
aCB0aGUgcGF0Y2ggYXBwbGllZD8NCg0KPiBub3Qgc3VyZSB3aGF0J3MgZ29pbmcgb24gdGhlcmUs
IGJ1dCBJIHN1c3BlY3QgZm9yIHNvbWV0aGluZw0KPiB0aGlzIG9sZCwgYWRkaW5nICItZmNvbW1v
biIgdG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYmVoYXZpb3IgbWFrZXMgdGhlDQo+IG1vc3Qgc2Vu
c2UuDQoNCkFueXdheSwgSSBnZXQgdGhlIHNhbWUgZXJyb3JzIGFzIGFib3ZlIHdoZW4gSSB0cnkg
YnVpbGRpbmcgaXQgZm9yIA0KbmF0aXZlIHVzaW5nIGdjYyA5LjMuMS4gSSdsbCBsb29rIGludG8g
aXQgYW5kIHNlZSBpZiBJIGNhbiBpbXByb3ZlIA0KdGhlIHBhdGNoLCBvciBpZiBJIHdpbGwgaGF2
ZSB0byByZXNvcnQgdG8gdXNpbmcgLWZjb21tb24uDQoNCi8vUGV0ZXINCg0K
