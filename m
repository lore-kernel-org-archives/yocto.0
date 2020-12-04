Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web12.14808.1607092483477077978
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 06:34:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=DEkimJ8f;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1607092483; x=1764772483;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=V/LhEk3LB9BXReGQ4X/sAJh6jePthnQltahJhihhu2M=;
  b=DEkimJ8fGOc49r1U9zfTD2JqYYKl2O0JfNOv5iRslkK5L+hVt4kgygad
   9lQCXmImzmxM8y8PpGcGhSugFJ8ASRTIBTIFpiSwoXewuVlzDyNY4ITSk
   ifIZ70mIJ3KtIGXpVkfJU8c36z39EPDQDVslhXkOnPH4dHQM2/IASaCJL
   E=;
IronPort-PHdr: =?us-ascii?q?9a23=3AcTymvhWIStynyMGARYxTL8JPCWXV8LGtZVwlr6E/?=
 =?us-ascii?q?grcLSJyIuqrYZRWCvKdThVPEFb/W9+hDw7KP9fy5BipZv8bK7S5KWacPfidNsd?=
 =?us-ascii?q?8RkQ0kDZzNImzAB9muURYHGt9fXkRu5XCxPBsdMs//Y1rPvi/6tmZKSV3wOgVv?=
 =?us-ascii?q?O+v6BJPZgdip2OCu4Z3TZBhDiCagbb9oIxi6sAfcutMLjYZjKas9xRvEr3pVcO?=
 =?us-ascii?q?lK2G1kIk6ekQzh7cmq5p5j9CpQu/Ml98FeVKjxYro1Q79FAjk4Km45/MLkuwXN?=
 =?us-ascii?q?QguJ/XscT34ZkgFUDAjf7RH1RYn+vy3nvedgwiaaPMn2TbcpWTS+6qpgVRHlhD?=
 =?us-ascii?q?sbOzM/7WrakdJ7gr5Frx29phx/24/Ub5+TNPpiZaPWYNcWSXNcUspNSyBNB4Wx?=
 =?us-ascii?q?ZJYNAeUcJ+ZVt4nzqUUToxuiCweiB+3vxT1JhnDq0qM13P8sER3d0wwiA94CrG?=
 =?us-ascii?q?jYodfzOawPUe611q7IzTDbYv9Y3jn9747Icgs/rv6SRrJ8adfax1QzFwzbkFWf?=
 =?us-ascii?q?t4rlNC6L2+8Qt2SU4fduWeehh2U6rAxxuSSvydkyiobXgIIZ0FXE9SJ/wIYuO9?=
 =?us-ascii?q?K3VlV7bMW/H5RKqS6aLIt3Qtg+Q252vSY60acKtoK8fCgP0ZkqwQPUZPObfYaS?=
 =?us-ascii?q?+B3jSPqRLilihHJjYL+ymxK//VWux+DhWMS5zFRHoyVBn9TCqHwA2ADe5MiZR/?=
 =?us-ascii?q?V98EmtxCuC2Q7T5OxEPEw5ibTXJ4Iuz7A/lpQer1jOEynrk0v4i6+Wc18r+umu?=
 =?us-ascii?q?6+n/YrTmoYOTN5NzigHmKKQunc6/DvokPQgSRWSb/v681LL78U3+WLVFkPs2nb?=
 =?us-ascii?q?fcsJ/BO8sUu7O2DBFI3Yo57Ba/FTim3dIFlncENFJIYA+Lg5TzN1zAIv30F+qz?=
 =?us-ascii?q?jlCinTtxxv3LP6XtDojRInTZn7rscqxx5kpGxAcwz91S4Y9fBKsbL/LpQEDxsc?=
 =?us-ascii?q?TVDho+MwOp3enqEM591oYCWWKXBa+ZLb/SvUeI5u0xJ+mMY5cYuDD9K/gj/fHu?=
 =?us-ascii?q?iGQ5lFwdcKW1wZcbdWq0HvJ8LEmDenXjmMkOEXwKvwolUOzllliCUSVJa3muWK?=
 =?us-ascii?q?I84yk3CIOgDYjdWoCgmKGN0DuhEpBYZG1KEE2AHHPmeomeWvoBaTqeIsp7nTwF?=
 =?us-ascii?q?UbihRZUh1RartALi0LpnMvTb+jMGupLlztR14urTlRcp9TNqEcudyHqAQHpukW?=
 =?us-ascii?q?wWXD833Lt/oVBjxVeGyqh0meBXFdtW5/9RSAc1KYbcz/BmC9D1Qg/AftCJR0q6?=
 =?us-ascii?q?QtWhGjwxStMxw8QSY0ZmAdmjjhfD0Da2A78Sj7yLHps08qDC0HftO8Zx0XHG1L?=
 =?us-ascii?q?MujwpufswaE2ytgap27EDxCo3EiQ3NkeCoeKcRxgbB+WOC1nuV+kpYBko4G7TC?=
 =?us-ascii?q?VmwYTk/XtsjioFLFRKOpEa4gMAZK1YiFMKQAIon4il5aQ9/nOc/CeCSgnGysAg?=
 =?us-ascii?q?6SwbGBZ5asfH8SinbzEk8Bxko2+nCdOAUlQm+av2/AATomPhqvXnitu6Eqs2+2?=
 =?us-ascii?q?UEIyiQSNaVZs2qGd8BcYnu2HV/4WxfQPvyJ3+GY8J0q0w9+DU4nInAFmZqgJJI?=
 =?us-ascii?q?pluFo=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CEAwApSMpf/0LBJQpiHgEBCxIMQIFEC?=
 =?us-ascii?q?4MfgTgKhDKRJQOaSoFoCwEBAQEBAQEBAQgBGA0KBAEBhEoCF4F/JjcGDgIQAQE?=
 =?us-ascii?q?GAQEBAQEGBAGGUQyCNykBgxEBAQEBAgEBIhE6EAcEAgEGAg4DBAEBAQICIwMCA?=
 =?us-ascii?q?gImChQBCAgBAQQBEgiDH4JmL49XmxJ2gTKEPgGGLgkBgQQqhmmIND6EKT6CXQE?=
 =?us-ascii?q?DAYEnARECATeDAIJfBIF/gRkBIRMBKx84P2MHk0CkfgcDgnKJGYsuhmUrhE2dW?=
 =?us-ascii?q?JNyiwiRUCKEGwIEAgQFAhWBbIELcHBQgmkJRxcCDZcmhUR0NwIGAQkBAQMJjyu?=
 =?us-ascii?q?BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2CEAwApSMpf/0LBJQpiHgEBCxIMQIFEC4MfgTgKhDKRJQO?=
 =?us-ascii?q?aSoFoCwEBAQEBAQEBAQgBGA0KBAEBhEoCF4F/JjcGDgIQAQEGAQEBAQEGBAGGU?=
 =?us-ascii?q?QyCNykBgxEBAQEBAgEBIhE6EAcEAgEGAg4DBAEBAQICIwMCAgImChQBCAgBAQQ?=
 =?us-ascii?q?BEgiDH4JmL49XmxJ2gTKEPgGGLgkBgQQqhmmIND6EKT6CXQEDAYEnARECATeDA?=
 =?us-ascii?q?IJfBIF/gRkBIRMBKx84P2MHk0CkfgcDgnKJGYsuhmUrhE2dWJNyiwiRUCKEGwI?=
 =?us-ascii?q?EAgQFAhWBbIELcHBQgmkJRxcCDZcmhUR0NwIGAQkBAQMJjyuBEQEB?=
