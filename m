Return-Path: <paul.mengeringhausen@andron.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40CBFE0081C; Wed, 20 Aug 2014 00:04:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.150.143.166 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0829]
X-Greylist: delayed 919 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Aug 2014 00:04:23 PDT
Received: from edge.lt-i.com (edge.lt-i.com [80.150.143.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A7C7E00807
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 00:04:22 -0700 (PDT)
Received: from Tomlinson.lust.de ([10.1.1.8])
	by edge.lt-i.com (8.14.7/8.14.7) with ESMTP id s7K6n05w024726
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 08:49:00 +0200
Received: from STEINDLER.lust.de (unverified) by Tomlinson.lust.de
	(Clearswift SMTPRS 5.5.0) with ESMTP id
	<Tb4ff039dfec0a80110e30@Tomlinson.lust.de> for
	<yocto@yoctoproject.org>; Wed, 20 Aug 2014 08:49:00 +0200
Received: from MEITNER.lust.de ([fe80::343e:c2d6:401b:52af]) by
	STEINDLER.lust.de ([fe80::5c54:898c:d67a:e22c%14]) with mapi id
	14.03.0181.006; Wed, 20 Aug 2014 08:49:00 +0200
From: "Mengeringhausen, Paul" <paul.mengeringhausen@andron.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Boot Logo support
Thread-Index: Ac+8QXFwYWUv985MRauD+csLp/405Q==
Date: Wed, 20 Aug 2014 06:48:59 +0000
Message-ID: <8BA102866B954649B8DC5B24C0BE5A1A1266FD6C@MEITNER.lust.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.70.150]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 20 Aug 2014 09:25:33 -0700
Subject: Boot Logo support
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
X-List-Received-Date: Wed, 20 Aug 2014 07:04:29 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_8BA102866B954649B8DC5B24C0BE5A1A1266FD6CMEITNERlustde_"

--_000_8BA102866B954649B8DC5B24C0BE5A1A1266FD6CMEITNERlustde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello!

I have a custom board with imx233 Freescale Processor running linux from a =
Yocto Denzil distribution. I want to display a custom bootlogo at system bo=
ot, everything was fine until I disabled "framebuffer console support" in t=
he kernel options.
I had to disable this because I don't need the console in my application, I=
 am writing directly to the framebuffer when my userspace application has l=
oaded and the blinking cursor of the console is bothering. Additionally the=
 console welcome message is overwriting the bootlogo, that's also not nice.
Is there an easy way to display the kernel bootlogo without having to enabl=
e the console on my fb device?

Thanks,
Greetings,
Paul

--_000_8BA102866B954649B8DC5B24C0BE5A1A1266FD6CMEITNERlustde_
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
	font-family:"Calibri","sans-serif";
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
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have a custom board with imx2=
33 Freescale Processor running linux from a Yocto Denzil distribution. I wa=
nt to display a custom bootlogo at system boot, everything was fine until I=
 disabled &#8220;framebuffer console support&#8221;
 in the kernel options.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I had to disable this because I=
 don&#8217;t need the console in my application, I am writing directly to t=
he framebuffer when my userspace application has loaded and the blinking cu=
rsor of the console is bothering. Additionally
 the console welcome message is overwriting the bootlogo, that&#8217;s also=
 not nice.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there an easy way to display=
 the kernel bootlogo without having to enable the console on my fb device?<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Greetings,<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Paul<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_8BA102866B954649B8DC5B24C0BE5A1A1266FD6CMEITNERlustde_--
