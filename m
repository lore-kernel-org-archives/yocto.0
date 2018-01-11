Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515B9E00DD1; Thu, 11 Jan 2018 00:23:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4A8BE00D6E
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 00:23:35 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jan 2018 00:23:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,343,1511856000"; d="scan'208,217";a="9544497"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
	by orsmga007.jf.intel.com with ESMTP; 11 Jan 2018 00:23:34 -0800
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.138]) by
	irsmsx105.ger.corp.intel.com ([169.254.7.236]) with mapi id
	14.03.0319.002; Thu, 11 Jan 2018 08:23:27 +0000
From: "John, Maxin" <maxin.john@intel.com>
To: "ngthanh.vu94@gmail.com" <ngthanh.vu94@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How can I change the default ext4 or etx3 of the
	rootfs to ext2 or jffs2 in yocto build?
Thread-Index: AQHTirL+lmayH7o+NEqjm/MwbldPzqNuU63g
Date: Thu, 11 Jan 2018 08:23:26 +0000
Message-ID: <61C0517EAD808B429A1DE2DD9164D400326686DC@IRSMSX103.ger.corp.intel.com>
References: <CAGJSYqmyc+yZm9vi4OG8C2KU0=6RUv+Wfpx66yPqFCaze_AWCQ@mail.gmail.com>
In-Reply-To: <CAGJSYqmyc+yZm9vi4OG8C2KU0=6RUv+Wfpx66yPqFCaze_AWCQ@mail.gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2YxNmMwM2MtODBkOS00MDkxLThkMWMtZDliN2Q0ZGU3YmMxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJaSDUxQlJhXC9Hc2ZqUWhkVzRtcXhaa25IVHRMditxKzBlMjVrZW5Jdk15czBqVmJ4YTRYUUh3TkJcL3ZraW9qNnYifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: How can I change the default ext4 or etx3 of the rootfs to ext2 or jffs2 in yocto build?
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
X-List-Received-Date: Thu, 11 Jan 2018 08:23:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_61C0517EAD808B429A1DE2DD9164D400326686DCIRSMSX103gercor_"

--_000_61C0517EAD808B429A1DE2DD9164D400326686DCIRSMSX103gercor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkFuIGVhc3kgd2F5IHdpbGwgYmUgdG8gcmVmZXIgWW9jdG8gZG9jdW1lbnRhdGlvbjoN
Cmh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzL2N1cnJlbnQveW9jdG8tcHJvamVjdC1x
cy95b2N0by1wcm9qZWN0LXFzLmh0bWwNCg0KYW5kIGZvciByZXF1aXJlZCByb290ZnMgY2hhbmdl
cywgdXNlIElNQUdFX0ZTVFlQRVM6DQpodHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy8y
LjQvbWVnYS1tYW51YWwvbWVnYS1tYW51YWwuaHRtbCN2YXItSU1BR0VfRlNUWVBFUw0KDQo+RnJv
bTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5
b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgTmd1eT9uIFRoYW5oIFZ1DQo+U2VudDogVGh1
cnNkYXksIEphbnVhcnkgMTEsIDIwMTggMTA6MDUgQU0NCj5UbzogeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KPlN1YmplY3Q6IFt5b2N0b10gSG93IGNhbiBJIGNoYW5nZSB0aGUgZGVmYXVsdCBleHQ0
IG9yIGV0eDMgb2YgdGhlIHJvb3RmcyB0byBleHQyIG9yIGpmZnMyIGluIHlvY3RvIGJ1aWxkPw0K
DQo+SSB3YW50IHRvIG1pbmltaXplIHRoZSBzaXplIG9mIHRoZSBpbWFnZSBidWlsdCBpbiBjb3Jl
LWltYWdlLW1pbmltYWwuIEhvd2V2ZXIsIEkgaGF2ZSBubyBpZGVhIGhvdyB0byBjaGFuZ2UgdGhl
ID5sb2NhbC5jb25mIGZpbGUgb3IgcmVjaXBlIGZpbGUuIENhbiBhbnlvbmUgaGVscCBtZT8NCg0K
QmVzdCBSZWdhcmRzLA0KTWF4aW4NCg0K

