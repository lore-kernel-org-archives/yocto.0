Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C0DDE00C09; Mon,  2 May 2016 11:37:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4803]
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 May 2016 11:37:06 PDT
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0E0E00857
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 11:37:06 -0700 (PDT)
Received: from serv031.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Mon, 2 May 2016 15:35:56 -0300
Received: from serv030.corp.eldorado.org.br (192.168.4.30) by
	serv031.corp.eldorado.org.br (192.168.4.31) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Mon, 2 May 2016 15:35:56 -0300
Received: from serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7]) by
	serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7%14]) with mapi
	id 15.00.0775.031; Mon, 2 May 2016 15:35:56 -0300
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: building a FIPS-compliant image
Thread-Index: AdGkoPVbZDVgkIoBRAGp7hx1IQBdSQ==
Date: Mon, 2 May 2016 18:35:55 +0000
Message-ID: <08809f58cc7e4d7c9320704c835772c2@serv030.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [201.85.11.2]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFtrHIsWRWlGSWpSXmKPExsVyYsojJl2eeerhBjt+LTvDYjHp5Ro2B0aP9hN9bAGMUayZeUn5FQmsGdcXf2UsmKFc8eLASuYGxglKXYxcHEICOxglbt3pY4Nw9jJK3Dz3AMo5xSix4sdsli5GTg42AU+J62/bmEFsEQFTiRfHvrCB2MICGhLnPq1jg4jrSiw7dBaqRk9i3/2JYDaLgIrEt7PTwGxeAW+JxnkLGEFsRgFZibl/9rKD2MwC4hK3nsxnArElBLQltr/axwph60hsuraKBcJ2lpi5/wtUjYDEkj3nmSFsJYne2++g4qISLx//A+rlALJ1Jd6sT4cIB0p0vP/GCGGbSrxZcglqpK3EibV/mWHG/9h6A2qtvMT/e/ehauwlpvReZYaJn908EcoOkJjbcZ8Nwg6WOHhhL9QJ5RKrFnTCxZc9v8AOcY6zxJNGdohwpETbvkWsExiNZiF5HsLOlzjW9JdxFjiwBCVOznzCsoCReRWjVHFuSYGhXnJ+UYFeak5KflFiSr5eflG6XlLRJkZIGuDawXhhtfshRiYOzluM0hwHmIQ40hKLSwoSi4uFWPLy81KloGlFqoFxVXnIO1sDJ6ns+xeuiv6MeLjw5dd6t4/Ld+35I/V86qukTed3XdiUahjy9drraj4B+cAJK1apuchZyC9IZ9s/cX6v7B3LrvxEoe3VPWWl+jkOJt3X9jp/m7grtvRhmQoLA9tzkdU7JBTK025vVg5xXWVov8pzqd+hJz1/BVWsbK2ufcjZU9KpxFKckWioxVxUnAgA7mi0UtECAAA=
Subject: building a FIPS-compliant image
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
X-List-Received-Date: Mon, 02 May 2016 18:37:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_08809f58cc7e4d7c9320704c835772c2serv030corpeldoradoorgb_"

--_000_08809f58cc7e4d7c9320704c835772c2serv030corpeldoradoorgb_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkhhdmUgc29tZW9uZSBldmVyIG1hZGUgYW4gWW9jdG8tYmFzZWQgZGlzdHJvIGNv
bXBsaWFudCB3aXRoIEZJUFM/IElmIHNvLCBhcmUgdGhlIHN0ZXBzIHJlZ2lzdGVyZWQgc29tZXdo
ZXJlLCBwbGVhc2U/DQoNClRoYW5rcyBpbiBhZHZhbmNlLg0KDQpBbGV4YW5kcmUNCg==

--_000_08809f58cc7e4d7c9320704c835772c2serv030corpeldoradoorgb_
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
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0
b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcg
Um9tYW4iLHNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQph
OnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5
Ojk5Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnANCgl7
bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1tYXJnaW4tdG9wLWFsdDphdXRvOw0KCW1hcmdp
bi1yaWdodDowY207DQoJbXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG87DQoJbWFyZ2luLWxlZnQ6
MGNtOw0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9udC1mYW1pbHk6IlRpbWVzIE5ldyBSb21hbiIs
c2VyaWY7fQ0KcHJlDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGluazoi
SFRNTCBQcmVmb3JtYXR0ZWQgQ2hhciI7DQoJbWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4w
MDAxcHQ7DQoJZm9udC1zaXplOjEwLjBwdDsNCglmb250LWZhbWlseToiQ291cmllciBOZXciO30N
CnNwYW4uSFRNTFByZWZvcm1hdHRlZENoYXINCgl7bXNvLXN0eWxlLW5hbWU6IkhUTUwgUHJlZm9y
bWF0dGVkIENoYXIiOw0KCW1zby1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGluazoi
SFRNTCBQcmVmb3JtYXR0ZWQiOw0KCWZvbnQtZmFtaWx5OkNvbnNvbGFzOw0KCW1zby1mYXJlYXN0
LWxhbmd1YWdlOlBULUJSO30NCnNwYW4uRW1haWxTdHlsZTIxDQoJe21zby1zdHlsZS10eXBlOnBl
cnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9y
OiMxRjQ5N0Q7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7
DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJbXNvLWZhcmVhc3QtbGFuZ3Vh
Z2U6RU4tVVM7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0K
CW1hcmdpbjo3MC44NXB0IDMuMGNtIDcwLjg1cHQgMy4wY207fQ0KZGl2LldvcmRTZWN0aW9uMQ0K
CXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1s
Pg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1s
PjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpl
eHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVs
YXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJQVC1CUiIgbGlu
az0iYmx1ZSIgdmxpbms9InB1cnBsZSI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPGRp
dj4NCjxwPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6IzFGNDk3RCI+SGVsbG8sPG86
cD48L286cD48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xv
cjojMUY0OTdEIj5IYXZlIHNvbWVvbmUgZXZlciBtYWRlIGFuIFlvY3RvLWJhc2VkIGRpc3RybyBj
b21wbGlhbnQgd2l0aCBGSVBTPyBJZiBzbywgYXJlIHRoZSBzdGVwcyByZWdpc3RlcmVkIHNvbWV3
aGVyZSwgcGxlYXNlPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkVOLVVT
IiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7
LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+VGhhbmtzIGluIGFkdmFuY2UuPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdE
Ij5BbGV4YW5kcmU8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_08809f58cc7e4d7c9320704c835772c2serv030corpeldoradoorgb_--
