Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88F30E00867; Fri, 31 Jul 2015 18:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp23.services.sfr.fr (smtp23.services.sfr.fr [93.17.128.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C62CE00498
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 18:34:30 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.182.217])
	by msfrf2319.sfr.fr (SMTP Server) with ESMTP id 42E0D7000041;
	Sat,  1 Aug 2015 03:34:30 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-182-217.dynamic.hinet.net [1.169.182.217])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2319.sfr.fr (SMTP Server) with ESMTP id ABC9370000B3;
	Sat,  1 Aug 2015 03:34:27 +0200 (CEST)
X-SFR-UUID: 20150801013427703.ABC9370000B3@msfrf2319.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Sat, 01 Aug 2015 03:34:26 +0100
X-PGP-Universal: processed;	by hjo-pc on Sat, 01 Aug 2015 03:34:26 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Francois Muller' <forlorn18@gmail.com>,
	'Petter =?iso-8859-1?q?Mab=E4cker=27?= <petter@technux.se>,
	'Andrei Gherzan' <andrei@gherzan.ro>
References: <086901d0ca77$9e8f1300$dbad3900$@neuf.fr>
	<55BB7830.8010909@technux.se> <1438355775.3950.34.camel@gmail.com>
In-Reply-To: <1438355775.3950.34.camel@gmail.com>
Date: Sat, 1 Aug 2015 03:34:20 +0200
Message-ID: <09bb01d0cbfa$338681e0$9a9385a0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJERVvr1J4YCSmkVzINsflNMWl7ygHG32SgAbBP402c869yMA==
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Adding an additional device tree overlay in the SDCard
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
X-List-Received-Date: Sat, 01 Aug 2015 01:34:34 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_09BC_01D0CC0A.F7108A60"
Content-Language: fr

------=_NextPart_000_09BC_01D0CC0A.F7108A60
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fran=C3=A7ois,

=20

Well, if the .dtb might not get removed, like you describe, then =
changing the sdcard_image-rpi.bbclass the way I do might for sure create =
issues at some point.

It works for me =E2=80=93 obviously =E2=80=93 but definitely =
can=E2=80=99t be generalized.

Thanks for the insight :)

=20

Best regards,

=20

Herve

=20

From: Francois Muller [mailto:forlorn18@gmail.com]=20
Sent: vendredi 31 juillet 2015 17:16
To: Petter Mab=C3=A4cker <petter@technux.se>; Herve Jourdain =
<herve.jourdain@neuf.fr>; Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Adding an additional device tree =
overlay in the SDCard

=20

Hi,

=20

My comment below.

=20

Best regards,

Fran=C3=A7ois

=20

Le vendredi 31 juillet 2015 =C3=A0 15:29 +0200, Petter Mab=C3=A4cker a =
=C3=A9crit :

Hi Herve,

See inline answers.

BR,
Petter

On 07/30/2015 05:27 AM, Herve Jourdain wrote:

Hello,

=20

I=E2=80=99m trying to add a specific .dts file to the raspberrypi.

Therefore, in my own layer, I have made a =
linux-raspberrypi_3.%.bbappend, that applies a patch to the =
arch/arm/boot/dts makefile to add my own layer, and a new rule that =
copies my specific .dts file to the kernel source directory.

And, initially, I had also defined KERNEL_DEVICETREE +=3D =
=E2=80=9Cmyown-overlay.dtb=E2=80=9D in there.

=20

It definitely compiles well, installation process is smooth, I get the =
Image-myown-overlay.dtb in tmp/deploy/raspberrypi2.

=20

BUT when I flash my SDCard, it does NOT appear in the =
=E2=80=9Coverlays=E2=80=9D directory of the DOS partition!

=20

If I add it manually, everything works fine, so I know my overlay has =
been correctly generated and is working.

=20

What I discovered is that, the sdcard_image_rpi class takes the list of =
.dtb to be considered from split_overlays(), which is defined in =
linux-raspberrypi-base class.

And split_overlays() basically  gets the value of KERNEL_DEVICETREE (dts =
=3D d.getVar("KERNEL_DEVICETREE", True)).

=20

But when I set KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend, it =
seems the additional value it defines is NOT taken into account when =
linux-raspberry-class evaluates the value of KERNEL_DEVICETREE.

I=E2=80=99ve checked in the create_image.rpi-sdimg script created, it =
does not appear in DTS nor DT_OVERLAYS.

=20

But when I define KERNEL_DEVICETREE in my distro.conf, THEN it is taken =
into account=E2=80=A6

=20

My goal would be to add that overlay by NOT modifying distro.conf =
(distros are not necessarily RaspberryPi centric) nor in the raspberry =
machine files (or local.conf).

This leads me to several questions:

