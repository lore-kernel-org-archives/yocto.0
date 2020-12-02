Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web09.3552.1606908861550281110
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 03:34:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=clZ6cdwO;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1606908861; x=1764588861;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=qmt6sdDnLJPx1ro8iBWZ4g3GEY2wimzqLBIl0M9Wc9E=;
  b=clZ6cdwO2fRhDqSkKlKoKHYACimBq5Cs7zzoKLJawd8UCdoTxG3WbY0y
   9lsgI+G2gE/JyYEMoK2Oe3gaQIdzK7YoavkdroFp3HvqJ/gRdwNSf9re+
   eL5ApcdQ67twhXS6GSE2uxxw+/rqDMgqFhzz4V6v5TVoc4h0FUBs28vHm
   U=;
IronPort-PHdr: =?us-ascii?q?9a23=3AAtwPUx+vVcqCWv9uRHKM819IXTAuvvDOBiVQ1KB+?=
 =?us-ascii?q?0u8VIJqq85mqBkHD//Il1AaPAdyErasa16GM7OjJYi8p2d65qncMcZhBBVcuqP?=
 =?us-ascii?q?49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6?=
 =?us-ascii?q?JvjvGo7Vks+7y/2+94fcbglVhjexe65+IRS5oAneqMUbg5ZpJ7osxBfOvnZGYf?=
 =?us-ascii?q?ldy3lyJVKUkRb858Ow84Bm/i9Npf8v9NNOXLvjcaggQrNWEDopM2Yu5M32rhbD?=
 =?us-ascii?q?VheA5mEdUmoNjBVFBRXO4QzgUZfwtiv6sfd92DWfMMbrQ704RSiu4qF2QxLzli?=
 =?us-ascii?q?wJKyA2/33WisxojaJUvhShpwBkw4XJZI2ZLedycr/Bcd8fQ2dKQ8RfWDFbAo6k?=
 =?us-ascii?q?b4UBEfcPPfpWoYf+qVsBrxq+ChWjCuzg0TJImmT53a8m3+g9DQ3L3gotFM8Ovn?=
 =?us-ascii?q?TOq9X1Mb8fXe6ywqnPyzXDdO1Z1inm6ITQbxsvvO2MUqxuccXPz0kkCh3IhUiU?=
 =?us-ascii?q?pYPrIj2Z0+oBuHWc4up7SeKglXAnpB93ojS1w8csjY/JhpkLxV/a7iV02506Ks?=
 =?us-ascii?q?emR05gYd+kC4dQuD+fN4ttWM8tX2ZouCMjx7AApJW0czQExo49yB7Dd/yIbZKI?=
 =?us-ascii?q?4hT7WeuVPTp2i3Fodb2iihqu80Wt1/DwW8u03ltIrydIkcfBu38Q2hDO98SLVu?=
 =?us-ascii?q?dx8Ee91DuP2A7e5P9ILV07m6fGJZMsxKM7mJQUsUTGBCD2mUP2gbeWd0Uj5ueo?=
 =?us-ascii?q?9+PnYq38pp+bNY97lB3xMrg0lsy4G+Q4PRACX3OH+eumyLLj/lP2QbpWgf02iK?=
 =?us-ascii?q?bZtp/aKtoBqqGlBA9V14Au4Au8ATe+yNkUgGULIEhLdR+FlYTlJlXDLf7iAfq+?=
 =?us-ascii?q?glmgiCpny+zcMrDuDZjBNHzOnK3icLt/7UNX1RA9wspF551OD7EMOPfzWkjsu9?=
 =?us-ascii?q?PGFhI5KAm0w/r/CNV6y4MeRXqDAq+HP6PWtl+F/uQvI+mKZIAPvTb9MPso6v7y?=
 =?us-ascii?q?gXMlhFMRZ6+p0oENZH+jBPtpPV6ZYHr3gtcdD2gKuxE+QPb2h12FVD5ff3eyX6?=
 =?us-ascii?q?Qi6TEnEI+qEJvPSpqjjbGDxiu3A5lba25cBl2NEHrkb4CEVO0NaCKWLM9hiDsE?=
 =?us-ascii?q?Vb25Ro86yRGhqhH6xKRhLubO/y0YspTj1MNr6OLNjhE/7id7AN6D3GGWT2B0hX?=
 =?us-ascii?q?8ISCEz3KBku0By1lCD0a1gj/xCCdNT/+9JUhs9NZPEz+16DMz9Wh7GftqSTFam?=
 =?us-ascii?q?Q86mAS0qTt4rw94OZFpyG8mljhDbxSqqBL0VmKKXC5wo6K7c2GLxJ8kug0rBgY?=
 =?us-ascii?q?8ghF4iS9AHF2Cli7Q3ow6VBYPKnl+xm6uudL8Nx2jG9DHHhSCfu0pEVyZ0UL7Z?=
 =?us-ascii?q?RjYOYUDKqszj4UHPRKPoDq4oeEMV2MmJNqxibtzykU4AVfDoJNPGeWWzlmysQx?=
 =?us-ascii?q?GSyeXfQpDtfjBX+SLbE0UJiERbxmqLKwU4Tgzp41/lTXYmQUnzbl3h9697r3Wg?=
 =?us-ascii?q?Q0Iv5wuDYlZwzKa4/wVTjvuZHaBAlokYsTss/m0nVG222MjbXp/Z/1Js?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DoAwAne8df/0LBJQpiHgEBCxIMQIRug?=
 =?us-ascii?q?TgKhDKRJppKgWgLAQEBAQEBAQEBCAEYDwgEAQGESgIXgX4mOBMCEAEBBgEBAQE?=
 =?us-ascii?q?BBgQBhlEMgjcpAYMRAQEBAwEBIhFKBwQCAQYCDgMEAQEBAgIjAwICAiYKFAEIC?=
 =?us-ascii?q?AEBBAESCIMfgmYvkGqbEnaBMoQ+AQsBhg+BDiqGaYg0PoQpPoJdBYEnARIBgzi?=
 =?us-ascii?q?CXwSTfqR6BwOCcokZiy2GZCuETZ1Xk3KLCJFyhBsCBAIEBQIVgW2BCnBwgzkJR?=
 =?us-ascii?q?xcCDZIShRSFRHQ3AgYBCQEBAwmPbYERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DoAwAne8df/0LBJQpiHgEBCxIMQIRugTgKhDKRJppKgWg?=
 =?us-ascii?q?LAQEBAQEBAQEBCAEYDwgEAQGESgIXgX4mOBMCEAEBBgEBAQEBBgQBhlEMgjcpA?=
 =?us-ascii?q?YMRAQEBAwEBIhFKBwQCAQYCDgMEAQEBAgIjAwICAiYKFAEICAEBBAESCIMfgmY?=
 =?us-ascii?q?vkGqbEnaBMoQ+AQsBhg+BDiqGaYg0PoQpPoJdBYEnARIBgziCXwSTfqR6BwOCc?=
 =?us-ascii?q?okZiy2GZCuETZ1Xk3KLCJFyhBsCBAIEBQIVgW2BCnBwgzkJRxcCDZIShRSFRHQ?=
 =?us-ascii?q?3AgYBCQEBAwmPbYERAQE?=
