Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.5814.1626776902288631498
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jul 2021 03:28:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=NjvKqop3;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1626776901; x=1784456901;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=QrPc+THUL/f9D/LvtXpJX5fEyaVwFYXWPwi+DAprcVo=;
  b=NjvKqop3+GCI1Xs8pp8suDlwVpV5gEatBHQkhbmRZz8hS/+f6qX25Vkz
   Dj5y36l9oT/Dmy+9p9ZLGgvUJmJohN26z54xbfchKdyTtgSTlIcrx52Oc
   ecJaencVRT7BLPDJ5Sq3ICgQCtuoFt/WSAP9Z4MdRi5dzYiewp4Jp3SSe
   I=;
IronPort-SDR: FxmUw9TcjIoPXcXLJDxKtsEqOVIBY7LnhIjZcBXCIhrz3q8oh2SEHUhW0HMX4wtoNDkwRF4JBr
 3ayT2mtjY1zw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AiufQWB8EjX50BP9uWfK7ngc9DxPPW53KNwIYo?=
 =?us-ascii?q?qAql6hJOvz6uci4ZAqEvL4y0xeJBdydt6sVzbKO8ujJYi8p2d65qncMcZhBB?=
 =?us-ascii?q?VcuqP49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMB?=
 =?us-ascii?q?x7xKRR6JvjvGo7Vks+7y/2+94fcbglWmDaxe71/IAi5oQjTtMQdnI9uJrosx?=
 =?us-ascii?q?hfTrXZEZuBbyXl0KV6Pmhr3+9u98oNk/ylMofwq6tROUb/9f6Q2TLxYCCopP?=
 =?us-ascii?q?mUo78D1thfNUBWC6GIEXmoZjhRHDQ7F7ArnXpjqqSv1qvB92CiBMsLoS70/R?=
 =?us-ascii?q?Cmv4L1qSB/sjycHKiI5/WTKgcF+kK5XvBSsrAFkzoXKfI+aKuZxfqLFfdMbW?=
 =?us-ascii?q?2VBWNpRVzdcCY+4docDEvYNMfpdo4T7ulAArwaxBRO0Ce3v1DFGm2P206M53?=
 =?us-ascii?q?eQvEw7G3RAvEd0Bv3nPsNX6L6USXfypwKXUzzjOae5d1zfn6IjPdxAsuf+AU?=
 =?us-ascii?q?7V3ccrX0kkgCR3Kjk6IpYf4Ij2VyvoCs3aF4OpmSOmilXMspwV/rTayw8sgh?=
 =?us-ascii?q?JTCi4UOylDY6yp53pg6JduiRE5+Zt6kFoBQuD+EOIttWc4tWHtntzghyrwGo?=
 =?us-ascii?q?p67YDYFyJE8xxLFd/OHdI2I7wvlWe2MLjh2mGhrd6ijhxau70eg0Ov8W9Gp3?=
 =?us-ascii?q?FhEsyZIlsfAum4J2hHP7sWLVPhw80Sv1ziByQze9vxJLFw7m6TbL5MswLA+m?=
 =?us-ascii?q?oQPvEnDACP7l1j7gqCSe0gm/OWj9urpYrLjppCGNo90jBnzM6QpmsOjHeQ4N?=
 =?us-ascii?q?RAOX3Kc+eS+yrLs4VH5TK9Njv0snanUto3RK8cDpqOhHgNZzpwv5hi9Aju8z?=
 =?us-ascii?q?tgUg3kKIEhEdR+Gl4TlJk3CLOr3APqwmVihny1ny+3GM7DnH57DNGLMkK37c?=
 =?us-ascii?q?rZ480NczQ0zws1B6J9MEbEBJe7zWlf2tNzFEh81Kwy0zPjjCNV6zo4RRXiAA?=
 =?us-ascii?q?rSFP6PXql+F4uYiLuqQaIMLojr9LeIq6+T1gnAjh1AdZqmo3YALaH+mG/RmO?=
 =?us-ascii?q?F+VbmbrgtcECWsKvww+Q/L2iFCaTDJfe2y+Uqw+6z0hFo6qE4fOSpqsjbGAx?=
 =?us-ascii?q?Cu7G4dZZmFCClCCC3focICEVu8XaCKOPMBhjCILVb67R48k0hGushT6xKR5I?=
 =?us-ascii?q?erP4SAXrojs28Zu5+zTjhEy6SJ7D8GG022XU250mWYISycs3K9juUx91kuD0?=
 =?us-ascii?q?a9gjv1YEtxc++9JUgAhOJ7Yzux6EMzyWhnbctaJT1apXsmmATYpTtIrxN8OY?=
 =?us-ascii?q?VhyFMm+jhzZ2CqqGbAVxPS2Aocp+Pfcw2TpPJQ6jHLHz7U6yUghSddILXehh?=
 =?us-ascii?q?KN0607UHYGOnAKIkK22cuMB2jXQ/jS+y3GTtn1VQBIlUbnZRWtNIQzSrM/l/?=
 =?us-ascii?q?QXTSLSyDqw9NQlMwtLELbFFLdKunFJNWPCkJdLFfmjip2DlPxGT3fumcZD2f?=
 =?us-ascii?q?GNViD/aE1MsmR0J4XGANA4/QCympjSNIiZpEAelRkTq6uRzszfzdVM50QyMJ?=
 =?us-ascii?q?2Ypl4eOu1Rd0eeARu0e2PQBvyE6pjhvNFy00snHEMaNohEnd6JZN4BuqGxb3?=
 =?us-ascii?q?H7U4lQudqerKLpv0xtHK1wfgg=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AbL2nc641/KkuG6YFWAPXwCTXdLJyesId70?=
 =?us-ascii?q?hD6qkoc20pTiSZ//re+cjzpiWE9Ar5P0tQ6uxoWZPwMU80mqQFmLX5UY3SPz?=
 =?us-ascii?q?UO/VHYVr2K4LGI/9SCIVyNygc+79YZT0EWMrSZYzkbsS+52njCLz9J+qjzzE?=
 =?us-ascii?q?nCv5a7854Zd3ANV0gW1XYfNu/0KDwVeCB2QbYpHpuV4cRK4wGtfHwGB/7QOp?=
 =?us-ascii?q?ACZYf+Tpbw5e3biFY9dmAaABzkt16VAEmQKXSlNzklIkJy/Ys=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DHAACdpPZg/0LhJQpaHQEBAQEJARI?=
 =?us-ascii?q?BBQUBQAmBPwUBCwGDIYFCC4Q9kWEDhXyJcIwGgWgLAQEBAQEBAQEBCAEqCww?=
 =?us-ascii?q?EAQGEVwIXgmcmNwYOAgQBAQESAQEGAQEBAQEGBAGBDYVoDYI4BQIDHwEGg10?=
 =?us-ascii?q?BAQEEASIRGisMBAIBCA0EBAEBAQICERUCAgImCQEVCAgBAQQOBQgVBIJMBYM?=
 =?us-ascii?q?WpkU1eoEyGgJlg00BgRqFKAkBgQYqAYFkhRYPhmKCDUOEOj6CYgQBgRYICgE?=
 =?us-ascii?q?SATgVE4JYgmQEgkAUgQ5wUEABBwFPGmaRboMRiG2fEwcDgySKNYc3hQGHOis?=
 =?us-ascii?q?Sg2OBR4oXhiUDi0yFKaI6kygNBh4ZhGYCBAIEBQIWgXEyXHBwgzkJRxcClzK?=
 =?us-ascii?q?FSnMCATUCBgEKAQEDCYowXIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DHAACdpPZg/0LhJQpaHQEBAQEJARIBBQUBQAmBPwUBC?=
 =?us-ascii?q?wGDIYFCC4Q9kWEDhXyJcIwGgWgLAQEBAQEBAQEBCAEqCwwEAQGEVwIXgmcmN?=
 =?us-ascii?q?wYOAgQBAQESAQEGAQEBAQEGBAGBDYVoDYI4BQIDHwEGg10BAQEEASIRGisMB?=
 =?us-ascii?q?AIBCA0EBAEBAQICERUCAgImCQEVCAgBAQQOBQgVBIJMBYMWpkU1eoEyGgJlg?=
 =?us-ascii?q?00BgRqFKAkBgQYqAYFkhRYPhmKCDUOEOj6CYgQBgRYICgESATgVE4JYgmQEg?=
 =?us-ascii?q?kAUgQ5wUEABBwFPGmaRboMRiG2fEwcDgySKNYc3hQGHOisSg2OBR4oXhiUDi?=
 =?us-ascii?q?0yFKaI6kygNBh4ZhGYCBAIEBQIWgXEyXHBwgzkJRxcClzKFSnMCATUCBgEKA?=
 =?us-ascii?q?QEDCYowXIERAQE?=
