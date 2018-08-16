Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6FD1E009AC; Thu, 16 Aug 2018 07:54:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AEB3E006B4
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 07:54:22 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Aug 2018 07:54:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,247,1531810800"; d="scan'208,217";a="81904163"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2018 07:54:12 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 16 Aug 2018 07:54:11 -0700
Received: from fmsmsx112.amr.corp.intel.com ([169.254.5.84]) by
	fmsmsx118.amr.corp.intel.com ([169.254.1.229]) with mapi id
	14.03.0319.002; Thu, 16 Aug 2018 07:54:11 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting
Thread-Index: AdQv7Q7wNovej6fHQXiJQF600pkyhw==
Date: Thu, 16 Aug 2018 14:54:11 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155ECE466243@FMSMSX112.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
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
X-List-Received-Date: Thu, 16 Aug 2018 14:54:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE466243FMSMSX112amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE466243FMSMSX112amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBBcm1pbiwgU3RlcGhlbiwgQW1hbmRhLCBKb3NodWEsIFJpY2hhcmQsIFJhbmR5
LCBEYXZpZCwgQW51aiwNCg0KV2lraTogaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lr
aS9CdWdfVHJpYWdlDQoNCkFSOiBQYXVsIOKAkyBSZXZpZXcgYW5kIHVwZGF0ZSAxMjEwMjxodHRw
czovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEyMTAyPg0KDQpU
aGFua3MsDQoNClN0ZXBoZW4gSy4gSm9sbGV5DQpZb2N0byBQcm9qZWN0IFByb2dyYW0gTWFuYWdl
cg0KSU5URUwsIE1TIEpGMS0yNTUsIDIxMTEgTi5FLiAyNXRoIEF2ZW51ZSwgSGlsbHNib3JvLCBP
UiA5NzEyNA0K4oCiICAgIENlbGw6ICAgICAgICAgICAgICAoMjA4KSAyNDQtNDQ2MA0K4oCiIEVt
YWlsOiAgICAgICAgICAgICAgICBzdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbQ0KDQoNCg==

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE466243FMSMSX112amrcor_
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
bmRhLCBKb3NodWEsIFJpY2hhcmQsIFJhbmR5LCBEYXZpZCwgQW51aiwgPC9zcGFuPjwvZm9udD48
L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0Qi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+
DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij5XaWtpOiA8YSBocmVmPSJodHRwczovL3dpa2kueW9j
dG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2UiPjxmb250IGNvbG9yPSIjMDU2M0MxIj48dT5o
dHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2U8L3U+PC9mb250Pjwv
YT48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIy
IiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9z
cGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29s
b3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPkFSOiBQYXVsIOKAkyBS
ZXZpZXcgYW5kIHVwZGF0ZSA8YSBocmVmPSJodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5v
cmcvc2hvd19idWcuY2dpP2lkPTEyMTAyIj48Zm9udCBjb2xvcj0iIzA1NjNDMSI+PHU+MTIxMDI8
L3U+PC9mb250PjwvYT48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxp
YnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0
OyI+Jm5ic3A7PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIg
c2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPlRo
YW5rcyw8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXpl
PSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7
PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0iNCIgY29sb3I9InB1cnBsZSI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNnB0OyI+PGI+PGk+U3RlcGhlbiBLLiBKb2xsZXk8L2k+
PC9iPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNvdXJpZXIgTmV3IiBz
aXplPSIxIiBjb2xvcj0iYmx1ZSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo4cHQ7Ij48Yj5Zb2N0
byBQcm9qZWN0IFByb2dyYW0gTWFuYWdlcjwvYj48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48
Zm9udCBmYWNlPSJDb3VyaWVyIE5ldyIgc2l6ZT0iMiIgY29sb3I9ImZ1Y2hzaWEiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTBwdDsiPjxiPklOVEVMLCBNUyBKRjEtMjU1LCAyMTExIE4uRS4gMjV0
aCBBdmVudWUsIEhpbGxzYm9ybywgT1IgOTcxMjQgPC9iPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8
ZGl2Pjxmb250IHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OXB0OyI+PGZvbnQgZmFj
ZT0iV2luZ2RpbmdzIj4oPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJ0
ZWFsIj4mbmJzcDsmbmJzcDsmbmJzcDsgPC9mb250Pjxmb250IGZhY2U9IkNvbWljIFNhbnMgTVMi
IHNpemU9IjEiIGNvbG9yPSJ0ZWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjhwdDsiPjxiPkNl
bGw8L2I+PC9zcGFuPjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0idGVh
bCI+OiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOw0KPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2Vy
aWYiIGNvbG9yPSIjMUY0OTdEIj4oMjA4KSAyNDQtNDQ2MDwvZm9udD48L3NwYW4+PC9mb250Pjwv
ZGl2Pg0KPGRpdj48Zm9udCBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZTo5cHQ7Ij48Zm9udCBmYWNlPSJXaW5nZGluZ3MiPiogPC9mb250Pjxmb250IGZhY2U9
IkNvbWljIFNhbnMgTVMiIHNpemU9IjEiIGNvbG9yPSJ0ZWFsIj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjhwdDsiPjxiPkVtYWlsPC9iPjwvc3Bhbj48L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBT
ZXJpZiIgY29sb3I9InRlYWwiPjombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsNCjwv
Zm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0iYmx1ZSI+PHU+c3RlcGhlbi5r
LmpvbGxleUBpbnRlbC5jb208L3U+PC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxm
b250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBm
YWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJz
cDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPC9zcGFuPjwvZm9udD4NCjwvYm9keT4NCjwvaHRtbD4N
Cg==

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE466243FMSMSX112amrcor_--
