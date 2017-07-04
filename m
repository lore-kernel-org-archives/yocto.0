Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A075CE00BC2; Tue,  4 Jul 2017 04:38:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.93 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1968 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Jul 2017 04:38:46 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0093.outbound.protection.outlook.com [104.47.42.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B2AE00AE4
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=/wh/emw21xII3uuJu+xyjRp1BkaMeMQr38IHJC9xS1Q=;
	b=omDSS1cpdyP3SLOpVGqj3eorrR6sGM+dSzTHSokFDPPu0t5XeBhHSD/DR2cDkCMGnqozf4L+CdhovAvEwSswxgqOapWqqwtGn7qpFmXmWqD65fcQaVrb3o0h0+0Pgp+yv6KVnQJu4jFzCBhXhTck264mHK75ruXI1wDCOVlSZKQ=
Received: from DM3PR07MB2233.namprd07.prod.outlook.com (10.164.33.143) by
	DM3PR07MB2236.namprd07.prod.outlook.com (10.164.33.146) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1220.11; Tue, 4 Jul 2017 11:05:56 +0000
Received: from DM3PR07MB2233.namprd07.prod.outlook.com ([10.164.33.143]) by
	DM3PR07MB2233.namprd07.prod.outlook.com ([10.164.33.143]) with mapi id
	15.01.1220.018; Tue, 4 Jul 2017 11:05:56 +0000
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: Prasoon Kumar <prasoonkumar1295@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] File system optimization in yocto
Thread-Index: AQHS9Aqb4y1f1ZECNkqODkQgvhsuOaJDgmFA
Date: Tue, 4 Jul 2017 11:05:56 +0000
Message-ID: <DM3PR07MB2233C80B575353483140138396D70@DM3PR07MB2233.namprd07.prod.outlook.com>
References: <CAGAEfx7w9M+pdtMJO75yo1bssGcM-HFmh=+iN4zs3u2ycDJhHA@mail.gmail.com>
	<CAGAEfx7M8oFxJ=xPFTbTFw9zWmOVaQjOEBL_eRoJKVp5Hmq2qQ@mail.gmail.com>
	<CAGAEfx7NuzmNw5DNmUOtZwdSk9Wdq6Bx53pO7oAZ4hYKEH18EA@mail.gmail.com>
	<CAGAEfx4hdcEvvqP8yEouESG0sWv3f6N=OK6Jrcm6BdZGNWpV=Q@mail.gmail.com>
	<CAGAEfx5t9=0VFkg0J-zSpOUVE6t4ZOd8=PJbxzw-ANusAir3cw@mail.gmail.com>
	<CAGAEfx48ZAG4TDS2T+uE1_VoJfqL5SskG5r6cTAd-=GHFa-j_w@mail.gmail.com>
	<CAGAEfx5o3w1i_p4+Xf9Dqvsh-WM18=JhyadeLcM4V0pkQOmHgw@mail.gmail.com>
	<CAGAEfx5S8bz-F+eJTD6esHg3FV17vOcufM-42Q5__LpDyKg4qA@mail.gmail.com>
	<CAGAEfx7aw2ZHLvKAg7RN0EnTXz_BoQB-bB-S3bsRi_vH+AtW-g@mail.gmail.com>
	<CAGAEfx6MQLgWx=_ztMLMDos9uydADYNwJMBQocG6v8Qdu=0Xmg@mail.gmail.com>
	<CAGAEfx6ncs54q2ZFBUd_9PVZZsaxt5921SsesG0J9-RAWSvTnA@mail.gmail.com>
In-Reply-To: <CAGAEfx6ncs54q2ZFBUd_9PVZZsaxt5921SsesG0J9-RAWSvTnA@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Joel.Esponde@Honeywell.com; 
x-originating-ip: [199.64.75.169]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3PR07MB2236;
	20:dZI0OP8jpA7IU5KTWe6sxjwOmSnxTEayT0slE4Xn3dtpfDhEtWPK5Ag94zhG+PeZ0O7EwGnLPelkFj2P+2EDYQDXYKYj08wec/v9XtNjyJa3Rek72WZryZOWzgRtR+tyzFXjB1i20NqYoYTUkiZzeSJDEd0LhfhjnPk0cq28yiwy+W6iFeTGdeaLwTYU6OF54VSUyi7XdTPWhG45bMzMBJcQMtSt76vP3013cvRFfR3XtKRw8nT6hJb6mAhkv+J6
