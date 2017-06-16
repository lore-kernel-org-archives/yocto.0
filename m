Return-Path: <Alok.Pawar3@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06B3EE00B18; Fri, 16 Jun 2017 03:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.5 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00ECE009A5
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:43:02 -0700 (PDT)
Received: from [216.82.251.35] by server-5.bemta-12.messagelabs.com id
	F9/89-02204-536B3495; Fri, 16 Jun 2017 10:43:01 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKKsWRWlGSWpSXmKPExsVySpdNU9dkm3O
	kwZTn6hbzdthbTHq5hs2ByWPxnpdMHu0n+tgCmKJYM/OS8isSWDP6OmeyFlyyrdgw9RNrA+M9
	my5GLg4hga2MErf+PmSDcLYwSjzbtIgRwtnLKLGu7xtrFyMnB5uAjsTjD3fAbBEBLYmzrx8zg
	9jMAqYSk2e0gNnCApYSi2+fZISosZJo7P/NAmGHSVzrnAoWZxFQlVh58j07iM0r4C7x7OoZqG
	WTmSU2XW0BK+IUCJQ4dOQOWDOjgJjE91NrmCCWiUvcejIfzJYQEJBYsuc8M4QtKvHy8T9WCNt
	AYuvSfSwQtoLEyu4GNgjbWmL/vKWsEHNyJJ7fPcYCcYSgxMmZT8BsIQFliT2PGhgnMIrPQrJu
	FpKWWUhaZjFyAMU1Jdbv0ocoUZSY0v2QHcLWkGidM5cdWXwBI/sqRo3i1KKy1CJdYwu9pKLM9
	IyS3MTMHF1DQyO93NTi4sT01JzEpGK95PzcTYzA6K1nYGDcwfhif/QhRkkOJiVRXn45p0ghvq
	T8lMqMxOKM+KLSnNTiQ4wyHBxKErxyW50jhQSLUtNTK9Iyc4BpBCYtwcGjJMLLtAkozVtckJh
	bnJkOkTrFqCglzqsJ0icAksgozYNrg6WuS4yyUsK8jAwMDEI8BalFuZklqPKvGMU5GJWEIabw
	ZOaVwE1/BbSYCWhx0AUHkMUliQgpqQbG7q1fNNL+chuVMQutXjW93ki87l0Rq2J7qv25aOeJm
	07deVGS8PDMe4Hgpk81m+vSqlniax/OXSPMaHN8hlUH+9RvPNNzxStui700cLG7GztBNnrT2j
	U9JTcuX22tMmTe220oaZuxKrhCwMjehOefX/XHmJmaH7kCnjS7JB0+Ia/Okr+x5LgSS3FGoqE
	Wc1FxIgAAawrIWAMAAA==
X-Env-Sender: Alok.Pawar3@harman.com
X-Msg-Ref: server-3.tower-151.messagelabs.com!1497609778!46197149!1
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.19; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 54801 invoked from network); 16 Jun 2017 10:43:00 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-3.tower-151.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 16 Jun 2017 10:43:00 -0000
Received: from HIBDWSMB01.ad.harman.com (10.99.236.91) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Fri, 16 Jun 2017 16:12:57 +0530
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB01.ad.harman.com (10.99.236.91) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Fri, 16 Jun 2017 16:12:57 +0530
Received: from HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348]) by
	HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348%13]) with mapi id
	15.00.1263.000; Fri, 16 Jun 2017 16:12:57 +0530
From: "Pawar, Alok" <Alok.Pawar3@harman.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [EXTERNAL] Re: [yocto] Yocto VLC compilation
Thread-Index: AdLmhPUG2KFFomz/RkiRsUYFxe2uQ///rcaA//+h8ICAAGDjAP//o1PQgABeywD//6I7oA==
Date: Fri, 16 Jun 2017 10:42:56 +0000
Message-ID: <1cf497990ddf4801b409b159d58cc943@HIBDWSMB03.ad.harman.com>
References: <b052b8f70c6d46c8b9c8aa54abab4c17@HIBDWSMB03.ad.harman.com>
	<CAJTo0LYAK3yiAgfWOF3q9y2rNeBs1EXaf3sRZ0bCoXqj50zSuw@mail.gmail.com>
	<35df41582d4b4f16a9bddd6a77e186c5@HIBDWSMB03.ad.harman.com>
	<CAJTo0LbKP5dLppYKTMEJg=4dg3wgq0wyN_+=1ruFrqanxh89PA@mail.gmail.com>
	<f0387fca00764b658bc7d3fa61dfb0b6@HIBDWSMB03.ad.harman.com>
	<CAJTo0LZ3Yr9OKfgH=+AWfs-ajjUgSht6=-AGe+Oy2-h9NQy04Q@mail.gmail.com>
