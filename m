Return-Path: <joshua.collins@arcontia.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E9BBE00B4C; Mon, 16 Jun 2014 04:22:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 453 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Jun 2014 04:22:18 PDT
Received: from graveyard4-1.ilait.eu (graveyard4-1.ilait.eu [178.63.104.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52C04E00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 04:22:18 -0700 (PDT)
Received: from smtp1-4.ilait.se (smtp1-4.ilait.se [94.246.96.44])
	by graveyard4-1.ilait.eu (Postfix) with ESMTPS id 8AC8D50C420
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 11:14:44 +0000 (UTC)
Received: from ex-hub1-2.cloud.local (ex-hub1-2.ilait.se [62.109.34.15])
	by smtp1-4.ilait.se (Postfix) with ESMTPS id 66EE4700D1
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 11:14:37 +0000 (UTC)
Received: from EX-MBX1-8.cloud.local ([fe80::8b0:2430:4599:5695]) by
	ex-hub1-2.cloud.local ([fe80::1d72:4618:a665:d303%13]) with mapi id
	14.03.0174.001; Mon, 16 Jun 2014 13:14:37 +0200
From: Joshua Collins <joshua.collins@arcontia.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FTDI support in yocto on CGTQMX6
Thread-Index: Ac+JU3Ed06r9kYAuR+6cH236Db310g==
Date: Mon, 16 Jun 2014 11:14:36 +0000
Message-ID: <EA5D4AA0E56AAB499D0E3B654C889FBFBC15EF@ex-mbx1-8.cloud.local>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.218.75.50]
MIME-Version: 1.0
Subject: FTDI support in yocto on CGTQMX6
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
X-List-Received-Date: Mon, 16 Jun 2014 11:22:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC15EFexmbx18cloudlocal_"

--_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC15EFexmbx18cloudlocal_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,


I have successfully built the 'fsl-image-gui' image and installed it on my =
cqtqmx6. I require FTDI drivers to be installed to detect a usb device as a=
 serial port. I am unsure how to go about adding these drivers. I have trie=
d modifying my local.conf file with the following line:



PACKAGECONFIG_append_pn =3D " libftdi"



which didn't seem to do anything. I also tried:



IMAGE_INSTALL_append =3D " libftdi"



Which caused bitbake to fail with the error: "ERROR: QA Issue: libftdi: The=
 compile log indicates that host include and/or library paths were used."



I don't have a great understanding of knowing how to add more features to m=
y yocto image, and would appreciate any help with enabling FTDI support.



Cheers,

Josh


--_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC15EFexmbx18cloudlocal_
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
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-AU" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">I have successfully built the 'fsl-image-gui' =
image and installed it on my cqtqmx6. I require FTDI drivers to be installe=
d to detect a usb device as a serial port. I am unsure
 how to go about adding these drivers. I have tried modifying my local.conf=
 file with the following line:<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;min-height: 8pt;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">PACKAGECONFIG_append_pn =3D &quot; libftdi&quo=
t;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;min-height: 8pt;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">which didn't seem to do anything. I also tried=
:<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;min-height: 8pt;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D;border:none windowtext 1.0pt;padding:0cm">IMAGE_I=
NSTALL_append =3D &quot; libftdi&quot;</span><span style=3D"font-size:10.0p=
t;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#3D3D3D"><=
o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;min-height: 8pt;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">Which caused bitbake to fail with the error: &=
quot;ERROR: QA Issue: libftdi: The compile log indicates that host include =
and/or library paths were used.&quot;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;min-height: 8pt;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">I don't have a great understanding of knowing =
how to add more features to my yocto image, and would appreciate any help w=
ith enabling FTDI support.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;min-height: 8pt;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">Cheers,<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white;vertical-align:baseline;orphans: auto;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#3D3D3D">Josh<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC15EFexmbx18cloudlocal_--
