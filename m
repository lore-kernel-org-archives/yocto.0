Return-Path: <forlorn18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B4C2E00A6A; Mon, 25 Jul 2016 07:33:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (forlorn18[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4509E00A03
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:33:13 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id i5so17018705wmg.2
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version; 
	bh=6H4ov/VBliy4xgm/b5OKEcjD0gizIBx+oUvbLO+rYxs=;
	b=pWajzE0VFt81jgG25/BKCT1XHESCXuMnOJODgs3jVhjWd6269OImyTdsv66E5ekLcf
	bG9qkiqnJOi/tNz8mfV+D9JNs4VEhZ0GXZv3+NpJvv4EJHVuNWwrb8IzNg+CRa9HCIoN
	qZFGYJK/oxD/Hy9bhFn8N92+LS1E6IrtKH0FpkaoMLeCHjzUJtjdA2EO5ck7BOAvrMFW
	BwTKxWldeqR15BM47MRC8VJwciyKvezD3g3wERfSAICMyTdRAENDTwlWvvngoghG9Jvv
	y0mVTYZPMe+1i9SDAjr47JBEDV8j07c7SSqbjqC7cFMkARuiBB4yt9Lo6iyD1t7EJdG9
	PlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version;
	bh=6H4ov/VBliy4xgm/b5OKEcjD0gizIBx+oUvbLO+rYxs=;
	b=LhE9poCdPFIyeAhIa3M0UdTyO2/jkc+oSE09m+YpSOBRd5REvXJEOCOuRP4I9jzfVF
	JyU2ye0OAgirueoD7N6L/K+qP4AziNibnz+9Z7JoP2qEusJNB+2moR2XskDoyy8jrYr6
	XEsVSnG1AO8+/kzduLGCfCv6kbf56IS0NJfa2HSG4FulrE5lSKyzLov2xbZAgYYuuPSt
	YyqLe1wS5FHMbS6NePSsBXhvigCN2rXrEcuRHOajIt2qizZtWkBsqsR0553QoCHt1+zd
	bmdX6wjQY5vEgsMzyYw+fm/J4UWC7fyoH/N2jRPam1Mnhvw/vNHcOMed5T3oYss7bVLE
	93oQ==
X-Gm-Message-State: ALyK8tLmpigurEJuVvvPBN1Moke9wCXebk9xtxL8UNu/16O9+f69Y8UizrG5D0X3+7Yh/w==
X-Received: by 10.28.4.194 with SMTP id 185mr40971439wme.91.1469457192840;
	Mon, 25 Jul 2016 07:33:12 -0700 (PDT)
Received: from ConcEmb (ger67-1-88-180-180-180.fbx.proxad.net.
	[88.180.180.180]) by smtp.gmail.com with ESMTPSA id
	o7sm16111745wjf.39.2016.07.25.07.33.07
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 25 Jul 2016 07:33:11 -0700 (PDT)
Message-ID: <1469457186.5627.71.camel@gmail.com>
From: Francois Muller <forlorn18@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
Date: Mon, 25 Jul 2016 16:33:06 +0200
In-Reply-To: <00dd01d1e296$464df160$d2e9d420$@neuf.fr>
References: <1466177739-77627-1-git-send-email-herve.jourdain@neuf.fr>
	<1466177739-77627-4-git-send-email-herve.jourdain@neuf.fr>
	<1466869709.19352.170.camel@gmail.com>
	<00dd01d1e296$464df160$d2e9d420$@neuf.fr>
X-Mailer: Evolution 3.20.4-1 
Mime-Version: 1.0
Subject: Re: [meta-raspberrypi][PATCH v5 3/4] linux-raspberrypi-base.bbclass: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Mon, 25 Jul 2016 14:33:17 -0000
Content-Type: multipart/alternative; boundary="=-o07jxOSyn8acxl7rbOqA"

--=-o07jxOSyn8acxl7rbOqA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Hervé,

Thanks for the explanation, I actually missed the 2nd pass aspect of
the process.

Your patch is running ok for me (4.1.21 and 4.4.13) after having found
and applied the required linux-dtb.inc patch you prepared (for the
record, it is named "[PATCH v3] Support for .dtbo files for dtb
overlays" in oe-core list).

Nevertheless, I've some remarks about the process that I'll emit on
your latest patch version (v6) for consistency.

BR,
François


Le mercredi 20 juillet 2016 à 16:51 +0200, Herve Jourdain a écrit :
> > > > > > > > > > > > > > > Hi François, Sorry for the late response, I’ve been busy on other
things recently. Actually, it’s not a typo, it’s just that we’re
using the “overlays” variable for storing 2 things, depending on the
value of the parameter “out” of the split_overlays() function:1.
either all the overlays2. or all the dtb that are not overlays The
case you’re mentioning is for “out” being selected, so you want to
exclude all the overlays from the dts, and store that in the
“overlays” variable (the naming of the variable is a bit unfortunate
in this context, I must admit, but I only re-used the existing
one).So now, you not only need to exclude the “-overlay.dtb” files,
but also the “.dtbo” files.So the second pass takes the output of the
first pass, in “overlays”, and filters out the “.dtbo” if any. Hope
that helps, Hervé From: yocto-bounces@yoctoproject.org [mailto:yocto-
bounces@yoctoproject.org] On Behalf Of Francois Muller
> Sent: samedi 25 juin 2016 17:48
> To: yocto@yoctoproject.org
> > > Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi][PATCH v5 3/4]
linux-raspberrypi-base.bbclass: support for .dtbo files for dtb
overlays
> 
>  Hi Hervé,
>  
> > I haven't tested your patch yet, but while reviewing the diff I'm a
bit surprised about this:
> >          overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$',
dts, d)
> > +        overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays,
d)
> > Shouldn't .dtbo files be filtered out from 'dts' instead of
'overlays' in the added line?
> Seems like a typo to me.
>  
> BR,
> François
>  
> Le vendredi 17 juin 2016 à 23:35 +0800, Herve Jourdain a écrit :
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays,
instead of .dtb.Add support for both variants of overlays ("-
overlay.dtb" and ".dtbo")Change which variant needs to be supported
based on the kernel version CAUTION: when called from IMAGE_CMD_rpi-
sdimg, 'TMPDIR' is not set, causing 'STAGING_KERNEL_BUILDDIR' to not
be expanded, causing get_kernelversion_file() to fail!To avoid this
problem, get_dts() and split_overlays() MUST be called with the
kernel version parameter set, when called from IMAGE_CMD_rpi-
sdimg! Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>---
classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++------- 1
file changed, 12 insertions(+), 7 deletions(-) diff --git
a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-
base.bbclassindex 40beef1..930fc44 100644--- a/classes/linux-
raspberrypi-base.bbclass+++ b/classes/linux-raspberrypi-
base.bbclass@@ -1,7 +1,8 @@ inherit linux-kernel-base - def
get_dts(d, ver):+    import re+     staging_dir =
d.getVar("STAGING_KERNEL_BUILDDIR", True)     dts =
d.getVar("KERNEL_DEVICETREE", True) @@ -20,20 +21,24 @@ def
get_dts(d, ver):      # Always turn off device tree support for
kernel's < 3.18     try:-        if int(min_ver[0]) <= 3:-           
if int(min_ver[1]) < 18:-                dts = ""+        if
int(min_ver[0]) >= 4:+            if (int(min_ver[1]) < 4) or
(int(min_ver[1]) == 4 and int(min_ver[2]) < 6):+                dts =
' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in
dts.split()])+        elif int(min_ver[1]) < 18:+            dts =
""     except IndexError:         min_ver = None      return dts  -
def split_overlays(d, out):-    dts = get_dts(d, None)+def
split_overlays(d, ver, out):+    dts = get_dts(d, ver)     if
out:         overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', 
dts, d)+        overlays = oe.utils.str_filter_out('\S+\.dtbo$',
overlays, d)     else:-        overlays = oe.utils.str_filter('\S+\-
overlay\.dtb$', dts, d)+        overlays = oe.utils.str_filter('\S+\-
overlay\.dtb$', dts, d) + \+                   " " +
oe.utils.str_filter('\S+\.dtbo$', dts, d)      return overlays--
2.7.4 

--=-o07jxOSyn8acxl7rbOqA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3D"Content-Type" content=
=3D"text/html; charset=3Dutf-8"><meta name=3D"Generator" content=3D"Microso=
ft Word 15 (filtered medium)"><style><!--
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
</o:shapelayout></xml><![endif]--></head><body lang=3D"FR"><div>Hi Herv=C3=
=A9,</div><div><br></div><div>Thanks for the explanation, I actually missed=
 the 2nd pass aspect of the process.</div><div><br></div><div>Your patch is=
 running ok for me (4.1.21 and 4.4.13) after having found and applied the r=
equired linux-dtb.inc patch you prepared (for the record, it is named "[PAT=
CH v3] Support for .dtbo files for dtb overlays" in oe-core list).</div><di=
v><br></div><div>Nevertheless, I've some remarks about the process that I'l=
l emit on your latest patch version (v6) for consistency.</div><div><br></d=
iv><div>BR,</div><div>Fran=C3=A7ois</div><div><br></div><div><br></div><div=
 class=3D"-x-evo-paragraph -x-evo-top-signature-spacer"><br></div><div>Le m=
ercredi 20 juillet 2016 =C3=A0 16:51 +0200, Herve Jourdain a =C3=A9crit&nbs=
p;:</div><blockquote type=3D"cite"><div class=3D"WordSection1"><p class=3D"=
MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:#1F497D;mso-fareast-language:EN-US">Hi Fran=C3=A7ois,<o:p>=
</o:p></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:=
EN-US"><o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#1F497D;mso-fareast-language:EN-US">Sorry for the late response, I=E2=
=80=99ve been busy on other things recently.<o:p></o:p></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:=
p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F49=
7D;mso-fareast-language:EN-US">Actually, it=E2=80=99s not a typo, it=E2=80=
=99s just that we=E2=80=99re using the =E2=80=9Coverlays=E2=80=9D variable =
for storing 2 things, depending on the value of the parameter =E2=80=9Cout=
=E2=80=9D of the split_overlays() function:<o:p></o:p></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">1. =
either all the overlays<o:p></o:p></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:#1F497D;mso-fareast-language:EN-US">2. or all the dtb that ar=
e not overlays<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">T=
he case you=E2=80=99re mentioning is for =E2=80=9Cout=E2=80=9D being select=
ed, so you want to exclude all the overlays from the dts, and store that in=
 the =E2=80=9Coverlays=E2=80=9D variable (the naming of the variable is a b=
it unfortunate in this context, I must admit, but I only re-used the existi=
ng one).<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1F497D;mso-fareast-language:EN-US">So now, you not only need to exclude the=
 =E2=80=9C-overlay.dtb=E2=80=9D files, but also the =E2=80=9C.dtbo=E2=80=9D=
 files.<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
F497D;mso-fareast-language:EN-US">So the second pass takes the output of th=
e first pass, in =E2=80=9Coverlays=E2=80=9D, and filters out the =E2=80=9C.=
dtbo=E2=80=9D if any.<o:p></o:p></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-=
serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:E=
N-US">Hope that helps,<o:p></o:p></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:=
EN-US">Herv=C3=A9<o:p></o:p></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p><di=
v><div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0c=
m 0cm 0cm"><p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-siz=
e:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoprojec=
t.org] <b>On Behalf Of </b>Francois Muller<br><b>Sent:</b> samedi 25 juin 2=
016 17:48<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> ***SPAM**=
* Re: [yocto] [meta-raspberrypi][PATCH v5 3/4] linux-raspberrypi-base.bbcla=
ss: support for .dtbo files for dtb overlays<o:p></o:p></span></p></div></d=
iv><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><div><p class=3D"MsoNormal">=
Hi Herv=C3=A9,<o:p></o:p></p></div><div><p class=3D"MsoNormal"><o:p>&nbsp;<=
/o:p></p></div><div><p class=3D"MsoNormal">I haven't tested your patch yet,=
 but while reviewing the diff I'm a bit surprised about this:<o:p></o:p></p=
