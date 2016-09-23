Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A489EE00BE7; Fri, 23 Sep 2016 12:55:07 -0700 (PDT)
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
	*      [65.55.116.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Sep 2016 12:55:04 PDT
Received: from BLU004-OMC1S26.hotmail.com (blu004-omc1s26.hotmail.com
	[65.55.116.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C68F2E00944
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 12:55:04 -0700 (PDT)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com ([65.55.116.8])
	by BLU004-OMC1S26.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 23 Sep 2016 12:54:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=RG4/0ePf/RXuRZVeoLO2sl4SB99vh2uNmgeJdDgGLTU=;
	b=KWjQ4XnUMTFfn+HI0xmJXtlbmEBWoLx+j3Fg1Uoq4+bqyODTF/aofYd5q2poyA8FGtc1elwyf2raKIJdpQD3Ss9v2S9j6bPKixX/n+ozBpN19+Qu6jC49t5Ne7YTXaz8/iSgwsgsjnKPeW918hnU/+V0dOsKkQbjzrM8t2uvtu8qjoij0rlRoqdEjM6lNmN9UKM3yhGJC9ONIvrgk0UVEzYcSo4oMb4PwTM5NLGBum4z7NrcbRvplhFccFimGgrVjL63TILhsSFIDOyvMxes6EaeH0HSqUl55JwX2A4UjDiaj3tm9hZsTMwhO01lmIE7dg8JgwLXTYMn06u0tVrR/Q==
Received: from VE1EUR02FT054.eop-EUR02.prod.protection.outlook.com
	(10.152.12.54) by VE1EUR02HT144.eop-EUR02.prod.protection.outlook.com
	(10.152.13.228) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Fri, 23 Sep 2016 19:53:59 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.12.59) by
	VE1EUR02FT054.mail.protection.outlook.com (10.152.13.218) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Fri, 23 Sep 2016 19:53:58 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0629.006; Fri, 23 Sep 2016 19:53:58 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to add my own c++ project into a Yocto distro 
Thread-Index: AQHSFdQ5Ht+4o1R0CEaXSdq9SxvE1A==
Date: Fri, 23 Sep 2016 19:53:58 +0000
Message-ID: <HE1PR01MB1883F7F4A2DB619936A62D5492C80@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB188363A66CEC33154BFAAA9492C90@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<CAHp02QN12xqYjCTD1wHWKEsvt0z9rmo01qsQfwYfYZGxtNU9dQ@mail.gmail.com>
In-Reply-To: <CAHp02QN12xqYjCTD1wHWKEsvt0z9rmo01qsQfwYfYZGxtNU9dQ@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.12.59)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.12.59 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [10u/uQK1jSUBYczUu1AcZPXuEEETVPtU]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT144;
	6:ADo3GSttHAyGnMuZlRf7TJubuCPC6kAWv2xRpvkqhjn6ufrHGkVaTabomKEJEvguVs6l7DF3zYG4GYE2EeQbauQ7LOcFd1NtkPj8wHJ2V7VIXaKnPQ6nJYN2qRVBduKd1RXmpqYlU2Wo0Qm0fv5cuR+/knASmz2xxhNcUySLyx76epTo5NSIVD07xuUc0Xa/8jE5Xx7+pMyR/DHokcGjTr4o/OsuorZcUXq+4FcMSZr+uewBtJgmW/QSb4Yw+f2DpKM+KtZZsFOW6wrocswqtBfrBk5Sucs8YuUwXYl2Ajw=;
	5:3JXjcEDKpI0j2iwzogJuiU5W6ZZooOnQoAh+I1FKoJinicOIvu5zOPHEogi2N8ou0gta4JzPYfdHPsoutLzVj9RvxCA/2j9b0mvPuS5cyzzgHfSSZbNKgtlm6e4uOeKsqxtMmyojASYsCf0GgqCbEA==;
	24:N5GJQbghDn3tssPXabuww7/rN1USUFB9KHgfMKvTbGk2qGbFD8SV9LlXB9evpF2Xunasl89ikQnOFd9oFW4lUJ8g0AW+vBCb+uCWGTICeSE=;
	7:y0/xE18CjOLUbk/jHGEECqTprSwXI34P0kYbJq1H7w0ZvWhkmD0hSi+xoY67A/BXFGdJiao/DzWSoR1jjfbsiEssMufuT7iWGtIJ7A88Lm4ehYq2ilijH8VwKNYAAwHoKkyVY8szTloqabxrgVkh0Tn7YJa9ItM8whyv3GwbVELtjyIacbpKN/qCQ5UtmhaJsd97N7rlLMaueTS+xfX08F2g+k0O/xkvM+N+53C8RuZlBodydgjFthMzAwOtp07MKYjd9BltZ6L3of08CRnMyczqTvwgIYY9ZPyHR1BKKXbWCH/koY1w0tcaHVRdZYRf
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR02HT144;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: e1d6102c-b4e7-459c-1144-08d3e3eb5bed
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR02HT144;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR02HT144; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT144; 
x-forefront-prvs: 0074BBE012
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2016 19:53:58.7233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT144
X-OriginalArrivalTime: 23 Sep 2016 19:54:00.0974 (UTC)
	FILETIME=[3ABADAE0:01D215D4]
Subject: How to add my own c++ project into a Yocto distro
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
X-List-Received-Date: Fri, 23 Sep 2016 19:55:07 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883F7F4A2DB619936A62D5492C80HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883F7F4A2DB619936A62D5492C80HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I have setup a Poky distribution based on a core-image-sato image for both =
RaspberryPi and Toradex Colibri T20.

I have an X11 environment working fine.


Right now, I need to compile our software we developped.

I basically need to fetch SVN repositories and finally to launch a makefile=
 to get everyting work.

The makefile is however not based on autotools. It's a custom makefiles wit=
h regular dependencies.


I just don't know how to achieve this step in Yocto ?

Should I add a recipe ?

Is there a link that describes what I need to achieve ?


Thanks


Karim

--_000_HE1PR01MB1883F7F4A2DB619936A62D5492C80HE1PR01MB1883eurp_
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
<p>I have setup a Poky distribution based on a core-image-sato image for bo=
th RaspberryPi and Toradex Colibri T20.</p>
<p>I have an X11 environment working fine.</p>
<p><br>
</p>
<p>Right now, I need to compile our software we developped.</p>
<p>I basically need to fetch SVN repositories and finally to launch a makef=
ile to get everyting work.</p>
<p>The makefile is however not based on autotools. It's a custom makefiles =
with regular dependencies.</p>
<p><br>
</p>
<p>I just don't know how to achieve this step in Yocto ?</p>
<p>Should I add a recipe ?</p>
<p>Is there a link&nbsp;that describes what I need to achieve ?&nbsp;</p>
<p><br>
</p>
<p>Thanks</p>
<p><br>
</p>
<p>Karim</p>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<div class=3D"gmail_extra"></div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB1883F7F4A2DB619936A62D5492C80HE1PR01MB1883eurp_--
