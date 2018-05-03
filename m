Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1EEDE00C02; Thu,  3 May 2018 09:02:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0103.outbound.protection.outlook.com [104.47.2.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B476AE008D2
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 09:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=9ns+3rw/NZee5YlFutI6fL+q49KtrjJQacy7CI1JMN0=;
	b=cURGlKKviotis+++u43XlFcmMfZGNdqxPL/atg1weJL8QaKl2Yx3jmcGs1Er3t20oaba7yOrT6XVrnm5YtvaxsEjCm9hyDWaVI8W7n74+SppnXPSzU7HCXMS1ck1/oncuZ7B4zYya0zV+l3RvG8D1r/PJJRTW2kHYpT0YYmP++Y=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0431.EURP192.PROD.OUTLOOK.COM (52.134.28.155) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.23; Thu, 3 May 2018 14:27:46 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::a060:8fd0:4c92:6910]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::a060:8fd0:4c92:6910%17]) with mapi id 15.20.0715.024;
	Thu, 3 May 2018 14:27:46 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PXE booting ISO image fails with message "Waiting for removable
	media..."
Thread-Index: AdPi6MVQ4KHRkI5yQQqVaf+N80rssg==
Date: Thu, 3 May 2018 14:27:46 +0000
Message-ID: <VI1P192MB01430B16A66D217CB44829098D870@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0431;
	7:M1dSXpyAm14mLmhKnyOczJuR2M6DaIE0KEW99hyv0L+3YpD4dB5bs/LsALXuL0LcVThNqWJr0n3B4NmoI0qsT+JX37wdbR/2t9BbWLv7wo/ZJ6oC63mAAn4XCpMcmDpr4cIFUrCE4PEOvtuZAKv6YJkK3aOEHq2ENbwe0FVJoX+NePBCPqHuiwc+ntYxQVXh8+AxoguNTUFB3ehnnlxpf98IT2dS9nrKg/wD26MfiheMkWoQGWqR5rhOYyxVFnMr
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0431; 
x-ms-traffictypediagnostic: VI1P192MB0431:
x-microsoft-antispam-prvs: <VI1P192MB04314CA9D0FE51414216D52F8D870@VI1P192MB0431.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3231254)(944501410)(52105095)(3002001)(93006095)(93001095)(10201501046)(6041310)(2016111802025)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0431; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0431; 
x-forefront-prvs: 066153096A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39830400003)(366004)(39380400002)(376002)(346002)(199004)(189003)(10710500007)(3660700001)(6506007)(2501003)(186003)(486006)(7736002)(54896002)(2420400007)(102836004)(966005)(8936002)(9326002)(7696005)(97736004)(99286004)(53936002)(26005)(6306002)(478600001)(2900100001)(68736007)(74316002)(14454004)(9686003)(3280700002)(5250100002)(236005)(86362001)(55016002)(2351001)(15650500001)(33656002)(606006)(5640700003)(6116002)(790700001)(6916009)(7110500001)(25786009)(2906002)(316002)(1730700003)(81166006)(81156014)(105586002)(5630700001)(8676002)(106356001)(5660300001)(6436002)(44832011)(476003)(3846002)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0431;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: v68Ql6xNxaYobRp2Le/Gz+rIAx07l4hp76EnMZK8VJfNLV9mHRyAwMWvnY+uIqMz6oXvcAJqwq1189uvbnN47FpkCxTabVgSx8J7weeZT1UWE3HcQWbOESqCBjQn16wugRTkDcb9Xfk9s0u+QMzpJfaQI1oP8Qv7Rky6mNUD4jUHX84O4o+0QZ4oOfEw8NGP
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 61c5f0a8-5323-4211-01cb-08d5b1020aa5
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61c5f0a8-5323-4211-01cb-08d5b1020aa5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2018 14:27:46.8336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0431
Subject: PXE booting ISO image fails with message "Waiting for removable media..."
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
X-List-Received-Date: Thu, 03 May 2018 16:02:12 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB01430B16A66D217CB44829098D870VI1P192MB0143EURP_"

