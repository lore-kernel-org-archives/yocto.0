Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4423CE00A6B; Wed, 23 Nov 2016 06:02:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42201E00A0A
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 06:02:04 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GNAwD9oDVY/xUHmMZeHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhJAEBAQEBH1iBAgcBjTiXGodyjQGCB4JrgzYCGoF/PxQBAgEBAQEBAQEDXyi?=
	=?us-ascii?q?EaAEBAQEDEhEKTBACAQgNAQMEAQELHQMCAgIfERQJCAIEAQ0FCBqIMQMXAaR7i?=
	=?us-ascii?q?mOCKSoChx4NhBEBAQEBAQEBAQEBAQEBAQEBAQEBAQEchj+EWoJIggMVH4JOLYI?=
	=?us-ascii?q?SHgWaGjUBjSwBjXCGE4k7hC+EDB43hlxyhzgBgQwBAQE?=
X-IPAS-Result: =?us-ascii?q?A2GNAwD9oDVY/xUHmMZeHAEBBAEBCgEBgnMhJAEBAQEBH1i?=
	=?us-ascii?q?BAgcBjTiXGodyjQGCB4JrgzYCGoF/PxQBAgEBAQEBAQEDXyiEaAEBAQEDEhEKT?=
	=?us-ascii?q?BACAQgNAQMEAQELHQMCAgIfERQJCAIEAQ0FCBqIMQMXAaR7imOCKSoChx4NhBE?=
	=?us-ascii?q?BAQEBAQEBAQEBAQEBAQEBAQEBAQEchj+EWoJIggMVH4JOLYISHgWaGjUBjSwBj?=
	=?us-ascii?q?XCGE4k7hC+EDB43hlxyhzgBgQwBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,538,1473134400"; 
	d="scan'208,217";a="217482750"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	23 Nov 2016 09:01:16 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	23 Nov 2016 09:01:13 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0319.002; Wed, 23 Nov 2016 09:01:12 -0500
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Christopher Larson <clarson@kergoth.com>, Daniel. <danielhilst@gmail.com>
Thread-Topic: [yocto] Extracting PV & PR from Makefile at compilation time.
Thread-Index: AQHSRY1iDXf/+7XB2Ey4hWMimZGXtqDmgyOAgAAVhcA=
Date: Wed, 23 Nov 2016 14:01:11 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7F626B@AZ-FFEXMB01.global.avaya.com>
References: <CAF3SDA6CjS0Tdfy0hqJEg+sYv67HpeYe9HOO9GBL6JQSjXaWHw@mail.gmail.com>
	<CABcZANk0XfQTA5dio2NQvRnV+cSF3dLF+Rpv8+3RY-kUO=0y=w@mail.gmail.com>