></div><blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt"><div><p c=
lass=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ov=
erlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', <b><u>dts</u></b>,=
 d)<o:p></o:p></p></div><div><p class=3D"MsoNormal">+&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;overlays =3D oe.utils.str_filter_out('\S+\.dtbo$'=
, <b><u>overlays</u></b>, d)<o:p></o:p></p></div></blockquote><div><p class=
=3D"MsoNormal">Shouldn't .dtbo files be filtered out from 'dts' instead of =
'overlays' in the added line?<o:p></o:p></p></div><div><p class=3D"MsoNorma=
l">Seems like a typo to me.<o:p></o:p></p></div><div><p class=3D"MsoNormal"=
><o:p>&nbsp;</o:p></p></div><div><p class=3D"MsoNormal">BR,<o:p></o:p></p><=
/div><div><p class=3D"MsoNormal">Fran=C3=A7ois<o:p></o:p></p></div><div><p =
class=3D"MsoNormal"><o:p>&nbsp;</o:p></p></div><div><p class=3D"MsoNormal">=
Le vendredi 17 juin 2016 =C3=A0 23:35 +0800, Herve Jourdain a =C3=A9crit&nb=
sp;:<o:p></o:p></p></div><blockquote style=3D"margin-top:5.0pt;margin-botto=
m:5.0pt"><pre>Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays=
, instead of .dtb.<o:p></o:p></pre><pre>Add support for both variants of ov=
erlays ("-overlay.dtb" and ".dtbo")<o:p></o:p></pre><pre>Change which varia=
nt needs to be supported based on the kernel version<o:p></o:p></pre><pre><=
o:p>&nbsp;</o:p></pre><pre>CAUTION: when called from IMAGE_CMD_rpi-sdimg, '=
TMPDIR' is not set, causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, c=
ausing get_kernelversion_file() to fail!<o:p></o:p></pre><pre>To avoid this=
 problem, get_dts() and split_overlays() MUST be called with the kernel ver=
