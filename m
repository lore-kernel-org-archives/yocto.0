Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CC78E00A39; Thu,  6 Aug 2015 22:58:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.13 listed in list.dnswl.org]
Received: from smtp22.services.sfr.fr (smtp22.services.sfr.fr [93.17.128.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3DC4E00A31
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 22:58:44 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.72.223.34])
	by msfrf2217.sfr.fr (SMTP Server) with ESMTP id 9BFC7700011B
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 07:58:41 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-72-223-34.EMOME-IP.hinet.net [42.72.223.34])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2217.sfr.fr (SMTP Server) with ESMTP id 65150700011A
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 07:58:38 +0200 (CEST)
X-SFR-UUID: 20150807055839414.65150700011A@msfrf2217.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Fri, 07 Aug 2015 07:58:37 +0100
X-PGP-Universal: processed;	by hjo-pc on Fri, 07 Aug 2015 07:58:37 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Fri, 7 Aug 2015 07:57:40 +0200
Message-ID: <002501d0d0d6$1a587d50$4f0977f0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdDQ1QXJVwmU01BQSwaeKI8LCRsyug==
Subject: [meta-raspberrypi] userland
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
X-List-Received-Date: Fri, 07 Aug 2015 05:58:50 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0026_01D0D0E6.DDE14D50"
Content-Language: fr

------=_NextPart_000_0026_01D0D0E6.DDE14D50
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

Currently, userland_git.bb PROVIDES virtual/egl and virtual/libgles2.

But "userland" seems to provide many additional components: mmal, vcos,
openmaxil, vchiq_arm, bcm_host, WFC, OpenVG

 

Wouldn't it make sense to add additional PROVIDES to handle those as well?

 

I'm thinking about openmaxil, for instance.

Right now for instance, I get it by adding a DEPEND userland to a .bbappend,
but I'm considering adding maybe a virtual/openmaxil to userland_git.bb.

 

Does it make sense? Any suggestion about that?

 

Best regards,

 

Herve


------=_NextPart_000_0026_01D0D0E6.DDE14D50
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
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
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>Currently, userland_git.bb PROVIDES virtual/egl and =
virtual/libgles2.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>But &#8220;userland&#8221; seems to provide many additional =
components: mmal, vcos, openmaxil, vchiq_arm, bcm_host, WFC, =
OpenVG<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Wouldn&#8217;t it make sense to add additional PROVIDES to =
handle those as well?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I&#8217;m thinking about openmaxil, for =
instance.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Right now for instance, I get it by adding a DEPEND =
userland to a .bbappend, but I&#8217;m considering adding maybe a =
virtual/openmaxil to userland_git.bb.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Does it make sense? Any suggestion =
about that?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>Herve<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0026_01D0D0E6.DDE14D50--
