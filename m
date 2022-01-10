Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BF62C433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 14:25:02 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.32272.1641824700688154748
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 06:25:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=WUwBcaxw;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1641824700; x=1799504700;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=Gheg0UihfwHlE0/T2TZ8bRVsTGRYet1JFyrNQQaJcac=;
  b=WUwBcaxwTvPHsyMH+VeC0KauJfN+TXwlhgo1xN6D/TP5Nf2qUlANXLX1
   jzcUiweT8Qx8aeH44nJPVMMi7oIWrtqVhMTC3D6F0nSf5Grx3JCLxSr5Y
   ETXbe+z/tq3k33V/uytstr1iAp6aXoJWgwv/l1D9diNqowa+H7N52uvEh
   0=;
IronPort-SDR: 
 yR4B5fohrCFnPI4BTo28ecjSy6H5ap1togNmzsX0AnmMVhKjaBIoWHyFY3iZ16AJH46k5lJWpV
 on17D295/Xzw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AVBpGWhQkqjJIxQboe6v5LALYj9psoqWYAWYlg?=
 =?us-ascii?q?6HPa5pwe6iut67vIFbYra00ygOTBMOCtqsP0LSempujcFRI2YyGvnEGfc4Ef?=
 =?us-ascii?q?D4+ouJSoTYdBtWYA1bwNv/gYn9yNs1DUFh44yPzahANS47xaFLIv3K98yMZF?=
 =?us-ascii?q?AnhOgppPOT1HZPZg9iq2+yo9JDffRhEiCCgbb5yMRm6ogvcu8gLioZ+N6g9z?=
 =?us-ascii?q?QfErGFVcOpM32NoIlyTnxf45siu+ZNo7jpdtfE8+cNeSKv2Z6s3Q6BWAzQgK?=
 =?us-ascii?q?GA1+dbktQLfQguV53sTSXsZnxxVCAXY9h76X5Pxsizntuph3SSRIMP7QawoV?=
 =?us-ascii?q?Tmk8qxmUwHjhjsZODEl8WHXks1wg7xdoBK9vBx03orYbJiIOPZiYq/ReNUXT?=
 =?us-ascii?q?ndDUMlMTSxMGoOyYZUSAeodM+hWrIf9qFkPrRSiCgejC/jiyiNTiX/0waE2z?=
 =?us-ascii?q?/gtHAPA0Qc9H9wOqnPUrNDtOascVu61y6/IzS7dYPxIwjfx8JXDfA09of6SQ?=
 =?us-ascii?q?7J/b8zRwlQxGgjYilmfp5HrMzab2u8QtGWb9PZgWvyxi2E5rQF9uD2vxsAqi?=
 =?us-ascii?q?onSmI0a1EvE+D5iz4kvO9K4U056YcW4EJROsiGaLJF6Td8lQ2FtoSs3zKANt?=
 =?us-ascii?q?pGnciYQ0psn2wLfZOKdc4iO+h/vSeifLSp8iX57Zr6ygwq//Ey+xuD/VcS63?=
 =?us-ascii?q?lhEojRZn9TRqn0D2Bzd58yFR/Vz4EusxTaC2x7c5+xZLk45kajWJpg8ybA+k?=
 =?us-ascii?q?ZoTtF7MHi7wmEjujK6WcVkr+vSv6+T/eLXmoZ2cOJFohQHiKKgunda/Aes+P?=
 =?us-ascii?q?wMTXGab4fyx2KD/8UHjTrhHjOc6nrfHvJ3aP8gWp6+0DxdI3oo/8RqyADir3?=
 =?us-ascii?q?M4XkHUdMV5IeBSKhJXzNV7UOvD3F/K/jkypkDds2v/JIKXsAo7ILnjfiLfhe?=
 =?us-ascii?q?qt961JExAoz099f45VUB6kdL/3pQU/+qNnYDgQ9PgGwwOvrFMtx2pkYWW2VG?=
 =?us-ascii?q?KOWK7ndvkGT5uMvOOmMeJEauDPmK/Q/+/Huino5lUccfamvw5QXdGi1Eul6L?=
 =?us-ascii?q?0mDb3fhgM0NHXkUsgc+VuDniVyPXSZWZ3moXqI84j87CJihDYfGXo2tm6CB0?=
 =?us-ascii?q?zmlHpJIYGBKEFWMEXDud4WfRfgDdjmSL9R6nTMeS7ehUI8g1QqytADkzrpnN?=
 =?us-ascii?q?fDY9TEftZLmzNR1/fHclQku9TxoCMSQy2GMT2ZokWMUQD87x6R/oU1mylefy?=
 =?us-ascii?q?qh0mfxZFdtP6PNVVQc6LYTcz+t4C9/sRg3BYs2FSFG8QtWpUnkNSYcLwtQOa?=
 =?us-ascii?q?lxxU+2/lBzC0mL+Gb4el7WRCNos77jQ3nXZI8d71mbI07Qng1A6Q8xJc2q8i?=
 =?us-ascii?q?fg7v0LCAIXVlG2dlr22buIN2yXR83+ZymiDt10eVxR/G+2RTHcUekz+qdXi+?=
 =?us-ascii?q?liEXrilFbM/KAxDxMWebKxQZYu6o09BQaKpHdPYeG+8gCP4PgqF2L6KJKGiO?=
 =?us-ascii?q?1gmnW+VXFMYnh4e+zCDMg4lCyq6i2jXASd/Dk7iZliq+u57/iDoBnQoxh2HO?=
 =?us-ascii?q?hUyn4G+/QQY0LnFE6t74w=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AiHRTY63UCgw//WTxSvbD5flzkn2cJEfYwER7X?=
 =?us-ascii?q?KvMYLTBsI5bpzYOmDNNDT2FO/uLYjD2eo92Ydm18EMB7ZbTzdNqTFY+3Hw8F?=
 =?us-ascii?q?HgiRegppTi6wuUcB84ZRyH6ZBoPA/42N5+QfKjYcleG/k33auG49SEmvU21b?=
 =?us-ascii?q?uOU5NDsa3gZqTBMFX9JZSJLw4bVs6Yw6TSLK1rlVeDa/6UzDGSYNwtcaQr43?=
 =?us-ascii?q?U4iRCRH55wesBtA1rA3iGsiUFX2zxH5B7pHTU29wueRf2VaIgK6b76rILCR9?=
 =?us-ascii?q?WrC9BI2W4L1yuy9dERMSLffJhmVlndTQO6phR0qSi4ai/59b6VaMx0KzWvX9?=
 =?us-ascii?q?zxy4IwlWZiYUhskIKDK3uEaVQJVHjpWN6RL467cPXW6qoqYyEiun37En6k3U?=
 =?us-ascii?q?hhrYtZFkgpwKSQUnRACExgcaRufgMqywamnUa99gc8/K9HxO4ESsW0myivWZ?=
 =?us-ascii?q?cvK67irr77ivIceh2h23JoTW6iAD/f1oAFHNHzoCyCj8H9NYH7moNqVuw=3D?=
 =?us-ascii?q?=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ax+6FmKO7nuK0KMBcTv+jsMiBIKoaSvp037?=
 =?us-ascii?q?FhvHoBLCC9Ffbo9PxG/c566faaslkssR0b8+xoGZPwJU80lqQV3WByB9mftA?=
 =?us-ascii?q?iPghrOEGgK1+LfKlbbdxEWgdQ36U4PScVD4aXLfDpHZJrBkW+F+2tK+rG6zJ?=
 =?us-ascii?q?w=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ANAwCzQNxh/0LhJQpaHgEBCxIMQAm?=
 =?us-ascii?q?BRQuDJYFCC4Q8kRMDhgyKKYwYFIFoCwEBAQEBAQEBAQgBKgcQBAEBhQYCF4M?=
 =?us-ascii?q?vJjUIDgECBAEBARIBAQYBAQEBAQYEAYEbhWgNgjUpAYNjAQEBAQMBIhFRBAI?=
 =?us-ascii?q?BCA0EBAEBAQICERUCAgImChUICAEBBAESCIJyBa4ENXqBMRoCZYl6gRAqgWa?=
 =?us-ascii?q?FRocGgg1DhD8+gmMFgRYICgESAWCCWYJlBI9qFIJOQQdlkyeDHKl8BwODQop?=
 =?us-ascii?q?4jGuHVzAVg3CBSoo/hj4Di3CFQZY6IIIknjUNBzeEagIEAgQFAhaBYgFGXHB?=
 =?us-ascii?q?wUIJpCUgXApc0hUp0OAIGAQoBAQMJjg6BEAEB?=
