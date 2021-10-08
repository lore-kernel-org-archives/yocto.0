Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8506C433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 15:30:29 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.10958.1633707026050875164
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 08:30:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=FYYyuUjk;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1633707026; x=1791387026;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=3P2DIP+cS1dyeKw74+/bi2vXcfrqlp6tuOuxNZrNOqU=;
  b=FYYyuUjkMj8oEHAXkSqwkTQ2esRVJ+HiScc7qNph+IZK2o200N6NpKYr
   NovRfCoFCZ9d76aQMrPxVOa3A9d55bbamZWDtGZPpzJDhg8aViDLGJFCh
   ZdRHq5b1SyucB/rzWS0JZNeYdBz9FP4NLefo63hCPiI5jKrAq8xPHmjpU
   c=;
IronPort-SDR: 
 OMwN6PZtUPPsm5SgI43QkWC4F8nLe3WESEwcXptlrw+7OZfIAWztF8qnRNy/fZ7tqeb0z2MNZU
 61RFkstvWtoA==
IronPort-PHdr: =?us-ascii?q?A9a23=3A3cYofRIyeYFbIYIrytmcuGxhWUAX0o4c3iYr4?=
 =?us-ascii?q?5Yqw4hDbr6kt8y7ehCFvbM31AeCAtyTwskHotKei7rnV20E7MTJm1E5W7sIa?=
 =?us-ascii?q?SU4j94LlRcrGs+PBB6zBvfraysnAJYKDwc9rDm0PkdPBcnxeUDZrGGs4j4OA?=
 =?us-ascii?q?BX/Mhd+KvjoFoLIgMm7yfy+94fNbwlUmDaxbrF/IAirpgjNq8cahpdvJLwsw?=
 =?us-ascii?q?RXTuHtIfOpWxWJsJV2Nmhv3+9m98p1+/SlOovwt78FPX7n0cKQ+VrxYES8pM?=
 =?us-ascii?q?3sp683xtBnMVhWA630BWWgLiBVIAgzF7BbnXpfttybxq+Rw1DWGMcDwULs5Q?=
 =?us-ascii?q?iqp4bt1RxD0iScHLz85/3/Risxsl6JQvRatqwViz4LIfI2ZMfxzdb7fc9wHX?=
 =?us-ascii?q?2pMRsZfWTJcDIOgYYUBDOQBMuRZr4bhqFUBogCzBRW3C+Pt1jNEmmP60K883?=
 =?us-ascii?q?u88EQ/GxgsgH9cWvXjaq9v1M6ESUfurw6bW1jXPd+5d1yrh6IfWbBAuv/eMV?=
 =?us-ascii?q?q9ufMHMzUUgGR7LglCepYf4OD6VzfgNvHaF7+V+U+KjkWsnqwZ3oji02Mgjl?=
 =?us-ascii?q?JLJi5kOxV/e6yp524Y0JcakSEFlZN6kC4FcuD2dN4tzW84vRXxjtykmxLMco?=
 =?us-ascii?q?5G7YDQKx4o9xx7Zc/GLboaG7g/nWeqPPzt1gG5odbahixux8kWuxOPyWteo3?=
 =?us-ascii?q?VtXsidLndnCu3QP2hLd9MSKVvtw8lmu1DuS2A7e7uNJLEYpnqTVLJ4hx6Q/l?=
 =?us-ascii?q?psVsUnbHi72n1n5jLORdkU84Oio7Obnbav6qZ+ALYN0jRv+Mqsol8eiAuo4K?=
 =?us-ascii?q?hADU3WH9eim2rDu/1f1TKtUgvA2iKXUsZHXKdwGqqKlGQNY3Yku5wywAju8z?=
 =?us-ascii?q?dgVnX8KJ09fdh2dlYjmIVTOLej9Dfe4nlujji9mx+vDPr39GpXNKWXDkKv5c?=
 =?us-ascii?q?bZ99UFczA0zwMhD6J1OEbEOPPfzWlT1udHcDRI1LxK4z/zhCNpnzI8RQniAD?=
 =?us-ascii?q?bGCMKLSql+I+vwgI+yXZIMPpDn9LP0l6+bvjX8/h1AdYbGk0YYLZHyiEPlrI?=
 =?us-ascii?q?V+VbWTyjtoBC2sHvwszQPTviFKYUD5TY3iyX7g75jE+EI+mFpvDSZ6zgLOf2?=
 =?us-ascii?q?ie3BJhWZmdAClCXD3jnaZ6EVuwXZy2IPMBhiTwFVaO9S4A/0BGurxX2xKZgL?=
 =?us-ascii?q?urR4iEYr47s1MBp5+3PkhE/7Tx1D8OB3GGRSGF5hWcIRz4t3KBjukxx0FeC0?=
 =?us-ascii?q?a9kjPxEEtxT/+lJUgA4NZHC0+N6F8r+WgXbfteGGx6aRYDsJDAtUts1h5cnZ?=
 =?us-ascii?q?Vt/UZ32hxbe3WyvAqMJnrijBZoo/6aa1H/0cYI1gWfB37Ump10nWddUc3yhj?=
 =?us-ascii?q?bJ47xLUBYPCjwOejangPfAN2yXR80+HzHGSpwdJVwVsVr3fWnISbVeQqs72s?=
 =?us-ascii?q?BDsVbirXP4CNQ1axMOZbuNxdtD3gFMOb7+jBe+fKSrlgHu9GxuOgLaLapHnd?=
 =?us-ascii?q?n411izQE1kfjw0W5jCNMg1oVXTpmH7XEDE7TQGnWEjr6+Qr7SrjFicJ?=
