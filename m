Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF02DE00C60; Wed,  2 Nov 2016 06:37:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.93 listed in list.dnswl.org]
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
Received: from alln-iport-6.cisco.com (alln-iport-6.cisco.com [173.37.142.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD4B2E00BF8
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 06:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=8008; q=dns/txt; s=iport;
	t=1478093829; x=1479303429;
	h=from:to:subject:date:message-id:references:in-reply-to:
	mime-version; bh=vBMLHt2UgmVfDGkL8GJzTttwOa2JNfQAHXyhdkVRpxY=;
	b=avKpqIPmlkVYc3OfV5eY/i6wHt//VDkdqdPHqJ5uUoRkWp1lv3/K70P8
	NrRxzMg2pCpB5SKB1SX9WP+vX6GAR6VYpgDC1J5w12xzbwbjVBBhUPJ3g
	lw6H6a6N93kEl7OvAhl1hYmbMLzNIv1lLtxPmNxQVxD/z/Zt/LvDQc8uK o=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0B0AQDZ6xlY/4YNJK1dGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgnM5AQEBAQEfgVQHjTCXAY8wVYRCggeGIgIaggU/FAECAQEBAQEBAWI?=
	=?us-ascii?q?dC4RhAQEBBCNmAgEIEQMBAigDAgICMBQJCAIEE4hWrRGNBAEBAQEBAQEBAQEBA?=
	=?us-ascii?q?QEBAQEBAQEBARyGPYF9gliEZ4JkLYIvBYhCh0uEMoVeAYk8BYZ4kAlJjE+EAwE?=
	=?us-ascii?q?eNmeFF3KHUIEMAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,583,1473120000"; 
	d="scan'208,217";a="343313819"
Received: from alln-core-12.cisco.com ([173.36.13.134])
	by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	02 Nov 2016 13:36:47 +0000
Received: from XCH-RTP-004.cisco.com (xch-rtp-004.cisco.com [64.101.220.144])
	by alln-core-12.cisco.com (8.14.5/8.14.5) with ESMTP id
	uA2DakSK002279
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 2 Nov 2016 13:36:47 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-004.cisco.com
	(64.101.220.144) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 2 Nov 2016 09:36:46 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 2 Nov 2016 09:36:46 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: LXC container: opkg_install_cmd: Cannot install package cmocka
Thread-Index: AQHSNQvh7eWovFu9zEWEHeh86tz10aDFgEcA
Date: Wed, 2 Nov 2016 13:36:46 +0000
Message-ID: <DE353432-B6A9-42FF-ADD8-4FE18278AF11@cisco.com>
References: <AB4C7B81-F381-4728-876F-3B2A244F771E@cisco.com>
In-Reply-To: <AB4C7B81-F381-4728-876F-3B2A244F771E@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.4.243]
MIME-Version: 1.0
Subject: Re: LXC container: opkg_install_cmd: Cannot install package cmocka
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
X-List-Received-Date: Wed, 02 Nov 2016 13:37:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DE353432B6A942FFADD84FE18278AF11ciscocom_"

--_000_DE353432B6A942FFADD84FE18278AF11ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIOKAlCBHb3QgaXQuDQoNCuKAlERpbmgNCg0KRnJvbTogZGluaG4gPGRpbmhuQGNpc2Nv
LmNvbTxtYWlsdG86ZGluaG5AY2lzY28uY29tPj4NCkRhdGU6IFdlZG5lc2RheSwgTm92ZW1iZXIg
MiwgMjAxNiBhdCA2OjIwIEFNDQpUbzogInlvY3RvQHlvY3RvcHJvamVjdC5vcmc8bWFpbHRvOnlv
Y3RvQHlvY3RvcHJvamVjdC5vcmc+IiA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxtYWlsdG86eW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZz4+DQpDYzogZGluaG4gPGRpbmhuQGNpc2NvLmNvbTxtYWlsdG86
ZGluaG5AY2lzY28uY29tPj4NClN1YmplY3Q6IExYQyBjb250YWluZXI6IG9wa2dfaW5zdGFsbF9j
bWQ6IENhbm5vdCBpbnN0YWxsIHBhY2thZ2UgY21vY2thDQoNCg0KRm9sa3MsDQoNCkkgYW0gdHJ5
aW5nIHRvIGJyaW5nIHRoZSBjbW9ja2EgcmVjaXBlIG91ciBJT1ggU0RLIFlvY3RvLiBDbW9ja2Eg
aXMgYSBmb3JrIGZvciBHb29nbGVzIGNtb2NrZXJ5IHVuaXQgdGVzdGluZyBmcmFtZXdvcmsgdG8g
Zml4IGJ1Z3MuDQoNCkkgYW0gYWJsZSB0byBjb21waWxlIGFuZCBidWlsZCBJUEsgcGFja2FnZXMg
Zm9yIGNtb2NrYSB3aXRob3V0IGFueSBpc3N1ZS4NCkJ1dCBkdXJpbmcgY3JlYXRpbmcgdGhlIExY
QyBjb250YWluZXIgd2hpY2ggaW5jbHVkaW5nIHRoZSBjbW9ja2EsICBvcGtnX2luc3RhbGxfY21k
IGNhbiBpbnN0YWxsIGFuZCBjb25maWd1cmUgb3RoZXIgcmVjaXBlcyAgYnV0IGNhbuKAmXQgaW5z
dGFsbCBwYWNrYWdlIGNtb2NrYSBhcyBzaG93biBiZWxvdyBpbiB0aGUg4oCccmVk4oCdDQoNClRo
ZXJlIGlzIG5vIGRldGFpbHMgaW5mbyBvbiB3aHkgaXQgY2Fu4oCZdCBpbnN0YWxsIHRoZSBwYWNr
YWdlIG9yIHdoYXQgaXMgdGhlIHByb2JsZW0uIEhhdmUgYW55b25lIGVuY291bnRlcmVkIHRoaXMg
aXNzdWUgYW5kIGhvdyB0byBzb2x2ZSBpdD8gTWFueSB0aGFua3MgaW4gYWR2YW5jZS4NCuKApg0K
Q29uZmlndXJpbmcgbGlibW9kYnVzNS4NCkNvbmZpZ3VyaW5nIGluaXRzY3JpcHRzLg0KQ29uZmln
dXJpbmcgbGliYm9vc3QtZ3JhcGgxLjU2LjAuDQpDb25maWd1cmluZyBib29zdC1zZXJpYWxpemF0
aW9uLg0KQ29uZmlndXJpbmcgbGliYm9vc3QtcHJvZ3JhbS1vcHRpb25zMS41Ni4wLg0KQ29uZmln
dXJpbmcgb3BrZy1jb2xsYXRlcmFsLg0KQ29uZmlndXJpbmcgYm9vc3QtdGVzdC4NCkNvbmZpZ3Vy
aW5nIGxpYnpsb2cxLjIuDQpDb25maWd1cmluZyBwb2t5LWZlZWQtY29uZmlnLW9wa2cuDQpDb25m
aWd1cmluZyBsaWJib29zdC1maWxlc3lzdGVtMS41Ni4wLg0KQ29uZmlndXJpbmcgYmFzZS1wYXNz
d2QuDQpDb25maWd1cmluZyBwYWNrYWdlZ3JvdXAtY29yZS1ib290Lg0KQ29uZmlndXJpbmcgbGli
Ym9vc3Qtc2lnbmFsczEuNTYuMC4NCkNvbmZpZ3VyaW5nIGxpYnoxLg0KQ29uZmlndXJpbmcgbGli
Ym9vc3QtaW9zdHJlYW1zMS41Ni4wLg0KQ29uZmlndXJpbmcgYm9vc3QuDQpDb25maWd1cmluZyBs
aWJqYW5zc29uNC4NCkNvbmZpZ3VyaW5nIGxpYnV2MS4NCkNvbGxlY3RlZCBlcnJvcnM6DQogKiBv
cGtnX2luc3RhbGxfY21kOiBDYW5ub3QgaW5zdGFsbCBwYWNrYWdlIGNtb2NrYS4NCg0KREVCVUc6
IFB5dGhvbiBmdW5jdGlvbiBkb19yb290ZnMgZmluaXNoZWQNCkVSUk9SOiBGdW5jdGlvbiBmYWls
ZWQ6IGRvX3Jvb3Rmcw0KDQpCZXN0LA0KICDigJREaW5oDQo=

--_000_DE353432B6A942FFADD84FE18278AF11ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <BAB14A874CE9E640980ECD7BBFCA7529@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj4NCjxkaXY+DQo8
ZGl2PlRoYW5rcyDigJQgR290IGl0LjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+4oCU
RGluaDwvZGl2Pg0KPGRpdj4NCjxkaXYgaWQ9Ik1BQ19PVVRMT09LX1NJR05BVFVSRSI+PC9kaXY+
DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPHNwYW4gaWQ9Ik9M
S19TUkNfQk9EWV9TRUNUSU9OIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmk7IGZv
bnQtc2l6ZToxMnB0OyB0ZXh0LWFsaWduOmxlZnQ7IGNvbG9yOmJsYWNrOyBCT1JERVItQk9UVE9N
OiBtZWRpdW0gbm9uZTsgQk9SREVSLUxFRlQ6IG1lZGl1bSBub25lOyBQQURESU5HLUJPVFRPTTog
MGluOyBQQURESU5HLUxFRlQ6IDBpbjsgUEFERElORy1SSUdIVDogMGluOyBCT1JERVItVE9QOiAj
YjVjNGRmIDFwdCBzb2xpZDsgQk9SREVSLVJJR0hUOiBtZWRpdW0gbm9uZTsgUEFERElORy1UT1A6
IDNwdCI+DQo8c3BhbiBzdHlsZT0iZm9udC13ZWlnaHQ6Ym9sZCI+RnJvbTogPC9zcGFuPmRpbmhu
ICZsdDs8YSBocmVmPSJtYWlsdG86ZGluaG5AY2lzY28uY29tIj5kaW5obkBjaXNjby5jb208L2E+
Jmd0Ozxicj4NCjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDpib2xkIj5EYXRlOiA8L3NwYW4+V2Vk
bmVzZGF5LCBOb3ZlbWJlciAyLCAyMDE2IGF0IDY6MjAgQU08YnI+DQo8c3BhbiBzdHlsZT0iZm9u
dC13ZWlnaHQ6Ym9sZCI+VG86IDwvc3Bhbj4mcXVvdDs8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4mcXVvdDsgJmx0OzxhIGhy
ZWY9Im1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIj55b2N0b0B5b2N0b3Byb2plY3Qub3Jn
PC9hPiZndDs8YnI+DQo8c3BhbiBzdHlsZT0iZm9udC13ZWlnaHQ6Ym9sZCI+Q2M6IDwvc3Bhbj5k
aW5obiAmbHQ7PGEgaHJlZj0ibWFpbHRvOmRpbmhuQGNpc2NvLmNvbSI+ZGluaG5AY2lzY28uY29t
PC9hPiZndDs8YnI+DQo8c3BhbiBzdHlsZT0iZm9udC13ZWlnaHQ6Ym9sZCI+U3ViamVjdDogPC9z
cGFuPkxYQyBjb250YWluZXI6IG9wa2dfaW5zdGFsbF9jbWQ6IENhbm5vdCBpbnN0YWxsIHBhY2th
Z2UgY21vY2thPGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPHNwYW4gc3R5bGU9Im1z
by1ib29rbWFyazpfTWFpbE9yaWdpbmFsQm9keSI+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0id29yZC13
cmFwOiBicmVhay13b3JkOyAtd2Via2l0LW5ic3AtbW9kZTogc3BhY2U7IC13ZWJraXQtbGluZS1i
cmVhazogYWZ0ZXItd2hpdGUtc3BhY2U7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGZvbnQtc2l6ZTog
MTRweDsgZm9udC1mYW1pbHk6IENhbGlicmksIHNhbnMtc2VyaWY7Ij4NCjxkaXY+DQo8ZGl2Pg0K
PGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2PkZvbGtzLDwvZGl2Pg0KPGRpdj48YnI+DQo8
L2Rpdj4NCjxkaXY+SSBhbSB0cnlpbmcgdG8gYnJpbmcgdGhlIGNtb2NrYSByZWNpcGUgb3VyIElP
WCBTREsgWW9jdG8uIENtb2NrYSBpcyBhIGZvcmsgZm9yIEdvb2dsZXMgY21vY2tlcnkgdW5pdCB0
ZXN0aW5nIGZyYW1ld29yayB0byBmaXggYnVncy48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8
ZGl2PkkgYW0gYWJsZSB0byBjb21waWxlIGFuZCBidWlsZCBJUEsgcGFja2FnZXMgZm9yIGNtb2Nr
YSB3aXRob3V0IGFueSBpc3N1ZS48L2Rpdj4NCjxkaXY+QnV0IGR1cmluZyBjcmVhdGluZyB0aGUg
TFhDIGNvbnRhaW5lciB3aGljaCBpbmNsdWRpbmcgdGhlIGNtb2NrYSwgJm5ic3A7b3BrZ188c3Bh
biBzdHlsZT0iZm9udC1zdHlsZTogaXRhbGljOyI+aW5zdGFsbDwvc3Bhbj5fY21kIGNhbiBpbnN0
YWxsIGFuZCBjb25maWd1cmUgb3RoZXIgcmVjaXBlcyAmbmJzcDtidXQmbmJzcDs8Zm9udCBjb2xv
cj0iI2ZmMDAwMCI+Y2Fu4oCZdCBpbnN0YWxsIHBhY2thZ2UgY21vY2thPC9mb250PiZuYnNwO2Fz
IHNob3duIGJlbG93IGluIHRoZSDigJxyZWTigJ08L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8
ZGl2PlRoZXJlIGlzIG5vIGRldGFpbHMgaW5mbyBvbiB3aHkgaXQgY2Fu4oCZdCBpbnN0YWxsIHRo
ZSBwYWNrYWdlIG9yIHdoYXQgaXMgdGhlIHByb2JsZW0uIEhhdmUgYW55b25lIGVuY291bnRlcmVk
IHRoaXMgaXNzdWUgYW5kIGhvdyB0byBzb2x2ZSBpdD8gTWFueSB0aGFua3MgaW4gYWR2YW5jZS4m
bmJzcDs8L2Rpdj4NCjxkaXY+4oCmPC9kaXY+DQo8ZGl2Pg0KPGRpdj5Db25maWd1cmluZyBsaWJt
b2RidXM1LjwvZGl2Pg0KPGRpdj5Db25maWd1cmluZyBpbml0c2NyaXB0cy48L2Rpdj4NCjxkaXY+
Q29uZmlndXJpbmcgbGliYm9vc3QtZ3JhcGgxLjU2LjAuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5n
IGJvb3N0LXNlcmlhbGl6YXRpb24uPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGxpYmJvb3N0LXBy
b2dyYW0tb3B0aW9uczEuNTYuMC48L2Rpdj4NCjxkaXY+Q29uZmlndXJpbmcgb3BrZy1jb2xsYXRl
cmFsLjwvZGl2Pg0KPGRpdj5Db25maWd1cmluZyBib29zdC10ZXN0LjwvZGl2Pg0KPGRpdj5Db25m
aWd1cmluZyBsaWJ6bG9nMS4yLjwvZGl2Pg0KPGRpdj5Db25maWd1cmluZyBwb2t5LWZlZWQtY29u
ZmlnLW9wa2cuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGxpYmJvb3N0LWZpbGVzeXN0ZW0xLjU2
LjAuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGJhc2UtcGFzc3dkLjwvZGl2Pg0KPGRpdj5Db25m
aWd1cmluZyBwYWNrYWdlZ3JvdXAtY29yZS1ib290LjwvZGl2Pg0KPGRpdj5Db25maWd1cmluZyBs
aWJib29zdC1zaWduYWxzMS41Ni4wLjwvZGl2Pg0KPGRpdj5Db25maWd1cmluZyBsaWJ6MS48L2Rp
dj4NCjxkaXY+Q29uZmlndXJpbmcgbGliYm9vc3QtaW9zdHJlYW1zMS41Ni4wLjwvZGl2Pg0KPGRp
dj5Db25maWd1cmluZyBib29zdC48L2Rpdj4NCjxkaXY+Q29uZmlndXJpbmcgbGliamFuc3NvbjQu
PC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGxpYnV2MS48L2Rpdj4NCjxkaXY+PGZvbnQgY29sb3I9
IiNmZjAwMDAiPkNvbGxlY3RlZCBlcnJvcnM6PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBjb2xv
cj0iI2ZmMDAwMCI+Jm5ic3A7KiBvcGtnX2luc3RhbGxfY21kOiBDYW5ub3QgaW5zdGFsbCBwYWNr
YWdlIGNtb2NrYS48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGNvbG9yPSIjZmYwMDAwIj48YnI+
DQo8L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGNvbG9yPSIjZmYwMDAwIj5ERUJVRzogUHl0aG9u
IGZ1bmN0aW9uIGRvX3Jvb3RmcyBmaW5pc2hlZDwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgY29s
b3I9IiNmZjAwMDAiPkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX3Jvb3RmczwvZm9udD48L2Rp
dj4NCjwvZGl2Pg0KPGRpdj48Zm9udCBjb2xvcj0iI2ZmMDAwMCI+PGJyPg0KPC9mb250PjwvZGl2
Pg0KPGRpdj5CZXN0LDwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmk7Ij48
Zm9udCBmYWNlPSJDYWxpYnJpLHNhbnMtc2VyaWYiPiZuYnNwOyZuYnNwO+KAlERpbmgmbmJzcDs8
L2ZvbnQ+PC9kaXY+DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2IGlkPSIiPjwvZGl2Pg0KPC9kaXY+DQo8
L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvc3Bhbj48L3NwYW4+DQo8L2JvZHk+DQo8
L2h0bWw+DQo=

--_000_DE353432B6A942FFADD84FE18278AF11ciscocom_--