x-ms-office365-filtering-correlation-id: 551b5319-0371-41ca-bff5-08d4c2cca50e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(48565401081)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:DM3PR07MB2236; 
x-ms-traffictypediagnostic: DM3PR07MB2236:
x-recptdomain: NotTLSDomain
x-atp-bypass: TRUE
x-microsoft-antispam-prvs: <DM3PR07MB2236045A0FF463C627EA039996D70@DM3PR07MB2236.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(151999592597050)(26388249023172)(236129657087228)(148574349560750)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(10201501046)(100000703101)(100105400095)(3002001)(93006095)(93001095)(6055026)(6041248)(20161123555025)(20161123560025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123564025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM3PR07MB2236; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM3PR07MB2236; 
x-forefront-prvs: 0358535363
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39410400002)(39450400003)(39400400002)(39860400002)(39840400002)(39850400002)(93886004)(81156014)(102836003)(81166006)(72206003)(53936002)(25786009)(8676002)(6436002)(3660700001)(9686003)(2906002)(478600001)(38730400002)(54896002)(189998001)(3846002)(6116002)(6306002)(790700001)(6246003)(55016002)(77096006)(66066001)(2501003)(39060400002)(2900100001)(99286003)(33656002)(97736004)(76176999)(50986999)(54356999)(5660300001)(6506006)(3280700002)(7696004)(8936002)(2950100002)(7736002)(14454004)(74316002)(229853002)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM3PR07MB2236;
	H:DM3PR07MB2233.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
