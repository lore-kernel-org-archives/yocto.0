Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F08C3E009B3; Thu, 23 Jul 2015 08:32:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81864E00867
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 08:32:44 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.170.132])
	by msfrf2602.sfr.fr (SMTP Server) with ESMTP id 936381C002067;
	Thu, 23 Jul 2015 17:32:43 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-170-132.dynamic.hinet.net [1.169.170.132])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2602.sfr.fr (SMTP Server) with ESMTP id 3D6CC1C00040C;
	Thu, 23 Jul 2015 17:32:40 +0200 (CEST)
X-SFR-UUID: 20150723153241251.3D6CC1C00040C@msfrf2602.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Thu, 23 Jul 2015 17:32:41 +0100
X-PGP-Universal: processed;	by hjo-pc on Thu, 23 Jul 2015 17:32:41 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>,
	'Petter =?iso-8859-1?q?Mab=E4cker=27?= <petter@technux.se>
Date: Thu, 23 Jul 2015 17:32:35 +0200
Message-ID: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdDFW5SHMTuT8i8QRCKNIlX2IZ7Geg==
Cc: yocto@yoctoproject.org
Subject: [meta-raspberrypi][PATCH] Add networkd as default for RaspberryPi
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
X-List-Received-Date: Thu, 23 Jul 2015 15:32:51 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0042_01D0C56D.93F24660"
Content-Language: fr

------=_NextPart_000_0042_01D0C56D.93F24660
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This patch adds systemd-networkd for RaspberryPi in the meta-raspberrypi
layer, in order to have Ethernet and Networking work out of the box.

=20

This said, I=92m not 100% sure if it should be enabled in =
meta-raspberrypi,
instead of another custom layer.

But something similar needs to be added somewhere, and with the current
version of Yocto on RaspberryPi, without this patch, network just =
doesn=92t
start=85

=20

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr
<mailto:herve.jourdain@neuf.fr> >

---

diff -Naur meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
meta-raspberrypi/recipes-core/systemd/files/eth.network

--- meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
1970-01-01 08:00:00.000000000 +0800

+++ meta-raspberrypi/recipes-core/systemd/files/eth.network    =
2015-07-22
12:01:53.587830690 +0800

@@ -0,0 +1,6 @@

+[Match]

+Name=3Deth*

+

+[Network]

+DHCP=3Dv4

+

diff -Naur meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend

--- meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
1970-01-01 08:00:00.000000000 +0800

+++ meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend
2015-07-22 12:05:07.307838546 +0800

@@ -0,0 +1,17 @@

+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

+

+EXTRA_OECONF +=3D "--disable-ldconfig"

+

+PACKAGECONFIG +=3D "networkd resolved"

+

+CFLAGS_append_arm =3D " -fno-lto"

+

+SRC_URI +=3D "file://eth.network"

+

+FILES_${PN} +=3D "{sysconfdir}/systemd/network/*"

+

+do_install_append() {

+    install -d ${D}${sysconfdir}/systemd/network/

+    install -m 0644 ${WORKDIR}/*.network =
${D}${sysconfdir}/systemd/network/

+}

+

=20


------=_NextPart_000_0042_01D0C56D.93F24660
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
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
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
class=3DMsoNormal><span lang=3DEN-US>This patch adds systemd-networkd =
for RaspberryPi in the meta-raspberrypi layer, in order to have Ethernet =
and Networking work out of the box.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>This said, I&#8217;m not 100% sure =
if it should be enabled in meta-raspberrypi, instead of another custom =
layer.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>But =
something similar needs to be added somewhere, and with the current =
version of Yocto on RaspberryPi, without this patch, network just =
doesn&#8217;t start&#8230;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>Signed-off-by: Herve Jourdain =
&lt;<a =
href=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt;<o:p=
></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>---<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>diff -Naur =
meta-raspberrypi.orig/recipes-core/systemd/files/eth.network =
meta-raspberrypi/recipes-core/systemd/files/eth.network<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US>--- =
meta-raspberrypi.orig/recipes-core/systemd/files/eth.network=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 1970-01-01 08:00:00.000000000 =
+0800<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>+++ =
meta-raspberrypi/recipes-core/systemd/files/eth.network=A0=A0=A0 =
2015-07-22 12:01:53.587830690 +0800<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>@@ -0,0 +1,6 =
@@<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+[Match]<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+Name=3Deth*<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+[Network]<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+DHCP=3Dv4<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>diff -Naur =
meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend =
meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>--- =
meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend=A0=A0=A0=A0=
 1970-01-01 08:00:00.000000000 +0800<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+++ =
meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 2015-07-22 12:05:07.307838546 +0800<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>@@ -0,0 +1,17 =
@@<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+FILESEXTRAPATHS_prepend :=3D =
&quot;${THISDIR}/files:&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+EXTRA_OECONF +=3D =
&quot;--disable-ldconfig&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+PACKAGECONFIG +=3D &quot;networkd =
resolved&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+CFLAGS_append_arm =3D &quot; =
-fno-lto&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+SRC_URI +=3D =
&quot;file://eth.network&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+FILES_${PN} +=3D =
&quot;{sysconfdir}/systemd/network/*&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+do_install_append() =
{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>+=A0=A0=A0 install -d =
${D}${sysconfdir}/systemd/network/<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+=A0=A0=A0 install -m 0644 =
${WORKDIR}/*.network =
${D}${sysconfdir}/systemd/network/<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+}<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>+<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_0042_01D0C56D.93F24660--
