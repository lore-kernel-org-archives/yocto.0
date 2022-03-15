Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C82C433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 10:58:26 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.9385.1647341904846081194
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 03:58:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=AbffQK7A;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1647341904; x=1805021904;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=USrJvctg0b7t94tFHoYe0N+ep3qtZr77n4eSww0DS9o=;
  b=AbffQK7AeCBH7JiY6fobZEazxFOTTiPACyO2LRGhYtOZI3WWasZYrjjs
   I1IKVoPkGQuja9vyxegfdk+7gP9bAQy8/OGn/CZD0xba6z44oCuwjWyqi
   OM87THiH8VON5sRcG73S1CyjcYUX5s6/dlvqrUI0fYW58jwlsozsltzao
   4=;
IronPort-SDR: 
 HA08uhwK78V46OUPOCllGim27Tg357GTB9P1Kz2E+YIAOhzDnWwCGeNNI40P1b22GRX5psouUx
 N5hYMH0JbQYw==
IronPort-PHdr: =?us-ascii?q?A9a23=3A/rB4PRd5632/jEtkC1dg0HZllGM+TtnLVj580?=
 =?us-ascii?q?XLHo4xHfqnrxZn+JkuXvawr0AWTG9yAs7ke06L/iOPJYSQ4+5GPsXQPItRnd?=
 =?us-ascii?q?iQuroEopTEmG9OPEkbhLfTnPGQQFcVGU0J5rTngaRAGUMnxaEfPrXKs8DUcB?=
 =?us-ascii?q?gvwNRZvJuTyB4Xek9m72/q99pHNfQlEniexbL1uIBm5swndqtQdjJd/JKo21?=
 =?us-ascii?q?hbHuGZDdf5MxWNvK1KTnhL86dm18ZV+7SleuO8v+tBZX6nicKs2UbJXDDI9M?=
 =?us-ascii?q?2Ao/8LrrgXMTRGO5nQHTGoblAdDDhXf4xH7WpfxtTb6tvZ41SKHM8D6Uaw4V?=
 =?us-ascii?q?DK/5KpwVhTmlDkIOCI48GHPi8x/kqRboA66pxdix4LYeZyZOOZicq/Ye94RW?=
 =?us-ascii?q?GhPUdtLVyFZAo2ycZYBD/YPM+hboYnypVoOogexCwajH+7v1iRHhn3q0aEmz?=
 =?us-ascii?q?+gsEwfL1xEgEdIUt3TUqc34OKkVX+CyyqnI1ivMYO1N2Tvl9YPGbwwhru+SX?=
 =?us-ascii?q?b1ud8ra1FciHB7BglqetILpOj2Z3fkKvmiA8+pvS/yvhHAhqw1rpzivwcEsi?=
 =?us-ascii?q?pLXiY0L0VDJ7j52z5wrKt2jSE97esKkH4VVtyGBLYd5XsQiQ2RxtSs817YJt?=
 =?us-ascii?q?oK1cjIQx5Q72x7QdeaHc46Q7x7+WuidPDN1iGx7dL+7mxu/9Vasx+7/W8e63?=
 =?us-ascii?q?lhGsDZIn8TQu34C1xLe7sqKRPVj8kq92TuDyQ/e5/xLL00wl6fWLYMqzLA3l?=
 =?us-ascii?q?poWq0vDHyn2lV32ja+Rakok5u+o6/z9YrXhpJ+TKZN7ih3kPqQpgMy/DuI1O?=
 =?us-ascii?q?RUNUWiD4emwyaHv8Vf7TbhElPE7kabUvIrHKcgDu6K1HxVZ34ks5hqlADqqy?=
 =?us-ascii?q?skUkHkBIVlYYhyIlZLpNEvLIP3gCPe/hEmjnylzyvDdO73hHo3NLn/ekLf9Z?=
 =?us-ascii?q?bp961BTyA40zd1H+5JVBasOIPT2Wk/qsNHUEgM1PxCpz+r9FdV9zZkSVnmVD?=
 =?us-ascii?q?aCHK6PTsUSI5v4xLOmJf48ZoiryK/8g5/L2jH85n0ESfbWx0JcKdHy0BPZrL?=
 =?us-ascii?q?kuDbXfvjdoNC3oGshI7TOPwiV2CVTBTZ2y1X6I5/jw7E56mApndRo+zhryNx?=
 =?us-ascii?q?iK7HppQZmBdFF+DD2zoep6fVPgWdi2SOc9gkicYVbe/To8hzguiuxP9y7piN?=
 =?us-ascii?q?ubU/DYXuor51Ndp/+3TiQ0y9TtsAsiAy22NVX17nnsURz8q26ByuUx8ylCf3?=
 =?us-ascii?q?qhkhPxVDthT5/JSUgcmLp7Q1ex7C9fuVQLdedeJUEymQtKkAT4vUt0x38UCY?=
 =?us-ascii?q?0FnG9Wt3Vj+2TG3CeoVi6CTH85ztabdxGTqYdd6wGrBzLMmjVQtXo1IL2Lhi?=
 =?us-ascii?q?elu8APPAMnUlV6EnfWXc78B1hLA5HvWzXaSpFoKF0l0UL7ZRjYOYUDKqszj4?=
 =?us-ascii?q?UHPRKPoDq4odQQG2MmJNqwNd9vykF8VePC2G9TTZiqLkmX4UQyBxPWPbIfvU?=
 =?us-ascii?q?2oY1STZTkMDllZA02yBMF10IyCnuG/TF3gmLk7ifU7qucI26E6ADwV8mxqWY?=
 =?us-ascii?q?lNs0fyw/RgOiPGHY/ka06kVozssri4yF1G4iYGFQ+GcrhZsKf0PKeg2501Kg?=
 =?us-ascii?q?CeA71QVAw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ADAABtcDBi/wFUSQpaGgEBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBARIBAQEBAgIBAQEBQAmBPQUBAQEBCwGDJYFVF4Q9iCaIBW0Dhgy?=
 =?us-ascii?q?FBIUvjCIUgWgLAQEBAQEBAQEBCAEqCwwEAQGFBwIXhBEmNAkOAQIEAQEBEgE?=
 =?us-ascii?q?BBgEBAQEBBgQBgRuFaA2CNQUCAx8BBoNdAQEBAQIBASIRGisMBAIBCA0EAQM?=
 =?us-ascii?q?BAQECAhEVAgICHwcJARUCBggBAQQOBQgVBIJfBYJlAw0wrD01eoExGgJlg08?=
 =?us-ascii?q?BgRuCOA2CSwkBgQYsAYFlhCuBFg+HEoINQ4Q/PoIhQgQBgRYICgESATgVE4J?=
 =?us-ascii?q?bgmUEljUbFBCBKBoBByRQQAEHAU8aATorD5I+gx+pXGsHA4NJiwyMc4F0hWg?=
 =?us-ascii?q?wFYNzgU6KX4ZCA4t4hVyWV40Tg1GQNg0HN4RuAgQCBAUCFoFhSVxwcIM5CUg?=
 =?us-ascii?q?XAo48FYIrhjmFSnUCATUCBgEKAQEDCY1cXIESAQE?=