--_000_61C0517EAD808B429A1DE2DD9164D400326686DCIRSMSX103gercor_
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
b2xvcjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBz
cGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojOTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxl
MTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGli
cmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6IzFGNDk3RDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJp
Zjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2lu
OjcyLjBwdCA3Mi4wcHQgNzIuMHB0IDcyLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6
V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpz
aGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5k
aWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRp
dCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48
L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2
M0MxIiB2bGluaz0iIzk1NEY3MiI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6
JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPkhpLDxicj4NCjxh
IG5hbWU9Il9NYWlsRW5kQ29tcG9zZSI+PGJyPg0KQW4gZWFzeSB3YXkgd2lsbCBiZSB0byByZWZl
ciBZb2N0byBkb2N1bWVudGF0aW9uOjxvOnA+PC9vOnA+PC9hPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48YSBocmVmPSJodHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy9j
dXJyZW50L3lvY3RvLXByb2plY3QtcXMveW9jdG8tcHJvamVjdC1xcy5odG1sIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMt
c2VyaWYiPmh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzL2N1cnJlbnQveW9jdG8tcHJv
amVjdC1xcy95b2N0by1wcm9qZWN0LXFzLmh0bWw8L3NwYW4+PC9hPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtj
b2xvcjojMUY0OTdEIj48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJp
JnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0Qi
PmFuZCBmb3IgcmVxdWlyZWQgcm9vdGZzIGNoYW5nZXMsIHVzZSBJTUFHRV9GU1RZUEVTOjxicj4N
Cjwvc3Bhbj48YSBocmVmPSJodHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy8yLjQvbWVn
YS1tYW51YWwvbWVnYS1tYW51YWwuaHRtbCN2YXItSU1BR0VfRlNUWVBFUyI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNl
cmlmIj5odHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy8yLjQvbWVnYS1tYW51YWwvbWVn
YS1tYW51YWwuaHRtbCN2YXItSU1BR0VfRlNUWVBFUzwvc3Bhbj48L2E+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
O2NvbG9yOiMxRjQ5N0QiPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGli
cmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBuYW1lPSJfX19fX3JlcGx5c2VwYXJhdG9y
Ij48L2E+PGI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4mZ3Q7RnJvbTo8L3NwYW4+PC9iPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1z
ZXJpZiI+IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5j
ZXNAeW9jdG9wcm9qZWN0Lm9yZ10NCjxiPk9uIEJlaGFsZiBPZiA8L2I+Tmd1eT9uIFRoYW5oIFZ1
IDxicj4NCjxiPiZndDtTZW50OjwvYj4gVGh1cnNkYXksIEphbnVhcnkgMTEsIDIwMTggMTA6MDUg
QU08YnI+DQo8Yj4mZ3Q7VG86PC9iPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0KPGI+Jmd0
O1N1YmplY3Q6PC9iPiBbeW9jdG9dIEhvdyBjYW4gSSBjaGFuZ2UgdGhlIGRlZmF1bHQgZXh0NCBv
ciBldHgzIG9mIHRoZSByb290ZnMgdG8gZXh0MiBvciBqZmZzMiBpbiB5b2N0byBidWlsZD88bzpw
PjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iY29sb3I6IzFG
NDk3RCI+Jmd0Ozwvc3Bhbj5JIHdhbnQgdG8gbWluaW1pemUgdGhlIHNpemUgb2YgdGhlIGltYWdl
IGJ1aWx0IGluIGNvcmUtaW1hZ2UtbWluaW1hbC4gSG93ZXZlciwgSSBoYXZlIG5vIGlkZWEgaG93
IHRvIGNoYW5nZSB0aGUNCjxzcGFuIHN0eWxlPSJjb2xvcjojMUY0OTdEIj4mZ3Q7PC9zcGFuPmxv
Y2FsLmNvbmYgZmlsZSBvciByZWNpcGUgZmlsZS4gQ2FuIGFueW9uZSBoZWxwIG1lPzxzcGFuIHN0
eWxlPSJjb2xvcjojMUY0OTdEIj48YnI+DQo8YnI+DQpCZXN0IFJlZ2FyZHMsPGJyPg0KTWF4aW48
YnI+DQo8YnI+DQo8L3NwYW4+PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_61C0517EAD808B429A1DE2DD9164D400326686DCIRSMSX103gercor_--
