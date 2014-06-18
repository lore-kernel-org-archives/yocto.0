Return-Path: <ruud.den.bekker@cordis.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01858E00B67; Wed, 18 Jun 2014 01:39:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cordis.nl (smtp.cordis.nl [212.61.137.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63677E00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 01:39:18 -0700 (PDT)
MIME-Version: 1.0
x-mimeole: Produced By Microsoft Exchange V6.5
Date: Wed, 18 Jun 2014 10:38:14 +0200
Message-ID: <21598C768CAB7B46B75C18783A59ACEE271D1A@cordissvr01.Cordis.local>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: build error
Thread-Index: Ac+K0KUNwtVJxB8MTSW+J4ngrgU49g==
From: "Ruud den Bekker" <ruud.den.bekker@cordis.nl>
To: <yocto@yoctoproject.org>
Subject: build error
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
X-List-Received-Date: Wed, 18 Jun 2014 08:39:24 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CF8AD0.A55B719C"

------_=_NextPart_001_01CF8AD0.A55B719C
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

L.S.,

=20

I followed the directions on
http://www.codeproject.com/Articles/774826/Adding-rd-party-components-to
-Yocto-OpenEmbedded-L

to add an example project to my yocto-poky build tree.

=20

a strange thing happens:

when using bitbake bbexample-lt  for "qemuarm" or "edgerouter", it
builds ok.

however,if I select "beaglebone" for "MACHINE", I get a configure error
in my log file:

=20

"configure:3024: checking for C compiler version

configure:3033: arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a
-mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a8
--sysroot=3D/home/ruud/poky-daisy-11.0.0/build/tmp/sysroots/beaglebone
--version >&5

/home/ruud/poky-daisy-11.0.0/build/tmp/work/cortexa8hf-vfp-neon-poky-lin
ux-gnueabi/bbexample-lt/1.0-r0/bbexample-1.0/configure: line 3035:
arm-poky-linux-gnueabi-gcc: command not found"

=20

However, the building e.g. a "core-image-minimal" or my added
"core-image-mono" for a "beaglebone" builds fine and I can use the RFS
on a "real" hardware board.

=20

What can be the cause of this?

=20

Best regards,

=20

Ruud

=20

Ruud den Bekker

Cordis Automation B.V.

High Tech Campus 9

5656 AE Eindhoven

=20


------_=_NextPart_001_01CF8AD0.A55B719C
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 12 =
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DNL link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>L.S.,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I followed the directions on <a =
href=3D"http://www.codeproject.com/Articles/774826/Adding-rd-party-compon=
ents-to-Yocto-OpenEmbedded-L">http://www.codeproject.com/Articles/774826/=
Adding-rd-party-components-to-Yocto-OpenEmbedded-L</a><o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US>to add an example project to =
my yocto-poky build tree.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>a strange thing =
happens:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>when using bitbake bbexample-lt&nbsp; for =
&#8220;qemuarm&#8221; or &#8220;edgerouter&#8221;, it builds =
ok.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>however,if I select &#8220;beaglebone&#8221; for =
&#8220;MACHINE&#8221;, I get a configure error in my log =
file:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&#8220;configure:3024: checking for C compiler =
version<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>configure:3033: arm-poky-linux-gnueabi-gcc&nbsp; =
-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon =
-mtune=3Dcortex-a8 =
--sysroot=3D/home/ruud/poky-daisy-11.0.0/build/tmp/sysroots/beaglebone =
--version &gt;&amp;5<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>/home/ruud/poky-daisy-11.0.0/build/tmp/work/cortexa8hf-vfp-n=
eon-poky-linux-gnueabi/bbexample-lt/1.0-r0/bbexample-1.0/configure: line =
3035: arm-poky-linux-gnueabi-gcc: command not =
found&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>However, the building e.g. a =
&#8220;core-image-minimal&#8221; or my added =
&#8220;core-image-mono&#8221; for a &#8220;beaglebone&#8221; builds fine =
and I can use the RFS on a &#8220;real&#8221; hardware =
board.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>What can be the cause of this?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Best regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Ruud<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Ruud den =
Bekker<o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US>Cordis =
Automation B.V.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>High Tech Campus 9<o:p></o:p></span></p><p =
class=3DMsoNormal>5656 AE Eindhoven<span =
lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------_=_NextPart_001_01CF8AD0.A55B719C--
