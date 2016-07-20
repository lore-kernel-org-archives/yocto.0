Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA6A2E009FA; Wed, 20 Jul 2016 07:52:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02847E00990
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 07:52:09 -0700 (PDT)
Received: from nbhjo (unknown [8.36.234.10])
	by msfrf2606.sfr.fr (SMTP Server) with ESMTP id DA4081C00101F;
	Wed, 20 Jul 2016 16:52:03 +0200 (CEST)
Received: from nbhjo (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2606.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 20 Jul 2016 16:52:00 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Francois Muller' <forlorn18@gmail.com>, yocto@yoctoproject.org
References: <1466177739-77627-1-git-send-email-herve.jourdain@neuf.fr>
	<1466177739-77627-4-git-send-email-herve.jourdain@neuf.fr>
	<1466869709.19352.170.camel@gmail.com>
In-Reply-To: <1466869709.19352.170.camel@gmail.com>
Date: Wed, 20 Jul 2016 16:51:56 +0200
Message-ID: <00dd01d1e296$464df160$d2e9d420$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGCAPBFKXP05h/2mkYut2eXOyTfJgE6E1QjAYUiHYOgqy7qEA==
X-sfr-mailing: LEGIT
Subject: Re: ***SPAM*** Re: [meta-raspberrypi][PATCH v5 3/4] linux-raspberrypi-base.bbclass: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Wed, 20 Jul 2016 14:52:13 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00DE_01D1E2A7.09D820F0"
Content-Language: fr

------=_NextPart_000_00DE_01D1E2A7.09D820F0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Fran=C3=A7ois,

=20

Sorry for the late response, I=E2=80=99ve been busy on other things =
recently.

=20

Actually, it=E2=80=99s not a typo, it=E2=80=99s just that we=E2=80=99re =
using the =E2=80=9Coverlays=E2=80=9D variable for storing 2 things, =
depending on the value of the parameter =E2=80=9Cout=E2=80=9D of the =
split_overlays() function:

1. either all the overlays

2. or all the dtb that are not overlays

=20

The case you=E2=80=99re mentioning is for =E2=80=9Cout=E2=80=9D being =
selected, so you want to exclude all the overlays from the dts, and =
store that in the =E2=80=9Coverlays=E2=80=9D variable (the naming of the =
variable is a bit unfortunate in this context, I must admit, but I only =
re-used the existing one).

So now, you not only need to exclude the =E2=80=9C-overlay.dtb=E2=80=9D =
files, but also the =E2=80=9C.dtbo=E2=80=9D files.

So the second pass takes the output of the first pass, in =
=E2=80=9Coverlays=E2=80=9D, and filters out the =E2=80=9C.dtbo=E2=80=9D =
if any.

=20

Hope that helps,

=20

Herv=C3=A9

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Francois Muller
Sent: samedi 25 juin 2016 17:48
To: yocto@yoctoproject.org
Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi][PATCH v5 3/4] =
linux-raspberrypi-base.bbclass: support for .dtbo files for dtb overlays

=20

Hi Herv=C3=A9,

=20

I haven't tested your patch yet, but while reviewing the diff I'm a bit =
surprised about this:

         overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, =
d)

+        overlays =3D oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)

Shouldn't .dtbo files be filtered out from 'dts' instead of 'overlays' =
in the added line?

Seems like a typo to me.

=20

BR,

Fran=C3=A7ois

=20

Le vendredi 17 juin 2016 =C3=A0 23:35 +0800, Herve Jourdain a =C3=A9crit =
:

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead =
of .dtb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")
Change which variant needs to be supported based on the kernel version
=20
CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, =
causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing =
get_kernelversion_file() to fail!
To avoid this problem, get_dts() and split_overlays() MUST be called =
with the kernel version parameter set, when called from =
IMAGE_CMD_rpi-sdimg!
=20
Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr =
<mailto:herve.jourdain@neuf.fr> >
---
 classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)
=20
diff --git a/classes/linux-raspberrypi-base.bbclass =
b/classes/linux-raspberrypi-base.bbclass
index 40beef1..930fc44 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -1,7 +1,8 @@
 inherit linux-kernel-base
