Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9C2CE007E8; Tue,  8 Nov 2016 04:43:38 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B242E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 04:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=7412; q=dns/txt; s=iport;
	t=1478609016; x=1479818616;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:mime-version;
	bh=kzpHeOtzIGEfhl41IS0r72+z53rxptr0TWsABcWDvg4=;
	b=c7BjvdYrTdIrdKWgavGtu5sFvmeQsLsxACBtLw/gDw8EbwiUA/ZDCsBJ
	NMjWnFBY2J9QgXUO0pq8lgALCMGDejTQJPhgMeb+2uKv+jyR4FjP4IZVB
	46OxfiuVWd6cS1plGXW82btf8Gu8anaZ3RDo4mEjfr1eq5tlRrVYnfMg/ Q=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BtAQBMxyFY/49dJa1dGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgnM8AQEBAQEfWH8HjTKXBI85hRqCCCGGAwIagXs/FAECAQEBAQEBAWI?=
	=?us-ascii?q?ohGEBAQEDASNWEAIBCBEDAQIoAwICAjAUCAEIAgQOBYhUCLIAgkCLSgEBAQEBA?=
	=?us-ascii?q?QEBAQEBAQEBAQEBAQEBARyGPoF9glqEaB6CRi2CLwWaLwGGNYoSgW5OhCSJNI0?=
	=?us-ascii?q?whAUBHjd6hSpyhi6BDAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,462,1473120000"; 
	d="scan'208,217";a="167028281"
Received: from rcdn-core-7.cisco.com ([173.37.93.143])
	by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Nov 2016 12:43:35 +0000
Received: from XCH-RTP-001.cisco.com (xch-rtp-001.cisco.com [64.101.220.141])
	by rcdn-core-7.cisco.com (8.14.5/8.14.5) with ESMTP id uA8ChZU6008148
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 8 Nov 2016 12:43:35 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-001.cisco.com
	(64.101.220.141) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Tue, 8 Nov 2016 07:43:34 -0500
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Tue, 8 Nov 2016 07:43:34 -0500
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] FW: cmake version 3.0.0 or greater
Thread-Index: AQHSOacLotCC4u2UnUqqAQ2YxxYD1qDO0JSAgACI9wD//3y2AA==
Date: Tue, 8 Nov 2016 12:43:34 +0000
Message-ID: <D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>
References: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
	<CAJTo0LYtibhhgeSAC27yHzNL8hYu6HpBzKZDvB+k4nv26V+FKw@mail.gmail.com>
	<9C7FDD6C-4BD2-449B-96A1-6540B53D23A8@cisco.com>
	<CAJTo0LYXd=9bDWk_TB_ioZ96GY2gt31AxHR4w47sPdwPSo7VEA@mail.gmail.com>
In-Reply-To: <CAJTo0LYXd=9bDWk_TB_ioZ96GY2gt31AxHR4w47sPdwPSo7VEA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.4.69]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: cmake version 3.0.0 or greater
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
X-List-Received-Date: Tue, 08 Nov 2016 12:43:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D01FE3D2B0DF413EBED4DD4CE1AE1E11ciscocom_"

