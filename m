Return-Path: <jeffrey.siegel@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A08AE00444; Fri,  9 Sep 2016 08:12:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.245.18.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp-us.alcatel-lucent.com (us-hpatc-esg-02.alcatel-lucent.com
	[135.245.18.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A79DE00404
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 08:12:34 -0700 (PDT)
Received: from us70tumx2.dmz.alcatel-lucent.com (unknown [135.245.18.14])
	by Websense Email Security Gateway with ESMTPS id 5F71BC78771C3
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 15:12:31 +0000 (GMT)
Received: from us70tusmtp2.zam.alcatel-lucent.com
	(us70tusmtp2.zam.alcatel-lucent.com [135.5.2.64])
	by us70tumx2.dmz.alcatel-lucent.com (GMO) with ESMTP id u89FCXxE019263
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 9 Sep 2016 15:12:33 GMT
Received: from US70UWXCHHUB01.zam.alcatel-lucent.com
	(us70uwxchhub01.zam.alcatel-lucent.com [135.5.2.48])
	by us70tusmtp2.zam.alcatel-lucent.com (GMO) with ESMTP id
	u89FCTM1013946
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 9 Sep 2016 15:12:33 GMT
Received: from US70UWXCHMBA02.zam.alcatel-lucent.com ([169.254.8.168]) by
	US70UWXCHHUB01.zam.alcatel-lucent.com ([135.5.2.48]) with mapi id
	14.03.0195.001; Fri, 9 Sep 2016 11:12:18 -0400
From: "Siegel, Jeffrey (Nokia - US)" <jeffrey.siegel@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] 'bb' utility fails on attempt to import 'commands' module
Thread-Index: AdIKHUpIDlK0cGuGSY2VskoA0mvdOQApJIiAAAVb2JA=
Date: Fri, 9 Sep 2016 15:12:17 +0000
Message-ID: <4B3F5767F3F5754FAD4E230B6B1D4F7921316B6E@US70UWXCHMBA02.zam.alcatel-lucent.com>
References: <4B3F5767F3F5754FAD4E230B6B1D4F792130C338@US70UWXCHMBA02.zam.alcatel-lucent.com>
	<CAJTo0LY5Z8P3QJiHbfxSNe6eR180oH0+gzH8B5XX3r08y3XJ5A@mail.gmail.com>
In-Reply-To: <CAJTo0LY5Z8P3QJiHbfxSNe6eR180oH0+gzH8B5XX3r08y3XJ5A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.5.27.17]
MIME-Version: 1.0
Subject: Re: 'bb' utility fails on attempt to import 'commands' module
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
X-List-Received-Date: Fri, 09 Sep 2016 15:12:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4B3F5767F3F5754FAD4E230B6B1D4F7921316B6EUS70UWXCHMBA02z_"

--_000_4B3F5767F3F5754FAD4E230B6B1D4F7921316B6EUS70UWXCHMBA02z_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLCB0aGlzIGZpeGVkIHRoZSBpc3N1ZS4gQWZ0ZXIgY2hlY2tpbmcgdGhlIG91dHB1dCBv
ZiDigJhnaXQgbG9n4oCZLCBJIHBpY2tlZCB0aGlzIGNvbW1pdDoNCmdpdCBjaGVja291dCBkNDU4
YjMNCg0KSmVmZg0K

--_000_4B3F5767F3F5754FAD4E230B6B1D4F7921316B6EUS70UWXCHMBA02z_
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
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIiwic2VyaWYi
O30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0K
CWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQphOnZpc2l0ZWQsIHNw
YW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9y
OnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHlsZTE3
DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
Iiwic2Fucy1zZXJpZiI7DQoJY29sb3I6IzFGNDk3RDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVp
biAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2Vj
dGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28g
OV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+
DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5
b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9v
OnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4t
VVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24x
Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2Zv
bnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xv
cjojMUY0OTdEIj5UaGFua3MsIHRoaXMgZml4ZWQgdGhlIGlzc3VlLiBBZnRlciBjaGVja2luZyB0
aGUgb3V0cHV0IG9mIOKAmGdpdCBsb2figJksIEkgcGlja2VkIHRoaXMgY29tbWl0OjxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmdpdCBjaGVja291dCBkNDU4YjM8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SmVmZjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztj
b2xvcjojMUY0OTdEIj48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwv
aHRtbD4NCg==

--_000_4B3F5767F3F5754FAD4E230B6B1D4F7921316B6EUS70UWXCHMBA02z_--
