Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E29E8C433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 13:26:24 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.31942.1635168381538945998
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 06:26:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=SEbJMMQb;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1635168381; x=1792848381;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=uzvuVzfrqdWwl3oy1/zoWoY+La5Z6qcuv8GquUaaD6E=;
  b=SEbJMMQbsqsN1/jMY+lGTijcSjd9l1+YYrP0orZhhFiY8Zooki/I7zl/
   XJ89b/O6RNWbQlLWKJgH7aH1gRxBsgXRrHg4ZaAT6QeAFulXU+STg4dId
   NAMPryW0S2RfrjQaFr+v0taGyqYsaNDwPpk/4i3BA3Ih0XsyfXucx7G1U
   0=;
IronPort-SDR: 
 PC07oW6W81ojPuskTW80qX4R0+E4OIC1eCzBI2Zv8d9ObUeGgKMMOiNnrMx8NUlWX//ldTShvk
 fi9881Tmo2Vw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AindMtxd6iorFhhVSYYMQVMkulGM+mdnLVj580?=
 =?us-ascii?q?XLHo4xHfqnrxZn+JkuXvawr0AWRG9+Atrka0qL/iOPJYSQ4+5GPsXQPItRnd?=
 =?us-ascii?q?iQuroEopTEmG9OPEkbhLfTnPGQQFcVGU0J5rTngaRAGUMnxaEfPrXKs8DUcB?=
 =?us-ascii?q?gvwNRZvJuTyB4Xek9m72/q99pHNfwlEniSxbL1yIRm5rAjdq9QdjJd/JKo21?=
 =?us-ascii?q?hbHuGZDdf5MxWNvK1KTnhL86dm18ZV+7SleuO8v+tBZX6nicKs2UbJXDDI9M?=
 =?us-ascii?q?2Ao/8LrrgXMTRGO5nQHTGoblAdDDhXf4xH7WpfxtTb6tvZ41SKHM8D6Uaw4V?=
 =?us-ascii?q?DK/5KpwVhTmlDkIOCI48GHPi8x/kqRboA66pxdix4LYeZyZOOZicq/Ye94RW?=
 =?us-ascii?q?GhPUdtLVyFZAo2ycZYBD/YPM+hboYnypVoOogexCwajH+7v1iRHhn3q0aEmz?=
 =?us-ascii?q?+gsEwfL1xEgEdIUt3TUqc34OKkVX+CyyqnI1ivMYO1N2Tvl9YPGbwwhru+SX?=
 =?us-ascii?q?b1ud8ra1FciHB7BglqetILpOj2Z3fkKvmiA8+pvS/yvhHAhqw1rpzivwcEsi?=
 =?us-ascii?q?pLXiY0L0VDJ7j52z5wrKt2jSE97esKkH4VVtyGBLYd5XsQiQ2RxtSs817YJt?=
 =?us-ascii?q?oK1cjIQx5Q72x7QdeaHc46Q7x/iW+icIzl2iXFqdb6iiBi/7Umtx+/iW8e0z?=
 =?us-ascii?q?VtHqjdIn8fIu30N2BHe9seKR/ph80u82TiC1B3f5/1ZLE47mqTWLYMqzLA3l?=
 =?us-ascii?q?poWq0vDHyn2lV3tjK+Xa0or5POn6/79bbXgupCcN5V4hR35MqQrgsC+AeM4P?=
 =?us-ascii?q?RQSX2ic4eS8zrrj/U/nT7pWkv06iK7ZsIrVJckdu6W3ABdV354+5xqjFTur3?=
 =?us-ascii?q?tYVkWMZIF5beB+LlYnkNlDWLPzlEfuzmVuhnThxy/3JJLHtH5XAI37em7n7Z?=
 =?us-ascii?q?7l98VRTyA8rwNBa4JJbF68OLeroWk/0qNzYFhg5MxGow+r/CNVyyIceWWWXD?=
 =?us-ascii?q?6CFKqzSqkOH5uc0I+SIYIIYuyrxJ+Y/6/7ol3A1g0QScrO30psMaHG4BehmL?=
 =?us-ascii?q?FucYXr3mNsODWAKvg8mQOzrjl2NTyJTam6vU64g/D02BoCrAZ3dSoyzgLGNx?=
 =?us-ascii?q?ia2E5xOamBDEF+MEHPod4ueW/cLbSKfOtRhkiAaWri/VYAh0wuitAr9y7phN?=
 =?us-ascii?q?erb5DMXtYn42ddu/eLciwoy9DxvD8SBzW6NSnp0knkUSD8x2aBzuVZ9xUub0?=
 =?us-ascii?q?ahkn/xYEsRe5vNOUggmKZ7cyPd3C9TzWgLaYteJU0yqQ9WhAT4tUtIxxMcOY?=
 =?us-ascii?q?1x6G9WgkB/MwzaqD6USl7yRC5xnup7bilz8IMA19HHLz7UsiVMrWMQHYWmrg?=
 =?us-ascii?q?ahX7AnfCoTTmkOSl+ChcqFKjwDX82LWh0+JulpVXRU0GZ7ZUG4SYAP95ZTE3?=
 =?us-ascii?q?QKIB+u1Fbk5Pw0HzMmEMaZHcfXjhFhdVez/NdHFJWm2njHjVl6z2rqQYd+yK?=
 =?us-ascii?q?C0m1yLHBR1BylhLlUs=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3A3bQPVam4jhBY4VX2bsKbbgro5gyrJERdPkR7X?=
 =?us-ascii?q?Q2eYbSJt1+Wr1GztxJMCGCAMvjbazOjfI92bIq38kpT7Z+AnYdgGVNlrS42E?=
 =?us-ascii?q?FtH+JHPbTi7wuccHM8wwvUuxyuL1u1GAjX7BJ1yHiC0SiuFaOC79CAkj/zQH?=
 =?us-ascii?q?9IQNcadUsxPbV48IMseoU878wIJqtYAbemRW2thi/uryyHsEAPNNwpPD44hw?=
 =?us-ascii?q?/nrRCWDHRjFkGhwUlQWPZintbJF/pUfJMp3yaqZdxMUTmTId9NWSdovzJnhl?=
 =?us-ascii?q?o/Y1xwkEdigieeqIhVQBLjbewKHh2FHQLSvhwMErSs3uko5HKNELxwIzW/Tw?=
 =?us-ascii?q?pYvlr2htrTpIestFrbQlfoQVV9dFCdlMKBd0LXOLGOuqtCeylaAeHzpqxlrJ?=
 =?us-ascii?q?B1sZNVHobYnXQmi8tRdcljhdCurluW93LWTTuh3mt9lPc7gIIQHoHZiwDrFS?=
 =?us-ascii?q?/E8Tvj+rw/ijTND9G5owJsRW6yEOoxHN1JSgN37S0UnEj8q5FgWxo9EXkXCT?=
 =?us-ascii?q?gA=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3As9ujnK4t8XFYVv1nKgPXwMjXdLJyesId70?=
 =?us-ascii?q?hD6qkfc3Rom6Cj/PxG/8516faXslsssRgb8OxoU5PtfZqzz/RICPEqXYuKVg?=
 =?us-ascii?q?/gpWeuMcV+9oPk2TLtAGnz8eRa2KdmfcFFaeEcZWIVsfrH?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AdAACor3Zh/0LhJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE8BwEBCwGDH4FCC4Q8iCOIbQOGCYoNjA4UgWgLAQEBAQE?=
 =?us-ascii?q?BAQEBCAEqBxAEAQGFAAIXgjkmNAkOAQIEAQEBEgEBBgEBAQEBBgQBgSOFaA2?=
 =?us-ascii?q?CNSkBg2MBAQEBAwEiESEkDAQCAQgNBAQBAQECAhEVAgICJgoVCAgBAQQOBQi?=
 =?us-ascii?q?CZQWtfDV6gTEaAmWEaYUPCQGBBioBgWWEF1RMhnmCDUOEPz6CYwQBgRYICgE?=
 =?us-ascii?q?SATEHFROCWYJlBI0HFIF9Bks1DAdlki1XgxSWX5ItBwODMopLjFeHRC8Vg2q?=
 =?us-ascii?q?BSIomhi4Di2OFMJYMGKAyDQYWIYRoAgQCBAUCFoFhSFxwcIM5CUgXApIhhRS?=
 =?us-ascii?q?FSnQCATUCBgEKAQEDCZFfgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2AdAACor3Zh/0LhJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE8BwEBCwGDH4FCC4Q8iCOIbQOGCYoNjA4UgWgLAQEBAQEBAQEBCAEqBxAEA?=
 =?us-ascii?q?QGFAAIXgjkmNAkOAQIEAQEBEgEBBgEBAQEBBgQBgSOFaA2CNSkBg2MBAQEBA?=
 =?us-ascii?q?wEiESEkDAQCAQgNBAQBAQECAhEVAgICJgoVCAgBAQQOBQiCZQWtfDV6gTEaA?=
 =?us-ascii?q?mWEaYUPCQGBBioBgWWEF1RMhnmCDUOEPz6CYwQBgRYICgESATEHFROCWYJlB?=
 =?us-ascii?q?I0HFIF9Bks1DAdlki1XgxSWX5ItBwODMopLjFeHRC8Vg2qBSIomhi4Di2OFM?=
 =?us-ascii?q?JYMGKAyDQYWIYRoAgQCBAUCFoFhSFxwcIM5CUgXApIhhRSFSnQCATUCBgEKA?=
 =?us-ascii?q?QEDCZFfgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.87,180,1631577600";
   d="scan'208";a="421073884"
