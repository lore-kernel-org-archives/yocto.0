Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17A6AE00E0C; Thu, 27 Oct 2016 21:49:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.77 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from rcdn-iport-6.cisco.com (rcdn-iport-6.cisco.com [173.37.86.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90024E00E0A
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 21:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=8766; q=dns/txt; s=iport;
	t=1477630141; x=1478839741;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:mime-version;
	bh=LEA/6rU9gW/SEdIZP7jRnpBNxfFaQGW7YzjZdp458f0=;
	b=MqI3gxrvuJSVaczlJ2AoHbBUVRVfhR6oiQzpt4bDVfHY7x9zNPaSunMN
	uMoSV/pi1it20gV4XPnKqt7tY1ckkf+NZePJzJgpw3nvLGmR/TFJ3B2lO
	Xk+KZtzg8B6tWh+x4DozE3U36Lx4TFLqL6Thn/VkOw7VLqkqVnmSRmLdW 8=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CLAQBp2BJY/5xdJa1dGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgnM3AQEBAQEdWH0HhCSJC5Z9h16HS4UWggcdAQqFewIagWY/FAECAQE?=
	=?us-ascii?q?BAQEBAWIohGIBAQEEAQEBIEsLEAIBCBEDAQIoAwICAh8GAQoUCQgCBA4FiDoDF?=
	=?us-ascii?q?w6xOoh8DYNvAQEBAQEBAQEBAQEBAQEBAQEBAQEBHIY9gX0IglCCR4IgHoJGLII?=
	=?us-ascii?q?vBZlhNQGGLIVaeIMkgjyNSIhxhBqEAAEeNl+FCXKHEYEJAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,407,1473120000"; 
	d="scan'208,217";a="164697813"
Received: from rcdn-core-5.cisco.com ([173.37.93.156])
	by rcdn-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Oct 2016 04:48:58 +0000
Received: from XCH-RTP-004.cisco.com (xch-rtp-004.cisco.com [64.101.220.144])
	by rcdn-core-5.cisco.com (8.14.5/8.14.5) with ESMTP id u9S4mwZj011828
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 28 Oct 2016 04:48:58 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-004.cisco.com
	(64.101.220.144) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Fri, 28 Oct 2016 00:48:57 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Fri, 28 Oct 2016 00:48:57 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] qlibc lib for Yocto Dizzy question
Thread-Index: AQHSMMogOysuOqk8TkeqdD+oRCIiMKC9gSsA//+YcYA=
Date: Fri, 28 Oct 2016 04:48:57 +0000
Message-ID: <FCBF0B79-821F-4829-8664-A9BBC6A5804F@cisco.com>
References: <108EEEE7-FA01-47F4-BFC9-F03C15F37184@cisco.com>
	<102BA059-A58C-4917-8697-70387D6D0540@gmail.com>
In-Reply-To: <102BA059-A58C-4917-8697-70387D6D0540@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.68.239]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qlibc lib for Yocto Dizzy question
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
X-List-Received-Date: Fri, 28 Oct 2016 04:49:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_FCBF0B79821F48298664A9BBC6A5804Fciscocom_"

