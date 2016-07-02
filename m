Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4345E00C8B; Sat,  2 Jul 2016 03:38:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.204 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55C0BE00C72
	for <yocto@yoctoproject.org>; Sat,  2 Jul 2016 03:38:15 -0700 (PDT)
Received: from [216.82.242.131] by server-12.bemta-8.messagelabs.com id
	24/FC-14600-69997775; Sat, 02 Jul 2016 10:38:14 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNKsWRWlGSWpSXmKPExsXinSZ8THfqzPJ
	wg6YFOhaHGqaxWly72MJsMW+HvcWkl2vYHFg8vuyZyuSxc9Zddo/Fe14yebSf6GMLYIlizcxL
	yq9IYM34vOoGW8E824q/H2MbGFfZdDFycQgJbGaUeP/pPVsXIyeE03w+EyJxgFHi7c2dTCAJN
	gFDiSs9dxlBbBEBLYmzrx8zgxQxC7QwSmxuvMEMkhAW0JC4eGotM0SRpsSyp/Oh7DqJy6c/sH
	QxcnCwCKhI3N/gCxLmFXCXOLTpIwvEstlsEkt+rmIFSXAKBEoseXSNHcRmFJCV+NK4GmwOs4C
	4xK0n88EOkhAQkFiy5zwzhC0q8fLxP1YI20Bi69J9LBC2nMSy7c+ZIHpzJJZd3csIsVhQ4uTM
	JywQH6tKbFn4m2UCo9gsJCtmIWmZhaRlFtALzECvrd+lD1GiKDGl+yE7hK0h0TpnLjuy+AJG9
	lWMGsWpRWWpRbqGpnpJRZnpGSW5iZk5uoYGFnq5qcXFiempOYlJxXrJ+bmbGIGRXM/AwLiD8c
	Bz90OMkhxMSqK8XM7l4UJ8SfkplRmJxRnxRaU5qcWHGGU4OJQkeP1mAOUEi1LTUyvSMnOAKQU
	mLcHBoyTC+386UJq3uCAxtzgzHSJ1ilFRSpy3BqRPACSRUZoH1wZLY5cYZaWEeRkZGBiEeApS
	i3IzS1DlXzGKczAqCfN6gUzhycwrgZv+CmgxE9Bi1liwxSWJCCmpBsb2hODj8juWfe367lnuq
	vxv+RbPxp2RPue//HKM/eOsrvnOssZKuO94ZGGckI/pgdV5/+NYDPomuy/s1p5Q2VqS/3HijB
	1uCzuu9GeaPe17zDbh8mJuI+s0jZ89X8vOLa20nfN507MwZzGdt69dfRtfnj+07ORepgzv++w
	fdy0sWZUY2Cj0IkaJpTgj0VCLuag4EQBaLGPpXgMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-8.tower-76.messagelabs.com!1467455893!59194663!1
X-Originating-IP: [75.102.19.198]
X-StarScan-Received: 
X-StarScan-Version: 8.46; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13201 invoked from network); 2 Jul 2016 10:38:13 -0000
Received: from unknown.ord.scnet.net (HELO HICGWSEXHC02.ad.harman.com)
	(75.102.19.198)
	by server-8.tower-76.messagelabs.com with AES128-SHA encrypted SMTP;
	2 Jul 2016 10:38:13 -0000
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HICGWSEXHC02.ad.harman.com (10.10.23.73) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Sat, 2 Jul 2016 05:38:00 -0500
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB02.ad.harman.com (10.99.236.92) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Sat, 2 Jul 2016 16:07:57 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::a85e:aadb:8944:9f72]) by
	HIBDWSMB02.ad.harman.com ([fe80::a85e:aadb:8944:9f72%16]) with mapi id
	15.00.1130.005; Sat, 2 Jul 2016 16:07:57 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] setcap using recipe
Thread-Index: AdHOBQLlITj3tknLQROeJDdrbt+En///s+KA//+ZVkCAAHOlgP//opCggABp4AD/9KlccALMZyuAAABV1IAAALEtAP/+Z+wQ//0orYD/+eM0wA==
Date: Sat, 2 Jul 2016 10:37:56 +0000
Message-ID: <5d1eeebd9e9e47cdbccf88c399c6d31c@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
	<CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
	<1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
	<CAF3SDA5jrx7n5C6WpFGKJSxnnwY=VJJ-EDdUYwYt45Z5xfTw9Q@mail.gmail.com>
	<f7f70173e1304433b5bb00c0f8cec5bf@HIBDWSMB02.ad.harman.com>
	<CAJTo0LaSUYdjYmxwV7OdbqKeic-B7pMZROEKvEpC7o0jetqxwQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaSUYdjYmxwV7OdbqKeic-B7pMZROEKvEpC7o0jetqxwQ@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.70.50.4]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Sat, 02 Jul 2016 10:38:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5d1eeebd9e9e47cdbccf88c399c6d31cHIBDWSMB02adharmancom_"

