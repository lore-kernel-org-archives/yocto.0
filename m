Return-Path: <daniel.karlsson@actia.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58463C433F5
	for <webhook@archiver.kernel.org>; Tue, 17 May 2022 08:29:51 +0000 (UTC)
Received: from mail.actia.se (mail.actia.se [212.181.117.226])
 by mx.groups.io with SMTP id smtpd.web09.4690.1652776181558097714
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 May 2022 01:29:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: actia.se, ip: 212.181.117.226, mailfrom: daniel.karlsson@actia.se)
Received: from S036ANL.actianordic.se (10.12.31.117) by S036ANL.actianordic.se
 (10.12.31.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Tue, 17 May
 2022 10:29:38 +0200
Received: from S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69]) by
 S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69%3]) with mapi id
 15.01.2375.028; Tue, 17 May 2022 10:29:38 +0200
From: Daniel Karlsson <daniel.karlsson@actia.se>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: OpenSSL 1.1.1o in next dunfell release
Thread-Topic: OpenSSL 1.1.1o in next dunfell release
Thread-Index: AdhpyCx7gLSGHGI1S+uOCzXj2OqaMQ==
Date: Tue, 17 May 2022 08:29:38 +0000
Message-ID: <e3a2ba8e2cd541eb9d39e6fb4365db77@actia.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.12.12.67]
x-esetresult: clean, is OK
x-esetid: 37303A294905C85260746A
Content-Type: multipart/alternative;
	boundary="_000_e3a2ba8e2cd541eb9d39e6fb4365db77actiase_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 May 2022 08:29:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57120

--_000_e3a2ba8e2cd541eb9d39e6fb4365db77actiase_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk91ciBjdXN0b21lciB3YW50cyB1cyB0byBzaGlwIE9wZW5TU0wgMS4xLjFvIG9yIGEg
bGF0ZXIgdmVyc2lvbiBpbiBvdXIgbmV4dCBzb2Z0d2FyZSByZWxlYXNlIHNvIEnigJltIGludGVy
ZXN0ZWQgdG8ga25vdyBpZiB5b3UgcGxhbiB0byB1cGRhdGUgT3BlblNTTCBpbiB0aW1lIGZvciBZ
UCAzLjEuMTc/DQoNCkRhbmllbCBLYXJsc3Nvbg0KDQo=

--_000_e3a2ba8e2cd541eb9d39e6fb4365db77actiase_
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
b24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5IaSw8bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPk91ciBjdXN0b21lciB3YW50cyB1cyB0byBzaGlwIE9wZW5TU0wgMS4xLjFv
IG9yIGEgbGF0ZXIgdmVyc2lvbiBpbiBvdXIgbmV4dCBzb2Z0d2FyZSByZWxlYXNlIHNvIEnigJlt
IGludGVyZXN0ZWQgdG8ga25vdyBpZiB5b3UgcGxhbiB0byB1cGRhdGUgT3BlblNTTCBpbiB0aW1l
IGZvciBZUCAzLjEuMTc/PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5EYW5pZWwgS2FybHNzb248bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwv
cD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_e3a2ba8e2cd541eb9d39e6fb4365db77actiase_--