In-Reply-To: <CAJTo0LZ3Yr9OKfgH=+AWfs-ajjUgSht6=-AGe+Oy2-h9NQy04Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Yocto VLC compilation
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
X-List-Received-Date: Fri, 16 Jun 2017 10:43:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1cf497990ddf4801b409b159d58cc943HIBDWSMB03adharmancom_"

--_000_1cf497990ddf4801b409b159d58cc943HIBDWSMB03adharmancom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIEJ1cnRvbiwgZm9yIHRoZSBpbmZvcm1hdGlvbiwgaXQgaXMgdmVyeSBoZWxwZnVsLg0K
DQpCZXN0IFJlZ2FyZHMNCkFsb2sgUGF3YXINClNyLiBFbmdpbmVlciBQcm9kdWN0IERldmVsb3Bt
ZW50DQoNCkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0N
ClNlbnQ6IEZyaWRheSwgSnVuZSAxNiwgMjAxNyA0OjA3IFBNDQpUbzogUGF3YXIsIEFsb2sgPEFs
b2suUGF3YXIzQGhhcm1hbi5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVj
dDogUmU6IFtFWFRFUk5BTF0gUmU6IFt5b2N0b10gWW9jdG8gVkxDIGNvbXBpbGF0aW9uDQoNCg0K
T24gMTYgSnVuZSAyMDE3IGF0IDExOjMyLCBQYXdhciwgQWxvayA8QWxvay5QYXdhcjNAaGFybWFu
LmNvbTxtYWlsdG86QWxvay5QYXdhcjNAaGFybWFuLmNvbT4+IHdyb3RlOg0KRmZtcGVnIGNvbnRh
aW5zIOKAmCBMSUNFTlNFX0ZMQUdTID0g4oCcQ29tbWVyY2lhbOKAnSDigJkuIFdoZW5ldmVyIEkg
d2lsbCBoaXQgdGhpcyB0eXBlIG9mIHByb2JsZW0sIHRoZW4gSSBuZWVkIHRvIHVwZGF0ZSBlYWNo
IGJiIGZpbGUgbWFudWFsbHk/DQoNCllvdSdsbCBuZWVkIHRvIGFncmVlIHRvIHRoZSBsaWNlbnNl
IHRlcm1zIGZvciBlYWNoIHJlY2lwZSB0aGF0IGhhcyBub24tdHJpdmlhbCBsaWNlbnNpbmcuICBU
aGlzIHdvbid0IGJlIG1hbnkgcmVjaXBlcy4NCg0KWW91IGNvdWxkIGp1c3Qgc2V0IHRoZSB3aGl0
ZWxpc3QgdG8gImNvbW1lcmNpYWwiIHdpdGhvdXQgYW55IHJlY2lwZSBzcGVjaWZpZXJzLCBidXQg
aWYgeW91J3JlIGludGVuZGluZyBvbiByZWxlYXNpbmcgcHJvZHVjdCBhdCBzb21lIHBvaW50IHRo
aXMgd291bGQgYmUgYSBmb29saXNoIHRoaW5nIHRvIGRvLg0KDQpSb3NzDQo=

