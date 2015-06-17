Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B460E0095D; Tue, 16 Jun 2015 20:03:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.82 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 349 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Jun 2015 20:02:58 PDT
Received: from smtp24.services.sfr.fr (smtp24.services.sfr.fr [93.17.128.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29D23E0086D
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 20:02:58 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.72.215.129])
	by msfrf2417.sfr.fr (SMTP Server) with ESMTP id 8E88670000B6
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 04:57:06 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-72-215-129.EMOME-IP.hinet.net
	[42.72.215.129])	(using TLSv1
	with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2417.sfr.fr (SMTP Server) with ESMTP id 53C7670000AF
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 04:57:04 +0200 (CEST)
X-SFR-UUID: 20150617025705343.53C7670000AF@msfrf2417.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Wed, 17 Jun 2015 04:57:05 +0100
X-PGP-Universal: processed;	by hjo-pc on Wed, 17 Jun 2015 04:57:05 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 04:56:59 +0200
Message-ID: <008101d0a8a9$4ad33740$e079a5c0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AdCoptygxcqJmVAuQ4GBjQ9Zq8G1+w==
Subject: [meta-raspberrypi] ds1307-rtc-overlay.dtb has been removed from the kernel tree
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
X-List-Received-Date: Wed, 17 Jun 2015 03:03:02 -0000
X-Groupsio-MsgNum: 25211
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0082_01D0A8BA.0E5E5130"
Content-Language: fr

------=_NextPart_000_0082_01D0A8BA.0E5E5130
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0083_01D0A8BA.0E5E5130"

------=_NextPart_001_0083_01D0A8BA.0E5E5130
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I'm not sure about the formalism of submitting patches to this list, so I
hope you will forgive any misstep.

 

Recently, the RaspberryPi kernel has removed some "deprecated" DTB overlays
from the kernel tree, causing the meta-raspberrypi layer to fail at compile
time.

The failure message is:

No rule to make target `arch/arm/boot/dts/ds1307-rtc-overlay.dtb'.  Stop.

 

The DTB overlays that have been deleted are:

ds1307-rtc-overlay

pf2127-rtc-overlay

pcf8523-rtc-overlay

pfc8563-rtc-overlay

 

They've been replaced by: i2c-rtc-overlay

 

Therefore, the file conf/machine/include/rpi-base.inc must be modified to
accommodate those changes.

 

The proposed patch is:

--- meta-raspberrypi/conf/machine/include/rpi-base.inc     2015-06-10
12:59:09.069237631 +0800

+++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc 2015-06-17
01:11:58.125869271 +0800

@@ -23,15 +23,14 @@

     bcm2708-rpi-b-plus.dtb \

     bcm2709-rpi-2-b.dtb \

     \

-    ds1307-rtc-overlay.dtb \

     hifiberry-amp-overlay.dtb \

     hifiberry-dac-overlay.dtb \

     hifiberry-dacplus-overlay.dtb \

     hifiberry-digi-overlay.dtb \

+    i2c-rtc-overlay.dtb \

     iqaudio-dac-overlay.dtb \

     iqaudio-dacplus-overlay.dtb \

     lirc-rpi-overlay.dtb \

-    pcf8523-rtc-overlay.dtb \

     pps-gpio-overlay.dtb \

     w1-gpio-overlay.dtb \

     w1-gpio-pullup-overlay.dtb \

Signed-off-by: herve.jourdain@neuf.fr <mailto:herve.jourdain@neuf.fr> 

 

Regards


------=_NextPart_001_0083_01D0A8BA.0E5E5130
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
lang=3DEN-US>I&#8217;m not sure about the formalism of submitting =
patches to this list, so I hope you will forgive any =
misstep.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Recently, the RaspberryPi kernel has removed some =
&#8220;deprecated&#8221; DTB overlays from the kernel tree, causing the =
meta-raspberrypi layer to fail at compile time.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>The failure message =
is:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>No rule to make target =
`arch/arm/boot/dts/ds1307-rtc-overlay.dtb'.&nbsp; =
Stop.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>The DTB overlays that have been deleted =
are:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>ds1307-rtc-overlay<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>pf2127-rtc-overlay<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>pcf8523-rtc-overlay<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>pfc8563-rtc-overlay<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>They&#8217;ve been replaced by: =
i2c-rtc-overlay<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Therefore, the file conf/machine/include/rpi-base.inc must =
be modified to accommodate those changes.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>The proposed patch =
is:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>--- =
meta-raspberrypi/conf/machine/include/rpi-base.inc&nbsp;&nbsp;&nbsp;&nbsp=
; 2015-06-10 12:59:09.069237631 +0800<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>+++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc =
2015-06-17 01:11:58.125869271 +0800<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>@@ -23,15 +23,14 @@<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; bcm2708-rpi-b-plus.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; =
bcm2709-rpi-2-b.dtb \<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; \<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>-&nbsp;&nbsp;&nbsp; ds1307-rtc-overlay.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; =
hifiberry-amp-overlay.dtb \<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; hifiberry-dac-overlay.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; =
hifiberry-dacplus-overlay.dtb \<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; hifiberry-digi-overlay.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>+&nbsp;&nbsp;&nbsp; =
i2c-rtc-overlay.dtb \<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; iqaudio-dac-overlay.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; =
iqaudio-dacplus-overlay.dtb \<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; lirc-rpi-overlay.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>-&nbsp;&nbsp;&nbsp; =
pcf8523-rtc-overlay.dtb \<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; pps-gpio-overlay.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; =
w1-gpio-overlay.dtb \<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp; w1-gpio-pullup-overlay.dtb =
\<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN>Signed-off-by: <a =
href=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a><o:p></o=
:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Regards<o:p></o:p></span></p></div></body></html>

------=_NextPart_001_0083_01D0A8BA.0E5E5130--

------=_NextPart_000_0082_01D0A8BA.0E5E5130
Content-Type: application/octet-stream;
	name="meta-raspberrypi-rpi-base.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="meta-raspberrypi-rpi-base.patch"

--- meta-raspberrypi/conf/machine/include/rpi-base.inc	2015-06-10 12:59:09.=
069237631 +0800
+++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc	2015-06-17 01:11=
:58.125869271 +0800
@@ -23,15 +23,14 @@
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
     \
-    ds1307-rtc-overlay.dtb \
     hifiberry-amp-overlay.dtb \
     hifiberry-dac-overlay.dtb \
     hifiberry-dacplus-overlay.dtb \
     hifiberry-digi-overlay.dtb \
+	i2c-rtc-overlay.dtb \
     iqaudio-dac-overlay.dtb \
     iqaudio-dacplus-overlay.dtb \
     lirc-rpi-overlay.dtb \
-    pcf8523-rtc-overlay.dtb \
     pps-gpio-overlay.dtb \
     w1-gpio-overlay.dtb \
     w1-gpio-pullup-overlay.dtb \

------=_NextPart_000_0082_01D0A8BA.0E5E5130--
