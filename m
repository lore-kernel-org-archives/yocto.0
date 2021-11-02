Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8910AC433EF
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 12:28:59 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.40.1635856135171317836
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 05:28:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=jEbhMisf;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1635856135; x=1793536135;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=AXoe3CxWPt2xyr4BTdvQTIVsAoTRaPd7rKyYYJu7Zxg=;
  b=jEbhMisf/Hgl+ZlREMNDtawVYl2hUogx+U3BtRqabh79dh2fYj82ICEW
   7tYWFGT9Vif1LEkZ9qI6RgqMh1PgjmIrUraDCBZiQRFLoeY5GQAL8rOiX
   7mT4t8dfrEnn2AFOR2PtUyHaFA/4rGl4teAwYj3nEm+KHGYjXJeyrm0Ol
   E=;
IronPort-SDR: 
 hIsbv77fM7a7DLLgwASd3oyH/8/90PFG39QPY0UG4If1hUDqU/7U8qp0dJubUD4WFCsE9w5Bbj
 1rPpBqm1feKg==
IronPort-PHdr: =?us-ascii?q?A9a23=3AHmQhMxK2sb/+4x4CQ9mcuLNhWUAX0o4c3iYr4?=
 =?us-ascii?q?5Yqw4hDbr6kt8y7ehCFvbM30QKCBNmTwskHotKei7rnV20E7MTJm1E5W7sIa?=
 =?us-ascii?q?SU4j94LlRcrGs+PBB6zBvfraysnAJYKDwc9rDm0PkdPBcnxeUDZrGGs4j4OA?=
 =?us-ascii?q?BX/Mhd+KvjoFoLIgMm7yfy+94fNbwhIhDexbq5+IRqrpgjNq8cahpdvJLwsw?=
 =?us-ascii?q?RXTuHtIfOpWxWJsJV2Nmhv3+9m98p1+/SlOovwt78FPX7n0cKQ+VrxYES8pM?=
 =?us-ascii?q?3sp683xtBnMVhWA630BWWgLiBVIAgzF7BbnXpfttybxq+Rw1DWGMcDwULs5Q?=
 =?us-ascii?q?iqp4bt1RxD0iScHLz85/3/Risxsl6JQvRatqwViz4LIfI2ZMfxzdb7fc9wHX?=
 =?us-ascii?q?2pMRsZfWTJcDIOgYYUBDOQBMuRZr4bhqFUBogCzBRW3C+Pt1jNEmmP60K883?=
 =?us-ascii?q?u88EQ/GxgsgH9cWvXjaq9v1M6ESUfurw6bW1jXPd+5d1yrh6IfWbBAuv/eMV?=
 =?us-ascii?q?q9ufMHMzUUgGR7LglCepYf4OD6VzfgNvHaF7+V+U+KjkWsnqwZ3oji02Mgjl?=
 =?us-ascii?q?JLJi5kOxV/e6yp524Y0JcakSEFlZN6kC4FcuD2dN4tzW84vRXxjtykmxLMco?=
 =?us-ascii?q?5G7YDQKx4o9xx7Zc/GKcoeG7xDtWuuSLjp0mX1rda6+ihuw70WuyvDxW82p3?=
 =?us-ascii?q?VtUqidIktbBu2wC2hHS9sWLV/tz80S81TuTyg3d5e5KLEYpnqTVLJ4hx6Q/l?=
 =?us-ascii?q?psVsUnbBS/2mVj5g7GNeUU+4Oeo7fjoYrX8qpCAMI90jxnyM6QpmsOjHeQ4N?=
 =?us-ascii?q?RAOX3Kc+eS+yrLs4VH5TK9Njv0snanUto3RK8cDpqOhHgNZzpwv5hi9Aju8z?=
 =?us-ascii?q?dgVmXcKIEhEdR+Gl4TlJk3CLOr3APqwmVihny1ny+3GM7DnH57DNGLMkK37c?=
 =?us-ascii?q?rZ480NczQ0zws1B6J9MEbEBJe7zWlf2tNzFEh81Kwy0zPjjCNV6zo4eX2KPA?=
 =?us-ascii?q?qmDP6PXql+F5eIiL/WQaIMIojr9LeIq6+T1gnAjh1AdZqmo3YALaH+mG/RmO?=
 =?us-ascii?q?F+VbmbrgtcECWsKvww+Q/L2iFCaTDJfe2y+Uqw+6z0hFY6rCYnOSpqsjbGAx?=
 =?us-ascii?q?Cu7G4dZZmFCClCCC3focICEVu8XaCKOPMBhjCILVb67R48k0hGushT6xKR5I?=
 =?us-ascii?q?erP4SAXrojs28Zu5+zTjhEy6SJ7D8GG022XU250mWYISycs3K9juUx91kuD0?=
 =?us-ascii?q?a9gjv1YEtxc++9JUgAhOJ7Yzux6EMzyWhnbctaJT1apXsmmATYpTtIrxN8OY?=
 =?us-ascii?q?VhyFMm+jhzZ2CqqGbAVxPS2Aocp+Pfcw2TpPJQ6jHLHz7U6yUghSddILXehh?=
 =?us-ascii?q?KN0607UHYGOnAKIkK22cuMB2jXQ/jS+y3GTtn1VQBIlUbnZRWtNIQzSrM/l/?=
 =?us-ascii?q?QXTSLSyDqw9NQlMwtLELbFFLdKunFJNWPCkJdLFfmjip2DlIRuPwPuza4fxZ?=
 =?us-ascii?q?2gb1ijHBwBQlw0U+16dNAQzDD2opWneSjdpEAS8TVnr9Lw0jXS9VUI51EXCV?=
 =?us-ascii?q?FFsybezsjVdxcGnCrlbiqkYtTksrXNxG1Cm0t/NI9CJqhFwZ7lRZMh761BCg?=
 =?us-ascii?q?zGK/zdhN4CtevgxzmUVdB566ga3j00fNw=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3Ajgw2z65kh5+jj7xYgO3lLAxRtBLFchMFZxGqf?=
 =?us-ascii?q?qrLsTDasY5as4F+vjMbDWyEbPvfNzT1KttwO4XjoEMHuJfXxtJqQFA5ry03Z?=
 =?us-ascii?q?n8b8sCt6fZ1jqvT04F+FiBIJa5ex512huLocYZkERcwmj/3auK49CAkj/nRL?=
 =?us-ascii?q?lbBILes1h5ZFFcMpBgJ1EoLd94R2uaEsPDha++/kYqaT/73ZDdJ7wVJ3lc8s?=
 =?us-ascii?q?Mpvnv/OUMPa41v0tnRmDRxCUcS3e3M9VPrzLonpR5f0rxU9IwK0ewrD5OnRE?=
 =?us-ascii?q?mLx+RcrA9a+wuujKhRMRLeUNwGDkWtNR6WnmV5JoSlaPqQTbaJaMhgR0mTS2?=
 =?us-ascii?q?Y4voDlOncXYpQMBJbHBhukbFRxfFTpzMLZu8rbKOmmkrcGW1AvNdH6EL/BGU?=
 =?us-ascii?q?BtsbdRHoL8taY1J3blCQNwXVTiSgOmqx5q/S/JwnYIyK8L3O5sFvXNtxi2fC?=
 =?us-ascii?q?uwpKa0v6Y2iCcRwhW923Z8IRKeFIZRHAQeDpS/oO3VnUmr7wrpk9AtwukTCT?=
 =?us-ascii?q?g=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A8eNTO6M8VL6+oMBcTsGjsMiBIKoaSvp037?=
 =?us-ascii?q?BN7TESdfU1SL36qynAppkmPHPP5Ar5O0tBpTnjAse9qBrnnPYfi7X5VY3SOD?=
 =?us-ascii?q?UO01HIEGgN1+TfKhTbakjDHrE379YGT0HVMqyXMWRH?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CMAwDKLYFh/0LBJQpaHgEBCxIMQAm?=
 =?us-ascii?q?BRQuDIYFCC4Q8kREDhgmKDYwigWgLAQEBAQEBAQEBCAEqCwwEAQGFAgIXgjw?=
 =?us-ascii?q?mNwYOAQIEAQEBEgEBBgEBAQEBBgQBgSOFaA2CNQUCAx8BBoNdAQEBAQMBIhE?=
 =?us-ascii?q?aByQMBAIBCA0EBAEBAQICERUCAgImCQEVCAgBAQQOBQgVBIJMBYMWq1k1eoE?=
 =?us-ascii?q?xGgJlg04BgRqFDwkBgQYqgWaEF1Q9D4Z6gg1DhD8+gmMEAYEWCAoBEgExBxU?=
 =?us-ascii?q?TglmCZQSODRQ9CIE4AVBAAQcBQQ4aOyuSHYMUlmqSLgcDgzSKS4xYh0QvFYN?=
 =?us-ascii?q?sgUmKKIYwA4tnhTGWDox0k1sNBhYhhGgCBAIEBQIWgXcyXHBwgzkJSBcCkiG?=
 =?us-ascii?q?FFIVKdAIBNQIGAQoBAQMJkQNcgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2CMAwDKLYFh/0LBJQpaHgEBCxIMQAmBRQuDIYFCC4Q8k?=
 =?us-ascii?q?REDhgmKDYwigWgLAQEBAQEBAQEBCAEqCwwEAQGFAgIXgjwmNwYOAQIEAQEBE?=
 =?us-ascii?q?gEBBgEBAQEBBgQBgSOFaA2CNQUCAx8BBoNdAQEBAQMBIhEaByQMBAIBCA0EB?=
 =?us-ascii?q?AEBAQICERUCAgImCQEVCAgBAQQOBQgVBIJMBYMWq1k1eoExGgJlg04BgRqFD?=
 =?us-ascii?q?wkBgQYqgWaEF1Q9D4Z6gg1DhD8+gmMEAYEWCAoBEgExBxUTglmCZQSODRQ9C?=
 =?us-ascii?q?IE4AVBAAQcBQQ4aOyuSHYMUlmqSLgcDgzSKS4xYh0QvFYNsgUmKKIYwA4tnh?=
 =?us-ascii?q?TGWDox0k1sNBhYhhGgCBAIEBQIWgXcyXHBwgzkJSBcCkiGFFIVKdAIBNQIGA?=
 =?us-ascii?q?QoBAQMJkQNcgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.87,202,1631577600";
   d="scan'208";a="422817212"
