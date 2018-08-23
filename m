Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C7ACE00720; Thu, 23 Aug 2018 07:51:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8171E003C1
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 07:51:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Aug 2018 07:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,278,1531810800"; d="scan'208,217";a="82809958"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2018 07:50:01 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 23 Aug 2018 07:50:01 -0700
Received: from fmsmsx112.amr.corp.intel.com ([169.254.5.84]) by
	fmsmsx122.amr.corp.intel.com ([169.254.5.243]) with mapi id
	14.03.0319.002; Thu, 23 Aug 2018 07:50:00 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting
Thread-Index: AdQv7Q7wNovej6fHQXiJQF600pkyhw==
Date: Thu, 23 Aug 2018 14:50:00 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155ECE46981C@FMSMSX112.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDgyOWZhOGItZmI2Zi00NDU3LWJlMDMtOGM4N2U1YjIxMjE2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOGlid2JJMkxtVmZhUU5KREdod3l4QUMrbHp0cjNJa0FuY3NTQVpGbnpGUU90OGJRUWduUDBRNXR0b25jR0hBdSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
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
X-List-Received-Date: Thu, 23 Aug 2018 14:51:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46981CFMSMSX112amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46981CFMSMSX112amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBTdGVwaGVuLCBSYW5keSwgQXJtaW4sIEFtYW5kYSwgUmljaGFyZCwgSm9zaHVh
LA0KDQpXaWtpOiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2UN
Cg0KV2UgaGFkIGEgZ29vZCBkaXNjdXNzaW9uIGFib3V0IDEyMzcyPGh0dHBzOi8vYnVnemlsbGEu
eW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTIzNzI+IGFuZCBMYXZhIHVzYWdlLg0K
DQpBUjogUGF1bCDigJMgUmV2aWV3IGFuZCB1cGRhdGUgMTIxMDI8aHR0cHM6Ly9idWd6aWxsYS55
b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMjEwMj4uDQoNClRoYW5rcywNCg0KU3Rl
cGhlbiBLLiBKb2xsZXkNCllvY3RvIFByb2plY3QgUHJvZ3JhbSBNYW5hZ2VyDQpJTlRFTCwgTVMg
SkYxLTI1NSwgMjExMSBOLkUuIDI1dGggQXZlbnVlLCBIaWxsc2Jvcm8sIE9SIDk3MTI0DQrigKIg
ICAgQ2VsbDogICAgICAgICAgICAgICgyMDgpIDI0NC00NDYwDQrigKIgRW1haWw6ICAgICAgICAg
ICAgICAgIHN0ZXBoZW4uay5qb2xsZXlAaW50ZWwuY29tDQoNCg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46981CFMSMSX112amrcor_
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
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QXR0ZW5kZWVzOiBTdGVwaGVuLCBSYW5keSwgQXJt
aW4sIEFtYW5kYSwgUmljaGFyZCwgSm9zaHVhLCA8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48
Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQg
ZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTFwdDsiPldpa2k6IDxhIGhyZWY9Imh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3Jn
L3dpa2kvQnVnX1RyaWFnZSI+PGZvbnQgY29sb3I9IiMwNTYzQzEiPjx1Pmh0dHBzOi8vd2lraS55
b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZTwvdT48L2ZvbnQ+PC9hPjwvc3Bhbj48L2Zv
bnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0
OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250Pjwv
ZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+V2UgaGFkIGEgZ29vZCBkaXNjdXNzaW9uIGFi
b3V0IDxhIGhyZWY9Imh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTIzNzIiPjxmb250IGNvbG9yPSIjMDU2M0MxIj48dT4xMjM3MjwvdT48L2ZvbnQ+PC9h
PiBhbmQgTGF2YSB1c2FnZS4gPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0i
Q2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGli
cmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7
Ij5BUjogUGF1bCDigJMgUmV2aWV3IGFuZCB1cGRhdGUgPGEgaHJlZj0iaHR0cHM6Ly9idWd6aWxs
YS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMjEwMiI+PGZvbnQgY29sb3I9IiMw
NTYzQzEiPjx1PjEyMTAyPC91PjwvZm9udD48L2E+Ljwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2
Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9u
dCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMXB0OyI+VGhhbmtzLDwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZh
Y2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBzaXplPSI0
IiBjb2xvcj0icHVycGxlIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE2cHQ7Ij48Yj48aT5TdGVw
aGVuIEsuIEpvbGxleTwvaT48L2I+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFj
ZT0iQ291cmllciBOZXciIHNpemU9IjEiIGNvbG9yPSJibHVlIj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjhwdDsiPjxiPllvY3RvIFByb2plY3QgUHJvZ3JhbSBNYW5hZ2VyPC9iPjwvc3Bhbj48L2Zv
bnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNvdXJpZXIgTmV3IiBzaXplPSIyIiBjb2xvcj0i
ZnVjaHNpYSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyI+PGI+SU5URUwsIE1TIEpGMS0y
NTUsIDIxMTEgTi5FLiAyNXRoIEF2ZW51ZSwgSGlsbHNib3JvLCBPUiA5NzEyNCA8L2I+PC9zcGFu
PjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZTo5cHQ7Ij48Zm9udCBmYWNlPSJXaW5nZGluZ3MiPig8L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2Fu
cyBTZXJpZiIgY29sb3I9InRlYWwiPiZuYnNwOyZuYnNwOyZuYnNwOyA8L2ZvbnQ+PGZvbnQgZmFj
ZT0iQ29taWMgU2FucyBNUyIgc2l6ZT0iMSIgY29sb3I9InRlYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6OHB0OyI+PGI+Q2VsbDwvYj48L3NwYW4+PC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMg
U2VyaWYiIGNvbG9yPSJ0ZWFsIj46Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7DQo8L2ZvbnQ+PGZvbnQg
ZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9IiMxRjQ5N0QiPigyMDgpIDI0NC00NDYwPC9mb250
Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IHNpemU9IjIiIGNvbG9yPSIjMUY0OTdE
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjlwdDsiPjxmb250IGZhY2U9IldpbmdkaW5ncyI+KiA8
L2ZvbnQ+PGZvbnQgZmFjZT0iQ29taWMgU2FucyBNUyIgc2l6ZT0iMSIgY29sb3I9InRlYWwiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6OHB0OyI+PGI+RW1haWw8L2I+PC9zcGFuPjwvZm9udD48Zm9u
dCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0idGVhbCI+OiZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOw0KPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJi
bHVlIj48dT5zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTwvdT48L2ZvbnQ+PC9zcGFuPjwvZm9u
dD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5
N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9k
aXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8L3NwYW4+PC9mb250Pg0K
PC9ib2R5Pg0KPC9odG1sPg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46981CFMSMSX112amrcor_--
