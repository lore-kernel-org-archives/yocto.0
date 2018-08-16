Return-Path: <nader.hariri@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0B72E00AB3; Fri, 17 Aug 2018 19:44:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nader.hariri[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.68.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 50603 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Aug 2018 19:44:33 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092068089.outbound.protection.outlook.com [40.92.68.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73694E00848
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 19:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xTv5oMN0aUg5BhLVjzBP2vpAEx7Jh+CRu1pk2m/a2FE=;
	b=PuZlQs2VTW5I7J4p4jyqoIv2UBQeWEiR0VxPLwTy1Xr4H8NnzFjsvVThuJxBPbTRj3eSYqZUvHmDliutZKmha8AyOHK2pGz4O7HTtgtYqCKrAAMH766RFYWwyAN7UYQhQv/TcsjWko1KdZGbs+czvKaT7oW+SS2Esh3xKzE3jff4zqxfBDPWnlcbh1tHeH4ghXzPyUK59Pka//VfYIaeLyXaQE9NFX26XRbn6dzfuIZqO2ksK5cZ9S4WsKXOHVg7LSeioyjqsa/cah3IcO6VcveYZcC0VaLcoPDVugjLm+EMCSzcwGfjuV0n0fhWBspWcX4WKcilZzq0zpa1TxV8Ww==
Received: from VE1EUR02FT058.eop-EUR02.prod.protection.outlook.com
	(10.152.12.53) by VE1EUR02HT124.eop-EUR02.prod.protection.outlook.com
	(10.152.13.230) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.1059.14;
	Thu, 16 Aug 2018 14:07:35 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com (10.152.12.55) by
	VE1EUR02FT058.mail.protection.outlook.com (10.152.13.52) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.1059.14 via Frontend Transport; Thu, 16 Aug 2018 14:07:35 +0000
Received: from HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957]) by
	HE1PR06MB1689.eurprd06.prod.outlook.com
	([fe80::45ed:e302:37fd:1957%5]) with mapi id 15.20.1038.025;
	Thu, 16 Aug 2018 14:07:35 +0000
From: Nader Hariri <nader.hariri@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ptest-runner "No ptests found."
Thread-Index: AQHUNWpiVp47iVBfjka016fW7Q5GIQ==
Date: Thu, 16 Aug 2018 14:07:35 +0000
Message-ID: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:86E39329644AB9B6A3A6A74D8336AE043D8F2678BB541C311783744742D65433;
	UpperCasedChecksum:35C420250279A270E368D5C81BE74856C88C94BA2B47E98FF1EE1A781605A708;
	SizeAsReceived:6873; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [d6m7gOk7yp6ewQaWPxcRZC5P5ec+qWE7]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT124;
	6:RLwVObctx2LnBvMZOj99gJDyZQLW4mRRVJr6oOTdDcpWiaHWWqRq44Fboa79AE/33Pk8QnO4lWUwgOKVyVSTFOwl7PbtZoU8si0xGHb2b+PX+toYlmTLGv76iCp3tBh0xySazp2sT9n7M4w+AlEKDZA1PeVlkBfAYSmLoYvPKdwVZBiB3DcLe1NNdTBK3ZJRhfunAjWlIyKroioh0CofrPXkSZtkZ8iu86s8o9Xl/a9O7ShIOvLlnV8e/JBZFSwpZI5+pcT4SopfVPXr3eGPTMhyJcz3b6Bk+ClUvBOxG++HRTOs+cTzSSIE55F4Bhx00esEqm0gRIziNBytGt31R7oTjCc27Kvx6jhksSZ08/WlPV+UsU7KTGleOAy3n44GKCqM3V4cEE60aS6OktShmB3MIkE2/exErkAwrEoLWXDNqn7RsfAsP7Wy5ghe8O/8wbdS7vG+QuPCKQx7w4wunw==;
	5:oGpcYpP5bJb6tL0PQfRDMBG/f+1RRk8+BqtbRNCt0gfiedVwizRb8jwH36ZBHYTmYEvbJTSGkXMSCvyOKs6EYeiYapsANjLQXak/Nu6gBE2cS73swpZ5bKkg6EKkap2ZGeK/5dDubbxHALtOFW9hnwJged+xLwR3wYHWCY5MUgI=;
	7:tL0YR2ynsMiwrnbni1J0xMBlhvTRqUzNhLJMCdTn4qLXP0c+Um0m6l8sfxTrVTrCw+o8f1Y+AGegI6JKdlMOTvjtX77A41NzhuW8p6MnHxtAE5jo9WXvOqGttrttDl9Sf8y26oRZv3v9fWi6mtkqj567BhA3THZLS+VgeLdKW3qwY0uyfBJ+vt4RivbwCTSf/AQBof29US2EaB9XOuv0v7sIoY+aNAaQbrLAw/YAzmDEnMsLQnAX2hdWOLtlQoB4
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:VE1EUR02HT124; 
x-ms-traffictypediagnostic: VE1EUR02HT124:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:VE1EUR02HT124; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT124; 
x-forefront-prvs: 07665BE9D1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(2900100001)(6346003)(256004)(73972006)(82202002)(26005)(486006)(44832011)(476003)(8676002)(81156014)(1730700003)(56003)(102836004)(6506007)(106356001)(6916009)(606006)(2351001)(105586002)(5660300001)(104016004)(7696005)(99286004)(105004)(20460500001)(6436002)(25786009)(14454004)(966005)(55016002)(5640700003)(236005)(9686003)(54896002)(6306002)(8936002)(19627405001)(83332001)(33656002)(97736004)(74316002)(87572001)(2501003)(68736007)(5250100002)(86362001)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR02HT124;
	H:HE1PR06MB1689.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nader.hariri@hotmail.com; 
