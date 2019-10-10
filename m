Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C852E00DA7; Thu, 10 Oct 2019 02:07:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16AF4E00A4C
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 02:07:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id CD96118493;
	Thu, 10 Oct 2019 11:07:42 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id Dd291CBVfh6M; Thu, 10 Oct 2019 11:07:41 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id AFD2218495;
	Thu, 10 Oct 2019 11:07:41 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 903AA1E075;
	Thu, 10 Oct 2019 11:07:41 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 84CC31E04F;
	Thu, 10 Oct 2019 11:07:41 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Thu, 10 Oct 2019 11:07:41 +0200 (CEST)
Received: from xbox05.axis.com (xbox05.axis.com [10.0.15.175])
	by thoth.se.axis.com (Postfix) with ESMTP id 78A2230C5;
	Thu, 10 Oct 2019 11:07:41 +0200 (CEST)
Received: from XBOX03.axis.com (10.0.5.17) by xbox05.axis.com (10.0.15.175)
	with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Thu, 10 Oct 2019 11:07:41 +0200
Received: from XBOX03.axis.com ([fe80::e49e:4060:87cc:61a]) by XBOX03.axis.com
	([fe80::e49e:4060:87cc:61a%22]) with mapi id 15.00.1365.000;
	Thu, 10 Oct 2019 11:07:41 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: =?utf-8?B?TWF0b3XFoSBQb2tvcm7DvQ==?= <matous.pokorny@datavision.cz>
Thread-Topic: [yocto] Where to get kconfig-frontends package?
Thread-Index: AQHVd3Xv3XhaEadAxEmtLGJe1WQyK6dToy/w
Date: Thu, 10 Oct 2019 09:07:41 +0000
Message-ID: <d608319c0f2d4c28ae5c61597b8cf9bf@XBOX03.axis.com>
References: <CAD0UrV10JR=vFUKfZCxetCQCx2y=A9gv6YeqtBEMjHYqXLso0w@mail.gmail.com>
In-Reply-To: <CAD0UrV10JR=vFUKfZCxetCQCx2y=A9gv6YeqtBEMjHYqXLso0w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where to get kconfig-frontends package?
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
X-List-Received-Date: Thu, 10 Oct 2019 09:07:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d608319c0f2d4c28ae5c61597b8cf9bfXBOX03axiscom_"

--_000_d608319c0f2d4c28ae5c61597b8cf9bfXBOX03axiscom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGJlZW4gaW4gY29udGFjdCB3aXRoIFlhbm4gRSBNb3JpbiwgdGhlIG1haW50YWluZXIg
b2YgdGhlIGtjb25maWctZnJvbnRlbmRzIHJlcG9zaXRvcnksIGFuZCBpdCB0dXJucyBvdXQgaGlz
IHNlcnZlciBkaWQgbm90IHN1cnZpdmUgdGhlaXIgbGFzdCBtb3ZlIG9mIGhvdXNlLiBIb3dldmVy
LCBoZSBwb2ludGVkIG91dCB0aGF0IGhlIGhhcyBwdWJsaXNoZWQgdGhlIGNvZGUgdG8gR2l0TGFi
IGFuZCByZWNvbW1lbmRlZCB0byB1c2UgdGhhdCByZXBvc2l0b3J5IGluc3RlYWQ6IGh0dHBzOi8v
Z2l0bGFiLmNvbS95bW9yaW4va2NvbmZpZy1mcm9udGVuZHMNCg0KSSB3aWxsIHNlbmQgYSBwYXRj
aCB0byB0aGUgb3BlbmVtYmVkZGVkLWRldmVsIGxpc3QgdG8gdXBkYXRlIHRoZSByZWNpcGUgdG8g
dXNlIHRoZSBHaXRMYWIgcmVwb3NpdG9yeS4NCg0KLy9QZXRlcg0KDQpGcm9tOiB5b2N0by1ib3Vu
Y2VzQHlvY3RvcHJvamVjdC5vcmcgPHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZz4gT24g
QmVoYWxmIE9mIE1hdG91xaEgUG9rb3Juw70NClNlbnQ6IGRlbiAyNiBzZXB0ZW1iZXIgMjAxOSAx
NDowMg0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFt5b2N0b10gV2hlcmUg
dG8gZ2V0IGtjb25maWctZnJvbnRlbmRzIHBhY2thZ2U/DQoNCkhlbGxvIQ0KDQpJIGNvbWUgZnJv
bSBOdXR0WCBSVE9TIHByb2plY3QgKG51dHR4Lm9yZzxodHRwOi8vbnV0dHgub3JnPiksIGFuZCB3
ZSB1c2UgS2NvbmZpZyB0b29sIGZvciBjb25maWd1cmF0aW9uLiBUaGUgdG9vbGNoYWluIGJ1aWxk
IHNjcmlwdCBnZXRzIGtjb25maWctZnJvbnRlbmRzIHNvdXJjZSBjb2RlIGZyb20gdGhlIHNhbWUg
c2VydmVyIGFzIFlvY3RvIChodHRwOi8veW1vcmluLmlzLWEtZ2Vlay5vcmc8aHR0cDovL3ltb3Jp
bi5pcy1hLWdlZWsub3JnLz4pLiBUaGUgc2VydmVyIGlzIGRvd24gZm9yIGFwcHJveC4gb25lIHdl
ZWsgYW5kIGl0IGNhdXNlZCB0aGUgZmFpbCBkdXJpbmcgdGhlIHRvb2xjaGFpbiBidWlsZGluZy4g
SGF2ZSB5b3UgbWV0IHRoaXMgcHJvYmxlbSBhcyB3ZWxsPyBXZSB3b3VsZCBsaWtlIHRvIHN3aXRj
aCB0byBhbm90aGVyIG1vcmUgcmVsaWFibGUgcmVwb3NpdG9yeSwgYnV0IEkgcmVhZCwgdGhlIHNl
cnZlcidzIG93bmVyIGlzIG9uZSBvZiB0aGUgTGludXggY29yZSBkZXZlbG9wZXJzLiBTbyB0aGUg
c2VydmVyIGlzIGEga2luZCBvZiBwcmltYXJ5IHNvdXJjZS4gRG8geW91IGhhdmUgYSBzdWdnZXN0
aW9uIG9uIGhvdyB0byBzb2x2ZSB0aGlzIHByb2JsZW0/IEkgd291bGQgbGlrZSB0byBhc2sgeW91
IGZvciBoZWxwIGJlY2F1c2UgeW91IGtub3cgdGhlIExpbnV4IGVjb3N5c3RlbSBhbmQgYXJlIGlu
IHRoZSBzYW1lIHNpdHVhdGlvbiBhcyB3ZSBhcmUuDQoNClRoYW5rIHlvdS4NCg0KTWF0b3VzIFBv
a29ybnkNCkVtYmVkZGVkIFN5c3RlbSBEZXZlbG9wZXINCg0KRGF0YVZpc2lvbiBzLnIuby4NClVr
cmFqaW5za2EgMmENCjEwMSAwMCBQcmFoYSAxMA0KQ3plY2ggUmVwdWJsaWMNCg0KR1NNOiAoKzQy
MCkgNzIzIDI4MCA0NzENCm1hdG91cy5wb2tvcm55QGRhdGF2aXNpb24uY3o8bWFpbHRvOm1hdG91
cy5wb2tvcm55QGRhdGF2aXNpb24uY3o+DQo=