--_000_FCBF0B79821F48298664A9BBC6A5804Fciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIG11Y2ggZm9yIHByb21wdCByZXNwb25zZSBLaGVtLg0KDQpZZXMsICBxTGliYyBpcyBh
IHNpbXBsZSBsaWJyYXJ5DQpodHRwczovL2dpdGh1Yi5jb20vd29sa3lraW0vcWxpYmMuZ2l0DQoN
ClRoYW5rcywNCiAg4oCURGluaA0KDQpGcm9tOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29t
PG1haWx0bzpyYWoua2hlbUBnbWFpbC5jb20+Pg0KRGF0ZTogVGh1cnNkYXksIE9jdG9iZXIgMjcs
IDIwMTYgYXQgOTowMCBQTQ0KVG86IGRpbmhuIDxkaW5obkBjaXNjby5jb208bWFpbHRvOmRpbmhu
QGNpc2NvLmNvbT4+DQpDYzogInlvY3RvQHlvY3RvcHJvamVjdC5vcmc8bWFpbHRvOnlvY3RvQHlv
Y3RvcHJvamVjdC5vcmc+IiA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxtYWlsdG86eW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZz4+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBxbGliYyBsaWIgZm9yIFlvY3Rv
IERpenp5IHF1ZXN0aW9uDQoNCg0KT24gT2N0IDI3LCAyMDE2LCBhdCA4OjE5IFBNLCBEaW5oIE5n
dXllbiAoZGluaG4pIDxkaW5obkBjaXNjby5jb208bWFpbHRvOmRpbmhuQGNpc2NvLmNvbT4+IHdy
b3RlOg0KDQoNCkhpIFlvY3RvIGd1cnVzLA0KDQpJIGFtIHRyeWluZyB0byBhZGQgdGhlIHFsaWJj
IGxpYiB0byBvdXIgWW9jdG8gMS43LjIgdmVyc2lvbi4NCkFibGUgdG8gY29tcGlsZSBhbmQgYnVp
bGQgSVBLIHBhY2thZ2VzIHdpdGggb3V0IGFueSBpc3N1ZSBhcyBzaG93biBiZWxvdzoNCg0KZGlu
aG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hz
ZGsveXBfcHBjJCBmaW5kIHRtcC9kZXBsb3kgfCBncmVwIHFsaWJjDQp0bXAvZGVwbG95L2lway9w
cGNlNTAwdjIvcWxpYmMtZGJnXzEuMC1yMF9wcGNlNTAwdjIuaXBrDQp0bXAvZGVwbG95L2lway9w
cGNlNTAwdjIvcWxpYmMtZGV2XzEuMC1yMF9wcGNlNTAwdjIuaXBrDQp0bXAvZGVwbG95L2xpY2Vu
c2VzL3FsaWJjDQp0bXAvZGVwbG95L2xpY2Vuc2VzL3FsaWJjL2dlbmVyaWNfQlNELTItQ2xhdXNl
DQp0bXAvZGVwbG95L2xpY2Vuc2VzL3FsaWJjL0xJQ0VOU0UNCg0KSG93ZXZlciwgaXQgaXMgbm90
IGluY2x1ZGVkIGluIHRoZSByb290ZnMubWFuaWZlc3QgZm9yIGJ1aWxkaW5nIGEgTFhDIGNvbnRh
aW5lci4NCkkgd29uZGVyIHdoZXRoZXIgSSBhbSBtaXNzaW5nIGluIG15IHJlY2lwZSBxbGliYy5i
YiBvciBob3cgdG8gc29sdmUgdGhpcyBpc3N1ZT8NCg0KaXQgc2VlbXMgdGhhdCBtYWluIHBhY2th
Z2UgaXMgZW1wdHkuIElzIGl0IGp1c3QgYnVpbGRpbmcgYSBzdGF0aWMgKCAuYSApIGxpYnJhcnkg
Pw0KDQoNCk1hbnkgdGhhbmtzLA0KICDigJREaW5oDQoNCg0KLS0NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3Rv
QHlvY3RvcHJvamVjdC5vcmc8bWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQpodHRwczov
L2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0K

