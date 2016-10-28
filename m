Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC86BE00E04; Thu, 27 Oct 2016 22:56:15 -0700 (PDT)
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
	*      [65.55.34.82 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from COL004-OMC2S8.hotmail.com (col004-omc2s8.hotmail.com
	[65.55.34.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E86E00DF8
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 22:56:11 -0700 (PDT)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com ([65.55.34.73])
	by COL004-OMC2S8.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 27 Oct 2016 22:56:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=M+2diEVM79ypsDM5gfecXOCGiWbVxk4U1g2wngVFKLc=;
	b=tSzHPgw9BMc0pJE6KAyE8OR9QDaifbkIFamP/JXFL+O4E7nWHJFiGcbGh5fpqmJn0wwkRcPizlDmeM5WVAN8fI8Oq7zwlhb/Q/wPjETQ3zdscl6nO07RnNgh5r3pfa0X0AdUGlCemFX1sHdoM3hNXAjigj08BfRFW0fcNikxm4hRDR54W0SFL4G4vFnPhRrVtYnym4SDkaTgSuDnqrdWtBisijtY2e8Yr4kG2FQSJCMe3icwenM1F0MW+fNXl9kirnuylZL53HwEhyX+dy1E/EAiSSZcBTRG49iXNDF2UG74Ynn7k38CQHcfXKMK+adpU7eT4PuPBf2sV0iNuDv8xg==
Received: from HE1EUR02FT014.eop-EUR02.prod.protection.outlook.com
	(10.152.10.60) by HE1EUR02HT240.eop-EUR02.prod.protection.outlook.com
	(10.152.10.240) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.679.5;
	Fri, 28 Oct 2016 05:56:08 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.10.59) by
	HE1EUR02FT014.mail.protection.outlook.com (10.152.10.118) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.679.5 via Frontend Transport; Fri, 28 Oct 2016 05:56:08 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0693.009; Fri, 28 Oct 2016 05:56:07 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Thread-Topic: [yocto] [meta-raspberrypi3] Failed to build
	gstreamer1.0-plugins-bad with minimal configuration
Thread-Index: AQHSMJBg9ydpOCl7TkG+Rozu7cOdiaC8zkCAgACPo/Q=
Date: Fri, 28 Oct 2016 05:56:07 +0000
Message-ID: <DB5PR01MB188012CEF43ADE751770A39D92AD0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161027212610.33d285b0@nuc.betafive.co.uk>,
	<20161027221841.69b62716@nuc.betafive.co.uk>
In-Reply-To: <20161027221841.69b62716@nuc.betafive.co.uk>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [u5oUqXenj5fQ/Lk9iCByO5JW8cZxBur6]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT240;
	6:RhhfXpAkn22kHg1mvz0Edz2Y0ZD4zT+DD0dhcgYSprCP2ENYxAuyOWRhD0U5gxBEQqoltLSIZIfq2ECY2AhUD3Fl0fp4nB587d2kY09mFo2Ie8Eh0mdY3cbn0uz59wP7MG7IbEI9Ymi2UrLykuF1v2UdmQ6HvWhFw6wl0tY1e5EZudflp4ODi3WQCSsUsKjR5KneZTXFJzwWIWVwSrlykf/IkEhpOzG72scY6rlnNRho4gdMx2/exeXRaKwPCBfrp9D6fWpGNcJophRJcdVk3p+g0g2F8KlRKJaxwbqjhp7Q0YAf5tee6B6mdOwBJWLV;
	5:VcDNz43s1v6HkEFAVfnNWsPUvRAIvMca5tDTOEOZ54psiC0zCLl8EVh2an7rRO0szr/4Iu8f6hwSodhVm8kLVIEgrx4ncgj8dsb9Z7tqtP6rQoJDaP/8j5JKBlKCPWV4b+bF6s8CYy3DjWH/W1l+feL7yVTgFQHxXcW9jEPr3sM=;
	24:n7DBbEHvNJWaxC7QB6eqBcagcT4Sn56Atj5aMUkHaPtd2Q5uCotjK3BrFBlM/4sVfQR69VB5Ote6KvYiqPoByL3rghfn60aQdcESZUUxe+w=;
	7:FjyR4DNeWCodJr8hxCS2LSL7kJOAPidfQd/g4MGQ6ShuuWGxeIkAHqwErsWbUPyDWDPCGS3iClS6rdZL7pt5unXVonEmT55LZyMdWmCp2HrmHGjHc3EIjt4NFg1vVPvIUN5oJN2h2g6VeOc2H1TUexcHZ+WdquB7htGsmPsyBdvGGW7e82NXv3gUNlQqaFYZUoBgCOCkEoLHg5RKHOkT76oa+1VRj5k5qCLe80ZWOYfImNLds7DOrGU6EmUN7Ql1RuCs4G6k332i9g5Hpn1i3RGFiev45xMKhuch7X+IY8Njzywexb3QBlHyXKEEkFeschHpILUP4axvyV12I2vdzGgZmGth2BM/CCPXa/X7UMI=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1EUR02HT240;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: e51f63e5-8299-4f8e-8e79-08d3fef71c71
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:HE1EUR02HT240;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:HE1EUR02HT240; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR02HT240; 
x-forefront-prvs: 0109D382B0
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2016 05:56:07.1869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT240
X-OriginalArrivalTime: 28 Oct 2016 05:56:11.0234 (UTC)
	FILETIME=[FC168420:01D230DF]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi3] Failed to build gstreamer1.0-plugins-bad with minimal configuration
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
X-List-Received-Date: Fri, 28 Oct 2016 05:56:16 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB5PR01MB188012CEF43ADE751770A39D92AD0DB5PR01MB1880eurp_"

--_000_DB5PR01MB188012CEF43ADE751770A39D92AD0DB5PR01MB1880eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,


Thanks a lot for your feedback and analysis.

I think it sohuld compile without X11 and Wayland as it's a very common con=
figuration

for RaspberryPi being used with Qt5.x applications.


Do you think it's bug related to Gstreamer1.0 configuration ?



Karim



________________________________
De : Paul Barker <paul@paulbarker.me.uk>
Envoy=E9 : jeudi 27 octobre 2016 23:18
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [meta-raspberrypi3] Failed to build gstreamer1.0-plugin=
s-bad with minimal configuration


gstreamer1.0-plugins-bad compiles if x11, wayland and opengl are all
missing from DISTRO_FEATURES. It fails if x11 and wayland are missing
but opengl is included.

Should it compile if x11 and wayland are removed from DISTRO_FEATURES
but opengl is included? I don't do much on the graphics side so I don't
know if this makes sense as a configuration.

Thanks,
Paul

--_000_DB5PR01MB188012CEF43ADE751770A39D92AD0DB5PR01MB1880eurp_
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
<p>Hi Paul,</p>
<p><br>
</p>
<p>Thanks a lot for your feedback and analysis.</p>
<p>I think it sohuld compile without X11 and Wayland as it's a very common =
configuration</p>
<p>for RaspberryPi being used with Qt5.x applications.</p>
<p><br>
</p>
<p>Do you think it's bug related to Gstreamer1.0 configuration ?</p>
<p><br>
</p>
<p><br>
</p>
<p>Karim</p>
<p><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Paul Barker &lt;paul=
@paulbarker.me.uk&gt;<br>
<b>Envoy=E9 :</b> jeudi 27 octobre 2016 23:18<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [meta-raspberrypi3] Failed to build gstreamer1.0=
-plugins-bad with minimal configuration</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
gstreamer1.0-plugins-bad compiles if x11, wayland and opengl are all<br>
missing from DISTRO_FEATURES. It fails if x11 and wayland are missing<br>
but opengl is included.<br>
<br>
Should it compile if x11 and wayland are removed from DISTRO_FEATURES<br>
but opengl is included? I don't do much on the graphics side so I don't<br>
know if this makes sense as a configuration.<br>
<br>
Thanks,<br>
Paul<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DB5PR01MB188012CEF43ADE751770A39D92AD0DB5PR01MB1880eurp_--
