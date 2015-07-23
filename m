Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 109DCE009B3; Thu, 23 Jul 2015 08:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68214E009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 08:01:33 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.170.132])
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id 843131C001C1C;
	Thu, 23 Jul 2015 17:01:32 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-170-132.dynamic.hinet.net [1.169.170.132])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id E35F21C001C0E;
	Thu, 23 Jul 2015 17:01:30 +0200 (CEST)
X-SFR-UUID: 20150723150130931.E35F21C001C0E@msfrf2604.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Thu, 23 Jul 2015 17:01:30 +0100
X-PGP-Universal: processed;	by hjo-pc on Thu, 23 Jul 2015 17:01:30 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Edward Vidal' <develone@sbcglobal.net>, yocto@yoctoproject.org
Date: Thu, 23 Jul 2015 17:01:02 +0200
Message-ID: <002d01d0c558$752dbcb0$5f893610$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdDFWGRjoJ3lcK2zTnyC6C98z1feQg==
Subject: Re: [meta-raspberrypi] raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 15:01:36 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_002E_01D0C569.38B728F0"
Content-Language: fr

------=_NextPart_000_002E_01D0C569.38B728F0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

Not sure if it=E2=80=99s the case, because the config.log might give =
more details, but maybe you can try adding the following to your recipe =
:

=20

EXTRA_OECONF +=3D =
=E2=80=9C-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/ \

                                      =
-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/"

=20

I needed that to compile other packages that were using EGL.

Once again, just a hint, no warranty whatsoever=E2=80=A6

=20

BR,

=20

Herv=C3=A9

=20

From: yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org>  =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Edward Vidal
Sent: jeudi 23 juillet 2015 16:38
To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>=20
Subject: ***SPAM*** [yocto] raspberry Pi core-image-sato

=20

Hi Gary,

Is this the log that you need?

I also ran the  bitbake -DD core-image-sato and have the log for that =
run.

=20

| WARNING: exit code 1 from a shell command.
| ERROR: oe_runconf failed
| ERROR: Function failed: do_configure (log file is located at =
/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfp=
v4-neon-poky-linux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log=
.do_configure.9672)
ERROR: Task 4597 =
(/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/l=
ibepoxy_git.bb, do_configure) failed with exit code '1'

=20

Let me know what I can provide.

Thanks for the help

 Regards,

Edward Vidal Jr.
e-mail develone@sbcglobal.net <mailto:develone@sbcglobal.net>=20
915-595-1613


------=_NextPart_000_002E_01D0C569.38B728F0
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
mso-fareast-language:EN-US'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Not sure if it=E2=80=99s the case, because =
the config.log might give more details, but maybe you can try adding the =
following to your recipe&nbsp;:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>EXTRA_OECONF +=3D =
=E2=80=9C-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/ =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-I${STAGING_DIR_TARG=
ET}/usr/include/interface/vmcs_host/linux/&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I needed that to compile other packages that =
were using EGL.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Once again, just a hint, no warranty =
whatsoever=E2=80=A6<o:p></o:p></span></p><p class=3DMsoNormal><span =
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
mso-fareast-language:EN-US'>Herv=C3=A9<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> <a =
href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject=
.org</a> [<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yocto=
project.org</a>] <b>On Behalf Of </b>Edward Vidal<br><b>Sent:</b> jeudi =
23 juillet 2015 16:38<br><b>To:</b> <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>S=
ubject:</b> ***SPAM*** [yocto] raspberry Pi =
core-image-sato<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
id=3D"yui_3_16_0_1_1437661817368_7417"><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>Hi =
Gary,<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>Is this the log =
that you need?<o:p></o:p></span></p></div><div =
id=3D"yui_3_16_0_1_1437661817368_7465"><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>I also ran =
the&nbsp; bitbake -DD core-image-sato and have the log for that =
run.<o:p></o:p></span></p></div><div =
id=3D"yui_3_16_0_1_1437661817368_7531"><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt;background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'><o:p>&nbsp;</o:p=
></span></p></div><div><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>| WARNING: exit =
code 1 from a shell command.<br>| ERROR: oe_runconf failed<br>| ERROR: =
Function failed: do_configure (log file is located at =
/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfp=
v4-neon-poky-linux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log=
.do_configure.9672)<br>ERROR: Task 4597 =
(/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/l=
ibepoxy_git.bb, do_configure) failed with exit code =
'1'<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt;background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'><o:p>&nbsp;</o:p=
></span></p></div><div><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>Let me know =
what I can provide.<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>Thanks for the =
help<o:p></o:p></span></p></div><div =
id=3D"yui_3_16_0_1_1437661817368_7533"><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>&nbsp;Regards,<o=
:p></o:p></span></p></div><div><div><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-family:"Helvetica",sans-serif;color:black'>Edward Vidal =
Jr.<br>e-mail <a =
href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a><br>915-=
595-1613<o:p></o:p></span></p></div></div></div></div></body></html>

------=_NextPart_000_002E_01D0C569.38B728F0--