X-IronPort-AV: E=Sophos;i="5.78,392,1599523200"; 
   d="scan'208";a="467812859"
X-IronPort-AV: E=Sophos;i="5.78,392,1599523200"; 
   d="scan'208";a="235059308"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Nicolas Jeker <n.jeker@delisys.ch>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel #zeus
Thread-Topic: [yocto] #yocto #kernel #zeus
Thread-Index: AdbKNYkmh2TYaBf9QimDXt9imER+4gALfYgAAAZAkTA=
Date: Fri, 4 Dec 2020 14:34:40 +0000
In-Reply-To: <23bb2041f1dbe77348dd8438b8c7dd9ecc76cf42.camel@delisys.ch>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.164D8A19DC5C8A38.22997@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGFuayB5b3UsIEkgd2FzIGFibGUgdG8gdGVzdCBidWlsZCB3aXRoIHBhdGNoIGFuZCBpdCBk
b2VzIGluZGVlZCBmaXggbXkgYnVpbGQuDQoNClN0ZXZlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBOaWNvbGFzIEpla2VyIFttYWlsdG86bi5qZWtlckBkZWxpc3lzLmNoXSAN
ClNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMDQsIDIwMjAgNzozMyBBTQ0KVG86IE1vbnNlZXMsIFN0
ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPjsgeW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwgI3pl
dXMNCg0KKioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBFTUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3Jp
Z2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXphdGlvbi4NCg0KDQpPbiBGcmksIDIwMjAt
MTItMDQgYXQgMTI6MTcgKzAwMDAsIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+IMKgDQo+IEkgc2VlbSB0byBoYXZlIGFuIGlzc3VlIGlu
aXRpYWxpemluZyBidXN5Ym94Lg0KPiBJIGhhdmUgYXR0YWNoZWQgbXkgZXJyb3IgbG9n4oCmIGJ1
dCBiYXNpY2FsbHkgYnVzeWJveCBmYWlscyB0byBjb21waWxlIA0KPiB3aGVuIEkgc2V0DQo+IMKg
DQo+IENPTkZJR19GRUFUVVJFX01PVU5UX05GUz15DQo+IMKgDQoNClRoZSBsb2cgaW5kaWNhdGVz
IHRoYXQgaXQgaXMgbWlzc2luZyBhIGRlcGVuZGVuY3kgd2hpY2ggc2hpcHMgInJwYy9ycGMuaCIu
IFNvbWUgZ29vZ2xpbmcgdHVybmVkIHVwIHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgb3BlbmVtYmVk
ZGVkLWNvcmUgbWFpbGluZyBsaXN0Og0KDQpodHRwczovL2xpc3RzLm9wZW5lbWJlZGRlZC5vcmcv
Zy9vcGVuZW1iZWRkZWQtY29yZS90b3BpYy83MjM1NTYwMiMxMTEyMTYNCg0KVGhlcmUgaXMgYSBm
aW5hbCBwYXRjaCBpbiB0aGUgbGFzdCBtYWlsIG9mIHRoZSB0b3BpYywgYnV0IGl0IHNlZW1zIHRo
YXQgdGhpcyBjb25maWcgb3B0aW9uIGlzIGFueXdheSBvbmx5IHJlcXVpcmVkIGZvciBMaW51eCA8
IDIuNi4yMy4NCg0KPiBJZiBJIG1vZGlmeSBteV9jZmcuY2ZnIGFuZCByZW1vdmUgdGhlIGFib3Zl
IHBhcmFtZXRlciBpdCBjb21waWxlcyANCj4gY2xlYW4gLCAoSS5FLiDigJwjIENPTkZJR19GRUFU
VVJFX01PVU5UX05GUyBpcyBub3Qgc2V04oCdKS4NCj4gwqANCj4gSSBhbSBhc3N1bWluZyBteSBi
YmFwcGVuZCBmaWxlIGlzIGF0IGZhdWx0LCBidXQgZG8gbm90IHNlZSBpdC4gVGhpcyANCj4gc2V0
dXAgd29ya3MgY29ycmVjdGx5IHVuZGVyIOKAnHJvY2tv4oCdLCBhbmQgaWYgSSBkaXNhYmxlIA0K
PiDigJxDT05GSUdfRkVBVFVSRV9NT1VOVF9ORlPigJ0gYWxsIGFwcGVhcnMgY29ycmVjdOKApg0K
PiDCoA0KPiBDYW4gc29tZW9uZSB0ZWxsIG1lIHdoYXQgaXMgZ29pbmcgb24gYW5kIGhvdyB0byBj
b3JyZWN0ID8NCj4gwqANCj4gVGhhbmtzLA0KPiBTdGV2ZQ0KPiDCoA0KPiBUaGlzIGlzIG15IGFw
cGVuZCBmaWxlOg0KPiDCoA0KPiBidXN5Ym94XyUuYmJhcHBlbmQ6DQo+IMKgDQo+IEZJTEVTRVhU
UkFQQVRIU19wcmVwZW5kIDo9ICIke1RISVNESVJ9L2ZpbGVzOiINCj4gRklMRVNFWFRSQVBBVEhT
X3ByZXBlbmQgOj0gIiR7VEhJU0RJUn0vYnVzeWJveDoiDQo+IMKgDQo+IFNSQ19VUklfYXBwZW5k
ICs9ICIgXA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmlsZTovL2luZXRkLmNv
bmYgXA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmlsZTovLyBteV9jZmcuY2Zn
IFwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZpbGU6Ly9mdHAuY2ZnIFwNCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqDCoGZpbGU6Ly9mdHBkLmNmZyBcDQo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmaWxlOi8vaGV4ZHVtcC5jZmcgXA0KPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmlsZTovL2h0dHBkLmNmZyBcDQo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBmaWxlOi8vaW5ldGQuY2ZnIFwNCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGZpbGU6Ly9uYy5jZmcgXA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZmlsZTovL3RlbG5ldGQuY2ZnIFwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGZpbGU6Ly90ZnRwZC5jZmcgXA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZmlsZTovL2NvcmV1dGlscy5jZmcgXA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgIg0KPiDCoA0KPiBQQUNLQUdFUyA9KyAiJHtAcGxueF9lbmFibGVfYnVzeWJveF9wYWNrYWdl
KCdpbmV0ZCcsIGQpfSINCj4gwqANCj4gSU5JVFNDUklQVF9QQUNLQUdFUyA9KyAiJHtAcGxueF9l
bmFibGVfYnVzeWJveF9wYWNrYWdlKCdpbmV0ZCcsIGQpfSINCj4gwqANCj4gRklMRVNfJHtQTn0t
aW5ldGQgPSAiJHtzeXNjb25mZGlyfS9pbml0LmQvYnVzeWJveC1pbmV0ZA0KPiAke3N5c2NvbmZk
aXJ9L2luZXRkLmNvbmYiDQo+IElOSVRTQ1JJUFRfTkFNRV8ke1BOfS1pbmV0ZCA9ICJpbmV0ZC5i
dXN5Ym94Ig0KPiBJTklUU0NSSVBUX1BBUkFNU18ke1BOfS1pbmV0ZCA9ICJzdGFydCA2NSBTIC4i
DQo+IENPTkZGSUxFU18ke1BOfS1pbmV0ZCA9ICIke3N5c2NvbmZkaXJ9L2luZXRkLmNvbmYiDQo+
IMKgDQo+IFJSRUNPTU1FTkRTXyR7UE59ID0rICIke0BiYi51dGlscy5jb250YWlucygnRElTVFJP
X0ZFQVRVUkVTJywNCj4gJ2J1c3lib3gtaW5ldGQnLCAnJHtQTn0taW5ldGQnLCAnJywgZCl9Ig0K
PiDCoA0KPiBkZWYgcGxueF9lbmFibGVfYnVzeWJveF9wYWNrYWdlKGYsIGQpOg0KPiDCoMKgwqAg
ZGlzdHJvX2ZlYXR1cmVzID0gKGQuZ2V0VmFyKCdESVNUUk9fRkVBVFVSRVMnLCBUcnVlKSBvcg0K
PiAiIikuc3BsaXQoKQ0KPiDCoMKgwqAgaWYgImJ1c3lib3gtIiArIGYgaW4gZGlzdHJvX2ZlYXR1
cmVzOg0KPiDCoMKgwqDCoMKgwqDCoCByZXR1cm4gIiR7UE59LSIgKyBmDQo+IMKgwqDCoCBlbHNl
Og0KPiDCoMKgwqDCoMKgwqDCoCByZXR1cm4gIiINCj4gwqANCj4gVGhpcyBpcyBteSBwbGF0Zm9y
bSBzcGVjaWZpYyBjb25maWcgZmlsZToNCj4gwqANCj4gbXlfY2ZnLmNmZzoNCj4gwqANCj4gQ09O
RklHX0VYVFJBX0NPTVBBVD15DQo+IENPTkZJR19JTkNMVURFX1NVU3YyPXkNCj4gQ09ORklHX0ZF
QVRVUkVfVkVSQk9TRV9VU0FHRT15DQo+IENPTkZJR19VTklDT0RFX1NVUFBPUlQ9eQ0KPiBDT05G
SUdfTklDRT15DQo+IENPTkZJR19TSEE1MTJTVU09eQ0KPiBDT05GSUdfTUtGU19WRkFUPXkNCj4g
Q09ORklHX0ZFQVRVUkVfVE9QX1NNUF9DUFU9eQ0KPiBDT05GSUdfRkVBVFVSRV9UT1BfREVDSU1B
TFM9eQ0KPiBDT05GSUdfRkVBVFVSRV9UT1BfU01QX1BST0NFU1M9eQ0KPiBDT05GSUdfRkVBVFVS
RV9UT1BNRU09eQ0KPiBDT05GSUdfRkVBVFVSRV9NT1VOVF9WRVJCT1NFPXkNCj4gQ09ORklHX0ZF
QVRVUkVfTU9VTlRfSEVMUEVSUz15DQo+IENPTkZJR19GRUFUVVJFX01PVU5UX05GUz15IDw8PC0g
aWYgZGlzYWJsZWQsIGNvbXBpbGVzIGNsZWFuIA0KPiBDT05GSUdfRkVBVFVSRV9NT1VOVF9DSUZT
PXkgQ09ORklHX1dBVENIRE9HPXkgQ09ORklHX0RFVk1FTT15IA0KPiBDT05GSUdfTFNQQ0k9eSAj
IENPTkZJR19HWklQIGlzIG5vdCBzZXQgIyBDT05GSUdfR1VOWklQIGlzIG5vdCBzZXQgIyANCj4g
Q09ORklHX1VOWklQIGlzIG5vdCBzZXQNCg0KDQo=
