Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24DBBE00867; Fri, 31 Jul 2015 18:22:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 248D8E00498
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 18:22:43 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.182.217])
	by msfrf2319.sfr.fr (SMTP Server) with ESMTP id 8928970000BB;
	Sat,  1 Aug 2015 03:22:41 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-182-217.dynamic.hinet.net [1.169.182.217])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2319.sfr.fr (SMTP Server) with ESMTP id 0C37270000B4;
	Sat,  1 Aug 2015 03:22:38 +0200 (CEST)
X-SFR-UUID: 20150801012239501.0C37270000B4@msfrf2319.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Sat, 01 Aug 2015 03:22:37 +0100
X-PGP-Universal: processed;	by hjo-pc on Sat, 01 Aug 2015 03:22:37 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Petter =?iso-8859-1?q?Mab=E4cker=27?= <petter@technux.se>,
	francois@concept-embarque.fr, 'Andrei Gherzan' <andrei@gherzan.ro>
References: <086901d0ca77$9e8f1300$dbad3900$@neuf.fr>
	<55BB7830.8010909@technux.se>
In-Reply-To: <55BB7830.8010909@technux.se>
Date: Sat, 1 Aug 2015 03:22:30 +0200
Message-ID: <09b101d0cbf8$8d1ab4d0$a7501e70$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJERVvr1J4YCSmkVzINsflNMWl7ygHG32SgnQEq7wA=
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
X-List-Received-Date: Sat, 01 Aug 2015 01:22:51 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_09B2_01D0CC09.50A4BD50"
Content-Language: fr

------=_NextPart_000_09B2_01D0CC09.50A4BD50
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Petter,

=20

Thanks for your answers.

At some point, I=92ve set it in the disto.conf =96 it works there =96 =
but for
maintenance reasons I=92d love to be able to keep it =93localized=94 =
with the
kernel .bbappend =96 since it clearly depends on the kernel.

=20

For now, I=92ve just patched the sdcard_image-rpi.bbclass, to take the
existing ${KERNEL_IMAGE}*.dtb in the ${DEPLOY_DIR_DIRECTORY}, split them =
in
overlay and non-overlay, and then do the processing like it=92s done =
now.

It does work in my case, and I can provide the patch if it=92s deemed of
interest. But I=92m not sure whether or not there can be some side =
effects =96
looks like rather safe, but more opinions are definitely needed on that.

=20

Regarding the kernel, yes I=92m using the 3.18 that is supported by the
meta-raspberry layer. As I mentioned in another thread, with more recent
kernels, the RaspberryPi overlay layers were added in a separate =
directory,
so in addition to a patch to build the newer kernel, the
sdcard_image-rpi.bbclass will also have to be modified to get the files =
in
the proper directory, when we switch to those newer kernels.

=20

Best regards,

=20

Herve

=20

From: Petter Mab=E4cker [mailto:petter@technux.se]=20
Sent: vendredi 31 juillet 2015 15:29
To: Herve Jourdain <herve.jourdain@neuf.fr>; =
francois@concept-embarque.fr;
Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Adding an additional device tree
overlay in the SDCard

=20

Hi Herve,

See inline answers.

BR,
Petter

On 07/30/2015 05:27 AM, Herve Jourdain wrote:

Hello,

=20

I=92m trying to add a specific .dts file to the raspberrypi.

Therefore, in my own layer, I have made a =
linux-raspberrypi_3.%.bbappend,
that applies a patch to the arch/arm/boot/dts makefile to add my own =
layer,
and a new rule that copies my specific .dts file to the kernel source
directory.

And, initially, I had also defined KERNEL_DEVICETREE +=3D =
=93myown-overlay.dtb=94
in there.

=20

It definitely compiles well, installation process is smooth, I get the
Image-myown-overlay.dtb in tmp/deploy/raspberrypi2.

=20

BUT when I flash my SDCard, it does NOT appear in the =93overlays=94 =
directory
of the DOS partition!

=20

If I add it manually, everything works fine, so I know my overlay has =
been
correctly generated and is working.

=20

What I discovered is that, the sdcard_image_rpi class takes the list of =
.dtb
to be considered from split_overlays(), which is defined in
linux-raspberrypi-base class.

And split_overlays() basically  gets the value of KERNEL_DEVICETREE (dts =
=3D
d.getVar("KERNEL_DEVICETREE", True)).

=20

But when I set KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend, it =
seems
the additional value it defines is NOT taken into account when
linux-raspberry-class evaluates the value of KERNEL_DEVICETREE.

I=92ve checked in the create_image.rpi-sdimg script created, it does not
appear in DTS nor DT_OVERLAYS.

=20

But when I define KERNEL_DEVICETREE in my distro.conf, THEN it is taken =
into
account=85

=20

My goal would be to add that overlay by NOT modifying distro.conf =
(distros
are not necessarily RaspberryPi centric) nor in the raspberry machine =
files
(or local.conf).

This leads me to several questions:

#1 Is there a specific reason why my addition to KERNEL_DEVICETREE gets =
lost
when creating the image? I mean, is it normal, or are there some steps I
missed there?

Yes, in the current solution KERNEL_DEVICETREE is needed in both the =
kernel
recipe and image creation context. When appending KERNEL_DEVICETREE in
linux-raspberrypi_3.%.bbappend your new overlay will only be visible =
within
the linux-raspberrypi scope and NOT within the image class.




#2 Is there a way that I could achieve adding my .dtb overlay in the =
sdcard
image only from my linux kernel bbappend?