#1 Is there a specific reason why my addition to KERNEL_DEVICETREE gets =
lost when creating the image? I mean, is it normal, or are there some =
steps I missed there?

Yes, in the current solution KERNEL_DEVICETREE is needed in both the =
kernel recipe and image creation context. When appending =
KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend your new overlay =
will only be visible within the linux-raspberrypi scope and NOT within =
the image class.




#2 Is there a way that I could achieve adding my .dtb overlay in the =
sdcard image only from my linux kernel bbappend?


If I remember the code correct within the kernel scope we are only =
interesting if device tree should be used. At least in theory (assuming =
you are using a >=3D 3.18 kernel since then KERNEL_DEVICETREE will bve =
set by default) you should be able to skip the KERNEL_DEVICETREE +=3D =
code in linux-raspberrypi_3.%.bbappend (since it will be set any way and =
the overlays themselves isn't really used in here..) then append the =
KERNEL_DEVICETREE within the image scope. If you don't want to put this =
into the layer.conf or similiar in your own layer I guess it should work =
to "prepend" for example the IMAGE_CMD. But in the current solution I =
guess local.conf, layer.conf (in your own layer) or rpi-base.inc (in =
meta-raspberrypi) is the easiest options..

=20

If modifying *.inc / *.conf files is not an option, then I would give a =
try to Petter's suggestion to create a new image recipe (or bbappending =
the current one). I see no reason this shouldn't do the trick, while =
still being easy.

=20





#3 On a more general note, wouldn=E2=80=99t it be simpler (better?) to =
just add all the .dtb that are found in the deploy/images/ directory to =
the DOS partition of the SDCard? After all, the .dtb need to be compiled =
from a .dts, so all the .dtb that appear in deploy/images are =
=E2=80=9Clegit=E2=80=9D.


That might perhaps be a better solution. Have you tried it out? Andrei =
or Francois might have some comments about this?

=20

As far as I can remember, deploy/images/ links are only updated (meaning =
created if not previously present, updated if a new artefact is =
available) but never removed. This implies that if you simply copy =
'deploy/images/*-overlay.dtb'  to the sdcard, your image may end up with =
some devicetree overlays that are potentially no longer wanted or (even =
worse) not to be used with the specific kernel that will boot up the =
board...

That's the reason why I think choosing consciously the devicetree =
(overlay) set to pack in the sdcard may be important.

=20

=20

Herve





=20


