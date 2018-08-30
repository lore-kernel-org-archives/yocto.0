Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F9E4E007AD; Thu, 30 Aug 2018 07:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE3F8E00720
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 07:56:09 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Aug 2018 07:56:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,307,1531810800"; 
	d="scan'208,217";a="253184519"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga005.jf.intel.com with ESMTP; 30 Aug 2018 07:55:14 -0700
Received: from fmsmsx112.amr.corp.intel.com ([169.254.5.84]) by
	fmsmsx104.amr.corp.intel.com ([169.254.3.107]) with mapi id
	14.03.0319.002; Thu, 30 Aug 2018 07:55:14 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Weekly Triage Meeting 
Thread-Index: AdRAbWY/xkuEJUxPQ9O305wkxfP1IQ==
Date: Thu, 30 Aug 2018 14:55:13 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155ECE46C3CE@FMSMSX112.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWJkYzc0NzctOGFjMi00MjVkLWI4ZDctYTkzMWQzYzZjZGEzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOFwvMVk4OHgxWHg1VlcyaktQK1FmY3FGS0gxUW43WGtib25zc1wvQWxrWEdueUt5aStTM2xZQ0Yrbks1a1dUeWFEIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
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
X-List-Received-Date: Thu, 30 Aug 2018 14:56:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46C3CEFMSMSX112amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46C3CEFMSMSX112amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBTdGVwaGVuLCBBcm1pbiwgUmljaGFyZCwgUmFuZHksIEFudWosIEFtYW5kYQ0K
DQpXaWtpOiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0J1Z19UcmlhZ2UNCg0K
QVI6IFN0ZXBoZW4g4oCTIEdldCAyLjcgbWlsZXN0b25lcyBhZGRlZCB0byBCdWd6aWxsYS4NCg0K
VGhhbmtzLA0KDQpTdGVwaGVuIEsuIEpvbGxleQ0KWW9jdG8gUHJvamVjdCBQcm9ncmFtIE1hbmFn
ZXINCklOVEVMLCBNUyBKRjEtMjU1LCAyMTExIE4uRS4gMjV0aCBBdmVudWUsIEhpbGxzYm9ybywg
T1IgOTcxMjQNCuKAoiAgICBDZWxsOiAgICAgICAgICAgICAgKDIwOCkgMjQ0LTQ0NjANCuKAoiBF
bWFpbDogICAgICAgICAgICAgICAgc3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20NCg0KDQo=

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46C3CEFMSMSX112amrcor_
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
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QXR0ZW5kZWVzOiBTdGVwaGVuLCBBcm1pbiwgUmlj
aGFyZCwgUmFuZHksIEFudWosIEFtYW5kYTwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250
IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNl
PSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZToxMXB0OyI+V2lraTogPGEgaHJlZj0iaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lr
aS9CdWdfVHJpYWdlIj48Zm9udCBjb2xvcj0iIzA1NjNDMSI+PHU+aHR0cHM6Ly93aWtpLnlvY3Rv
cHJvamVjdC5vcmcvd2lraS9CdWdfVHJpYWdlPC91PjwvZm9udD48L2E+PC9zcGFuPjwvZm9udD48
L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0Qi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+
DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij5BUjogU3RlcGhlbiDigJMgR2V0IDIuNyBtaWxlc3Rv
bmVzIGFkZGVkIHRvIEJ1Z3ppbGxhLiA8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBm
YWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0i
Q2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTFwdDsiPlRoYW5rcyw8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxp
YnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0
OyI+Jm5ic3A7PC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0iNCIgY29sb3I9
InB1cnBsZSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNnB0OyI+PGI+PGk+U3RlcGhlbiBLLiBK
b2xsZXk8L2k+PC9iPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNvdXJp
ZXIgTmV3IiBzaXplPSIxIiBjb2xvcj0iYmx1ZSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo4cHQ7
Ij48Yj5Zb2N0byBQcm9qZWN0IFByb2dyYW0gTWFuYWdlcjwvYj48L3NwYW4+PC9mb250PjwvZGl2
Pg0KPGRpdj48Zm9udCBmYWNlPSJDb3VyaWVyIE5ldyIgc2l6ZT0iMiIgY29sb3I9ImZ1Y2hzaWEi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTBwdDsiPjxiPklOVEVMLCBNUyBKRjEtMjU1LCAyMTEx
IE4uRS4gMjV0aCBBdmVudWUsIEhpbGxzYm9ybywgT1IgOTcxMjQgPC9iPjwvc3Bhbj48L2ZvbnQ+
PC9kaXY+DQo8ZGl2Pjxmb250IHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OXB0OyI+
PGZvbnQgZmFjZT0iV2luZ2RpbmdzIj4oPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYi
IGNvbG9yPSJ0ZWFsIj4mbmJzcDsmbmJzcDsmbmJzcDsgPC9mb250Pjxmb250IGZhY2U9IkNvbWlj
IFNhbnMgTVMiIHNpemU9IjEiIGNvbG9yPSJ0ZWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjhw
dDsiPjxiPkNlbGw8L2I+PC9zcGFuPjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBj
b2xvcj0idGVhbCI+OiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOw0KPC9mb250Pjxmb250IGZhY2U9Ik1T
IFNhbnMgU2VyaWYiIGNvbG9yPSIjMUY0OTdEIj4oMjA4KSAyNDQtNDQ2MDwvZm9udD48L3NwYW4+
PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZTo5cHQ7Ij48Zm9udCBmYWNlPSJXaW5nZGluZ3MiPiogPC9mb250Pjxm
b250IGZhY2U9IkNvbWljIFNhbnMgTVMiIHNpemU9IjEiIGNvbG9yPSJ0ZWFsIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjhwdDsiPjxiPkVtYWlsPC9iPjwvc3Bhbj48L2ZvbnQ+PGZvbnQgZmFjZT0i
TVMgU2FucyBTZXJpZiIgY29sb3I9InRlYWwiPjombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsNCjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0iYmx1ZSI+PHU+
c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb208L3U+PC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+
DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRp
dj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEx
cHQ7Ij4mbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPC9zcGFuPjwvZm9udD4NCjwvYm9keT4N
CjwvaHRtbD4NCg==

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECE46C3CEFMSMSX112amrcor_--
