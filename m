Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35BD5E0093F; Thu,  9 Feb 2017 01:37:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.211.207.200 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
X-Greylist: delayed 1193 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Feb 2017 01:37:22 PST
Received: from smtp1.eteinen.fi (smtp1.eteinen.fi [194.211.207.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97594E0093F
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 01:37:22 -0800 (PST)
Received: from syi-ogw2-997.syi.inet.fi ([176.72.243.229] helo=LenovoPC)
	by smtp1.eteinen.fi with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
	(Exim 4.82) (envelope-from <andreas.enbacka@gasera.fi>)
	id 1cbkqz-00053C-Ek
	for yocto@yoctoproject.org; Thu, 09 Feb 2017 11:17:25 +0200
From: "Andreas Enbacka" <andreas.enbacka@gasera.fi>
To: <yocto@yoctoproject.org>
Date: Thu, 9 Feb 2017 11:17:23 +0200
Message-ID: <003801d282b5$52f253b0$f8d6fb10$@gasera.fi>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdKCtVHngwylnxiTRhW81I0BgGzDoA==
Subject: meta-swupdate layer with precompiled uboot
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
X-List-Received-Date: Thu, 09 Feb 2017 09:37:27 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0039_01D282C6.167B71D0"
Content-Language: fi

------=_NextPart_000_0039_01D282C6.167B71D0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I am looking into using your custom meta-swupate with our current Yocto
1.8.1 (fido) based image. However, as we are using Kontron SMARC sAMX6i for
our platform, Kontron supplies a pre-compiled uBoot. Is it possible to use
meta-swupdate

to some extent without uBoot support, or is it possible to get it to work
without compiling uBoot as well? Any information would be greatly
appreciated.

 

Best regards,

Andreas Enbacka

Gasera Ltd

 

 


------=_NextPart_000_0039_01D282C6.167B71D0
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFI =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US>Hello,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I am looking into using your custom =
meta-swupate with our current Yocto 1.8.1 (fido) based image. However, =
as we are using Kontron SMARC sAMX6i for our platform, Kontron supplies =
a pre-compiled uBoot. Is it possible to use =
meta-swupdate<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>to some extent without uBoot support, or is it possible to =
get it to work without compiling uBoot as well? Any information would be =
greatly appreciated.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Andreas =
Enbacka<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Gasera Ltd<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0039_01D282C6.167B71D0--