X-IPAS-Result: =?us-ascii?q?A2ANAwCzQNxh/0LhJQpaHgEBCxIMQAmBRQuDJYFCC4Q8k?=
 =?us-ascii?q?RMDhgyKKYwYFIFoCwEBAQEBAQEBAQgBKgcQBAEBhQYCF4MvJjUIDgECBAEBA?=
 =?us-ascii?q?RIBAQYBAQEBAQYEAYEbhWgNgjUpAYNjAQEBAQMBIhFRBAIBCA0EBAEBAQICE?=
 =?us-ascii?q?RUCAgImChUICAEBBAESCIJyBa4ENXqBMRoCZYl6gRAqgWaFRocGgg1DhD8+g?=
 =?us-ascii?q?mMFgRYICgESAWCCWYJlBI9qFIJOQQdlkyeDHKl8BwODQop4jGuHVzAVg3CBS?=
 =?us-ascii?q?oo/hj4Di3CFQZY6IIIknjUNBzeEagIEAgQFAhaBYgFGXHBwUIJpCUgXApc0h?=
 =?us-ascii?q?Up0OAIGAQoBAQMJjg6BEAEB?=
X-IronPort-AV: E=Sophos;i="5.88,277,1635206400";
   d="scan'208";a="441615735"
IronPort-SDR: 
 C66gwXDXWCO+2/TpH4HM9aoGO4qr7/oIpYq3BKF+xu5+R5fBRy+YiUPPhW28qRRWVbMV8Kn27v
 UkUp676le7kw==
