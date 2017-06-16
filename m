Return-Path: <Alok.Pawar3@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91EC4E00B58; Fri, 16 Jun 2017 03:32:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.17 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 340 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Jun 2017 03:32:20 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 174F0E009A5
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:32:20 -0700 (PDT)
Received: from [216.82.250.51] by server-17.bemta-12.messagelabs.com id
	23/FB-01722-3B3B3495; Fri, 16 Jun 2017 10:32:19 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEKsWRWlGSWpSXmKPExsVySpdNU3fTZud
	Ig+9ndCzm7bC3mPRyDZsDk8fiPS+ZPNpP9LEFMEWxZuYl5VcksGYsvb2DtWCJTcXpVXoNjJus
	uxg5OYQEtjJKbPpr1MXIBWRvYZT4NHUHI4Szl1HiwZxNzCBVbAI6Eo8/3GEFsUUEtCTOvn4MF
	mcWMJWYPKMFzBYWsJRYfPskI0SNlURj/2+WLkYOINtNYtKjcpAwi4CqROeKy2wgNq+Au8SOO5
	+YIHZNYJI4/+YAO0iCUyBQ4vKtXrAiRgExie+n1jBB7BKXuPVkPpgtISAgsWTPeWYIW1Ti5eN
	/rBC2gcTWpftYIGwFiZXdDWwQtrXE/nlLWSHm5Eg8//aWCeIIQYmTM5+wQEJCWWLPowbGCYzi
	s5Csm4WkZRaSlllArzELaEqs36UPUaIoMaX7ITuErSHROmcuO7L4Akb2VYwaxalFZalFusZme
	klFmekZJbmJmTm6hoZGermpxcWJ6ak5iUnFesn5uZsYgXFbz8DAuIPx7MLoQ4ySHExKorz8ck
	6RQnxJ+SmVGYnFGfFFpTmpxYcYZTg4lCR4T210jhQSLEpNT61Iy8wBJhCYtAQHj5IIL9MmoDR
	vcUFibnFmOkTqFKOilDhvOEhCACSRUZoH1wZLWpcYZaWEeRkZGBiEeApSi3IzS1DlXzGKczAq
	CfNmbgCawpOZVwI3/RXQYiagxUEXHEAWlyQipKQaGGPKKyxaXKN0l8wqterZKNKoyDR/fpLc8
	9hjL7dn5P7V+qfj++qjsFwGSyJTxZ/jjacDCgMPqMyoDOU6UaniayBrpNvfVi/bcNp866ukYM
	Hy/Rn8c940lrg8CDVJZfaUXmKk7Gx7w/HOmg2Jtulm7jd9VSWDRT4Xrp3twfuhoD5+vSs7s40
	SS3FGoqEWc1FxIgAV6luJVQMAAA==
X-Env-Sender: Alok.Pawar3@harman.com
X-Msg-Ref: server-13.tower-108.messagelabs.com!1497609134!119942818!2
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.19; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22381 invoked from network); 16 Jun 2017 10:32:18 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-13.tower-108.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 16 Jun 2017 10:32:18 -0000
Received: from HIBDWSMB04.ad.harman.com (10.99.236.94) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Fri, 16 Jun 2017 16:02:15 +0530
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB04.ad.harman.com (10.99.236.94) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Fri, 16 Jun 2017 16:02:14 +0530
Received: from HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348]) by
	HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348%13]) with mapi id
	15.00.1263.000; Fri, 16 Jun 2017 16:02:14 +0530
From: "Pawar, Alok" <Alok.Pawar3@harman.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [EXTERNAL] Re: [yocto] Yocto VLC compilation
Thread-Index: AdLmhPUG2KFFomz/RkiRsUYFxe2uQ///rcaA//+h8ICAAGDjAP//o1PQ
Date: Fri, 16 Jun 2017 10:32:14 +0000
Message-ID: <f0387fca00764b658bc7d3fa61dfb0b6@HIBDWSMB03.ad.harman.com>
References: <b052b8f70c6d46c8b9c8aa54abab4c17@HIBDWSMB03.ad.harman.com>
	<CAJTo0LYAK3yiAgfWOF3q9y2rNeBs1EXaf3sRZ0bCoXqj50zSuw@mail.gmail.com>
	<35df41582d4b4f16a9bddd6a77e186c5@HIBDWSMB03.ad.harman.com>
	<CAJTo0LbKP5dLppYKTMEJg=4dg3wgq0wyN_+=1ruFrqanxh89PA@mail.gmail.com>
In-Reply-To: <CAJTo0LbKP5dLppYKTMEJg=4dg3wgq0wyN_+=1ruFrqanxh89PA@mail.gmail.com>
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
X-List-Received-Date: Fri, 16 Jun 2017 10:32:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f0387fca00764b658bc7d3fa61dfb0b6HIBDWSMB03adharmancom_"