--_000_5d1eeebd9e9e47cdbccf88c399c6d31cHIBDWSMB02adharmancom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUm9zcywNCg0KUG9zdC1pbnN0YWxsYXRpb24gc2NyaXB0cyBydW4gaW1tZWRpYXRlbHkg
YWZ0ZXIgaW5zdGFsbGluZyBhIHBhY2thZ2Ugb24gdGhlIHRhcmdldCBvciBkdXJpbmcgaW1hZ2Ug
Y3JlYXRpb24gd2hlbiBhIHBhY2thZ2UgaXMgaW5jbHVkZWQgaW4gYW4gaW1hZ2UuDQpEb2VzICBp
dCBub3QgbWVhbiB0aGF0IHdlIGNhbiBzZXQgdGhlIGZpbGUgYXR0cmlidXRlcyhzZXRjYXApIGR1
cmluZyAgaW1hZ2UgY3JlYXRpb24gPw0KDQpJIHVuZGVyc3RhbmQgdGhlIGRlbGF5ZWQgYXBwcm9h
Y2ggb2YgZXhlY3V0aW5nIGl0IG9uIHRoZSB0YXJnZXQsIGJ1dCBteSByZXF1aXJlbWVudCBpcyB0
byBkbyBpdCBvbiB0aGUgYnVpbGQgaG9zdC4gV2UgZG8gbm90IHdhbnQg4oCcc2V0Y2Fw4oCdICB1
dGlsaXR5IHRvIGJlIHByZXNlbnQgb24gdGhlIHRhcmdldC4NCg0KDQpSZWdhcmRzDQpTaHJhd2Fu
DQoNCkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NClNl
bnQ6IFNhdHVyZGF5LCBKdWx5IDAyLCAyMDE2IDI6NTYgUE0NClRvOiBLdW1hciwgU2hyYXdhbg0K
Q2M6IERhbmllbC47IE1hdGhpZXUgQWxsYXJkOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJq
ZWN0OiBSZTogW3lvY3RvXSBzZXRjYXAgdXNpbmcgcmVjaXBlDQoNCg0KT24gMiBKdWx5IDIwMTYg
YXQgMTA6MjIsIEt1bWFyLCBTaHJhd2FuIDxTaHJhd2FuLkt1bWFyQGhhcm1hbi5jb208bWFpbHRv
OlNocmF3YW4uS3VtYXJAaGFybWFuLmNvbT4+IHdyb3RlOg0KQ2FuIHNvbWVvbmUgcmV2aWV3IHRo
ZSBhdHRhY2hlZCByZWNpcGUgYW5kIGhlbHAgc29sdmUgdGhlIHByb2JsZW0gc3RhdGVtZW50ICA/
DQoNCkFzIGhhcyBiZWVuIHNhaWQsIHlvdSBuZWVkIHRvIGVuc3VyZSB0aGUgcG9zdGluc3QgaXMg
ZGVsYXllZCBzbyBpdCBydW5zIG9uIHRoZSB0YXJnZXQgYW5kIG5vdCBvbiB0aGUgYnVpbGQgaG9z
dC4NCg0KaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvMi4xL2Rldi1tYW51YWwvZGV2
LW1hbnVhbC5odG1sI25ldy1yZWNpcGUtcG9zdC1pbnN0YWxsYXRpb24tc2NyaXB0cw0KDQpSb3Nz
DQoNCg==