X-IronPort-AV: E=Sophos;i="5.88,277,1635206400";
   d="scan'208";a="21529073"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] hosttools
Thread-Topic: [yocto] hosttools
Thread-Index: AdgGJCzjovtP4BJvR0OCbr60BHhOWgALaiGAAAkQSZA=
Date: Mon, 10 Jan 2022 14:23:57 +0000
In-Reply-To: 
 <16d997f93df7f3c05b21b62ce66a4ced3ef5a4fc.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 14:25:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55776
Message-Id: <20220110142502.4BF62C433F5@smtp.lore.kernel.org>

DQpUaGFuayB5b3UsIHRoaXMgZXhwbGFpbnMvZml4ZXMgYW4gYW5vbWFseSBJIHNhdyB3aGlsZSBi
dWlsZGluZyB1bmRlciBKZW5raW5zLi4uDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4g
DQpTZW50OiBNb25kYXksIEphbnVhcnkgMTAsIDIwMjIgODo0MyBBTQ0KVG86IE1vbnNlZXMsIFN0
ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPjsgeW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gaG9zdHRvb2xzDQoNCkV4dGVy
bmFsIEVtYWlsIEFsZXJ0DQoNClRoaXMgZW1haWwgaGFzIGJlZW4gc2VudCBmcm9tIGFuIGFjY291
bnQgb3V0c2lkZSBvZiB0aGUgQkFFIFN5c3RlbXMgbmV0d29yay4NCg0KUGxlYXNlIHRyZWF0IHRo
ZSBlbWFpbCB3aXRoIGNhdXRpb24sIGVzcGVjaWFsbHkgaWYgeW91IGFyZSByZXF1ZXN0ZWQgdG8g
Y2xpY2sgb24gYSBsaW5rLCBkZWNyeXB0L29wZW4gYW4gYXR0YWNobWVudCwgb3IgZW5hYmxlIG1h
Y3Jvcy4gIEZvciBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGhvdyB0byBzcG90IHBoaXNoaW5nLCBh
Y2Nlc3Mg4oCcQ3liZXJzZWN1cml0eSBPbmVTcGFjZSBQYWdl4oCdIGFuZCByZXBvcnQgcGhpc2hp
bmcgYnkgY2xpY2tpbmcgdGhlIGJ1dHRvbiDigJxSZXBvcnQgUGhpc2hpbmfigJ0gb24gdGhlIE91
dGxvb2sgdG9vbGJhci4NCg0KDQpPbiBNb24sIDIwMjItMDEtMTAgYXQgMTM6MjEgKzAwMDAsIE1v
bnNlZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+
IMKgDQo+IEhvdyBkb2VzIHlvY3RvIGRldGVybWluZSB0aGUgbG9jYXRpb25zL3BhdGhzIHRvIHRo
ZSDigJxob3N0dG9vbHPigJ0gPw0KPiDCoA0KPiBJcyB0aGVyZSBwcmVjZWRlbmNlIG9yZGVyIGVz
dGFibGlzaGVkIGZvciBsb2NhdGluZyB0aGUg4oCcaG9zdHRvb2xz4oCdID8sIMKgDQo+IGFuZCBo
b3cgd291bGQgb25lIHVwZGF0ZSB0aGUgc2VhcmNoIGxpc3Qgc28gYXMgdG8gcGljayB0aGUgdG9v
bCBmcm9tIGEgDQo+IGRpZmZlcmVudC9zcGVjaWZpYyBsb2NhdGlvbiA/DQo+IMKgDQoNCkl0IHVz
ZXMgUEFUSCwganVzdCBsaWtlIHRoZSBzaGVsbCB3b3VsZC4gWW91J2QgYWRqdXN0IFBBVEggdG8g
aW5mbHVlbmNlIGl0Lg0KDQpPbmNlIGl0IGlzIGNvbnN0cnVjdGVkIHlvdSBoYXZlIHRvIHJlbW92
ZSB0aGUgcGF0aCB0byBjYXVzZSBpdCB0byBiZSByZWdlbmVyYXRlZC4NCg0KQ2hlZXJzLA0KDQpS
aWNoYXJkDQoNCg==

