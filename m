Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0238E0093B; Thu,  6 Sep 2018 08:12:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B5FE00901
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 08:12:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Sep 2018 08:12:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,338,1531810800"; d="scan'208,217";a="83606045"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2018 08:11:23 -0700
Received: from fmsmsx123.amr.corp.intel.com ([169.254.7.120]) by
	FMSMSX105.amr.corp.intel.com ([169.254.4.225]) with mapi id
	14.03.0319.002; Thu, 6 Sep 2018 08:11:23 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting
Thread-Index: AdRF7ZC6x7lE3mjqT4WzdqmanFaVng==
Date: Thu, 6 Sep 2018 15:11:22 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155ECEE34C16@fmsmsx123.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGQ5NGJkODUtMGY1OS00MmI1LWI0NzYtOTgxOTFhMzJiNmI3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUk1qQnZ1d1ZUcytrQTlxNEtqNng0cEJ5SXYwTWdCK3lJVHBCa0NHTldQY282dlA2SW1pZEpmczdpTHA2NFZTNiJ9
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
X-List-Received-Date: Thu, 06 Sep 2018 15:12:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE34C16fmsmsx123amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE34C16fmsmsx123amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBBcm1pbiwgU3RlcGhlbiwgQW1hbmRhLCBSYW5keSwgUmljaGFyZCwgSm9zaHVh
LCBSb3NzDQoNCldpa2k6IGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1Ry
aWFnZQ0KDQpBUjogUmljaGFyZCDigJMgRmlsZSBidWdzIHRvIHVwZGF0ZSBCaXRiYWtlIHdhcm5p
bmdzLg0KDQpUaGFua3MsDQoNClN0ZXBoZW4gSy4gSm9sbGV5DQpZb2N0byBQcm9qZWN0IFByb2dy
YW0gTWFuYWdlcg0KSU5URUwsIE1TIEpGMS0yNTUsIDIxMTEgTi5FLiAyNXRoIEF2ZW51ZSwgSGls
bHNib3JvLCBPUiA5NzEyNA0K4oCiICAgIENlbGw6ICAgICAgICAgICAgICAoMjA4KSAyNDQtNDQ2
MA0K4oCiIEVtYWlsOiAgICAgICAgICAgICAgICBzdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbQ0K
DQo=

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE34C16fmsmsx123amrcor_
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
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QXR0ZW5kZWVzOiBBcm1pbiwgU3RlcGhlbiwgQW1h
bmRhLCBSYW5keSwgUmljaGFyZCwgSm9zaHVhLCBSb3NzPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxk
aXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxm
b250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExcHQ7Ij5XaWtpOiA8YSBocmVmPSJodHRwczovL3dpa2kueW9jdG9wcm9qZWN0
Lm9yZy93aWtpL0J1Z19UcmlhZ2UiPjxmb250IGNvbG9yPSIjMDU2M0MxIj48dT5odHRwczovL3dp
a2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2U8L3U+PC9mb250PjwvYT48L3NwYW4+
PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0i
IzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwvZm9u
dD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5
N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPkFSOiBSaWNoYXJkIOKAkyBGaWxlIGJ1
Z3MgdG8gdXBkYXRlIEJpdGJha2Ugd2FybmluZ3MuPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+
PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250
IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjExcHQ7Ij5UaGFua3MsPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFj
ZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IHNpemU9IjQi
IGNvbG9yPSJwdXJwbGUiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTZwdDsiPjxiPjxpPlN0ZXBo
ZW4gSy4gSm9sbGV5PC9pPjwvYj48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNl
PSJDb3VyaWVyIE5ldyIgc2l6ZT0iMSIgY29sb3I9ImJsdWUiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6OHB0OyI+PGI+WW9jdG8gUHJvamVjdCBQcm9ncmFtIE1hbmFnZXI8L2I+PC9zcGFuPjwvZm9u
dD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ291cmllciBOZXciIHNpemU9IjIiIGNvbG9yPSJm
dWNoc2lhIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwcHQ7Ij48Yj5JTlRFTCwgTVMgSkYxLTI1
NSwgMjExMSBOLkUuIDI1dGggQXZlbnVlLCBIaWxsc2Jvcm8sIE9SIDk3MTI0IDwvYj48L3NwYW4+
PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBzaXplPSIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjlwdDsiPjxmb250IGZhY2U9IldpbmdkaW5ncyI+KDwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5z
IFNlcmlmIiBjb2xvcj0idGVhbCI+Jm5ic3A7Jm5ic3A7Jm5ic3A7IDwvZm9udD48Zm9udCBmYWNl
PSJDb21pYyBTYW5zIE1TIiBzaXplPSIxIiBjb2xvcj0idGVhbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZTo4cHQ7Ij48Yj5DZWxsPC9iPjwvc3Bhbj48L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBT
ZXJpZiIgY29sb3I9InRlYWwiPjombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsNCjwvZm9udD48Zm9udCBm
YWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0iIzFGNDk3RCI+KDIwOCkgMjQ0LTQ0NjA8L2ZvbnQ+
PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0Qi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6OXB0OyI+PGZvbnQgZmFjZT0iV2luZ2RpbmdzIj4qIDwv
Zm9udD48Zm9udCBmYWNlPSJDb21pYyBTYW5zIE1TIiBzaXplPSIxIiBjb2xvcj0idGVhbCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZTo4cHQ7Ij48Yj5FbWFpbDwvYj48L3NwYW4+PC9mb250Pjxmb250
IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJ0ZWFsIj46Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7DQo8L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9ImJs
dWUiPjx1PnN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tPC91PjwvZm9udD48L3NwYW4+PC9mb250
PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPC9zcGFuPjwvZm9u
dD4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE34C16fmsmsx123amrcor_--