--_000_d608319c0f2d4c28ae5c61597b8cf9bfXBOX03axiscom_
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
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1z
b0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpwdXJw
bGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwLm1zb25vcm1hbDAsIGxpLm1zb25v
cm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCgltc28t
bWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGNtOw0KCW1zby1tYXJnaW4tYm90
dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBjbTsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21z
by1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5z
LXNlcmlmOw0KCWNvbG9yOiM5NDM2MzQ7DQoJZm9udC13ZWlnaHQ6bm9ybWFsOw0KCWZvbnQtc3R5
bGU6bm9ybWFsOw0KCXRleHQtZGVjb3JhdGlvbjpub25lIG5vbmU7fQ0KLk1zb0NocERlZmF1bHQN
Cgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNh
bnMtc2VyaWY7DQoJbXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVM7fQ0KQHBhZ2UgV29yZFNlY3Rp
b24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3Mi4wcHQgNzIuMHB0IDcyLjBw
dCA3Mi4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48
L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0i
ZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1z
byA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9
ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8
L2hlYWQ+DQo8Ym9keSBsYW5nPSJTViIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBsZSI+DQo8ZGl2
IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiIHN0eWxlPSJjb2xvcjojOTQzNjM0O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5J
IGhhdmUgYmVlbiBpbiBjb250YWN0IHdpdGggWWFubiBFIE1vcmluLCB0aGUgbWFpbnRhaW5lciBv
ZiB0aGUga2NvbmZpZy1mcm9udGVuZHMgcmVwb3NpdG9yeSwgYW5kIGl0IHR1cm5zIG91dCBoaXMg
c2VydmVyIGRpZCBub3Qgc3Vydml2ZSB0aGVpciBsYXN0IG1vdmUgb2YgaG91c2UuIEhvd2V2ZXIs
DQogaGUgcG9pbnRlZCBvdXQgdGhhdCBoZSBoYXMgcHVibGlzaGVkIHRoZSBjb2RlIHRvIEdpdExh
YiBhbmQgcmVjb21tZW5kZWQgdG8gdXNlIHRoYXQgcmVwb3NpdG9yeSBpbnN0ZWFkOg0KPGEgaHJl
Zj0iaHR0cHM6Ly9naXRsYWIuY29tL3ltb3Jpbi9rY29uZmlnLWZyb250ZW5kcyI+aHR0cHM6Ly9n
aXRsYWIuY29tL3ltb3Jpbi9rY29uZmlnLWZyb250ZW5kczwvYT48bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImNvbG9y
OiM5NDM2MzQ7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0i
Y29sb3I6Izk0MzYzNDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+SSB3aWxsIHNlbmQgYSBw
YXRjaCB0byB0aGUgb3BlbmVtYmVkZGVkLWRldmVsIGxpc3QgdG8gdXBkYXRlIHRoZSByZWNpcGUg
dG8gdXNlIHRoZSBHaXRMYWIgcmVwb3NpdG9yeS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImNvbG9yOiM5NDM2MzQ7
bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6Izk0
MzYzNDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+Ly9QZXRlcjxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29s
b3I6Izk0MzYzNDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8L286cD48
L3NwYW4+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgYmx1
ZSAxLjVwdDtwYWRkaW5nOjBjbSAwY20gMGNtIDQuMHB0Ij4NCjxkaXY+DQo8ZGl2IHN0eWxlPSJi
b3JkZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAw
Y20gMGNtIDBjbSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48c3BhbiBsYW5nPSJFTi1VUyI+
RnJvbTo8L3NwYW4+PC9iPjxzcGFuIGxhbmc9IkVOLVVTIj4geW9jdG8tYm91bmNlc0B5b2N0b3By
b2plY3Qub3JnICZsdDt5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcmZ3Q7DQo8Yj5PbiBC
ZWhhbGYgT2YgPC9iPk1hdG91xaEgUG9rb3Juw708YnI+DQo8Yj5TZW50OjwvYj4gZGVuIDI2IHNl
cHRlbWJlciAyMDE5IDE0OjAyPGJyPg0KPGI+VG86PC9iPiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
PGJyPg0KPGI+U3ViamVjdDo8L2I+IFt5b2N0b10gV2hlcmUgdG8gZ2V0IGtjb25maWctZnJvbnRl
bmRzIHBhY2thZ2U/PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5IZWxsbyE8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+SSBjb21lIGZyb20gTnV0dFggUlRPUyBwcm9qZWN0ICg8YSBo
cmVmPSJodHRwOi8vbnV0dHgub3JnIj5udXR0eC5vcmc8L2E+KSwgYW5kIHdlIHVzZSBLY29uZmln
IHRvb2wgZm9yIGNvbmZpZ3VyYXRpb24uIFRoZSB0b29sY2hhaW4gYnVpbGQgc2NyaXB0IGdldHMg
a2NvbmZpZy1mcm9udGVuZHMgc291cmNlIGNvZGUgZnJvbSB0aGUgc2FtZSBzZXJ2ZXIgYXMgWW9j
dG8gKDxhIGhyZWY9Imh0dHA6Ly95bW9yaW4uaXMtYS1nZWVrLm9yZy8iPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7
Y29sb3I6IzExNTVDQztiYWNrZ3JvdW5kOndoaXRlIj5odHRwOi8veW1vcmluLmlzLWEtZ2Vlay5v
cmc8L3NwYW4+PC9hPikuDQogVGhlIHNlcnZlciBpcyBkb3duIGZvciBhcHByb3guIG9uZSB3ZWVr
IGFuZCBpdCBjYXVzZWQgdGhlIGZhaWwgZHVyaW5nIHRoZSB0b29sY2hhaW4gYnVpbGRpbmcuIEhh
dmUgeW91IG1ldCB0aGlzIHByb2JsZW0gYXMgd2VsbD8gV2Ugd291bGQgbGlrZSB0byBzd2l0Y2gg
dG8gYW5vdGhlciBtb3JlIHJlbGlhYmxlIHJlcG9zaXRvcnksIGJ1dCBJIHJlYWQsIHRoZSBzZXJ2
ZXIncyBvd25lciBpcyBvbmUgb2YgdGhlIExpbnV4IGNvcmUgZGV2ZWxvcGVycy4NCiBTbyB0aGUg
c2VydmVyIGlzIGEga2luZCBvZiBwcmltYXJ5IHNvdXJjZS4gRG8geW91IGhhdmUgYSBzdWdnZXN0
aW9uIG9uIGhvdyB0byBzb2x2ZSB0aGlzIHByb2JsZW0/IEkgd291bGQgbGlrZSB0byBhc2sgeW91
IGZvciBoZWxwIGJlY2F1c2UgeW91IGtub3cgdGhlIExpbnV4IGVjb3N5c3RlbSBhbmQgYXJlIGlu
IHRoZSBzYW1lIHNpdHVhdGlvbiBhcyB3ZSBhcmUuPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxk
aXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0K
PGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoYW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjwv
ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PC9kaXY+DQo8ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGI+TWF0b3VzIFBva29ybnk8L2I+PG86cD48L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+RW1iZWRkZWQgU3lzdGVtIERldmVsb3BlcjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+
DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rp
dj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj5EYXRhVmlzaW9uIHMuci5vLjwvYj48
bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlVrcmFq
aW5za2EgMmE8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjEwMSAwMCBQcmFoYSAxMDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+Q3plY2ggUmVwdWJsaWM8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+R1NNOiAoJiM0Mzs0MjApIDcyMyAyODAgNDcxPG86
cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBocmVm
PSJtYWlsdG86bWF0b3VzLnBva29ybnlAZGF0YXZpc2lvbi5jeiI+bWF0b3VzLnBva29ybnlAZGF0
YXZpc2lvbi5jejwvYT48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_d608319c0f2d4c28ae5c61597b8cf9bfXBOX03axiscom_--
