Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web09.7124.1610540103918646112
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jan 2021 04:15:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=UQ9Oj4yW;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610540104; x=1768220104;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=mEtrzrGD+14lCend9Q1mpKDWzWeblanlMTyJkDM6Z6Y=;
  b=UQ9Oj4yWBRRa2MXjf3O5a7Q2wmB9QMssD7hIrhumFxVUWTQMux1qtiV4
   O9CO8xo/PyiSnhmyJ99EMy8QmVaLIxLwGiQOS2rlA0HYOSVYRrD2gFzOE
   10AAo90lAtx2Sd1eS8Nx+IRW5/RJS9yddYi0QxUN04grVBvA4i+4hHDFh
   s=;
IronPort-PHdr: =?us-ascii?q?9a23=3AtSD5BR0Ct60r10g+smDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?sesXIvTxwZ3uMQTl6Ol3ixeRBMOHsqIC07Gd6PyoGTRZp8rY7zZaKN0EfiRGoP?=
 =?us-ascii?q?1epxYnDs+BBB+zB9/RRAt+Iv5/UkR49WqwK0lfFZW2TVTTpnqv8WxaQU2nZkJ6?=
 =?us-ascii?q?KevvB4Hdkdm82fys9J3PeQVIgye2ba9vIBmsogjdq8objZF+Jqs/xRfErHRFcP?=
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
 =?us-ascii?q?g0ygnCp3y/zcMbDsDY/BI3fZnLv8fbtw7VNXxhApwtBF/Z1UD6kMIPf0WkDsqt?=
 =?us-ascii?q?PVFgQ5Mwmow+b/D9V9y58eVXqPAqCHNKPStkeF5v4gIuaWYo8VvS39Jvw56/Ly?=
 =?us-ascii?q?kXM1hEURfa+z0pcNc3+3BOppI16ZYHr3ntcOD2IKvhEkQOP2j12CVCZfZ3e0X6?=
 =?us-ascii?q?0i+jE2EJ+qAZvZSo2jgrGNxjm3EoNWa2xcC12BEW/kd4CeVPcNbCKSLNVhkjsB?=
 =?us-ascii?q?VbW5UI8hyQ+htBHkxLphNObU/yoYtZT41Ndr+eLTjgo/+iduAMuDyGGMT3p0nn?=
 =?us-ascii?q?8WSD8zx6Bzu1ByylCG0aRgmfxXCcRT5+9VUgc9LZPdz+t6BMzuWgLGZdqJTFem?=
 =?us-ascii?q?Qs66ATEqVN4ww9gObFphG9WllhDDxS2qA70LmLOXGJw46KXc32L+J5U19nDdya?=
 =?us-ascii?q?N0j0U6WtAdciqih7Vj7E7CAIXVlF2DkKSnfrha2zTCs2jE3G2FoEYfTQhrTK+W?=
 =?us-ascii?q?YHYEe0HqoMTls0PeU6e1W/NgNgpa1dXEO6xBdtrxl1JESfz/ftPEbCW+3Ha3Dg?=
 =?us-ascii?q?qPga6Kd5fgKFkaiQbdBU1MqQkRtSKcPAp4BSespkrRCTVvERTkZEa6osdkr3bu?=
 =?us-ascii?q?BGozyRqHYlYln4Gp9wAYg7S3A7Mu5fNO8HM6tzhqEVD72tXQENeNvCJrdahHcM?=
 =?us-ascii?q?gh7VJck2nesloubdSbM6l+iwtGIExMtET02kAyU90YnA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DrAwDC4/5f/0HhJQpigQmEcIE4CoQ1k?=
 =?us-ascii?q?UADihyQOIFoCwEBAQEBAQEBAQgBGAsMBAEBhEoCF4FUJjgTAhABAQYBAQEBAQY?=
 =?us-ascii?q?EAYZRDII4BQIDHwEGgwsBAQEDAQEiERorDAQCAQgRBAEBAQICJgICAh8HCQEVC?=
 =?us-ascii?q?AgBAQQOBQgVBIMGglUDDi+tSHaBMoQ/AYEYgk8NgiQJAYEEKoZlDoY+ggM+hCo?=
 =?us-ascii?q?+ghtCBAGBJwESATiDAYJgBIIRgSsbJIEPCAFNGmKPWIMlpElYBwOCd4kri0CBV?=
 =?us-ascii?q?4UUK4RZngefKIJ4jxKEIAIEAgQFAhaBbYEKcHCDOQlHFwINlyaFRHQCATQCBgE?=
 =?us-ascii?q?JAQEDCYtuXIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DrAwDC4/5f/0HhJQpigQmEcIE4CoQ1kUADihyQOIFoCwE?=
 =?us-ascii?q?BAQEBAQEBAQgBGAsMBAEBhEoCF4FUJjgTAhABAQYBAQEBAQYEAYZRDII4BQIDH?=
 =?us-ascii?q?wEGgwsBAQEDAQEiERorDAQCAQgRBAEBAQICJgICAh8HCQEVCAgBAQQOBQgVBIM?=
 =?us-ascii?q?GglUDDi+tSHaBMoQ/AYEYgk8NgiQJAYEEKoZlDoY+ggM+hCo+ghtCBAGBJwESA?=
 =?us-ascii?q?TiDAYJgBIIRgSsbJIEPCAFNGmKPWIMlpElYBwOCd4kri0CBV4UUK4RZngefKIJ?=
 =?us-ascii?q?4jxKEIAIEAgQFAhaBbYEKcHCDOQlHFwINlyaFRHQCATQCBgEJAQEDCYtuXIERA?=
 =?us-ascii?q?QE?=