X-IronPort-AV: E=Sophos;i="5.78,386,1599523200"; 
   d="scan'208";a="466979818"
X-IronPort-AV: E=Sophos;i="5.78,386,1599523200"; 
   d="scan'208";a="234566695"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Nicolas Jeker <n.jeker@delisys.ch>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto
Thread-Topic: [yocto] #yocto
Thread-Index: Ada9q0Gah+MAkjdpRLyRArogF5D01gKcfVygACZO8oAABd19oA==
Date: Wed, 2 Dec 2020 11:34:19 +0000
In-Reply-To: <c718cad1f8be40c0e8fe2d533fdc685ba260b2c8.camel@delisys.ch>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.164CE3190F7C822D.7098@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGFua3MgeW91LCB0aGlzIHNob3VsZCBoZWxwLi4uDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIE5pY29sYXMgSmVrZXINClNlbnQ6
IFdlZG5lc2RheSwgRGVjZW1iZXIgMDIsIDIwMjAgNDoyMiBBTQ0KVG86IHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dICN5b2N0bw0KDQoqKiogV0FSTklO
RyAqKioNCkVYVEVSTkFMIEVNQUlMIC0tIFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVzIGZyb20gb3V0
c2lkZSBvdXIgb3JnYW5pemF0aW9uLg0KDQoNCkhpIFN0ZXZlDQoNCk9uIFR1ZSwgMjAyMC0xMi0w
MSBhdCAyMDowNiArMDAwMCwgTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyB3cm90ZToNCj4gwqANCj4gSSBzdGlsbCBoYXZlbuKAmXQgYmVlbiBhYmxlIHRv
IHRyYWNrIHRoaXMgZG93biwgY2FuIHNvbWVvbmUgdGVsbCBtZSBpbiANCj4gd2hhdCBwYWNrYWdl
IGlzIHRoZSBiYW5uZXIgb3V0cHV0IGdlbmVyYXRlZCA/DQoNCkknbSBub3Qgc3VyZSB0byB3aGF0
IGxpbmVzIHlvdSByZWZlciBieSAiYmFubmVyIiwgc28gSSBqdXN0IHdyb3RlIG15IHRob3VnaHRz
IHRvIGJvdGggYmVsb3cuDQoNCkJvdGggYXJlIHByb2JhYmx5IHByb2R1Y2VkIGJ5IGdldHR5LCBl
aXRoZXIgdXRpbC1saW51eC1hZ2V0dHkgb3Igc3lzdGVtZC1nZXR0eS4NCg0KPiBUaGFua3MsDQo+
IFN0ZXZlDQo+IEZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgW21haWx0bzogDQo+
IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmddT24gQmVoYWxmIE9mIE1vbnNlZXMsIFN0ZXZl
biBDIChVUykgdmlhIA0KPiBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFNlbnQ6IFdlZG5lc2Rh
eSwgTm92ZW1iZXIgMTgsIDIwMjAgODowOCBBTQ0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZw0KPiBTdWJqZWN0OiBbeW9jdG9dICN5b2N0bw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKioqV0FSTklORyoq
KiBFWFRFUk5BTCBFTUFJTCAtLSBUaGlzIA0KPiBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRz
aWRlIG91ciBvcmdhbml6YXRpb24uDQo+IMKgDQo+IMKgIA0KPiBJIHdhcyBnb2luZyB0aHJvdWdo
IHRoZSBrZXJuZWwgYm9vdCBvdXRwdXQgYW5kIHNhdyB0aGUgZm9sbG93aW5nIA0KPiBvdXRwdXQs
IGNhbiBzb21lb25lIHRlbGwgbWUgd2h5IHRoaXMgbWlnaHQgYmUgcG9wcGluZyB1cCBhbmQgaG93
IEkgDQo+IG1pZ2h0IG1vZGlmeSBjb25maWd1cmF0aW9uIHRvIHJlc29sdmU/IDoNCj4gLiANCj4g
LiANCj4gTElNV1MgKEJBRSBMSU1XUyBiYXNlIGRpc3RybykgMy4wLjQgc2JjYi1kZWZhdWx0IHR0
eVMwDQoNClRoaXMgImJhbm5lciIgb3V0cHV0IGlzIHRoZSBjb250ZW50IG9mIC9ldGMvaXNzdWUg
KHdoaWNoIGdldHMgaW5zdGFsbGVkIGJ5IHRoZSBiYXNlLWZpbGUgcGFja2FnZSkuDQoNCj4gLXNo
OiBjYW5ub3Qgc2V0IHRlcm1pbmFsIHByb2Nlc3MgZ3JvdXAgKDExMzcpOiBJbmFwcHJvcHJpYXRl
IGlvY3RsIGZvciANCj4gZGV2aWNlDQo+IC1zaDogbm8gam9iIGNvbnRyb2wgaW4gdGhpcyBzaGVs
bA0KPiAuIA0KDQpUaGUgZXJyb3IgeW91IHNlZSBhYm91dCB0aGUgc2hlbGwgaXMgcHJvYmFibHkg
Z2V0dHkgZmFpbGluZyB0byBvcGVuIGEgc2hlbGwuDQoNCk1heWJlIHRoaXMgY291bGQgYmUgcmVs
ZXZhbnQ6DQpodHRwczovL3VuaXguc3RhY2tleGNoYW5nZS5jb20vcXVlc3Rpb25zLzMzODIxNC9l
cnJvci10cnlpbmctdG8tcnVuLWFnZXR0eS1pbi1hLXJ1bml0LWJhc2VkLWxpbnV4LWluc3RhbGxh
dGlvbg0KDQo+IC4gDQo+IMKgIA0KPiBUaGFua3MsDQo+IFN0ZXZlDQoNCg0K
