Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD2F3E00B46; Tue, 24 Nov 2015 10:39:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22E32E00B44
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 10:39:27 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2015 10:39:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,339,1444719600"; 
	d="scan'208,217";a="693578247"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga003.jf.intel.com with ESMTP; 24 Nov 2015 10:39:24 -0800
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 24 Nov 2015 10:39:22 -0800
Received: from orsmsx112.amr.corp.intel.com ([169.254.12.72]) by
	ORSMSX162.amr.corp.intel.com ([169.254.3.39]) with mapi id
	14.03.0248.002; Tue, 24 Nov 2015 10:39:23 -0800
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PSPLASH 0/2] Few fixes for psplash
Thread-Index: AQHRJtfEM8OhuAzQT0SdeFUDanR0Ep6r6ugA//+WEgA=
Date: Tue, 24 Nov 2015 18:39:21 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6116FD76C@ORSMSX112.amr.corp.intel.com>
References: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
	<CAJTo0LaEo4YHRbc5fdc5aJuOP55zgZUw_Hi1nrvxLapxn-9dSw@mail.gmail.com>
In-Reply-To: <CAJTo0LaEo4YHRbc5fdc5aJuOP55zgZUw_Hi1nrvxLapxn-9dSw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Juro Bystricky <jurobystricky@hotmail.com>
Subject: Re: [PSPLASH 0/2] Few fixes for psplash
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
X-List-Received-Date: Tue, 24 Nov 2015 18:39:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6E51916E4A1F32428260031F4C7CD2B6116FD76CORSMSX112amrcor_"

--_000_6E51916E4A1F32428260031F4C7CD2B6116FD76CORSMSX112amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLiBJ4oCZbGwgbWFyayB0aGUgYnVnIDcyMzYgYXMgcmVzb2x2ZWQvZml4ZWQuDQpKdXJv
DQoNCg0KRnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0K
U2VudDogVHVlc2RheSwgTm92ZW1iZXIgMjQsIDIwMTUgODo1OCBBTQ0KVG86IEJ5c3RyaWNreSwg
SnVybw0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEp1cm8gQnlzdHJpY2t5DQpTdWJqZWN0
OiBSZTogW3lvY3RvXSBbUFNQTEFTSCAwLzJdIEZldyBmaXhlcyBmb3IgcHNwbGFzaA0KDQoNCk9u
IDI0IE5vdmVtYmVyIDIwMTUgYXQgMTY6MzksIEp1cm8gQnlzdHJpY2t5IDxqdXJvLmJ5c3RyaWNr
eUBpbnRlbC5jb208bWFpbHRvOmp1cm8uYnlzdHJpY2t5QGludGVsLmNvbT4+IHdyb3RlOg0KVGhl
c2UgcGF0Y2hlcyBmaXggaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVn
LmNnaT9pZD03MjM2DQpDb25zaWRlcmluZyB0aGVyZSB3YXMgYSBidWcgaW4gdGhlIEJHUjg4OCBk
ZXRlY3Rpb24sIGl0IGlzIHByb2JhbHkgc2FmZSB0bw0KYXNzdW1lIGl0IHdhcyBuZXZlciB1c2Vk
LiBJIG1vZGlmaWVkIGhhbmRsaW5nIG9mIDI0QlBQIG1vZGVzIHNvbWV3aGF0IGFzIHdlbGwsDQpi
dXQgZGlkIG5vdCB0ZXN0IGl0LiAyNEJQUCBjaGFuZ2VzIG9ubHkgYWZmZWN0IGJpZyBlbmRpYW4g
bW9kZSwgbGl0dGxlIGVuZGlhbg0Kc2hvdWxkIGJlIHRoZSBzYW1lIGFzIGJlZm9yZS4gKElmIHlv
dSBhcmUgYXdhcmUgb2YgYW55Ym9keSBhY3R1YWxseSB1c2luZyAyNEJQUA0KbW9kZXMsIHBsZWFz
ZSBsZXQgbWUga25vdykNClRlc3RlZCB3aXRoIGpldGhyby9jb3JlLWltYWdlLXNhdG8gKHFlbXVw
cGMsIHFlbXVtaXBzLCBxZW11YXJtKS4NCg0KVGhhbmtzIEp1cm8uICBNZXJnZWQgdG8gcHNwbGFz
aCBtYXN0ZXIuDQoNClJvc3MNCg==