------=_NextPart_000_09BC_01D0CC0A.F7108A60
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
class=3DMsoNormal><span style=3D'color:#1F497D'>Hi =
Fran=C3=A7ois,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Well, if =
the .dtb might not get removed, like you describe, then changing the =
sdcard_image-rpi.bbclass the way I do might for sure create issues at =
some point.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'>It works for me =E2=80=93 obviously =E2=80=93 =
but definitely can=E2=80=99t be generalized.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Thanks for =
the insight </span><span lang=3DEN-US =
style=3D'font-family:Wingdings;color:#1F497D'>J</span><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'>Herve<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'mso-fareast-language:FR'>From:</span></b><span lang=3DEN-US =
style=3D'mso-fareast-language:FR'> Francois Muller =
[mailto:forlorn18@gmail.com] <br><b>Sent:</b> vendredi 31 juillet 2015 =
17:16<br><b>To:</b> Petter Mab=C3=A4cker &lt;petter@technux.se&gt;; =
Herve Jourdain &lt;herve.jourdain@neuf.fr&gt;; Andrei Gherzan =
&lt;andrei@gherzan.ro&gt;<br><b>Cc:</b> =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] [meta-raspberrypi] =
Adding an additional device tree overlay in the =
SDCard<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Hi,<span =
style=3D'font-size:12.0pt;mso-fareast-language:FR'><o:p></o:p></span></p>=
</div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>My comment below.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Best regards,<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Fran=C3=A7ois<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div><div><p =
class=3DMsoNormal>Le vendredi 31 juillet 2015 =C3=A0 15:29 +0200, Petter =
Mab=C3=A4cker a =C3=A9crit&nbsp;:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p =
class=3DMsoNormal>Hi Herve,<br><br>See inline =
answers.<br><br>BR,<br>Petter<br><br>On 07/30/2015 05:27 AM, Herve =
Jourdain wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I=E2=80=99m trying to add a specific .dts file to the =
raspberrypi.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>Therefore, in my own layer, I have made a =
linux-raspberrypi_3.%.bbappend, that applies a patch to the =
arch/arm/boot/dts makefile to add my own layer, and a new rule that =
copies my specific .dts file to the kernel source =
directory.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>And, initially, I had also defined KERNEL_DEVICETREE +=3D =
=E2=80=9Cmyown-overlay.dtb=E2=80=9D in there.</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>It definitely compiles well, =
installation process is smooth, I get the Image-myown-overlay.dtb in =
tmp/deploy/raspberrypi2.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>BUT when I flash my SDCard, it does NOT appear in the =
=E2=80=9Coverlays=E2=80=9D directory of the DOS =
partition!</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>If I add it manually, everything works fine, so I know my =
overlay has been correctly generated and is =
working.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>What I discovered is that, the sdcard_image_rpi class takes =
the list of .dtb to be considered from split_overlays(), which is =
defined in linux-raspberrypi-base class.</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>And split_overlays() =
basically&nbsp; gets the value of KERNEL_DEVICETREE (dts =3D =
d.getVar(&quot;KERNEL_DEVICETREE&quot;, True)).</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>But when I set KERNEL_DEVICETREE in =
linux-raspberrypi_3.%.bbappend, it seems the additional value it defines =
is NOT taken into account when linux-raspberry-class evaluates the value =
of KERNEL_DEVICETREE.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I=E2=80=99ve checked in the create_image.rpi-sdimg script =
created, it does not appear in DTS nor =
DT_OVERLAYS.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>But when I define KERNEL_DEVICETREE in my distro.conf, THEN =
it is taken into account=E2=80=A6</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>My goal would be to add that =
overlay by NOT modifying distro.conf (distros are not necessarily =
RaspberryPi centric) nor in the raspberry machine files (or =
local.conf).</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>This leads me to several questions:</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>#1 Is there a specific reason why =
my addition to KERNEL_DEVICETREE gets lost when creating the image? I =
mean, is it normal, or are there some steps I missed =
there?</span><o:p></o:p></p></blockquote><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'>Yes, in the current solution =
</span><span lang=3DEN-US style=3D'font-size:12.0pt;font-family:"Times =
New Roman",serif;mso-fareast-language:FR'>KERNEL_DEVICETREE is needed in =
both the kernel recipe and image creation context. When appending =
KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend your new overlay =
will only be visible within the linux-raspberrypi scope and NOT within =
the image class.</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><br><br><br><o:p></o:p></span></p><=
blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-US>#2 Is there a way that I could =
achieve adding my .dtb overlay in the sdcard image only from my linux =
kernel bbappend?</span><o:p></o:p></p></blockquote><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><br>If I remember the code correct =
within the kernel scope we are only interesting if device tree should be =
used. At least in theory (assuming you are using a &gt;=3D 3.18 kernel =
since then KERNEL_DEVICETREE will bve set by default) you should be able =
to skip the </span><span lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'>KERNEL_DEVICETREE +=3D code in =
linux-raspberrypi_3.%.bbappend (since it will be set any way and the =
overlays themselves isn't really used in here..) then append the =
KERNEL_DEVICETREE within the image scope. If you don't want to put this =
into the layer.conf or similiar in your own layer I guess it should work =
to &quot;prepend&quot; for example the IMAGE_CMD.</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'> But in the current solution I =
guess local.conf, layer.conf (in your own layer) or rpi-base.inc (in =
meta-raspberrypi) is the easiest =
options..<o:p></o:p></span></p></blockquote><div><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p></div><=
div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'>If modifying *.inc / *.conf files =
is not an option, then I would give a try to Petter's suggestion to =
create a new image recipe (or bbappending the current one). I see no =
reason this shouldn't do the trick, while still being =
easy.<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p></div><=
blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><br><br><o:p></o:p></span></p><bloc=
kquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-US>#3 On a more general note, =
wouldn=E2=80=99t it be simpler (better?) to just add all the .dtb that =
are found in the deploy/images/ directory to the DOS partition of the =
SDCard? After all, the .dtb need to be compiled from a .dts, so all the =
.dtb that appear in deploy/images are =
=E2=80=9Clegit=E2=80=9D.</span><o:p></o:p></p></blockquote><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><br>That might perhaps be a better =
solution. Have you tried it out? Andrei or Francois might have some =
comments about this?</span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p></o:p></span></p></blockquote>=
<div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p></div><=
div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'>As far as I can remember, =
deploy/images/ links are only updated (meaning created if not previously =
present, updated if a new artefact is available) but never removed. This =
implies that if you simply copy 'deploy/images/*-overlay.dtb' &nbsp;to =
the sdcard, your image may end up with some devicetree overlays that are =
potentially no longer wanted or (even worse) not to be used with the =
specific kernel that will boot up the =
board...<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'>That's the reason why I think =
choosing consciously the devicetree (overlay) set to pack in the sdcard =
may be important.<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p></div><=
/div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>Herve</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><br><br><o:p></o:p></span></p></blo=
ckquote><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p></block=
quote></div></body></html>

------=_NextPart_000_09BC_01D0CC0A.F7108A60--
