Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED689E008E4; Mon,  7 Nov 2016 20:52:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.86.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from rcdn-iport-4.cisco.com (rcdn-iport-4.cisco.com [173.37.86.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC01E00874
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 20:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=5872; q=dns/txt; s=iport;
	t=1478580754; x=1479790354;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=woINsDElngY8RLQx/IkJRu09jyhAJm0WCVvPl77I4yI=;
	b=MRqHUaCaRE1GdCLyNWY1ZYfjaOuey+ER6osLemvaHoM1yj65RbtCVZ2s
	TFdGVAhwdW8YkoXB39mSWVJGC7mKHjwsDvwWCHdRg8KnHa3r8HoVcESVx
	s6SM1Ck8Z22P42AOnddbPkIn7/+JbixB72a9efBE1LeFbT9f/l63+5dDO 0=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DbBACkWSFY/4YNJK1dHAEBBAEBCgEBg?=
	=?us-ascii?q?nM7AQEBAQEfWHwHs2uFGoIIJYV/HIFqQRIBAgEBAQEBAQFiHQuEYgIEIygBLRI?=
	=?us-ascii?q?BCEICBDAbAQYFBA6IXbFtgkCEHwGHIQEBAQEBAQEBAQEBAQEBAQEBAQEBARyGP?=
	=?us-ascii?q?oF9gliFBYJGLYIvBZonAYY0ig+QEJEvASQBMHqFKnIBAYY8gQwBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,608,1473120000"; 
	d="scan'208,217";a="168735278"
Received: from alln-core-12.cisco.com ([173.36.13.134])
	by rcdn-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	08 Nov 2016 04:52:32 +0000
Received: from XCH-RTP-005.cisco.com (xch-rtp-005.cisco.com [64.101.220.145])
	by alln-core-12.cisco.com (8.14.5/8.14.5) with ESMTP id
	uA84qWId028750
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 8 Nov 2016 04:52:32 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-005.cisco.com
	(64.101.220.145) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Mon, 7 Nov 2016 23:52:31 -0500
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Mon, 7 Nov 2016 23:52:31 -0500
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cmake version 3.0.0 or greater 
Thread-Index: AQHSOXvpVRj939q/x0+Jw7Vb8fZvfw==
Date: Tue, 8 Nov 2016 04:52:31 +0000
Message-ID: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.4.69]
MIME-Version: 1.0
Subject: FW: cmake version 3.0.0 or greater
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
X-List-Received-Date: Tue, 08 Nov 2016 04:52:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3B7E27B676D5460DBE7833E49D04BED0ciscocom_"

--_000_3B7E27B676D5460DBE7833E49D04BED0ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpIaSBZb2N0byBHdXJ1cw0KDQpPdXIgU0RLIGhhcyB0aGUgWW9jdG8gUHJvamVjdCAxLjcgRGl6
enkgdmVyc2lvbiBhbmQgaXQgc3VwcG9ydHMgY21ha2UgMi44LjEyIHZlcnNpb24gYXMgc2hvdyBi
ZWxvdzoNCi4vbWV0YS9yZWNpcGVzLWRldnRvb2xzL2NtYWtlL2NtYWtlXzIuOC4xMi4yLmJiDQou
L21ldGEvcmVjaXBlcy1kZXZ0b29scy9jbWFrZS9jbWFrZS1uYXRpdmVfMi44LjEyLjIuYmINCg0K
V2UgbmVlZCB0byBwdWxsaW5nIHRoZSBjbWFrZSAzLngueCB2ZXJzaW9uIGZvciBvdXIgc2RrLWRz
bGluay1jIHJlY2lwZSBidWlsZC4NCg0KSSBmb3VuZCAgZ2l0Oi8vZ2l0Lm9wZW5lbWJlZGRlZC5v
cmcvb3BlbmVtYmVkZGVkLWNvcmUgaGFzIHZlcnNpb24gIDMuNi54DQpTbyBJIHRyaWVkIHRvIHB1
bGwgaXQgaW4uIEJ1dCB0aGlzIHZlcnNpb24gZ290IGEgdHJhY2UgYmFjayB3aGVuIGludGVncmF0
ZWQgdG8gb3VyIFNESyBZb2N0byBEaXp6eS4NCg0KQ2FuIHlvdSBhZHZpc2Ugd2hpY2ggb3BlbiBl
bWJlZGRlZC1jb3JlIHZlcnNpb24vZ2l0IGxvY2F0aW9uIHRvIHB1bGwgaW4gdG8gU0RLIERpenp5
IHZlcnNpb24gZm9yIGNtYWtlIDMueC54IHZlcnNpb24NCg0KVGhhbmtzLA0KICDigJREaW5oDQo=

--_000_3B7E27B676D5460DBE7833E49D04BED0ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <7F320EE9B2CFC34CA3F141DE0CA35BB6@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsiPg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAw
KTsiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIHNhbnMtc2VyaWY7IGZvbnQt
c2l6ZTogMTRweDsiPjxicj4NCjwvZGl2Pg0KPGRpdj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAx
NnB4OyI+PGZvbnQgZmFjZT0iQXJpYWwiPkhpIFlvY3RvIEd1cnVzPC9mb250Pjwvc3Bhbj48L2Rp
dj4NCjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTZweDsiPjxmb250IGZhY2U9IkFyaWFs
Ij48YnI+DQo8L2ZvbnQ+PC9zcGFuPjwvZGl2Pg0KPGRpdj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OiAxNnB4OyI+PGZvbnQgZmFjZT0iQXJpYWwiPk91ciBTREsgaGFzIHRoZSBZb2N0byBQcm9qZWN0
IDEuNyBEaXp6eSB2ZXJzaW9uIGFuZCBpdCZuYnNwO3N1cHBvcnRzIGNtYWtlIDIuOC4xMiB2ZXJz
aW9uIGFzIHNob3cgYmVsb3c6PC9mb250Pjwvc3Bhbj48L2Rpdj4NCjwvZGl2Pg0KPHNwYW4gaWQ9
Ik9MS19TUkNfQk9EWV9TRUNUSU9OIj4NCjxkaXYgc3R5bGU9IndvcmQtd3JhcDogYnJlYWstd29y
ZDsgLXdlYmtpdC1uYnNwLW1vZGU6IHNwYWNlOyAtd2Via2l0LWxpbmUtYnJlYWs6IGFmdGVyLXdo
aXRlLXNwYWNlOyI+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8ZGl2Pjxm
b250IGZhY2U9IkFyaWFsIiBzdHlsZT0iZm9udC1zaXplOiAxNnB4OyI+Li9tZXRhL3JlY2lwZXMt
ZGV2dG9vbHMvY21ha2UvY21ha2VfMi44LjEyLjIuYmI8L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250
IGZhY2U9IkFyaWFsIiBzdHlsZT0iZm9udC1zaXplOiAxNnB4OyI+Li9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvY21ha2UvY21ha2UtbmF0aXZlXzIuOC4xMi4yLmJiPC9mb250PjwvZGl2Pg0KPC9kaXY+
DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyI+PGZvbnQgZmFjZT0iQXJpYWwiIHN0
eWxlPSJmb250LXNpemU6IDE2cHg7Ij48YnI+DQo8L2ZvbnQ+PC9kaXY+DQo8ZGl2IHN0eWxlPSJj
b2xvcjogcmdiKDAsIDAsIDApOyI+PGZvbnQgZmFjZT0iQXJpYWwiIHN0eWxlPSJmb250LXNpemU6
IDE2cHg7Ij5XZSBuZWVkIHRvIHB1bGxpbmcgdGhlIGNtYWtlIDMueC54IHZlcnNpb24gZm9yIG91
ciBzZGstZHNsaW5rLWMgcmVjaXBlIGJ1aWxkLjwvZm9udD48L2Rpdj4NCjxkaXYgc3R5bGU9ImNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij48Zm9udCBmYWNlPSJBcmlhbCIgc3R5bGU9ImZvbnQtc2l6ZTog
MTZweDsiPjxicj4NCjwvZm9udD48L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOiByZ2IoMCwgMCwg
MCk7Ij48Zm9udCBmYWNlPSJBcmlhbCIgc3R5bGU9ImZvbnQtc2l6ZTogMTZweDsiPkkgZm91bmQg
Jm5ic3A7PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoNTEsIDUxLCA1MSk7IG9ycGhhbnM6IDI7IHdp
ZG93czogMjsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+Z2l0Oi8vZ2l0
Lm9wZW5lbWJlZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmUgaGFzIHZlcnNpb24gJm5ic3A7My42
LngmbmJzcDs8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAw
LCAwKTsgb3JwaGFuczogMjsgd2lkb3dzOiAyOyI+PGZvbnQgZmFjZT0iQXJpYWwiIHN0eWxlPSJm
b250LXNpemU6IDE2cHg7Ij48Zm9udCBjb2xvcj0iIzMzMzMzMyI+UzwvZm9udD48c3BhbiBzdHls
ZT0ib3JwaGFuczogMjsgd2lkb3dzOiAyOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTQs
IDI1NCk7Ij48Zm9udCBjb2xvcj0iIzMzMzMzMyI+byZuYnNwOzwvZm9udD48Zm9udCBjb2xvcj0i
IzMzMzMzMyI+STwvZm9udD48Zm9udCBjb2xvcj0iIzMzMzMzMyI+Jm5ic3A7dHJpZWQNCiB0byBw
dWxsIGl0IGluLiBCdXQgdGhpcyB2ZXJzaW9uIGdvdCBhIHRyYWNlIGJhY2sgd2hlbiBpbnRlZ3Jh
dGVkIHRvIG91ciBTREsgWW9jdG8gRGl6enkuPC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8
ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyBvcnBoYW5zOiAyOyB3aWRvd3M6IDI7Ij48
c3BhbiBzdHlsZT0ib3JwaGFuczogMjsgd2lkb3dzOiAyOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2Io
MjU1LCAyNTQsIDI1NCk7IGZvbnQtc2l6ZTogMTZweDsiPjxmb250IGNvbG9yPSIjMzMzMzMzIiBm
YWNlPSJBcmlhbCI+PGJyPg0KPC9mb250Pjwvc3Bhbj48L2Rpdj4NCjxkaXYgc3R5bGU9Im9ycGhh
bnM6IDI7IHdpZG93czogMjsiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDE2cHg7Ij48Zm9udCBm
YWNlPSJBcmlhbCI+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMCwgMCwgMCk7IG9ycGhhbnM6IDI7
IHdpZG93czogMjsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU0LCAyNTQpOyI+PGZvbnQg
Y29sb3I9IiMzMzMzMzMiPkNhbiB5b3UgYWR2aXNlIHdoaWNoJm5ic3A7PC9mb250Pjwvc3Bhbj48
Zm9udCBjb2xvcj0iIzMzMzMzMyI+b3Blbg0KIGVtYmVkZGVkLWNvcmUgdmVyc2lvbi9naXQgbG9j
YXRpb248Zm9udCBjb2xvcj0iIzAwMDAwMCI+Jm5ic3A7dG8gcHVsbCBpbiB0byBTREsgRGl6enkg
dmVyc2lvbiBmb3IgY21ha2UgMy54LnggdmVyc2lvbjwvZm9udD48L2ZvbnQ+PC9mb250Pjwvc3Bh
bj48L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOiByZ2IoMCwgMCwgMCk7IG9ycGhhbnM6IDI7IHdp
ZG93czogMjsiPjxmb250IGNvbG9yPSIjMzMzMzMzIiBmYWNlPSJBcmlhbCIgc3R5bGU9ImZvbnQt
c2l6ZTogMTZweDsiPjxicj4NCjwvZm9udD48L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOiByZ2Io
MCwgMCwgMCk7IG9ycGhhbnM6IDI7IHdpZG93czogMjsiPjxmb250IGNvbG9yPSIjMzMzMzMzIiBm
YWNlPSJBcmlhbCIgc3R5bGU9ImZvbnQtc2l6ZTogMTZweDsiPlRoYW5rcyw8L2ZvbnQ+PC9kaXY+
DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyBvcnBoYW5zOiAyOyB3aWRvd3M6IDI7
Ij48Zm9udCBjb2xvcj0iIzMzMzMzMyIgZmFjZT0iQXJpYWwiIHN0eWxlPSJmb250LXNpemU6IDE2
cHg7Ij4mbmJzcDsmbmJzcDvigJREaW5oJm5ic3A7PC9mb250PjwvZGl2Pg0KPGRpdiBzdHlsZT0i
Y29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1mYW1pbHk6IENhbGlicmksIHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZTogMTRweDsiPg0KPGRpdiBpZD0iIj48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L3Nw
YW4+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_3B7E27B676D5460DBE7833E49D04BED0ciscocom_--
