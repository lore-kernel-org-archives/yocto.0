Return-Path: <teodor.madan@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8A12E00BA0; Thu, 11 Feb 2016 02:26:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1993 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Feb 2016 02:26:21 PST
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0097.outbound.protection.outlook.com [157.56.112.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48101E00B8C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 02:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
	s=selector1-nxp-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=DFNUUst0xtbHDkE4+XKgt4VtCGBcFPYpD/BfVZujjuw=;
	b=BayXJpHoraErshjMjwTpjHNOYPiILj8ZM4BXJTfd2s834MhZWDXnZQzXJrWtQ8LGlk8ZljXASJnE6ZSohWnUfCnz+cal/Suimh3yKVbHQEfvgborBHhRE6xWi+RCSs8zxGI6FgG12NmdcjFHOGGH1O+4Eea0Qac8Zf9z7L4CJD0=
Received: from DB5PR04MB1653.eurprd04.prod.outlook.com (10.164.39.11) by
	DB5PR04MB1655.eurprd04.prod.outlook.com (10.164.39.13) with Microsoft
	SMTP Server (TLS) id 15.1.409.15; Thu, 11 Feb 2016 09:53:06 +0000
Received: from DB5PR04MB1653.eurprd04.prod.outlook.com ([10.164.39.11]) by
	DB5PR04MB1653.eurprd04.prod.outlook.com ([10.164.39.11]) with mapi id
	15.01.0409.017; Thu, 11 Feb 2016 09:53:06 +0000
From: Teodor Madan <teodor.madan@nxp.com>
To: Marius <mdlcameras@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse IDE plugin failure
Thread-Index: AQHRZDAUryS9wTRvcUKv54KHzRM8M58mmvmA
Date: Thu, 11 Feb 2016 09:53:06 +0000
Message-ID: <DB5PR04MB1653EEBD651D2E9212BD62E39DA80@DB5PR04MB1653.eurprd04.prod.outlook.com>
References: <emb6f9b431-819c-496e-a74d-4ebdc4e4299f@marius-pc>
In-Reply-To: <emb6f9b431-819c-496e-a74d-4ebdc4e4299f@marius-pc>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [192.88.146.1]
x-microsoft-exchange-diagnostics: 1; DB5PR04MB1655;
	5:BrWSRul+8LrVnnJ+G2xaJVYvRvK9E3a1Ep8bzqBdDgAfTdRfkeWsjyBihvZ0fqaDfrSgdL9pcIscCn/gVEiMfD5XRkELHpRlXKsLoNA+SWGUgx+tSBeho+A3BZHTHxYmmJ6DNXW04K3F8/oEarqJ4g==;
	24:xXQmU56q7T7Iosz7WxXMKPyU2ijNqD0p/JbZAx6ttaemskMC6cp5ERzMVT5w8VeFW/2wfIB7NascBqaZ99Mw31ETPV/Lz4EOGtn/N7K5sIY=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR04MB1655;
x-ms-office365-filtering-correlation-id: 6212257e-6971-4521-5876-08d332c92441
x-microsoft-antispam-prvs: <DB5PR04MB1655A89CDCE180D416301BD69DA80@DB5PR04MB1655.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:DB5PR04MB1655; BCL:0; PCL:0; RULEID:; SRVR:DB5PR04MB1655; 
x-forefront-prvs: 08497C3D99
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(87936001)(586003)(3280700002)(1096002)(1220700001)(16236675004)(3660700001)(76576001)(11100500001)(5004730100002)(19617315012)(77096005)(2906002)(5002640100001)(6116002)(10400500002)(3846002)(92566002)(102836003)(790700001)(15975445007)(19580405001)(40100003)(189998001)(76176999)(122556002)(2900100001)(2950100001)(54356999)(33656002)(74316001)(50986999)(86362001)(19580395003)(19300405004)(2501003)(19625215002)(66066001)(5008740100001)(5001770100001)(107886002)(5001960100002)(5003600100002)(106116001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR04MB1655;
	H:DB5PR04MB1653.eurprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2016 09:53:06.6043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR04MB1655
X-Mailman-Approved-At: Mon, 15 Feb 2016 08:36:43 -0800
Subject: Re: Eclipse IDE plugin failure
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
X-List-Received-Date: Thu, 11 Feb 2016 10:26:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR04MB1653EEBD651D2E9212BD62E39DA80DB5PR04MB1653eurp_"

--_000_DB5PR04MB1653EEBD651D2E9212BD62E39DA80DB5PR04MB1653eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBwYXRjaCBoYXMgYmVlbiBwcm9wb3NlZCBhdCBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvcGlwZXJtYWlsL3lvY3RvLzIwMTYtSmFudWFyeS8wMjc5NTEuaHRtbA0KSSBqdXN0IGhhdmUg
dmVyaWZpZWQgaXQgYW5kIGl0IHdvcmtlZCBmb3IgbWUuDQoNClRlbw0KDQoNCkZyb206IHlvY3Rv
LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9q
ZWN0Lm9yZ10gT24gQmVoYWxmIE9mIE1hcml1cw0KU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAx
MCwgMjAxNiAyMDoyMg0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFt5b2N0
b10gRWNsaXBzZSBJREUgcGx1Z2luIGZhaWx1cmUNCg0KSSBpbnN0YWxsZWQgdGhlIGxhdGVzdCBF
Y2xpcHNlIChNYXJzKSBhbmQgYXR0ZW1wdGVkIHRvIGluc3RhbGwgdGhlIHBsdWdpbi4gVGhlIGlu
c3RhbGxhdGlvbiBmYWlsZWQgYW5kIHRoZSByZXBvcnRlZCBlcnJvciB3YXMgdGhhdCBpdCBjb3Vs
ZCBub3QgbG9jYXRlIHRoZSBUTSBUZXJtaW5hbCB2ZXJzaW9uIDMueHh4LiBUaGUgVE0gdGVybWlu
YWwgaXMgaW5zdGFsbGVkIGJ1dCBpdCBpcyB2ZXJzaW9uIDQuMDB4eHgNCg0KU2hvdWxkIEkgcmF0
aGVyIGluc3RhbGwgb2xkZXIgdmVyc2lvbnMgb2YgdGhlIHNvZnR3YXJlIG9yIGlzIHRoZXJlIGEg
d29ya2Fyb3VuZCBmb3IgdGhpcyBwcm9ibGVtPyBJZiBzbyB3aGF0IGlzIHN1Z2dlc3RlZCB0byBi
ZSBnb29kIGFuZCB3b3JraW5nPw0KDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpS
ZWdhcmRzIC8gR3JvZXRlDQoNCk1hcml1cyBELiBMaWViZW5iZXJnDQorMjcgODIgNjk4IDMyNTEN
CisyNyAxMiA3NDMgNjA2NA0KDQo=

--_000_DB5PR04MB1653EEBD651D2E9212BD62E39DA80DB5PR04MB1653eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OlRhaG9tYTsNCglw
YW5vc2UtMToyIDExIDYgNCAzIDUgNCA0IDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0K
CW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5
OiJUaW1lcyBOZXcgUm9tYW4iLHNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7
bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0aW9u
OnVuZGVybGluZTt9DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNv
LXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiM5NTRGNzI7DQoJdGV4dC1kZWNvcmF0aW9uOnVu
ZGVybGluZTt9DQpwcmUNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5r
OiJIVE1MIFByZWZvcm1hdHRlZCBDaGFyIjsNCgltYXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0b206
LjAwMDFwdDsNCglmb250LXNpemU6MTAuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDb3VyaWVyIE5ldyI7
fQ0KdHQNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWZvbnQtZmFtaWx5OiJDb3VyaWVyIE5l
dyI7fQ0Kc3Bhbi5IVE1MUHJlZm9ybWF0dGVkQ2hhcg0KCXttc28tc3R5bGUtbmFtZToiSFRNTCBQ
cmVmb3JtYXR0ZWQgQ2hhciI7DQoJbXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1s
aW5rOiJIVE1MIFByZWZvcm1hdHRlZCI7DQoJZm9udC1mYW1pbHk6Q29uc29sYXM7fQ0KcC5tc29u
b3JtYWwwLCBsaS5tc29ub3JtYWwwLCBkaXYubXNvbm9ybWFsMA0KCXttc28tc3R5bGUtbmFtZTpt
c29ub3JtYWw7DQoJbXNvLW1hcmdpbi10b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBjbTsN
Cgltc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzsNCgltYXJnaW4tbGVmdDowY207DQoJZm9udC1z
aXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9DQpzcGFu
LkVtYWlsU3R5bGUyMQ0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZh
bWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjojMUY0OTdEO30NCi5Nc29DaHBEZWZh
dWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0K
QHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3Mi4w
cHQgNzIuMHB0IDcyLjBwdCA3Mi4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRT
ZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVk
ZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0t
PjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0K
PG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+
PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIg
dmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5BIHBhdGNoIGhhcyBiZWVu
IHByb3Bvc2VkIGF0DQo8YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvcGlw
ZXJtYWlsL3lvY3RvLzIwMTYtSmFudWFyeS8wMjc5NTEuaHRtbCI+DQpodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvcGlwZXJtYWlsL3lvY3RvLzIwMTYtSmFudWFyeS8wMjc5NTEuaHRtbDwv
YT48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMt
c2VyaWY7Y29sb3I6IzFGNDk3RCI+SSBqdXN0IGhhdmUgdmVyaWZpZWQgaXQgYW5kIGl0IHdvcmtl
ZCBmb3IgbWUuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90
OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQt
ZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5UZW88
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2Vy
aWY7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1
b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9zcGFuPjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlk
IGJsdWUgMS41cHQ7cGFkZGluZzowY20gMGNtIDBjbSA0LjBwdCI+DQo8ZGl2Pg0KPGRpdiBzdHls
ZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4w
cHQgMGNtIDBjbSAwY20iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
Ij5Gcm9tOjwvc3Bhbj48L2I+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4geW9jdG8tYm91bmNlc0B5b2N0b3By
b2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXQ0KPGI+T24g
QmVoYWxmIE9mIDwvYj5NYXJpdXM8YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5LCBGZWJydWFy
eSAxMCwgMjAxNiAyMDoyMjxicj4NCjxiPlRvOjwvYj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxi
cj4NCjxiPlN1YmplY3Q6PC9iPiBbeW9jdG9dIEVjbGlwc2UgSURFIHBsdWdpbiBmYWlsdXJlPG86
cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZxdW90Oyxz
YW5zLXNlcmlmIj5JIGluc3RhbGxlZCB0aGUgbGF0ZXN0IEVjbGlwc2UgKE1hcnMpIGFuZCBhdHRl
bXB0ZWQgdG8gaW5zdGFsbCB0aGUgcGx1Z2luLiBUaGUgaW5zdGFsbGF0aW9uIGZhaWxlZCBhbmQg
dGhlIHJlcG9ydGVkIGVycm9yIHdhcyB0aGF0IGl0IGNvdWxkIG5vdCBsb2NhdGUgdGhlIFRNIFRl
cm1pbmFsIHZlcnNpb24NCiAzLnh4eC4gVGhlIFRNIHRlcm1pbmFsIGlzIGluc3RhbGxlZCBidXQg
aXQgaXMgdmVyc2lvbiA0LjAweHh4PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9u
dC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1b3Q7LHNhbnMtc2VyaWYiPiZuYnNwOzxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZxdW90OyxzYW5z
LXNlcmlmIj5TaG91bGQgSSByYXRoZXIgaW5zdGFsbCBvbGRlciB2ZXJzaW9ucyBvZiB0aGUgc29m
dHdhcmUgb3IgaXMgdGhlcmUgYSB3b3JrYXJvdW5kIGZvciB0aGlzIHByb2JsZW0/IElmIHNvIHdo
YXQgaXMgc3VnZ2VzdGVkIHRvIGJlIGdvb2QgYW5kIHdvcmtpbmc/PG86cD48L286cD48L3NwYW4+
PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1b3Q7LHNhbnMtc2VyaWYi
PiZuYnNwOzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxkaXYgaWQ9InNp
Z25hdHVyZV9vbGQiPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtUYWhvbWEmcXVvdDssc2Fu
cy1zZXJpZiI+Jm5ic3A7PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7VGFob21hJnF1b3Q7LHNhbnMtc2VyaWYiPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tPG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
VGFob21hJnF1b3Q7LHNhbnMtc2VyaWYiPlJlZ2FyZHMgLyBHcm9ldGU8bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtUYWhvbWEmcXVvdDssc2Fucy1zZXJp
ZiI+Jm5ic3A7PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1
b3Q7VGFob21hJnF1b3Q7LHNhbnMtc2VyaWYiPk1hcml1cyBELiBMaWViZW5iZXJnPG86cD48L286
cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1b3Q7LHNh
bnMtc2VyaWYiPiYjNDM7MjcgODIgNjk4IDMyNTE8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rp
dj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEw
LjBwdDtmb250LWZhbWlseTomcXVvdDtUYWhvbWEmcXVvdDssc2Fucy1zZXJpZiI+JiM0MzsyNyAx
MiA3NDMgNjA2NDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4N
CjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBw
dDtmb250LWZhbWlseTomcXVvdDtUYWhvbWEmcXVvdDssc2Fucy1zZXJpZiI+Jm5ic3A7PG86cD48
L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+
DQo8L2h0bWw+DQo=

--_000_DB5PR04MB1653EEBD651D2E9212BD62E39DA80DB5PR04MB1653eurp_--