IronPort-SDR: 
 zyqlUys3Ruh9aBmRde94+eI5QB/pO4KN6rM2wNmz6xq+sI/DiR8nsLzlCc0XNA5tHfRYBx7DtF
 4M3Lg/Grbtzw==
X-IronPort-AV: E=Sophos;i="5.87,180,1631577600";
   d="scan'208";a="15810701"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Leon Woestenberg <leon@sidebranch.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] bbappend usage
Thread-Topic: [yocto] bbappend usage
Thread-Index: AdfJnVTE4CPWQNMKRTKB5QfRNOLm+gAJg+SAAAfto+A=
Date: Mon, 25 Oct 2021 13:26:18 +0000
In-Reply-To: 
 <CAMjhiJiWWKCDmHmoRRA1osZfEW1YSZPx1CyFE8doT1Z1T=mLAg@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 13:26:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55141
Message-Id: <20211025132624.E29E8C433EF@smtp.lore.kernel.org>

DQpJIGFtIGxvb2tpbmcgdG8gc2VsZWN0aXZlbHkgcmVtb3ZlIHBvcnRpb25zIG9mIDFvciAyIGNv
bXBvbmVudHMgSSB3aWxsIG5vdCBiZSB1c2luZyBmcm9tIG15IHJ1bm5pbmcgaW1hZ2UNCg0KLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBMZW9uIFdvZXN0
ZW5iZXJnDQpTZW50OiBNb25kYXksIE9jdG9iZXIgMjUsIDIwMjEgOToxMiBBTQ0KVG86IE1vbnNl
ZXMsIFN0ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPg0KQ2M6IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIGJiYXBwZW5k
IHVzYWdlDQoNCkV4dGVybmFsIEVtYWlsIEFsZXJ0DQoNClRoaXMgZW1haWwgaGFzIGJlZW4gc2Vu
dCBmcm9tIGFuIGFjY291bnQgb3V0c2lkZSBvZiB0aGUgQkFFIFN5c3RlbXMgbmV0d29yay4NCg0K
UGxlYXNlIHRyZWF0IHRoZSBlbWFpbCB3aXRoIGNhdXRpb24sIGVzcGVjaWFsbHkgaWYgeW91IGFy
ZSByZXF1ZXN0ZWQgdG8gY2xpY2sgb24gYSBsaW5rLCBkZWNyeXB0L29wZW4gYW4gYXR0YWNobWVu
dCwgb3IgZW5hYmxlIG1hY3Jvcy4gIEZvciBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGhvdyB0byBz
cG90IHBoaXNoaW5nLCBhY2Nlc3Mg4oCcQ3liZXJzZWN1cml0eSBPbmVTcGFjZSBQYWdl4oCdIGFu
ZCByZXBvcnQgcGhpc2hpbmcgYnkgY2xpY2tpbmcgdGhlIGJ1dHRvbiDigJxSZXBvcnQgUGhpc2hp
bmfigJ0gb24gdGhlIE91dGxvb2sgdG9vbGJhci4NCg0KDQpIZWxsbyBTdGV2ZSwNCg0KSXMgdGhl
IGFwcHJvYWNoIHdoZXJlIHlvdSByZW1vdmUgdGhlIHJlY2lwZXMgZnJvbSB0aGUgaW1hZ2UgYW4g
b3B0aW9uPw0KSXMgdGhlcmUgYSByZWFzb24gd2h5IHlvdSB3YW50IHRvIGJ1aWxkIHRoZSByZWNp
cGVzIHRoYXQgeW91IGRvIG5vdCB3YW50IHRvIGFwcGVhciBpbiB5b3VyIGltYWdlPw0KDQpSZWdh
cmRzLA0KDQpMZW9uLg0KDQoNCi0tDQpMZW9uIFdvZXN0ZW5iZXJnDQpsZW9uQHNpZGVicmFuY2gu
Y29tDQpUOiArMzEgNDAgNzExIDQyIDc2DQpNOiArMzEgNiA0NzIgMzAgMzcyDQoNClNpZGVicmFu
Y2ggRW1iZWRkZWQgU3lzdGVtcw0KRWluZGhvdmVuLCBUaGUgTmV0aGVybGFuZHMNCmh0dHA6Ly93
d3cuc2lkZWJyYW5jaC5jb20NCg0KDQoNCk9uIE1vbiwgT2N0IDI1LCAyMDIxIGF0IDI6NTUgUE0g
TW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8c3RldmVu
Lm1vbnNlZXM9YmFlc3lzdGVtcy5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+
DQo+DQo+DQo+IEhlbGxvOg0KPg0KPg0KPg0KPiBJZiBJIGFtIGJ1aWxkaW5nIGFuIGltYWdlIOKA
nGltYWdlLUFCQ+KAnSwgYW5kIGl0IGlzIGNvbXBvc2VkIG9mIGEgbnVtYmVyIA0KPiByZWNpcGVz
LCBhbmQgZm9yIHNvbWUgb2YgdGhlc2UgcmVjaXBlcyBJIG1heSBOT1Qgd2FudCB0byBpbnN0YWxs
IHRoZWlyIA0KPiBmaW5hbCBjb21wb25lbnRzIHdpdGhpbiBteSBpbWFnZeKApg0KPg0KPg0KPg0K
PiBXaGljaCBpcyB0aGUgYmVzdCBwbGFjZSB0byBtb2RpZnkgdGhlIGJ1aWxkIHdpdGggYmJhcHBl
bmQgPw0KPg0KPg0KPg0KPiBXb3VsZCBJIG1vZGlmeSBhIHJlY2lwZeKAmXMgZG9faW5zdGFsbCAo
ZG9faW5zdGFsbF9hcHBlbmQtcmVjaXBlX3h5eikgPywgb3Igd291bGQgSSBtb2RpZnkgdGhlIGlt
YWdlIHJlY2lwZSAoZG9faW5zdGFsbF9hcHBlbmQtaW1hZ2VfQUJDKSBJIGFtIGxlYW5pbmcgdGhp
cyB3YXkgdG8gYXZvaWQgY2FzZXMgd2hlcmUgdGhlIGNvbXBvbmVudCByZWNpcGVzIG1pZ2h0IGhh
dmUgYmJhcHBlbmRzIGluIHBsYWNlIGFscmVhZHkgPw0KPg0KPg0KPg0KPiBMb29raW5nIGZvciB0
aGUgcHJvcGVyIFlvY3RvIHdheeKApg0KPg0KPg0KPg0KPiBUaGFua3MsDQo+DQo+IFN0ZXZlDQo+
DQo+DQo+DQo+DQo+DQo+DQo+IA0KPg0K

