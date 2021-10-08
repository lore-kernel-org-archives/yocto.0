Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7343BC433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 16:11:09 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.11653.1633709464975995324
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 09:11:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=YDYKVFyc;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1633709466; x=1791389466;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=uVQfoC2/2p3PKN6evXXgvr14DHJaUnTJhx1fsGMbRS0=;
  b=YDYKVFycKYXzUgNFCHKGRQEWuYqqvPVwjr69Qx1bKQtD09Lj9Rh3YD/+
   pcbwheuWQ/Ti5c9ji2MYlaUUcW9JQUBfmckJEDH89D6HuAOjnu+Ca5QsT
   htfa3Mv63yossFTkqTNGsUV+bsr8nmJxuIf0/8lzJatJA5XTWsFz4QJZw
   Y=;
IronPort-SDR: 
 iVAQBmI/TdN6xlRez7c+ImDSCCP2db8jl1tbsXfRLoBdEPfArNCBTTSsjCOzh82unZuAVZqQVa
 rrdfJC0rOa0A==
IronPort-PHdr: =?us-ascii?q?A9a23=3APCda+RJz9JXwVaIatNmcuIhhWUAX0o4c3iYr4?=
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
 =?us-ascii?q?5G7YDQKx4o9xx7Zc/GKcYeG7wzgWeuVITl1im9odry/iRuv/0at1uzxW8i63?=
 =?us-ascii?q?VhFridLktrBuHAP2hHN68WKSPpw8lql1DuLygzd5e5KLEYpnqTVLJ4hx6Q/l?=
 =?us-ascii?q?psVsUnbES/2mVn2jK+Ldko/4OSn9+PnYrD+qp+SLYB0kxvyMqEzlcCnAeU4N?=
 =?us-ascii?q?RQBX3Sc+eSkzr3j+k/5T6tWgf0qiKXZt4raJcsdq6WkAAFVyp4u5wujAzu83?=
 =?us-ascii?q?tkVn2MLIExbdB+HlYTkOlDDLOjlAfujmVihnzhmy+rJM7H7H5nALn7Om6r7c?=
 =?us-ascii?q?7ln8U5T0g8zwMha55JTF74OPur+WlT0tNzEFh85NBG0w/r/BNV9yIweXWWPD?=
 =?us-ascii?q?7eFP6zIql+H+ucvI/KIaYIRuzvxN+Yp6+TojXAjg1MSZrOm0oUMaHG4BfRmP?=
 =?us-ascii?q?1uWYX/3gtsbDWgKuQ8+QPTriF2ETzFTe26/U78g6j0hBo+rD53PSp6zjLGBx?=
 =?us-ascii?q?iu2H5xbanhDCl+WEHfoc4uEW+0LaCKXOsJhiSAEWqa/S4A/0xGirgr6y71hL?=
 =?us-ascii?q?urP5CIXq4nj2cNu6OLJix4y7jx1D9+B026TSmF0hXkESCMx3KB6uUB90EuM0?=
 =?us-ascii?q?bBkg/xEEtxe//NIUgAmOp7AyOx3ENTyWgPafteVU1aqWNWnATYtQdItxN8Oe?=
 =?us-ascii?q?1x9G9Kgjh/dwyWqH6UZl7uRBJw7oerg2C27Asdh13/CkOEIiUQkCIMbPGu7h?=
 =?us-ascii?q?Oh69hTPDorhkkOFmqLsfqMZimqFvnaExnaJlEVZSxJrF7TCVmwYflHRr9ny+?=
 =?us-ascii?q?gXFVbDkQeA2NQBdzuaGK7BWcZv4il5aQ+/5P9bTaH73nH2/U0Wm3LSJOcDPf?=
 =?us-ascii?q?GMG0SjGTAA/jw0N8HDOHkB+Oxzg6SqKFyBjC1/pJUbr9/JzpWiTREY51BCRc?=
 =?us-ascii?q?0BkzPy+/RtD1q/UcO8awr9R4HRpkD5zBlvomouOU7K9?=
