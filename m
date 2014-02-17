Return-Path: <isak.lichtenstein@kistler.com>
Received: from mx2.kistler.com (mx2.kistler.com [195.49.77.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6215EE006B3
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2014 06:45:31 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.95,861,1384297200"; d="scan'208,217";a="1314968"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	17 Feb 2014 15:45:26 +0100
Received: from mx2.kistler.com (unknown [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2014 15:45:25 +0100 (CET)
X-IronPort-AV: E=Sophos;i="4.95,861,1384297200"; d="scan'208,217";a="1314967"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/AES128-SHA; 17 Feb 2014 15:45:25 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%16]) with mapi
	id 14.03.0174.001; Mon, 17 Feb 2014 15:45:25 +0100
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Remove major version number from package name
Thread-Index: Ac8r7t34jM7/5BoKTlSDoSByY4Ld1w==
Date: Mon, 17 Feb 2014 14:45:24 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E6684B31BBDB@kihagwinex01.int.kistler.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: Remove major version number from package name
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
X-List-Received-Date: Mon, 17 Feb 2014 14:45:33 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31BBDBkihagwinex01int_"

--_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31BBDBkihagwinex01int_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm relatively new to yocto and open embedded.

I created a few library packages like libdsp for our DSP libraries.

Now when I list all installable packages for libdsp, I noticed that the mai=
n package gets the major version number added to its name: libdsp0

# opkg list | grep libdsp
libdsp-dbg - 0.1-r26 - libdsp version 0.1-r26 - Debugging files  Board supp=
ort library for the
libdsp-dev - 0.1-r26 - libdsp version 0.1-r26 - Development files  Board su=
pport library for the
libdsp-staticdev - 0.1-r26 - libdsp version 0.1-r26 - Development files (St=
atic Libraries)  Board
libdsp-test - 0.1-r26 - libdsp version 0.1-r26  Board support library for t=
he
libdsp0 - 0.1-r26 - libdsp version 0.1-r26  Board support library for the

What can I add to my recipe to suppress the automatic addition of the major=
 version number to the package name?

Kind regards
Isak Lichtenstein



--_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31BBDBkihagwinex01int_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE-CH" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Hi all,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">I&#8217;m relatively new t=
o yocto and open embedded.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">I created a few library pa=
ckages like libdsp for our DSP libraries.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Now when I list all instal=
lable packages for libdsp, I noticed that the main package gets the major v=
ersion number added to its name: libdsp0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"># opkg list | grep libdsp<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">libdsp-dbg - 0.1-r26 - lib=
dsp version 0.1-r26 - Debugging files&nbsp; Board support library for the<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">libdsp-dev - 0.1-r26 - lib=
dsp version 0.1-r26 - Development files&nbsp; Board support library for the=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">libdsp-staticdev - 0.1-r26=
 - libdsp version 0.1-r26 - Development files (Static Libraries)&nbsp; Boar=
d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">libdsp-test - 0.1-r26 - li=
bdsp version 0.1-r26&nbsp; Board support library for the
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">libdsp0 - 0.1-r26 - libdsp=
 version 0.1-r26&nbsp; Board support library for the
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">What can I add to my recip=
e to suppress the automatic addition of the major version number to the pac=
kage name?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Kind regards<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;mso-fareast-language:DE-CH">Isak Lichtenstein<br>
<br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,&quot;serif&quot;;mso-fareast-language:DE-CH"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31BBDBkihagwinex01int_--
