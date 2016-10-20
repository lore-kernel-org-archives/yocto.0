Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 531F2E00C20; Thu, 20 Oct 2016 14:58:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.79 listed in list.dnswl.org]
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
Received: from rcdn-iport-8.cisco.com (rcdn-iport-8.cisco.com [173.37.86.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7096E00BB0
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 14:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=5618; q=dns/txt; s=iport;
	t=1477000729; x=1478210329;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:mime-version;
	bh=61sJQ6aKMlwF2s96H2kKdpHwJLxdMGxE7b4rIxO9mcE=;
	b=Th9YRqijF8mghhQkI7KvzIvqOikHpRLvArDyPMV48/ZljmnflVtENGOR
	CUYxX04mzRgf97fSTr1EG9g2B42arp8UXZGLs77HjW/WhyKMopKZm3jAt
	WhIAxEqXsR+wRNCqaGIissLQT8qcbeGJRRtCTYlyZf72pB4BzCq2lvD6O U=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CpAQDIPQlY/5xdJa1cGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgwg2AQEBAQEdV30HjS2WfI8ogwaCD4IIH4YCAhqBZD8UAQIBAQEBAQE?=
	=?us-ascii?q?BYiiEYgEBAQQjKAEtEAIBCAQNAwECKAMCAgIwFAkIAgQOBYhStmqFTwGHKQEBA?=
	=?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARyGPYF9CIJQgTwBgyoegkYsgi8FiDmHSIoNAYY?=
	=?us-ascii?q?piWMKj3FJjDaDfwEeNliDFoFicgGIGIEAAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,521,1473120000"; 
	d="scan'208,217";a="160238212"
Received: from rcdn-core-5.cisco.com ([173.37.93.156])
	by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Oct 2016 21:58:48 +0000
Received: from XCH-RTP-016.cisco.com (xch-rtp-016.cisco.com [64.101.220.156])
	by rcdn-core-5.cisco.com (8.14.5/8.14.5) with ESMTP id u9KLwmkj001890
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Oct 2016 21:58:48 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-016.cisco.com
	(64.101.220.156) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Thu, 20 Oct 2016 17:58:47 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Thu, 20 Oct 2016 17:58:47 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] ppc-fixplt.patch - ERROR: Function failed patch_do_path()
Thread-Index: AQHSKwGADWuUpN1GVEa/ds+KUu9OW6CyC0SA//+m64A=
Date: Thu, 20 Oct 2016 21:58:47 +0000
Message-ID: <EFB2922E-6938-4E23-AF64-9387BEC58384@cisco.com>
References: <C69CC27A-49C3-4FBF-8584-D78C113DB666@cisco.com>
	<CAJTo0La9OrGx2r7OmU2F2kivF+rizB8mL5rJsX4LWWft7R=99Q@mail.gmail.com>
In-Reply-To: <CAJTo0La9OrGx2r7OmU2F2kivF+rizB8mL5rJsX4LWWft7R=99Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.56.30]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Srinivas Yedla
	\(sryedla\)" <sryedla@cisco.com>
Subject: Re: ppc-fixplt.patch - ERROR: Function failed patch_do_path()
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
X-List-Received-Date: Thu, 20 Oct 2016 21:58:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EFB2922E69384E23AF649387BEC58384ciscocom_"