received-spf: None (protection.outlook.com: Honeywell.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2017 11:05:56.2255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR07MB2236
Subject: Re: File system optimization in yocto
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
X-List-Received-Date: Tue, 04 Jul 2017 11:38:49 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DM3PR07MB2233C80B575353483140138396D70DM3PR07MB2233namp_"

--_000_DM3PR07MB2233C80B575353483140138396D70DM3PR07MB2233namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUHJhc29vbiwNCg0KV2hhdCBkbyB5b3UgbWVhbiBieSBmaWxlIHN5c3RlbSBsb2FkaW5nPw0K
QXJlIHlvdSB0YWxraW5nIGFib3V0IGZpbGUgc3lzdGVtIG1vdW50aW5nIHRpbWU/DQoNCkpvw6ts
IEVzcG9uZGUNCkhvbmV5d2VsbCB8IFNhZmV0eSBhbmQgUHJvZHVjdGl2aXR5IFNvbHV0aW9ucw0K
DQpEZSA6IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5j
ZXNAeW9jdG9wcm9qZWN0Lm9yZ10gRGUgbGEgcGFydCBkZSBQcmFzb29uIEt1bWFyDQpFbnZvecOp
IDogbHVuZGkgMyBqdWlsbGV0IDIwMTcgMTY6MzQNCsOAIDogeW9jdG9AeW9jdG9wcm9qZWN0Lm9y
Zw0KT2JqZXQgOiBbeW9jdG9dIEZpbGUgc3lzdGVtIG9wdGltaXphdGlvbiBpbiB5b2N0bw0KDQpI
aSwNCg0KSSBhbSB0cnlpbmcgdG8gb3B0aW1pc2UgdGhlIGZpbGUgc3lzdGVtLiBJIGhhdmUgcmVt
b3ZlZCB0aGUgcGFja2FnZXMgd2hpY2ggYXJlIG5vdCByZXF1aXJlZCB1c2luZyBQQUNLQUdFX0VY
Q0xVREUuIEl0IHN0aWxsIHRha2UgYXJvdW5kIDggc2Vjb25kcyB0byBsb2FkIHRoZSBmaWxlIHN5
c3RlbS4NCg0KSG93IGNhbiBJIG9wdGltaXphdGlvbiBzbyB0aGF0IG15IGZpbGUgc3lzdGVtIGxv
YWRpbmcgdGFrZSBsZXNzIHRpbWUuIElzIHRoZXJlIGFueSB3YXkgdG8gbG9hZCBmaWxlcyBpbiBh
IG11bHRpLXRocmVhZGVkIHdheSBzbyB0aGF0IGxvYWRpbmcgaXMgZmFzdGVyLg0KDQpBbnkgc3Vn
Z2VzdGlvbnMgb24gb3B0aW1pc2luZyB0aGUgZmlsZSBzeXN0ZW0gaW4gdGVybXMgb2Ygc2l6ZSBv
ciB0aW1lIHdpbGwgYmUgaGVscGZ1bC4NCg0KDQotUHJhc29vbg0K

--_000_DM3PR07MB2233C80B575353483140138396D70DM3PR07MB2233namp_
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
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9
DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCglj
b2xvcjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBz
cGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojOTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KcC5tc29ub3JtYWwwLCBs
aS5tc29ub3JtYWwwLCBkaXYubXNvbm9ybWFsMA0KCXttc28tc3R5bGUtbmFtZTptc29ub3JtYWw7
DQoJbXNvLW1hcmdpbi10b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBjbTsNCgltc28tbWFy
Z2luLWJvdHRvbS1hbHQ6YXV0bzsNCgltYXJnaW4tbGVmdDowY207DQoJZm9udC1zaXplOjEyLjBw
dDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9DQpzcGFuLkVtYWlsU3R5
bGUxOA0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2Fs
aWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjojNDAwMDAwOw0KCWZvbnQtd2VpZ2h0Om5vcm1hbDsN
Cglmb250LXN0eWxlOm5vcm1hbDsNCgl0ZXh0LWRlY29yYXRpb246bm9uZSBub25lO30NCi5Nc29D
aHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJD
YWxpYnJpIixzYW5zLXNlcmlmOw0KCW1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTO30NCkBwYWdl
IFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsNCgltYXJnaW46NzIuMHB0IDcy
LjBwdCA3Mi4wcHQgNzIuMHB0O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlv
bjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVs
dHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0t
W2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlk
bWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2Vu
ZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRlIiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIj
OTU0RjcyIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6
JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiM0MDAwMDA7bXNvLWZhcmVhc3Qt
bGFuZ3VhZ2U6RU4tVVMiPkhpIFByYXNvb24sPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojNDAwMDAw
O21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6
ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9y
OiM0MDAwMDA7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPldoYXQgZG8geW91IG1lYW4gYnkg
ZmlsZSBzeXN0ZW0gbG9hZGluZz88bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1m
YW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiM0MDAwMDA7bXNvLWZh
cmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPkFyZSB5b3UgdGFsa2luZyBhYm91dCBmaWxlIHN5c3RlbSBt
b3VudGluZyB0aW1lPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTom
cXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzQwMDAwMDttc28tZmFyZWFzdC1s
YW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PGI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2Zv
bnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzcwNzA3MCI+Sm/D
q2wgRXNwb25kZTxvOnA+PC9vOnA+PC9zcGFuPjwvYj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48Yj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZTo5LjBwdDtmb250LWZhbWls
eTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiM3MDcwNzAiPkhvbmV5d2VsbDwv
c3Bhbj48L2I+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6OS4wcHQ7Zm9udC1m
YW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojNzA3MDcwIj4gfCBTYWZl
dHkgYW5kIFByb2R1Y3Rpdml0eSBTb2x1dGlvbnM8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9Im1zby1mYXJlYXN0LWxh
bmd1YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8ZGl2IHN0eWxlPSJi
b3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCBibHVlIDEuNXB0O3BhZGRpbmc6MGNtIDBjbSAw
Y20gNC4wcHQiPg0KPGRpdj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29s
aWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBjbSAwY20gMGNtIj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+RGUmbmJzcDs6PC9zcGFuPjwvYj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNh
bnMtc2VyaWYiPiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1i
b3VuY2VzQHlvY3RvcHJvamVjdC5vcmddDQo8Yj5EZSBsYSBwYXJ0IGRlPC9iPiBQcmFzb29uIEt1
bWFyPGJyPg0KPGI+RW52b3nDqSZuYnNwOzo8L2I+IGx1bmRpIDMganVpbGxldCAyMDE3IDE2OjM0
PGJyPg0KPGI+w4AmbmJzcDs6PC9iPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0KPGI+T2Jq
ZXQmbmJzcDs6PC9iPiBbeW9jdG9dIEZpbGUgc3lzdGVtIG9wdGltaXphdGlvbiBpbiB5b2N0bzxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaSw8
bzpwPjwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwv
bzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkkgYW0gdHJ5aW5n
IHRvIG9wdGltaXNlIHRoZSBmaWxlIHN5c3RlbS4gSSBoYXZlIHJlbW92ZWQgdGhlIHBhY2thZ2Vz
IHdoaWNoIGFyZSBub3QgcmVxdWlyZWQgdXNpbmcgUEFDS0FHRV9FWENMVURFLiBJdCBzdGlsbCB0
YWtlIGFyb3VuZCA4IHNlY29uZHMgdG8gbG9hZCB0aGUgZmlsZSBzeXN0ZW0uPG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhvdyBjYW4gSSBvcHRp
bWl6YXRpb24gc28gdGhhdCBteSBmaWxlIHN5c3RlbSBsb2FkaW5nIHRha2UgbGVzcyB0aW1lLiBJ
cyB0aGVyZSBhbnkgd2F5IHRvIGxvYWQgZmlsZXMgaW4gYSBtdWx0aS10aHJlYWRlZCB3YXkgc28g
dGhhdCBsb2FkaW5nIGlzIGZhc3Rlci48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+QW55IHN1Z2dlc3Rpb25zIG9uIG9wdGltaXNpbmcgdGhlIGZp
bGUgc3lzdGVtIGluIHRlcm1zIG9mIHNpemUgb3IgdGltZSB3aWxsIGJlIGhlbHBmdWwuPG86cD48
L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNw
OzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+LVByYXNv
b248bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_DM3PR07MB2233C80B575353483140138396D70DM3PR07MB2233namp_--