If I remember the code correct within the kernel scope we are only
interesting if device tree should be used. At least in theory (assuming =
you
are using a >=3D 3.18 kernel since then KERNEL_DEVICETREE will bve set =
by
default) you should be able to skip the KERNEL_DEVICETREE +=3D code in
linux-raspberrypi_3.%.bbappend (since it will be set any way and the
overlays themselves isn't really used in here..) then append the
KERNEL_DEVICETREE within the image scope. If you don't want to put this =
into
the layer.conf or similiar in your own layer I guess it should work to
"prepend" for example the IMAGE_CMD. But in the current solution I guess
local.conf, layer.conf (in your own layer) or rpi-base.inc (in
meta-raspberrypi) is the easiest options..




#3 On a more general note, wouldn=92t it be simpler (better?) to just =
add all
the .dtb that are found in the deploy/images/ directory to the DOS =
partition
of the SDCard? After all, the .dtb need to be compiled from a .dts, so =
all
the .dtb that appear in deploy/images are =93legit=94.


That might perhaps be a better solution. Have you tried it out? Andrei =
or
Francois might have some comments about this?



=20

Herve





=20


------=_NextPart_000_09B2_01D0CC09.50A4BD50
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Microsoft Word =
15 (filtered medium)"><style><!--
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
	color:black;
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
</o:shapelayout></xml><![endif]--></head><body bgcolor=3Dwhite lang=3DFR =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Hi =
Petter,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Thanks for =
your answers.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#1F497D'>At some point, I&#8217;ve set it in =
the disto.conf &#8211; it works there &#8211; but for maintenance =
reasons I&#8217;d love to be able to keep it &#8220;localized&#8221; =
with the kernel .bbappend &#8211; since it clearly depends on the =
kernel.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>For now, =
I&#8217;ve just patched the sdcard_image-rpi.bbclass, to take the =
existing ${KERNEL_IMAGE}*.dtb in the ${DEPLOY_DIR_DIRECTORY}, split them =
in overlay and non-overlay, and then do the processing like it&#8217;s =
done now.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'>It does work in my case, and I can provide the =
patch if it&#8217;s deemed of interest. But I&#8217;m not sure whether =
or not there can be some side effects &#8211; looks like rather safe, =
but more opinions are definitely needed on that.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Regarding =
the kernel, yes I&#8217;m using the 3.18 that is supported by the =
meta-raspberry layer. As I mentioned in another thread, with more recent =
kernels, the RaspberryPi overlay layers were added in a separate =
directory, so in addition to a patch to build the newer kernel, the =
sdcard_image-rpi.bbclass will also have to be modified to get the files =
in the proper directory, when we switch to those newer =
kernels.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>Best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'>Herve<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'color:windowtext;mso-fareast-language:FR'>From:</span></b><span =
lang=3DEN-US style=3D'color:windowtext;mso-fareast-language:FR'> Petter =
Mab=E4cker [mailto:petter@technux.se] <br><b>Sent:</b> vendredi 31 =
juillet 2015 15:29<br><b>To:</b> Herve Jourdain =
&lt;herve.jourdain@neuf.fr&gt;; francois@concept-embarque.fr; Andrei =
Gherzan &lt;andrei@gherzan.ro&gt;<br><b>Cc:</b> =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] [meta-raspberrypi] =
Adding an additional device tree overlay in the =
SDCard<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Hi =
Herve,<br><br>See inline answers.<br><br>BR,<br>Petter<br><br>On =
07/30/2015 05:27 AM, Herve Jourdain wrote:<span =
style=3D'font-size:12.0pt;mso-fareast-language:FR'><o:p></o:p></span></p>=
</div><blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I&#8217;m trying to add a specific .dts file to the =
raspberrypi.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>Therefore, in my own layer, I have made a =
linux-raspberrypi_3.%.bbappend, that applies a patch to the =
arch/arm/boot/dts makefile to add my own layer, and a new rule that =
copies my specific .dts file to the kernel source =
directory.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>And, initially, I had also defined KERNEL_DEVICETREE +=3D =
&#8220;myown-overlay.dtb&#8221; in there.</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>It definitely compiles well, =
installation process is smooth, I get the Image-myown-overlay.dtb in =
tmp/deploy/raspberrypi2.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>BUT when I flash my SDCard, it does NOT appear in the =
&#8220;overlays&#8221; directory of the DOS =
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
lang=3DEN-US>I&#8217;ve checked in the create_image.rpi-sdimg script =
created, it does not appear in DTS nor =
DT_OVERLAYS.</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>But when I define KERNEL_DEVICETREE in my distro.conf, THEN =
it is taken into account&#8230;</span><o:p></o:p></p><p =
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
options..<br><br><br><o:p></o:p></span></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-US>#3 On a more general note, =
wouldn&#8217;t it be simpler (better?) to just add all the .dtb that are =
found in the deploy/images/ directory to the DOS partition of the =
SDCard? After all, the .dtb need to be compiled from a .dts, so all the =
.dtb that appear in deploy/images are =
&#8220;legit&#8221;.</span><o:p></o:p></p></blockquote><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><br>That might perhaps be a better =
solution. Have you tried it out? Andrei or Francois might have some =
comments about this?<br><br></span><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p></o:p></span></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>Herve</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><br><br><o:p></o:p></span></p></blo=
ckquote><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p></div><=
/body></html>

------=_NextPart_000_09B2_01D0CC09.50A4BD50--
