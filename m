Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F6AEE00BAA; Thu,  7 Jun 2018 08:08:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E0BE00998
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 08:08:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jun 2018 08:08:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,486,1520924400"; 
	d="scan'208,217";a="206153879"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga004.jf.intel.com with ESMTP; 07 Jun 2018 08:08:42 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 7 Jun 2018 08:08:42 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.166]) by
	fmsmsx118.amr.corp.intel.com ([169.254.1.173]) with mapi id
	14.03.0319.002; Thu, 7 Jun 2018 08:08:41 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting
Thread-Index: AdP+a0uEbVIdYdSiTVKxmwPQZbP1Wg==
Date: Thu, 7 Jun 2018 15:08:40 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC733BF79@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTRjNTQxYTMtMjc4ZC00MjlmLWJjYTgtYjEzNGY0Y2Y3YWE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia3ZGOHRLUHJ6YWx4a3ZFTzdFc2RLa0x3bm12OGd1MlcwTnB1c3pBUHRvSGtnUlByUUl4dXg1YkJvTnIyQnNxbSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
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
X-List-Received-Date: Thu, 07 Jun 2018 15:08:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733BF79fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733BF79fmsmsx111amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBBcm1pbiwgU3RlcGhlbiwgSm9zaHVhLCBBbWFuZGEsIEFudWosIFJpY2hhcmQs
IFJvc3MsIFJhbmR5LCBUcmV2b3IsIFRpbSwNCldpa2k6IGh0dHBzOi8vd2lraS55b2N0b3Byb2pl
Y3Qub3JnL3dpa2kvQnVnX1RyaWFnZTxodHRwczovL3d3dy5nb29nbGUuY29tL3VybD9xPWh0dHBz
JTNBJTJGJTJGd2lraS55b2N0b3Byb2plY3Qub3JnJTJGd2lraSUyRkJ1Z19UcmlhZ2Umc2E9RCZ1
c2Q9MiZ1c2c9QUZRakNORV9vMkJvRnZYOGN5UXdQNVFrNGZsd203eEFTQT4NCkFSOiBKb3NodWEg
LSBDbG9zZSAxMjc3MTxodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEyNzcxPg0KQVI6IEFudWog4oCTIENsb3NlIDExNDMxPGh0dHBzOi8vYnVnemlsbGEu
eW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTE0MzE+DQoNClRoYW5rcywNCg0KU3Rl
cGhlbiBLLiBKb2xsZXkNCllvY3RvIFByb2plY3QgUHJvamVjdCBNYW5hZ2VyDQpJTlRFTCwgTVMg
SkYxLTI1NSwgMjExMSBOLkUuIDI1dGggQXZlbnVlLCBIaWxsc2Jvcm8sIE9SIDk3MTI0DQrigKIg
ICAgQ2VsbDogICAgICAgICAgICAgICAgICAgICAgKDIwOCkgMjQ0LTQ0NjANCuKAoiBFbWFpbDog
ICAgICAgICAgICAgICAgc3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20NCg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733BF79fmsmsx111amrcor_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHJ0ZiAt
LT4NCjxzdHlsZT48IS0tIC5FbWFpbFF1b3RlIHsgbWFyZ2luLWxlZnQ6IDFwdDsgcGFkZGluZy1s
ZWZ0OiA0cHQ7IGJvcmRlci1sZWZ0OiAjODAwMDAwIDJweCBzb2xpZDsgfSAtLT48L3N0eWxlPg0K
PC9oZWFkPg0KPGJvZHk+DQo8Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iIHNpemU9IjMiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTJwdDsiPjxhIG5hbWU9Il9NYWlsRW5kQ29tcG9zZSI+PC9h
Pg0KPGRpdiBzdHlsZT0ibWFyZ2luLXRvcDoxNHB0OyI+PGZvbnQgZmFjZT0iQXJpYWwiIHNpemU9
IjIiIGNvbG9yPSIjMjIyMjIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij5BdHRlbmRl
ZXM6IEFybWluLCBTdGVwaGVuLCBKb3NodWEsIEFtYW5kYSwgQW51aiwgUmljaGFyZCwgUm9zcywg
UmFuZHksIFRyZXZvciwgVGltLCA8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdiBzdHlsZT0ibWFy
Z2luLXRvcDoxNHB0OyI+PGZvbnQgZmFjZT0iQXJpYWwiIHNpemU9IjIiIGNvbG9yPSIjMjIyMjIy
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij5XaWtpOiA8YSBocmVmPSJodHRwczovL3d3
dy5nb29nbGUuY29tL3VybD9xPWh0dHBzJTNBJTJGJTJGd2lraS55b2N0b3Byb2plY3Qub3JnJTJG
d2lraSUyRkJ1Z19UcmlhZ2UmYW1wO3NhPUQmYW1wO3VzZD0yJmFtcDt1c2c9QUZRakNORV9vMkJv
RnZYOGN5UXdQNVFrNGZsd203eEFTQSI+PGZvbnQgY29sb3I9ImJsdWUiPjx1Pmh0dHBzOi8vd2lr
aS55b2N0b3Byb2plY3Qub3JnL3dpa2kvQnVnX1RyaWFnZTwvdT48L2ZvbnQ+PC9hPjwvc3Bhbj48
L2ZvbnQ+PC9kaXY+DQo8ZGl2IHN0eWxlPSJtYXJnaW4tdG9wOjE0cHQ7Ij48Zm9udCBmYWNlPSJB
cmlhbCIgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QVI6IEpvc2h1YSAt
IENsb3NlIDxhIGhyZWY9Imh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTI3NzEiPjxmb250IGNvbG9yPSIjMDU2M0MxIj48dT4xMjc3MTwvdT48L2ZvbnQ+
PC9hPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2IHN0eWxlPSJtYXJnaW4tdG9wOjE0cHQ7Ij48
Zm9udCBmYWNlPSJBcmlhbCIgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+
QVI6IEFudWog4oCTIENsb3NlIDxhIGhyZWY9Imh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTE0MzEiPjxmb250IGNvbG9yPSIjMDU2M0MxIj48dT4xMTQz
MTwvdT48L2ZvbnQ+PC9hPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNh
bGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMjIyMjIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEx
cHQ7Ij48YnI+DQoNCjxmb250IGZhY2U9IkFyaWFsIiBjb2xvcj0iIzFGNDk3RCI+VGhhbmtzLDwv
Zm9udD48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXpl
PSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7
PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0iNCIgY29sb3I9InB1cnBsZSI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNnB0OyI+PGI+PGk+U3RlcGhlbiBLLiBKb2xsZXk8L2k+
PC9iPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNvdXJpZXIgTmV3IiBz
aXplPSIxIiBjb2xvcj0iYmx1ZSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo4cHQ7Ij48Yj5Zb2N0
byBQcm9qZWN0IFByb2plY3QgTWFuYWdlcjwvYj48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48
Zm9udCBmYWNlPSJDb3VyaWVyIE5ldyIgc2l6ZT0iMiIgY29sb3I9ImZ1Y2hzaWEiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTBwdDsiPjxiPklOVEVMLCBNUyBKRjEtMjU1LCAyMTExIE4uRS4gMjV0
aCBBdmVudWUsIEhpbGxzYm9ybywgT1IgOTcxMjQgPC9iPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8
ZGl2Pjxmb250IHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OXB0OyI+PGZvbnQgZmFj
ZT0iV2luZ2RpbmdzIj4oPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJ0
ZWFsIj4mbmJzcDsmbmJzcDsmbmJzcDsgPC9mb250Pjxmb250IGZhY2U9IkNvbWljIFNhbnMgTVMi
IHNpemU9IjEiIGNvbG9yPSJ0ZWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjhwdDsiPjxiPkNl
bGw8L2I+PC9zcGFuPjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0idGVh
bCI+OiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOw0KPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9y
PSIjMUY0OTdEIj4oMjA4KSAyNDQtNDQ2MDwvZm9udD48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRp
dj48Zm9udCBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo5
cHQ7Ij48Zm9udCBmYWNlPSJXaW5nZGluZ3MiPiogPC9mb250Pjxmb250IGZhY2U9IkNvbWljIFNh
bnMgTVMiIHNpemU9IjEiIGNvbG9yPSJ0ZWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjhwdDsi
PjxiPkVtYWlsPC9iPjwvc3Bhbj48L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBTZXJpZiIgY29s
b3I9InRlYWwiPjombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsNCjwvZm9udD48Zm9u
dCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0iYmx1ZSI+PHU+c3RlcGhlbi5rLmpvbGxleUBp
bnRlbC5jb208L3U+PC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9
IkNhbGlicmkiIHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwv
c3Bhbj48L2ZvbnQ+PC9kaXY+DQo8L3NwYW4+PC9mb250Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC733BF79fmsmsx111amrcor_--
