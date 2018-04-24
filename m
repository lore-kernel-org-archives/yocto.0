Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8575AE00A75; Tue, 24 Apr 2018 13:13:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09E3DE009DB
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 13:13:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 47DEE18887;
	Tue, 24 Apr 2018 22:13:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id dPh4C_gkDhiF; Tue, 24 Apr 2018 22:13:06 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 2632C1888B;
	Tue, 24 Apr 2018 22:13:06 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C18FD1A061;
	Tue, 24 Apr 2018 22:13:05 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B51B91A05C;
	Tue, 24 Apr 2018 22:13:05 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Tue, 24 Apr 2018 22:13:05 +0200 (CEST)
Received: from XBOX02.axis.com (xbox02.axis.com [10.0.5.16])
	by seth.se.axis.com (Postfix) with ESMTP id A83601D03;
	Tue, 24 Apr 2018 22:13:05 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX02.axis.com (10.0.5.16) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 24 Apr 2018 22:13:05 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Tue, 24 Apr 2018 22:13:05 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>, Khem Raj
	<raj.khem@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] removal of user & group from sysroot when recipe/package
	is	cleaned
Thread-Index: AdPbyW9R9p73aH0tRdKhQBvNB5Ab3AAPEIHQ
Date: Tue, 24 Apr 2018 20:13:05 +0000
Message-ID: <329a5652d2584631a67dca67d9f0b727@XBOX02.axis.com>
References: <65c82ee09cf542a7a59693ea73659bc9@HIBDWSMB02.ad.harman.com>
In-Reply-To: <65c82ee09cf542a7a59693ea73659bc9@HIBDWSMB02.ad.harman.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: "connect.shrawan@gmail.com" <connect.shrawan@gmail.com>
Subject: Re: removal of user & group from sysroot when recipe/package is	cleaned
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Apr 2018 20:13:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_329a5652d2584631a67dca67d9f0b727XBOX02axiscom_"

--_000_329a5652d2584631a67dca67d9f0b727XBOX02axiscom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCBwYXRjaCBwcmVkYXRlcyB0aGUgUmVjaXBlIFNwZWNpZmljIFN5c3Jvb3RzIHRoYXQgd2Vy
ZSBpbnRyb2R1Y2VkIGluIFB5cm8uIE1vc3Qgb2YgaXQgaGFzIHNpbmNlIGJlZW4gcmVtb3ZlZCBh
cyBpdCBpcyBubyBsb25nZXIgcmVsZXZhbnQuDQoNCi8vUGV0ZXINCg0KRnJvbTogeW9jdG8tYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qu
b3JnXSBPbiBCZWhhbGYgT2YgS3VtYXIsIFNocmF3YW4NClNlbnQ6IGRlbiAyNCBhcHJpbCAyMDE4
IDE0OjQxDQpUbzogS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT47IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNCkNjOiBjb25uZWN0LnNocmF3YW5AZ21haWwuY29tDQpTdWJqZWN0OiBbeW9jdG9d
IHJlbW92YWwgb2YgdXNlciAmIGdyb3VwIGZyb20gc3lzcm9vdCB3aGVuIHJlY2lwZS9wYWNrYWdl
IGlzIGNsZWFuZWQNCg0KSGVsbG8gVGVhbSwNCg0KDQpSZWZlcnJpbmcgdG8gdGhlIHBhdGNoIGJl
bG93IHJlZ2FyZGluZyByZW1vdmFsIG9mIHVzZXIgJiBncm91cCBmcm9tIHN5c3Jvb3Qgd2hlbiBy
ZWNpcGUvcGFja2FnZSBpcyBjbGVhbmVkIHVzaW5nIGNsZWFuL2NsZWFuc3N0YXRlL2NsZWFuYWxs
IDoNCg0KDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLm9wZW5lbWJlZGRlZC5vcmcvcGF0Y2gvMTE5NTQ5
Lw0KDQoNCg0KDQoNCkhhcyB0aGlzIHBhdGNoIGJlZW4gdXAgc3RyZWFtZWQgPw0KDQpSZWdhcmRz
DQpTaHJhd2FuDQo=