--_000_D01FE3D2B0DF413EBED4DD4CE1AE1E11ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+PiBUaGlzIHRlbGxzIG1lIHRoYXQgeW91IGRpZG4ndCB1cGdyYWRlIGNtYWtlLW5hdGl2ZSB0
byAzLnguDQoNClJpZ2h0LCBhbmQgSSBhbSB0cnlpbmcgdG8gdXBncmFkZSB0byAzeCB2ZXJzaW9u
LiAgV291bGQgeW91IHBsZWFzZSB0ZWxsIG1lIHdoaWNoIGNtYWtlIHBhdGNoIG9yIHJlY2lwZSAg
dGhhdCBJIGNhbiB1c2UgdG8gdXBncmFkZSB0byAzLnggdmVyc2lvbiBmb3IgRGl6enk/DQoNClRo
YW5rcywNCiAg4oCURGluaA0KDQpGcm9tOiAiQnVydG9uLCBSb3NzIiA8cm9zcy5idXJ0b25AaW50
ZWwuY29tPG1haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb20+Pg0KRGF0ZTogVHVlc2RheSwgTm92
ZW1iZXIgOCwgMjAxNiBhdCA0OjM0IEFNDQpUbzogZGluaG4gPGRpbmhuQGNpc2NvLmNvbTxtYWls
dG86ZGluaG5AY2lzY28uY29tPj4NCkNjOiAieW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxtYWlsdG86
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4iIDx5b2N0b0B5b2N0b3Byb2plY3Qub3JnPG1haWx0bzp5
b2N0b0B5b2N0b3Byb2plY3Qub3JnPj4NClN1YmplY3Q6IFJlOiBbeW9jdG9dIEZXOiBjbWFrZSB2
ZXJzaW9uIDMuMC4wIG9yIGdyZWF0ZXINCg0KDQpPbiA4IE5vdmVtYmVyIDIwMTYgYXQgMTI6MjMs
IERpbmggTmd1eWVuIChkaW5obikgPGRpbmhuQGNpc2NvLmNvbTxtYWlsdG86ZGluaG5AY2lzY28u
Y29tPj4gd3JvdGU6DQpIZXJlIGlzIHRoZSBlcnJvciBtZXNzYWdlIHdoZW4gdHJ5aW5nIHRvIGJ1
aWxkIHNkay1kc2xpbmstYyB3aXRoaW4gWW9jdG8gIERpenp5IHZlcnNpb24uDQoNCnwgKyBlY2hv
IC9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXA2NC90bXAv
d29yay9jb3JlMi02NC1wb2t5LWxpbnV4L3Nkay1kc2xpbmstYy8xLjEtcjANCnwgKyAvbWVkaWEv
cmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRlc3QvaW94c2RrL3lwNjQvdG1wL3dvcmsvY29y
ZTItNjQtcG9reS1saW51eC9zZGstZHNsaW5rLWMvMS4xLXIwL3Nkay1kc2xpbmstYy05MzlmYjE1
Yzk3Njg4Mjc2YjEyMzRhMGUwMDkyZTYxZmRiZTY1YzAzL3Rvb2xzL2J1aWxkLnNoDQp8IENNYWtl
IEVycm9yIGF0IENNYWtlTGlzdHMudHh0OjEgKGNtYWtlX21pbmltdW1fcmVxdWlyZWQpOg0KfCAg
IENNYWtlIDMuMC4wIG9yIGhpZ2hlciBpcyByZXF1aXJlZC4gIFlvdSBhcmUgcnVubmluZyB2ZXJz
aW9uIDIuOC4xMi4yDQp8DQoNClRoaXMgdGVsbHMgbWUgdGhhdCB5b3UgZGlkbid0IHVwZ3JhZGUg
Y21ha2UtbmF0aXZlIHRvIDMueC4NCg0KUm9zcw0K

