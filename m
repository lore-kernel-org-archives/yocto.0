Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47BA1E009EF; Thu, 23 Jul 2015 15:59:15 -0700 (PDT)
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
Received: from smtp21.services.sfr.fr (smtp21.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25CE2E0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 15:59:13 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.170.132])
	by msfrf2109.sfr.fr (SMTP Server) with ESMTP id 0F9B770000A3;
	Fri, 24 Jul 2015 00:59:13 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-170-132.dynamic.hinet.net [1.169.170.132])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2109.sfr.fr (SMTP Server) with ESMTP id 0976B7000081;
	Fri, 24 Jul 2015 00:59:10 +0200 (CEST)
X-SFR-UUID: 20150723225911388.0976B7000081@msfrf2109.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Fri, 24 Jul 2015 00:59:11 +0100
X-PGP-Universal: processed;	by hjo-pc on Fri, 24 Jul 2015 00:59:11 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
	<CALbNGRRgRKX0Rh08gWPJ496oc9AY9e5XEJ6foN9m6fKcrpUgGw@mail.gmail.com>
	<021f01d0c599$f338f9d0$d9aaed70$@neuf.fr>
	<CAJTo0LZfEsMW94mbAQ=jbMbD1soBQSHrAmiwkxC+rqBZ64in4w@mail.gmail.com>
In-Reply-To: <CAJTo0LZfEsMW94mbAQ=jbMbD1soBQSHrAmiwkxC+rqBZ64in4w@mail.gmail.com>
Date: Fri, 24 Jul 2015 00:59:05 +0200
Message-ID: <022401d0c59b$302cf5c0$9086e140$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFnXKxyRAcEzfeDEFvGsDtkXP+9rgHxjRycANHEBMoAnGLAZJ6hfrjw
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Add networkd as default for RaspberryPi
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
X-List-Received-Date: Thu, 23 Jul 2015 22:59:15 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0225_01D0C5AB.F3B66200"
Content-Language: fr

------=_NextPart_000_0225_01D0C5AB.F3B66200
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

=20

OK, I get it. I will be more careful in correctly restricting patches to =
the machine targeted, if there are machine dependencies.

=20

BR,

=20

Herve

=20

From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: vendredi 24 juillet 2015 00:54
To: Herve Jourdain
Cc: Andreas M=C3=BCller; Yocto Project
Subject: Re: [yocto] [meta-raspberrypi][PATCH] Add networkd as default =
for RaspberryPi

=20

=20

On 23 July 2015 at 23:50, Herve Jourdain <herve.jourdain@neuf.fr =
<mailto:herve.jourdain@neuf.fr> > wrote:

This said, I - maybe wrongfully - assumed that anyone including the =
meta-raspberrypi layer would actually want to run on a raspberrypi, =
which does have an Ethernet interface I believe on all machines - I only =
have a RaspberryPi 2, so I didn't check all other devices, so might =
assumption might be wrong there.
Is there any version of raspberrypi without an Ethernet interface?

=20

Certainly wrongly.  For example the Guacamayo distro includes BSP layers =
from meta-yocto-bsp, meta-ti, meta-raspberrypi, and meta-intel.  BSP =
layers should always scope their changes to impact only the machines =
they care about.

=20

Ross


------=_NextPart_000_0225_01D0C5AB.F3B66200
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hi Ross,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>OK, I get it. I will be more careful in =
correctly restricting patches to the machine targeted, if there are =
machine dependencies.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>BR,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Herve<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> Burton, =
Ross [mailto:ross.burton@intel.com] <br><b>Sent:</b> vendredi 24 juillet =
2015 00:54<br><b>To:</b> Herve Jourdain<br><b>Cc:</b> Andreas =
M=C3=BCller; Yocto Project<br><b>Subject:</b> Re: [yocto] =
[meta-raspberrypi][PATCH] Add networkd as default for =
RaspberryPi<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On 23 =
July 2015 at 23:50, Herve Jourdain &lt;<a =
href=3D"mailto:herve.jourdain@neuf.fr" =
target=3D"_blank">herve.jourdain@neuf.fr</a>&gt; =
wrote:<o:p></o:p></p><blockquote style=3D'border:none;border-left:solid =
#CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div id=3D":235"><p =
class=3DMsoNormal>This said, I - maybe wrongfully - assumed that anyone =
including the meta-raspberrypi layer would actually want to run on a =
raspberrypi, which does have an Ethernet interface I believe on all =
machines - I only have a RaspberryPi 2, so I didn't check all other =
devices, so might assumption might be wrong there.<br>Is there any =
version of raspberrypi without an Ethernet =
interface?<o:p></o:p></p></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Certainly wrongly.&nbsp; For example the Guacamayo =
distro includes BSP layers from meta-yocto-bsp, meta-ti, =
meta-raspberrypi, and meta-intel.&nbsp; BSP layers should always scope =
their changes to impact only the machines they care =
about.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Ross<o:p></o:p></p></div></div></div></div></div></body=
></html>

------=_NextPart_000_0225_01D0C5AB.F3B66200--