IronPort-Data: =?us-ascii?q?A9a23=3AYZ4UEKouscGLEoPdYsvwYgiZEf1eBmIyZxIvg?=
 =?us-ascii?q?KrLsJaIsI4StFCztgarIBnTM6uCZDD2c95zaYu18EwDuJ7Tm99jGgdppHw3R?=
 =?us-ascii?q?nwX9OPIVI+TRqvS04N+DSFhoHqKZKzyU/GYRCwPZiKa9krF3oTJ9yEmjPjQH?=
 =?us-ascii?q?uqkUoYoBwgoLeNaYHZ54f5cs7Nh6mJYqYDR7zKl4bsekeWGULOW82Ic3lYv1?=
 =?us-ascii?q?k62gEgHUMIeGd8vlgdWifhj5DcynpSOZX4VDfnZw3DQGuG4EgMmLtsvwo1V/?=
 =?us-ascii?q?kuBl/ssItisib3+aRxbEuaIew6HzHBfVrOzmQRPozd02aE+XBYeQR4PzW7W2?=
 =?us-ascii?q?YorlZMT6/RcSi9wVkHIsP8BXgdVFWd7Oqtd9bLcCXK2vNeC1FHLdmCqyPJrZ?=
 =?us-ascii?q?K0zFdFBpbYvUDAeq5T0LxhINHhvndme0bWwVu5EgsU4MNKtLYQUpnZ41zbbA?=
 =?us-ascii?q?P06B5fZTM33CXVwtNsrrpkWW62BIZBDNHwxMnz9j9R0Eg9/IPoDcC2A3BETq?=
 =?us-ascii?q?wFllW8=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AdGgBl6pRcM4I7/xb0m1QBjkaV5oreYIsim?=
 =?us-ascii?q?QD101hICG9HfbxqynDpp8mPHzP5wr5OktMpTnoAsC9qBjnmaKdj7N6AV7bZm?=
 =?us-ascii?q?nbkWGvK5xv6pan3ibpHDfw+vUY2aBrdaV/D9OYNzlHYK7BjjWFLw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ArAABqY2Bh/0LhJQpaHQEBAQEJARI?=
 =?us-ascii?q?BBQUBQAmBPAgBCwGDH4FCC4Q8iCOIaQOGCIoMjAYUgWgLAQEBAQEBAQEBCAE?=
 =?us-ascii?q?qBxAEAQGEfgIXgjImNAkOAQIEAQEBEgEBBgEBAQEBBgQBgSOFaA2CNSkBg2M?=
 =?us-ascii?q?BAQEBAwEiEVEEAgEIDQQEAQEBAgIRFQICAiYKFQgIAQEEARIIgmUFrzo1eoE?=
 =?us-ascii?q?xGgJliXgJAYEGKgGBZYUwgnaDfYINQ4Q/PoJjBYEWCAoBEgFgglmCZQSKeBS?=
 =?us-ascii?q?CTkEHbDmSPIMSqGwHA4MwikaMUYdBLxSDaoFIiiSGKwOLY4UvliWgEw0GN4R?=
 =?us-ascii?q?oAgQCBAUCFoFhSFxwcIM5CUgXAo47FohkhUp0OAIGAQoBAQMJk2GBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2ArAABqY2Bh/0LhJQpaHQEBAQEJARIBBQUBQAmBPAgBC?=
 =?us-ascii?q?wGDH4FCC4Q8iCOIaQOGCIoMjAYUgWgLAQEBAQEBAQEBCAEqBxAEAQGEfgIXg?=
 =?us-ascii?q?jImNAkOAQIEAQEBEgEBBgEBAQEBBgQBgSOFaA2CNSkBg2MBAQEBAwEiEVEEA?=
 =?us-ascii?q?gEIDQQEAQEBAgIRFQICAiYKFQgIAQEEARIIgmUFrzo1eoExGgJliXgJAYEGK?=
 =?us-ascii?q?gGBZYUwgnaDfYINQ4Q/PoJjBYEWCAoBEgFgglmCZQSKeBSCTkEHbDmSPIMSq?=
 =?us-ascii?q?GwHA4MwikaMUYdBLxSDaoFIiiSGKwOLY4UvliWgEw0GN4RoAgQCBAUCFoFhS?=
 =?us-ascii?q?FxwcIM5CUgXAo47FohkhUp0OAIGAQoBAQMJk2GBEAEB?=
