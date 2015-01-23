Return-Path: <alexander.haenel-baas@sieb-meyer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F19FE0090E; Thu, 22 Jan 2015 22:20:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.sieb-meyer.de (smnotes1.sieb-meyer.de [213.252.170.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCF74E00860
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 22:20:13 -0800 (PST)
Received: from SMEXCHANGE01.siebmeyer.org ([::1]) by
	SMExchange01.siebmeyer.org ([::1]) with mapi id 14.02.0387.000;
	Fri, 23 Jan 2015 07:20:11 +0100
From: =?iso-8859-1?Q?H=E4nel-Baas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>
To: "ting.liu@freescale.com" <ting.liu@freescale.com>
Thread-Topic: mount.nfs -> how i include nfs-utils
Thread-Index: AdA2JWepMhOfgrrkSM+VeELOQaX4NwAixvLAAAjJZTA=
Date: Fri, 23 Jan 2015 06:20:11 +0000
Message-ID: <9BA84827B30CBE4996725F98F7DC9123428FB401@SMExchange01.siebmeyer.org>
References: <9BA84827B30CBE4996725F98F7DC9123428FB241@SMExchange01.siebmeyer.org>
	<CY1PR0301MB11947FC2B060F6E507B3539793360@CY1PR0301MB1194.namprd03.prod.outlook.com>
In-Reply-To: <CY1PR0301MB11947FC2B060F6E507B3539793360@CY1PR0301MB1194.namprd03.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.11.207]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: mount.nfs -> how i include nfs-utils
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
X-List-Received-Date: Fri, 23 Jan 2015 06:20:18 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_9BA84827B30CBE4996725F98F7DC9123428FB401SMExchange01sie_"

--_000_9BA84827B30CBE4996725F98F7DC9123428FB401SMExchange01sie_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi
Yes i know that.

BUT this file was not copied to the rootfs during  the do_rootfs process.
It is not include in the root_fs.
But it was already compiled.

Alexander

Von: ting.liu@freescale.com [mailto:ting.liu@freescale.com]
Gesendet: Freitag, 23. Januar 2015 03:02
An: H=E4nel-Baas, Alexander; yocto@yoctoproject.org
Betreff: RE: mount.nfs -> how i include nfs-utils

mount.nfs is packaged in nfs-utils-client.

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of H?nel-Baas, Alexander
Sent: Thursday, January 22, 2015 5:38 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] mount.nfs -> how i include nfs-utils

Hi

In terms of my question "how i include nfs-utils" i saw that the nfs-utils =
was compiled correctly.
But there was no mount.nfs in /sbin on the target or in the rootfs image.

What is the step to get this files in the do_rootfs process?

With best regards,
Alexander


--_000_9BA84827B30CBE4996725F98F7DC9123428FB401SMExchange01sie_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Sprechblasentext Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
p.BalloonText, li.BalloonText, div.BalloonText
	{mso-style-name:"Balloon Text";
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.E-MailFormatvorlage23
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Hi<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Yes i k=
now that.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">BUT thi=
s file was not copied to the rootfs during &nbsp;the do_rootfs process.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">It is n=
ot include in the root_fs.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">But it =
was already compiled.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Alexand=
er<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">Von:</span></b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> ting.liu@=
freescale.com [mailto:ting.liu@freescale.com]
<br>
<b>Gesendet:</b> Freitag, 23. Januar 2015 03:02<br>
<b>An:</b> H=E4nel-Baas, Alexander; yocto@yoctoproject.org<br>
<b>Betreff:</b> RE: mount.nfs -&gt; how i include nfs-utils<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">mount.n=
fs is packaged in nfs-utils-client.</span><span lang=3D"EN-US"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;<=
/span><span lang=3D"EN-US"><o:p></o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>H?nel-Baas, Alexander<br>
<b>Sent:</b> Thursday, January 22, 2015 5:38 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] mount.nfs -&gt; how i include nfs-utils</span><span=
 lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal">Hi<span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal">&nbsp;<span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In terms of my question &#8222;=
how i include nfs-utils&#8220; i saw that the nfs-utils was compiled correc=
tly.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But there was no mount.nfs in /=
sbin on the target or in the rootfs image.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What is the step to get this fi=
les in the do_rootfs process?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal">With best regards,<span lang=3D"EN-US"><o:p></o:p></=
span></p>
<p class=3D"MsoNormal">Alexander<span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal">&nbsp;<span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_9BA84827B30CBE4996725F98F7DC9123428FB401SMExchange01sie_--