--_000_329a5652d2584631a67dca67d9f0b727XBOX02axiscom_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9
DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCglj
b2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpw
dXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwcmUNCgl7bXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJIVE1MIFByZWZvcm1hdHRlZCBDaGFyIjsNCglt
YXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTAuMHB0Ow0K
CWZvbnQtZmFtaWx5OiJDb3VyaWVyIE5ldyI7fQ0Kc3Bhbi5IVE1MUHJlZm9ybWF0dGVkQ2hhcg0K
CXttc28tc3R5bGUtbmFtZToiSFRNTCBQcmVmb3JtYXR0ZWQgQ2hhciI7DQoJbXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJIVE1MIFByZWZvcm1hdHRlZCI7DQoJZm9udC1m
YW1pbHk6IkNvdXJpZXIgTmV3Ijt9DQpwLm1zb25vcm1hbDAsIGxpLm1zb25vcm1hbDAsIGRpdi5t
c29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCgltc28tbWFyZ2luLXRvcC1h
bHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGNtOw0KCW1zby1tYXJnaW4tYm90dG9tLWFsdDphdXRv
Ow0KCW1hcmdpbi1sZWZ0OjBjbTsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJU
aW1lcyBOZXcgUm9tYW4iLHNlcmlmO30NCnNwYW4ubTE3NTEyNDQ4NTgzMDY3Njg3NjltMzY0MTY5
MjczNTI5ODc5MjczaG9lbnpiDQoJe21zby1zdHlsZS1uYW1lOm1fMTc1MTI0NDg1ODMwNjc2ODc2
OW1fMzY0MTY5MjczNTI5ODc5MjczaG9lbnpiO30NCnNwYW4uRW1haWxTdHlsZTIxDQoJe21zby1z
dHlsZS10eXBlOnBlcnNvbmFsOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0K
CWNvbG9yOiMxRjQ5N0Q7fQ0Kc3Bhbi5FbWFpbFN0eWxlMjINCgl7bXNvLXN0eWxlLXR5cGU6cGVy
c29uYWw7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6IzFGNDk3
RDt9DQpzcGFuLkVtYWlsU3R5bGUyMw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsN
Cglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjojOTQzNjM0Ow0KCWZv
bnQtd2VpZ2h0Om5vcm1hbDsNCglmb250LXN0eWxlOm5vcm1hbDsNCgl0ZXh0LWRlY29yYXRpb246
bm9uZSBub25lO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5
Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBw
dCA3OTIuMHB0Ow0KCW1hcmdpbjo3Mi4wcHQgNzIuMHB0IDcyLjBwdCA3Mi4wcHQ7fQ0KZGl2Lldv
cmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3Rl
IG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAy
NiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hh
cGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+
DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5n
PSJTViIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBsZSI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlv
bjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250
LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtj
b2xvcjojOTQzNjM0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5UaGF0IHBhdGNoIHByZWRh
dGVzIHRoZSBSZWNpcGUgU3BlY2lmaWMgU3lzcm9vdHMgdGhhdCB3ZXJlIGludHJvZHVjZWQgaW4g
UHlyby4gTW9zdCBvZiBpdCBoYXMgc2luY2UgYmVlbiByZW1vdmVkIGFzIGl0DQogaXMgbm8gbG9u
Z2VyIHJlbGV2YW50LjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTom
cXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6Izk0MzYzNDttc28tZmFyZWFzdC1s
YW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQt
ZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojOTQzNjM0O21zby1m
YXJlYXN0LWxhbmd1YWdlOkVOLVVTIj4vL1BldGVyPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojOTQz
NjM0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48
L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCBibHVlIDEuNXB0
O3BhZGRpbmc6MGNtIDBjbSAwY20gNC4wcHQiPg0KPGRpdj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpu
b25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBjbSAwY20g
MGNtIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2Vy
aWYiPkZyb206PC9zcGFuPjwvYj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4geW9jdG8t
Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2pl
Y3Qub3JnXQ0KPGI+T24gQmVoYWxmIE9mIDwvYj5LdW1hciwgU2hyYXdhbjxicj4NCjxiPlNlbnQ6
PC9iPiBkZW4gMjQgYXByaWwgMjAxOCAxNDo0MTxicj4NCjxiPlRvOjwvYj4gS2hlbSBSYWogJmx0
O3Jhai5raGVtQGdtYWlsLmNvbSZndDs7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc8YnI+DQo8Yj5D
Yzo8L2I+IGNvbm5lY3Quc2hyYXdhbkBnbWFpbC5jb208YnI+DQo8Yj5TdWJqZWN0OjwvYj4gW3lv
Y3RvXSByZW1vdmFsIG9mIHVzZXIgJmFtcDsgZ3JvdXAgZnJvbSBzeXNyb290IHdoZW4gcmVjaXBl
L3BhY2thZ2UgaXMgY2xlYW5lZDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250
LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+SGVs
bG8gVGVhbSw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+
PC9zcGFuPjwvcD4NCjxwcmU+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0
OTdEIj5SZWZlcnJpbmcgdG8gdGhlIHBhdGNoIGJlbG93IHJlZ2FyZGluZyByZW1vdmFsIG9mIHVz
ZXIgJmFtcDsgZ3JvdXAgZnJvbSBzeXNyb290IHdoZW4gcjwvc3Bhbj48c3BhbiBsYW5nPSJFTi1V
UyI+ZWNpcGUvcGFja2FnZSBpcyBjbGVhbmVkIHVzaW5nIGNsZWFuL2NsZWFuc3N0YXRlL2NsZWFu
YWxsIDo8bzpwPjwvbzpwPjwvc3Bhbj48L3ByZT4NCjxwcmU+PHNwYW4gbGFuZz0iRU4tVVMiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcHJlPg0KPHByZT48c3BhbiBsYW5nPSJFTi1VUyI+PGEg
aHJlZj0iaHR0cHM6Ly9wYXRjaHdvcmsub3BlbmVtYmVkZGVkLm9yZy9wYXRjaC8xMTk1NDkvIj5o
dHRwczovL3BhdGNod29yay5vcGVuZW1iZWRkZWQub3JnL3BhdGNoLzExOTU0OS88L2E+PG86cD48
L286cD48L3NwYW4+PC9wcmU+DQo8cHJlPjxzcGFuIGxhbmc9IkVOLVVTIj48bzpwPiZuYnNwOzwv
bzpwPjwvc3Bhbj48L3ByZT4NCjxwcmU+PHNwYW4gbGFuZz0iRU4tVVMiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9zcGFuPjwvcHJlPg0KPHByZT48c3BhbiBsYW5nPSJFTi1VUyI+SGFzIHRoaXMgcGF0Y2gg
YmVlbiB1cCBzdHJlYW1lZCA/PG86cD48L286cD48L3NwYW4+PC9wcmU+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1m
YW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJp
JnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+UmVnYXJkczxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9u
dC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7
Y29sb3I6IzFGNDk3RCI+U2hyYXdhbjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9k
aXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_329a5652d2584631a67dca67d9f0b727XBOX02axiscom_--
