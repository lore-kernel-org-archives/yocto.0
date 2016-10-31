Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0448E00747; Mon, 31 Oct 2016 09:31:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3787E006C7
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=1918; q=dns/txt; s=iport;
	t=1477931467; x=1479141067;
	h=from:to:subject:date:message-id:mime-version;
	bh=ZnFSPLlGC04Yoj3pFCp4dEtkr70FKtEf9uMJAV9UOcI=;
	b=Z5kGPfPgFgFleX2bhGV5f5cJSytaHHgGgqqwCxgwDMJBYM1ERvaIeuQs
	fD4aq8BWYjEa0xtqT2WZnXoLjc9l9dj5z3PgYO0CB/LsjbJScmZlsvFDr
	ZwOS/hQAcIM/HwaYjlr7O+YQyK7jxrz426Uq0RAXq/wRU5qh7hLmgk3xq w=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BSAgAgcRdY/5tdJa1cHAEBBAEBCgEBg?=
	=?us-ascii?q?nM3AQEBAQEfWIEEjS+mJoUWggckhhuBcz8UAQIBAQEBAQEBYh0LhFkQI2gBCwE?=
	=?us-ascii?q?+AgQwHwgEiGegS49xjFwBAQEBAQEEAQEBAQEBAQEBARgFhj2BfQiCUIdLLYIvB?=
	=?us-ascii?q?ZoYAYYvigCQBJESAR42YIUSh3KBCQEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,575,1473120000"; 
	d="scan'208,217";a="163931557"
Received: from rcdn-core-4.cisco.com ([173.37.93.155])
	by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Oct 2016 16:31:06 +0000
Received: from XCH-RTP-004.cisco.com (xch-rtp-004.cisco.com [64.101.220.144])
	by rcdn-core-4.cisco.com (8.14.5/8.14.5) with ESMTP id u9VGV6e3023009
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 16:31:06 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-004.cisco.com
	(64.101.220.144) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Mon, 31 Oct 2016 12:31:05 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Mon, 31 Oct 2016 12:31:05 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: recipe for cmocka
Thread-Index: AQHSM5Qt++cKojwCO06g1VeZ1AdpYA==
Date: Mon, 31 Oct 2016 16:31:05 +0000
Message-ID: <6993B37C-A991-4099-9E45-77CE3670C43E@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.0.227]
MIME-Version: 1.0
Subject: recipe for cmocka
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
X-List-Received-Date: Mon, 31 Oct 2016 16:31:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6993B37CA99140999E4577CE3670C43Eciscocom_"

--_000_6993B37CA99140999E4577CE3670C43Eciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpodHRwczovL2dpdGh1Yi5jb20vY2xpYnMvY21vY2thDQoNCkRlYXIgWW9jdG8gR3VydXMsDQoN
CldhbnQgdG8gYnJpbmcgaXQgaW50byBvdXIgU0RLIFlvY3RvIHdvcmtzcGFjZS4gSXMgdGhlcmUg
YW55IGV4aXN0aW5nIHJlY2lwZSBmb3IgY21vY2thID8NCg0KVGhhbmtzLA0KICDigJREaW5oDQo=

--_000_6993B37CA99140999E4577CE3670C43Eciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <18DA43D9AD3AFA4CBF34605C4E641EBC@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsiPg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAw
KTsgZm9udC1mYW1pbHk6IENhbGlicmksIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsiPg0K
PGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyBmb250LWZhbWls
eTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+DQo8YSBocmVmPSJodHRw
czovL2dpdGh1Yi5jb20vY2xpYnMvY21vY2thIj5odHRwczovL2dpdGh1Yi5jb20vY2xpYnMvY21v
Y2thPC9hPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1mYW1p
bHk6IENhbGlicmksIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsiPg0KPGJyPg0KPC9kaXY+
DQo8ZGl2PkRlYXIgWW9jdG8gR3VydXMsPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5X
YW50IHRvIGJyaW5nIGl0IGludG8gb3VyIFNESyBZb2N0byB3b3Jrc3BhY2UuIElzIHRoZXJlIGFu
eSBleGlzdGluZyByZWNpcGUgZm9yIGNtb2NrYSA/Jm5ic3A7PC9kaXY+DQo8ZGl2Pjxicj4NCjwv
ZGl2Pg0KPGRpdj5UaGFua3MsPC9kaXY+DQo8ZGl2PiZuYnNwOyDigJREaW5oJm5ic3A7PC9kaXY+
DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyBmb250LWZhbWlseTogQ2FsaWJyaSwg
c2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+DQo8ZGl2IGlkPSJNQUNfT1VUTE9PS19TSUdO
QVRVUkUiPjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_6993B37CA99140999E4577CE3670C43Eciscocom_--
