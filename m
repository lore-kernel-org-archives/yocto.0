Return-Path: <foo.chien.haw@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD5D0E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 19:53:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jun 2013 19:53:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,893,1363158000"; 
	d="scan'208,217";a="355803159"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2013 19:53:16 -0700
Received: from pgsmsx106.gar.corp.intel.com (10.221.44.98) by
	PGSMSX101.gar.corp.intel.com (10.221.44.78) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 19 Jun 2013 10:53:03 +0800
Received: from PGSMSX102.gar.corp.intel.com ([169.254.6.30]) by
	pgsmsx106.gar.corp.intel.com ([169.254.9.48]) with mapi id
	14.03.0123.003; Wed, 19 Jun 2013 10:53:03 +0800
From: "Haw, Foo Chien" <foo.chien.haw@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Thread-Topic: Re: [yocto] Danny/Cedartrail psplash not showing
Thread-Index: Ac5smBzTViAMy70oSJ6zngpeSbZHyA==
Date: Wed, 19 Jun 2013 02:53:02 +0000
Message-ID: <9DB9DD312636E545A4FA710925A046092718E8E1@PGSMSX102.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Danny/Cedartrail psplash not showing
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
X-List-Received-Date: Wed, 19 Jun 2013 02:53:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DB9DD312636E545A4FA710925A046092718E8E1PGSMSX102garcor_"

--_000_9DB9DD312636E545A4FA710925A046092718E8E1PGSMSX102garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Chris,



Did you manage to get the psplash screen show after adding the kernel argum=
ent?

Regards,

FC



-----Original Message-----

Date: Sun, 16 Jun 2013 23:31:53 +0100

From: Chris Tapp <opensource@keylevel.com<mailto:opensource@keylevel.com>>

To: Yocto Discussion Mailing List <yocto@yoctoproject.org<mailto:yocto@yoct=
oproject.org>>

Subject: Re: [yocto] Danny/Cedartrail psplash not showing

Message-ID: <FDC7C43E-3F3D-43B1-A2FA-D113A2D8D1D5@keylevel.com<mailto:FDC7C=
43E-3F3D-43B1-A2FA-D113A2D8D1D5@keylevel.com>>

Content-Type: text/plain; charset=3Dus-ascii





On 16 Jun 2013, at 22:51, Chris Tapp wrote:



> I've got a custom Cedartrail image which works great, but I can't get the=
 psplash screen to show on boot.

>

> I see a message like "cannot mmap framebuffer" scroll up the screen, but =
this isn't in the message log so I don't get the full context.

>

> I've tried looking at the code for pspash-fb.c, but there aren't a lot of=
 clues (for me!). Is this something to do with the pixel format, as hinted =
at by the comment referring to 'line_length'?



Looks like it might be - adding 'video=3D1024x768-32@60' to the kernel comm=
and line means that the psplash screen shows.



Chris Tapp



opensource@keylevel.com<mailto:opensource@keylevel.com>

www.keylevel.com<http://www.keylevel.com>


--_000_9DB9DD312636E545A4FA710925A046092718E8E1PGSMSX102garcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoPlainText">Hi Chris,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Did you manage to get the psplash screen show aft=
er adding the kernel argument?<o:p></o:p></p>
<p class=3D"MsoPlainText"><br>
Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText">FC<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">Date: Sun, 16 Jun 2013 23:31:53 &#43;0100<o:p></o=
:p></p>
<p class=3D"MsoPlainText">From: Chris Tapp &lt;<a href=3D"mailto:opensource=
@keylevel.com">opensource@keylevel.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">To: Yocto Discussion Mailing List &lt;<a href=3D"=
mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<o:p></o:p></p=
>
<p class=3D"MsoPlainText">Subject: Re: [yocto] Danny/Cedartrail psplash not=
 showing<o:p></o:p></p>
<p class=3D"MsoPlainText">Message-ID: &lt;<a href=3D"mailto:FDC7C43E-3F3D-4=
3B1-A2FA-D113A2D8D1D5@keylevel.com">FDC7C43E-3F3D-43B1-A2FA-D113A2D8D1D5@ke=
ylevel.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">Content-Type: text/plain; charset=3Dus-ascii<o:p>=
</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">On 16 Jun 2013, at 22:51, Chris Tapp wrote:<o:p><=
/o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; I've got a custom Cedartrail image which wor=
ks great, but I can't get the psplash screen to show on boot.<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; I see a message like &quot;cannot mmap frame=
buffer&quot; scroll up the screen, but this isn't in the message log so I d=
on't get the full context.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; I've tried looking at the code for pspash-fb=
.c, but there aren't a lot of clues (for me!). Is this something to do with=
 the pixel format, as hinted at by the comment referring to 'line_length'?<=
o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Looks like it might be - adding 'video=3D1024x768=
-32@60' to the kernel command line means that the psplash screen shows.<o:p=
></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Chris Tapp<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:opensource@keylevel.com">openso=
urce@keylevel.com</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"http://www.keylevel.com">www.keylevel.=
com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9DB9DD312636E545A4FA710925A046092718E8E1PGSMSX102garcor_--
