Return-Path: <j.behnke@schmidttechnology.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E58E00D77; Mon, 12 Aug 2019 02:12:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY,MIME_QP_LONG_LINE,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Aug 2019 02:12:10 PDT
Received: from mail.schmidttechnology.de (mail.schmidttechnology.ch
	[212.185.41.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AF30E00B8F
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2019 02:12:10 -0700 (PDT)
X-GFI-TNEF2MIME: 1.2
Received: from ST04.sft.schmidt-feintechnik.de ([fe80::2989:544f:bde7:d994])
	by ST04.sft.schmidt-feintechnik.de ([fe80::2989:544f:bde7:d994%10])
	with mapi id 14.03.0468.000; Mon, 12 Aug 2019 11:11:06 +0200
From: "Behnke, Jochen" <j.behnke@schmidttechnology.de>
To: "yocto Mailingliste (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Topic: wic create - bad ownership of directories inside image
Thread-Index: AdVQ7HKa1+aWnPsGSzybgn4086sMuQ==
Date: Mon, 12 Aug 2019 11:11:05 +0200
Message-ID: <55F1D5644E5E5A4493FCBE6156D13CD6AD921671@ST04.sft.schmidt-feintechnik.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: <55F1D5644E5E5A4493FCBE6156D13CD6AD921671@ST04.sft.schmidt-feintechnik.de>
MIME-Version: 1.0
X-Originating-IP: [192.168.41.234]
Disclaimer: SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000
Subject: wic create - bad ownership of directories inside image
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
X-List-Received-Date: Mon, 12 Aug 2019 09:12:12 -0000
Content-Language: de-DE
Content-Type: multipart/mixed;
	boundary="part__362851C4_6C5A_4333_A3EE_69E574191"

--part__362851C4_6C5A_4333_A3EE_69E574191
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Disclaimer: SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micro=
soft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" xm=
lns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://w=
ww.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=3D"te=
xt/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Wor=
d 14 (filtered medium)"><style><!--
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
--> gfidisc.schmidttechnology.de {color:black; !important} </style><!--[if g=
te mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--> <meta name=3D"application-name" content=3D=
"gfidisc.schmidttechnology.de "> </head><body lang=3DDE link=3Dblue vlink=3D=
purple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'font-fa=
mily:"Arial","sans-serif"'>Hello,<o:p></o:p></span></p><p class=3DMsoNormal>=
<span style=3D'font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Arial","sans-=
serif"'>I am using poky 2.6.1 (thud) and create images using the wic utility=
.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font=
-family:"Arial","sans-serif"'>Recently I noticed that all directories contai=
ned in the created image are owned by UID 1000 and not by root. The files in=
side the image however are owned by root.<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'>The UI=
D 1000 refers to my unprivileged user on the host system.<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Arial","san=
s-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'font-family:"Arial","sans-serif"'>Here is the command I use to cr=
eate the image<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'> &#8220;wic create mkefidisk &#82=
11;e core-image-minimal&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Ari=
al","sans-serif"'>The images created by bitbake directly (.tar.bz2, .hddimg)=
 are correct so this seems to be a wic related problem.<o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Arial","sans-=
serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'>Does anybody have a solution for =
this?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'>Many th=
anks in advance, any hint is appreciated.<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-=
family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-family:"Arial","sans-serif"'>Regards<o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-family:"Arial","sans-serif"'>Jo=
chen</span><span style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
mso-fareast-language:DE'><o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nb=
sp;</o:p></p></div><p class=3D"gfidisc.SID=3D010500000000000515000000993c4a7=
a4675257c8b2de024250d0000" id=3D"gfidisc.SID=3D010500000000000515000000993c4=
a7a4675257c8b2de024250d0000" style=3D"gfidisc.SID=3D010500000000000515000000=
993c4a7a4675257c8b2de024250d0000"></p><a id=3D"gfidisc.SID=3D010500000000000=
515000000993c4a7a4675257c8b2de024250d0000" title=3D"gfidisc.SID=3D0105000000=
00000515000000993c4a7a4675257c8b2de024250d0000" href=3D"gfidisc.SID=3D010500=
000000000515000000993c4a7a4675257c8b2de024250d0000" class=3D"gfidisc.SID=3D0=
10500000000000515000000993c4a7a4675257c8b2de024250d0000" style=3D"text-decor=
ation: none !important;"></a><gfidisc.SID=3D010500000000000515000000993c4a7a=
4675257c8b2de024250d0000/><h1 class=3D"gfidisc.SID=3D01050000000000051500000=
0993c4a7a4675257c8b2de024250d0000" style=3D"gfidisc.SID=3D010500000000000515=
000000993c4a7a4675257c8b2de024250d0000"></h1><p><span style=3D"font-family: =
'Arial','sans-serif';">__________________________________<br /><strong><span=
 style=3D"font-family: 'Arial','sans-serif';">SCHMIDT Technology GmbH</span>=
</strong><br />Feldbergstrasse 1<br />78112 St. Georgen/Germany<br />Telefon=
 +49 (0) 77 24 / 89 90<br />Fax +49 (0) 77 24 / 89 91 01<br /><a href=3D"mai=
lto:info@schmidttechnology.de">info@schmidttechnology.de</a><br /><a href=3D=
"http://www.schmidttechnology.de">http://www.schmidttechnology.de</a></span>=
<br /><br /><span style=3D"font-family: 'Arial','sans-serif'; font-size: 7.5=
pt;">USt-Id Nr. DE 811725105 &middot; Registergericht Freiburg HRB 600 755<b=
r />Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt<br /></span><!--?xml=
:namespace prefix =3D "o" ns =3D "urn:schemas-microsoft-com:office:office" ?=
--></p><p class=3D"gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2=
de024250d0000" id=3D"gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8=
b2de024250d0000" style=3D"gfidisc.SID=3D010500000000000515000000993c4a7a4675=
257c8b2de024250d0000"></p><a id=3D"gfidisc.SID=3D010500000000000515000000993=
c4a7a4675257c8b2de024250d0000" title=3D"gfidisc.SID=3D0105000000000005150000=
00993c4a7a4675257c8b2de024250d0000" href=3D"gfidisc.SID=3D010500000000000515=
000000993c4a7a4675257c8b2de024250d0000" class=3D"gfidisc.SID=3D0105000000000=
00515000000993c4a7a4675257c8b2de024250d0000" style=3D"text-decoration: none =
!important;"></a><gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2d=
e024250d0000/><h1 class=3D"gfidisc.SID=3D010500000000000515000000993c4a7a467=
5257c8b2de024250d0000" style=3D"gfidisc.SID=3D010500000000000515000000993c4a=
7a4675257c8b2de024250d0000"></h1></body></html>

--part__362851C4_6C5A_4333_A3EE_69E574191--
