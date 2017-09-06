Return-Path: <hernan_gutierrez@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A672E00CAE; Wed,  6 Sep 2017 16:02:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5647 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Sep 2017 16:02:01 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0104.outbound.protection.outlook.com [104.47.41.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26FB1E00BB7
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 16:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HP.onmicrosoft.com;
	s=selector1-hp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=bNkSbieT2tPtgfor7PBWUMVslaiSkBO/AyDka49lMH8=;
	b=gR5agYDESrMFSNTuHyju9io5Sfobw3DScQAWZO+HDl1rVwxQzM09qidk1kGz3Cxoe89bQOj1mKa2YckSvIiiXRO+vMja0tIm4m5VhspIc7w96GjQ7bLHPnTtnRaGKfhj/3rg4o6tzM/DLYVg4WqNXojl+Q5uV87O6lylXVR4S5w=
Received: from CS1PR84MB0309.NAMPRD84.PROD.OUTLOOK.COM (10.162.189.158) by
	CS1PR84MB0229.NAMPRD84.PROD.OUTLOOK.COM (10.162.190.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.35.12; Wed, 6 Sep 2017 21:27:52 +0000
Received: from CS1PR84MB0309.NAMPRD84.PROD.OUTLOOK.COM ([10.162.189.158]) by
	CS1PR84MB0309.NAMPRD84.PROD.OUTLOOK.COM ([10.162.189.158]) with mapi id
	15.20.0035.010; Wed, 6 Sep 2017 21:27:53 +0000
From: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can yocto build a QEMU image to run under MS Windows ?
Thread-Index: AdMnVpXP8Phx1XGCRnCJiJdM6lQrsQ==
Date: Wed, 6 Sep 2017 21:27:52 +0000
Message-ID: <CS1PR84MB03093A584ACCD5C2F93D38A299970@CS1PR84MB0309.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.65.244.15]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR84MB0229;
	6:0zoqYHulJB17czMcU2Ei6LexMcoJN3/7aoL29pCfoHlMc+I87z3rqFyl+vqpL3B+Z33Ilefeo+Fwz3QjFs9eBPigRjKBoPPPmpCp3fhKdmmefWOu8SkRXJUexOP8uy0zJ29KLPHiG31qmfNp6uerJ7cw6DNcJ3bjXHVQ9K/Eie9zIwe21YXVB1uL2kzBmRgYIPu3t95BS0A9flrpHM68w37SpluTnRi6jA8xvJsRr1WRBWl2YcCM/NMDdXvQJltxWVUyUVkzB7HLbUt4168HQyVNZXRc+sSaEoOG7wGJ9l/Odd7H6s29jQA6B3yfw+oceC5V6ZEBfmmsQOynpruF5w==;
	5:ZJjzpLKTD1NwlBor/i0llWYcwlYAWU9oTIf4MEtSk1gHOEv+roQhWpfveD26dlqbGX5ZAdnq35aOmhBolYy0hUxL+E7wMiA+o+7cdu3wb5AwcP1iAFJ5mpWub0bQt+QGu0+ezLrO8haFLwJSt87ZWQ==;
	24:rwLmjLRcWwuAmbwYez6SOpg1J23qQKJthIqfqj+iYJ4foGYxcldh+5TztxPQBqrQOc7RVH2obwLY/Nh04Kx1xdRT3ysz3zSRgzO1x6o72R4=;
	7:3F62cIRaTnGOqodZ5m4TMmi7Nu40b0CWOCv7WAfN/FfRiLJvp4ZUZ+Mb2HdIEL8Ou1Tn769D57m0gYhs1QykEBOKOooiljNmICUQ8hWYrV+jpHVi/Hi4Pjc8OIbbNBaHxFOJ/rn8uaiYavVaIYVpQjA9j+enJzh45VVBu2Ccip340SGBWDoWwXNyI2tVBxWXmEFoynn3EhQRL8ZSMGPMwpu9UB4RzaWhbTSE5FhFjOc=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 19d68225-5d1f-48ec-df9b-08d4f56e21e7
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603199)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:CS1PR84MB0229; 
x-ms-traffictypediagnostic: CS1PR84MB0229:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <CS1PR84MB02293BE2BECDED60C8D4D3FA99970@CS1PR84MB0229.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(10201501046)(3002001)(100000703101)(100105400095)(93006095)(93001095)(6041248)(20161123555025)(20161123564025)(20161123562025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CS1PR84MB0229; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CS1PR84MB0229; 
x-forefront-prvs: 0422860ED4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(199003)(6602003)(189002)(54094003)(2906002)(74316002)(8936002)(790700001)(6116002)(81156014)(81166006)(3846002)(102836003)(7736002)(1730700003)(33656002)(3280700002)(8676002)(3660700001)(5640700003)(106356001)(9326002)(105586002)(25786009)(7696004)(5660300001)(77096006)(6436002)(54896002)(9686003)(2900100001)(110136004)(5630700001)(101416001)(66066001)(97736004)(68736007)(6306002)(189998001)(6916009)(478600001)(2351001)(50986999)(55016002)(54356999)(14454004)(53936002)(2501003)(6506006)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR84MB0229;
	H:CS1PR84MB0309.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hp.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hernan_gutierrez@hp.com; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2017 21:27:52.9509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca7981a2-785a-463d-b82a-3db87dfc3ce6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR84MB0229
Subject: Can yocto build a QEMU image to run under MS Windows ?
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
X-List-Received-Date: Wed, 06 Sep 2017 23:02:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CS1PR84MB03093A584ACCD5C2F93D38A299970CS1PR84MB0309NAMP_"

--_000_CS1PR84MB03093A584ACCD5C2F93D38A299970CS1PR84MB0309NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkFzIHRoZSBzdWJqZWN0IHN0YXRlcywgSSBhbSBsb29raW5nIHRvIHNlZSBpZiBZb2N0
byBjYW4gYnVpbGQgYSBxZW11IGltYWdlIHRvIHJ1biB1bmRlciBNUyB3aW5kb3dzLg0KDQpJIGhh
dmUgdXNlZCB0aGUgc3RhbmRhcmQgcWVtdWFybS9xZW11YXJtNjQgTUFDSElORVMgYXMgZGVmaW5l
ZCBpbiBkZWZhdWx0IHJlY2lwZXMgdG8gcnVuIHVuZGVyIGxpbnV4LCBidXQgSSB3b25kZXIgaWYg
dGhlcmUgaXMgYSByZWNpcGUgdG8gYnVpbGQgcWVtdSB3aGljaCBJIGNhbiBkZXBsb3kgdG8gTVMg
d2luZG93cyBib3hlcy4NCg0KQW55IHBvaW50ZXJzIHdpbGwgaGVscC4NCg0KVGhhbmtzIQ0KDQot
LUhlcm5hbiBHdXRpZXJyZXoNCg==

--_000_CS1PR84MB03093A584ACCD5C2F93D38A299970CS1PR84MB0309NAMP_
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
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjsN
Cgljb2xvcjpibGFjazt9DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1w
cmlvcml0eTo5OTsNCgljb2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0K
YTp2aXNpdGVkLCBzcGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0
eTo5OTsNCgljb2xvcjpwdXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwDQoJ
e21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJn
aW4tcmlnaHQ6MGluOw0KCW1zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0
OjBpbjsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4i
LHNlcmlmOw0KCWNvbG9yOmJsYWNrO30NCnNwYW4uZ21haWwtaG9lbnpiDQoJe21zby1zdHlsZS1u
YW1lOmdtYWlsLWhvZW56Yjt9DQpzcGFuLkVtYWlsU3R5bGUxOQ0KCXttc28tc3R5bGUtdHlwZTpw
ZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xv
cjojMUY0OTdEO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5
Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4g
MTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rp
b24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDld
Pjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0K
PC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91
dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpz
aGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGJnY29sb3I9Indo
aXRlIiBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBsZSI+DQo8ZGl2IGNsYXNz
PSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2Nv
bG9yOiMxRjQ5N0QiPkhpLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGli
cmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBw
dDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3
RCI+QXMgdGhlIHN1YmplY3Qgc3RhdGVzLCBJIGFtIGxvb2tpbmcgdG8gc2VlIGlmIFlvY3RvIGNh
biBidWlsZCBhIHFlbXUgaW1hZ2UgdG8gcnVuIHVuZGVyIE1TIHdpbmRvd3MuPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMx
RjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkm
cXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5JIGhhdmUgdXNlZCB0aGUgc3RhbmRhcmQg
cWVtdWFybS9xZW11YXJtNjQgTUFDSElORVMgYXMgZGVmaW5lZCBpbiBkZWZhdWx0IHJlY2lwZXMg
dG8gcnVuIHVuZGVyIGxpbnV4LCBidXQgSSB3b25kZXIgaWYgdGhlcmUgaXMgYSByZWNpcGUgdG8g
YnVpbGQgcWVtdSB3aGljaCBJDQogY2FuIGRlcGxveSB0byBNUyB3aW5kb3dzIGJveGVzLjxvOnA+
PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtj
b2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtD
YWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+QW55IHBvaW50ZXJzIHdpbGwg
aGVscC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNh
bnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPlRoYW5rcyE8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2Vy
aWY7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NvdXJpZXIgTmV3JnF1b3Q7O2NvbG9yOiMxRjQ5N0QiPi0tSGVybmFuIEd1dGll
cnJlejxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NvdXJpZXIgTmV3JnF1b3Q7
O2NvbG9yOiMxRjQ5N0QiPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8
L2JvZHk+DQo8L2h0bWw+DQo=

--_000_CS1PR84MB03093A584ACCD5C2F93D38A299970CS1PR84MB0309NAMP_--
