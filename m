Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97629E00CC4; Tue,  6 Dec 2016 06:30:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DBD7E00CD8
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 06:30:43 -0800 (PST)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])
	by msfrf2614.sfr.fr (SMTP Server) with ESMTP id B2AFF1C000921;
	Tue,  6 Dec 2016 15:30:42 +0100 (CET)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2614.sfr.fr (SMTP Server) with ESMTPSA;
	Tue,  6 Dec 2016 15:30:41 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gerhard de Clercq' <gerharddeclercq@outlook.com>,
	'Yocto list discussion' <yocto@yoctoproject.org>
References: <VI1PR0401MB18543D5A6FF9DA2E7D673079B8820@VI1PR0401MB1854.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0401MB18543D5A6FF9DA2E7D673079B8820@VI1PR0401MB1854.eurprd04.prod.outlook.com>
Date: Tue, 6 Dec 2016 15:30:40 +0100
Message-ID: <002a01d24fcd$52f69f30$f8e3dd90$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKdUzw28eFbJtVS0rizIhJ9C+mmW59k83vQ
X-sfr-mailing: LEGIT
Subject: Re: ***SPAM*** [meta-raspberrypi] Qt EGLFS frozen on VC4
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
X-List-Received-Date: Tue, 06 Dec 2016 14:30:57 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_002B_01D24FD5.B4BB0730"
Content-Language: fr

------=_NextPart_000_002B_01D24FD5.B4BB0730
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Gerhard,

=20

Could you please provide a bit more information, like the kernel =
you=92re
building against, the kind of features you=92re using in QT, if you=92re =
using
GStreamer as well, if you=92re playing video, versions of the
meta-raspberrypi/yocto/openembedded layers, etc=85

I=92m not sure I can help, but without additional information it would =
be
second-guessing at best.

=20

Cheers,

Herve

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Gerhard de Clercq
Sent: mardi 6 d=E9cembre 2016 15:18
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: ***SPAM*** [yocto] [meta-raspberrypi] Qt EGLFS frozen on VC4

=20

When I build Qt5 for my RPi 3 so that it uses EGLFS on VC4  (all using
Yocto) then everything seems to go well initially and I can even get a
program to launch but it then seems to render only one frame and then =
stay
there. There is no response to user input and applications that are =
supposed
to have constant animations do not change. It is also not possible to
terminate the application with ^c.

=20

I'm not even sure where to ask for support because I have no idea if =
this is
a problem with Qt, VC4 or Yocto. Does anyone here have a clue of what =
might
be wrong?


------=_NextPart_000_002B_01D24FD5.B4BB0730
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Diso-8859-1">
<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta name=3DGenerator =
content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hi Gerhard,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Could you please provide a bit more =
information, like the kernel you&#8217;re building against, the kind of =
features you&#8217;re using in QT, if you&#8217;re using GStreamer as =
well, if you&#8217;re playing video, versions of the =
meta-raspberrypi/yocto/openembedded layers, =
etc&#8230;<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I&#8217;m not sure I can help, but without =
additional information it would be second-guessing at =
best.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Cheers,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Herve<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Gerhard de Clercq<br><b>Sent:</b> mardi 6 d=E9cembre =
2016 15:18<br><b>To:</b> Yocto list discussion =
&lt;yocto@yoctoproject.org&gt;<br><b>Subject:</b> ***SPAM*** [yocto] =
[meta-raspberrypi] Qt EGLFS frozen on =
VC4<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
id=3Ddivtagdefaultwrapper><p><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>When I build Qt5 =
for my RPi 3 so that it uses EGLFS on VC4&nbsp; (all using Yocto) then =
everything seems to go well initially and I can even get a program to =
launch but it then seems to render only one frame and then stay there. =
There is no response to user input and applications that are supposed to =
have constant animations do not change. It is also not possible to =
terminate the application with ^c.<o:p></o:p></span></p><p><span =
style=3D'font-family:"Calibri",sans-serif;color:black'><o:p>&nbsp;</o:p><=
/span></p><p><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>I'm not even sure =
where to ask for support because I have no idea if this is a problem =
with Qt, VC4 or Yocto. Does anyone here have a clue of what might be =
wrong?<o:p></o:p></span></p></div></div></body></html>

------=_NextPart_000_002B_01D24FD5.B4BB0730--