--_000_FCBF0B79821F48298664A9BBC6A5804Fciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <EF3EB4489A34B746A4938080031DA63A@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1mYW1pbHk6
IENhbGlicmksIHNhbnMtc2VyaWY7Ij4NCjxkaXY+DQo8ZGl2PlRoYW5rcyBtdWNoIGZvciBwcm9t
cHQgcmVzcG9uc2UgS2hlbS4mbmJzcDs8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Plll
cywgJm5ic3A7PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMTAyLCAxMDIsIDEwMik7IGZvbnQtZmFt
aWx5OiAtYXBwbGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsICdTZWdvZSBVSScsIEhlbHZl
dGljYSwgQXJpYWwsIHNhbnMtc2VyaWYsICdBcHBsZSBDb2xvciBFbW9qaScsICdTZWdvZSBVSSBF
bW9qaScsICdTZWdvZSBVSSBTeW1ib2wnOyBvcnBoYW5zOiAyOyB3aWRvd3M6IDI7IGJhY2tncm91
bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPnFMaWJjDQogaXMgYSBzaW1wbGUgbGlicmFy
eTwvc3Bhbj48L2Rpdj4NCjxkaXY+PGEgaHJlZj0iaHR0cHM6Ly9naXRodWIuY29tL3dvbGt5a2lt
L3FsaWJjLmdpdCI+aHR0cHM6Ly9naXRodWIuY29tL3dvbGt5a2ltL3FsaWJjLmdpdDwvYT48L2Rp
dj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlRoYW5rcyw8L2Rpdj4NCjxkaXY+Jm5ic3A7IOKA
lERpbmg8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtc2l6ZTogMTRweDsiPg0KPGRpdiBpZD0iTUFD
X09VVExPT0tfU0lHTkFUVVJFIj48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJm
b250LXNpemU6IDE0cHg7Ij48YnI+DQo8L2Rpdj4NCjxzcGFuIGlkPSJPTEtfU1JDX0JPRFlfU0VD
VElPTiIgc3R5bGU9ImZvbnQtc2l6ZTogMTRweDsiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6
Q2FsaWJyaTsgZm9udC1zaXplOjEycHQ7IHRleHQtYWxpZ246bGVmdDsgY29sb3I6YmxhY2s7IEJP
UkRFUi1CT1RUT006IG1lZGl1bSBub25lOyBCT1JERVItTEVGVDogbWVkaXVtIG5vbmU7IFBBRERJ
TkctQk9UVE9NOiAwaW47IFBBRERJTkctTEVGVDogMGluOyBQQURESU5HLVJJR0hUOiAwaW47IEJP
UkRFUi1UT1A6ICNiNWM0ZGYgMXB0IHNvbGlkOyBCT1JERVItUklHSFQ6IG1lZGl1bSBub25lOyBQ
QURESU5HLVRPUDogM3B0Ij4NCjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDpib2xkIj5Gcm9tOiA8
L3NwYW4+S2hlbSBSYWogJmx0OzxhIGhyZWY9Im1haWx0bzpyYWoua2hlbUBnbWFpbC5jb20iPnJh
ai5raGVtQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KPHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OmJv
bGQiPkRhdGU6IDwvc3Bhbj5UaHVyc2RheSwgT2N0b2JlciAyNywgMjAxNiBhdCA5OjAwIFBNPGJy
Pg0KPHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OmJvbGQiPlRvOiA8L3NwYW4+ZGluaG4gJmx0Ozxh
IGhyZWY9Im1haWx0bzpkaW5obkBjaXNjby5jb20iPmRpbmhuQGNpc2NvLmNvbTwvYT4mZ3Q7PGJy
Pg0KPHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OmJvbGQiPkNjOiA8L3NwYW4+JnF1b3Q7PGEgaHJl
Zj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmciPnlvY3RvQHlvY3RvcHJvamVjdC5vcmc8
L2E+JnF1b3Q7ICZsdDs8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyI+eW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4mZ3Q7PGJyPg0KPHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0
OmJvbGQiPlN1YmplY3Q6IDwvc3Bhbj5SZTogW3lvY3RvXSBxbGliYyBsaWIgZm9yIFlvY3RvIERp
enp5IHF1ZXN0aW9uPGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPHNwYW4gc3R5bGU9
Im1zby1ib29rbWFyazpfTWFpbE9yaWdpbmFsQm9keSI+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0id29y
ZC13cmFwOiBicmVhay13b3JkOyAtd2Via2l0LW5ic3AtbW9kZTogc3BhY2U7IC13ZWJraXQtbGlu
ZS1icmVhazogYWZ0ZXItd2hpdGUtc3BhY2U7IiBjbGFzcz0iIj4NCjxiciBjbGFzcz0iIj4NCjxk
aXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjbGFzcz0iIj4NCjxkaXYgY2xhc3M9IiI+T24g
T2N0IDI3LCAyMDE2LCBhdCA4OjE5IFBNLCBEaW5oIE5ndXllbiAoZGluaG4pICZsdDs8YSBocmVm
PSJtYWlsdG86ZGluaG5AY2lzY28uY29tIiBjbGFzcz0iIj5kaW5obkBjaXNjby5jb208L2E+Jmd0
OyB3cm90ZTo8L2Rpdj4NCjxiciBjbGFzcz0iQXBwbGUtaW50ZXJjaGFuZ2UtbmV3bGluZSI+DQo8
ZGl2IGNsYXNzPSIiPg0KPGRpdiBzdHlsZT0id29yZC13cmFwOiBicmVhay13b3JkOyAtd2Via2l0
LW5ic3AtbW9kZTogc3BhY2U7IC13ZWJraXQtbGluZS1icmVhazogYWZ0ZXItd2hpdGUtc3BhY2U7
IGZvbnQtc2l6ZTogMTRweDsgZm9udC1mYW1pbHk6IENhbGlicmksIHNhbnMtc2VyaWY7IiBjbGFz
cz0iIj4NCjxkaXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSIi
PkhpIFlvY3RvIGd1cnVzLDwvZGl2Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rp
dj4NCjxkaXYgY2xhc3M9IiI+SSBhbSB0cnlpbmcgdG8gYWRkIHRoZSBxbGliYyBsaWIgdG8gb3Vy
IFlvY3RvIDEuNy4yIHZlcnNpb24uPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPkFibGUgdG8gY29tcGls
ZSBhbmQgYnVpbGQgSVBLIHBhY2thZ2VzIHdpdGggb3V0IGFueSBpc3N1ZSBhcyBzaG93biBiZWxv
dzo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNz
PSIiPg0KPGRpdiBjbGFzcz0iIj5kaW5obkBycy1ibGRzcnY6L21lZGlhL3JhZ2h1cmFtL2RhdGEv
ZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cF9wcGMkIGZpbmQgdG1wL2RlcGxveSB8IGdyZXAg
cWxpYmM8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+dG1wL2RlcGxveS9pcGsvcHBjZTUwMHYyL3FsaWJj
LWRiZ18xLjAtcjBfcHBjZTUwMHYyLmlwazwvZGl2Pg0KPGRpdiBjbGFzcz0iIj50bXAvZGVwbG95
L2lway9wcGNlNTAwdjIvcWxpYmMtZGV2XzEuMC1yMF9wcGNlNTAwdjIuaXBrPC9kaXY+DQo8ZGl2
IGNsYXNzPSIiPnRtcC9kZXBsb3kvbGljZW5zZXMvcWxpYmM8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+
dG1wL2RlcGxveS9saWNlbnNlcy9xbGliYy9nZW5lcmljX0JTRC0yLUNsYXVzZTwvZGl2Pg0KPGRp
diBjbGFzcz0iIj50bXAvZGVwbG95L2xpY2Vuc2VzL3FsaWJjL0xJQ0VOU0U8L2Rpdj4NCjwvZGl2
Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+SG93
ZXZlciwgaXQgaXMgbm90IGluY2x1ZGVkIGluIHRoZSZuYnNwO3Jvb3Rmcy5tYW5pZmVzdCBmb3Ig
YnVpbGRpbmcgYSBMWEMgY29udGFpbmVyLiAmbmJzcDs8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+SSB3
b25kZXIgd2hldGhlciBJIGFtIG1pc3NpbmcgaW4gbXkgcmVjaXBlIHFsaWJjLmJiIG9yIGhvdyB0
byBzb2x2ZSB0aGlzIGlzc3VlPzwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4N
CjxkaXY+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2Pml0IHNlZW1zIHRoYXQgbWFpbiBwYWNr
YWdlIGlzIGVtcHR5LiBJcyBpdCBqdXN0IGJ1aWxkaW5nIGEgc3RhdGljICggLmEgKSBsaWJyYXJ5
ID88L2Rpdj4NCjxiciBjbGFzcz0iIj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNsYXNzPSIi
Pg0KPGRpdiBjbGFzcz0iIj4NCjxkaXYgc3R5bGU9IndvcmQtd3JhcDogYnJlYWstd29yZDsgLXdl
YmtpdC1uYnNwLW1vZGU6IHNwYWNlOyAtd2Via2l0LWxpbmUtYnJlYWs6IGFmdGVyLXdoaXRlLXNw
YWNlOyBmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiBDYWxpYnJpLCBzYW5zLXNlcmlmOyIg
Y2xhc3M9IiI+DQo8ZGl2IGNsYXNzPSIiPjxiciBjbGFzcz0iIj4NCjwvZGl2Pg0KPGRpdiBjbGFz
cz0iIj5NYW55IHRoYW5rcyw8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+Jm5ic3A7IOKAlERpbmg8L2Rp
dj4NCjxkaXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPjxi
ciBjbGFzcz0iIj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj4NCjxkaXYgaWQ9IiIgY2xhc3M9IiI+
PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KLS0gPGJyIGNsYXNzPSIiPg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnIgY2xhc3M9IiI+DQp5b2N0byBtYWls
aW5nIGxpc3Q8YnIgY2xhc3M9IiI+DQo8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZyIgY2xhc3M9IiI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48YnIgY2xhc3M9IiI+DQo8
YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8iPmh0
dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bzwvYT48YnIgY2xhc3M9
IiI+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPGJyIGNsYXNzPSIiPg0KPC9kaXY+
DQo8L2Rpdj4NCjwvc3Bhbj48L3NwYW4+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_FCBF0B79821F48298664A9BBC6A5804Fciscocom_--