--_000_5d1eeebd9e9e47cdbccf88c399c6d31cHIBDWSMB02adharmancom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTIgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpUYWhvbWE7DQoJcGFub3NlLTE6MiAxMSA2
IDQgMyA1IDQgNCAyIDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBs
aS5Nc29Ob3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9t
Oi4wMDAxcHQ7DQoJZm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJv
bWFuIiwic2VyaWYiO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQph
OnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5
Ojk5Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4u
RW1haWxTdHlsZTE3DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFt
aWx5OiJDYWxpYnJpIiwic2Fucy1zZXJpZiI7DQoJY29sb3I6IzFGNDk3RDt9DQouTXNvQ2hwRGVm
YXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjEN
Cgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30N
CmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0t
W2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRt
YXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4N
CjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRh
PSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJv
ZHkgbGFuZz0iRU4tVVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0i
V29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhlbGxvIFJvc3MsPG86cD48L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPlBvc3QtaW5zdGFsbGF0aW9uIHNjcmlwdHMgcnVuIGltbWVkaWF0ZWx5
IGFmdGVyIGluc3RhbGxpbmcgYSBwYWNrYWdlIG9uIHRoZSB0YXJnZXQNCjxiPjx1Pm9yIGR1cmlu
ZyBpbWFnZSBjcmVhdGlvbiB3aGVuIGEgcGFja2FnZSBpcyBpbmNsdWRlZCBpbiBhbiBpbWFnZTwv
dT48L2I+LjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RG9lcyAmbmJzcDtp
dCBub3QgbWVhbiB0aGF0IHdlIGNhbiBzZXQgdGhlIGZpbGUgYXR0cmlidXRlcyhzZXRjYXApIGR1
cmluZyAmbmJzcDtpbWFnZSBjcmVhdGlvbiA/DQo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SSB1
bmRlcnN0YW5kIHRoZSBkZWxheWVkIGFwcHJvYWNoIG9mIGV4ZWN1dGluZyBpdCBvbiB0aGUgdGFy
Z2V0LCBidXQgbXkgcmVxdWlyZW1lbnQgaXMgdG8gZG8gaXQgb24gdGhlIGJ1aWxkIGhvc3QuIFdl
IGRvIG5vdCB3YW50IOKAnHNldGNhcOKAnSAmbmJzcDt1dGlsaXR5IHRvIGJlIHByZXNlbnQgb24g
dGhlIHRhcmdldC48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5SZWdhcmRzPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5TaHJhd2FuPHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7Q2FsaWJyaSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7O2NvbG9yOiMxRjQ5
N0QiPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1
b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNCNUM0REYg
MS4wcHQ7cGFkZGluZzozLjBwdCAwaW4gMGluIDBpbiI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
Yj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtUYWhvbWEm
cXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90OyI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZxdW90OywmcXVvdDtz
YW5zLXNlcmlmJnF1b3Q7Ij4gQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwu
Y29tXQ0KPGJyPg0KPGI+U2VudDo8L2I+IFNhdHVyZGF5LCBKdWx5IDAyLCAyMDE2IDI6NTYgUE08
YnI+DQo8Yj5Ubzo8L2I+IEt1bWFyLCBTaHJhd2FuPGJyPg0KPGI+Q2M6PC9iPiBEYW5pZWwuOyBN
YXRoaWV1IEFsbGFyZDsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxicj4NCjxiPlN1YmplY3Q6PC9i
PiBSZTogW3lvY3RvXSBzZXRjYXAgdXNpbmcgcmVjaXBlPG86cD48L286cD48L3NwYW4+PC9wPg0K
PC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+
DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24gMiBKdWx5IDIwMTYgYXQgMTA6MjIsIEt1bWFyLCBT
aHJhd2FuICZsdDs8YSBocmVmPSJtYWlsdG86U2hyYXdhbi5LdW1hckBoYXJtYW4uY29tIiB0YXJn
ZXQ9Il9ibGFuayI+U2hyYXdhbi5LdW1hckBoYXJtYW4uY29tPC9hPiZndDsgd3JvdGU6PG86cD48
L286cD48L3A+DQo8ZGl2IGlkPSI6ZWt6Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkNhbiBzb21l
b25lIHJldmlldyB0aGUgYXR0YWNoZWQgcmVjaXBlIGFuZCBoZWxwIHNvbHZlIHRoZSBwcm9ibGVt
IHN0YXRlbWVudCZuYnNwOyA/PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PGJyPg0KQXMgaGFzIGJlZW4gc2FpZCwgeW91IG5lZWQgdG8gZW5zdXJl
IHRoZSBwb3N0aW5zdCBpcyBkZWxheWVkIHNvIGl0IHJ1bnMgb24gdGhlIHRhcmdldCBhbmQgbm90
IG9uIHRoZSBidWlsZCBob3N0LjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48YSBocmVmPSJodHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9j
cy8yLjEvZGV2LW1hbnVhbC9kZXYtbWFudWFsLmh0bWwjbmV3LXJlY2lwZS1wb3N0LWluc3RhbGxh
dGlvbi1zY3JpcHRzIj5odHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy8yLjEvZGV2LW1h
bnVhbC9kZXYtbWFudWFsLmh0bWwjbmV3LXJlY2lwZS1wb3N0LWluc3RhbGxhdGlvbi1zY3JpcHRz
PC9hPjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij5Sb3NzPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4N
CjwvaHRtbD4NCg==

--_000_5d1eeebd9e9e47cdbccf88c399c6d31cHIBDWSMB02adharmancom_--
