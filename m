Return-Path: <daniel.karlsson@actia.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511E7C433EF
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 07:13:25 +0000 (UTC)
Received: from mail.actia.se (mail.actia.se [212.181.117.226])
 by mx.groups.io with SMTP id smtpd.web12.6611.1653376402699261757
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 00:13:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: actia.se, ip: 212.181.117.226, mailfrom: daniel.karlsson@actia.se)
Received: from S036ANL.actianordic.se (10.12.31.117) by S036ANL.actianordic.se
 (10.12.31.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Tue, 24 May
 2022 09:13:20 +0200
Received: from S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69]) by
 S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69%3]) with mapi id
 15.01.2375.028; Tue, 24 May 2022 09:13:20 +0200
From: Daniel Karlsson <daniel.karlsson@actia.se>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Index variables not unset in concat_dtb_helper
Thread-Topic: Index variables not unset in concat_dtb_helper
Thread-Index: AdhvPbr40lhvu/WFTZGAZbOGxyC/mg==
Date: Tue, 24 May 2022 07:13:20 +0000
Message-ID: <761f885e46b849a38840642959c32ecd@actia.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.12.12.67]
x-esetresult: clean, is OK
x-esetid: 37303A294905C852607C6A
Content-Type: multipart/alternative;
	boundary="_000_761f885e46b849a38840642959c32ecdactiase_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 07:13:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57168

--_000_761f885e46b849a38840642959c32ecdactiase_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hpbGUgdGVzdGluZyBLaXJrc3RvbmUgSSBnb3QgYSBidWlsZCBlcnJvciB0ZWxsaW5nIG1lIHRo
YXQgZGVwbG95LXUtYm9vdC91LWJvb3QuYmluLWZsYXNobG9hZGVyIGlzIG5vdCBmb3VuZC4gVGhl
IGVycm9yIGlzIGNhdXNlZCBieSBub3QgdW5zZXR0aW5nIHRoZSBpbmRleCB2YXJpYWJsZXMgaSBh
bmQgaiBpbiBjb25jYXRfZHRiX2hlbHBlci4gSXMgdGhpcyBzb21ldGhpbmcgd2hpY2ggaXMgZWxp
Z2libGUgZm9yIGluY2x1c2lvbiBpbiB0aGUgS2lya3N0b25lIGJyYW5jaD8NCg==

--_000_761f885e46b849a38840642959c32ecdactiase_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCW1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVT
O30NCnNwYW4uRW1haWxTdHlsZTE3DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7
DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9
DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZh
bWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgltc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9
DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcy
LjBwdCA3Mi4wcHQgNzIuMHB0IDcyLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29y
ZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFw
ZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZd
LS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+
DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3ht
bD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0
RjcyIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rp
b24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5XaGlsZSB0ZXN0
aW5nIEtpcmtzdG9uZSBJIGdvdCBhIGJ1aWxkIGVycm9yIHRlbGxpbmcgbWUgdGhhdCBkZXBsb3kt
dS1ib290L3UtYm9vdC5iaW4tZmxhc2hsb2FkZXIgaXMgbm90IGZvdW5kLiBUaGUgZXJyb3IgaXMg
Y2F1c2VkIGJ5IG5vdCB1bnNldHRpbmcgdGhlIGluZGV4IHZhcmlhYmxlcyBpIGFuZCBqIGluIGNv
bmNhdF9kdGJfaGVscGVyLiBJcyB0aGlzIHNvbWV0aGluZyB3aGljaA0KIGlzIGVsaWdpYmxlIGZv
ciBpbmNsdXNpb24gaW4gdGhlIEtpcmtzdG9uZSBicmFuY2g/PG86cD48L286cD48L3NwYW4+PC9w
Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_761f885e46b849a38840642959c32ecdactiase_--

