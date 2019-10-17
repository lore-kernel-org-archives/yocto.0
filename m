Return-Path: <bjorn.gurnett@thermia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4794E00D85; Thu, 17 Oct 2019 11:38:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.2.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20052.outbound.protection.outlook.com [40.107.2.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DB1DE00CB9
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 11:38:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=kWECVyFSUf7V4HC8GxzRdd+ci6wZ58Tyd8B0fO489rcxa808uTBVV/ffRTR+TvPUtUhDpCOvez1uWetQ75tdH8e+cHqrw3sErddZQROGSHQy05pg1NEs2SuzUM4BfsEG5qrVkoHSG511spZ216GRf1FguhOxG7A1XQLmOt3APWbHjC8PEKxeRjhi3obcyfl9qPCOxMdq+cFctcm4I6ezUqprorwE/cbRkG2gDcc5pzAOmX9DnwK5v9ZnyENXxzKwK9iE+ui/qRp4SVgodudphVMaLaJwMP92fp5369IR2qLchTuKf3K9y2//sWLvRl4V1B39+iCUD7B1VwESyPJ0yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZbpwE0sD06dYC5COlyP7zBcIDx2VdTpzFHc92RDDEWE=;
	b=U6sRBojJdwZI6ibUQDTzKI46HXT8UziE423BHxSS7lIfsSeDg5ftkEixCsZtRlCiABBKMCVVcxz1HCFVuENadYw2m7B5SwOzwRRqILBty1ETehOBpycCrNsIwqpvvrlTcfFYQer2peQhu5AEVzNYo6ATne8g+xd1jJqq7mkamWsuTfN9WIhlUYKTwNfr41UQrN1rnXvPJO8q4DzcAHgt5pm+N3b+E3HDHMCENEgHYxmz8BksCPlIMATnm/a6YknJokKt6E2KfqdyyNMAS1oCausZ0ZJhfxxLwtumFEtveX+JrKiC0QG2Yta3BJijkFukzBaQGYEwBLMfEdoHnmglaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=thermia.com;
	dmarc=pass action=none header.from=thermia.com; 
	dkim=pass header.d=thermia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=stiebel.onmicrosoft.com; s=selector2-stiebel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZbpwE0sD06dYC5COlyP7zBcIDx2VdTpzFHc92RDDEWE=;
	b=C+Qj74KGiwiLOgycVNJOvO4wo9ZBIyCYF5uKgQYUwqRVUV7hsRR3/vH3YarpYE5SN2OWGjkNSd/ahidoWs+ud4+on7fdFWT4RYJtnFfEph8HAw0tYE0WpzsXOHc4ou1mJjJSvNFQJ/cv6xxS90cRkG3f4pC0U2Fdn9lhFvCGamc=
Received: from AM0PR05MB5299.eurprd05.prod.outlook.com (20.178.17.142) by
	AM0PR05MB4708.eurprd05.prod.outlook.com (52.133.55.10) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Thu, 17 Oct 2019 18:38:20 +0000
Received: from AM0PR05MB5299.eurprd05.prod.outlook.com
	([fe80::582c:fb80:5381:2d9b]) by
	AM0PR05MB5299.eurprd05.prod.outlook.com
	([fe80::582c:fb80:5381:2d9b%6]) with mapi id 15.20.2347.023;
	Thu, 17 Oct 2019 18:38:20 +0000
From: "Gurnett, Bjorn" <bjorn.gurnett@thermia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: qmlimportscanner missing from sdk
Thread-Index: AdWFGYA0NSwIhgqqTaOnolUoIahqxQ==
Date: Thu, 17 Oct 2019 18:38:20 +0000
Message-ID: <AM0PR05MB5299A66DD7C9C31C7F61A5D8E56D0@AM0PR05MB5299.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bjorn.gurnett@thermia.com; 
x-originating-ip: [185.170.72.145]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e72117d5-af6f-49e7-3487-08d753312f3b
x-ms-traffictypediagnostic: AM0PR05MB4708:
x-microsoft-antispam-prvs: <AM0PR05MB47083B496879ADBED3F9C14EE56D0@AM0PR05MB4708.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39850400004)(396003)(366004)(136003)(199004)(189003)(9686003)(6506007)(71200400001)(7696005)(5640700003)(25786009)(14454004)(66066001)(71190400001)(3480700005)(6306002)(2501003)(6116002)(2351001)(790700001)(256004)(3846002)(54896002)(52536014)(316002)(5660300002)(6436002)(55016002)(86362001)(2906002)(99286004)(478600001)(6916009)(186003)(66476007)(102836004)(81166006)(81156014)(1730700003)(7736002)(8676002)(33656002)(76116006)(64756008)(66556008)(26005)(66446008)(8936002)(74316002)(476003)(66946007)(486006)(558084003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4708;
	H:AM0PR05MB5299.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: thermia.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: itvHos8YoPHYG2w9Rjf5cXbG8/Y6FN4i97ZPw3z3QnqAdH1y/FzZ1oWxNCqs22AWbDe90C3GExYhfvuQd4nVryprpaC1tSQL+4bMwVwHp5TAXtEgeCcKo+l0ei0GmFnbrv6A6xPjaMkVGOLKiDH0RvH5tKtmbRQG4CiAjx0Bx4WEIG3zksAa3aOsLIMkW7l2DuMVN9wuv7C0B50RvnaqMe6s0Bc8RL3LtTwkmlkWVdDHeOJXZNwiT91YMJUkJ0puKtqp6vwObWvc18hLpC/5Sq+TB1TkJMQu1A7BwVYtCejUJmcd30USToM8Jh27BZl7jrY6+dqy9GFY9YQPJL8mGXsJhiow88bmV3KEZdaFp53e9PcX4eB9wnXvKQiFSTUekYyKMVN0IqSj2Abb5I2VZg3BaKdZnacLuJE2lzFX/6U=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: thermia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e72117d5-af6f-49e7-3487-08d753312f3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 18:38:20.5847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 420c935a-f900-4995-aeb1-9af57e8e12fc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P1dQ/wIw5EPOlIbx58EzCiC/BqUTj4pRVhjjajnmE/CRd4QbDq8JEa0V/S1zCl9xUrxUrXMQtOoMB6GT9PfSPnW4NTtKVwtoPU0kwwCv8KY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4708
Subject: qmlimportscanner missing from sdk
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
X-List-Received-Date: Thu, 17 Oct 2019 18:38:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0PR05MB5299A66DD7C9C31C7F61A5D8E56D0AM0PR05MB5299eurp_"

--_000_AM0PR05MB5299A66DD7C9C31C7F61A5D8E56D0AM0PR05MB5299eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBJIGJ1aWxkIGFuIHNkayB1c2luZyBkb19wb3B1bGF0ZV9zZGsgd2l0aCBhIHN0YXRpYyBi
dWlsdCBtZXRhLXF0NSwgSSBkbyBub3QgZW5kIHVwIHdpdGggYXRoZSBxbWxpbXBvcnRzY2FubmVy
IGluIG15IHNkayBpbiB0aGUgdXNyL2JpbiBmb2xkZXIuIFdoYXQgYW0gSSBtaXNzaW5nPyBRbWFr
ZSBpcyBjb3JyZWN0bHkgYnVpbHQuDQoNClRoYW5rcyBmb3IgYW55IGhlbHANCg==

--_000_AM0PR05MB5299A66DD7C9C31C7F61A5D8E56D0AM0PR05MB5299eurp_
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
e21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlv
bjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21z
by1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjojOTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1
bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwt
Y29tcG9zZTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5k
b3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0K
CWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCW1zby1mYXJlYXN0LWxhbmd1YWdl
OkVOLVVTO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsNCglt
YXJnaW46NzAuODVwdCA3MC44NXB0IDcwLjg1cHQgNzAuODVwdDt9DQpkaXYuV29yZFNlY3Rpb24x
DQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4
bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94
bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2
OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFw
ZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9ImVuLVNFIiBs
aW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEi
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iTk8tQk9LIj5XaGVuIEkgYnVpbGQg
YW4gc2RrIHVzaW5nIGRvX3BvcHVsYXRlX3NkayB3aXRoIGEgc3RhdGljIGJ1aWx0IG1ldGEtcXQ1
LCBJIGRvIG5vdCBlbmQgdXAgd2l0aCBhdGhlIHFtbGltcG9ydHNjYW5uZXIgaW4gbXkgc2RrIGlu
IHRoZSB1c3IvYmluIGZvbGRlci4gV2hhdCBhbSBJIG1pc3Npbmc/IFFtYWtlIGlzIGNvcnJlY3Rs
eSBidWlsdC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBsYW5nPSJOTy1CT0siPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9Ik5PLUJPSyI+VGhhbmtzIGZvciBhbnkgaGVscDxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_AM0PR05MB5299A66DD7C9C31C7F61A5D8E56D0AM0PR05MB5299eurp_--