IronPort-SDR: 
 /aKBAXeywPuSGDfPvREXSPBBgMjyLZ0nrwhd7yz/qwa4+ZuBpB9rweEmJXpS+kG2bWC7+Mga1v
 fPZiCYYl436f0t0K8TTH0wg+ieb7OBeJK9Pk3SDgUSF0WBQm8FsOqq8eql5EJP8OJIP/mGL8sk
 l/Mk2XfIyoG/9sgxsWKCbFR5LM2SOnHIbVbXfurWtTxFcl63ak4nnP2MzPwNpV/PnNme5JD162
 mcw2SjyUuQw7neScYWFRJpmFVcAcpaZk3iKndePRktDogQL3/8dK6gY+2VVTNYZCQ0nTY0yZjU
 nvs=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Leon Woestenberg <leon@sidebranch.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] yocto meta-intel preempt-rt
Thread-Topic: [yocto] yocto meta-intel preempt-rt
Thread-Index: AdfP3NytXKGDh2awTCGnp/Z+kYbnewAKU2yAAAhQ0ZA=
Date: Tue, 2 Nov 2021 12:27:52 +0000
In-Reply-To: 
 <CAMjhiJiGdjYTSL+tkdjY9tQELJeiBm7hGxyWXUfc0rsZjM9FGg@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 12:28:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55213
