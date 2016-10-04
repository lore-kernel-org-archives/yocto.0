Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C75FFE00444; Tue,  4 Oct 2016 09:09:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.142.93 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Oct 2016 09:09:04 PDT
Received: from alln-iport-6.cisco.com (alln-iport-6.cisco.com [173.37.142.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68C91E0034A
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 09:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3636; q=dns/txt; s=iport;
	t=1475597344; x=1476806944;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=nKNHUi1903g7gKOOxyoyQp7fUkhQhHOHNBbr41tb+Mc=;
	b=SAHcSeQwubs/Rks8Wo0G/ugM29ZPhHfabcatF74qnfaLFG7vto/eHqOT
	3GE89sRnqOj+T63YpcVM/B+fc4jmLSRdkFnFzDR1Rv8ceOG5F21Dg7BsN
	A/12iKSNF+1sEyvqooV3qWsLyIUYtmKF5wsEWQTlN+5JczShWU6Vx9V9b Q=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AcAgCD0/NX/4kNJK1dHAEBBAEBCgEBg?=
	=?us-ascii?q?wc2AQEBAQEegVqNK6YRgwOCD4IHhh4egUw4FAECAQEBAQEBAV4cC4RjBAEjVhI?=
	=?us-ascii?q?BDD4CBDAnBA6ISgiyGIx6AQEBAQEBAQEBAQEBAQEBAQEBAQEBHIY8gX2Jazgrg?=
	=?us-ascii?q?i8FjjaLQwGPc49ykG0BHjZMgxuBOIdLgQABAQE?=
X-IronPort-AV: E=Sophos;i="5.31,444,1473120000"; 
	d="scan'208,217";a="331648460"
Received: from alln-core-4.cisco.com ([173.36.13.137])
	by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	04 Oct 2016 16:08:00 +0000
Received: from XCH-RTP-001.cisco.com (xch-rtp-001.cisco.com [64.101.220.141])
	by alln-core-4.cisco.com (8.14.5/8.14.5) with ESMTP id u94G80UJ022181
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 4 Oct 2016 16:08:00 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-001.cisco.com
	(64.101.220.141) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Tue, 4 Oct 2016 12:07:59 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Tue, 4 Oct 2016 12:07:59 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question: xxxx listed in PACKAGES multiple times, this leads to
	packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSrw==
Date: Tue, 4 Oct 2016 16:07:59 +0000
Message-ID: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.125.102]
MIME-Version: 1.0
Subject: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Tue, 04 Oct 2016 16:09:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D66964591F174F528D0A4ED8C3FC35EEciscocom_"

--_000_D66964591F174F528D0A4ED8C3FC35EEciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZm9sa3MsDQoNCj4+PiBFUlJPUjogUUEgSXNzdWU6IGMtbWxpYiBpcyBsaXN0ZWQgaW4gUEFD
S0FHRVMgbXVsdGlwbGUgdGltZXMsIHRoaXMgbGVhZHMgdG8gcGFja2FnaW5nIGVycm9ycy4gW3Bh
Y2thZ2VzLWxpc3RdDQo+Pj4gU3VtbWFyeTogVGhlcmUgd2FzIDEgRVJST1IgbWVzc2FnZSBzaG93
biwgcmV0dXJuaW5nIGEgbm9uLXplcm8gZXhpdCBjb2RlLg0KDQpJIGdvdCB0aGUgYWJvdmUgRVJS
T1IgYmVjYXVzZSAgbXkgYy1tbGliXzEuMC1yMF9jb3JlMi02NC5pcGsgYW5kIG90aGVyIHBhY2th
Z2VzIHdlcmUgbGlzdGVkIGluIGRpZmZlcmVudCBwbGFjZXMgYXMgc2hvd24gYmVsb3c6DQoNCmRp
bmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXYvaW94c2RrJCBm
aW5kIC4gLW5hbWUgYy1tbGliXzEuMC1yMF9jb3JlMi02NC5pcGsNCg0KLi95cC90bXAvZGVwbG95
L2lway9jb3JlMi02NC9jLW1saWJfMS4wLXIwX2NvcmUyLTY0Lmlwaw0KLi95cC90bXAvd29yay9j
b3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjAtcjAvZGVwbG95LWlwa3MvY29yZTItNjQvYy1t
bGliXzEuMC1yMF9jb3JlMi02NC5pcGsNCg0KSXMgdGhpcyBhbiBlcnJvcj8NCg0KTWFueSB0aGFu
a3MsDQogIOKAlEQNCg==

--_000_D66964591F174F528D0A4ED8C3FC35EEciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <875D52FE8B9C7348AD3667F35FECCD72@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgZm9udC1zaXplOiAxNHB4OyBmb250LWZhbWlseTogQ2Fs
aWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPkhp
IGZvbGtzLDwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPjxicj4NCjwv
ZGl2Pg0KPGRpdj4mZ3Q7Jmd0OyZndDsgRVJST1I6IFFBIElzc3VlOiA8Zm9udCBjb2xvcj0iI2Zm
MDAwMCI+Yy1tbGliIGlzIGxpc3RlZCBpbiBQQUNLQUdFUyBtdWx0aXBsZSB0aW1lcywgdGhpcyBs
ZWFkcyB0byBwYWNrYWdpbmcgZXJyb3JzLjwvZm9udD4gW3BhY2thZ2VzLWxpc3RdPC9kaXY+DQo8
ZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPiZndDsmZ3Q7Jmd0OyBTdW1t
YXJ5OiBUaGVyZSB3YXMgMSBFUlJPUiBtZXNzYWdlIHNob3duLCByZXR1cm5pbmcgYSBub24temVy
byBleGl0IGNvZGUuPC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyI+PGJy
Pg0KPC9kaXY+DQo8ZGl2PkkgZ290IHRoZSBhYm92ZSBFUlJPUiBiZWNhdXNlICZuYnNwO215IDxm
b250IGNvbG9yPSIjZmYwMDAwIj5jLW1saWJfMS4wLXIwX2NvcmUyLTY0LmlwazwvZm9udD4gYW5k
IG90aGVyIHBhY2thZ2VzIHdlcmUgbGlzdGVkIGluIGRpZmZlcmVudCBwbGFjZXMgYXMgc2hvd24g
YmVsb3c6PC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyI+PGJyPg0KPC9k
aXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyI+ZGluaG5AcnMtYmxkc3J2Oi9t
ZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldi9pb3hzZGskIGZpbmQgLiAtbmFtZSBjLW1s
aWJfMS4wLXIwX2NvcmUyLTY0LmlwazwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAw
LCAwKTsiPjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPi4v
eXAvdG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliXzEuMC1yMF9jb3JlMi02NC5pcGsgJm5i
c3A7Jm5ic3A7PC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAsIDAsIDApOyI+Li95cC90
bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjAtcjAvZGVwbG95LWlwa3MvY29y
ZTItNjQvYy1tbGliXzEuMC1yMF9jb3JlMi02NC5pcGs8L2Rpdj4NCjwvZGl2Pg0KPGRpdiBzdHls
ZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6
IHJnYigwLCAwLCAwKTsiPklzIHRoaXMgYW4gZXJyb3I/Jm5ic3A7PC9kaXY+DQo8ZGl2IHN0eWxl
PSJjb2xvcjogcmdiKDAsIDAsIDApOyI+PGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjog
cmdiKDAsIDAsIDApOyI+TWFueSB0aGFua3MsPC9kaXY+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdi
KDAsIDAsIDApOyI+Jm5ic3A7IOKAlEQmbmJzcDs8L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOiBy
Z2IoMCwgMCwgMCk7Ij4NCjxkaXYgaWQ9Ik1BQ19PVVRMT09LX1NJR05BVFVSRSI+PC9kaXY+DQo8
L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_D66964591F174F528D0A4ED8C3FC35EEciscocom_--
