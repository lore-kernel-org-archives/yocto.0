Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web09.325.1610736154802699323
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 10:42:37 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=Z4Fqpl41;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610736154; x=1768416154;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=rjayayvUgkBGXNU5ao9VECed2xh1poTn12ctuCx0hbA=;
  b=Z4Fqpl41w8xap+IFHhH3lEKm0eMjCJB53EB2DmklS4fnyq3ZQyP7MYYO
   Y78E7dAIKWDMutOdX6O+qyN411+iXXt1fkXRpmJv92ddDL/zZmOVgbkYz
   rqxrWMoxjAK/4n2eq9jXWNhOk4Wy/JwtiyKAvYm4DGOz6t5r7+KXPvpw0
   E=;
IronPort-PHdr: =?us-ascii?q?9a23=3ArNo20h16skJx/OEXsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?sesXIvTxwZ3uMQTl6Ol3ixeRBMOHsqMC07Cd4/ioGTRZp8rY7zZaKN0EfiRGoP?=
 =?us-ascii?q?1epxYnDs+BBB+zB9/RRAt+Iv5/UkR49WqwK0lfFZW2TVTTpnqv8WxaQU2nZkJ6?=
 =?us-ascii?q?KevvB4Hdkdm82fys9J3PeQVIgye2ba9vIBmsogjdq80bjZF+JqovxRfEoWdEcP?=
 =?us-ascii?q?lSyW90OF6fhRnx6tqy8ZJ57yhcp/ct/NNcXKvneKg1UaZWByk8PWAv483ruxjD?=
 =?us-ascii?q?TQ+R6XYZT24bjBlGDRXb4R/jRpv+vTf0ueR72CmBIM35Vqs0Vii476dqUxDnli?=
 =?us-ascii?q?EKPCMk/W7Ni8xwiKVboA+9pxF63oXZbp2ZOOZ4c6jAZt4RW3ZPUdhNWCxAGoO8?=
 =?us-ascii?q?bpUAD+wdPeZDsoLxo0ICoQaiCQWwAe/izCJDiH3r0q0gy+kvER/I0hE8H9wAs3?=
 =?us-ascii?q?rUotf6NKYOXu66w6bF1inDYOhU2Tvh9ITEbhIsrPeRVrxwa8rRzkwvGhvLgluX?=
 =?us-ascii?q?rozlOSiV2foTvGiA9+ZrSP+hi3I5pAFvvDevwNonh5fUjY4RxF/K6CB1zIgoLt?=
 =?us-ascii?q?C/U057fcCrEIVOuCGcLYd2R8QiQ2dzuCkk1LIGooW2czMQx5s53B7ea+eHc5SW?=
 =?us-ascii?q?7RLmT+adOyt3hHVgeL+mgRu57EevxPHmWMauzFZKsjRKksPKtn0VyhDd5NWLR/?=
 =?us-ascii?q?9j8ku/3TuCywTe5v9HLE03m6TVJYAtz6Itm5cPvkrNHiv7lUf4gqOIakgp+vak?=
 =?us-ascii?q?5uv6b7vpopKRNYl5gRzwPKQpn8ywG+U4Mg4WUmmb/uSzyKHj/UrhQLVQif02kL?=
 =?us-ascii?q?fWv4zGJcgBoa65GQBV34A+4Bi8FzeryMkUkWUdIF9Leh+LlZblN0/OLfziDPqy?=
 =?us-ascii?q?gkygnCp3y/zcMbDsDY/BI3fZnLv8fbtw7VNXxhApwtBF/Z1UD6kMIPf0WkDsqt?=
 =?us-ascii?q?PVFgQ5Mwmow+b/D9V9y58eVXqPAqCHNKPStkeF6f41LOmXeIAVvS39Jvwh6vPt?=
 =?us-ascii?q?kXM1h0URfa+z0pcNc3+3BOppI16ZYHr3ntcOD2IKvhEkQOP2j12CVCZfZ3e0X6?=
 =?us-ascii?q?0i+jE2EJ+qAZvZSo2jgrGNxjm3EoNWa2xcC12BEG/kd4CeVPcNbCKSLNVhkjsB?=
 =?us-ascii?q?VbW5UI8hyQ+htBHkxLphNObU/yoYtZT41Ndr+eLTjgo/+iduAMuDyGGMT3p0nn?=
 =?us-ascii?q?8WSD8zx6Bzu1ByylCG0aRgmfxXCcRT5+9VUgc9LZPdz+t6BMzuWgLGZdqJTFem?=
 =?us-ascii?q?Qs66ATEqVN4ww9gObFphG9WllhDDxS2qA70LmLOXGJw46KXc32L+J5U19nDdya?=
 =?us-ascii?q?N0j0U6WtAdciqih7Vj7E7CAIXVlF2DkKSnfrha2zTCs2jE3G2FoEYfTQhrTK+W?=
 =?us-ascii?q?YHYEe0HqoMTls0PeU6e1W/NgNgpa1dXEO6xBdtrxl1JESfz/ftPEbCW+3Ha3Dg?=
 =?us-ascii?q?qPga6Kd5fgKFkaiQbdBU1MqQkRtSKcPAp4BSespkrRCTVvERTkZEa6osdkr3bu?=
 =?us-ascii?q?BGozyRqHYlYln4Gp9wAYg7S3A7Mu5fNO8HM6tzhqEVD72tXQENeNvCJrdahHcM?=
 =?us-ascii?q?gh7VJck2nesloubdSbM6l+iwtGIExMtET02kAyU90YnA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DrAwDU4QFg/0LhJQpigQmDS4ElgTkKh?=
 =?us-ascii?q?DWRTQOKHJA5gWgLAQEBAQEBAQEBCAEYCwwEAQGESgIXgVcmOBMCEAEBBgEBAQE?=
 =?us-ascii?q?BBgQBhlEMgjgFAgMfAQaDCwEBAQQBIhEaKwwEAgEIEQQBAQECAiYCAgIfBwkBF?=
 =?us-ascii?q?QgIAgQOBQgTAgSDBoJVAz2uZ3aBMoRAAYEYgkANgiWBDiqGaA6BCoU0ggM+hCo?=
 =?us-ascii?q?+ghtCBAGBJwESATiDAYJgBIIRgSsbJCBvCAECSxoGXI9dK4J6pFBYBwOCd4kui?=
 =?us-ascii?q?0OBWIUVK4Rak0uKQ58zgnqPFYQhAgQCBAUCFoFtgQpwcIM5CQk+FwINji0XgQI?=
 =?us-ascii?q?BDYdSgT2EB3QCATQCBgEJAQEDCYsvXIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DrAwDU4QFg/0LhJQpigQmDS4ElgTkKhDWRTQOKHJA5gWg?=
 =?us-ascii?q?LAQEBAQEBAQEBCAEYCwwEAQGESgIXgVcmOBMCEAEBBgEBAQEBBgQBhlEMgjgFA?=
 =?us-ascii?q?gMfAQaDCwEBAQQBIhEaKwwEAgEIEQQBAQECAiYCAgIfBwkBFQgIAgQOBQgTAgS?=
 =?us-ascii?q?DBoJVAz2uZ3aBMoRAAYEYgkANgiWBDiqGaA6BCoU0ggM+hCo+ghtCBAGBJwESA?=
 =?us-ascii?q?TiDAYJgBIIRgSsbJCBvCAECSxoGXI9dK4J6pFBYBwOCd4kui0OBWIUVK4Rak0u?=
 =?us-ascii?q?KQ58zgnqPFYQhAgQCBAUCFoFtgQpwcIM5CQk+FwINji0XgQIBDYdSgT2EB3QCA?=
 =?us-ascii?q?TQCBgEJAQEDCYsvXIERAQE?=
