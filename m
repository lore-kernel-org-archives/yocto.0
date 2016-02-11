Return-Path: <teodor.madan@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FB9BE00BE6; Thu, 11 Feb 2016 03:46:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1081 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Feb 2016 03:46:02 PST
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0099.outbound.protection.outlook.com [157.55.234.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9856BE00BB6
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 03:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
	s=selector1-nxp-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=188NzB3DE0moFsb5+C93I2ZzMjnxY6fLJGNMrD8sgxI=;
	b=MfM45orUYkQz+8hvOF7O4vXRspDGJjwe6LHkXAuldyXZp1UkMY3+ZMc3a7MDLHBVjzbiIKHAALxtDcZtHMj3ZQkyi8U9L2EC+WWNNLg4g9RmmhIA0T/eq0VRQAsbevLKgbtgcwlCVBIYqqR/3QDWff5HVzyJyX57+vYv97rKmmI=
Received: from DB5PR04MB1653.eurprd04.prod.outlook.com (10.164.39.11) by
	DB5PR04MB1653.eurprd04.prod.outlook.com (10.164.39.11) with Microsoft
	SMTP Server (TLS) id 15.1.409.15; Thu, 11 Feb 2016 11:13:40 +0000
Received: from DB5PR04MB1653.eurprd04.prod.outlook.com ([10.164.39.11]) by
	DB5PR04MB1653.eurprd04.prod.outlook.com ([10.164.39.11]) with mapi id
	15.01.0409.017; Thu, 11 Feb 2016 11:13:39 +0000
From: Teodor Madan <teodor.madan@nxp.com>
To: Marius <mdlcameras@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse IDE plugin failure
Thread-Index: AQHRZDAUryS9wTRvcUKv54KHzRM8M58mmvmA
Date: Thu, 11 Feb 2016 11:13:39 +0000
Message-ID: <DB5PR04MB16535E6ABE82F1701380CEA89DA80@DB5PR04MB1653.eurprd04.prod.outlook.com>
References: <emb6f9b431-819c-496e-a74d-4ebdc4e4299f@marius-pc>
In-Reply-To: <emb6f9b431-819c-496e-a74d-4ebdc4e4299f@marius-pc>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [192.88.146.1]
x-microsoft-exchange-diagnostics: 1; DB5PR04MB1653;
	5:jMrbNneUcD1vGl3eq5PPjhcB+wjQRoHHu6iNYg4zfTPvyUMJu4woXy8r6kRx50eCX6l7J3dpVTB/JWtcSRsLMroUj1q1W/4RKmORAlwK31zFDQNjZZ6VQ04ZcBgEVH1nXPdNpup6Pn6Wcu/lKhpDcg==;
	24:+tfsPjKMlJliEmS8yAAcfQdukkSWEdWRHMWKWWFD8rOFhGlpw+pmsvOo/2VLZOjF+BrqIgI3CO2dzMq1pGoTvfI2fkBb2hmQafHAdJVkpqg=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR04MB1653;
x-ms-office365-filtering-correlation-id: a219b226-4c39-4072-2dfa-08d332d46514
x-microsoft-antispam-prvs: <DB5PR04MB1653A31B3B8F3F5B7129307E9DA80@DB5PR04MB1653.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:DB5PR04MB1653; BCL:0; PCL:0; RULEID:; SRVR:DB5PR04MB1653; 
x-forefront-prvs: 08497C3D99
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(19580405001)(19580395003)(19625215002)(107886002)(54356999)(5001960100002)(50986999)(76176999)(189998001)(86362001)(19300405004)(33656002)(19617315012)(66066001)(106116001)(5002640100001)(5003600100002)(16236675004)(122556002)(74316001)(87936001)(5008740100001)(1220700001)(1096002)(586003)(6116002)(102836003)(3846002)(790700001)(92566002)(76576001)(5001770100001)(40100003)(5004730100002)(15975445007)(2501003)(2906002)(77096005)(3280700002)(2900100001)(10400500002)(3660700001)(2950100001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR04MB1653;
	H:DB5PR04MB1653.eurprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2016 11:13:39.7773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR04MB1653
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
X-List-Received-Date: Thu, 11 Feb 2016 11:46:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR04MB16535E6ABE82F1701380CEA89DA80DB5PR04MB1653eurp_"

--_000_DB5PR04MB16535E6ABE82F1701380CEA89DA80DB5PR04MB1653eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBwYXRjaCBoYXMgYmVlbiBwcm9wb3NlZCBhdCBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvcGlwZXJtYWlsL3lvY3RvLzIwMTYtSmFudWFyeS8wMjc5NTEuaHRtbA0KSSBqdXN0IGhhdmUg
dmVyaWZpZWQgdGhlIHBhdGNoIGFuZCBpdCB3b3JrZWQgZm9yIG1lLg0KDQpUZW8NCg0KDQpGcm9t
OiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1ib3VuY2VzQHlv
Y3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBNYXJpdXMNClNlbnQ6IFdlZG5lc2RheSwgRmVi
cnVhcnkgMTAsIDIwMTYgMjA6MjINClRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0
OiBbeW9jdG9dIEVjbGlwc2UgSURFIHBsdWdpbiBmYWlsdXJlDQoNCkkgaW5zdGFsbGVkIHRoZSBs
YXRlc3QgRWNsaXBzZSAoTWFycykgYW5kIGF0dGVtcHRlZCB0byBpbnN0YWxsIHRoZSBwbHVnaW4u
IFRoZSBpbnN0YWxsYXRpb24gZmFpbGVkIGFuZCB0aGUgcmVwb3J0ZWQgZXJyb3Igd2FzIHRoYXQg
aXQgY291bGQgbm90IGxvY2F0ZSB0aGUgVE0gVGVybWluYWwgdmVyc2lvbiAzLnh4eC4gVGhlIFRN
IHRlcm1pbmFsIGlzIGluc3RhbGxlZCBidXQgaXQgaXMgdmVyc2lvbiA0LjAweHh4DQoNClNob3Vs
ZCBJIHJhdGhlciBpbnN0YWxsIG9sZGVyIHZlcnNpb25zIG9mIHRoZSBzb2Z0d2FyZSBvciBpcyB0
aGVyZSBhIHdvcmthcm91bmQgZm9yIHRoaXMgcHJvYmxlbT8gSWYgc28gd2hhdCBpcyBzdWdnZXN0
ZWQgdG8gYmUgZ29vZCBhbmQgd29ya2luZz8NCg0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KUmVnYXJkcyAvIEdyb2V0ZQ0KDQpNYXJpdXMgRC4gTGllYmVuYmVyZw0KKzI3IDgyIDY5
OCAzMjUxDQorMjcgMTIgNzQzIDYwNjQNCg0K

--_000_DB5PR04MB16535E6ABE82F1701380CEA89DA80DB5PR04MB1653eurp_
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
c2VyaWY7Y29sb3I6IzFGNDk3RCI+SSBqdXN0IGhhdmUgdmVyaWZpZWQgdGhlIHBhdGNoIGFuZCBp
dCB3b3JrZWQgZm9yIG1lLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGli
cmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBw
dDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3
RCI+VGVvPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90Oyxz
YW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZu
YnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVm
dDpzb2xpZCBibHVlIDEuNXB0O3BhZGRpbmc6MGNtIDBjbSAwY20gNC4wcHQiPg0KPGRpdj4NCjxk
aXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRk
aW5nOjMuMHB0IDBjbSAwY20gMGNtIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fu
cy1zZXJpZiI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2Zv
bnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+IHlvY3RvLWJvdW5jZXNA
eW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10N
CjxiPk9uIEJlaGFsZiBPZiA8L2I+TWFyaXVzPGJyPg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwg
RmVicnVhcnkgMTAsIDIwMTYgMjA6MjI8YnI+DQo8Yj5Ubzo8L2I+IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmc8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gW3lvY3RvXSBFY2xpcHNlIElERSBwbHVnaW4gZmFp
bHVyZTxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtUYWhvbWEm
cXVvdDssc2Fucy1zZXJpZiI+SSBpbnN0YWxsZWQgdGhlIGxhdGVzdCBFY2xpcHNlIChNYXJzKSBh
bmQgYXR0ZW1wdGVkIHRvIGluc3RhbGwgdGhlIHBsdWdpbi4gVGhlIGluc3RhbGxhdGlvbiBmYWls
ZWQgYW5kIHRoZSByZXBvcnRlZCBlcnJvciB3YXMgdGhhdCBpdCBjb3VsZCBub3QgbG9jYXRlIHRo
ZSBUTSBUZXJtaW5hbCB2ZXJzaW9uDQogMy54eHguIFRoZSBUTSB0ZXJtaW5hbCBpcyBpbnN0YWxs
ZWQgYnV0IGl0IGlzIHZlcnNpb24gNC4wMHh4eDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2
Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZxdW90OyxzYW5zLXNlcmlmIj4mbmJzcDs8bzpw
PjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtUYWhvbWEmcXVv
dDssc2Fucy1zZXJpZiI+U2hvdWxkIEkgcmF0aGVyIGluc3RhbGwgb2xkZXIgdmVyc2lvbnMgb2Yg
dGhlIHNvZnR3YXJlIG9yIGlzIHRoZXJlIGEgd29ya2Fyb3VuZCBmb3IgdGhpcyBwcm9ibGVtPyBJ
ZiBzbyB3aGF0IGlzIHN1Z2dlc3RlZCB0byBiZSBnb29kIGFuZCB3b3JraW5nPzxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZxdW90OyxzYW5z
LXNlcmlmIj4mbmJzcDs8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2
IGlkPSJzaWduYXR1cmVfb2xkIj4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1
b3Q7LHNhbnMtc2VyaWYiPiZuYnNwOzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2Zv
bnQtZmFtaWx5OiZxdW90O1RhaG9tYSZxdW90OyxzYW5zLXNlcmlmIj4tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLTxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5
OiZxdW90O1RhaG9tYSZxdW90OyxzYW5zLXNlcmlmIj5SZWdhcmRzIC8gR3JvZXRlPG86cD48L286
cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1b3Q7LHNh
bnMtc2VyaWYiPiZuYnNwOzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O1RhaG9tYSZxdW90OyxzYW5zLXNlcmlmIj5NYXJpdXMgRC4gTGllYmVuYmVyZzxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O1RhaG9tYSZx
dW90OyxzYW5zLXNlcmlmIj4mIzQzOzI3IDgyIDY5OCAzMjUxPG86cD48L286cD48L3NwYW4+PC9w
Pg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1b3Q7LHNhbnMtc2VyaWYiPiYj
NDM7MjcgMTIgNzQzIDYwNjQ8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0K
PC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21hJnF1b3Q7LHNhbnMtc2VyaWYiPiZuYnNw
OzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0K
PC9ib2R5Pg0KPC9odG1sPg0K

--_000_DB5PR04MB16535E6ABE82F1701380CEA89DA80DB5PR04MB1653eurp_--