--_000_EFB2922E69384E23AF649387BEC58384ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91LiAgSXQgd29ya3MgYWZ0ZXIgcmVtb3ZpbmcgdGhlIGFwcGVuZCBpbiB0aGUgbWV0
YS1mc2wtcHBjKg0KDQpCZXN0LA0KICDigJREaW5oDQoNCkZyb206ICJCdXJ0b24sIFJvc3MiIDxy
b3NzLmJ1cnRvbkBpbnRlbC5jb208bWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbT4+DQpEYXRl
OiBUaHVyc2RheSwgT2N0b2JlciAyMCwgMjAxNiBhdCAxOjE4IFBNDQpUbzogZGluaG4gPGRpbmhu
QGNpc2NvLmNvbTxtYWlsdG86ZGluaG5AY2lzY28uY29tPj4NCkNjOiAieW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZzxtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4iIDx5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnPG1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPj4sICJTcmluaXZhcyBZZWRsYSAo
c3J5ZWRsYSkiIDxzcnllZGxhQGNpc2NvLmNvbTxtYWlsdG86c3J5ZWRsYUBjaXNjby5jb20+Pg0K
U3ViamVjdDogUmU6IFt5b2N0b10gcHBjLWZpeHBsdC5wYXRjaCAtIEVSUk9SOiBGdW5jdGlvbiBm
YWlsZWQgcGF0Y2hfZG9fcGF0aCgpDQoNCg0KT24gMjAgT2N0b2JlciAyMDE2IGF0IDE5OjQxLCBE
aW5oIE5ndXllbiAoZGluaG4pIDxkaW5obkBjaXNjby5jb208bWFpbHRvOmRpbmhuQGNpc2NvLmNv
bT4+IHdyb3RlOg0KSSBhbSB0cnlpbmcgdG8gYnVpbGQgdGhlIGx1YWppdF8yLjAuMy5iYjxodHRw
Oi8vbHVhaml0XzIuMC4zLmJiPiByZWNpcGUgb24gb3VyIFlvY3RvLTEuNyBiYXNlLg0KSXQgZmFp
bGVkIHRvIHBhdGggdGhlIHBwYy1maXhwbHQucGF0Y2guIEhlcnMgaXMgbXkgYnVpbGQgY29uZmln
dXJhdGlvbi4NCg0KTG9va2luZyBiYWNrIGluIGhpc3RvcnkgaXQncyBwb3NzaWJsZSB0aGF0IGJv
dGggeW91ciBCU1AgYW5kIG1ldGEtb2UgYXJlIGJvdGggYXR0ZW1wdGluZyB0byBhcHBseSB0aGUg
c2FtZSBwYXRjaCwgc28gY2hlY2sgdGhhdCB5b3VyIEJTUCBsYXllciAobWV0YS1mc2wtcHBjLSop
IGlzbid0IGJiYXBwZW5kaW5nIGl0IGF0IHRoZSBzYW1lIHRpbWUgYXMgbWV0YS1vZSBhbHNvIHNo
aXBwaW5nIHRoZSBzYW1lIHBhdGNoLg0KDQpSb3NzDQo=

