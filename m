Return-Path: <victor_wang@winmate.com.tw>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DB10E00C45; Wed, 19 Jul 2017 00:48:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [122.147.158.238 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0455]
X-Greylist: delayed 321 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Jul 2017 00:48:02 PDT
Received: from mx.winmate.com.tw (mail.winmate.com.tw [122.147.158.238])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 67C45E00BC0
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 00:48:01 -0700 (PDT)
Received: from winmate.com.tw([192.168.100.101]) by RaidenMAILD([192.168.1.6]);
	Wed, 19 Jul 2017 15:44:31 +0800
Received: from WE1441 ([192.168.8.41]) by winmate.com.tw ([220.130.150.210]);
	Wed, 19 Jul 2017 15:42:13 +0800
From: "victor_wang.Winmate" <victor_wang@winmate.com.tw>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Jul 2017 15:41:48 +0800
Message-ID: <000601d30062$7a3b0680$6eb11380$@winmate.com.tw>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdMAYIIlf3jOMOKYSRiB1nfW/R46Dw==
Subject: Help Compiling vlc for i.MX6 SABRE-SD
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
X-List-Received-Date: Wed, 19 Jul 2017 07:48:04 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0007_01D300A5.885FCD20"
Content-Language: zh-tw

------=_NextPart_000_0007_01D300A5.885FCD20
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

I am new in Yocto, I have to admit it, please be patient with my stupid =
questions.

I built vlc on meta-fsl-arm layers and fsl-imx-x11 distro on machine =
imx6dlsabresd.

I used commend `bitbake vlc` to build it and will get errors like bellow =
link.

=20

https://gist.github.com/victorwangwinmate/3fb03f42a47f3405b5aef05c3ac47bd=
c

=20

After some googling, I try to modify my local.conf like bellow link.

=20

https://gist.github.com/victorwangwinmate/3593c1c63cf96a0d44537a24cc6d17c=
5

=20

And I try to build the image with this commend `bitbake =E2=80=93C =
compile fsl-image-gui `

Unfortunately, I will get the same error as the first link.

=20

The first question is why it will show the error that one of =
libjpeg-turbo_8d+1.4.1.bb and jpeg_9a.bb is missing something.

The second is which one I should use and how?

The third is how can I fix this error in the proper way?

=20

Please help

=20

Thanks in advance

Best Regards

Victor Wang

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Winmate Commuication INC.

 <tel:+886-2-8511-0288> Tel:+886-2-8511-0288 ext 878; =
Fax:+886-2-85110211

=E2=9C=89  <mailto:victor_wang@winmate.com.tw> =
victor_wang@winmate.com.tw

=20


------=_NextPart_000_0007_01D300A5.885FCD20
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-TW link=3Dblue =
vlink=3Dpurple style=3D'text-justify-trim:punctuation'><div =
class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I am new in Yocto, I have to admit it, please be patient =
with my stupid questions.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I built vlc on meta-fsl-arm layers =
and fsl-imx-x11 distro on machine imx6dlsabresd.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I used commend `bitbake vlc` to =
build it and will get errors like bellow link.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><a =
href=3D"https://gist.github.com/victorwangwinmate/3fb03f42a47f3405b5aef05=
c3ac47bdc">https://gist.github.com/victorwangwinmate/3fb03f42a47f3405b5ae=
f05c3ac47bdc</a><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>After some googling, I try to modify my local.conf like =
bellow link.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><a =
href=3D"https://gist.github.com/victorwangwinmate/3593c1c63cf96a0d44537a2=
4cc6d17c5">https://gist.github.com/victorwangwinmate/3593c1c63cf96a0d4453=
7a24cc6d17c5</a><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>And I try to build the image with this commend `bitbake =
=E2=80=93C compile fsl-image-gui `<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Unfortunately, I will get the same =
error as the first link.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>The first question is why it will show the error that one =
of libjpeg-turbo_8d+1.4.1.bb and jpeg_9a.bb is missing =
something.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>The second is which one I should use and =
how?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>The =
third is how can I fix this error in the proper =
way?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Please help<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thanks in advance<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><b><i><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>B=
est Regards</span></i></b><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif";color=
:#000066'><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><b><i><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>V=
ictor Wang</span></i></b><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></b><span =
lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>W=
inmate Commuication INC.</span><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><=
a href=3D"tel:+886-2-8511-0288"><span =
style=3D'color:#0563C1'>Tel:+886-2-8511-0288</span></a> ext 878; =
Fax:+886-2-85110211</span><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-family:"MS =
Mincho";color:black'>=E2=9C=89</span><span lang=3DEN-US =
style=3D'color:black'>&nbsp;</span><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:purple'>=
<a href=3D"mailto:victor_wang@winmate.com.tw"><span =
style=3D'color:#0563C1'>victor_wang@winmate.com.tw</span></a></span><span=
 lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_0007_01D300A5.885FCD20--
