Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47A47E01482
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 05:40:07 -0700 (PDT)
Received: from [216.82.249.212:36904] by server-13.bemta-12.messagelabs.com id
	9E/C5-06194-5ADE3E15; Mon, 15 Jul 2013 12:40:05 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-4.tower-219.messagelabs.com!1373892002!2662623!1
X-Originating-IP: [203.101.96.8]
X-StarScan-Received: 
X-StarScan-Version: 6.9.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 21681 invoked from network); 15 Jul 2013 12:40:04 -0000
Received: from unknown (HELO BLRINMSHTCAS02.bglrodc.lntinfotech.com)
	(203.101.96.8)
	by server-4.tower-219.messagelabs.com with AES128-SHA encrypted SMTP;
	15 Jul 2013 12:40:04 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.2.40]) by
	BLRINMSHTCAS02.bglrodc.lntinfotech.com ([172.28.0.83]) with mapi;
	Mon, 15 Jul 2013 18:09:02 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 15 Jul 2013 18:08:21 +0530
Thread-Topic: Yocto-1.4 Build error.
Thread-Index: Ac6BV/xQhbE4HBncRhOwRmhzcTjwpw==
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5E3646FC@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Yocto-1.4 Build error.
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
X-List-Received-Date: Mon, 15 Jul 2013 12:40:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AF0985D076EB244693F2CCD71AAB10BC2C5E3646FCBLRINMSMBX01b_"

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E3646FCBLRINMSMBX01b_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

        I am facing an error to build the fresh Yocto Project default disto=
 Poky.

I am using the following steps:

[1] Ubuntu-12.04

[2] Install the required packages.

[3] Download the latest yocto-1.4 release, poky-9.0.1.tar.bz2 [4] untar it =
- "tar xvjf poky-9.0.1.tar.bz2"

[5] cd poky.9.0.1

[6] source oe-init-build-env

[7] bitbake -k core-image-minimal



I am getting the following error: -



////////////////////////////////////////////////////

user@INFBA01401:~/Amitk/YOCTO/poky-dylan-9.0.1/build$<mailto:user@INFBA0140=
1:~/Amitk/YOCTO/poky-dylan-9.0.1/build$> bitbake -k core-image-sato Pseudo =
is not present but is required, building this first before the main build

ERROR:  OE-core's config sanity checker detected a potential misconfigurati=
on.

    Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).

    Following is the list of potential problems / advisories:



    Failed to fetch test data from the network. Please ensure your network =
is configured correctly.



ERROR: Execution of event handler 'check_sanity_eventhandler' failed user@I=
NFBA01401:~/Amitk/YOCTO/poky-dylan-9.0.1/build$<mailto:user@INFBA01401:~/Am=
itk/YOCTO/poky-dylan-9.0.1/build$>

////////////////////////////////////////////////////



Do anyone have faced this error before, please guide me for the same?





Thanks

Amit K


________________________________
The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and using or disseminating the information, and must notify the sende=
r and delete it from their system. L&T Infotech will not accept responsibil=
ity or liability for the accuracy or completeness of, or the presence of an=
y virus or disabling code in this e-mail"

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E3646FCBLRINMSMBX01b_
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
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Trebuchet MS","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoPlainText">Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I am f=
acing an error to build the fresh Yocto Project default disto Poky.<o:p></o=
:p></p>
<p class=3D"MsoPlainText">I am using the following steps:<o:p></o:p></p>
<p class=3D"MsoPlainText">[1] Ubuntu-12.04<o:p></o:p></p>
<p class=3D"MsoPlainText">[2] Install the required packages.<o:p></o:p></p>
<p class=3D"MsoPlainText">[3] Download the latest yocto-1.4 release, poky-9=
.0.1.tar.bz2 [4] untar it - &quot;tar xvjf poky-9.0.1.tar.bz2&quot;<o:p></o=
:p></p>
<p class=3D"MsoPlainText">[5] cd poky.9.0.1<o:p></o:p></p>
<p class=3D"MsoPlainText">[6] source oe-init-build-env<o:p></o:p></p>
<p class=3D"MsoPlainText">[7] bitbake -k core-image-minimal<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">I am getting the following error: -<o:p></o:p></p=
>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">/////////////////////////////////////////////////=
///<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:user@INFBA01401:~/Amitk/YOCTO/p=
oky-dylan-9.0.1/build$">user@INFBA01401:~/Amitk/YOCTO/poky-dylan-9.0.1/buil=
d$</a> bitbake -k core-image-sato Pseudo is not present but is required, bu=
ilding this first before the main build<o:p></o:p></p>
<p class=3D"MsoPlainText">ERROR:&nbsp; OE-core's config sanity checker dete=
cted a potential misconfiguration.<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; Either fix the cause of this e=
rror or at your own risk disable the checker (see sanity.conf).<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; Following is the list of poten=
tial problems / advisories:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; Failed to fetch test data from=
 the network. Please ensure your network is configured correctly.<o:p></o:p=
></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">ERROR: Execution of event handler 'check_sanity_e=
venthandler' failed
<a href=3D"mailto:user@INFBA01401:~/Amitk/YOCTO/poky-dylan-9.0.1/build$">us=
er@INFBA01401:~/Amitk/YOCTO/poky-dylan-9.0.1/build$</a><o:p></o:p></p>
<p class=3D"MsoPlainText">/////////////////////////////////////////////////=
///<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Do anyone have faced this error before, please gu=
ide me for the same?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks<o:p></o:p></p>
<p class=3D"MsoPlainText">Amit K<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"3">The contents of this e-mail=
 and any attachment(s) may contain confidential or privileged information f=
or the intended recipient(s). Unintended recipients are prohibited from tak=
ing action on the basis of information
 in this e-mail and using or disseminating the information, and must notify=
 the sender and delete it from their system. L&amp;T Infotech will not acce=
pt responsibility or liability for the accuracy or completeness of, or the =
presence of any virus or disabling code
 in this e-mail&quot;<br>
</font>
</body>
</html>

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E3646FCBLRINMSMBX01b_--