--_000_EFB2922E69384E23AF649387BEC58384ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <85624CD87B4CED4ABD74F8E7D0774947@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj4NCjxkaXY+DQo8
ZGl2PlRoYW5rIHlvdS4gJm5ic3A7SXQgd29ya3MgYWZ0ZXIgcmVtb3ZpbmcgdGhlIGFwcGVuZCBp
biB0aGUgbWV0YS1mc2wtcHBjKjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+QmVzdCw8
L2Rpdj4NCjxkaXY+Jm5ic3A7IOKAlERpbmgmbmJzcDs8L2Rpdj4NCjxkaXY+DQo8ZGl2IGlkPSJN
QUNfT1VUTE9PS19TSUdOQVRVUkUiPjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPGRp
dj48YnI+DQo8L2Rpdj4NCjxzcGFuIGlkPSJPTEtfU1JDX0JPRFlfU0VDVElPTiI+DQo8ZGl2IHN0
eWxlPSJmb250LWZhbWlseTpDYWxpYnJpOyBmb250LXNpemU6MTJwdDsgdGV4dC1hbGlnbjpsZWZ0
OyBjb2xvcjpibGFjazsgQk9SREVSLUJPVFRPTTogbWVkaXVtIG5vbmU7IEJPUkRFUi1MRUZUOiBt
ZWRpdW0gbm9uZTsgUEFERElORy1CT1RUT006IDBpbjsgUEFERElORy1MRUZUOiAwaW47IFBBRERJ
TkctUklHSFQ6IDBpbjsgQk9SREVSLVRPUDogI2I1YzRkZiAxcHQgc29saWQ7IEJPUkRFUi1SSUdI
VDogbWVkaXVtIG5vbmU7IFBBRERJTkctVE9QOiAzcHQiPg0KPHNwYW4gc3R5bGU9ImZvbnQtd2Vp
Z2h0OmJvbGQiPkZyb206IDwvc3Bhbj4mcXVvdDtCdXJ0b24sIFJvc3MmcXVvdDsgJmx0OzxhIGhy
ZWY9Im1haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb20iPnJvc3MuYnVydG9uQGludGVsLmNvbTwv
YT4mZ3Q7PGJyPg0KPHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OmJvbGQiPkRhdGU6IDwvc3Bhbj5U
aHVyc2RheSwgT2N0b2JlciAyMCwgMjAxNiBhdCAxOjE4IFBNPGJyPg0KPHNwYW4gc3R5bGU9ImZv
bnQtd2VpZ2h0OmJvbGQiPlRvOiA8L3NwYW4+ZGluaG4gJmx0OzxhIGhyZWY9Im1haWx0bzpkaW5o
bkBjaXNjby5jb20iPmRpbmhuQGNpc2NvLmNvbTwvYT4mZ3Q7PGJyPg0KPHNwYW4gc3R5bGU9ImZv
bnQtd2VpZ2h0OmJvbGQiPkNjOiA8L3NwYW4+JnF1b3Q7PGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlv
Y3RvcHJvamVjdC5vcmciPnlvY3RvQHlvY3RvcHJvamVjdC5vcmc8L2E+JnF1b3Q7ICZsdDs8YSBo
cmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9y
ZzwvYT4mZ3Q7LCAmcXVvdDtTcmluaXZhcyBZZWRsYSAoc3J5ZWRsYSkmcXVvdDsgJmx0OzxhIGhy
ZWY9Im1haWx0bzpzcnllZGxhQGNpc2NvLmNvbSI+c3J5ZWRsYUBjaXNjby5jb208L2E+Jmd0Ozxi
cj4NCjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDpib2xkIj5TdWJqZWN0OiA8L3NwYW4+UmU6IFt5
b2N0b10gcHBjLWZpeHBsdC5wYXRjaCAtIEVSUk9SOiBGdW5jdGlvbiBmYWlsZWQgcGF0Y2hfZG9f
cGF0aCgpPGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPHNwYW4gc3R5bGU9Im1zby1i
b29rbWFyazpfTWFpbE9yaWdpbmFsQm9keSI+DQo8ZGl2Pg0KPGRpdj4NCjxkaXYgZGlyPSJsdHIi
Pg0KPGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxicj4NCjxkaXYgY2xhc3M9ImdtYWlsX3F1b3Rl
Ij5PbiAyMCBPY3RvYmVyIDIwMTYgYXQgMTk6NDEsIERpbmggTmd1eWVuIChkaW5obikgPHNwYW4g
ZGlyPSJsdHIiPg0KJmx0OzxhIGhyZWY9Im1haWx0bzpkaW5obkBjaXNjby5jb20iIHRhcmdldD0i
X2JsYW5rIj5kaW5obkBjaXNjby5jb208L2E+Jmd0Ozwvc3Bhbj4gd3JvdGU6PGJyPg0KPGJsb2Nr
cXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7Ym9yZGVy
LWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+DQo8ZGl2IHN0eWxlPSJjb2xv
cjpyZ2IoMCwwLDApIj5JIGFtIHRyeWluZyB0byBidWlsZCB0aGUgPGEgaHJlZj0iaHR0cDovL2x1
YWppdF8yLjAuMy5iYiIgdGFyZ2V0PSJfYmxhbmsiPg0KbHVhaml0XzIuMC4zLmJiPC9hPiByZWNp
cGUgb24gb3VyIFlvY3RvLTEuNyBiYXNlLiZuYnNwOzwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6
cmdiKDAsMCwwKSI+SXQgZmFpbGVkIHRvIHBhdGggdGhlIHBwYy1maXhwbHQucGF0Y2guIEhlcnMg
aXMgbXkgYnVpbGQgY29uZmlndXJhdGlvbi4mbmJzcDs8L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9y
OnJnYigwLDAsMCkiPjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8YnI+DQpMb29raW5n
IGJhY2sgaW4gaGlzdG9yeSBpdCdzIHBvc3NpYmxlIHRoYXQgYm90aCB5b3VyIEJTUCBhbmQgbWV0
YS1vZSBhcmUgYm90aCBhdHRlbXB0aW5nIHRvIGFwcGx5IHRoZSBzYW1lIHBhdGNoLCBzbyBjaGVj
ayB0aGF0IHlvdXIgQlNQIGxheWVyIChtZXRhLWZzbC1wcGMtKikgaXNuJ3QgYmJhcHBlbmRpbmcg
aXQgYXQgdGhlIHNhbWUgdGltZSBhcyBtZXRhLW9lIGFsc28gc2hpcHBpbmcgdGhlIHNhbWUgcGF0
Y2guPC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+PGJyPg0KPC9kaXY+DQo8ZGl2IGNs
YXNzPSJnbWFpbF9leHRyYSI+Um9zczwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9z
cGFuPjwvc3Bhbj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_EFB2922E69384E23AF649387BEC58384ciscocom_--