X-IronPort-AV: E=Sophos;i="5.79,350,1602547200"; 
   d="scan'208";a="477951592"
X-IronPort-AV: E=Sophos;i="5.79,350,1602547200"; 
   d="scan'208";a="176553893"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2AAAi/tkABH9NwAAAou7uD//8J9AP/+1TmQ
Date: Fri, 15 Jan 2021 18:42:15 +0000
In-Reply-To: <52181919-28a0-a134-687e-b24c8bd8b470@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.165A7C00361C26FF.25487@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCkkgYW0gc3RpbGwgc2VlaW5nIHRoZSBOb3RoaW5nIFBST1ZJREVTICdpbml0LXN5c3RlbS1o
ZWxwZXJzLXNlcnZpY2UnLi4uDQoNCkkgYW0gY3VycmVudGx5IHdvcmtpbmcgYXJvdW5kIHRoaXMg
YmUgb3Zlci13cml0aW5nIHRoZSAibW91bnRuZnMuc2giIHNjcmlwdCwgYnV0IEkgd2FudCByZXNv
bHZlIHRoaXMgaXNzdWUgc28gd2UgYXJlIDEwMCUgWW9jdG8gY29tcGxpYW50Li4uDQoNCg0KDQot
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogPHJhai5raGVtQGdtYWls
LmNvbT4gDQpTZW50OiBUaHVyc2RheSwgSmFudWFyeSAxNCwgMjAyMSAyOjQ4IFBNDQpUbzogTW9u
c2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVuLm1vbnNlZXNAYmFlc3lzdGVtcy5jb20+DQpTdWJq
ZWN0OiBSZTogW3lvY3RvXSAjeW9jdG8gI2tlcm5lbA0KDQoqKiogV0FSTklORyAqKioNCkVYVEVS
TkFMIEVNQUlMIC0tIFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVzIGZyb20gb3V0c2lkZSBvdXIgb3Jn
YW5pemF0aW9uLg0KDQoNCnllYWggbm8gd29ycmllcyBJIGludGVuZHRlZCB0byBnaXZlIGhpbnRz
IHRvIGxvb2sgaW50byB0aGF0IHJlY2lwZSBhbmQgZmluZCBvdXQgcGFja2FnZSBhcyBuZWVkZWQs
IG5vdCBnaXZpbmcgYSBmdWxseSBjb29rZWQgc29sdXRpb24NCg0KT24gMS8xNC8yMSAxMDo0NiBB
TSwgTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0Kd3Jv
dGU6DQo+IA0KPiBJIGJlbGlldmUgeW91IHNhaWQ6IGluaXQtc3lzdGVtLWhlbHBlcnMuLi4NCj4g
SSB3aWxsIHRyeSB0aGUgb3RoZXIgKGluaXQtc3lzdGVtLWhlbHBlcnMtc2VydmljZSkgbGF0ZXIg
dG9kYXkNCj4gDQo+IFRoYW5rcywNCj4gU3RldmUNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+IEZyb206IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+DQo+IFNlbnQ6IFRo
dXJzZGF5LCBKYW51YXJ5IDE0LCAyMDIxIDE6MzYgUE0NCj4gVG86IE1vbnNlZXMsIFN0ZXZlbiBD
IChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPg0KPiBDYzogeW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSAjeW9jdG8gI2tlcm5lbA0K
PiANCj4gKioqIFdBUk5JTkcgKioqDQo+IEVYVEVSTkFMIEVNQUlMIC0tIFRoaXMgbWVzc2FnZSBv
cmlnaW5hdGVzIGZyb20gb3V0c2lkZSBvdXIgb3JnYW5pemF0aW9uLg0KPiANCj4gDQo+IEkgbXVz
dCBoYXZlIHNhaWQgYWRkIGluaXQtc3lzdGVtLWhlbHBlcnMtc2VydmljZQ0KPiANCj4gT24gV2Vk
LCBKYW4gMTMsIDIwMjEgYXQgNToxNyBBTSBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0
cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55
b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4+DQo+PiBJIGFtIHVzaW5nIHN5c3Zpbml0Li4uDQo+
Pg0KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+IEZyb206IE1vbnNlZXMsIFN0ZXZl
biBDIChVUykNCj4+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxMywgMjAyMSA3OjE1IEFNDQo+
PiBUbzogJ0toZW0gUmFqJyA8cmFqLmtoZW1AZ21haWwuY29tPg0KPj4gQ2M6IHlvY3RvQGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcNCj4+IFN1YmplY3Q6IFJFOiBbeW9jdG9dICN5b2N0byAja2VybmVs
DQo+Pg0KPj4NCj4+IFdoZW4gSSBkbyB0aGlzIEkgYW0gc2VlaW5nICJOb3RoaW5nIFBST1ZJREVT
ICdpbml0LXN5c3RlbS1oZWxwZXJzJywsLA0KPj4NCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+PiBGcm9tOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0KPj4gU2VudDogVHVl
c2RheSwgSmFudWFyeSAxMiwgMjAyMSA2OjEzIFBNDQo+PiBUbzogTW9uc2VlcywgU3RldmVuIEMg
KFVTKSA8c3RldmVuLm1vbnNlZXNAYmFlc3lzdGVtcy5jb20+DQo+PiBDYzogeW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KPj4gU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwN
Cj4+DQo+PiAqKiogV0FSTklORyAqKioNCj4+IEVYVEVSTkFMIEVNQUlMIC0tIFRoaXMgbWVzc2Fn
ZSBvcmlnaW5hdGVzIGZyb20gb3V0c2lkZSBvdXIgb3JnYW5pemF0aW9uLg0KPj4NCj4+DQo+PiBP
biBUdWUsIEphbiAxMiwgMjAyMSBhdCAxMjowOSBQTSBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZp
YSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBs
aXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4+Pg0KPj4+DQo+Pj4NCj4+PiBXb3JraW5n
IG9uIHpldXMgMy4wLjQsIGZvciBhYXJjaDY0DQo+Pj4NCj4+Pg0KPj4+DQo+Pj4gSSAgaGF2ZSBh
IHN0YXJ0dXAgc2NyaXB0IG1ha2luZyB1c2Ugb2Yg4oCcc2VydmljZeKAnSBIb3cgZG8gSSBwcm9w
ZXJseSBjb25maWd1cmUgaW4gc3VwcG9ydCBmb3IgdGhlIOKAnHNlcnZpY2XigJ0gY29tbWFuZCA/
DQo+Pj4NCj4+PiBJIGRvIG5vdCBoYXZlIGFuIGVycm9yIHdoZW4gd29ya2luZyB1bmRlciByb2Nr
by4NCj4+Pg0KPj4+DQo+Pj4NCj4+PiBUaGUgZXJyb3Igc2VlbiBpcyA6ICAgIC9ldGMvcmM1LmQv
UzE1bW91bnRuZnMuc2g6IGxpbmUgNzA6IHNlcnZpY2U6IGNvbW1hbmQgbm90IGZvdW5kDQo+Pj4N
Cj4+Pg0KPj4+DQo+Pj4gVXNhZ2U6IEAgbGluZSA3MDogIOKAnHNlcnZpY2UgcnBjYmluZCBzdGF0
dXMgPi9kZXYvbnVsbOKAnQ0KPj4+DQo+Pj4NCj4+DQo+PiBwZXJoYXBzIGp1c3QgYWRkIGluaXQt
c3lzdGVtLWhlbHBlcnMgdG8gSU1BR0VfSU5TVEFMTA0KPj4NCj4+Pg0KPj4+IFRoYW5rcywNCj4+
Pg0KPj4+IFN0ZXZlDQo+Pj4NCj4+Pg0KPj4+DQo+Pj4NCj4+DQo+Pg0KPj4NCj4+DQo+Pg0KPj4g
DQo+Pg0K