In-Reply-To: <CABcZANk0XfQTA5dio2NQvRnV+cSF3dLF+Rpv8+3RY-kUO=0y=w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extracting PV & PR from Makefile at compilation time.
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
X-List-Received-Date: Wed, 23 Nov 2016 14:02:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3E7F626BAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3E7F626BAZFFEXMB01globa_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T25lIHF1aWNrIHdheSB3b3VsZCBiZSB0byB1c2UgZW52aXJvbm1lbnQgdmFyaWFibGVzIGluIGJv
dGggcGxhY2VzLiBTbyB5b3UgY2FuIGV4cG9ydCB0aGVtIGJlZm9yZSBzdGFydGluZyBhIGJ1aWxk
Lg0KDQpGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1i
b3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBDaHJpc3RvcGhlciBMYXJzb24N
ClNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMTYgMTk6MTMNClRvOiBEYW5pZWwuDQpD
YzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gRXh0cmFjdGlu
ZyBQViAmIFBSIGZyb20gTWFrZWZpbGUgYXQgY29tcGlsYXRpb24gdGltZS4NCg0KDQpPbiBXZWQs
IE5vdiAyMywgMjAxNiBhdCA2OjI2IEFNLCBEYW5pZWwuIDxkYW5pZWxoaWxzdEBnbWFpbC5jb208
bWFpbHRvOmRhbmllbGhpbHN0QGdtYWlsLmNvbT4+IHdyb3RlOg0KSSBoYXZlIGEgTWFrZWZpbGUg
d2l0aCB0aGlzIGhlYWRlcg0KDQptYWpvciA9IDENCm1pbm9yID0gMA0KcGF0Y2ggPSAxMA0KcmVs
ZWFzZSA9IC1iZXRhDQoNCldoaWNoIGNvbXBpbGF0ZXMgc29tZXRpbmcgbGlrZSBsaWJteWxpYi5z
by4xLjAuMTAtYmV0YSBzaGFyZWQgb2JqZWN0Lg0KT24gcmVjaXBlIEkgZHVwbGljYXRlIHRoaXMg
aW5mb3JtYXRpb246DQpQVj0iMS4wLjEwIg0KUFI9Ii1iZXRhIg0KDQpJcyB0aGVyZSBhbnl3YXkg
dG8gZ3JhYiB0aGF0IGluZm9ybWF0aW9uIGZyb20gTWFrZWZpbGUgYW5kIHNldHRpbmcgUFYgJiBQ
UiBhY2NvcmRpbmcgdG8gaXQ/IEF0IGNvbXBpbGF0aW9uIHRpbWU/IFNvIHRoYXQgSSBvbmx5IGhh
dmUgdG8gY2hhbmdlIGF0IG9uZSBwbGFjZT8NCg0KYml0YmFrZSB3YW50cyB0byBrbm93IHB2L3By
IGF0IHBhcnNlIHRpbWUsIGxvbmcgYmVmb3JlIHRoZSBzb3VyY2VzIGhhdmUgYmVlbiBmZXRjaGVk
IGFuZCB1bnBhY2tlZC4NCi0tDQpDaHJpc3RvcGhlciBMYXJzb24NCmNsYXJzb24gYXQga2VyZ290
aCBkb3QgY29tDQpGb3VuZGVyIC0gQml0QmFrZSwgT3BlbkVtYmVkZGVkLCBPcGVuWmF1cnVzDQpN
YWludGFpbmVyIC0gVHNsaWINClNlbmlvciBTb2Z0d2FyZSBFbmdpbmVlciwgTWVudG9yIEdyYXBo
aWNzDQo=