X-IronPort-AV: E=Sophos;i="5.84,254,1620691200"; 
   d="scan'208";a="394546794"
IronPort-SDR: El62nrmetW1KA2Vbf/4w3UMjeaX2ENkHnk21I7wf/sAuddihbmhgGkgBNDmi41Z8neWrbD6QXT
 bHXHn7EPMNMg==
X-IronPort-AV: E=Sophos;i="5.84,254,1620691200"; 
   d="scan'208";a="8805280"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Ross Burton <ross@burtonini.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto
Thread-Topic: [yocto] #yocto
Thread-Index: Add8o3pqHl2GNsJGSm+CiKS1UnKvfwAxBMYAAAVwr3A=
Date: Tue, 20 Jul 2021 10:27:18 +0000
In-Reply-To: <CAAnfSTtAeE9YN8RrM0QyoYqtQaARLpUYmSAzj_+pe8YpU02rGw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.169378F95810F934.9501@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGFua3MuLi4NCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUm9zcyBC
dXJ0b24gPHJvc3NAYnVydG9uaW5pLmNvbT4gDQpTZW50OiBUdWVzZGF5LCBKdWx5IDIwLCAyMDIx
IDU6MDMgQU0NClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVz
eXN0ZW1zLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBS
ZTogW3lvY3RvXSAjeW9jdG8NCg0KRXh0ZXJuYWwgRW1haWwgQWxlcnQNCg0KVGhpcyBlbWFpbCBo
YXMgYmVlbiBzZW50IGZyb20gYW4gYWNjb3VudCBvdXRzaWRlIG9mIHRoZSBCQUUgU3lzdGVtcyBu
ZXR3b3JrLg0KDQpQbGVhc2UgdHJlYXQgdGhlIGVtYWlsIHdpdGggY2F1dGlvbiwgZXNwZWNpYWxs
eSBpZiB5b3UgYXJlIHJlcXVlc3RlZCB0byBjbGljayBvbiBhIGxpbmssIGRlY3J5cHQvb3BlbiBh
biBhdHRhY2htZW50LCBvciBlbmFibGUgbWFjcm9zLiAgRm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24g
b24gaG93IHRvIHNwb3QgcGhpc2hpbmcsIGFjY2VzcyDigJxDeWJlcnNlY3VyaXR5IE9uZVNwYWNl
IFBhZ2XigJ0gYW5kIHJlcG9ydCBwaGlzaGluZyBieSBjbGlja2luZyB0aGUgYnV0dG9uIOKAnFJl
cG9ydCBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0bG9vayB0b29sYmFyLg0KDQoNCk5vdCBkZWxldGlu
ZyB0aGUgc291cmNlIHRyZWUgaXMgdGhlIGRlZmF1bHQgYmVoYXZpb3VyLiAgSXQgc291bmRzIGxp
a2UgeW91J3ZlIGluaGVyaXRlZCBybV93b3JrLCBzbyBpZiB5b3Ugd2FudCB0byBub3QgZGVsZXRl
IGJ1aWxkIHRyZWVzIGFmdGVyIGNvbXBsZXRpb24gdGhlbiBhZGQgdGhlIHJlY2lwZSBuYW1lIHRv
IFJNX1dPUktfRVhDTFVERS4NCg0KUm9zcw0KDQpPbiBNb24sIDE5IEp1bCAyMDIxIGF0IDE1OjIy
LCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2
ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToN
Cj4NCj4NCj4NCj4gV2hhdCBmbGFnIGRvIEkgc2V0IGluIG9yZGVyIHRvIGtlZXAgdGhlIHNvdXJj
ZSBjb2RlIGZvciBhIHJlY2lwZSBiZWluZyBidWlsdCB3aXRoaW4gdGhlIGJ1aWxkIHRyZWUgYWZ0
ZXIgY29tcGlsYXRpb24gID8NCj4NCj4NCj4NCj4gVGhhbmtzLA0KPg0KPiBTdGV2ZQ0KPg0KPg0K
PiANCj4NCg==