Message-Id: <20211102122859.8910AC433EF@smtp.lore.kernel.org>

DQpJIHdpbGwgY2hlY2suLi4NCg0KV291bGQgeW91IGhhdmUgYW4gZXhhbXBsZSBvZiBhIHJlY2lw
ZSB0aGF0IHNob3dzIGhvdyB0byBhcHBseSB0aGUgcnQgcGF0aCA/DQoNClRoYW5rcywNClN0ZXZl
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBMZW9uIFdvZXN0ZW5iZXJnIDxs
ZW9uQHNpZGVicmFuY2guY29tPiANClNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDIsIDIwMjEgODoy
NSBBTQ0KVG86IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3Rl
bXMuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBb
eW9jdG9dIHlvY3RvIG1ldGEtaW50ZWwgcHJlZW1wdC1ydA0KDQpFeHRlcm5hbCBFbWFpbCBBbGVy
dA0KDQpUaGlzIGVtYWlsIGhhcyBiZWVuIHNlbnQgZnJvbSBhbiBhY2NvdW50IG91dHNpZGUgb2Yg
dGhlIEJBRSBTeXN0ZW1zIG5ldHdvcmsuDQoNClBsZWFzZSB0cmVhdCB0aGUgZW1haWwgd2l0aCBj
YXV0aW9uLCBlc3BlY2lhbGx5IGlmIHlvdSBhcmUgcmVxdWVzdGVkIHRvIGNsaWNrIG9uIGEgbGlu
aywgZGVjcnlwdC9vcGVuIGFuIGF0dGFjaG1lbnQsIG9yIGVuYWJsZSBtYWNyb3MuICBGb3IgZnVy
dGhlciBpbmZvcm1hdGlvbiBvbiBob3cgdG8gc3BvdCBwaGlzaGluZywgYWNjZXNzIOKAnEN5YmVy
c2VjdXJpdHkgT25lU3BhY2UgUGFnZeKAnSBhbmQgcmVwb3J0IHBoaXNoaW5nIGJ5IGNsaWNraW5n
IHRoZSBidXR0b24g4oCcUmVwb3J0IFBoaXNoaW5n4oCdIG9uIHRoZSBPdXRsb29rIHRvb2xiYXIu
DQoNCg0KSGVsbG8gU3RldmUsDQoNCkkgaGF2ZSBiZWVuIHJ1bm5pbmcgdGhlIFBSRUVNUFRfUlQg
Zm9yIEludGVsIHBsYXRmb3JtcyBmb3IgYSBmZXcgcmVsZWFzZXMsIEkgcmVtZW1iZXIgaXQgZmV0
Y2hlZCBzb3VyY2VzIGZyb20gYSBHSVQgYnJhbmNoIGZvciAtcnQgKFBSRUVNUFRfUlQpLiBTbyBp
dCBkb2VzIG5vdCBuZWVkIHRvIGFwcGx5IHNlcGFyYXRlIHBhdGNoZXMgaW4gdGhhdCBjYXNlLg0K
DQpDb3VsZCB5b3UgY2hlY2sgaWYgdGhpcyBpcyB0aGUgY2FzZSBmb3IgeW91IGFzIHdlbGw/DQoN
ClJlZ2FyZHMsDQoNCkxlb24uDQoNCnAucy4gU2xpZ2h0bHkgb2ZmLXRvcGljLCBJIG1vdmVkIGF3
YXkgZnJvbSBQUkVFTVBUX1JUIGluIGZhdm9yIG9mIHRhc2sgaXNvbGF0aW9uIG1vZGUsIHdoZXJl
IHdlIHVzZSBvbmUgQ1BVIGNvcmUgaW4gaXNvbGF0ZWQgc2luZ2xlIHRhc2sgbW9kZSwgZm9yICpt
dWNoKiBsb3dlciBsYXRlbmNpZXMgdGhhbiBQUkVFTVBUX1JUIGNhbiBwcm92aWRlLg0KDQoNCi0t
DQpMZW9uIFdvZXN0ZW5iZXJnDQpsZW9uQHNpZGVicmFuY2guY29tDQpUOiArMzEgNDAgNzExIDQy
IDc2DQpNOiArMzEgNiA0NzIgMzAgMzcyDQoNClNpZGVicmFuY2ggRW1iZWRkZWQgU3lzdGVtcw0K
RWluZGhvdmVuLCBUaGUgTmV0aGVybGFuZHMNCmh0dHA6Ly93d3cuc2lkZWJyYW5jaC5jb20NCg0K
DQoNCk9uIFR1ZSwgTm92IDIsIDIwMjEgYXQgMTI6MzAgUE0gTW9uc2VlcywgU3RldmVuIEMgKFVT
KSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8c3RldmVuLm1vbnNlZXM9YmFlc3lzdGVtcy5j
b21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+DQo+DQo+DQo+IEkgaGF2ZSBhbiBJ
bnRlbCBiYXNlZCBwbGF0Zm9ybSwgYW5kIHdhcyBsb29raW5nIHRvIGltcGxlbWVudCBwcmVlbXB0
LXJ0IG9uIGl0IHRvIHRlc3QuDQo+DQo+DQo+DQo+IEZvciBJbnRlbCwgdGhlIG1ldGEtaW50ZWwg
Y29tcG9uZW50IHJlY2lwZSBhcHBlYXJzIHRvIHN1cHBvcnRzIA0KPiDigJxsaW51eC1pbnRlbC1y
dOKAnSwgYW5kIEkgY2FuIGJ1aWxkIG15IGludGVsIGJhc2VkIHBsYXRmb3JtIHdpdGggdGhpcyAg
DQo+IGFuZCBpdCBib290c+KApiAgTXkgcGxhdGZvcm0ga2VybmVsIGlzIGN1cnJlbnRseSA0LjE5
IGJhc2VkIHVuZGVyIHRoZSANCj4gbWV0YS1pbnRlSSBjb21wb25lbnQgSSBkbyBub3Qgc2VlIHRo
ZSBydCBwYXRjaC9wYXRjaGVzIGJlaW5nIGFwcGxpZWTigKYNCj4NCj4NCj4NCj4gSXMgbWV0YS1p
bnRlbCBjb21wb25lbnQgcmVjaXBlIGJ1aWxkaW5nIHRoZSBmdWxsIHByZWVtcHQtcnQgc3VwcG9y
dCA/LCBvciBkbyBJIHN0aWxsIG5lZWQgdG8gYXBwbHkgdGhlIHBhdGNoID8NCj4NCj4NCj4NCj4g
VGhhbmtzLA0KPg0KPiBTdGV2ZQ0KPg0KPg0KPg0KPg0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09
LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4N
Cj4gVmlldy9SZXBseSBPbmxpbmUgKCM1NTIxMSk6IA0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJv
amVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzU1MjExDQo+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210Lzg2NzYzNTA3LzEwNTE3NzQNCj4gR3JvdXAgT3du
ZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5zdWJzY3JpYmU6IGh0
dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViIA0KPiBbbGVvbkBzaWRl
YnJhbmNoLmNvbV0NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4NCg==