X-IPAS-Result: =?us-ascii?q?A2ADAABtcDBi/wFUSQpaGgEBAQEBAQEBAQEDAQEBARIBA?=
 =?us-ascii?q?QEBAgIBAQEBQAmBPQUBAQEBCwGDJYFVF4Q9iCaIBW0DhgyFBIUvjCIUgWgLA?=
 =?us-ascii?q?QEBAQEBAQEBCAEqCwwEAQGFBwIXhBEmNAkOAQIEAQEBEgEBBgEBAQEBBgQBg?=
 =?us-ascii?q?RuFaA2CNQUCAx8BBoNdAQEBAQIBASIRGisMBAIBCA0EAQMBAQECAhEVAgICH?=
 =?us-ascii?q?wcJARUCBggBAQQOBQgVBIJfBYJlAw0wrD01eoExGgJlg08BgRuCOA2CSwkBg?=
 =?us-ascii?q?QYsAYFlhCuBFg+HEoINQ4Q/PoIhQgQBgRYICgESATgVE4JbgmUEljUbFBCBK?=
 =?us-ascii?q?BoBByRQQAEHAU8aATorD5I+gx+pXGsHA4NJiwyMc4F0hWgwFYNzgU6KX4ZCA?=
 =?us-ascii?q?4t4hVyWV40Tg1GQNg0HN4RuAgQCBAUCFoFhSVxwcIM5CUgXAo48FYIrhjmFS?=
 =?us-ascii?q?nUCATUCBgEKAQEDCY1cXIESAQE?=