--_000_VI1P192MB01430B16A66D217CB44829098D870VI1P192MB0143EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCldlIHdhbnQgdG8gZGVwbG95IGltYWdlIGNyZWF0ZWQgd2l0aCBZb2N0byAoUm9ja28p
IHZpYSBQWEUuDQpUaGUgdGFyZ2V0IGJvYXJkIGlzIGEgSW50ZWwtYmFzZWQgU0JDIChBQUVPTiBH
RU5FIEJUMDUpLg0KDQpBdCBmaXJzdCwgd2UgdHJpZWQgd2l0aCBhIElTTyBmcm9tIEFyY2hsaW51
eCBhbmQgdGhlIHRhcmdldC1ib2FyZCBzdWNjZXNzZnVsbHkgYm9vdGVkLg0KDQpUaGVuIHdlIGNy
ZWF0ZSBhIElTTyB1c2luZyBZb2N0byBidXQgYm9vdCBoYW5ncyB3aXRoIGEgbWVzc2FnZSDigJxX
YWl0aW5nIGZvciByZW1vdmFibGUgbWVkaWEgLi4u4oCdLg0KR29vZ2xpbmcgdGhpcyBtZXNzYWdl
IHBvaW50cyBtZSB0byB0aGlzIHBvc3Q6IGh0dHA6Ly90aHJlYWQuZ21hbmUub3JnL2dtYW5lLmxp
bnV4LmVtYmVkZGVkLnlvY3RvLmdlbmVyYWwvMjA2MTEgd2hpY2ggcmVsYXRlcyBleGFjdGx5IHRo
ZSBzYW1lIHByb2JsZW0sIGV4cGxhaW4gd2h5IHRoZSBpc3N1ZSByYWlzZXMsIGdpdmVzIGFuIGlu
ZGljYXRpb24gdG8gaG93IHRvIGZpeCAuLiBhbmQgdGhhdOKAmXMgYWxsIOKYuQ0KDQpTbyBhdCB0
aGlzIHBvaW50LCB3ZSBrbm93IHRoYXQgdGhlIHByb2JsZW0gY29tZXMgZnJvbSB0aGUgL3JlY2lw
ZXMtY29yZS9pbml0cmRzY3JpcHRzL2ZpbGVzL2luaXQtbGl2ZS5zaCBmaWxlLg0KSXQgc2VlbXMg
c2VhcmNoaW5nIGZvciBhbiAvZGV2L3NkeCBzaG91bGQgYmUgcHJvdGVjdGVkIGJ5IGEgdGltZW91
dCBzZXQgYnkgZGVmYXVsdCB0byAzMCBzZWNzIGJ1dCBkdXJpbmcgb3VyIHRyaWFscywgbm8gdGlt
ZW91dCBzZWVtcyB0byBleGlzdC4NCg0KV2hhdCB3ZSBkbyBub3QgdW5kZXJzdGFuZCwgaXMgaG93
IHRvIGhpZ2hsaWdodCB0aGUgZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGUgWW9jdG8tYmFzZWQgYW5k
IHRoZSBBcmNobGludXggSVNPIGZpbGVzIHNvIHRoYXQgd2UgY2FuIOKAnHVuYmxvY2vigJ0gdGhl
IGJvb3QgdXNpbmcgdGhlIFlvY3RvLWJhc2VkIElTTyBmaWxlLg0KDQpJcyB0aGUgc29tZW9uZSBo
ZXJlIGhvdyBjb3VsZCBoZWxwPw0KDQpUaGFua3MNCg0KVmluY2VudA0KDQo=

