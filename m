Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCBF6E00D1C; Wed, 26 Oct 2016 05:56:22 -0700 (PDT)
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
	*      [65.55.90.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from SNT004-OMC4S18.hotmail.com (snt004-omc4s18.hotmail.com
	[65.55.90.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5700FE00D00
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 05:56:18 -0700 (PDT)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com ([65.55.90.201])
	by SNT004-OMC4S18.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Wed, 26 Oct 2016 05:56:18 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=p72ETLes0hviEyf2YNrvfKkbC1BT8GIcSA+9BNYShsY=;
	b=FSLElh+WT43pKjTEFaM4RuP/bKDWbTtM46LRt6f9wocrQRvo4UnJy7ZG4DKMor0xbzWAV1TZdUtYOTaGMpPTxDW6WzkQ8LuGW+8sUG5xoXi7A0cX+YPyAIxbg8jWQ9NJBdbe7iYxBhqOYxJLU8mHnDvBaopb1UCh1oHyulGnZ8XnGL1ymO7HhHg9ug7P2WElt/xD/DUOHCjJcC7vd4MgMizm6ViSZkDQW3iZRilz1BduThzJANQO/ICfZr2jq+0Mju16uDhcfaO3V5uBXvVqNoCdthBJNecCLwTchMDOnrHwk5bcaj5ajOOzBOanGpohT4DvykKZZOLEuZJ6eDasbA==
Received: from VE1EUR01FT004.eop-EUR01.prod.protection.outlook.com
	(10.152.2.51) by VE1EUR01HT049.eop-EUR01.prod.protection.outlook.com
	(10.152.3.27) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.7;
	Wed, 26 Oct 2016 12:56:12 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.2.53) by
	VE1EUR01FT004.mail.protection.outlook.com (10.152.2.101) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.679.5 via Frontend Transport; Wed, 26 Oct 2016 12:56:12 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0669.024; Wed, 26 Oct 2016 12:56:11 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][meta-raspberrypi3] Failed to build
	gstreamer1.0-plugins-bad  with minimal configuration
Thread-Index: AQHSL4dcOEmsaxgufU+ub7SvnGc4DA==
Date: Wed, 26 Oct 2016 12:56:11 +0000
Message-ID: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [EWIfUGZ2UKXc48QYOsQRCjerPUkYX4zu]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT049;
	6:e+y9POS4CY86sVQQZ21ZrsMri2p325lmtwoxHD7ZPWGijAQaKYS3LbJ5YF8f6v+ybxnYndZDwtYEeJzY8OSYqX04r1ijD8rJ8H3xU1XkAAgOTYskcOm50jsi17TfSLxXV7Ftzht1S6N/mX67O5Df7UYRRKBVvxdBIDX6i22Hk3WtYqChCvXmM57AaN8L7VnJ4Pq6sIog17GHLQlfuX/eY/O2dDXsJV8uSK86TuPgpxydISCObCEdeUMB2PC8n4qjYTmMTWA68qTo05TtNObXDwVYMPCoUDjNKDcoSnDKPlWRghnuVV9+cUVIpL4mPax6;
	5:wybyO45s585/jygfP1MZWc6aBQUCejHsTzRlO+gwPL/EMRsXdLgqqqfb6Y8IqvnGaL9X2UMWeTpOYGwmgr1Dx3RXuB+3yq8bFzAsmpznak1AWvEb1fZkbfD1zaG8MF2UsmayzPlxXysrWe/TLLd2sw==;
	24:RBqON/NDmcVfFS+lfiLDMQbwusECSNtW0L87oR2jpznkeWY7qsncowMtVk6QB/RqzxiegYFMYSKq0x0lk5M6/x+V90hluFOceyuVOdr7Ewg=;
	7:dDgk+IO5QxvlOkNu4CcT4Isw5dmXfZxIw9se4H/5hzpsfcKmvX4IeBUL71O6ug1Ya5lfu9Dau0NySvBUKXXlvewVS5cf132rb2ZEkJQr9fMj2pDwcsinIfWuheiWevo5MtuJnU+MEKeqDNxJqTO9P5NCnZgBL6TzO0kWh4/36CXfWpDBR5vSAJCsShFkuql/DDMU7oaHidNfWCz6YdF0tmMwLfWX29kwgSJDqJPYd4aHaBH+kllKX+KBpJ+Q2DCditBIupw+8qEnsUCzFMAGrNZQcbweoX0lsycwZ0NeSnjApJBJLN6Ito3fe1l7VbbpayX6j0v5K45C58zjFQe0GVN5gTEdi0ZrEhJ/QY0UAKw=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR01HT049;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 5265bdd4-2ba1-42c5-453c-08d3fd9f767a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR01HT049;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR01HT049; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT049; 
x-forefront-prvs: 0107098B6C
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2016 12:56:11.6642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT049
X-OriginalArrivalTime: 26 Oct 2016 12:56:18.0620 (UTC)
	FILETIME=[5808DFC0:01D22F88]
Subject: [meta-raspberrypi3] Failed to build gstreamer1.0-plugins-bad with minimal configuration
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
X-List-Received-Date: Wed, 26 Oct 2016 12:56:22 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883A54CB9FBC20C3EC9225692AB0HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883A54CB9FBC20C3EC9225692AB0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I'm currently unable to build gstreamer1.0-plugins-bad with a clean checkou=
t of poky-krogoth and also poky-master with DISTRO_FEATURES_remove =3D " x1=
1 wayland"


It fails during the do_compile() task  of gstreamer1.0-plugins-bad  with th=
e following error message:


undefined reference to graphics_get_display_size().


This function comes with libbcmhost which is however installed with userlan=
d in sysroot.


In addition, the log.do_configure of gstreamer1.0-plugins-bad detects bcm_h=
ost as well.


If I change DISTRO_FEATURES_remove =3D " x11" it will work.


I have tested with a minimal configuration & layers:


Build Configuration:
BB_VERSION        =3D "1.32.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Debian-8.2"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "raspberrypi3"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.2"
TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-hard=
 cortexa7"
TARGET_FPU        =3D "hard"
meta
meta-poky
meta-yocto-bsp    =3D "master:ef627ab364d52fe19994c94c1a78fbe21620a32c"
meta-raspberrypi  =3D "master:de016ceef63028f5578191785c50529695f76a1a"
meta-oe
meta-multimedia   =3D "master:8ba31c9ba214802b1305aabbc0be0353cba0bc3e


and simply launched:


bitbake -k  gstreamer1.0-plugins-bad


Has anyone already experienced this issue with raspberrypi3 ?



Cheers,


Karim



--_000_HE1PR01MB1883A54CB9FBC20C3EC9225692AB0HE1PR01MB1883eurp_
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
<p>Hi all,</p>
<p><br>
</p>
<p>I'm currently unable to build gstreamer1.0-plugins-bad with a clean chec=
kout of poky-krogoth and also poky-master with
<b>DISTRO_FEATURES_remove =3D &quot; x11 wayland&quot;</b></p>
<p><br>
</p>
<p>It fails during the do_compile() task&nbsp; of&nbsp;<span style=3D"font-=
family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot=
;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,=
 &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">gstreamer1.0-pl=
ugins-bad
 &nbsp;with the following error message:</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;">undefined
 reference to&nbsp;graphics_get_display_size().&nbsp;</span><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;">This
 function comes with libbcmhost which is however installed with userland in=
 sysroot.</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;">In
 addition, the log.do_configure of&nbsp;<span style=3D"font-family: Calibri=
, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe =
UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android =
Emoji&quot;, EmojiSymbols; font-size: 16px;">gstreamer1.0-plugins-bad detec=
ts bcm_host
 as well.</span></span></span></p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;">If
 I change&nbsp;<b style=3D"font-family: Calibri, Arial, Helvetica, sans-ser=
if, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmo=
ji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; f=
ont-size: 16px;">DISTRO_FEATURES_remove =3D &quot; x11&quot;
</b><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;">it will work.</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;">I
 have tested with a minimal configuration &amp; layers:</span></span></span=
></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;"></p>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
Build Configuration:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;1.32.0&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_64-linux&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
NATIVELSBSTRING &nbsp; =3D &quot;Debian-8.2&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;arm-poky-linux-gnueabi&quot=
;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;raspberrypi3&quot;</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;poky&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
DISTRO_VERSION &nbsp; &nbsp;=3D &quot;2.2&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
TUNE_FEATURES &nbsp; &nbsp; =3D &quot;arm armv7ve vfp thumb neon vfpv4 call=
convention-hard cortexa7&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;hard&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
meta-poky &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
meta-yocto-bsp &nbsp; &nbsp;=3D &quot;master:ef627ab364d52fe19994c94c1a78fb=
e21620a32c&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
meta-raspberrypi &nbsp;=3D &quot;master:de016ceef63028f5578191785c50529695f=
76a1a&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
meta-multimedia &nbsp; =3D &quot;master:8ba31c9ba214802b1305aabbc0be0353cba=
0bc3e</div>
<br>
</span></span></span>
<p></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;">and
 simply launched:</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;">bitbake
 -k&nbsp;<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;">&nbsp;</span><span style=3D"font-family: Calibri, Arial, Helv=
etica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot=
;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, =
EmojiSymbols; font-size: 16px;">gstreamer1.0-plugins-bad</span></span></spa=
n></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"color: rgb(33, 33, 33); font-family: Calibri, Arial,=
 Helvetica, sans-serif; font-size: 16px;"><span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"font-family: =
Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot=
;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;A=
ndroid Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></span></span></span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 12pt;">Has anyone alre=
ady experienced this issue with raspberrypi3 ?</span><br>
</p>
<p><font color=3D"#212121"><br>
</font></p>
<p><font color=3D"#212121"><br>
</font></p>
<p><font color=3D"#212121">Cheers,</font></p>
<p><font color=3D"#212121"><br>
</font></p>
<p><font color=3D"#212121">Karim</font></p>
<p><font color=3D"#212121"><br>
</font></p>
<p><font color=3D"#212121"><br>
</font></p>
</div>
</body>
</html>

--_000_HE1PR01MB1883A54CB9FBC20C3EC9225692AB0HE1PR01MB1883eurp_--
