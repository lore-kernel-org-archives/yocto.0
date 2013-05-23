Return-Path: <yang.liu@magnetimarelli.com>
Received: from mx2.ex2007.fiatgroup.com (mx2.ex2007.fiatgroup.com
	[129.35.117.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45C5E013B8
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 13:51:25 -0700 (PDT)
Received: from prhu01.fgremc.it (151.92.204.57) by mx2.ex2007.fiatgroup.com
	(151.88.80.12) with Microsoft SMTP Server (TLS) id 8.3.279.5;
	Thu, 23 May 2013 22:51:22 +0200
Received: from MXCL20.fgremc.it ([151.92.205.31]) by prhu01.fgremc.it
	([151.92.204.57]) with mapi; Thu, 23 May 2013 22:51:22 +0200
From: "LIU Yang (MM)" <yang.liu@magnetimarelli.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 23 May 2013 22:51:20 +0200
Thread-Topic: Yocto Qt5
Thread-Index: Ac5X7Mt3kH9p9UXuS56sJenp7vlZng==
Message-ID: <0789CF4373FAE1439958EBA64274B10924EFD6C06C@MXCL20.fgremc.it>
Accept-Language: en-US, it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, it-IT
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 23 May 2013 13:52:12 -0700
Cc: "PAPARO Nino \(MM\)" <nino.paparo@magnetimarelli.com>
Subject: Yocto Qt5
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
X-List-Received-Date: Thu, 23 May 2013 20:51:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0789CF4373FAE1439958EBA64274B10924EFD6C06CMXCL20fgremci_"

--_000_0789CF4373FAE1439958EBA64274B10924EFD6C06CMXCL20fgremci_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi There,

I am first time coming here for help on Yocto project with Qt5, I have two =
questions/problems when I tried to bitbake a recipe in our layer.

1.        An error message says: failed on do_rootfs task.
Additional message: Computing transaction...error: Can't install smartpm-1.=
4-1-r9@i586<mailto:smartpm-1.4-1-r9@i586>: no package provides /usr/bin/ude=
v
I tried with two methods: One is to bitbake a recipe in our layer with free=
scale BSP layer targeting imx6qsabrelite board. The bblayer.conf includes f=
ollowing layers:
                meta
                meta-yocto
                meta-openembedded/meta-oe
                meta-fsl-arm                                     # From fre=
escale for imx6qsabrelite board
                meta-fsl-arm-extra                         # From freescale=
 for imx6qsabrelite board
                meta-qt5                                             # Get =
from https://github.com/meta-qt5/meta-qt5
                meta-MM
One recipe (We want to bitbake) file in the meta-MM layer looks like follow=
ing:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
IMAGE_FEATURES +=3D "splash package-management x11-browser ssh-server-opens=
sh"
IMAGE_INSTALL +=3D " qtbase qtbase-tools qtbase-plugins qtbase-fonts"

PR=3D"r2"

LICENSE =3D "MIT"

inherit core-image
export IMAGE_BASENAME =3D "MM-qt5"
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

bitbake the recipe without the line in RED above (comment it out), it will =
succeed, the problem comes when I add this line. My colleague told me to bi=
tbake perl first, and then bitbake the same recipe file again afterwards, t=
he problem goes away. Don't know the reason why???

The other method is: I also tried the same scenario with yocto-bsp layer ta=
rgeting qemu emulator. I got the same result.


2.       When I succeeded in the way my colleague told me, I found the kern=
el image (uImage/bzImage) is missing in the boot directory of target filesy=
stem. I checked "tmp/work/imx6qsabrelite-poky-linux-gnueabi/MM-qt5/1.0-r2/r=
ootfs/boot" directory, it was not there. However, bitbake the same recipe w=
ithout the RED line above, I can find it in both locations. That is really =
confusing me!!!

Same thing I did with qemu emulator, also same result I got.

By the way, I will appreciate if some of you can direct me how to bitbake, =
let me know the status, progress, resources on qt5 package with yocto proje=
ct.

Thanks,
Yang Liu

________________________________
VISIT OUR NEW WEB SITE! www.magnetimarelli.com

Confidential Notice: This electronic communication - including its attachme=
nts - may contain proprietary, confidential and/or legally protected inform=
ation and documents and is intended to be confidential by the sender and so=
lely for the use of the designated addressee(s) above. Any unauthorized use=
 or disclosure of this communication is prohibited by law. If you are not t=
he intended recipient, be aware that any downloading, copying, disclosure, =
distribution or use of the contents of the above information is strictly pr=
ohibited. If you have received this communication by mistake, please forwar=
d the message back to the sender at the email address above, delete the mes=
sage from all mailboxes and any other electronic storage medium and destroy=
 all copies.
Disclaimer Notice: Internet communications cannot be guaranteed to be safe =
or error-free. Therefore we do not assure that this message is complete or =
accurate and we do not accept liability for any errors or omissions or for =
viruses in the contents of this message

--_000_0789CF4373FAE1439958EBA64274B10924EFD6C06CMXCL20fgremci_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:645864733;
	mso-list-type:hybrid;
	mso-list-template-ids:-1355398270 1548508660 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:1.75in;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:3.25in;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:4.75in;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi There,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am first time coming here for help on Yocto projec=
t with Qt5, I have two questions/problems when I tried to bitbake a recipe =
in our layer.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>&nbsp;An error message says: <span style=3D"color:#=
0070C0">failed on do_rootfs task</span>.
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Additional message: <span=
 style=3D"color:#0070C0">
Computing transaction&#8230;error: Can&#8217;t install <a href=3D"mailto:sm=
artpm-1.4-1-r9@i586">
<span style=3D"color:#0070C0">smartpm-1.4-1-r9@i586</span></a>: no package =
provides /usr/bin/udev</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">I tried with two methods:=
 One is to bitbake a recipe in our layer with freescale BSP layer targeting=
 imx6qsabrelite board. The bblayer.conf includes following layers:<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-yoct=
o<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-open=
embedded/meta-oe<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-fsl-=
arm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Fro=
m freescale for imx6qsabrelite board<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-fsl-=
arm-extra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; # From freescale for imx6qsabrelite board<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-qt5&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Get from https://github.com/meta-q=
t5/meta-qt5<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-MM<o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">One recipe (We want to bi=
tbake) file in the meta-MM layer looks like following:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">IMAGE_FEATURES &#43;=3D &=
quot;splash package-management x11-browser ssh-server-openssh&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:red"=
>IMAGE_INSTALL &#43;=3D &quot; qtbase qtbase-tools qtbase-plugins qtbase-fo=
nts&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">PR=3D&quot;r2&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">LICENSE =3D &quot;MIT&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">inherit core-image<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">export IMAGE_BASENAME =3D=
 &quot;MM-qt5&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">bitbake the recipe withou=
t the line in
<span style=3D"color:red">RED </span>above (comment it out), it will succee=
d, the problem comes when I add this line. My colleague told me to
<u>bitbake perl</u> first, and then bitbake the same recipe file again afte=
rwards, the problem goes away.
<b><span style=3D"color:#00B050">Don&#8217;t know the reason why???</span><=
/b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">The other method is: I al=
so tried the same scenario with yocto-bsp layer targeting qemu emulator. I =
got the same result.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>When I succeeded in the way my colleague told me, I=
 found the kernel image (uImage/bzImage) is missing in the boot directory o=
f target filesystem. I checked &#8220;tmp/work/imx6qsabrelite-poky-linux-gn=
ueabi/MM-qt5/1.0-r2/rootfs/boot&#8221; directory,
 it was not there. However, bitbake the same recipe without the <span style=
=3D"color:red">
RED </span>line above, I can find it in both locations. <span style=3D"colo=
r:#00B050">
That is really confusing me!!!</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Same thing I did with qem=
u emulator, also same result I got.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">By the way, I will apprec=
iate if some of you can direct me how to bitbake, let me know the status, p=
rogress, resources on qt5 package with yocto project.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Yang Liu<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">VISIT OUR NEW WEB SITE! www.=
magnetimarelli.com<br>
<br>
Confidential Notice: This electronic communication - including its attachme=
nts - may contain proprietary, confidential and/or legally protected inform=
ation and documents and is intended to be confidential by the sender and so=
lely for the use of the designated
 addressee(s) above. Any unauthorized use or disclosure of this communicati=
on is prohibited by law. If you are not the intended recipient, be aware th=
at any downloading, copying, disclosure, distribution or use of the content=
s of the above information is strictly
 prohibited. If you have received this communication by mistake, please for=
ward the message back to the sender at the email address above, delete the =
message from all mailboxes and any other electronic storage medium and dest=
roy all copies.<br>
Disclaimer Notice: Internet communications cannot be guaranteed to be safe =
or error-free. Therefore we do not assure that this message is complete or =
accurate and we do not accept liability for any errors or omissions or for =
viruses in the contents of this
 message<br>
</font>
</body>
</html>

--_000_0789CF4373FAE1439958EBA64274B10924EFD6C06CMXCL20fgremci_--