sion parameter set, when called from IMAGE_CMD_rpi-sdimg!<o:p></o:p></pre><=
pre><o:p>&nbsp;</o:p></pre><pre>Signed-off-by: Herve Jourdain &lt;<a href=
=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt;<o:p></o:p=
></pre><pre>---<o:p></o:p></pre><pre> classes/linux-raspberrypi-base.bbclas=
s | 19 ++++++++++++-------<o:p></o:p></pre><pre> 1 file changed, 12 inserti=
ons(+), 7 deletions(-)<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>dif=
f --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberryp=
i-base.bbclass<o:p></o:p></pre><pre>index 40beef1..930fc44 100644<o:p></o:p=
></pre><pre>--- a/classes/linux-raspberrypi-base.bbclass<o:p></o:p></pre><p=
re>+++ b/classes/linux-raspberrypi-base.bbclass<o:p></o:p></pre><pre>@@ -1,=
7 +1,8 @@<o:p></o:p></pre><pre> inherit linux-kernel-base<o:p></o:p></pre><=
pre> <o:p></o:p></pre><pre>-<o:p></o:p></pre><pre> def get_dts(d, ver):<o:p=
></o:p></pre><pre>+&nbsp;&nbsp;&nbsp; import re<o:p></o:p></pre><pre>+<o:p>=
</o:p></pre><pre>&nbsp;&nbsp;&nbsp;&nbsp; staging_dir =3D d.getVar("STAGING=
_KERNEL_BUILDDIR", True)<o:p></o:p></pre><pre>&nbsp;&nbsp;&nbsp;&nbsp; dts =
=3D d.getVar("KERNEL_DEVICETREE", True)<o:p></o:p></pre><pre> <o:p></o:p></=
pre><pre>@@ -20,20 +21,24 @@ def get_dts(d, ver):<o:p></o:p></pre><pre> <o:=
p></o:p></pre><pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Always turn off device t=
ree support for kernel's &lt; 3.18<o:p></o:p></pre><pre>&nbsp;&nbsp;&nbsp;&=
nbsp; try:<o:p></o:p></pre><pre>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 if int(min_ver[0]) &lt;=3D 3:<o:p></o:p></pre><pre>-&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if int(min_ver[1]) &lt; 18:<o:=
p></o:p></pre><pre>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dts =3D ""<o:p></o:p></pre><pre>+&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if int(min_ver[0]) &gt;=3D 4:<o:p></o:=
p></pre><pre>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; if (int(min_ver[1]) &lt; 4) or (int(min_ver[1]) =3D=3D 4 and int(min_=
ver[2]) &lt; 6):<o:p></o:p></pre><pre>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dts =3D ' '.join([(r=
e.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in dts.split()])<o:p></o=
:p></pre><pre>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif int(min_ver[=
1]) &lt; 18:<o:p></o:p></pre><pre>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; dts =3D ""<o:p></o:p></pre><pre>&nbsp;&nbsp;&nbs=
p;&nbsp; except IndexError:<o:p></o:p></pre><pre>&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; min_ver =3D None<o:p></o:p></pre><pre> <o:p></o:p></=
pre><pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return dts<o:p></o:p></pre><pre> <o:=
p></o:p></pre><pre>&nbsp;<o:p></o:p></pre><pre>-def split_overlays(d, out):=
<o:p></o:p></pre><pre>-&nbsp;&nbsp;&nbsp; dts =3D get_dts(d, None)<o:p></o:=
p></pre><pre>+def split_overlays(d, ver, out):<o:p></o:p></pre><pre>+&nbsp;=
&nbsp;&nbsp; dts =3D get_dts(d, ver)<o:p></o:p></pre><pre>&nbsp;&nbsp;&nbsp=
;&nbsp; if out:<o:p></o:p></pre><pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, =
d)<o:p></o:p></pre><pre>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; overlay=
s =3D oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)<o:p></o:p></pre><p=
re>&nbsp;&nbsp;&nbsp;&nbsp; else:<o:p></o:p></pre><pre>-&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb=
$', dts, d)<o:p></o:p></pre><pre>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) + \<o:p></=
o:p></pre><pre>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " " + oe.utils.str_filter=
('\S+\.dtbo$', dts, d)<o:p></o:p></pre><pre> <o:p></o:p></pre><pre>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;return overlays<o:p></o:p></pre><pre>-- <o:p></o:p></=
pre><pre>2.7.4<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre></blockquote></d=
iv></blockquote></body></html>

--=-o07jxOSyn8acxl7rbOqA--
