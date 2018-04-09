Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D78E00A04; Mon,  9 Apr 2018 06:08:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07678E00903
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 06:08:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Apr 2018 06:08:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,427,1517904000"; d="scan'208,217";a="35674831"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2018 06:08:27 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.176]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.61]) with mapi id
	14.03.0319.002; Mon, 9 Apr 2018 14:08:27 +0100
From: "John, Maxin" <maxin.john@intel.com>
To: Sherif Omran <sherifomran2000@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocot] bluez5 not included in image
Thread-Index: AQHTz//x/WiPrl99iUiNLRmvz9wwtaP4ZsQg
Date: Mon, 9 Apr 2018 13:08:26 +0000
Message-ID: <61C0517EAD808B429A1DE2DD9164D40032693AE5@IRSMSX101.ger.corp.intel.com>
References: <CAPb0b+NE9DzuweRZTVxmQDgqzSAe0NEGDhS9D5swx=J39Pb6eA@mail.gmail.com>
In-Reply-To: <CAPb0b+NE9DzuweRZTVxmQDgqzSAe0NEGDhS9D5swx=J39Pb6eA@mail.gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjdjNzJhMzMtZThiZi00ZTlkLWFhZDgtY2Y1YWQxZDJlMDgxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJ4M2pjVVdlVFlEUWpjbFZNNVJOem5tckZaemJxUmxlOVFnSzd2UjRcL2R2Qjh1UURqWURRdUJ1MVBpd0NpMENwcSJ9
x-ctpclassification: CTP_NT
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [yocot] bluez5 not included in image
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
X-List-Received-Date: Mon, 09 Apr 2018 13:08:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_61C0517EAD808B429A1DE2DD9164D40032693AE5IRSMSX101gercor_"

--_000_61C0517EAD808B429A1DE2DD9164D40032693AE5IRSMSX101gercor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCmJsdWV0b290aGQgZ2VuZXJhbGx5IGdldCBpbnN0YWxsZWQgaGVyZToNCg0KL3Vzci9s
aWJleGVjL2JsdWV0b290aC9ibHVldG9vdGhkDQoNCllvdSBzaG91bGQgcHJvYmFibHkgdXBkYXRl
IHRoZSBQQVRIIG9yIHVzZSBhYnNvbHV0ZSBwYXRoIHRvIGludm9rZSBibHVldG9vdGhkLg0KDQpC
ZXN0IFJlZ2FyZHMsDQpNYXhpbg0KRnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3Jn
IFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgU2hl
cmlmIE9tcmFuDQpTZW50OiBNb25kYXksIEFwcmlsIDksIDIwMTggMzozOCBQTQ0KVG86IFlvY3Rv
IGRpc2N1c3Npb24gbGlzdCA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NClN1YmplY3Q6IFt5b2N0
b10gW3lvY290XSBibHVlejUgbm90IGluY2x1ZGVkIGluIGltYWdlDQoNCkluIGxvY2FsLmNvbmYg
aSBoYXZlDQoNCkRJU1RST19GRUFUVVJFU19hcHBlbmQgKz0gIiBibHVlejUgYmx1ZXRvb3RoIHdp
ZmkiDQoNCklNQUdFX0lOU1RBTExfYXBwZW5kICs9ICIgbGludXgtZmlybXdhcmUtYmNtNDM0MzAg
Ymx1ZXo1IGJyaWRnZS11dGlscyB3cGEtc3VwcGxpY2FudCBweXRob24tc21idXMgaTJjLXRvb2xz
ICINCmFuZCB3aGVuIGkgcnVuIGJsdWV0b290aGQgLXYgaXQgaXMgbm90IGZvdW5kDQppdCBzZWVt
cyBmb3Igc29tZSByZWFzb24gYmx1ZXo1IGlzIG5vdCBpbmNsdWRlZC4NCg0K

--_000_61C0517EAD808B429A1DE2DD9164D40032693AE5IRSMSX101gercor_
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
JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPkhpLDxicj4NCjxi
cj4NCmJsdWV0b290aGQgZ2VuZXJhbGx5IGdldCBpbnN0YWxsZWQgaGVyZTo8YnI+DQo8YnI+DQo8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBuYW1lPSJfTWFp
bEVuZENvbXBvc2UiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj4vdXNyL2xpYmV4ZWMv
Ymx1ZXRvb3RoL2JsdWV0b290aGQ8YnI+DQo8YnI+DQpZb3Ugc2hvdWxkIHByb2JhYmx5IHVwZGF0
ZSB0aGUgUEFUSCBvciB1c2UgYWJzb2x1dGUgcGF0aCB0byBpbnZva2UgYmx1ZXRvb3RoZC48bzpw
PjwvbzpwPjwvc3Bhbj48L2E+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNl
cmlmO2NvbG9yOiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5CZXN0IFJlZ2FyZHMs
PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNl
cmlmO2NvbG9yOiMxRjQ5N0QiPk1heGluPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PGI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6
JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj5Gcm9tOjwvc3Bhbj48L2I+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5z
LXNlcmlmIj4geW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnXQ0KPGI+T24gQmVoYWxmIE9mIDwvYj5TaGVyaWYgT21yYW48
YnI+DQo8Yj5TZW50OjwvYj4gTW9uZGF5LCBBcHJpbCA5LCAyMDE4IDM6MzggUE08YnI+DQo8Yj5U
bzo8L2I+IFlvY3RvIGRpc2N1c3Npb24gbGlzdCAmbHQ7eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyZn
dDs8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gW3lvY3RvXSBbeW9jb3RdIGJsdWV6NSBub3QgaW5jbHVk
ZWQgaW4gaW1hZ2U8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5JbiBsb2Nh
bC5jb25mIGkgaGF2ZTxvOnA+PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
IHN0eWxlPSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+PGJyPg0KRElTVFJPX0ZFQVRVUkVTX2FwcGVu
ZCAmIzQzOz0gJnF1b3Q7IGJsdWV6NSBibHVldG9vdGggd2lmaSZxdW90Ozxicj4NCjxicj4NCklN
QUdFX0lOU1RBTExfYXBwZW5kICYjNDM7PSAmcXVvdDsgbGludXgtZmlybXdhcmUtYmNtNDM0MzAg
Ymx1ZXo1IGJyaWRnZS11dGlscyB3cGEtc3VwcGxpY2FudCBweXRob24tc21idXMgaTJjLXRvb2xz
ICZxdW90OzxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCIgc3R5bGU9Im1hcmdpbi1ib3R0b206MTIuMHB0Ij5hbmQgd2hlbiBpIHJ1biBibHVldG9vdGhk
IC12IGl0IGlzIG5vdCBmb3VuZDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+aXQgc2VlbXMgZm9yIHNvbWUgcmVhc29uIGJsdWV6NSBpcyBub3QgaW5j
bHVkZWQuPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
IiBzdHlsZT0ibWFyZ2luLWJvdHRvbToxMi4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9k
aXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_61C0517EAD808B429A1DE2DD9164D40032693AE5IRSMSX101gercor_--