=20
-
 def get_dts(d, ver):
+    import re
+
     staging_dir =3D d.getVar("STAGING_KERNEL_BUILDDIR", True)
     dts =3D d.getVar("KERNEL_DEVICETREE", True)
=20
@@ -20,20 +21,24 @@ def get_dts(d, ver):
=20
     # Always turn off device tree support for kernel's < 3.18
     try:
-        if int(min_ver[0]) <=3D 3:
-            if int(min_ver[1]) < 18:
-                dts =3D ""
+        if int(min_ver[0]) >=3D 4:
+            if (int(min_ver[1]) < 4) or (int(min_ver[1]) =3D=3D 4 and =
int(min_ver[2]) < 6):
+                dts =3D ' '.join([(re.sub(r'(.*)\.dtbo$', =
r'\1-overlay.dtb', x)) for x in dts.split()])
+        elif int(min_ver[1]) < 18:
+            dts =3D ""
     except IndexError:
         min_ver =3D None
=20
     return dts
=20
=20
-def split_overlays(d, out):
-    dts =3D get_dts(d, None)
+def split_overlays(d, ver, out):
+    dts =3D get_dts(d, ver)
     if out:
         overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, =
d)
+        overlays =3D oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
     else:
-        overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+        overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) =
+ \
+                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
=20
     return overlays
--=20
2.7.4
=20


