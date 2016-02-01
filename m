Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF5FE00C0B; Mon,  1 Feb 2016 00:40:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0008]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.34 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Feb 2016 00:40:11 PST
Received: from DUB004-OMC3S25.hotmail.com (dub004-omc3s25.hotmail.com
	[157.55.2.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC80DE00BE1
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 00:40:11 -0800 (PST)
Received: from emea01-db3-obe.outbound.protection.outlook.com ([157.55.2.8])
	by DUB004-OMC3S25.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 1 Feb 2016 00:39:09 -0800
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com (10.255.255.158) by
	AMXPR01MB086.eurprd01.prod.exchangelabs.com (10.255.255.158) with
	Microsoft
	SMTP Server (TLS) id 15.1.390.13; Mon, 1 Feb 2016 08:39:08 +0000
Received: from AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.223])
	by AMXPR01MB086.eurprd01.prod.exchangelabs.com ([169.254.5.223]) with
	mapi id 15.01.0390.019; Mon, 1 Feb 2016 08:39:08 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to get the latest version of Qt5 with meta-qt5
Thread-Index: AQHRXMvbnvY39ZGG4U2dif3/NFfMcQ==
Date: Mon, 1 Feb 2016 08:39:08 +0000
Message-ID: <AMXPR01MB0865B0A5B853FA4FD557C8092DE0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [FZ6gWMEuVMOGni5d8urhe79EWEOhHKBS]
x-microsoft-exchange-diagnostics: 1; AMXPR01MB086;
	23:vr6aRH/dQKk3/2AdPZiuGrD+lvbV7Oe18SE/BThpjhcWLxK33XB91R7tusI7GI+FA633USxOWNPkATIAXQjj9okQM32fyqAk1TkSFvdzVWWJDVQJV2X7smBLdrVSbFM9U3T8G1eiOFATwptZU1U9ISW0uBQNRxbT6tF9akJDbSADwJqtJejxcjbeMwn7ajGTlvJW9XrJZp4Uesg1HqQm0g==;
	5:OkN2XqTJO4zj5lY6YbuaElpI7VQjvzLNw97qn73bedS9YFpGEd5ByOtYwkfyq4WbH639i36xAScfs0dn64VwfKyvQzHjXOWAbv6nnGWDQbauwOjVtaTYXz0dMKlDHs+FfYNDU1+H+kIrPl6BDS1WqA==;
	24:QdgSeOUzQiB6gbM/B+y31ZzsTB5U3yJ7JkqlVGvdTnunB7Kd/KJCCgjTYOYyOVK1Qdter1ysQxkVe7qPBBKlGqtHeULioBONMITZUBPj0pU=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AMXPR01MB086;
x-ms-office365-filtering-correlation-id: 7e1023dc-954f-4a59-3afd-08d32ae326bc
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AMXPR01MB086; BCL:0; PCL:0; RULEID:; SRVR:AMXPR01MB086; 
x-forefront-prvs: 0839D067E7
x-forefront-antispam-report: SFV:NSPM; SFS:(7070004)(98900002); DIR:OUT;
	SFP:1901; SCL:1; SRVR:AMXPR01MB086;
	H:AMXPR01MB086.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:nov; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: sct-15-1-318-9-msonline-outlook-fa212.templateTenant
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2016 08:39:08.2376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMXPR01MB086
X-OriginalArrivalTime: 01 Feb 2016 08:39:09.0261 (UTC)
	FILETIME=[04B687D0:01D15CCC]
Subject: How to get the latest version of Qt5 with meta-qt5
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
X-List-Received-Date: Mon, 01 Feb 2016 08:40:16 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMXPR01MB0865B0A5B853FA4FD557C8092DE0AMXPR01MB086eurprd_"

--_000_AMXPR01MB0865B0A5B853FA4FD557C8092DE0AMXPR01MB086eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I've been using yocto to create distros on rspi2 and develop Qt5 based appl=
ications.


I noticed that through the meta-qt5 layer, it is Qt 5.4.1 that is compiled =
and deployed.


How should I tune the metadata so that the latest version of Qt 5 is used i=
nstead ?



Z.

--_000_AMXPR01MB0865B0A5B853FA4FD557C8092DE0AMXPR01MB086eurprd_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>I've been using yocto to create distros on rspi2 and develop Qt5 based a=
pplications.</p>
<p><br>
</p>
<p>I noticed that through the meta-qt5 layer, it is Qt 5.4.1 that is compil=
ed and deployed.</p>
<p><br>
</p>
<p>How should I tune the metadata so that the latest version of Qt 5 is use=
d instead ?</p>
<p><br>
</p>
<p><br>
</p>
<p>Z.</p>
</div>
</body>
</html>

--_000_AMXPR01MB0865B0A5B853FA4FD557C8092DE0AMXPR01MB086eurprd_--
