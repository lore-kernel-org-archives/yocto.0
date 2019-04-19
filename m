Return-Path: <n.stanisavljevic@polycaptil.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20C32E00D35; Fri, 19 Apr 2019 01:37:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.95.66.15 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from itinerix.sdv.fr (itinerix.sdv.fr [212.95.66.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E93AAE00D32
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2019 01:37:07 -0700 (PDT)
Received: from FIXNIKOLA (unknown [65.39.68.243])
	by itinerix.sdv.fr (Postfix) with ESMTPSA id 9775ADDA8
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2019 10:37:06 +0200 (CEST)
From: "Stanisavljevic" <n.stanisavljevic@polycaptil.fr>
To: "'Yocto Project'" <yocto@yoctoproject.org>
Date: Fri, 19 Apr 2019 10:37:06 +0200
Message-ID: <000201d4f68b$12a81780$37f84680$@polycaptil.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdT2itugmUiVpBfdSYyGBvuZ6bMjUg==
Subject: ERROR: Multiple .bb files are due to be built which each provide virtual/libgbm
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
X-List-Received-Date: Fri, 19 Apr 2019 08:37:09 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0003_01D4F69B.D630E780"
Content-Language: fr

------=_NextPart_000_0003_01D4F69B.D630E780
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello

I try to do a custom linux with yocto and meta-ti for am335x processor.

Y use :

poky warrior git branch version

meta-ti git branch 2019.00 version

I do some configuration in the local.conf, bblayers.conf, custom-recipe
(Polycaptil-image-minimal), machine.conf, ... to prepare and build my custom
linux system for am335x processor (custom board based on the ti am335x-evmsk
starter kit dev board).

And when I try to compile the linux system, I got this error message
"Multiple .bb files are due to be built which each provide virtual/libgbm".

Here is what I have on my terminal before, during and after the compilation
:

https://pastebin.com/cJ9bzMde

 

As it is written there is "Multiple .bb files are due to be built which each
provide virtual/libgbm".
But I don't know what is mean, what is the problem and how to solve it.

Can somebody help me ?

Nikola


------=_NextPart_000_0003_01D4F69B.D630E780
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p><span =
lang=3DEN-US>Hello<br><br>I try to do a custom linux with yocto and =
meta-ti for am335x processor.<o:p></o:p></span></p><p><span =
lang=3DEN-US>Y use :<o:p></o:p></span></p><p><span lang=3DEN-US>poky =
warrior git branch version<o:p></o:p></span></p><p><span =
lang=3DEN-US>meta-ti git branch 2019.00 =
version<o:p></o:p></span></p><p><span lang=3DEN-US>I do some =
configuration in the local.conf, bblayers.conf, custom-recipe =
(Polycaptil-image-minimal), machine.conf, ... to prepare and build my =
custom linux system for am335x processor (custom board based on the ti =
am335x-evmsk starter kit dev board).<o:p></o:p></span></p><p><span =
lang=3DEN-US>And when I try to compile the linux system, I got this =
error message &quot;Multiple .bb files are due to be built which each =
provide virtual/libgbm&quot;.<br><br>Here is what I have on my terminal =
before, during and after the compilation :<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><a =
href=3D"https://pastebin.com/cJ9bzMde">https://pastebin.com/cJ9bzMde</a><=
o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p><span lang=3DEN-US>As it is =
written there is &quot;Multiple .bb files are due to be built which each =
provide virtual/libgbm&quot;.<br>But I don't know what is mean, what is =
the problem and how to solve it.<o:p></o:p></span></p><p>Can somebody =
help me ?<o:p></o:p></p><p>Nikola<o:p></o:p></p></div></body></html>

------=_NextPart_000_0003_01D4F69B.D630E780--