IronPort-Data: =?us-ascii?q?A9a23=3AXEjjJaBjomq80hVW/wPhw5YqxClBgxIJ4kV8j?=
 =?us-ascii?q?S/XYbTApGgigmBUyWUbCzzXbKmINmekfowjaIqx9UtSvZeEyIRrOVdlrnsFo?=
 =?us-ascii?q?1CmCSbm6XZ1Fqp7Vs+rBpWroHlPsoNON7EsEOhuFiWF/0/1YuC7xZVB/fjgq?=
 =?us-ascii?q?oTUWbas1h9ZGFcMpBcJ0XqPqsZh6mJaqYHR7zCl5bsel/bi1GqNgFaYBI61B?=
 =?us-ascii?q?5Wr83uDtNyq0N8RU8dXifpj5DcynFFNZH4TyD3YEpf2fmVUNrbSq+frx7ii9?=
 =?us-ascii?q?WbCrkZ9UonjlL+9eEQHWa/JIQWLkTxdXK3Kbhpq/3R0ifl9bqBBLxkJ49mKt?=
 =?us-ascii?q?4kZJNFlroC9VwoveKjLnv8QXgJwGShzJrxd5LLCOj60tsn7I0juLyKzk682V?=
 =?us-ascii?q?RBoVWEf0qMtaY1UztQJLzsRaTiHhvmq2/SqTeJwgdw5K8vmN59ZvWtvpQw1p?=
 =?us-ascii?q?95OrYvrGv2MvoAehm1twJ4QdcsyrvExMVJHBCksqTUWUrvPNK8DoQ=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AIaYR46wEO3/6mN1PRJwhKrPwT71zdoMgy1?=
 =?us-ascii?q?knxilNoH1uE/Bw+PrEoB1273XJYVUqNk3I++rtBEDoexq1yXcf2+Ys1NmZMT?=
 =?us-ascii?q?UOwFHJEL1f?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ArAACzbGBh/0LhJQpaHQEBAQEJARI?=
 =?us-ascii?q?BBQUBQAmBPAgBCwGDH4FCC4Q8iCOIaQOGCIoMjAYUgWgLAQEBAQEBAQEBCAE?=
 =?us-ascii?q?qCwwEAQGEfgIXgjImNAkOAQIEAQEBEgEBBgEBAQEBBgQBgSOFaA2CNSkBg2M?=
 =?us-ascii?q?BAQEBAwEiEVEEAgEIDQQEAQEBAgIRFQICAiYKFQgIAQEEARIIgmUFgxasQjV?=
 =?us-ascii?q?6gTEaAmWDYkGFVQkBgQYqAYFlhTCCdoN9gg1DhD8+gmMCAgGBFggKARIBYIJ?=
 =?us-ascii?q?ZgmUEingUgX5QQQdCBCY5kjyDEqhsBwODMIpGjFGHQS8Ug2qBSIokhisDi2O?=
 =?us-ascii?q?FL5YljE2TRg0GKQ6EaAIEAgQFAhaBYUhccHCDOQlIFwKOOxaDUIUUhUp0OAI?=
 =?us-ascii?q?GAQoBAQMJk2GBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2ArAACzbGBh/0LhJQpaHQEBAQEJARIBBQUBQAmBPAgBC?=
 =?us-ascii?q?wGDH4FCC4Q8iCOIaQOGCIoMjAYUgWgLAQEBAQEBAQEBCAEqCwwEAQGEfgIXg?=
 =?us-ascii?q?jImNAkOAQIEAQEBEgEBBgEBAQEBBgQBgSOFaA2CNSkBg2MBAQEBAwEiEVEEA?=
 =?us-ascii?q?gEIDQQEAQEBAgIRFQICAiYKFQgIAQEEARIIgmUFgxasQjV6gTEaAmWDYkGFV?=
 =?us-ascii?q?QkBgQYqAYFlhTCCdoN9gg1DhD8+gmMCAgGBFggKARIBYIJZgmUEingUgX5QQ?=
 =?us-ascii?q?QdCBCY5kjyDEqhsBwODMIpGjFGHQS8Ug2qBSIokhisDi2OFL5YljE2TRg0GK?=
 =?us-ascii?q?Q6EaAIEAgQFAhaBYUhccHCDOQlIFwKOOxaDUIUUhUp0OAIGAQoBAQMJk2GBE?=
 =?us-ascii?q?AEB?=
X-IronPort-AV: E=Sophos;i="5.85,358,1624320000";
   d="scan'208";a="417820196"
IronPort-SDR: 
 J+n+kHvnafze98vfevlNBAVSTTdSB/1J1piJEYCwT55I/TkXtWZ3TXdFrYrX4bXwQOt3u5Gw4/
 mAX1+NevoScg==
X-IronPort-AV: E=Sophos;i="5.85,358,1624320000";
   d="scan'208";a="14743336"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] #zeus meta-intel
