Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.3949.1610641480566054515
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 08:24:43 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=MvWmtnVv;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610641480; x=1768321480;
  h=from:to:cc:subject:date:content-transfer-encoding:
   mime-version;
  bh=Vi6bfiAkZgx8VyqvVl0gP06txMON3K/C/qQDUxoh1F4=;
  b=MvWmtnVvBEV/Hy6rXjHfWrUmqWWLdJRO3FrAc7cNbhCusbN9GraBGjVh
   lCnxAPiU2RsoYrSX6PCUC4Bi9EHbwRROYAjbSTAMf80Rumon6+l1Zh1bL
   G6A0RH20Ny0bNJnYK4m0gkbhwTUgxCK0e6+GmoA2O/QBhOpD4l4ywPsnP
   g=;
IronPort-PHdr: =?us-ascii?q?9a23=3A0TlaohSzDmBwFP7R60Ys3620V9psv+yvbD5Q0YIu?=
 =?us-ascii?q?jvd0So/mwa67ZByHt8tkgFKBZ4jH8fUM07OQ7/mxHzRYqs/e+DBaKdoQDkBD0Z?=
 =?us-ascii?q?1X1yUbQ+e9QXXhK/DrayFoVO9jb3RCu0+BDE5OBczlbEfTqHDhpRQbGxH4KBYn?=
 =?us-ascii?q?br+tQt2agMu4zf299IPOaAtUmjW9falyLBKrpgnNq8Uam4RvJrs1xxfTvndEZ+?=
 =?us-ascii?q?tayX5qKFmOmxrw+tq88IRs/ihNuf8t7dJMXbn/c68lUbFWETMqPnwv6sb2rxfD?=
 =?us-ascii?q?VwyP5nUdUmUSjBVFBhXO4Q/5UJnsrCb0r/Jx1yaGM8L4S7A0Qimi4LxwSBD0ki?=
 =?us-ascii?q?cHNiU2/3/Rh8dtka9UuhOhpxh4w47JfIGYMed1c63Bcd8GQ2dKQ91cXDJdDIyi?=
 =?us-ascii?q?c4QPDvIBPedGoIn7u1sOtga1CQ21CO/y1jNEmnr60Ksn2OojDA7GxhQtEdIQvn?=
 =?us-ascii?q?rJsNX7OqQcUe60zKbUwjvMYOhb2Svm54jKbhwtve2AULB2fMHMyUcvDQTFjlCI?=
 =?us-ascii?q?pIDrOD2V0eINs3OF4OV+TuKjk3MspRxtojex2McjlI/JjZ8Lx1vZ8Sl2zps7Kd?=
 =?us-ascii?q?i2REVmZtOkC4dQuD+EN4RoRMMuWWRouCE8yr0dp5G0YjMKxY88yBHFdfOHaIiJ?=
 =?us-ascii?q?4gn/VOmPJDd4n2hpd664hxa36EWtzPD3Wcao3lhQtCVFjsXMuW4X1xzV8sWLV+?=
 =?us-ascii?q?Vw80Wu1DuN0w3e9uNJLFwqmaffNZMs3qI9moQOvUjeAyL7l0X7gq+Kekk55OSl?=
 =?us-ascii?q?6+Tpb7Xkq5GTKYJ5iwXzP6IzkcKxBuQ4NxIBX2md+emk1Lzj+lH2QKlNjv0uiK?=
 =?us-ascii?q?nZt5LaKtoHqa6lGQNV1Zwj6xm5Ajy709oYhWEKIE9ZdB6dgYXkOUvCLO38APqx?=
 =?us-ascii?q?mVihkTZmy+jbMrH9GJnAIXfOnK3ucLpn9kJRyAw+xs1F6Z1OELEOOvfzV1f0tN?=
 =?us-ascii?q?zfExA2LRS5w/3iCNVhzoMeXn+PArOBPKPSr1CI4uUvLvGKZI8VvjbyMf0l5+Xt?=
 =?us-ascii?q?gHI5hVMRYbSl0YERaH+iBPhpOF+WbmT3gtYBCmcKohQxTOnxiFGYTTFTYHOyU7?=
 =?us-ascii?q?o95jE9Fo2mEZ/OSp2xjLCb0iq2HIdaan1CB12CC3vldoSJV+8JaC2II89hljIE?=
 =?us-ascii?q?VaKmS48kzRyurxP6xKR5LuXK/C0Ur5fj1N9z5+3Iix496yd0At+G3G6XUW50hW?=
 =?us-ascii?q?MJRyQq3K9hpEx90U2P3rR/g/xdDdBT/e9GUh8mNZ7AyOx3E9DzWgXdcdeVT1ar?=
 =?us-ascii?q?WdGmATAqTtIt2N8CeUZ8G9K+gRDf2CqqG6UVl7uJBJMq7q3cw2L9J8Fny3bJh+?=
 =?us-ascii?q?EdiAwFQsZKfVevhOYr7QHRQY3JnkCxmKOjdKBa1ynIojSt122L6Qt9VwhrXKje?=
 =?us-ascii?q?GTgkekbIoNKxzQuCcoTvQ/xzKRdM18OEbK5NbMbkgE5uTv7uI8XFf2+0gCG7Ah?=
 =?us-ascii?q?PeleDEV5bjZ2hIhHaVM0MDiQ1GuC/ebQU=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BgAADqbgBg/0LBJQpiHQEBAQEJARIBB?=
 =?us-ascii?q?QUBQIE9BgELAYMggTkKhDWRTwOKHJAkFIFoCwEBAQEBAQEBAQgBGAcQBAEBhEo?=
 =?us-ascii?q?CF4FXJjYHDgIQAQEGAQEBAQEGBAGGUQyCOCkBgxEBAQEDAQEiEUUMBAIBCBEEA?=
 =?us-ascii?q?QEBAgImAgICHwcKFQgIAQEEDgUIgx+CVQMOrz12gTKFWYJXDYIlgQ4qAYZ0gQq?=
 =?us-ascii?q?FNIIDPoQqPoIbQgQBgScBEgGDOYJgBIM8RBsCdW6QOIMlpFBYBwOCd4kui0OBW?=
 =?us-ascii?q?IUVK4Rak0uKQaIsjxSEIQIEAgQFAhaBXQiBEnBwgzkJRxcCDZcmhUR0AgE0AgY?=
 =?us-ascii?q?BCQEBAwmNF4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2BgAADqbgBg/0LBJQpiHQEBAQEJARIBBQUBQIE9BgELAYM?=
 =?us-ascii?q?ggTkKhDWRTwOKHJAkFIFoCwEBAQEBAQEBAQgBGAcQBAEBhEoCF4FXJjYHDgIQA?=
 =?us-ascii?q?QEGAQEBAQEGBAGGUQyCOCkBgxEBAQEDAQEiEUUMBAIBCBEEAQEBAgImAgICHwc?=
 =?us-ascii?q?KFQgIAQEEDgUIgx+CVQMOrz12gTKFWYJXDYIlgQ4qAYZ0gQqFNIIDPoQqPoIbQ?=
 =?us-ascii?q?gQBgScBEgGDOYJgBIM8RBsCdW6QOIMlpFBYBwOCd4kui0OBWIUVK4Rak0uKQaI?=
 =?us-ascii?q?sjxSEIQIEAgQFAhaBXQiBEnBwgzkJRxcCDZcmhUR0AgE0AgYBCQEBAwmNF4ERA?=
 =?us-ascii?q?QE?=
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="339251992"
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="240930846"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2AAAi/tkAAMtERAACukENA=
Date: Thu, 14 Jan 2021 16:24:21 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.165A25E53C911888.8149@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpLaGVtOg0KDQpJIGFwcGVhciB0byBoYXZlIGEgc2ltaWxhciBpc3N1ZSBidWlsZGluZyBpbiBp
bmV0dXRpbHMtcnNoIGFuZCBpbmV0dXRpbHMtcnNoZC4uLg0KDQpXaGVuIGFkZGVkIHRvIElNQUdF
X0lOU1RBTEwsIChJTUFHRV9JTlNUQUxMICs9ICIgaW5ldHV0aWxzLXJzaCBpbmV0dXRpbHMtcnNo
ZCIpDQoNCkkgYWxzbyBnZXQgYW4gIkVycm9yOiBOb3RoaW5nIFBST1ZJREVTIC4uLiINCg0KSG93
IGRvIHlvdSBwdWxsIGluIHZhcmlvdXMgbmV0IHV0aWxpdHkgY29tbWFuZHMgKGV4LiBybG9naW5k
KSB3aXRob3V0IGluZXR1dGlscy1yc2ggYW5kIGluZXR1dGlscy1yc2hkID8NCg0KSSBkbyBub3Qg
c2VlIGFueXRoaW5nIGluIHRoZSBtaWdyYXRpb24gZ3VpZGVzIG9uIHRoaXMuLi4NCg0KQW55IGlk
ZWFzID8NCg0KSSBhbSB1c2luZyB6ZXVzIDMuMC40IGFuZCBidWlsZGluZyBhYXJjaDY0IFhpbGlu
eCBiYXNlZCBpbWFnZS4uLg0KDQpTdGV2ZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
RnJvbTogTW9uc2VlcywgU3RldmVuIEMgKFVTKSANClNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAx
MywgMjAyMSAyOjI1IFBNDQpUbzogS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT4NCkNjOiB5
b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSRTogW3lvY3RvXSAjeW9jdG8g
I2tlcm5lbA0KDQoNCktoZW06DQoNCkkgYW0gaGF2aW5nIGlzc3VlcyBhdHRlbXB0aW5nIHRvIHJl
c29sdmUgdGhpcyBpc3N1ZS4uLiANCkkgYW0gc2VlaW5nIGl0IGluIG15IGJvb3Rsb2FkZXIuLi4N
Cg0KQ2FuIHlvdSBwb3NzaWJseSBwb2ludCBtZSBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uID8NCg0K
VGhhbmtzLg0KU3RldmUNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3Rv
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9u
IEJlaGFsZiBPZiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnDQpTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgMTMsIDIwMjEgODoxNyBBTQ0KVG86IEtoZW0g
UmFqIDxyYWoua2hlbUBnbWFpbC5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwNCg0KKioqIFdBUk5JTkcgKioq
DQpFWFRFUk5BTCBFTUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3JpZ2luYXRlcyBmcm9tIG91dHNpZGUg
b3VyIG9yZ2FuaXphdGlvbi4NCg0KDQpJIGFtIHVzaW5nIHN5c3Zpbml0Li4uDQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIA0KU2VudDog
V2VkbmVzZGF5LCBKYW51YXJ5IDEzLCAyMDIxIDc6MTUgQU0NClRvOiAnS2hlbSBSYWonIDxyYWou
a2hlbUBnbWFpbC5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVj
dDogUkU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwNCg0KDQpXaGVuIEkgZG8gdGhpcyBJIGFtIHNl
ZWluZyAiTm90aGluZyBQUk9WSURFUyAnaW5pdC1zeXN0ZW0taGVscGVycycsLCwNCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+
IA0KU2VudDogVHVlc2RheSwgSmFudWFyeSAxMiwgMjAyMSA2OjEzIFBNDQpUbzogTW9uc2Vlcywg
U3RldmVuIEMgKFVTKSA8c3RldmVuLm1vbnNlZXNAYmFlc3lzdGVtcy5jb20+DQpDYzogeW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJu
ZWwNCg0KKioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBFTUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3Jp
Z2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXphdGlvbi4NCg0KDQpPbiBUdWUsIEphbiAx
MiwgMjAyMSBhdCAxMjowOSBQTSBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55b2N0b3By
b2plY3Qub3JnPiB3cm90ZToNCj4NCj4NCj4NCj4gV29ya2luZyBvbiB6ZXVzIDMuMC40LCBmb3Ig
YWFyY2g2NA0KPg0KPg0KPg0KPiBJICBoYXZlIGEgc3RhcnR1cCBzY3JpcHQgbWFraW5nIHVzZSBv
ZiDigJxzZXJ2aWNl4oCdIEhvdyBkbyBJIHByb3Blcmx5IGNvbmZpZ3VyZSBpbiBzdXBwb3J0IGZv
ciB0aGUg4oCcc2VydmljZeKAnSBjb21tYW5kID8NCj4NCj4gSSBkbyBub3QgaGF2ZSBhbiBlcnJv
ciB3aGVuIHdvcmtpbmcgdW5kZXIgcm9ja28uDQo+DQo+DQo+DQo+IFRoZSBlcnJvciBzZWVuIGlz
IDogICAgL2V0Yy9yYzUuZC9TMTVtb3VudG5mcy5zaDogbGluZSA3MDogc2VydmljZTogY29tbWFu
ZCBub3QgZm91bmQNCj4NCj4NCj4NCj4gVXNhZ2U6IEAgbGluZSA3MDogIOKAnHNlcnZpY2UgcnBj
YmluZCBzdGF0dXMgPi9kZXYvbnVsbOKAnQ0KPg0KPg0KDQpwZXJoYXBzIGp1c3QgYWRkIGluaXQt
c3lzdGVtLWhlbHBlcnMgdG8gSU1BR0VfSU5TVEFMTA0KDQo+DQo+IFRoYW5rcywNCj4NCj4gU3Rl
dmUNCj4NCj4NCj4gDQo+DQo=
