Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3FD4E00AD1; Tue, 11 Aug 2015 01:48:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp22.services.sfr.fr (smtp22.services.sfr.fr [93.17.128.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EB31E00AB6
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 01:47:40 -0700 (PDT)
Received: from filter.sfr.fr (localhost [111.83.139.231])
	by msfrf2201.sfr.fr (SMTP Server) with ESMTP id BA9C77000040;
	Tue, 11 Aug 2015 10:47:39 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (111-83-139-231.EMOME-IP.hinet.net
	[111.83.139.231])	(using TLSv1
	with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2201.sfr.fr (SMTP Server) with ESMTP id 1B65E70000AC;
	Tue, 11 Aug 2015 10:47:34 +0200 (CEST)
X-SFR-UUID: 20150811084735112.1B65E70000AC@msfrf2201.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Tue, 11 Aug 2015 10:47:37 +0100
X-PGP-Universal: processed;	by hjo-pc on Tue, 11 Aug 2015 10:47:37 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: petter@technux.se, 'Alex J Lennon' <ajlennon@gmail.com>
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<fc34ba0543c946b98d8d736ff5e66421@technux.se>
In-Reply-To: <fc34ba0543c946b98d8d736ff5e66421@technux.se>
Date: Tue, 11 Aug 2015 10:47:23 +0200
Message-ID: <019401d0d412$60069b90$2013d2b0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJWi6xi+B1zu7IJE856NFTKJFJLgAK/Mw3KnOUTVtA=
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Tue, 11 Aug 2015 08:48:00 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0195_01D0D423.2390A410"
Content-Language: fr

------=_NextPart_000_0195_01D0D423.2390A410
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Petter,

=20

In my patch of mid-june, which was about that, I did this in =
install_prepend, and it did work.

I therefore believe that adding it in the compile_append should work =
fine as well.

=20

Best regards,

=20

Herve

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Petter =
Mab=C3=A4cker
Sent: mardi 11 ao=C3=BBt 2015 09:58
To: Alex J Lennon <ajlennon@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: =
Update kernel to 3.18.16

=20

2015-08-10 13:08 skrev Alex J Lennon:

This requires some changes to KERNEL_DEVICETREE as the dtb
layout has changed to support overlays. This change also
makes us ready to support kernel 4.x series
=20
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk =
<mailto:ajlennon@dynamicdevices.co.uk> >
---
 conf/machine/include/rpi-base.inc              | 22 =
++++++++++------------
 recipes-kernel/linux/linux-raspberrypi_3.18.bb |  9 +++++++--
 2 files changed, 17 insertions(+), 14 deletions(-)
=20
diff --git a/conf/machine/include/rpi-base.inc =
b/conf/machine/include/rpi-base.inc
index 1dda207..8caa5ba 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -23,18 +23,16 @@ KERNEL_DEVICETREE ?=3D " \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
     \
-    ds1307-rtc-overlay.dtb \
-    hifiberry-amp-overlay.dtb \
-    hifiberry-dac-overlay.dtb \
-    hifiberry-dacplus-overlay.dtb \
-    hifiberry-digi-overlay.dtb \
-    iqaudio-dac-overlay.dtb \
-    iqaudio-dacplus-overlay.dtb \
-    lirc-rpi-overlay.dtb \
-    pcf8523-rtc-overlay.dtb \
-    pps-gpio-overlay.dtb \
-    w1-gpio-overlay.dtb \
-    w1-gpio-pullup-overlay.dtb \
+    overlays/hifiberry-amp-overlay.dtb \
+    overlays/hifiberry-dac-overlay.dtb \
+    overlays/hifiberry-dacplus-overlay.dtb \
+    overlays/hifiberry-digi-overlay.dtb \
+    overlays/iqaudio-dac-overlay.dtb \
+    overlays/iqaudio-dacplus-overlay.dtb \
+    overlays/lirc-rpi-overlay.dtb \
+    overlays/pps-gpio-overlay.dtb \
+    overlays/w1-gpio-overlay.dtb \
+    overlays/w1-gpio-pullup-overlay.dtb \
     "
 KERNEL_IMAGETYPE ?=3D "Image"
=20
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb =
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index 6d8b155..18c2020 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,6 +1,11 @@
-LINUX_VERSION ?=3D "3.18.11"
+LINUX_VERSION ?=3D "3.18.16"
=20
-SRCREV =3D "d64fa8121fca9883d6fb14ca06d2abf66496195e"
+SRCREV =3D "1bb18c8f721ef674a447f3622273f2e2de7a205c"
 SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.=
y"
=20
 require linux-raspberrypi.inc
+
+# Create missing out of tree 'overlays' directory prior to install step
+do_compile_append() {
+  mkdir -p ${B}/arch/arm/boot/dts/overlays
+}
--=20
1.9.1
=20

Hi Alex,

At least I get problems during compile step with above change (I'm =
building for rpi2). So are your sure '${B}/arch/arm/boot/dts/overlays' =
isn't needed during compile? I tried with changing above from append to =
prepand instead and then it worked fine for me (when building 3.18 =
kernel).

(from log.do_compile, complete log can be found at: =
http://www.technux.se/logs/log.do_compile.4398.fail )

  KSYM    .tmp_kallsyms1.o
  KSYM    .tmp_kallsyms2.o
  LD      vmlinux
  SORTEX  vmlinux
  SYSMAP  System.map
  OBJCOPY arch/arm/boot/Image
  Kernel: arch/arm/boot/Image is ready
NOTE: make -j 4 bcm2708-rpi-b.dtb
  DTC     arch/arm/boot/dts/bcm2708-rpi-b.dtb
NOTE: make -j 4 bcm2708-rpi-b-plus.dtb
  DTC     arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb
NOTE: make -j 4 bcm2709-rpi-2-b.dtb
  DTC     arch/arm/boot/dts/bcm2709-rpi-2-b.dtb
NOTE: make -j 4 overlays/hifiberry-amp-overlay.dtb
  DTC     arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb
cc1: fatal error: opening output file =
arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp: No such =
file or directory
compilation terminated.
make[3]: *** [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] =
Error 1
make[2]: *** [overlays/hifiberry-amp-overlay.dtb] Error 2
make[1]: *** [sub-make] Error 2
make: *** [__sub-make] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at =
/home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-po=
ky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f362227=
3f2e2de7a205c-r0/temp/log.do_compile.4398)




BR, Petter


------=_NextPart_000_0195_01D0D423.2390A410
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.sig
	{mso-style-name:sig;}
span.EmailStyle21
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
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hi Petter,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>In my patch of mid-june, which was about =
that, I did this in install_prepend, and it did =
work.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I therefore believe that adding it in the =
compile_append should work fine as well.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
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
<b>On Behalf Of </b>Petter Mab=C3=A4cker<br><b>Sent:</b> mardi 11 =
ao=C3=BBt 2015 09:58<br><b>To:</b> Alex J Lennon =
&lt;ajlennon@gmail.com&gt;<br><b>Cc:</b> =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] =
[meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to =
3.18.16<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p><span =
style=3D'font-family:"Helvetica",sans-serif'>2015-08-10 13:08 skrev Alex =
J Lennon:<o:p></o:p></span></p><blockquote =
style=3D'border:none;border-left:solid #1010FF 1.5pt;padding:0cm 0cm 0cm =
4.0pt;margin-left:3.75pt;margin-top:5.0pt;margin-bottom:5.0pt'><pre>This =
requires some changes to KERNEL_DEVICETREE as the =
dtb<o:p></o:p></pre><pre>layout has changed to support overlays. This =
change also<o:p></o:p></pre><pre>makes us ready to support kernel 4.x =
series<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>Signed-off-by: =
Alex J Lennon &lt;<a =
href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.=
uk</a>&gt;<o:p></o:p></pre><pre>---<o:p></o:p></pre><pre> =
conf/machine/include/rpi-base.inc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 22 =
++++++++++------------<o:p></o:p></pre><pre> =
recipes-kernel/linux/linux-raspberrypi_3.18.bb |=C2=A0 9 =
+++++++--<o:p></o:p></pre><pre> 2 files changed, 17 insertions(+), 14 =
deletions(-)<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>diff --git =
a/conf/machine/include/rpi-base.inc =
b/conf/machine/include/rpi-base.inc<o:p></o:p></pre><pre>index =
1dda207..8caa5ba 100644<o:p></o:p></pre><pre>--- =
a/conf/machine/include/rpi-base.inc<o:p></o:p></pre><pre>+++ =
b/conf/machine/include/rpi-base.inc<o:p></o:p></pre><pre>@@ -23,18 =
+23,16 @@ KERNEL_DEVICETREE ?=3D &quot; =
\<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 bcm2708-rpi-b-plus.dtb =
\<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 bcm2709-rpi-2-b.dtb =
\<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 ds1307-rtc-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 hifiberry-amp-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 hifiberry-dac-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 hifiberry-dacplus-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 hifiberry-digi-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 iqaudio-dac-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 iqaudio-dacplus-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 lirc-rpi-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 pcf8523-rtc-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 pps-gpio-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 w1-gpio-overlay.dtb =
\<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 w1-gpio-pullup-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 =
overlays/hifiberry-amp-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 =
overlays/hifiberry-dac-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 =
overlays/hifiberry-dacplus-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 =
overlays/hifiberry-digi-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 =
overlays/iqaudio-dac-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 =
overlays/iqaudio-dacplus-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 overlays/lirc-rpi-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 overlays/pps-gpio-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 overlays/w1-gpio-overlay.dtb =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 =
overlays/w1-gpio-pullup-overlay.dtb =
\<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 =
&quot;<o:p></o:p></pre><pre> KERNEL_IMAGETYPE ?=3D =
&quot;Image&quot;<o:p></o:p></pre><pre> <o:p></o:p></pre><pre>diff --git =
a/recipes-kernel/linux/linux-raspberrypi_3.18.bb =
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb<o:p></o:p></pre><pre>ind=
ex 6d8b155..18c2020 100644<o:p></o:p></pre><pre>--- =
a/recipes-kernel/linux/linux-raspberrypi_3.18.bb<o:p></o:p></pre><pre>+++=
 =
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb<o:p></o:p></pre><pre>@@ =
-1,6 +1,11 @@<o:p></o:p></pre><pre>-LINUX_VERSION ?=3D =
&quot;3.18.11&quot;<o:p></o:p></pre><pre>+LINUX_VERSION ?=3D =
&quot;3.18.16&quot;<o:p></o:p></pre><pre> <o:p></o:p></pre><pre>-SRCREV =
=3D =
&quot;d64fa8121fca9883d6fb14ca06d2abf66496195e&quot;<o:p></o:p></pre><pre=
>+SRCREV =3D =
&quot;1bb18c8f721ef674a447f3622273f2e2de7a205c&quot;<o:p></o:p></pre><pre=
> SRC_URI =3D =
&quot;git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-=
3.18.y&quot;<o:p></o:p></pre><pre> <o:p></o:p></pre><pre>=C2=A0require =
linux-raspberrypi.inc<o:p></o:p></pre><pre>+<o:p></o:p></pre><pre>+# =
Create missing out of tree 'overlays' directory prior to install =
step<o:p></o:p></pre><pre>+do_compile_append() =
{<o:p></o:p></pre><pre>+=C2=A0 mkdir -p =
${B}/arch/arm/boot/dts/overlays<o:p></o:p></pre><pre>+}<o:p></o:p></pre><=
pre><span class=3Dsig>-- <o:p></o:p></span></pre><pre><span =
class=3Dsig>1.9.1<o:p></o:p></span></pre><pre =
style=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></pre></blockquote><p><sp=
an style=3D'font-family:"Helvetica",sans-serif'>Hi =
Alex,<o:p></o:p></span></p><p><span =
style=3D'font-family:"Helvetica",sans-serif'>At least I get problems =
during compile step with above change (I'm building for rpi2). So are =
your sure '${B}/arch/arm/boot/dts/overlays' isn't needed during compile? =
I tried with changing above from append to prepand instead and then it =
worked fine for me (when building 3.18 =
kernel).<o:p></o:p></span></p><p><span =
style=3D'font-family:"Helvetica",sans-serif'>(from log.do_compile, =
complete log can be found at: <a =
href=3D"http://www.technux.se/logs/log.do_compile.4398.fail">http://www.t=
echnux.se/logs/log.do_compile.4398.fail</a> =
)<o:p></o:p></span></p><pre>=C2=A0 KSYM=C2=A0=C2=A0=C2=A0 =
.tmp_kallsyms1.o<o:p></o:p></pre><pre> =C2=A0KSYM=C2=A0=C2=A0=C2=A0 =
.tmp_kallsyms2.o<o:p></o:p></pre><pre>=C2=A0 =
LD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vmlinux<o:p></o:p></pre><pre>=C2=A0 =
SORTEX=C2=A0 vmlinux<o:p></o:p></pre><pre>=C2=A0 SYSMAP=C2=A0 =
System.map<o:p></o:p></pre><pre>=C2=A0 OBJCOPY =
arch/arm/boot/Image<o:p></o:p></pre><pre>=C2=A0 Kernel: =
arch/arm/boot/Image is ready<o:p></o:p></pre><pre>NOTE: make -j 4 =
bcm2708-rpi-b.dtb<o:p></o:p></pre><pre>=C2=A0 =
DTC=C2=A0=C2=A0=C2=A0=C2=A0 =
arch/arm/boot/dts/bcm2708-rpi-b.dtb<o:p></o:p></pre><pre>NOTE: make -j 4 =
bcm2708-rpi-b-plus.dtb<o:p></o:p></pre><pre>=C2=A0 =
DTC=C2=A0=C2=A0=C2=A0=C2=A0 =
arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb<o:p></o:p></pre><pre>NOTE: make =
-j 4 bcm2709-rpi-2-b.dtb<o:p></o:p></pre><pre>=C2=A0 =
DTC=C2=A0=C2=A0=C2=A0=C2=A0 =
arch/arm/boot/dts/bcm2709-rpi-2-b.dtb<o:p></o:p></pre><pre>NOTE: make -j =
4 overlays/hifiberry-amp-overlay.dtb<o:p></o:p></pre><pre>=C2=A0 =
DTC=C2=A0=C2=A0=C2=A0=C2=A0 =
arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb<o:p></o:p></pre><pre=
>cc1: fatal error: opening output file =
arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp: No such =
file or directory<o:p></o:p></pre><pre>compilation =
terminated.<o:p></o:p></pre><pre>make[3]: *** =
[arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error =
1<o:p></o:p></pre><pre>make[2]: *** [overlays/hifiberry-amp-overlay.dtb] =
Error 2<o:p></o:p></pre><pre>make[1]: *** [sub-make] Error =
2<o:p></o:p></pre><pre>make: *** [__sub-make] Error =
2<o:p></o:p></pre><pre>ERROR: oe_runmake =
failed<o:p></o:p></pre><pre>ERROR: Function failed: do_compile (log file =
is located at =
/home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-po=
ky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f362227=
3f2e2de7a205c-r0/temp/log.do_compile.4398)<o:p></o:p></pre><pre><br><br><=
o:p></o:p></pre><p><span =
style=3D'font-family:"Helvetica",sans-serif'>BR, =
Petter<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0195_01D0D423.2390A410--
