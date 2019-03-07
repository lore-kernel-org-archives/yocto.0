Return-Path: <carsten.stelling2@goerlitz.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD551E00CB9; Thu,  7 Mar 2019 06:18:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [89.110.144.168 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 469 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Mar 2019 06:18:57 PST
Received: from mx.eurodcs.com (mx.eurodcs.com [89.110.144.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 071F2E00C8F
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 06:18:57 -0800 (PST)
X-No-Auth: unauthenticated sender
Received: from GOEMAIL-SERVER2.goerlitz.int ([::1]) by
	GOEMAIL-Server2.goerlitz.int ([::1]) with mapi id 14.03.0382.000;
	Thu, 7 Mar 2019 15:11:06 +0100
X-No-Auth: unauthenticated sender
X-No-Auth: unauthenticated sender
Received: from SecMailGW01.goerlitz.int (localhost [127.0.0.1])
	by SecMailGW01.goerlitz.int (Postfix) with ESMTP id 99D2A1157C3;
	Thu,  7 Mar 2019 15:11:06 +0100 (CET)
Received: from GOEMAIL-Server2.goerlitz.int (goemail-server2.goerlitz.int
	[172.16.0.34])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by SecMailGW01.goerlitz.int (Postfix) with ESMTPS id 921531157B9;
	Thu,  7 Mar 2019 15:11:06 +0100 (CET)
Received: from GOEMAIL-SERVER2.goerlitz.int ([::1]) by
	GOEMAIL-Server2.goerlitz.int ([::1]) with mapi id 14.03.0382.000;
	Thu, 7 Mar 2019 15:11:06 +0100
From: Stelling2 Carsten <Carsten.Stelling2@goerlitz.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Multiple ubifs partition
Thread-Index: AQHU0nwavVGrFxxKmU+uNcDJQjkAt6YAObdA
Date: Thu, 7 Mar 2019 14:11:06 +0000
Message-ID: <A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
In-Reply-To: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.4.68]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 2ad2b9dc-805d-48a9-abc1-9b30d8aaf91e
x-c2processedorg: afb626d2-1d71-409d-a620-6d32a57e56a8
x-g-data-mailsecurity-for-exchange-guid: 78D87C93-571E-468A-9D16-D87D052CB3F7
x-g-data-mailsecurity-for-exchange-processedonrouted: True
MIME-Version: 1.0
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Thu, 07 Mar 2019 14:18:59 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_A2A9E37E9C946847B2258F923F7CFE42047B38BEGOEMAILServer2g_"

--_000_A2A9E37E9C946847B2258F923F7CFE42047B38BEGOEMAILServer2g_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgR2FicmllbGUsDQoNCkhhdmUgeW91IHNlZW4gaHR0cHM6Ly9naXRodWIuY29tL3Blbmd1dHJv
bml4L2dlbmltYWdlPw0KDQpSZWdhcmRzLA0KDQpDYXJzdGVuDQoNClZvbjogeW9jdG8tYm91bmNl
c0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3Jn
XSBJbSBBdWZ0cmFnIHZvbiBHYWJyaWVsZSBaYW1waWVyaQ0KR2VzZW5kZXQ6IE1vbnRhZywgNC4g
TcOkcnogMjAxOSAxMjoxNw0KQW46IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkJldHJlZmY6IFt5
b2N0b10gTXVsdGlwbGUgdWJpZnMgcGFydGl0aW9uDQoNCkhpIGFsbCwNCg0KSSdtIHRyeWluZyB0
byBidWlsZCBhIGRpc3RyaWJ1dGlvbiB0aGF0IGhhcyBtdWx0aXBsZSBwYXJ0aXRpb25zLiBUaGUg
ZGVzaWRlcmF0YSBpcyBzb21ldGhpbmcgbGlrZToNCg0KLSByb290ZnMudWJpZnMgbW91bnRlZCBv
biAvDQotIGRhdGEudWJpZnMgbW91bnRlZCBvbiAvZGF0YQ0KLSBvcHQudWJpZnMgbW91bnRlZCBv
biAvb3B0DQoNCkkgd2FzIHdvbmRlcmluZyBpZiB0aGVyZSBpcyBhIHN0YW5kYXJkIHdheSB0byBh
Y2hpZXZlIHRoZSBnb2FsLiBJIHNlZSB0aGF0IHRoZXJlIGlzIGEgdG9vbCBjYWxsZWQgd2ljLCBi
dXQgaXQgZG9lcyBub3Qgc2VlbXMgdG8gc3VwcG9ydCB1Ymlmcy4gSSBjb3VsZCBwb3N0IHByb2Nl
c3MgdGhlIHRhcmJhbGwgaW1hZ2UgYW5kIGRvaW5nIHN0dWZmIHdpdGggbXkgc2NyaXB0cywgYnV0
IEknZCBwcmVmZXIgZG9pbmcgdGhpcyBpbiBhIHNpbmdsZSBiaXRiYWtlIHJ1bi4gQ2FuIHlvdSBz
dWdnZXN0IHNvbWV0aGluZz8NCg0KVGhhbmtzLA0KR2FicmllbGUNCg==

--_000_A2A9E37E9C946847B2258F923F7CFE42047B38BEGOEMAILServer2g_
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
b05vcm1hbA0KCXttYXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNp
emU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iLCJzZXJpZiI7fQ0KYTps
aW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6
Ymx1ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bhbi5Nc29I
eXBlcmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6cHVycGxl
Ow0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FLU1haWxGb3JtYXR2b3JsYWdl
MTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkFyaWFs
Iiwic2Fucy1zZXJpZiI7DQoJY29sb3I6IzFGNDk3RDsNCglmb250LXdlaWdodDpub3JtYWw7DQoJ
Zm9udC1zdHlsZTpub3JtYWw7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhw
b3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLCJzYW5zLXNlcmlmIjsNCgltc28tZmFy
ZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0
IDc5Mi4wcHQ7DQoJbWFyZ2luOjcwLjg1cHQgNzAuODVwdCAyLjBjbSA3MC44NXB0O30NCmRpdi5X
b3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0
ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEw
MjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNo
YXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAv
Pg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFu
Zz0iREUiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rp
b24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDs7Y29s
b3I6IzFGNDk3RCI+SGkgR2FicmllbGUsPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1
b3Q7QXJpYWwmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xvcjojMUY0OTdEIj48bzpw
PiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5n
PSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwm
cXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xvcjojMUY0OTdEIj5IYXZlIHlvdSBzZWVu
DQo8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vcGVuZ3V0cm9uaXgvZ2VuaW1hZ2UiPmh0dHBz
Oi8vZ2l0aHViLmNvbS9wZW5ndXRyb25peC9nZW5pbWFnZTwvYT4/PG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250
LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LCZxdW90O3NhbnMtc2Vy
aWYmcXVvdDs7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDs7
Y29sb3I6IzFGNDk3RCI+UmVnYXJkcyw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9u
dC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xvcjoj
MUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6
JnF1b3Q7QXJpYWwmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xvcjojMUY0OTdEIj5D
YXJzdGVuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0Fy
aWFsJnF1b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDs7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1b3Q7LCZxdW90O3Nh
bnMtc2VyaWYmcXVvdDsiPlZvbjo8L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7
Ij4geW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5
b2N0b3Byb2plY3Qub3JnXQ0KPGI+SW0gQXVmdHJhZyB2b24gPC9iPkdhYnJpZWxlIFphbXBpZXJp
PGJyPg0KPGI+R2VzZW5kZXQ6PC9iPiBNb250YWcsIDQuIE3DpHJ6IDIwMTkgMTI6MTc8YnI+DQo8
Yj5Bbjo8L2I+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc8YnI+DQo8Yj5CZXRyZWZmOjwvYj4gW3lv
Y3RvXSBNdWx0aXBsZSB1YmlmcyBwYXJ0aXRpb248bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8ZGl2Pg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+SGkgYWxsLCA8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SSdtIHRyeWluZyB0byBidWlsZCBhIGRpc3RyaWJ1dGlv
biB0aGF0IGhhcyBtdWx0aXBsZSBwYXJ0aXRpb25zLiBUaGUgZGVzaWRlcmF0YSBpcyBzb21ldGhp
bmcgbGlrZTo8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+LSByb290ZnMudWJpZnMgbW91bnRlZCBvbiAvPG86cD48L286cD48L3A+DQo8L2Rpdj4N
CjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4tIGRhdGEudWJpZnMgbW91bnRlZCBvbiAvZGF0
YTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+LSBv
cHQudWJpZnMgbW91bnRlZCBvbiAvb3B0PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPkkgd2FzIHdvbmRlcmluZyBpZiB0aGVyZSBpcyBhIHN0YW5k
YXJkIHdheSB0byBhY2hpZXZlIHRoZSBnb2FsLiBJIHNlZSB0aGF0IHRoZXJlIGlzIGEgdG9vbCBj
YWxsZWQgd2ljLCBidXQgaXQgZG9lcyBub3Qgc2VlbXMgdG8gc3VwcG9ydCB1Ymlmcy4gSSBjb3Vs
ZCBwb3N0IHByb2Nlc3MgdGhlIHRhcmJhbGwgaW1hZ2UgYW5kIGRvaW5nIHN0dWZmIHdpdGggbXkg
c2NyaXB0cywgYnV0IEknZCBwcmVmZXIgZG9pbmcNCiB0aGlzIGluIGEgc2luZ2xlIGJpdGJha2Ug
cnVuLiBDYW4geW91IHN1Z2dlc3Qgc29tZXRoaW5nPzxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4N
CjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGFua3MsIDxvOnA+PC9vOnA+PC9wPg0KPC9k
aXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+R2FicmllbGU8bzpwPjwvbzpwPjwvcD4N
CjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_A2A9E37E9C946847B2258F923F7CFE42047B38BEGOEMAILServer2g_--