X-IronPort-AV: E=Sophos;i="5.90,183,1643673600";
   d="scan'208";a="460581740"
IronPort-SDR: 
 v4HT5qrUP8/D5m63HEZBuc9UkXfIbsnovbnrfrqT7Jh5jqiSjLFh9OaV6HTzMKwom4F2GJjShI
 gXjdb2f6OvGbNkpoEK+aWIfM2JNaguQbAPDcGJAFsieoKP70AnQeFeV3pzbPPIEMdGz+8idpVs
 54XbrDcOiUi3Z25NpFUUtYwplAscOytLHDJPSoiST1hELiTMgBL56GuWNiZ1eYZZMJNsN6cQlB
 unqTgXdcfWl7a63EOkvNsj0v94KnYeGlKk5UrmHEd6umO8Iudj2POhikLlpZ6P2rSVqq6NGrGC
 BHs=
IronPort-Data: =?us-ascii?q?A9a23=3AydEsqKzmlHaz9t9TUMR6t+fRxCrEfRIJ4+Muj?=
 =?us-ascii?q?C+fZmUNrF6WrkUAzDMcWTqGPPmNZmv2KN0gYY3lpk0G6JKAn4JlQAdur3w8F?=
 =?us-ascii?q?HgiRejtXI/AdhiqV8+xwmwvdK/shiknQoGowPscEzmN/n9BDpC79SMmjfrRG?=
 =?us-ascii?q?+KnYAL5EnsZqTFMGX5JZS1Ly7ZRbr5A2bBVMivV0T/Ai5S31GyNh1aYBlkpB?=
 =?us-ascii?q?5er83uDihhTVAQw5TTSbdgT1LPXeuJ84Jg3fcldJFOgKmVY83LTq08uEdiEE?=
 =?us-ascii?q?m3lExcFUrtJk57UVmEvee6PZVXUzHVRX6SmhBsEvCs1zqI9N/Nab0pL49mLt?=
 =?us-ascii?q?4kpjo4S88XuEEFwYvakdOc1CnG0FwllIaBY9bmBJH+5qsGe1GXMenb30u5yA?=
 =?us-ascii?q?UQte4Yf/46bBEkXr61DdGpXNk7ra+WehejTpvNXrt4qLo/oPI4akn5lxDDdS?=
 =?us-ascii?q?/0hRPjrUqLB+dhw2DYrmtsIDPHVe80Bcz1tYR/cJRpVNT8q5DgW9Auzrnb7f?=
 =?us-ascii?q?zhD+A/N+PBx7G/XwAh30/73N93JftqJTINTk1rwm44PxEyhajlyCTBV4WPtH?=
 =?us-ascii?q?qqQu9Ly?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AMCjbJ6sClZBTeKEZDdwWadVv7skDGNV00z?=
 =?us-ascii?q?EX/kB9WHVpm62j9vxG8M5x6faWslgssRMb9exoUZPoKU80k6Qe3WB7B9iftW?=
 =?us-ascii?q?fd1VeVEA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.90,183,1643673600";
   d="scan'208";a="129342206"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] configuration fragments