X-IronPort-AV: E=Sophos;i="5.85,358,1624320000";
   d="scan'208";a="417809986"
IronPort-SDR: 
 NXHRoyVomd69pJodHcFFmow4ofv4QM31QkvS1J9VH3cPSnCkCmFXkeub8WB93tSpgAsbJL6Nwg
 0Fuheo0/keSw==
X-IronPort-AV: E=Sophos;i="5.85,358,1624320000";
   d="scan'208";a="14740490"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] #zeus meta-intel
Thread-Topic: [yocto] #zeus meta-intel
Thread-Index: Ade7lYNzGnXDdfszSXOKckUgK88nGwAwKyaAAAC+XnA=
Date: Fri, 8 Oct 2021 15:30:22 +0000
In-Reply-To: <0219a929fc8ed991f796cfd40b3b47ed3679e92f.camel@intel.com>
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
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 15:30:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55002
Message-Id: <20211008153029.C8506C433EF@smtp.lore.kernel.org>

DQpUaGFuayB5b3UsIGp1c3QgZm9yIGNsYXJpZmljYXRpb24gLi4uDQoNCiJCdWlsZGluZyB0aGUg
TmVvIGRyaXZlciIsIGRvZXMgdGhhdCBtZWFuIG5vIE9wZW5DTCBsaWJyYXJ5IHN1cHBvcnQgPw0K
DQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTWl0dGFsLCBBbnVqIDxhbnVqLm1p
dHRhbEBpbnRlbC5jb20+IA0KU2VudDogRnJpZGF5LCBPY3RvYmVyIDgsIDIwMjEgMTE6MDcgQU0N
ClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNv
bT47IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dICN6
ZXVzIG1ldGEtaW50ZWwNCg0KRXh0ZXJuYWwgRW1haWwgQWxlcnQNCg0KVGhpcyBlbWFpbCBoYXMg
YmVlbiBzZW50IGZyb20gYW4gYWNjb3VudCBvdXRzaWRlIG9mIHRoZSBCQUUgU3lzdGVtcyBuZXR3
b3JrLg0KDQpQbGVhc2UgdHJlYXQgdGhlIGVtYWlsIHdpdGggY2F1dGlvbiwgZXNwZWNpYWxseSBp
ZiB5b3UgYXJlIHJlcXVlc3RlZCB0byBjbGljayBvbiBhIGxpbmssIGRlY3J5cHQvb3BlbiBhbiBh
dHRhY2htZW50LCBvciBlbmFibGUgbWFjcm9zLiAgRm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24gb24g
aG93IHRvIHNwb3QgcGhpc2hpbmcsIGFjY2VzcyDigJxDeWJlcnNlY3VyaXR5IE9uZVNwYWNlIFBh
Z2XigJ0gYW5kIHJlcG9ydCBwaGlzaGluZyBieSBjbGlja2luZyB0aGUgYnV0dG9uIOKAnFJlcG9y
dCBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0bG9vayB0b29sYmFyLg0KDQoNCk9uIFRodSwgMjAyMS0x
MC0wNyBhdCAxNjoyMCArMDAwMCwgTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4gwqANCj4gwqANCj4gSSBhbSBsb29raW5nIGF0IOKAnG1l
dGEtaW50ZWwvZHluYW1pYy1sYXllcnMvY2xhbmctbGF5ZXIvcmVjaXBlcy0NCj4gb3BlbmNsL2Nv
bXB1dGUtcnVudGltZeKAnQ0KPiBJIGhhdmUgYmVlbiDigJx0b2xk4oCdIHRoYXQgdGhpcyBjb21w
dXRlLXJ1bnRpbWUgcmVjaXBlIHNob3VsZCBiYXNpY2FsbHkgDQo+IGJ1aWxkIG9wZW5jbCAoTmVv
KSB3aXRoIGFsbCB0aGUgcmVxdWlyZWQgZGVwZW5kZW5jaWVz4oCmIEkgZGlkIG5vdCB0aGluayAN
Cj4gWW9jdG8gaGFkIHN1cHBvcnQgZm9yIE9wZW5DTCwgYW5kIHdhcyBsb29raW5nIHRvIGJ1aWxk
IE5lbyB1bmRlciB0aGUgDQo+IFNESy4NCj4gwqANCj4gKDEpwqDCoMKgSXMgdGhpcyB0cnVlLCBk
b2VzIG1ldGEtaW50ZWxsIHVuZGVyIHpldXMgbm93IHN1cHBvcnQgYnVpbGRpbmcgDQo+IE9wZW5D
TCBhbmQgdGhlIE9wZW5DTCBHcmFwaGljcyBjb21waWxlciB1bmRlciBZb2N0byA/DQoNCmNvbXB1
dGUtcnVudGltZSByZWNpcGUgd291bGQgYWxsb3cgeW91IHRvIGJ1aWxkIE5FTyBkcml2ZXIuIHpl
dXMgaXMgbm8gbG9uZ2VyIG1haW50YWluZWQgc28gdGhlIHZlcnNpb24gdGhlcmUgaXMgb2xkIGFu
ZCBub3QgdGVzdGVkIG5vdyBidXQgaXQgc2hvdWxkIHN0aWxsIGJ1aWxkLg0KDQo+ICgyKcKgwqDC
oE9mIHNvLCB3aGF0IHdvdWxkIGJlIHRoZSBwcm9wZXIgd2F5IHRvIHB1bGwgdGhpcyBpbnRvIG15
IHlvY3RvIA0KPiBidWlsZCA/DQoNCkluY2x1ZGluZyBtZXRhLWludGVsIGFuZCBtZXRhLWNsYW5n
IGluIGJibGF5ZXJzIHNob3VsZCBiZSBlbm91Z2guDQoNClRoYW5rcywNCg0KQW51ag0K

