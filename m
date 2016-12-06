Return-Path: <gerharddeclercq@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 478E1E00CC3; Tue,  6 Dec 2016 06:18:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gerharddeclercq[at]outlook.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Dec 2016 06:18:49 PST
Received: from BLU004-OMC1S7.hotmail.com (blu004-omc1s7.hotmail.com
	[65.55.116.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6B7AE00C9B
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 06:18:49 -0800 (PST)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com ([65.55.116.8])
	by BLU004-OMC1S7.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 6 Dec 2016 06:17:49 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=iG35nVOqoqYqdTG3kDVlyhZP2pzqBSyyNNuAIfCalKY=;
	b=YvJhrc8yu8rICb9gIPTa6F0eBynMZzEXhVSFDOtUrYmTwORs1PHSzqOjxXQxWMO3pLNNHaRBxAK8tUmkaoFSFTL/63jtoiJvEton9TbzwT9Mkj8goY6Cx7cZh0gEGMhN3/tdArOkqcAdBffVWsAghxKyt3in+Giq6f8DW6AI6Qx3vkd4zBDkkJZf55txpDNFnqWgT24yU1v8WuIN+QWnXwNcbyiwHJFv2INS0rLABNy+20eQO2VO2Ms8LYuRuRgvXHDW6OHCW9OqkKzcK5I4lEWw1ueLtXJhX8392P7MvN7mIxMVLza+RVC53iII03qrZwCb/b/+dGT5nHrKmTS8yQ==
Received: from VE1EUR01FT015.eop-EUR01.prod.protection.outlook.com
	(10.152.2.55) by VE1EUR01HT033.eop-EUR01.prod.protection.outlook.com
	(10.152.3.106) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.734.4;
	Tue, 6 Dec 2016 14:17:45 +0000
Received: from VI1PR0401MB1854.eurprd04.prod.outlook.com (10.152.2.57) by
	VE1EUR01FT015.mail.protection.outlook.com (10.152.2.237) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.6 via Frontend Transport; Tue, 6 Dec 2016 14:17:45 +0000
Received: from VI1PR0401MB1854.eurprd04.prod.outlook.com ([10.165.235.20]) by
	VI1PR0401MB1854.eurprd04.prod.outlook.com ([10.165.235.20]) with
	mapi id 15.01.0761.017; Tue, 6 Dec 2016 14:17:45 +0000
From: Gerhard de Clercq <gerharddeclercq@outlook.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi] Qt EGLFS frozen on VC4
Thread-Index: AQHST8nLP826Ht+MU0OxA/cZ4vSESQ==
Date: Tue, 6 Dec 2016 14:17:45 +0000
Message-ID: <VI1PR0401MB18543D5A6FF9DA2E7D673079B8820@VI1PR0401MB1854.eurprd04.prod.outlook.com>
Accept-Language: en-ZA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=outlook.com;
x-incomingtopheadermarker: OriginalChecksum:217FCC60B3AE83F9E0991A282BBD6D1C832B7C65DDE13E8A232ABBEA75172CB8;
	UpperCasedChecksum:F4ECDBFEB30D834A17FA840255A3724904D314967E6D15ADF618E0C169F4AE5C;
	SizeAsReceived:7320; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hOlgFQrbEbHjCaDYzDjh9zjexJcJ5OLa]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT033;
	5:rWY+k1CfgQ12lswypADTQ78cZJHHLHTt0v412k6B8U7bkH/zqX/LkdtHnqVgMLZUsVSForJG2w5mswCaswbvbId9WCvmUaaCeWzhikaDB/dopC1fU9zvAivAATCY6tcz2W9OM9ena98389icRzLJIg==;
	24:5GqeQ041R3yx18691NzNUOxRbWHywoJ/7+sfB/cUbjY4He1YjMkSxopH/a8fLjXiuV+wtHmLGbn9AJmueN0wmrfeFgiGIi8h2r/NDRdlEh4=;
	7:G9T8/mjHnGmKS3Tv43Fm7+ZWvaifmFVZRJ9j7NDYmMIa5zb2JtfG7Ujjb7iuqnkqld4coxinnRc8oYZFTwgpamet3wezXUYAuidXNQyOeE5lX5AH5/zdIVe7bwda2tvBw8R7oA7f4GRvPWFchuST7FT/XKzAjb8hKZ2Oi/IDIEkqL+2jEMfM8g3QT8j/dlYfY++bxSWeH3tc0bmmNjtZe4rUkUVmtGyCi4jYHU32uDKBZi2Z2njRzdaOpi5q9A0wcRHD7SrxmLvoFU5X5ds4/dZgc9GaSNwqiqh8k0l3kQDIiXuiEX/69vqzIO11JWvuVX2XlBarVXc/OPz+qVcbBf/v4AJCSIiNkrHgBuYDDxU=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR01HT033;
	H:VI1PR0401MB1854.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: f3933340-3afc-4341-bf24-08d41de2a64b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(5061506293)(5061507293)(1603103113)(1601125047);
	SRVR:VE1EUR01HT033; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR01HT033; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT033; 
x-forefront-prvs: 01480965DA
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2016 14:17:45.2696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT033
X-OriginalArrivalTime: 06 Dec 2016 14:17:49.0083 (UTC)
	FILETIME=[85EA0EB0:01D24FCB]
Subject: [meta-raspberrypi] Qt EGLFS frozen on VC4
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
X-List-Received-Date: Tue, 06 Dec 2016 14:18:52 -0000
Content-Language: en-ZA
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0401MB18543D5A6FF9DA2E7D673079B8820VI1PR0401MB1854_"

--_000_VI1PR0401MB18543D5A6FF9DA2E7D673079B8820VI1PR0401MB1854_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When I build Qt5 for my RPi 3 so that it uses EGLFS on VC4  (all using Yoct=
o) then everything seems to go well initially and I can even get a program =
to launch but it then seems to render only one frame and then stay there. T=
here is no response to user input and applications that are supposed to hav=
e constant animations do not change. It is also not possible to terminate t=
he application with ^c.


I'm not even sure where to ask for support because I have no idea if this i=
s a problem with Qt, VC4 or Yocto. Does anyone here have a clue of what mig=
ht be wrong?

--_000_VI1PR0401MB18543D5A6FF9DA2E7D673079B8820VI1PR0401MB1854_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>When I build Qt5 for my RPi 3 so that it uses EGLFS on VC4&nbsp; (all us=
ing Yocto) then everything seems to go well initially and I can even get a =
program to launch but it then seems to render only one frame and then stay =
there. There is no response to user input
 and applications that are supposed to have constant animations do not chan=
ge. It is also not possible to terminate the application with ^c.</p>
<p><br>
</p>
<p>I'm not even sure where to ask for support because I have no idea if thi=
s is a problem with Qt, VC4 or Yocto. Does anyone here have a clue of what =
might be wrong?<br>
</p>
</div>
</body>
</html>

--_000_VI1PR0401MB18543D5A6FF9DA2E7D673079B8820VI1PR0401MB1854_--