Thread-Topic: [yocto] configuration fragments
Thread-Index: Adg323G35nDYBUppTrC2/G5Du45+9gAJfZgAABZxESA=
Date: Tue, 15 Mar 2022 10:58:21 +0000
In-Reply-To: 
 <CAMKF1spMMwNFeAcZK1oMvyG1FCkGqgKXANFs6062dAEUYkPeBA@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 10:58:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56440
Message-Id: <20220315105826.B7C82C433F5@smtp.lore.kernel.org>

DQpXaGVuIHlvdSBzYXk6DQoNCiIgeW91IG1pZ2h0IGhhdmUgdG8gbG9vayBpbnRvIHRoaXMga2Vy
bmVsIHJlY2lwZSBhbmQgZW5zdXJlIHRoYXQgaXQgaGFzIGVuYWJsZWQgbWVyZ2luZyBjb25maWdz
IGZlYXR1cmUgZnJvbSBrZXJuZWwiDQoNCkFyZSB5b3UgdGFsa2luZyBhYm91dCBpbmhlcml0aW5n
IGZyb20gImtlcm5lbC15b2N0byIgaW4gb3JkZXIgdG8gd29yayB3aXRoIGNvbmZpZ3VyYXRpb24g
ZnJhZ21lbnRzID8NCg0KVGhhbmtzLA0KU3RldmUNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IA0KU2VudDogTW9uZGF5LCBN
YXJjaCAxNCwgMjAyMiA0OjEzIFBNDQpUbzogTW9uc2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVu
Lm1vbnNlZXNAYmFlc3lzdGVtcy5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KU3ViamVjdDogUmU6IFt5b2N0b10gY29uZmlndXJhdGlvbiBmcmFnbWVudHMNCg0KRXh0ZXJu
YWwgRW1haWwgQWxlcnQNCg0KVGhpcyBlbWFpbCBoYXMgYmVlbiBzZW50IGZyb20gYW4gYWNjb3Vu
dCBvdXRzaWRlIG9mIHRoZSBCQUUgU3lzdGVtcyBuZXR3b3JrLg0KDQpQbGVhc2UgdHJlYXQgdGhl
IGVtYWlsIHdpdGggY2F1dGlvbiwgZXNwZWNpYWxseSBpZiB5b3UgYXJlIHJlcXVlc3RlZCB0byBj
bGljayBvbiBhIGxpbmssIGRlY3J5cHQvb3BlbiBhbiBhdHRhY2htZW50LCBvciBlbmFibGUgbWFj
cm9zLiAgRm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24gb24gaG93IHRvIHNwb3QgcGhpc2hpbmcsIGFj
Y2VzcyDigJxDeWJlcnNlY3VyaXR5IE9uZVNwYWNlIFBhZ2XigJ0gYW5kIHJlcG9ydCBwaGlzaGlu
ZyBieSBjbGlja2luZyB0aGUgYnV0dG9uIOKAnFJlcG9ydCBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0
bG9vayB0b29sYmFyLg0KDQoNCk9uIE1vbiwgTWFyIDE0LCAyMDIyIGF0IDEyOjU3IFBNIE1vbnNl
ZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHN0ZXZlbi5tb25z
ZWVzPWJhZXN5c3RlbXMuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPg0KPg0K
Pg0KPiBVbmRlciBteSBhYXJtNjQgcGxhdGZvcm0gLi4vcmVjaXBlcy1jb3JlL2ltYWdlcyBJIGhh
dmUgYSBmaWxlIOKAnGFpb3gtc3dkZWJ1Z2ZzLmluY+KAnQ0KPg0KPg0KPg0KPiBXaGljaCBiYXNp
Y2FsbHkgY29udGFpbnM6DQo+DQo+DQo+DQo+IEVYVFJBUEFUSFNfcHJlcGVuZCA6PSAiJChUSElT
RElSfS9maWxlczoiDQo+DQo+IExJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJ
Q0VOU0VfRElSfS9NSVQ7bWQ1PTA4MzVhZGU2OThlMGJjZjg1MDZlY2RhMmY3YjRmMzAyIg0KPg0K
PiBTUkNfVVJJICs9IGZpbGU6Ly9haW94LXN3ZGVidWdmcy5jZmcNCj4NCj4NCj4NCj4gSSBpbmNs
dWRlIHRoaXMgaW4gbXkgYWlveC1zd2RlYnVnZnMuYmIgbGlrZSBzbzog4oCccmVxdWlyZSBhaW94
LXN3ZGVidWdmcy5pbmPigJ0NCj4NCj4NCj4NCj4gSXQgZG9lcyBub3QgYXBwZWFyIHRvIGFwcGx5
IG15IGNvbmZpZ3VyYXRpb24gZnJhZ21lbnRz4oCmDQo+DQo+IChDT05GSUdfU0NIRURfVFJBQ0VS
LCBDT05GSUdfVFJBQ0VSLCBldGMuIGZvciBhZGRpdGlvbmFsIHBlcmYgc3VwcG9ydCkNCj4NCj4N
Cg0KdGhlc2UgYXJlIHNvbWUgY29uZmlnIGZpbGVzIGZvciBkb2luZyB3aGF0ID8gZnJvbSB3aGF0
IGl0IGxvb2tzIGxpa2UsIHRoaXMgaW5jIGZpbGUgaXMgYWRkaW5nIGEga2VybmVsIGNvbmZpZyBm
cmFnbWVudCBpZiBzbyB0aGVuIGl0IHNob3VsZCBiZSBhcHBlbmRlZCB0b28ga2VybmVsIHJlY2lw
ZSBzbyBpZiBhaW94LXN3ZGVidWdmcy5iYiBpcyBrZXJuZWwgcmVjaXBlIHRoZW4geW91IGFyZSBk
b2luZyBpdCByaWdodCwgYnV0IHRoZW4geW91IG1pZ2h0IGhhdmUgdG8gbG9vayBpbnRvIHRoaXMg
a2VybmVsIHJlY2lwZSBhbmQgZW5zdXJlIHRoYXQgaXQgaGFzIGVuYWJsZWQgbWVyZ2luZyBjb25m
aWdzIGZlYXR1cmUgZnJvbSBrZXJuZWwuIE90aGVyd2lzZSB0aGVzZSBjZmdzIHdvbnQgYmUgcHJv
Y2Vzc2VkLg0KDQo+DQo+IEkgaGF2ZSB0aGUgZXhhY3Qgc2FtZSBpbXBsZW1lbnRhdGlvbiB3b3Jr
aW5nIHVuZGVyIG15IGludGVsIHBsYXRmb3JtLg0KPg0KPg0KPg0KPiBDYW4gc29tZW9uZSB0ZWxs
IG1lIHdoYXQgSSBtaWdodCBiZSBkb2luZyB3cm9uZywgb3IgaG93IEkgY2FuIGdldCBteSBjb25m
aWd1cmF0aW9uIGZyYWdtZW50cyB0byBiZSBhcHBsaWVkIHByb3Blcmx5ID8NCj4NCj4gQW55IGlk
ZWFzIHdoeSBpdCBtaWdodCB3b3JrIHByb3Blcmx5IHVuZGVyIG9uZSBhcmNoaXRlY3R1cmUgYW5k
IG5vdCBvbiB0aGUgb3RoZXIgPw0KPg0KPg0KPg0KPiBUaGFua3MsDQo+DQo+IFN0ZXZlDQo+DQo+
DQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVz
c2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBZb3UgYXV0b21hdGljYWxseSBmb2xsb3cgYW55
IHRvcGljcyB5b3Ugc3RhcnQgb3IgcmVwbHkgdG8uDQo+IFZpZXcvUmVwbHkgT25saW5lICgjNTY0
MjkpOiANCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS81
NjQyOQ0KPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9t
dC84OTc4MjY5NS8xOTk3OTE0DQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0
b3Byb2plY3Qub3JnDQo+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvZy95b2N0by91bnN1YiANCj4gW3Jhai5raGVtQGdtYWlsLmNvbV0NCj4gLT0tPS09LT0tPS09
LT0tPS09LT0tPS0NCj4NCg==

