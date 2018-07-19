Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E454E0124F; Thu, 19 Jul 2018 08:32:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90949E00E83
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 08:32:33 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 08:32:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,375,1526367600"; d="scan'208,217";a="57803818"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga007.jf.intel.com with ESMTP; 19 Jul 2018 08:32:31 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 19 Jul 2018 08:32:30 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.66]) by
	FMSMSX102.amr.corp.intel.com ([169.254.10.201]) with mapi id
	14.03.0319.002; Thu, 19 Jul 2018 08:32:30 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting
Thread-Index: AdQfbNxfM9IFJh8nS2i8tTk4U7jXsw==
Date: Thu, 19 Jul 2018 15:32:29 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC7364481@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTNlMTBlYjEtMzY4Yy00ZmQ1LTk5NjQtMzNhYzIxNjY3ZmJjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTUd5OGVjWlJQQTFXR2tkZm1Ra1hmMzh4amJaYlBlbjJNTXkzZk9DdnhCcmU2eG5DdUlzeHFzK1ppV2diQ2tvVyJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Weekly Triage Meeting
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
X-List-Received-Date: Thu, 19 Jul 2018 15:32:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7364481fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7364481fmsmsx111amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBLb3N0YSwgUmFuZHksIFN0ZXBoZW4sIEFudWosIEFtYW5kYSwgUmljaGFyZCwg
Um9zcywgSm9zaHVhLCBBbGVqYW5kcm8sIFBhdWwsDQoNCldpa2k6IGh0dHBzOi8vd2lraS55b2N0
b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZQ0KDQpBUjogQW51aiDigJMgUmV2aWV3IDEyNzg5
PGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTI3ODk+
Lg0KQVI6IFBhdWwg4oCTIENoZWNrIHdpdGggQWFyb24gYWJvdXQgMTI2OTg8aHR0cHM6Ly9idWd6
aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMjY5OD4NCg0KVGhhbmtzLA0K
DQpTdGVwaGVuIEsuIEpvbGxleQ0KWW9jdG8gUHJvamVjdCBQcm9ncmFtIE1hbmFnZXINCklOVEVM
LCBNUyBKRjEtMjU1LCAyMTExIE4uRS4gMjV0aCBBdmVudWUsIEhpbGxzYm9ybywgT1IgOTcxMjQN
CuKAoiAgICBDZWxsOiAgICAgICAgICAgICAgKDIwOCkgMjQ0LTQ0NjANCuKAoiBFbWFpbDogICAg
ICAgICAgICAgICAgc3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20NCg0KDQo=

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7364481fmsmsx111amrcor_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHJ0ZiAt
LT4NCjxzdHlsZT48IS0tIC5FbWFpbFF1b3RlIHsgbWFyZ2luLWxlZnQ6IDFwdDsgcGFkZGluZy1s
ZWZ0OiA0cHQ7IGJvcmRlci1sZWZ0OiAjODAwMDAwIDJweCBzb2xpZDsgfSAtLT48L3N0eWxlPg0K
PC9oZWFkPg0KPGJvZHk+DQo8Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iIHNpemU9IjMiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTJwdDsiPjxhIG5hbWU9Il9NYWlsRW5kQ29tcG9zZSI+PC9h
Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QXR0ZW5kZWVzOiBLb3N0YSwgUmFuZHksIFN0ZXBo
ZW4sIEFudWosIEFtYW5kYSwgUmljaGFyZCwgUm9zcywgSm9zaHVhLCBBbGVqYW5kcm8sIFBhdWws
IDwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIi
IGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3Nw
YW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xv
cj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+V2lraTogPGEgaHJlZj0i
aHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9CdWdfVHJpYWdlIj48Zm9udCBjb2xv
cj0iIzA1NjNDMSI+PHU+aHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9CdWdfVHJp
YWdlPC91PjwvZm9udD48L2E+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0i
Q2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGli
cmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7
Ij5BUjogQW51aiDigJMgUmV2aWV3IDxhIGhyZWY9Imh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9q
ZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTI3ODkiPjxmb250IGNvbG9yPSIjMDU2M0MxIj48dT4x
Mjc4OTwvdT48L2ZvbnQ+PC9hPi4gPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFj
ZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTFwdDsiPkFSOiBQYXVsIOKAkyBDaGVjayB3aXRoIEFhcm9uIGFib3V0IDxhIGhyZWY9Imh0
dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTI2OTgiPjxm
b250IGNvbG9yPSIjMDU2M0MxIj48dT4xMjY5ODwvdT48L2ZvbnQ+PC9hPjwvc3Bhbj48L2ZvbnQ+
PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdE
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2
Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+VGhhbmtzLDwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8
ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48
Zm9udCBzaXplPSI0IiBjb2xvcj0icHVycGxlIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE2cHQ7
Ij48Yj48aT5TdGVwaGVuIEsuIEpvbGxleTwvaT48L2I+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxk
aXY+PGZvbnQgZmFjZT0iQ291cmllciBOZXciIHNpemU9IjEiIGNvbG9yPSJibHVlIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjhwdDsiPjxiPllvY3RvIFByb2plY3QgUHJvZ3JhbSBNYW5hZ2VyPC9i
Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNvdXJpZXIgTmV3IiBzaXpl
PSIyIiBjb2xvcj0iZnVjaHNpYSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyI+PGI+SU5U
RUwsIE1TIEpGMS0yNTUsIDIxMTEgTi5FLiAyNXRoIEF2ZW51ZSwgSGlsbHNib3JvLCBPUiA5NzEy
NCA8L2I+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZTo5cHQ7Ij48Zm9udCBmYWNlPSJXaW5nZGluZ3MiPig8L2ZvbnQ+PGZvbnQg
ZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9InRlYWwiPiZuYnNwOyZuYnNwOyZuYnNwOyA8L2Zv
bnQ+PGZvbnQgZmFjZT0iQ29taWMgU2FucyBNUyIgc2l6ZT0iMSIgY29sb3I9InRlYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6OHB0OyI+PGI+Q2VsbDwvYj48L3NwYW4+PC9mb250Pjxmb250IGZh
Y2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJ0ZWFsIj46Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7DQo8
L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9IiMxRjQ5N0QiPigyMDgpIDI0
NC00NDYwPC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IHNpemU9IjIiIGNv
bG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjlwdDsiPjxmb250IGZhY2U9Ildp
bmdkaW5ncyI+KiA8L2ZvbnQ+PGZvbnQgZmFjZT0iQ29taWMgU2FucyBNUyIgc2l6ZT0iMSIgY29s
b3I9InRlYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OHB0OyI+PGI+RW1haWw8L2I+PC9zcGFu
PjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0idGVhbCI+OiZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOw0KPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2Vy
aWYiIGNvbG9yPSJibHVlIj48dT5zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTwvdT48L2ZvbnQ+
PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIg
Y29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bh
bj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8L3Nw
YW4+PC9mb250Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7364481fmsmsx111amrcor_--