--_000_f0387fca00764b658bc7d3fa61dfb0b6HIBDWSMB03adharmancom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzIEJ1cnRvbiwNCkZmbXBlZyBjb250YWlucyDigJggTElDRU5TRV9GTEFHUyA9IOKAnENvbW1l
cmNpYWzigJ0g4oCZLiBXaGVuZXZlciBJIHdpbGwgaGl0IHRoaXMgdHlwZSBvZiBwcm9ibGVtLCB0
aGVuIEkgbmVlZCB0byB1cGRhdGUgZWFjaCBiYiBmaWxlIG1hbnVhbGx5Pw0KDQpCZXN0IFJlZ2Fy
ZHMNCkFsb2sgUGF3YXINClNyLiBFbmdpbmVlciBQcm9kdWN0IERldmVsb3BtZW50DQoNCkZyb206
IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NClNlbnQ6IEZyaWRh
eSwgSnVuZSAxNiwgMjAxNyAzOjU5IFBNDQpUbzogUGF3YXIsIEFsb2sgPEFsb2suUGF3YXIzQGhh
cm1hbi5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFtFWFRF
Uk5BTF0gUmU6IFt5b2N0b10gWW9jdG8gVkxDIGNvbXBpbGF0aW9uDQoNCg0KT24gMTYgSnVuZSAy
MDE3IGF0IDExOjI2LCBQYXdhciwgQWxvayA8QWxvay5QYXdhcjNAaGFybWFuLmNvbTxtYWlsdG86
QWxvay5QYXdhcjNAaGFybWFuLmNvbT4+IHdyb3RlOg0KRVJST1I6IGZmbXBlZyB3YXMgc2tpcHBl
ZDogYmVjYXVzZSBpdCBoYXMgYSByZXN0cmljdGVkIGxpY2Vuc2Ugbm90IHdoaXRlbGlzdGVkIGlu
IExJQ0VOU0VfRkxBR1NfV0hJVEVMSVNUDQoNClllcywgbG9vayBpbiB0aGUgZmZtcGVnIHJlY2lw
ZSB0byBpZGVudGlmeSB0aGUgbGljZW5zZSB3aGljaCBpcyByZXN0cmljdGVkLCBhbmQgaWYgeW91
IHVuZGVyc3RhbmQgYW5kIGFncmVlIHRvIHRoZSB0ZXJtcyB0aGVuIHNldCB0aGUgd2hpdGVsaXN0
IHRvIGNvbW1lcmNpYWxfZmZtcGVnLg0KDQpSb3NzDQo=

--_000_f0387fca00764b658bc7d3fa61dfb0b6HIBDWSMB03adharmancom_
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
ZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5ZZXMg
QnVydG9uLA0KPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90
OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPkZmbXBlZyBjb250YWlucyDigJggTElDRU5TRV9G
TEFHUyA9IOKAnENvbW1lcmNpYWzigJ0g4oCZLiBXaGVuZXZlciBJIHdpbGwgaGl0IHRoaXMgdHlw
ZSBvZiBwcm9ibGVtLCB0aGVuIEkgbmVlZCB0byB1cGRhdGUgZWFjaCBiYiBmaWxlIG1hbnVhbGx5
PzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1z
ZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjguMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0dpbGwgU2FucyBNVCZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPkJlc3QgUmVn
YXJkczxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6OC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7R2lsbCBTYW5zIE1UJnF1
b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+QWxvayBQYXdhcjxvOnA+PC9vOnA+PC9zcGFu
PjwvYj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjgu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O0dpbGwgU2FucyBNVCZxdW90OyxzYW5zLXNlcmlmO2NvbG9y
OiMxRjQ5N0QiPlNyLiBFbmdpbmVlciBQcm9kdWN0IERldmVsb3BtZW50PG86cD48L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4w
cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5
N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkm
cXVvdDssc2Fucy1zZXJpZiI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+IEJ1cnRv
biwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCjxicj4NCjxiPlNlbnQ6PC9i
PiBGcmlkYXksIEp1bmUgMTYsIDIwMTcgMzo1OSBQTTxicj4NCjxiPlRvOjwvYj4gUGF3YXIsIEFs
b2sgJmx0O0Fsb2suUGF3YXIzQGhhcm1hbi5jb20mZ3Q7PGJyPg0KPGI+Q2M6PC9iPiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnPGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBbRVhURVJOQUxdIFJlOiBb
eW9jdG9dIFlvY3RvIFZMQyBjb21waWxhdGlvbjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5PbiAxNiBKdW5lIDIwMTcgYXQgMTE6MjYsIFBhd2FyLCBBbG9rICZsdDs8YSBo
cmVmPSJtYWlsdG86QWxvay5QYXdhcjNAaGFybWFuLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPkFsb2su
UGF3YXIzQGhhcm1hbi5jb208L2E+Jmd0OyB3cm90ZTo8bzpwPjwvbzpwPjwvcD4NCjxibG9ja3F1
b3RlIHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCAjQ0NDQ0NDIDEuMHB0O3Bh
ZGRpbmc6MGluIDBpbiAwaW4gNi4wcHQ7bWFyZ2luLWxlZnQ6NC44cHQ7bWFyZ2luLXJpZ2h0OjBp
biI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87
bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG8iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdE
Ij5FUlJPUjogZmZtcGVnIHdhcyBza2lwcGVkOiBiZWNhdXNlIGl0IGhhcyBhIHJlc3RyaWN0ZWQg
bGljZW5zZSBub3Qgd2hpdGVsaXN0ZWQgaW4gTElDRU5TRV9GTEFHU19XSElURUxJU1Q8L3NwYW4+
PG86cD48L286cD48L3A+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxicj4NClllcywgbG9vayBpbiB0aGUgZmZtcGVnIHJlY2lwZSB0byBpZGVudGlmeSB0aGUg
bGljZW5zZSB3aGljaCBpcyByZXN0cmljdGVkLCBhbmQgaWYgeW91IHVuZGVyc3RhbmQgYW5kIGFn
cmVlIHRvIHRoZSB0ZXJtcyB0aGVuIHNldCB0aGUgd2hpdGVsaXN0IHRvIGNvbW1lcmNpYWxfZmZt
cGVnLjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij5Sb3NzPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8
L2h0bWw+DQo=

--_000_f0387fca00764b658bc7d3fa61dfb0b6HIBDWSMB03adharmancom_--
