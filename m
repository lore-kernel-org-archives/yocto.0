Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B24FE00BBD; Thu,  8 Nov 2018 14:21:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.11.40.244 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Nov 2018 14:21:04 PST
Received: from west-edge.flir.com (west-edge.flir.com [208.11.40.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3879E00A1A
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2018 14:21:04 -0800 (PST)
Received: from US-PDX-MAIL1.flir.net (10.192.150.174) by pdx-e1.zone1.flir.net
	(10.192.210.11) with Microsoft SMTP Server (TLS) id 14.3.382.0;
	Thu, 8 Nov 2018 14:25:56 -0800
Received: from us-pdx-mail4.flir.net (10.192.150.252) by US-PDX-MAIL1.flir.net
	(10.192.150.174) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1531.3;
	Thu, 8 Nov 2018 14:20:01 -0800
Received: from us-pdx-mail4.flir.net ([fe80::497e:6a6d:a0de:5631]) by
	us-pdx-mail4.flir.net ([fe80::497e:6a6d:a0de:5631%22]) with mapi id
	15.01.1531.003; Thu, 8 Nov 2018 14:20:00 -0800
From: "Smith, Virgil (US)" <Virgil.Smith@flir.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [mono] AOT compile system assemblies into target image
Thread-Index: AdR3rzrK39U43FGtRLit8ppVmqGlAA==
Date: Thu, 8 Nov 2018 22:20:00 +0000
Message-ID: <b29f662c48e748d8a966a96439fc00a7@flir.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.128.150.201]
MIME-Version: 1.0
Subject: [mono] AOT compile system assemblies into target image
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
X-List-Received-Date: Thu, 08 Nov 2018 22:21:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b29f662c48e748d8a966a96439fc00a7flircom_"

--_000_b29f662c48e748d8a966a96439fc00a7flircom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is there a way to configure meta-mono to ahead of time (AOT) compile the sy=
stem assemblies for the target?
Specifically, I would like to not have to run the following on my targets.
sudo mono --aot /usr/lib/mono/4.5/mscorlib.dll
for f in /usr/lib/mono/gac/*/*/*.dll; do sudo mono --aot "$f"; done

Presumably this would require a "mono-cross" recipe to build mono in cross =
compilation mode and setting up an environment in which running mono -aot f=
ound
the appropriate cross version of the assembler and linker; and a recipe tha=
t use the target sysroot files as input or extending the main mono recipe.


I've also posted this question to Stack Overflow in case someone here wants=
 to gain some SO rep.
https://stackoverflow.com/questions/53213420/aot-compile-system-assemblies-=
using-yocto-meta-mono

---
The Yocto project maintainers and user community are the intended recipient=
s of this message, and it is not subject to export restriction.

________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

--_000_b29f662c48e748d8a966a96439fc00a7flircom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.pln
	{mso-style-name:pln;}
span.pun
	{mso-style-name:pun;}
span.lit
	{mso-style-name:lit;}
span.kwd
	{mso-style-name:kwd;}
span.com
	{mso-style-name:com;}
span.str
	{mso-style-name:str;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Is there a way to configure meta-mono to ahead of time (AOT) compi=
le the system assemblies for the target?<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Specifically, I would like to not have to run the following on my =
targets.<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">sudo mono --aot /usr/lib/mono/4.5/mscorlib.dll<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">for f in /usr/lib/mono/gac/*/*/*.dll; do sudo mono --aot &=
quot;$f&quot;; done<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Presumably this would require a &#8220;mono-cross&#8=
221; recipe to build mono in cross compilation mode and setting up an envir=
onment in which running mono &#8211;aot found<o:p></o:p></p>
<p class=3D"MsoNormal">the appropriate cross version of the assembler and l=
inker; and a recipe that use the target sysroot files as input or extending=
 the main mono recipe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve also posted this question to Stack Overfl=
ow in case someone here wants to gain some SO rep.<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://stackoverflow.com/questions/53213=
420/aot-compile-system-assemblies-using-yocto-meta-mono">https://stackoverf=
low.com/questions/53213420/aot-compile-system-assemblies-using-yocto-meta-m=
ono</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---<o:p></o:p></p>
<p class=3D"MsoNormal">The Yocto project maintainers and user community are=
 the intended recipients of this message, and it is not subject to export r=
estriction.<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Verdana" color=3D"Gray" size=3D"1"><br>
Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email
 by mistake, please notify us immediately by replying to this message and t=
hen destroy it and do not review, disclose, copy or distribute it. Thank yo=
u in advance for your cooperation.<br>
</font>
</body>
</html>

--_000_b29f662c48e748d8a966a96439fc00a7flircom_--
