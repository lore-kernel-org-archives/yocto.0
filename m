Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85910E00CE0; Thu, 26 Jul 2018 07:56:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEE6EE00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 07:56:16 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jul 2018 07:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,405,1526367600"; 
	d="scan'208,217";a="249168954"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga006.fm.intel.com with ESMTP; 26 Jul 2018 07:55:01 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 26 Jul 2018 07:55:01 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.66]) by
	fmsmsx122.amr.corp.intel.com ([169.254.5.95]) with mapi id
	14.03.0319.002; Thu, 26 Jul 2018 07:55:00 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting
Thread-Index: AdQk7t5OQR3RMZEuSm6forcoOwT3DQ==
Date: Thu, 26 Jul 2018 14:55:00 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC7367952@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWVjNjJmNTYtNThlMS00YWJjLWIzNmQtMDk0ZGIxZjFlNjAyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTkY1KzBhU3ZMYU0yU05UbGdIXC90S1oyR0d0d3RGZFVaUVlxRXpscjJsb2JzNkNyWnVSVUE0bTBtcXVYMzBsTkUifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
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
X-List-Received-Date: Thu, 26 Jul 2018 14:56:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7367952fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7367952fmsmsx111amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBKb3NodWEgVy4sIFN0ZXBoZW4sIFJpY2hhcmQsIFJhbmR5LCBBbnVqLCBBbWFu
ZGEsDQoNCldpa2k6IGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFn
ZQ0KDQpBUjogU3RlcGhlbiDigJMgSGF2ZSBhIGRpc2N1c3Npb24gYWJvdXQgMi4yLjUgYW5kIDIu
My41IGluIG5leHQgd2Vla+KAmXMgdHJpYWdlLg0KDQpUaGFua3MsDQoNClN0ZXBoZW4gSy4gSm9s
bGV5DQpZb2N0byBQcm9qZWN0IFByb2dyYW0gTWFuYWdlcg0KSU5URUwsIE1TIEpGMS0yNTUsIDIx
MTEgTi5FLiAyNXRoIEF2ZW51ZSwgSGlsbHNib3JvLCBPUiA5NzEyNA0K4oCiICAgIENlbGw6ICAg
ICAgICAgICAgICAoMjA4KSAyNDQtNDQ2MA0K4oCiIEVtYWlsOiAgICAgICAgICAgICAgICBzdGVw
aGVuLmsuam9sbGV5QGludGVsLmNvbQ0KDQoNCg==

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7367952fmsmsx111amrcor_
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
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QXR0ZW5kZWVzOiBKb3NodWEgVy4sIFN0ZXBoZW4s
IFJpY2hhcmQsIFJhbmR5LCBBbnVqLCBBbWFuZGEsPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+
PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250
IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjExcHQ7Ij5XaWtpOiA8YSBocmVmPSJodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9y
Zy93aWtpL0J1Z19UcmlhZ2UiPjxmb250IGNvbG9yPSIjMDU2M0MxIj48dT5odHRwczovL3dpa2ku
eW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2U8L3U+PC9mb250PjwvYT48L3NwYW4+PC9m
b250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFG
NDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwvZm9udD48
L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0Qi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPkFSOiBTdGVwaGVuIOKAkyBIYXZlIGEgZGlz
Y3Vzc2lvbiBhYm91dCAyLjIuNSBhbmQgMi4zLjUgaW4gbmV4dCB3ZWVr4oCZcyB0cmlhZ2UuPC9z
cGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29s
b3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48
L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIj
MUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij5UaGFua3MsPC9zcGFuPjwvZm9u
dD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5
N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9k
aXY+DQo8ZGl2Pjxmb250IHNpemU9IjQiIGNvbG9yPSJwdXJwbGUiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTZwdDsiPjxiPjxpPlN0ZXBoZW4gSy4gSm9sbGV5PC9pPjwvYj48L3NwYW4+PC9mb250
PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDb3VyaWVyIE5ldyIgc2l6ZT0iMSIgY29sb3I9ImJs
dWUiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OHB0OyI+PGI+WW9jdG8gUHJvamVjdCBQcm9ncmFt
IE1hbmFnZXI8L2I+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ291cmll
ciBOZXciIHNpemU9IjIiIGNvbG9yPSJmdWNoc2lhIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEw
cHQ7Ij48Yj5JTlRFTCwgTVMgSkYxLTI1NSwgMjExMSBOLkUuIDI1dGggQXZlbnVlLCBIaWxsc2Jv
cm8sIE9SIDk3MTI0IDwvYj48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBzaXplPSIy
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjlwdDsiPjxmb250IGZhY2U9IldpbmdkaW5ncyI+KDwv
Zm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0idGVhbCI+Jm5ic3A7Jm5ic3A7
Jm5ic3A7IDwvZm9udD48Zm9udCBmYWNlPSJDb21pYyBTYW5zIE1TIiBzaXplPSIxIiBjb2xvcj0i
dGVhbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo4cHQ7Ij48Yj5DZWxsPC9iPjwvc3Bhbj48L2Zv
bnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9InRlYWwiPjombmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsNCjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0iIzFGNDk3
RCI+KDIwOCkgMjQ0LTQ0NjA8L2ZvbnQ+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQg
c2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OXB0OyI+PGZv
bnQgZmFjZT0iV2luZ2RpbmdzIj4qIDwvZm9udD48Zm9udCBmYWNlPSJDb21pYyBTYW5zIE1TIiBz
aXplPSIxIiBjb2xvcj0idGVhbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo4cHQ7Ij48Yj5FbWFp
bDwvYj48L3NwYW4+PC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJ0ZWFs
Ij46Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7DQo8L2ZvbnQ+PGZvbnQgZmFjZT0i
TVMgU2FucyBTZXJpZiIgY29sb3I9ImJsdWUiPjx1PnN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29t
PC91PjwvZm9udD48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJp
IiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+
Jm5ic3A7PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6
ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwvZm9udD48
L2Rpdj4NCjwvc3Bhbj48L2ZvbnQ+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7367952fmsmsx111amrcor_--