------=_NextPart_000_00DE_01D1E2A7.09D820F0
Content-Type: text/html;
	charset="utf-8"
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;}
span.EmailStyle19
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
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hi Fran=C3=A7ois,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Sorry for the late response, I=E2=80=99ve =
been busy on other things recently.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Actually, it=E2=80=99s not a typo, =
it=E2=80=99s just that we=E2=80=99re using the =
=E2=80=9Coverlays=E2=80=9D variable for storing 2 things, depending on =
the value of the parameter =E2=80=9Cout=E2=80=9D of the split_overlays() =
function:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>1. either all the =
overlays<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>2. or all the dtb that are not =
overlays<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>The case you=E2=80=99re mentioning is for =
=E2=80=9Cout=E2=80=9D being selected, so you want to exclude all the =
overlays from the dts, and store that in the =E2=80=9Coverlays=E2=80=9D =
variable (the naming of the variable is a bit unfortunate in this =
context, I must admit, but I only re-used the existing =
one).<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>So now, you not only need to exclude the =
=E2=80=9C-overlay.dtb=E2=80=9D files, but also the =
=E2=80=9C.dtbo=E2=80=9D files.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>So the second pass takes the output of the =
first pass, in =E2=80=9Coverlays=E2=80=9D, and filters out the =
=E2=80=9C.dtbo=E2=80=9D if any.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hope that helps,<o:p></o:p></span></p><p =
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
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Francois Muller<br><b>Sent:</b> samedi 25 juin 2016 =
17:48<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> ***SPAM*** =
Re: [yocto] [meta-raspberrypi][PATCH v5 3/4] =
linux-raspberrypi-base.bbclass: support for .dtbo files for dtb =
overlays<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Hi =
Herv=C3=A9,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>I =
haven't tested your patch yet, but while reviewing the diff I'm a bit =
surprised about this:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;o=
verlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', =
<b><u>dts</u></b>, d)<o:p></o:p></p></div><div><p =
class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;overla=
ys =3D oe.utils.str_filter_out('\S+\.dtbo$', <b><u>overlays</u></b>, =
d)<o:p></o:p></p></div></blockquote><div><p class=3DMsoNormal>Shouldn't =
.dtbo files be filtered out from 'dts' instead of 'overlays' in the =
added line?<o:p></o:p></p></div><div><p class=3DMsoNormal>Seems like a =
typo to me.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>BR,<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Fran=C3=A7ois<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Le vendredi 17 juin 2016 =C3=A0 23:35 +0800, Herve =
Jourdain a =C3=A9crit&nbsp;:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><pre>Kernel 4.4.6+ on =
RaspberryPi support .dtbo files for overlays, instead of =
.dtb.<o:p></o:p></pre><pre>Add support for both variants of overlays =
(&quot;-overlay.dtb&quot; and =
&quot;.dtbo&quot;)<o:p></o:p></pre><pre>Change which variant needs to be =
supported based on the kernel =
version<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>CAUTION: when =
called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing =
'STAGING_KERNEL_BUILDDIR' to not be expanded, causing =
get_kernelversion_file() to fail!<o:p></o:p></pre><pre>To avoid this =
problem, get_dts() and split_overlays() MUST be called with the kernel =
version parameter set, when called from =
IMAGE_CMD_rpi-sdimg!<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>Sig=
ned-off-by: Herve Jourdain &lt;<a =
href=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt;<o:p=
></o:p></pre><pre>---<o:p></o:p></pre><pre> =
classes/linux-raspberrypi-base.bbclass | 19 =
++++++++++++-------<o:p></o:p></pre><pre> 1 file changed, 12 =
insertions(+), 7 =
deletions(-)<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>diff --git =
a/classes/linux-raspberrypi-base.bbclass =
b/classes/linux-raspberrypi-base.bbclass<o:p></o:p></pre><pre>index =
40beef1..930fc44 100644<o:p></o:p></pre><pre>--- =
a/classes/linux-raspberrypi-base.bbclass<o:p></o:p></pre><pre>+++ =
b/classes/linux-raspberrypi-base.bbclass<o:p></o:p></pre><pre>@@ -1,7 =
+1,8 @@<o:p></o:p></pre><pre> inherit =
linux-kernel-base<o:p></o:p></pre><pre> =
<o:p></o:p></pre><pre>-<o:p></o:p></pre><pre> def get_dts(d, =
ver):<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 import =
re<o:p></o:p></pre><pre>+<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 =
staging_dir =3D d.getVar(&quot;STAGING_KERNEL_BUILDDIR&quot;, =
True)<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 dts =3D =
d.getVar(&quot;KERNEL_DEVICETREE&quot;, True)<o:p></o:p></pre><pre> =
<o:p></o:p></pre><pre>@@ -20,20 +21,24 @@ def get_dts(d, =
ver):<o:p></o:p></pre><pre> =
<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# Always turn off =
device tree support for kernel's &lt; =
3.18<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 =
try:<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
int(min_ver[0]) &lt;=3D =
3:<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if int(min_ver[1]) &lt; =
18:<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dts =3D =
&quot;&quot;<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if int(min_ver[0]) &gt;=3D =
4:<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if (int(min_ver[1]) &lt; 4) or (int(min_ver[1]) =
=3D=3D 4 and int(min_ver[2]) &lt; =
6):<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dts =3D ' =
'.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in =
dts.split()])<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 elif int(min_ver[1]) &lt; =
18:<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 dts =3D =
&quot;&quot;<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 except =
IndexError:<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 min_ver =3D None<o:p></o:p></pre><pre> =
<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return =
dts<o:p></o:p></pre><pre> =
<o:p></o:p></pre><pre>=C2=A0<o:p></o:p></pre><pre>-def split_overlays(d, =
out):<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0 dts =3D get_dts(d, =
None)<o:p></o:p></pre><pre>+def split_overlays(d, ver, =
out):<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0 dts =3D get_dts(d, =
ver)<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 if =
out:<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, =
d)<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
overlays =3D oe.utils.str_filter_out('\S+\.dtbo$', overlays, =
d)<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 =
else:<o:p></o:p></pre><pre>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, =
d)<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) + =
\<o:p></o:p></pre><pre>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot; &quot; =
+ oe.utils.str_filter('\S+\.dtbo$', dts, d)<o:p></o:p></pre><pre> =
<o:p></o:p></pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return =
overlays<o:p></o:p></pre><pre>-- =
<o:p></o:p></pre><pre>2.7.4<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><=
/blockquote></div></body></html>

------=_NextPart_000_00DE_01D1E2A7.09D820F0--