X-IronPort-AV: E=Sophos;i="5.79,344,1602547200"; 
   d="scan'208";a="477126816"
X-IronPort-AV: E=Sophos;i="5.79,344,1602547200"; 
   d="scan'208";a="95773769"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2A=
Date: Wed, 13 Jan 2021 12:15:01 +0000
In-Reply-To: <CAMKF1srmZn=D=xOVxS6r0s9sVOS63yAj850hxyKwqFNMvb40=A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1659C9B1A8BFEC28.16504@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpXaGVuIEkgZG8gdGhpcyBJIGFtIHNlZWluZyAiTm90aGluZyBQUk9WSURFUyAnaW5pdC1zeXN0
ZW0taGVscGVycycsLCwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0g
UmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IA0KU2VudDogVHVlc2RheSwgSmFudWFyeSAxMiwgMjAy
MSA2OjEzIFBNDQpUbzogTW9uc2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVuLm1vbnNlZXNAYmFl
c3lzdGVtcy5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDog
UmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwNCg0KKioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBF
TUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3JpZ2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXph
dGlvbi4NCg0KDQpPbiBUdWUsIEphbiAxMiwgMjAyMSBhdCAxMjowOSBQTSBNb25zZWVzLCBTdGV2
ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVz
eXN0ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4NCj4NCj4NCj4gV29y
a2luZyBvbiB6ZXVzIDMuMC40LCBmb3IgYWFyY2g2NA0KPg0KPg0KPg0KPiBJICBoYXZlIGEgc3Rh
cnR1cCBzY3JpcHQgbWFraW5nIHVzZSBvZiDigJxzZXJ2aWNl4oCdIEhvdyBkbyBJIHByb3Blcmx5
IGNvbmZpZ3VyZSBpbiBzdXBwb3J0IGZvciB0aGUg4oCcc2VydmljZeKAnSBjb21tYW5kID8NCj4N
Cj4gSSBkbyBub3QgaGF2ZSBhbiBlcnJvciB3aGVuIHdvcmtpbmcgdW5kZXIgcm9ja28uDQo+DQo+
DQo+DQo+IFRoZSBlcnJvciBzZWVuIGlzIDogICAgL2V0Yy9yYzUuZC9TMTVtb3VudG5mcy5zaDog
bGluZSA3MDogc2VydmljZTogY29tbWFuZCBub3QgZm91bmQNCj4NCj4NCj4NCj4gVXNhZ2U6IEAg
bGluZSA3MDogIOKAnHNlcnZpY2UgcnBjYmluZCBzdGF0dXMgPi9kZXYvbnVsbOKAnQ0KPg0KPg0K
DQpwZXJoYXBzIGp1c3QgYWRkIGluaXQtc3lzdGVtLWhlbHBlcnMgdG8gSU1BR0VfSU5TVEFMTA0K
DQo+DQo+IFRoYW5rcywNCj4NCj4gU3RldmUNCj4NCj4NCj4gDQo+DQo=