--_000_D01FE3D2B0DF413EBED4DD4CE1AE1E11ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <A13B3CAB98EFD04EBBE62E0AD16ACECF@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj4NCjxkaXYgc3R5
bGU9ImNvbG9yOiByZ2IoMCwgMCwgMCk7IGZvbnQtZmFtaWx5OiBDYWxpYnJpLCBzYW5zLXNlcmlm
OyBmb250LXNpemU6IDE0cHg7Ij4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJn
YigwLCAwLCAwKTsgZm9udC1mYW1pbHk6IENhbGlicmksIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTog
MTRweDsiPg0KPHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpOyBmb250LXNpemU6IG1l
ZGl1bTsiPiZndDsmZ3Q7IFRoaXMgdGVsbHMgbWUgdGhhdCB5b3UgZGlkbid0IHVwZ3JhZGUgY21h
a2UtbmF0aXZlIHRvIDMueC48L3NwYW4+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAs
IDAsIDApOyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4
OyI+DQo8c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmk7IGZvbnQtc2l6ZTogbWVkaXVt
OyI+PGJyPg0KPC9zcGFuPjwvZGl2Pg0KPGRpdj5SaWdodCwgYW5kJm5ic3A7SSBhbSB0cnlpbmcg
dG8gdXBncmFkZSB0byAzeCB2ZXJzaW9uLiAmbmJzcDtXb3VsZCB5b3UgcGxlYXNlIHRlbGwgbWUg
d2hpY2ggY21ha2UgcGF0Y2ggb3IgcmVjaXBlICZuYnNwO3RoYXQgSSBjYW4gdXNlIHRvIHVwZ3Jh
ZGUgdG8gMy54IHZlcnNpb24gZm9yIERpenp5PzwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxk
aXY+VGhhbmtzLDwvZGl2Pg0KPGRpdj4mbmJzcDsg4oCURGluaCZuYnNwOzwvZGl2Pg0KPGRpdiBz
dHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1mYW1pbHk6IENhbGlicmksIHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZTogMTRweDsiPg0KPGRpdiBpZD0iTUFDX09VVExPT0tfU0lHTkFUVVJFIj48
L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyBm
b250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+DQo8YnI+
DQo8L2Rpdj4NCjxzcGFuIGlkPSJPTEtfU1JDX0JPRFlfU0VDVElPTiIgc3R5bGU9ImNvbG9yOiBy
Z2IoMCwgMCwgMCk7IGZvbnQtZmFtaWx5OiBDYWxpYnJpLCBzYW5zLXNlcmlmOyBmb250LXNpemU6
IDE0cHg7Ij4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmk7IGZvbnQtc2l6ZToxMnB0
OyB0ZXh0LWFsaWduOmxlZnQ7IGNvbG9yOmJsYWNrOyBCT1JERVItQk9UVE9NOiBtZWRpdW0gbm9u
ZTsgQk9SREVSLUxFRlQ6IG1lZGl1bSBub25lOyBQQURESU5HLUJPVFRPTTogMGluOyBQQURESU5H
LUxFRlQ6IDBpbjsgUEFERElORy1SSUdIVDogMGluOyBCT1JERVItVE9QOiAjYjVjNGRmIDFwdCBz
b2xpZDsgQk9SREVSLVJJR0hUOiBtZWRpdW0gbm9uZTsgUEFERElORy1UT1A6IDNwdCI+DQo8c3Bh
biBzdHlsZT0iZm9udC13ZWlnaHQ6Ym9sZCI+RnJvbTogPC9zcGFuPiZxdW90O0J1cnRvbiwgUm9z
cyZxdW90OyAmbHQ7PGEgaHJlZj0ibWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbSI+cm9zcy5i
dXJ0b25AaW50ZWwuY29tPC9hPiZndDs8YnI+DQo8c3BhbiBzdHlsZT0iZm9udC13ZWlnaHQ6Ym9s
ZCI+RGF0ZTogPC9zcGFuPlR1ZXNkYXksIE5vdmVtYmVyIDgsIDIwMTYgYXQgNDozNCBBTTxicj4N
CjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDpib2xkIj5UbzogPC9zcGFuPmRpbmhuICZsdDs8YSBo
cmVmPSJtYWlsdG86ZGluaG5AY2lzY28uY29tIj5kaW5obkBjaXNjby5jb208L2E+Jmd0Ozxicj4N
CjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDpib2xkIj5DYzogPC9zcGFuPiZxdW90OzxhIGhyZWY9
Im1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9h
PiZxdW90OyAmbHQ7PGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmciPnlvY3Rv
QHlvY3RvcHJvamVjdC5vcmc8L2E+Jmd0Ozxicj4NCjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDpi
b2xkIj5TdWJqZWN0OiA8L3NwYW4+UmU6IFt5b2N0b10gRlc6IGNtYWtlIHZlcnNpb24gMy4wLjAg
b3IgZ3JlYXRlcjxicj4NCjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxzcGFuIHN0eWxlPSJt
c28tYm9va21hcms6X01haWxPcmlnaW5hbEJvZHkiPg0KPGRpdj4NCjxkaXY+DQo8ZGl2IGRpcj0i
bHRyIj4NCjxkaXYgY2xhc3M9ImdtYWlsX2V4dHJhIj48YnI+DQo8ZGl2IGNsYXNzPSJnbWFpbF9x
dW90ZSI+T24gOCBOb3ZlbWJlciAyMDE2IGF0IDEyOjIzLCBEaW5oIE5ndXllbiAoZGluaG4pIDxz
cGFuIGRpcj0ibHRyIj4NCiZsdDs8YSBocmVmPSJtYWlsdG86ZGluaG5AY2lzY28uY29tIiB0YXJn
ZXQ9Il9ibGFuayI+ZGluaG5AY2lzY28uY29tPC9hPiZndDs8L3NwYW4+IHdyb3RlOjxicj4NCjxi
bG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4O2Jv
cmRlci1sZWZ0OjFweCAjY2NjIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPGRpdj4NCjxkaXY+
DQo8ZGl2Pjxmb250IGNvbG9yPSIjMDAwMGZmIj5IZXJlIGlzIHRoZSBlcnJvciBtZXNzYWdlIHdo
ZW4gdHJ5aW5nIHRvIGJ1aWxkIHNkay1kc2xpbmstYyB3aXRoaW4gWW9jdG8gJm5ic3A7RGl6enkg
dmVyc2lvbi48L2ZvbnQ+PC9kaXY+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOnJnYigwLDAs
MCkiPjxicj4NCjwvZGl2Pg0KPC9kaXY+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6cmdiKDAs
MCwwKSI+fCAmIzQzOyBlY2hvIC9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuLzx3YnI+aW94RGV2
TGF0ZXN0L2lveHNkay95cDY0L3RtcC88d2JyPndvcmsvY29yZTItNjQtcG9reS1saW51eC9zZGst
PHdicj5kc2xpbmstYy8xLjEtcjA8L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOnJnYigwLDAsMCki
PnwgJiM0MzsgL21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vPHdicj5pb3hEZXZMYXRlc3QvaW94
c2RrL3lwNjQvdG1wLzx3YnI+d29yay9jb3JlMi02NC1wb2t5LWxpbnV4L3Nkay08d2JyPmRzbGlu
ay1jLzEuMS1yMC9zZGstZHNsaW5rLWMtPHdicj45MzlmYjE1Yzk3Njg4Mjc2YjEyMzRhMGUwMDky
ZTY8d2JyPjFmZGJlNjVjMDMvdG9vbHMvYnVpbGQuc2g8L2Rpdj4NCjxkaXY+PGZvbnQgY29sb3I9
IiNmZjAwMDAiPnwgQ01ha2UgRXJyb3IgYXQgQ01ha2VMaXN0cy50eHQ6MSAoY21ha2VfbWluaW11
bV9yZXF1aXJlZCk6PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBjb2xvcj0iI2ZmMDAwMCI+fCAm
bmJzcDsgQ01ha2UgMy4wLjAgb3IgaGlnaGVyIGlzIHJlcXVpcmVkLiZuYnNwOyBZb3UgYXJlIHJ1
bm5pbmcgdmVyc2lvbiAyLjguMTIuMjwvZm9udD48L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOnJn
YigwLDAsMCkiPnwmbmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8
YnI+DQpUaGlzIHRlbGxzIG1lIHRoYXQgeW91IGRpZG4ndCB1cGdyYWRlIGNtYWtlLW5hdGl2ZSB0
byAzLnguPC9kaXY+DQo8ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+PGJyPg0KPC9kaXY+DQo8ZGl2
IGNsYXNzPSJnbWFpbF9leHRyYSI+Um9zczwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0K
PC9zcGFuPjwvc3Bhbj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_D01FE3D2B0DF413EBED4DD4CE1AE1E11ciscocom_--