--_000_VI1P192MB01430B16A66D217CB44829098D870VI1P192MB0143EURP_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCglt
c28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJ
e21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1
bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1z
dHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpwdXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVy
bGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21w
b3NlOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3Rl
eHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJbXNv
LWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVM7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEy
LjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3MC44NXB0IDcwLjg1cHQgNzAuODVwdCA3MC44NXB0O30N
CmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0t
W2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRt
YXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4N
CjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRh
PSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJv
ZHkgbGFuZz0iRU4tR0IiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0i
V29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhpLDxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5XZSB3YW50IHRvIGRlcGxveSBpbWFnZSBjcmVhdGVkIHdpdGggWW9jdG8gKFJvY2tv
KSB2aWEgUFhFLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+VGhlIHRhcmdl
dCBib2FyZCBpcyBhIEludGVsLWJhc2VkIFNCQyAoQUFFT04gR0VORSBCVDA1KS48bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+QXQgZmlyc3QsIHdlIHRyaWVkIHdpdGggYSBJU08gZnJvbSBBcmNobGlu
dXggYW5kIHRoZSB0YXJnZXQtYm9hcmQgc3VjY2Vzc2Z1bGx5IGJvb3RlZC48bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+VGhlbiB3ZSBjcmVhdGUgYSBJU08gdXNpbmcgWW9jdG8gYnV0IGJvb3QgaGFu
Z3Mgd2l0aCBhIG1lc3NhZ2Ug4oCcV2FpdGluZyBmb3IgcmVtb3ZhYmxlIG1lZGlhIC4uLuKAnS48
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkdvb2dsaW5nIHRoaXMgbWVzc2Fn
ZSBwb2ludHMgbWUgdG8gdGhpcyBwb3N0OiA8YSBocmVmPSJodHRwOi8vdGhyZWFkLmdtYW5lLm9y
Zy9nbWFuZS5saW51eC5lbWJlZGRlZC55b2N0by5nZW5lcmFsLzIwNjExIj4NCmh0dHA6Ly90aHJl
YWQuZ21hbmUub3JnL2dtYW5lLmxpbnV4LmVtYmVkZGVkLnlvY3RvLmdlbmVyYWwvMjA2MTE8L2E+
IHdoaWNoIHJlbGF0ZXMgZXhhY3RseSB0aGUgc2FtZSBwcm9ibGVtLCBleHBsYWluIHdoeSB0aGUg
aXNzdWUgcmFpc2VzLCBnaXZlcyBhbiBpbmRpY2F0aW9uIHRvIGhvdyB0byBmaXggLi4gYW5kIHRo
YXTigJlzIGFsbA0KPHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O1NlZ29lIFVJIEVtb2pp
JnF1b3Q7LHNhbnMtc2VyaWYiPuKYuTwvc3Bhbj48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+U28g
YXQgdGhpcyBwb2ludCwgd2Uga25vdyB0aGF0IHRoZSBwcm9ibGVtIGNvbWVzIGZyb20gdGhlIC9y
ZWNpcGVzLWNvcmUvaW5pdHJkc2NyaXB0cy9maWxlcy9pbml0LWxpdmUuc2ggZmlsZS48bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkl0IHNlZW1zIHNlYXJjaGluZyBmb3IgYW4g
L2Rldi9zZHggc2hvdWxkIGJlIHByb3RlY3RlZCBieSBhIHRpbWVvdXQgc2V0IGJ5IGRlZmF1bHQg
dG8gMzAgc2VjcyBidXQgZHVyaW5nIG91ciB0cmlhbHMsIG5vIHRpbWVvdXQgc2VlbXMgdG8gZXhp
c3QuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPldoYXQgd2UgZG8gbm90IHVuZGVyc3RhbmQsIGlz
IGhvdyB0byBoaWdobGlnaHQgdGhlIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIFlvY3RvLWJhc2Vk
IGFuZCB0aGUgQXJjaGxpbnV4IElTTyBmaWxlcyBzbyB0aGF0IHdlIGNhbiDigJx1bmJsb2Nr4oCd
IHRoZSBib290IHVzaW5nIHRoZSBZb2N0by1iYXNlZCBJU08gZmlsZS48bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+SXMgdGhlIHNvbWVvbmUgaGVyZSBob3cgY291bGQgaGVscD88bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+VGhhbmtzPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlZpbmNlbnQ8c3BhbiBz
dHlsZT0ibXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tR0IiPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Jv
ZHk+DQo8L2h0bWw+DQo=

--_000_VI1P192MB01430B16A66D217CB44829098D870VI1P192MB0143EURP_--
