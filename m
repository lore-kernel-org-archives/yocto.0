Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91E15E00AE4; Tue, 24 Apr 2018 05:55:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.16 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 829 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Apr 2018 05:55:22 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A83BE00BFD
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 05:55:22 -0700 (PDT)
Received: from [216.82.250.99] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-16.bemta-12.messagelabs.com id 57/3D-08484-CF52FDA5;
	Tue, 24 Apr 2018 12:41:32 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEKsWRWlGSWpSXmKPExsVySpdNU/eP6v0
	og5tHmC1uXPzBYtF2fRajxaSXa9gcmD12zrrL7tF+oo8tgCmKNTMvKb8igTXj1p3F7AVvtCv6
	jk5naWCcpt3FyMUhJLCVUeLBoYusEM4WRommSx+hnL2MEpfmfmDqYuTkYBMwlLjSc5cRxBYRC
	JX4NOcxM4jNLGAt0TdhJnsXIweHsICvxJwzmhAlwRK793dDletJvN32mA2khEVAVWLpoRiQMK
	+Au8S5l4fApjMKyEp8aVwNNVFc4taT+WBxCQEBiSV7zjND2KISLx//Y4WwDSS2Lt3HAmErSKz
	sbmCD6M2ROPjkPCvEfEGJkzOfgNUIAa3dsvA3ywRGkVlIVsxC0jILScssoEuZBTQl1u/ShyhR
	lJjS/ZAdwtaQaJ0zlx1ZfAEj+ypGjeLUorLUIl0TM72kosz0jJLcxMwcXUNDI73c1OLixPTUn
	MSkYr3k/NxNjMDYq2dgYNzBeHVh9CFGSQ4mJVHe6Uz3o4T4kvJTKjMSizPii0pzUosPMcpwcC
	hJ8OoAY1lIsCg1PbUiLTMHmARg0hIcPEoivNkgad7igsTc4sx0iNQpRnuON209Pcwch95PAZL
	nwOSTy9N6mIVY8vLzUqXEedlA2gRA2jJK8+CGwpLWJUZZKWFeRgYGBiGegtSi3MwSVPlXjOIc
	jErCvIYgU3gy80rgdr8COosJ6KwOyTsgZ5UkIqSkGhjbXY+9VBRZ4TFJ/GGC9r97856dtbdYv
	43V8OA0W4sr7Xe8Oyay3kxX1Tz7oFdwXXyWSrtj9fzmnbLcXns7XzZ6XjrRoHPmtYNK7yapxI
	ay68t0mN8H2m14YCh3i+2qePvmD1vUeJ9uu/fy6sE7SzgUNh6bUdfDzvNzVcczxTibUve2/MK
	6ZYeVWIozEg21mIuKEwETXoSeVQMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-9.tower-126.messagelabs.com!1524573678!107158206!5
X-Originating-IP: [202.45.6.41]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.9.15; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 4372 invoked from network); 24 Apr 2018 12:41:31 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
	by server-9.tower-126.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 24 Apr 2018 12:41:31 -0000
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server
	(TLS) id 15.0.1365.1; Tue, 24 Apr 2018 18:11:08 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB02.ad.harman.com (10.99.236.92) with Microsoft SMTP Server
	(TLS) id 15.0.1365.1; Tue, 24 Apr 2018 18:11:08 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::38:2b52:71d0:85df]) by
	HIBDWSMB02.ad.harman.com ([fe80::38:2b52:71d0:85df%16]) with mapi id
	15.00.1365.000; Tue, 24 Apr 2018 18:11:08 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: removal of user & group from sysroot when recipe/package is
	cleaned 
Thread-Index: AdPbyW9R9p73aH0tRdKhQBvNB5Ab3A==
Date: Tue, 24 Apr 2018 12:41:07 +0000
Message-ID: <65c82ee09cf542a7a59693ea73659bc9@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
Cc: "connect.shrawan@gmail.com" <connect.shrawan@gmail.com>
Subject: removal of user & group from sysroot when recipe/package is cleaned
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
X-List-Received-Date: Tue, 24 Apr 2018 12:55:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_65c82ee09cf542a7a59693ea73659bc9HIBDWSMB02adharmancom_"

--_000_65c82ee09cf542a7a59693ea73659bc9HIBDWSMB02adharmancom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gVGVhbSwNCg0KDQpSZWZlcnJpbmcgdG8gdGhlIHBhdGNoIGJlbG93IHJlZ2FyZGluZyBy
ZW1vdmFsIG9mIHVzZXIgJiBncm91cCBmcm9tIHN5c3Jvb3Qgd2hlbiByZWNpcGUvcGFja2FnZSBp
cyBjbGVhbmVkIHVzaW5nIGNsZWFuL2NsZWFuc3N0YXRlL2NsZWFuYWxsIDoNCg0KDQoNCmh0dHBz
Oi8vcGF0Y2h3b3JrLm9wZW5lbWJlZGRlZC5vcmcvcGF0Y2gvMTE5NTQ5Lw0KDQoNCg0KDQoNCkhh
cyB0aGlzIHBhdGNoIGJlZW4gdXAgc3RyZWFtZWQgPw0KDQpSZWdhcmRzDQpTaHJhd2FuDQo=

--_000_65c82ee09cf542a7a59693ea73659bc9HIBDWSMB02adharmancom_
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
c29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6
IzFGNDk3RDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsN
Cglmb250LXNpemU6MTAuMHB0O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQg
NzkyLjBwdDsNCgltYXJnaW46NzIuMHB0IDcyLjBwdCA3Mi4wcHQgNzIuMHB0O30NCmRpdi5Xb3Jk
U2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBt
c28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYi
IC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBl
bGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0K
PC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0i
RU4tVVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rp
b24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdE
Ij5IZWxsbyBUZWFtLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkm
cXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48
L3A+DQo8cHJlPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5SZWZlcnJpbmcgdG8gdGhl
IHBhdGNoIGJlbG93IHJlZ2FyZGluZyByZW1vdmFsIG9mIHVzZXIgJmFtcDsgZ3JvdXAgZnJvbSBz
eXNyb290IHdoZW4gcjwvc3Bhbj5lY2lwZS9wYWNrYWdlIGlzIGNsZWFuZWQgdXNpbmcgY2xlYW4v
Y2xlYW5zc3RhdGUvY2xlYW5hbGwgOjxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wcmU+DQo8cHJlPjxhIGhyZWY9Imh0dHBzOi8vcGF0Y2h3b3JrLm9wZW5lbWJlZGRl
ZC5vcmcvcGF0Y2gvMTE5NTQ5LyI+aHR0cHM6Ly9wYXRjaHdvcmsub3BlbmVtYmVkZGVkLm9yZy9w
YXRjaC8xMTk1NDkvPC9hPjxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPjxvOnA+Jm5ic3A7PC9vOnA+
PC9wcmU+DQo8cHJlPjxvOnA+Jm5ic3A7PC9vOnA+PC9wcmU+DQo8cHJlPkhhcyB0aGlzIHBhdGNo
IGJlZW4gdXAgc3RyZWFtZWQgPzxvOnA+PC9vOnA+PC9wcmU+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJp
JnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0Qi
PlJlZ2FyZHM8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7
LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+U2hyYXdhbjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_65c82ee09cf542a7a59693ea73659bc9HIBDWSMB02adharmancom_--
