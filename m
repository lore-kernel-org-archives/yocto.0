Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A6C5E00A96; Wed, 29 Jul 2015 20:27:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E19E2E00A7E
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 20:27:16 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.72.75.58])
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id 4DBD81C000831
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 05:27:13 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-72-75-58.EMOME-IP.hinet.net [42.72.75.58])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id 72A131C000810
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 05:27:10 +0200 (CEST)
X-SFR-UUID: 20150730032711469.72A131C000810@msfrf2604.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Thu, 30 Jul 2015 05:27:10 +0100
X-PGP-Universal: processed;	by hjo-pc on Thu, 30 Jul 2015 05:27:10 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 05:27:03 +0200
Message-ID: <086901d0ca77$9e8f1300$dbad3900$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdDKdEBhb5qzcEdkRnOQLZoYjn0ODg==
Subject: [meta-raspberrypi] Adding an additional device tree overlay in the SDCard
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
X-List-Received-Date: Thu, 30 Jul 2015 03:27:20 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_086A_01D0CA88.62187F40"
Content-Language: fr

------=_NextPart_000_086A_01D0CA88.62187F40
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I'm trying to add a specific .dts file to the raspberrypi.

Therefore, in my own layer, I have made a linux-raspberrypi_3.%.bbappend,
that applies a patch to the arch/arm/boot/dts makefile to add my own layer,
and a new rule that copies my specific .dts file to the kernel source
directory.

And, initially, I had also defined KERNEL_DEVICETREE += "myown-overlay.dtb"
in there.

 

It definitely compiles well, installation process is smooth, I get the
Image-myown-overlay.dtb in tmp/deploy/raspberrypi2.

 

BUT when I flash my SDCard, it does NOT appear in the "overlays" directory
of the DOS partition!

 

If I add it manually, everything works fine, so I know my overlay has been
correctly generated and is working.

 

What I discovered is that, the sdcard_image_rpi class takes the list of .dtb
to be considered from split_overlays(), which is defined in
linux-raspberrypi-base class.

And split_overlays() basically  gets the value of KERNEL_DEVICETREE (dts =
d.getVar("KERNEL_DEVICETREE", True)).

 

But when I set KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend, it seems
the additional value it defines is NOT taken into account when
linux-raspberry-class evaluates the value of KERNEL_DEVICETREE.

I've checked in the create_image.rpi-sdimg script created, it does not
appear in DTS nor DT_OVERLAYS.

 

But when I define KERNEL_DEVICETREE in my distro.conf, THEN it is taken into
account.

 

My goal would be to add that overlay by NOT modifying distro.conf (distros
are not necessarily RaspberryPi centric) nor in the raspberry machine files
(or local.conf).

This leads me to several questions:

#1 Is there a specific reason why my addition to KERNEL_DEVICETREE gets lost
when creating the image? I mean, is it normal, or are there some steps I
missed there?

#2 Is there a way that I could achieve adding my .dtb overlay in the sdcard
image only from my linux kernel bbappend?

#3 On a more general note, wouldn't it be simpler (better?) to just add all
the .dtb that are found in the deploy/images/ directory to the DOS partition
of the SDCard? After all, the .dtb need to be compiled from a .dts, so all
the .dtb that appear in deploy/images are "legit".

 

Herve


------=_NextPart_000_086A_01D0CA88.62187F40
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
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I&#8217;m trying to add a specific .dts file to the =
raspberrypi.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Therefore, in my own layer, I have made a =
linux-raspberrypi_3.%.bbappend, that applies a patch to the =
arch/arm/boot/dts makefile to add my own layer, and a new rule that =
copies my specific .dts file to the kernel source =
directory.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>And, initially, I had also defined KERNEL_DEVICETREE +=3D =
&#8220;myown-overlay.dtb&#8221; in there.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>It definitely compiles well, =
installation process is smooth, I get the Image-myown-overlay.dtb in =
tmp/deploy/raspberrypi2.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>BUT when I flash my SDCard, it does NOT appear in the =
&#8220;overlays&#8221; directory of the DOS =
partition!<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>If I add it manually, everything works fine, so I know my =
overlay has been correctly generated and is =
working.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>What I discovered is that, the sdcard_image_rpi class takes =
the list of .dtb to be considered from split_overlays(), which is =
defined in linux-raspberrypi-base class.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>And split_overlays() =
basically&nbsp; gets the value of KERNEL_DEVICETREE (dts =3D =
d.getVar(&quot;KERNEL_DEVICETREE&quot;, True)).<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>But when I set KERNEL_DEVICETREE in =
linux-raspberrypi_3.%.bbappend, it seems the additional value it defines =
is NOT taken into account when linux-raspberry-class evaluates the value =
of KERNEL_DEVICETREE.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I&#8217;ve checked in the create_image.rpi-sdimg script =
created, it does not appear in DTS nor =
DT_OVERLAYS.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>But when I define KERNEL_DEVICETREE in my distro.conf, THEN =
it is taken into account&#8230;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>My goal would be to add that =
overlay by NOT modifying distro.conf (distros are not necessarily =
RaspberryPi centric) nor in the raspberry machine files (or =
local.conf).<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>This leads me to several questions:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>#1 Is there a specific reason why =
my addition to KERNEL_DEVICETREE gets lost when creating the image? I =
mean, is it normal, or are there some steps I missed =
there?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>#2 =
Is there a way that I could achieve adding my .dtb overlay in the sdcard =
image only from my linux kernel bbappend?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>#3 On a more general note, =
wouldn&#8217;t it be simpler (better?) to just add all the .dtb that are =
found in the deploy/images/ directory to the DOS partition of the =
SDCard? After all, the .dtb need to be compiled from a .dts, so all the =
.dtb that appear in deploy/images are =
&#8220;legit&#8221;.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Herve<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_086A_01D0CA88.62187F40--