--_000_F38A866CD026F746A3BF0928A84397BE3E7F626BAZFFEXMB01globa_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTQgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJ
e2ZvbnQtZmFtaWx5OlRhaG9tYTsNCglwYW5vc2UtMToyIDExIDYgNCAzIDUgNCA0IDIgNDt9DQov
KiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1z
b05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNp
emU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iLCJzZXJpZiI7fQ0KYTps
aW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6
Ymx1ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bhbi5Nc29I
eXBlcmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6cHVycGxl
Ow0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcNCgl7bXNv
LXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLCJzYW5z
LXNlcmlmIjsNCgljb2xvcjojMUY0OTdEO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10
eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIiwic2Fucy1zZXJpZiI7fQ0K
QHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAx
LjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24x
O30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRz
IHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtp
ZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1h
cCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRp
Zl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0icHVy
cGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1
b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDs7Y29sb3I6IzFGNDk3RCI+T25lIHF1aWNrIHdheSB3
b3VsZCBiZSB0byB1c2UgZW52aXJvbm1lbnQgdmFyaWFibGVzIGluIGJvdGggcGxhY2VzLiBTbyB5
b3UgY2FuIGV4cG9ydCB0aGVtIGJlZm9yZSBzdGFydGluZyBhIGJ1aWxkLjxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90
Oztjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48Yj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTom
cXVvdDtUYWhvbWEmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90OyI+RnJvbTo8L3NwYW4+PC9i
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZx
dW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7Ij4geW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qu
b3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXQ0KPGI+T24gQmVoYWxm
IE9mIDwvYj5DaHJpc3RvcGhlciBMYXJzb248YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5LCBO
b3ZlbWJlciAyMywgMjAxNiAxOToxMzxicj4NCjxiPlRvOjwvYj4gRGFuaWVsLjxicj4NCjxiPkNj
OjwvYj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW3lv
Y3RvXSBFeHRyYWN0aW5nIFBWICZhbXA7IFBSIGZyb20gTWFrZWZpbGUgYXQgY29tcGlsYXRpb24g
dGltZS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZu
YnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24gV2VkLCBOb3Yg
MjMsIDIwMTYgYXQgNjoyNiBBTSwgRGFuaWVsLiAmbHQ7PGEgaHJlZj0ibWFpbHRvOmRhbmllbGhp
bHN0QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmRhbmllbGhpbHN0QGdtYWlsLmNvbTwvYT4m
Z3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5JIGhhdmUgYSBNYWtlZmlsZSB3aXRoIHRoaXMgaGVhZGVyPG86cD48L286cD48L3A+DQo8
L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+
DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWFqb3IgPSAxPG86cD48L286cD48L3A+DQo8
L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5taW5vciA9IDA8bzpwPjwvbzpwPjwv
cD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPnBhdGNoID0gMTA8bzpwPjwv
bzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtYXJn
aW4tYm90dG9tOjEyLjBwdCI+cmVsZWFzZSA9IC1iZXRhPGJyPg0KPGJyPg0KPG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWJv
dHRvbToxMi4wcHQiPldoaWNoIGNvbXBpbGF0ZXMgc29tZXRpbmcgbGlrZSBsaWJteWxpYi5zby4x
LjAuMTAtYmV0YSBzaGFyZWQgb2JqZWN0LjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+T24gcmVjaXBlIEkgZHVwbGljYXRlIHRoaXMgaW5mb3JtYXRp
b246PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Q
Vj0mcXVvdDsxLjAuMTAmcXVvdDs8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPlBSPSZxdW90Oy1iZXRhJnF1b3Q7PG86cD48L286cD48L3A+DQo8L2Rp
dj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwv
ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPklzIHRoZXJlIGFueXdheSB0byBncmFi
IHRoYXQgaW5mb3JtYXRpb24gZnJvbSBNYWtlZmlsZSBhbmQgc2V0dGluZyBQViAmYW1wOyBQUiBh
Y2NvcmRpbmcgdG8gaXQ/IEF0IGNvbXBpbGF0aW9uIHRpbWU/IFNvIHRoYXQgSSBvbmx5IGhhdmUg
dG8gY2hhbmdlIGF0IG9uZSBwbGFjZT88bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+DQpiaXRiYWtlIHdhbnRzIHRvIGtub3cgcHYvcHIgYXQg
cGFyc2UgdGltZSwgbG9uZyBiZWZvcmUgdGhlIHNvdXJjZXMgaGF2ZSBiZWVuIGZldGNoZWQgYW5k
IHVucGFja2VkLjxicj4NCi0tIDxvOnA+PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPkNocmlzdG9waGVyIExhcnNvbjxicj4NCmNsYXJzb24gYXQga2VyZ290aCBkb3QgY29t
PGJyPg0KRm91bmRlciAtIEJpdEJha2UsIE9wZW5FbWJlZGRlZCwgT3BlblphdXJ1czxicj4NCk1h
aW50YWluZXIgLSBUc2xpYjxicj4NClNlbmlvciBTb2Z0d2FyZSBFbmdpbmVlciwgTWVudG9yIEdy
YXBoaWNzPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwv
Ym9keT4NCjwvaHRtbD4NCg==

--_000_F38A866CD026F746A3BF0928A84397BE3E7F626BAZFFEXMB01globa_--
