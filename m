Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53960E0049D; Tue,  1 Nov 2016 08:31:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C2FBE00444
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 08:31:00 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EZAgCRtBhY/yYyC4ddGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgnMhFgEBAQEBH1h8BwGNLpcBlEWCB4YiAhqBcz8UAQIBAQEBAQEBA18?=
	=?us-ascii?q?ohGEBAQEBAxIRCkwQAgEIDQQEAQELHQMCAgIwFAkIAQEEDgUIGogyAZ9AilmMb?=
	=?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBARyGPYRVhEkVH4JOLYIvBZoaAZo+hXyNE4Q?=
	=?us-ascii?q?EHjZghRNyhlABgQsBAQE?=
X-IPAS-Result: =?us-ascii?q?A2EZAgCRtBhY/yYyC4ddGgEBAQECAQEBAQgBAQEBgnMhFgE?=
	=?us-ascii?q?BAQEBH1h8BwGNLpcBlEWCB4YiAhqBcz8UAQIBAQEBAQEBA18ohGEBAQEBAxIRC?=
	=?us-ascii?q?kwQAgEIDQQEAQELHQMCAgIwFAkIAQEEDgUIGogyAZ9AilmMbQEBAQEBAQEBAQE?=
	=?us-ascii?q?BAQEBAQEBAQEBARyGPYRVhEkVH4JOLYIvBZoaAZo+hXyNE4QEHjZghRNyhlABg?=
	=?us-ascii?q?QsBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,580,1473134400"; 
	d="scan'208,217";a="214370032"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	01 Nov 2016 11:30:59 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	01 Nov 2016 11:30:35 -0400
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0319.002; Tue, 1 Nov 2016 11:30:34 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Yocto 2.2 Morty supported Linux Distros
Thread-Index: AdI0UsdSor/FjekUSFCTTIyoE942BwAIzZoAAAhKcHA=
Date: Tue, 1 Nov 2016 15:30:33 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF67C98@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
In-Reply-To: <CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 15:31:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377987FF67C98AZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377987FF67C98AZUS1EXMB02glob_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciB0aGUgcXVpY2sgYW5zd2VyDQpNVg0KDQpGcm9tOiBCdXJ0b24sIFJvc3Mg
W21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQpTZW50OiBOb3ZlbWJlciAwMSwgMjAxNiAx
MToyOA0KVG86IFZ1aWxsZSwgTWFydGluIChNYXJ0aW4pOyBSaWZlbmJhcmssIFNjb3R0IE0NCkNj
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBZb2N0byAyLjIg
TW9ydHkgc3VwcG9ydGVkIExpbnV4IERpc3Ryb3MNCg0KDQpPbiAxIE5vdmVtYmVyIDIwMTYgYXQg
MTU6MTksIFZ1aWxsZSwgTWFydGluIChNYXJ0aW4pIDx2bWFydGluQGF2YXlhLmNvbTxtYWlsdG86
dm1hcnRpbkBhdmF5YS5jb20+PiB3cm90ZToNCklzIHRoYXQgY29ycmVjdC9pbnRlbnRpb25hbCwg
b3IgYSBkb2N1bWVudGF0aW9uIG92ZXJzaWdodD8NClVidW50dSAxNi4wNCBpcyBtZW50aW9uZWQg
ZWxzZXdoZXJlIGluIHRoZSBkb2NzLg0KDQpUaGF0J3MgYSBtaXN0YWtlLCBJIGNvbnNpZGVyIHRo
ZSB3aGl0ZWxpc3QgYXNzaWdubWVudCBpbiBwb2t5LmNvbmYgdG8gYmUgY2Fub25pY2FsIGFuZCB0
aGF0IGluY2x1ZGVzIDE2LjA0Lg0KDQo=

--_000_30C2D590D16A5C46ADFE6521910377987FF67C98AZUS1EXMB02glob_
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
eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIiwic2Fucy1zZXJpZiI7DQoJ
bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVM7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6
OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29y
ZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUg
bXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2
IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFw
ZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4N
CjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9
IkVOLUNBIiBsaW5rPSJibHVlIiB2bGluaz0icHVycGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0
aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBw
dDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDs7
Y29sb3I6IzFGNDk3RCI+VGhhbmsgeW91IGZvciB0aGUgcXVpY2sgYW5zd2VyPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1
b3Q7O2NvbG9yOiMxRjQ5N0QiPk1WPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
Q2FsaWJyaSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7O2NvbG9yOiMxRjQ5N0QiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1s
ZWZ0OnNvbGlkIGJsdWUgMS41cHQ7cGFkZGluZzowaW4gMGluIDBpbiA0LjBwdCI+DQo8ZGl2Pg0K
PGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjQjVDNERGIDEuMHB0O3Bh
ZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+PHNwYW4g
bGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1Rh
aG9tYSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7Ij5Gcm9tOjwvc3Bhbj48L2I+PHNwYW4g
bGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1Rh
aG9tYSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7Ij4gQnVydG9uLCBSb3NzIFttYWlsdG86
cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPGJyPg0KPGI+U2VudDo8L2I+IE5vdmVtYmVyIDAxLCAy
MDE2IDExOjI4PGJyPg0KPGI+VG86PC9iPiBWdWlsbGUsIE1hcnRpbiAoTWFydGluKTsgUmlmZW5i
YXJrLCBTY290dCBNPGJyPg0KPGI+Q2M6PC9iPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0K
PGI+U3ViamVjdDo8L2I+IFJlOiBbeW9jdG9dIFlvY3RvIDIuMiBNb3J0eSBzdXBwb3J0ZWQgTGlu
dXggRGlzdHJvczxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+T24gMSBOb3ZlbWJlciAyMDE2IGF0IDE1OjE5LCBWdWlsbGUsIE1hcnRpbiAoTWFy
dGluKSAmbHQ7PGEgaHJlZj0ibWFpbHRvOnZtYXJ0aW5AYXZheWEuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+dm1hcnRpbkBhdmF5YS5jb208L2E+Jmd0OyB3cm90ZTo8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2lu
LWJvdHRvbS1hbHQ6YXV0byI+SXMgdGhhdCBjb3JyZWN0L2ludGVudGlvbmFsLCBvciBhIGRvY3Vt
ZW50YXRpb24gb3ZlcnNpZ2h0PzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIg
c3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRv
Ij5VYnVudHUgMTYuMDQgaXMgbWVudGlvbmVkIGVsc2V3aGVyZSBpbiB0aGUgZG9jcy48bzpwPjwv
bzpwPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGJyPg0KVGhhdCdzIGEgbWlz
dGFrZSwgSSBjb25zaWRlciB0aGUgd2hpdGVsaXN0IGFzc2lnbm1lbnQgaW4gcG9reS5jb25mIHRv
IGJlIGNhbm9uaWNhbCBhbmQgdGhhdCBpbmNsdWRlcyAxNi4wNC48bzpwPjwvbzpwPjwvcD4NCjwv
ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_30C2D590D16A5C46ADFE6521910377987FF67C98AZUS1EXMB02glob_--