x-microsoft-antispam-message-info: Erwt+8I9B8gTwHRLYoXvTpJ4dIQ4/wTCDk2xdvxOcLxIRksC0sKK6O7yIQFJe1otmKR+vYlkrUNKrr36xXUEjH7726NGNdMNokexLvMx+Xtnw5Q6LT1UPJXPsVyzj8i+Aq7LNS14GBeUvl4Avfczl5ioOTW2hMywLF46aa12rBL2jUGUtDy2rYUPHlyTICQyWKUPvk3pLziXiWuO2vlbNYsRMMSTt9/bNA3a9Njo65c=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-Network-Message-Id: 61b6e508-799a-4b44-3961-08d603819dff
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2018 14:07:35.5448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT124
Subject: ptest-runner "No ptests found."
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
X-List-Received-Date: Sat, 18 Aug 2018 02:44:36 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB1689A8B4242EF071FDD42F78943E0HE1PR06MB1689eurp_"

--_000_HE1PR06MB1689A8B4242EF071FDD42F78943E0HE1PR06MB1689eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, I am new to Yocto. I am working on ptest-runner.

I followed the wiki https://wiki.yoctoproject.org/wiki/Ptest , but when I b=
oot to my image and run ptest-runner I have the output : "No ptests found."

Is this normal ? I thought that

DISTRO_FEATURES_append =3D " ptest"

and

EXTRA_IMAGE_FEATURES +=3D "ptest-pkgs"

 would install all the ptests for me in my image, apparently I am wrong but=
 could you please explain to me why this is not the case i.e why ptests are=
 not automatically installed in the image even though I included the above =
lines in my local.conf ?

Thx,
raden

--_000_HE1PR06MB1689A8B4242EF071FDD42F78943E0HE1PR06MB1689eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hi, I am new to Yocto. I am working on ptest-runner.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I followed the wiki <a href=3D"https://wiki.yoctoproject.org/wiki/Ptest" id=
=3D"LPlnk860589">
https://wiki.yoctoproject.org/wiki/Ptest</a> , but when I boot to my image =
and run ptest-runner I have the output : &quot;No ptests found.&quot;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Is this normal ? I thought that
<pre>DISTRO_FEATURES_append =3D &quot; ptest&quot; <br><br>and<br></pre>
<pre>EXTRA_IMAGE_FEATURES &#43;=3D &quot;ptest-pkgs&quot;<br><br><div style=
=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt"> would in=
stall all the ptests for me in my image, apparently I am wrong but could yo=
u please explain to me why this is not the case i.e why ptests are not auto=
matically installed in the image even though I included the above lines in =
my local.conf ?</div><div style=3D"font-family: Calibri, Helvetica, sans-se=
rif; font-size: 12pt"><br></div><div style=3D"font-family: Calibri, Helveti=
ca, sans-serif; font-size: 12pt">Thx, <br></div><div style=3D"font-family: =
Calibri, Helvetica, sans-serif; font-size: 12pt">raden<br></div></pre>
</div>
</body>
</html>

--_000_HE1PR06MB1689A8B4242EF071FDD42F78943E0HE1PR06MB1689eurp_--