--_000_1cf497990ddf4801b409b159d58cc943HIBDWSMB03adharmancom_
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
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseToiR2lsbCBTYW5zIE1UIjsNCglwYW5vc2Ut
MToyIDExIDUgMiAyIDEgNCAyIDIgMzt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29O
b3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdp
bi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1l
cyBOZXcgUm9tYW4iLHNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0
eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGlu
ZTt9DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30N
CnAubXNvbm9ybWFsMCwgbGkubXNvbm9ybWFsMCwgZGl2Lm1zb25vcm1hbDANCgl7bXNvLXN0eWxl
LW5hbWU6bXNvbm9ybWFsOw0KCW1zby1tYXJnaW4tdG9wLWFsdDphdXRvOw0KCW1hcmdpbi1yaWdo
dDowaW47DQoJbXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG87DQoJbWFyZ2luLWxlZnQ6MGluOw0K
CWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9udC1mYW1pbHk6IlRpbWVzIE5ldyBSb21hbiIsc2VyaWY7
fQ0Kc3Bhbi5FbWFpbFN0eWxlMTgNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJ
Zm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6IzFGNDk3RDt9DQouTXNv
Q2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToi
Q2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAx
MS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlv
bjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+
PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8
L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0
IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNo
YXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMi
IGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQt
ZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5UaGFu
a3MgQnVydG9uLCBmb3IgdGhlIGluZm9ybWF0aW9uLCBpdCBpcyB2ZXJ5IGhlbHBmdWwuPG86cD48
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2Nv
bG9yOiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7R2ls
bCBTYW5zIE1UJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+QmVzdCBSZWdhcmRzPG86
cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZTo4LjBwdDtmb250LWZhbWlseTomcXVvdDtHaWxsIFNhbnMgTVQmcXVvdDssc2Fu
cy1zZXJpZjtjb2xvcjojMUY0OTdEIj5BbG9rIFBhd2FyPG86cD48L286cD48L3NwYW4+PC9iPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OC4wcHQ7Zm9u
dC1mYW1pbHk6JnF1b3Q7R2lsbCBTYW5zIE1UJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3
RCI+U3IuIEVuZ2luZWVyIFByb2R1Y3QgRGV2ZWxvcG1lbnQ8bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250
LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+PG86
cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90Oyxz
YW5zLXNlcmlmIj5Gcm9tOjwvc3Bhbj48L2I+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4gQnVydG9uLCBSb3Nz
IFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPGJyPg0KPGI+U2VudDo8L2I+IEZyaWRh
eSwgSnVuZSAxNiwgMjAxNyA0OjA3IFBNPGJyPg0KPGI+VG86PC9iPiBQYXdhciwgQWxvayAmbHQ7
QWxvay5QYXdhcjNAaGFybWFuLmNvbSZndDs8YnI+DQo8Yj5DYzo8L2I+IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmc8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gUmU6IFtFWFRFUk5BTF0gUmU6IFt5b2N0b10g
WW9jdG8gVkxDIGNvbXBpbGF0aW9uPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPk9uIDE2IEp1bmUgMjAxNyBhdCAxMTozMiwgUGF3YXIsIEFsb2sgJmx0OzxhIGhyZWY9Im1h
aWx0bzpBbG9rLlBhd2FyM0BoYXJtYW4uY29tIiB0YXJnZXQ9Il9ibGFuayI+QWxvay5QYXdhcjNA
aGFybWFuLmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGJsb2NrcXVvdGUgc3R5
bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlkICNDQ0NDQ0MgMS4wcHQ7cGFkZGluZzow
aW4gMGluIDBpbiA2LjBwdDttYXJnaW4tbGVmdDo0LjhwdDttYXJnaW4tcmlnaHQ6MGluIj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFy
Z2luLWJvdHRvbS1hbHQ6YXV0byI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1m
YW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPkZmbXBl
ZyBjb250YWlucyDigJggTElDRU5TRV9GTEFHUyA9IOKAnENvbW1lcmNpYWzigJ0g4oCZLiBXaGVu
ZXZlciBJIHdpbGwgaGl0IHRoaXMgdHlwZSBvZiBwcm9ibGVtLCB0aGVuIEkNCiBuZWVkIHRvIHVw
ZGF0ZSBlYWNoIGJiIGZpbGUgbWFudWFsbHk/PC9zcGFuPjxvOnA+PC9vOnA+PC9wPg0KPC9ibG9j
a3F1b3RlPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+DQpZb3UnbGwgbmVlZCB0
byBhZ3JlZSB0byB0aGUgbGljZW5zZSB0ZXJtcyBmb3IgZWFjaCByZWNpcGUgdGhhdCBoYXMgbm9u
LXRyaXZpYWwgbGljZW5zaW5nLiZuYnNwOyBUaGlzIHdvbid0IGJlIG1hbnkgcmVjaXBlcy48bzpw
PjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+WW91IGNv
dWxkIGp1c3Qgc2V0IHRoZSB3aGl0ZWxpc3QgdG8gJnF1b3Q7Y29tbWVyY2lhbCZxdW90OyB3aXRo
b3V0IGFueSByZWNpcGUgc3BlY2lmaWVycywgYnV0IGlmIHlvdSdyZSBpbnRlbmRpbmcgb24gcmVs
ZWFzaW5nIHByb2R1Y3QgYXQgc29tZSBwb2ludCB0aGlzIHdvdWxkIGJlIGEgZm9vbGlzaCB0aGlu
ZyB0byBkby48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+Um9zczxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_1cf497990ddf4801b409b159d58cc943HIBDWSMB03adharmancom_--
