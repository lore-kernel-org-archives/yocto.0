Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25255E00CAC; Thu, 29 Sep 2016 02:10:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.90.206 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from SNT004-OMC4S3.hotmail.com (snt004-omc4s3.hotmail.com
	[65.55.90.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EED7E0097C
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 02:10:54 -0700 (PDT)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com ([65.55.90.201])
	by SNT004-OMC4S3.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 29 Sep 2016 02:10:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=h6rz6VS7ITMsSOGD5Qi9mxkfr7+o5KO4IRWgBFMiImY=;
	b=m1IHxRmvRZvn8MvO6tYSbijEkZ89dgNheCFXLzeKG23JK+/9Vk7ShH4z0mG20RBre/5rbpMjSgI861O/eSmFOIhhsOeb1UitJWXulLBGGRNeFT4Jb/uzdoPsAzbpyEDyNH4twV94YiwR9HayPY4BWmcfCYH46cU9v8UG2n16RuteWq63WgngUQfvWLIEfyarLxM1kdkvUGmicWoqM6fNhdrvPj/h9UdWqNsyNH6B2lB7ZCAEquodj7sWknXA2qezPffGrVosVQPlf7WQz2G5VjMnm3ZOPVlme35o1Xip4qZ4vugYf3cMGdPPYOSMxbs3AFnmZAOeNB4i9E3j6VO3Sg==
Received: from AM5EUR02FT047.eop-EUR02.prod.protection.outlook.com
	(10.152.8.55) by AM5EUR02HT032.eop-EUR02.prod.protection.outlook.com
	(10.152.9.99) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Thu, 29 Sep 2016 09:10:51 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.8.57) by
	AM5EUR02FT047.mail.protection.outlook.com (10.152.9.197) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Thu, 29 Sep 2016 09:10:51 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.016; Thu, 29 Sep 2016 09:10:51 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] build a toolchain compiler with ARM hard-float support
Thread-Index: AQHSGjDjbLR/i0pJWUWt+c/FlKrZ4Q==
Date: Thu, 29 Sep 2016 09:10:51 +0000
Message-ID: <HE1PR01MB18837CF7986BCE6EEFE81B6492CE0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.8.57)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.8.57 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [9VUohkKR10iu/vq3h1pDsi+O94t6ibwD]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT032;
	6:Gx2UnCLHy6Gg8DDTTaufvA2P7fiFnPsndYrowkhEiJjtc/nyCpLQRpKW6nPV0TsvU3Z04Wpncnzv/1NAsarK25qFQM2Oj3u+lIIRIhLvDiQT86YnmSW3ytgFLZjotJI0DTM803R/0Nb9N5WU/DoT71LpH9xe3+JG7OslB1WrnB4pUxAUlm4v4r4qRkallahHHFkL47Q/WZTyIgP6Yq8+mZPjaw6+760RfFQKmL6kR4ubjxvSsWBzClDmezs1G5iSJSqglycb65mHYF89iY6nRQbk21AIqu4V/77dr5N+juY=;
	5:nZOjRYgkLht1dzYp14yUd7Ublt3Ao9W5LCzDniOYfrBaC54uN6aXMo6NkSG2MPJHB7K6vnvdnfQQ+eqRm+ZuyJg4SWaZZrfHAz+wMvLDyOiyyIbLk4WZdnjoHIvKs9fgtMg4wzIw7C9P8zemMg30gw==;
	24:EGeq2iZOKr2Hks0x2qc/9eSYNLMEV8EJ7c96RkYUuCz44PtWQCwWxNdKeTxiN3TP2ofd4kuwbG/KXghAEn2s+teXsVSfL8lIq+w1/D6Hl5s=;
	7:FuhiO2bnbitTesGm0hwr2MnUZOjoXuGEbcV6AcWknFs/8Uxi5FWaceCLl9OeBo1+zV+1M07K3t8wbRlKo+qTcp3G0taABBcMlbTfgqeGCjGacp4lFkXob2qFJj8zTG29zHCgtOL98YSQHd6VgFXwU2MgEWgqmq/d7vwAuXG8AazlRyymR4qxXpNORS31jvq8oEbowfwVgNuXr0iDuA5gViNsSA8x+Yd6tTJI/KpSd2KUxrYctMWTP2Y7A02cbrpDfVZrLhDIebavKj6LdCs0odlAU20YvS8g4KPwoHehmZsPxPpBepCYUTmIlD/K7K7h
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR02HT032;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: c3d5fe19-563e-4bb3-cd45-08d3e848827c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:AM5EUR02HT032;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR02HT032; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT032; 
x-forefront-prvs: 00808B16F3
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2016 09:10:51.2907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT032
X-OriginalArrivalTime: 29 Sep 2016 09:10:53.0788 (UTC)
	FILETIME=[617409C0:01D21A31]
Subject: build a toolchain compiler with ARM hard-float support
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
X-List-Received-Date: Thu, 29 Sep 2016 09:10:56 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18837CF7986BCE6EEFE81B6492CE0HE1PR01MB1883eurp_"

--_000_HE1PR01MB18837CF7986BCE6EEFE81B6492CE0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I'm using Poky Jethro to build on Toradex Colibri-T20 (armv7).


I want to build my own SDK Installer to have  a toolchain and a sysroot.


Currently, I realied that the toolchain installer files do not provide an a=
rm-poky-linux-gnuabi compiler with hard-float support.

For example, while compiling my project:


/opt/poky/2.0.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi/usr/include/gnu=
/stubs.h:10:29: fatal error: gnu/stubs-hard.h: No such file or directory


Therefore:


 How to be sure that the compiler generated by "bitbake -c populate_sdk" wi=
ll support hard-float ? Is there a configuration file ?


Karim


--_000_HE1PR01MB18837CF7986BCE6EEFE81B6492CE0HE1PR01MB1883eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,</p>
<p><br>
</p>
<p>I'm using Poky Jethro to build on Toradex Colibri-T20 (armv7).</p>
<p><br>
</p>
<p>I want to build my own SDK Installer to have &nbsp;a toolchain and a sys=
root.</p>
<p><br>
</p>
<p>Currently, I realied that the toolchain installer files do not provide a=
n arm-poky-linux-gnuabi compiler with hard-float support.</p>
<p>For example, while compiling my project:</p>
<p><span><br>
</span></p>
<p><span><i>/opt/poky/2.0.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi/usr=
/include/gnu/stubs.h:10:29: fatal error: gnu/stubs-hard.h: No such file or =
directory</i></span><br>
</p>
<p><span><i><br>
</i></span></p>
<p><span>Therefore:</span></p>
<p><span><br>
</span></p>
<p><span>&nbsp;How to be sure that the compiler generated by &quot;bitbake =
-c populate_sdk&quot; will support hard-float ? Is there a configuration fi=
le ?</span></p>
<p><span><br>
</span></p>
<p><span>Karim</span></p>
<p><span><br>
</span></p>
</div>
</body>
</html>

--_000_HE1PR01MB18837CF7986BCE6EEFE81B6492CE0HE1PR01MB1883eurp_--