Thread-Topic: [yocto] #zeus meta-intel
Thread-Index: Ade7lYNzGnXDdfszSXOKckUgK88nGwAwKyaAAAC+XnAAASNjAAAAO6hg
Date: Fri, 8 Oct 2021 16:10:57 +0000
In-Reply-To: <965a31af46a43bd02e27ebd00cdaa48cdf205997.camel@intel.com>
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
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 16:11:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55005
Message-Id: <20211008161109.7343BC433EF@smtp.lore.kernel.org>

DQpTb3JyeSBmb3IgbXkgaWdub3JhbmNlLCBidXQgSSBhbSBtaXNzaW5nIHlvdXIgcG9pbnQsIHdo
YXQgZXhhY3RseSBkb2VzIHRoZSByZWNpcGUgcHJvdmlkZSB3aGVuIGJ1aWx0LCBpbnRlbC1vcGVu
Y2wtaWNkID8sIHdpbGwgaXQgcHVsbCBpbiBpZ2MgPw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KRnJvbTogTWl0dGFsLCBBbnVqIDxhbnVqLm1pdHRhbEBpbnRlbC5jb20+IA0KU2VudDog
RnJpZGF5LCBPY3RvYmVyIDgsIDIwMjEgMTI6MDEgUE0NClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAo
VVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT47IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dICN6ZXVzIG1ldGEtaW50ZWwNCg0KRXh0ZXJu
YWwgRW1haWwgQWxlcnQNCg0KVGhpcyBlbWFpbCBoYXMgYmVlbiBzZW50IGZyb20gYW4gYWNjb3Vu
dCBvdXRzaWRlIG9mIHRoZSBCQUUgU3lzdGVtcyBuZXR3b3JrLg0KDQpQbGVhc2UgdHJlYXQgdGhl
IGVtYWlsIHdpdGggY2F1dGlvbiwgZXNwZWNpYWxseSBpZiB5b3UgYXJlIHJlcXVlc3RlZCB0byBj
bGljayBvbiBhIGxpbmssIGRlY3J5cHQvb3BlbiBhbiBhdHRhY2htZW50LCBvciBlbmFibGUgbWFj
cm9zLiAgRm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24gb24gaG93IHRvIHNwb3QgcGhpc2hpbmcsIGFj
Y2VzcyDigJxDeWJlcnNlY3VyaXR5IE9uZVNwYWNlIFBhZ2XigJ0gYW5kIHJlcG9ydCBwaGlzaGlu
ZyBieSBjbGlja2luZyB0aGUgYnV0dG9uIOKAnFJlcG9ydCBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0
bG9vayB0b29sYmFyLg0KDQoNClNvcnJ5LCBJIGRpZG4ndCB1bmRlcnN0YW5kIHRoZSBxdWVzdGlv
bi4gSWYgeW91IHdhbnQgdG8ga25vdyB3aGljaCB2ZXJzaW9uIG9mIE9wZW5DTCBpcyBzdXBwb3J0
ZWQsIHBsZWFzZSBzZWUgdGhlIFJFQURNRSBmb3IgdmVyc2lvbiB0aGF0IHlvdSdyZSBidWlsZGlu
Zy4gQWxzbyBzZWU6DQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9jb21wdXRlLXJ1bnRpbWUv
YmxvYi9tYXN0ZXIvb3BlbmNsL2RvYy9GQVEubWQNCg0KVGhhbmtzLA0KDQpBbnVqDQoNCk9uIEZy
aSwgMjAyMS0xMC0wOCBhdCAxNTozMCArMDAwMCwgTW9uc2VlcywgU3RldmVuIEMgKFVTKSB3cm90
ZToNCj4gDQo+IFRoYW5rIHlvdSwganVzdCBmb3IgY2xhcmlmaWNhdGlvbiAuLi4NCj4gDQo+ICJC
dWlsZGluZyB0aGUgTmVvIGRyaXZlciIsIGRvZXMgdGhhdCBtZWFuIG5vIE9wZW5DTCBsaWJyYXJ5
IHN1cHBvcnQgPw0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWl0
dGFsLCBBbnVqIDxhbnVqLm1pdHRhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgT2N0b2Jl
ciA4LCAyMDIxIDExOjA3IEFNDQo+IFRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4u
bW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT47IA0KPiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dICN6ZXVzIG1ldGEtaW50ZWwNCj4gDQo+IEV4dGVybmFs
IEVtYWlsIEFsZXJ0DQo+IA0KPiBUaGlzIGVtYWlsIGhhcyBiZWVuIHNlbnQgZnJvbSBhbiBhY2Nv
dW50IG91dHNpZGUgb2YgdGhlIEJBRSBTeXN0ZW1zIA0KPiBuZXR3b3JrLg0KPiANCj4gUGxlYXNl
IHRyZWF0IHRoZSBlbWFpbCB3aXRoIGNhdXRpb24sIGVzcGVjaWFsbHkgaWYgeW91IGFyZSByZXF1
ZXN0ZWQgDQo+IHRvIGNsaWNrIG9uIGEgbGluaywgZGVjcnlwdC9vcGVuIGFuIGF0dGFjaG1lbnQs
IG9yIGVuYWJsZSBtYWNyb3MuwqAgRm9yIA0KPiBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGhvdyB0
byBzcG90IHBoaXNoaW5nLCBhY2Nlc3Mg4oCcQ3liZXJzZWN1cml0eSANCj4gT25lU3BhY2UgUGFn
ZeKAnSBhbmQgcmVwb3J0IHBoaXNoaW5nIGJ5IGNsaWNraW5nIHRoZSBidXR0b24g4oCcUmVwb3J0
IA0KPiBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0bG9vayB0b29sYmFyLg0KPiANCj4gDQo+IE9uIFRo
dSwgMjAyMS0xMC0wNyBhdCAxNjoyMCArMDAwMCwgTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEg
DQo+IGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+ID4gwqANCj4gPiDCoA0KPiA+IEkg
YW0gbG9va2luZyBhdCDigJxtZXRhLWludGVsL2R5bmFtaWMtbGF5ZXJzL2NsYW5nLWxheWVyL3Jl
Y2lwZXMtDQo+ID4gb3BlbmNsL2NvbXB1dGUtcnVudGltZeKAnQ0KPiA+IEkgaGF2ZSBiZWVuIOKA
nHRvbGTigJ0gdGhhdCB0aGlzIGNvbXB1dGUtcnVudGltZSByZWNpcGUgc2hvdWxkIGJhc2ljYWxs
eSANCj4gPiBidWlsZCBvcGVuY2wgKE5lbykgd2l0aCBhbGwgdGhlIHJlcXVpcmVkIGRlcGVuZGVu
Y2llc+KApiBJIGRpZCBub3QgDQo+ID4gdGhpbmsgWW9jdG8gaGFkIHN1cHBvcnQgZm9yIE9wZW5D
TCwgYW5kIHdhcyBsb29raW5nIHRvIGJ1aWxkIE5lbyANCj4gPiB1bmRlciB0aGUgU0RLLg0KPiA+
IMKgDQo+ID4gKDEpwqDCoMKgSXMgdGhpcyB0cnVlLCBkb2VzIG1ldGEtaW50ZWxsIHVuZGVyIHpl
dXMgbm93IHN1cHBvcnQgYnVpbGRpbmcgDQo+ID4gT3BlbkNMIGFuZCB0aGUgT3BlbkNMIEdyYXBo
aWNzIGNvbXBpbGVyIHVuZGVyIFlvY3RvID8NCj4gDQo+IGNvbXB1dGUtcnVudGltZSByZWNpcGUg
d291bGQgYWxsb3cgeW91IHRvIGJ1aWxkIE5FTyBkcml2ZXIuIHpldXMgaXMgbm8gDQo+IGxvbmdl
ciBtYWludGFpbmVkIHNvIHRoZSB2ZXJzaW9uIHRoZXJlIGlzIG9sZCBhbmQgbm90IHRlc3RlZCBu
b3cgYnV0IA0KPiBpdCBzaG91bGQgc3RpbGwgYnVpbGQuDQo+IA0KPiA+ICgyKcKgwqDCoE9mIHNv
LCB3aGF0IHdvdWxkIGJlIHRoZSBwcm9wZXIgd2F5IHRvIHB1bGwgdGhpcyBpbnRvIG15IHlvY3Rv
IA0KPiA+IGJ1aWxkID8NCj4gDQo+IEluY2x1ZGluZyBtZXRhLWludGVsIGFuZCBtZXRhLWNsYW5n
IGluIGJibGF5ZXJzIHNob3VsZCBiZSBlbm91Z2guDQo+IA0KPiBUaGFua3MsDQo+IA0KPiBBbnVq
DQoNCg==

