Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C78CE00BB7; Tue, 23 Apr 2019 19:49:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.hoogeveen[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.72.32 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 10809 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Apr 2019 19:49:47 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072032.outbound.protection.outlook.com [40.92.72.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6274CE00B81
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 19:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=/1qj8drtbnqDeE4ddgQA0G/KPm0ibqbOLU08+ctZlbY=;
	b=CzYoM8KHcezThQ9hVarE42etx89bmUV+f7xfSsoFltJ0+fs15NcvvkJ8L3TZkOHnI2OBEcyh5iq3+BoHDSD/WTgTcrRGb/CaKyjVe7g0MCu8CsY8yU6f63GGKKqNjM4B7szQjGep5JnVhVBlRD1ztXcZ3Z86t/NVu/FHRFL2XXL1qKZhmbDB4TwV5ocjU3V38SyZlc4qVGYLq8Zj5k2G/giJ0TZdT8dIKvBAvDzfHpgxso/xAfCBAPOHwOJVaxbsguMXJqCRTWgxkacyyTuvSCvFtehfJIweiMstwW++yyRVuoxLOlmsw9GgIi0dfbljbvmg3lSZgMIWUigsydM8zg==
Received: from VE1EUR03FT015.eop-EUR03.prod.protection.outlook.com
	(10.152.18.59) by VE1EUR03HT239.eop-EUR03.prod.protection.outlook.com
	(10.152.18.188) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1771.16;
	Tue, 23 Apr 2019 10:17:51 +0000
Received: from VI1PR0701MB2527.eurprd07.prod.outlook.com (10.152.18.57) by
	VE1EUR03FT015.mail.protection.outlook.com (10.152.18.176) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1771.16 via Frontend Transport; Tue, 23 Apr 2019 10:17:51 +0000
Received: from VI1PR0701MB2527.eurprd07.prod.outlook.com
	([fe80::9a5:3a18:14aa:381e]) by
	VI1PR0701MB2527.eurprd07.prod.outlook.com
	([fe80::9a5:3a18:14aa:381e%5]) with mapi id 15.20.1835.010;
	Tue, 23 Apr 2019 10:17:51 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: Yocto discussion list <yocto@yoctoproject.org>, JH <jupiter.hce@gmail.com>
Thread-Topic: [yocto] What is the right SRC_URI syntax for git@bitbucket.org?
Thread-Index: AQHU9xSRmPlBynJ7cEW0+ldhKhfGjaZFzDCAgAPBOwA=
Date: Tue, 23 Apr 2019 10:17:51 +0000
Message-ID: <VI1PR0701MB2527360E293EACEB7ABC707D95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
References: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
	<CAA=hcWRfFKhQzqS8yKRyth14dWN=VPQqhXejbew01EnOtUtAJg@mail.gmail.com>
In-Reply-To: <CAA=hcWRfFKhQzqS8yKRyth14dWN=VPQqhXejbew01EnOtUtAJg@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5P190CA0023.EURP190.PROD.OUTLOOK.COM
	(2603:10a6:206:14::36) To VI1PR0701MB2527.eurprd07.prod.outlook.com
	(2603:10a6:800:6f::12)
x-incomingtopheadermarker: OriginalChecksum:9276A886D3D30AFDD66664BC067CF4AC3252BB6DAFA7061C296EF879A0B8655D;
	UpperCasedChecksum:DCC834C80651D2B6BDD124B48A44DE5E79F16F088E82D734773068DBD29DF769;
	SizeAsReceived:7612; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-readdle-message-id: af94e785-ac24-417a-8270-7731c20b1489@Spark
x-tmn: [GhwNu9gbDPggYSjscWQ5qwHeChai1elr]
x-microsoft-original-message-id: <af94e785-ac24-417a-8270-7731c20b1489@Spark>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:VE1EUR03HT239; 
x-ms-traffictypediagnostic: VE1EUR03HT239:
x-microsoft-antispam-message-info: yZuuk5okXy2TItVezsfcY798yj7xipFB0V6PXZwYW677ycCb7yacobpyN3IORvDAAIPn5oDna4LMYKYLDy6Jp7riFAhWJzKPNP039Nb0ESkW3BGAWxjbtga6/V9diRqZJJXhQNtWS3x6EGMJq0fI+PSbF8SX023TcreemAOARvnQn8eG9zyVzGuigoJAu/AO
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 614049d2-37c0-48a4-5400-08d6c7d4f0cc
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2019 10:17:51.9131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT239
Subject: Re: What is the right SRC_URI syntax for git@bitbucket.org?
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
X-List-Received-Date: Wed, 24 Apr 2019 02:49:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0701MB2527360E293EACEB7ABC707D95230VI1PR0701MB2527_"

--_000_VI1PR0701MB2527360E293EACEB7ABC707D95230VI1PR0701MB2527_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNClRoaXMgd29ya3MgZm9yIG1lLiBJJ3ZlIGhhdmUgc2V0dXAgc3NoIG15IGlkZW50aXR5
IGZvciBCaXRidWNrZXQuDQoNCkkgdXNlIHRoaXMgaW4gbXkgcmVjaXBlczoNCg0KU1JDX1VSSSA9
ICJnaXRzbTovL2dpdEBiaXRidWNrZXQub3JnLzxhY2NvdW50X25hbWU+LzxyZXBvc2l0b3J5DQpu
YW1lPi5naXQ7cHJvdG9jb2w9c3NoO2JyYW5jaD0ke0JSQU5DSH0iDQoNCkNoZWVycywNCkVyaWsN
Ck9uIDIxIEFwciAyMDE5LCAwMjo1OCArMDIwMCwgSkggPGp1cGl0ZXIuaGNlQGdtYWlsLmNvbT4s
IHdyb3RlOg0KSGksDQoNCkNvdWxkIHNvbWVvbmUga2luZGx5IGNsYXJpZnkgd2hhdCBpcyB0aGUg
c3ludGF4IHRvIGFjY2VzcyBnaXQgc291cmNlDQpmcm9tIGJpdGJ1Y2tldC5vcmc/IEkgdHJpZWQg
Zm9sbG93aW5nIGRpZmZlcmVudCBwYXR0ZXJucywgbm90aGluZw0Kd29ya3M6DQoNClNSQ19VUkkg
PSAiZ2l0Oi8vYml0YnVja2V0Lm9yZy88YWNjb3VudCBuYW1lPi88cmVwb3NpdG9yeQ0KbmFtZT47
cHJvdG9jb2w9aHR0cDticmFuY2g9JHtCUkFOQ0h9Ig0KDQpTUkNfVVJJID0gImdpdDovLzx1c2Vy
bmFtZT5AYml0YnVja2V0Lm9yZy88YWNjb3VudCBuYW1lPi88cmVwb3NpdG9yeQ0KbmFtZT4uZ2l0
O3Byb3RvY29sPXNzaCI7YnJhbmNoPSR7QlJBTkNIfSINCg0KVGhhbmsgeW91Lg0KDQpLaW5kIHJl
Z2FyZHMsDQoNCi0ganVwaXRlcg0KT24gNC8yMC8xOSwgSkggPGp1cGl0ZXIuaGNlQGdtYWlsLmNv
bT4gd3JvdGU6DQpIaSwNCg0KU29ycnkgZm9yIGEgbmV3IHN0YXJ0ZXIgcXVlc3Rpb25zLCBJIHNl
YXJjaGVkIEludGVybmV0LCB0aGVyZSBhcmUgYQ0KZmV3IGV4YW1wbGVzIHRvIHNldCB1cDoNCg0K
U1JDX1VSSSA9ICJnaXQ6Ly88dXNlcm5hbWU+QGJpdGJ1Y2tldC5vcmcvPGFjY291bnQgbmFtZT4v
PHJlcG9zaXRvcnkNCm5hbWU+LmdpdDtwcm90b2NvbD1zc2giO2JyYW5jaD0ke0JSQU5DSH0iDQoN
Ck5vdCBvbmx5IHRoYXQgZG9lcyBub3Qgd29yaywgSSBoYXZlIHNldCB1cCB0aGUgcHVibGljIGtl
eSB0byBhY2Nlc3MNCnRoZSBnaXQgYml0YnVja2V0IHJlcG9zaXRvcnk6DQoNCiQgc3NoIC12IGdp
dEBiaXRidWNrZXQub3JnDQoNClRoZSBZb2N0byBhbHNvIGNvbXBsYWluZWQgU1JDUkVWLCBmb2xs
b3dpbmcgc29tZSBibG9nIHRvIGFkZCB0aGUNClNSQ1JFViA9ICIke0FVVE9SRVZ9IiB0aGF0IG5v
dCB3b3JrIGVpdGhlci4NCg0KVGhhbmsgeW91Lg0KDQpLaW5kIHJlZ2FyZHMsDQoNCi0gamgNCg0K
LS0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0
byBtYWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vZXVyMDMuc2Fm
ZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxpc3RzLnlv
Y3RvcHJvamVjdC5vcmclMkZsaXN0aW5mbyUyRnlvY3RvJmFtcDtkYXRhPTAyJTdDMDElN0MlN0M1
ZTk3MGM2MjFjMmU0YTBmMzQ5MTA4ZDZjNWY0NzM3NyU3Qzg0ZGY5ZTdmZTlmNjQwYWZiNDM1YWFh
YWFhYWFhYWFhJTdDMSU3QzAlN0M2MzY5MTQwNTEwMjQ1NzE4MDkmYW1wO3NkYXRhPUNrOWN6UnIw
MlFzQ0lwSktiUnRKVG1jT0FnUU1QZzY0djdrbTklMkZBdjNJayUzRCZhbXA7cmVzZXJ2ZWQ9MA0K

--_000_VI1PR0701MB2527360E293EACEB7ABC707D95230VI1PR0701MB2527_
Content-Type: text/html; charset="utf-8"
Content-ID: <D583965B4A6C174AB87F4A772CD7E9C4@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiPg0KPGhlYWQ+DQo8bWV0
YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11
dGYtOCI+DQo8dGl0bGU+PC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBuYW1lPSJtZXNz
YWdlQm9keVNlY3Rpb24iIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiAtYXBw
bGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsIHNhbnMtc2VyaWY7Ij4NCkhpLDwvZGl2Pg0K
PGRpdiBuYW1lPSJtZXNzYWdlU2lnbmF0dXJlU2VjdGlvbiIgc3R5bGU9ImZvbnQtc2l6ZTogMTRw
eDsgZm9udC1mYW1pbHk6IC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgc2Fucy1z
ZXJpZjsiPg0KPGJyPg0KVGhpcyB3b3JrcyBmb3IgbWUuIEkndmUgaGF2ZSBzZXR1cCBzc2ggbXkg
aWRlbnRpdHkgZm9yIEJpdGJ1Y2tldC4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkkgdXNlIHRo
aXMgaW4gbXkgcmVjaXBlczo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlNSQ19VUkkg
PSAmcXVvdDtnaXRzbTovL2dpdEBiaXRidWNrZXQub3JnLyZsdDthY2NvdW50X25hbWUmZ3Q7LyZs
dDtyZXBvc2l0b3J5PGJyPg0KbmFtZSZndDsuZ2l0O3Byb3RvY29sPXNzaDticmFuY2g9JHtCUkFO
Q0h9JnF1b3Q7PGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5DaGVlcnMsPC9k
aXY+DQo8ZGl2PkVyaWs8L2Rpdj4NCjwvZGl2Pg0KPGRpdiBuYW1lPSJtZXNzYWdlUmVwbHlTZWN0
aW9uIiBzdHlsZT0iZm9udC1zaXplOiAxNHB4OyBmb250LWZhbWlseTogLWFwcGxlLXN5c3RlbSwg
QmxpbmtNYWNTeXN0ZW1Gb250LCBzYW5zLXNlcmlmOyI+DQpPbiAyMSBBcHIgMjAxOSwgMDI6NTgg
JiM0MzswMjAwLCBKSCAmbHQ7anVwaXRlci5oY2VAZ21haWwuY29tJmd0Oywgd3JvdGU6PGJyPg0K
PGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgc3R5bGU9Im1hcmdpbjogNXB4IDVweDsgcGFkZGluZy1s
ZWZ0OiAxMHB4OyBib3JkZXItbGVmdDogdGhpbiBzb2xpZCAjMWFiYzljOyI+DQpIaSw8YnI+DQo8
YnI+DQpDb3VsZCBzb21lb25lIGtpbmRseSBjbGFyaWZ5IHdoYXQgaXMgdGhlIHN5bnRheCB0byBh
Y2Nlc3MgZ2l0IHNvdXJjZTxicj4NCmZyb20gYml0YnVja2V0Lm9yZz8gSSB0cmllZCBmb2xsb3dp
bmcgZGlmZmVyZW50IHBhdHRlcm5zLCBub3RoaW5nPGJyPg0Kd29ya3M6PGJyPg0KPGJyPg0KU1JD
X1VSSSA9ICZxdW90O2dpdDovL2JpdGJ1Y2tldC5vcmcvJmx0O2FjY291bnQgbmFtZSZndDsvJmx0
O3JlcG9zaXRvcnk8YnI+DQpuYW1lJmd0Oztwcm90b2NvbD1odHRwO2JyYW5jaD0ke0JSQU5DSH0m
cXVvdDs8YnI+DQo8YnI+DQpTUkNfVVJJID0gJnF1b3Q7Z2l0Oi8vJmx0O3VzZXJuYW1lJmd0O0Bi
aXRidWNrZXQub3JnLyZsdDthY2NvdW50IG5hbWUmZ3Q7LyZsdDtyZXBvc2l0b3J5PGJyPg0KbmFt
ZSZndDsuZ2l0O3Byb3RvY29sPXNzaCZxdW90OzticmFuY2g9JHtCUkFOQ0h9JnF1b3Q7PGJyPg0K
PGJyPg0KVGhhbmsgeW91Ljxicj4NCjxicj4NCktpbmQgcmVnYXJkcyw8YnI+DQo8YnI+DQotIGp1
cGl0ZXI8YnI+DQpPbiA0LzIwLzE5LCBKSCAmbHQ7anVwaXRlci5oY2VAZ21haWwuY29tJmd0OyB3
cm90ZTo8YnI+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOiA1cHggNXB4
OyBwYWRkaW5nLWxlZnQ6IDEwcHg7IGJvcmRlci1sZWZ0OiB0aGluIHNvbGlkICNlNjdlMjI7Ij4N
CkhpLDxicj4NCjxicj4NClNvcnJ5IGZvciBhIG5ldyBzdGFydGVyIHF1ZXN0aW9ucywgSSBzZWFy
Y2hlZCBJbnRlcm5ldCwgdGhlcmUgYXJlIGE8YnI+DQpmZXcgZXhhbXBsZXMgdG8gc2V0IHVwOjxi
cj4NCjxicj4NClNSQ19VUkkgPSAmcXVvdDtnaXQ6Ly8mbHQ7dXNlcm5hbWUmZ3Q7QGJpdGJ1Y2tl
dC5vcmcvJmx0O2FjY291bnQgbmFtZSZndDsvJmx0O3JlcG9zaXRvcnk8YnI+DQpuYW1lJmd0Oy5n
aXQ7cHJvdG9jb2w9c3NoJnF1b3Q7O2JyYW5jaD0ke0JSQU5DSH0mcXVvdDs8YnI+DQo8YnI+DQpO
b3Qgb25seSB0aGF0IGRvZXMgbm90IHdvcmssIEkgaGF2ZSBzZXQgdXAgdGhlIHB1YmxpYyBrZXkg
dG8gYWNjZXNzPGJyPg0KdGhlIGdpdCBiaXRidWNrZXQgcmVwb3NpdG9yeTo8YnI+DQo8YnI+DQok
IHNzaCAtdiBnaXRAYml0YnVja2V0Lm9yZzxicj4NCjxicj4NClRoZSBZb2N0byBhbHNvIGNvbXBs
YWluZWQgU1JDUkVWLCBmb2xsb3dpbmcgc29tZSBibG9nIHRvIGFkZCB0aGU8YnI+DQpTUkNSRVYg
PSAmcXVvdDske0FVVE9SRVZ9JnF1b3Q7IHRoYXQgbm90IHdvcmsgZWl0aGVyLjxicj4NCjxicj4N
ClRoYW5rIHlvdS48YnI+DQo8YnI+DQpLaW5kIHJlZ2FyZHMsPGJyPg0KPGJyPg0KLSBqaDxicj4N
Cjxicj4NCjwvYmxvY2txdW90ZT4NCi0tPGJyPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX188YnI+DQp5b2N0byBtYWlsaW5nIGxpc3Q8YnI+DQp5b2N0b0B5
b2N0b3Byb2plY3Qub3JnPGJyPg0KaHR0cHM6Ly9ldXIwMy5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyUyRmxp
c3RpbmZvJTJGeW9jdG8mYW1wO2FtcDtkYXRhPTAyJTdDMDElN0MlN0M1ZTk3MGM2MjFjMmU0YTBm
MzQ5MTA4ZDZjNWY0NzM3NyU3Qzg0ZGY5ZTdmZTlmNjQwYWZiNDM1YWFhYWFhYWFhYWFhJTdDMSU3
QzAlN0M2MzY5MTQwNTEwMjQ1NzE4MDkmYW1wO2FtcDtzZGF0YT1DazljelJyMDJRc0NJcEpLYlJ0
SlRtY09BZ1FNUGc2NHY3a205JTJGQXYzSWslM0QmYW1wO2FtcDtyZXNlcnZlZD0wPGJyPg0KPC9i
bG9ja3F1b3RlPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_VI1PR0701MB2527360E293EACEB7ABC707D95230VI1PR0701MB2527_--
