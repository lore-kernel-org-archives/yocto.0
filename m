Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56E3BE00C4B; Thu, 31 May 2018 07:48:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E18FE007AD
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 07:48:10 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 May 2018 07:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,463,1520924400"; d="scan'208,217";a="52309599"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by fmsmga002.fm.intel.com with ESMTP; 31 May 2018 07:48:10 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.166]) by
	fmsmsx104.amr.corp.intel.com ([10.18.124.202]) with mapi id
	14.03.0319.002; Thu, 31 May 2018 07:48:09 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting 
Thread-Index: AdP469tQ5ODdOyEhT/Gca3bSNqtJow==
Date: Thu, 31 May 2018 14:48:08 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC733442C@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2ZhMjI5MjEtZjM2NC00MWEyLTg2MzYtZjJlNGE1ZjQ3ZDE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid0FwVlpGVk5vZnFcL2dGVWU5NzVOWGdJaldHQlNUamxRdnhWbUdoRDRDV0xmYnpCR0xZSzJCK1YwTGg3TFlVVlQifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
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
X-List-Received-Date: Thu, 31 May 2018 14:48:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733442Cfmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733442Cfmsmsx111amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBTdGVwaGVuLCBBbWFuZGEsIEt5bGUsIE1pY2hhZWwsIEFybWluLCBBbnVqLCBU
aW0sIFJhbmR5LA0KDQpXaWtpOiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1
Z19UcmlhZ2UNCg0KVGhhbmtzLA0KDQpTdGVwaGVuIEsuIEpvbGxleQ0KWW9jdG8gUHJvamVjdCBQ
cm9qZWN0IE1hbmFnZXINCklOVEVMLCBNUyBKRjEtMjU1LCAyMTExIE4uRS4gMjV0aCBBdmVudWUs
IEhpbGxzYm9ybywgT1IgOTcxMjQNCuKAoiAgICBDZWxsOiAgICAgICAgICAgICAgKDIwOCkgMjQ0
LTQ0NjANCuKAoiBFbWFpbDogICAgICAgICAgICAgICAgc3RlcGhlbi5rLmpvbGxleUBpbnRlbC5j
b20NCg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733442Cfmsmsx111amrcor_
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
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QXR0ZW5kZWVzOiBTdGVwaGVuLCBBbWFuZGEsIEt5
bGUsIE1pY2hhZWwsIEFybWluLCBBbnVqLCBUaW0sIFJhbmR5LCA8L3NwYW4+PC9mb250PjwvZGl2
Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxk
aXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTFwdDsiPldpa2k6IDxhIGhyZWY9Imh0dHBzOi8vd2lraS55b2N0b3By
b2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZSI+PGZvbnQgY29sb3I9IiMwNTYzQzEiPjx1Pmh0dHBz
Oi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZTwvdT48L2ZvbnQ+PC9hPjwv
c3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNv
bG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+
PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0i
IzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+VGhhbmtzLDwvc3Bhbj48L2Zv
bnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0
OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250Pjwv
ZGl2Pg0KPGRpdj48Zm9udCBzaXplPSI0IiBjb2xvcj0icHVycGxlIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjE2cHQ7Ij48Yj48aT5TdGVwaGVuIEsuIEpvbGxleTwvaT48L2I+PC9zcGFuPjwvZm9u
dD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ291cmllciBOZXciIHNpemU9IjEiIGNvbG9yPSJi
bHVlIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjhwdDsiPjxiPllvY3RvIFByb2plY3QgUHJvamVj
dCBNYW5hZ2VyPC9iPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNvdXJp
ZXIgTmV3IiBzaXplPSIyIiBjb2xvcj0iZnVjaHNpYSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MHB0OyI+PGI+SU5URUwsIE1TIEpGMS0yNTUsIDIxMTEgTi5FLiAyNXRoIEF2ZW51ZSwgSGlsbHNi
b3JvLCBPUiA5NzEyNCA8L2I+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0i
MiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo5cHQ7Ij48Zm9udCBmYWNlPSJXaW5nZGluZ3MiPig8
L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9InRlYWwiPiZuYnNwOyZuYnNw
OyZuYnNwOyA8L2ZvbnQ+PGZvbnQgZmFjZT0iQ29taWMgU2FucyBNUyIgc2l6ZT0iMSIgY29sb3I9
InRlYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OHB0OyI+PGI+Q2VsbDwvYj48L3NwYW4+PC9m
b250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJ0ZWFsIj46Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7DQo8L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9IiMxRjQ5
N0QiPigyMDgpIDI0NC00NDYwPC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250
IHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjlwdDsiPjxm
b250IGZhY2U9IldpbmdkaW5ncyI+KiA8L2ZvbnQ+PGZvbnQgZmFjZT0iQ29taWMgU2FucyBNUyIg
c2l6ZT0iMSIgY29sb3I9InRlYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OHB0OyI+PGI+RW1h
aWw8L2I+PC9zcGFuPjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0idGVh
bCI+OiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOw0KPC9mb250Pjxmb250IGZhY2U9
Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJibHVlIj48dT5zdGVwaGVuLmsuam9sbGV5QGludGVsLmNv
bTwvdT48L2ZvbnQ+PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJy
aSIgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwv
Zm9udD48L2Rpdj4NCjwvc3Bhbj48L2ZvbnQ+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733442Cfmsmsx111amrcor_--