--_000_6E51916E4A1F32428260031F4C7CD2B6116FD76CORSMSX112amrcor_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9
DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCglj
b2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpw
dXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxNw0K
CXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIs
c2Fucy1zZXJpZjsNCgljb2xvcjojMUY0OTdEO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHls
ZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30N
CkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4g
MS4waW4gMS4waW4gMS4waW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9u
MTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0
cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1b
aWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRt
YXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5k
aWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1
cnBsZSI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZx
dW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPlRoYW5rcy4gSeKAmWxsIG1hcmsgdGhlIGJ1
ZyA3MjM2IGFzIHJlc29sdmVkL2ZpeGVkLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5KdXJvPG86cD48L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9y
OiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGli
cmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCBibHVlIDEu
NXB0O3BhZGRpbmc6MGluIDBpbiAwaW4gNC4wcHQiPg0KPGRpdj4NCjxkaXYgc3R5bGU9ImJvcmRl
cjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAw
aW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+RnJvbTo8
L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVy
dG9uQGludGVsLmNvbV0NCjxicj4NCjxiPlNlbnQ6PC9iPiBUdWVzZGF5LCBOb3ZlbWJlciAyNCwg
MjAxNSA4OjU4IEFNPGJyPg0KPGI+VG86PC9iPiBCeXN0cmlja3ksIEp1cm88YnI+DQo8Yj5DYzo8
L2I+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEp1cm8gQnlzdHJpY2t5PGJyPg0KPGI+U3ViamVj
dDo8L2I+IFJlOiBbeW9jdG9dIFtQU1BMQVNIIDAvMl0gRmV3IGZpeGVzIGZvciBwc3BsYXNoPG86
cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiAy
NCBOb3ZlbWJlciAyMDE1IGF0IDE2OjM5LCBKdXJvIEJ5c3RyaWNreSAmbHQ7PGEgaHJlZj0ibWFp
bHRvOmp1cm8uYnlzdHJpY2t5QGludGVsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmp1cm8uYnlzdHJp
Y2t5QGludGVsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGJsb2NrcXVvdGUg
c3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlkICNDQ0NDQ0MgMS4wcHQ7cGFkZGlu
ZzowaW4gMGluIDBpbiA2LjBwdDttYXJnaW4tbGVmdDo0LjhwdDttYXJnaW4tcmlnaHQ6MGluIj4N
CjxkaXYgaWQ9Ijo1Mm0iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+VGhlc2UgcGF0Y2hlcyBmaXgg
PGEgaHJlZj0iaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9p
ZD03MjM2IiB0YXJnZXQ9Il9ibGFuayI+DQpodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5v
cmcvc2hvd19idWcuY2dpP2lkPTcyMzY8L2E+PGJyPg0KQ29uc2lkZXJpbmcgdGhlcmUgd2FzIGEg
YnVnIGluIHRoZSBCR1I4ODggZGV0ZWN0aW9uLCBpdCBpcyBwcm9iYWx5IHNhZmUgdG88YnI+DQph
c3N1bWUgaXQgd2FzIG5ldmVyIHVzZWQuIEkgbW9kaWZpZWQgaGFuZGxpbmcgb2YgMjRCUFAgbW9k
ZXMgc29tZXdoYXQgYXMgd2VsbCw8YnI+DQpidXQgZGlkIG5vdCB0ZXN0IGl0LiAyNEJQUCBjaGFu
Z2VzIG9ubHkgYWZmZWN0IGJpZyBlbmRpYW4gbW9kZSwgbGl0dGxlIGVuZGlhbjxicj4NCnNob3Vs
ZCBiZSB0aGUgc2FtZSBhcyBiZWZvcmUuIChJZiB5b3UgYXJlIGF3YXJlIG9mIGFueWJvZHkgYWN0
dWFsbHkgdXNpbmcgMjRCUFA8YnI+DQptb2RlcywgcGxlYXNlIGxldCBtZSBrbm93KTxicj4NClRl
c3RlZCB3aXRoIGpldGhyby9jb3JlLWltYWdlLXNhdG8gKHFlbXVwcGMsIHFlbXVtaXBzLCBxZW11
YXJtKS48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48YnI+DQpUaGFua3MgSnVyby4mbmJzcDsgTWVyZ2VkIHRvIHBzcGxh
c2ggbWFzdGVyLjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5Sb3NzPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rp
dj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_6E51916E4A1F32428260031F4C7CD2B6116FD76CORSMSX112amrcor_--
