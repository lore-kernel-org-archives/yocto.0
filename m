Return-Path: <Georgi.Georgiev@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2668E00BB5; Tue,  4 Dec 2018 00:29:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2173 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Dec 2018 00:29:44 PST
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D851EE00B77
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 00:29:44 -0800 (PST)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.22/8.16.0.22) with SMTP id
	wB47kQXk018087
	for <yocto@yoctoproject.org>; Tue, 4 Dec 2018 01:53:31 -0600
Received: from coil-exmb4.woodward.com ([10.51.100.67])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2p5bbbh7jp-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 01:53:31 -0600
Received: from KempHC1.woodward.com (10.25.100.51) by COIL-ExMb4.woodward.com
	(10.51.100.67) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 4 Dec 2018 01:53:30 -0600
Received: from KempMail2.woodward.com ([169.254.2.232]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Tue, 4 Dec 2018 08:53:28 +0100
From: Georgi Georgiev <Georgi.Georgiev@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 4 Dec 2018 08:53:27 +0100
Thread-Topic: Missing dependencies in recipe-sysroot
Thread-Index: AdSLpfRI8jk13UEvQAOdYobMf/MmHQ==
Message-ID: <B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68E@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	suspectscore=0 malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=475
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1810050000 definitions=main-1812040071
Subject: Missing dependencies in recipe-sysroot
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
X-List-Received-Date: Tue, 04 Dec 2018 08:29:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68EKEMPMAIL2wood_"

--_000_B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68EKEMPMAIL2wood_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
As probably all yocto people know the sysrootfs policy changed in yocto roc=
ko 2.4+. So I have the following issue:
I try to make a recipe for a shared library with makefile. The recipe is be=
low (I don't claim it is complete. I simply cannot pass building stage):
#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://${THISDIR}/files/LICENSE;md5=3D5959e502cb44baf=
c53b2cc9400e3d4cd"
PR =3D "r0"

##### First try from my local repo and then we will use the big one
SRC_URI =3D "git:///home/w23698/projects/anybus/Generic;branch=3Danybus-lib=
-0.0.1"
SRCREV =3D "2fe4ce39a651d71f3f8de1c751dff2581de2c526"

S =3D "${WORKDIR}/git"

PACKAGES =3D "${PN} ${PN}-dev ${PN}-dbg"
#####The only dependency
RDEPENDS_${PN} =3D "libgpiod"
RDEPENDS_${PN}-dev =3D "libgpiod"
RDEPENDS_${PN}-dbg =3D "libgpiod"

do_compile() {
    oe_runmake
}

do_install() {
    install -d ${D}${libdir}
    install -m 0644 ${PN}-m40 ${D}${libdir}
}

What was my surprise when it failed with:
ww.c:6:10: fatal error: gpiod.h: No such file or directory
 |  #include "gpiod.h"
|           ^~~~~~~~~
| compilation terminated.
Then I noticed that the command line is:
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mfpu=3Dneon -mfloat-abi=3Dhar=
d -mcpu=3Dcortex-a9 --sysroot=3D/<full path>/recipe-sysroot -L/usr/lib -g -=
Wall -fpic .....
I looked in recipe-sysroot/usr/lib/ and found a minimal set of libraries an=
d libgpiod was not there. Neither the header was there in include...

Any suggestions?

Cordially,
Georgi

--_000_B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68EKEMPMAIL2wood_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 15 (filtered medium)"><style><!--
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
	font-family:"Calibri",sans-serif;}
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
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal>Hello,<o=
:p></o:p></p><p class=3DMsoNormal>As probably all yocto people know the sys=
rootfs policy changed in yocto rocko 2.4+. So I have the following issue: <=
o:p></o:p></p><p class=3DMsoNormal>I try to make a recipe for a shared libr=
ary with makefile. The recipe is below (I don't claim it is complete. I sim=
ply cannot pass building stage):<o:p></o:p></p><p class=3DMsoNormal>#=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p><p class=3DM=
soNormal>LICENSE =3D &quot;GPLv2&quot;<o:p></o:p></p><p class=3DMsoNormal>L=
IC_FILES_CHKSUM =3D &quot;file://${THISDIR}/files/LICENSE;md5=3D5959e502cb4=
4bafc53b2cc9400e3d4cd&quot;<o:p></o:p></p><p class=3DMsoNormal>PR =3D &quot=
;r0&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>##### First try from my local repo and then we will use the bi=
g one<o:p></o:p></p><p class=3DMsoNormal>SRC_URI =3D &quot;git:///home/w236=
98/projects/anybus/Generic;branch=3Danybus-lib-0.0.1&quot;<o:p></o:p></p><p=
 class=3DMsoNormal>SRCREV =3D &quot;2fe4ce39a651d71f3f8de1c751dff2581de2c52=
6&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3D=
MsoNormal>S =3D &quot;${WORKDIR}/git&quot;<o:p></o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>PACKAGES =3D &quot;${PN} ${PN}=
-dev ${PN}-dbg&quot;<o:p></o:p></p><p class=3DMsoNormal>#####The only depen=
dency <o:p></o:p></p><p class=3DMsoNormal>RDEPENDS_${PN} =3D &quot;libgpiod=
&quot;<o:p></o:p></p><p class=3DMsoNormal>RDEPENDS_${PN}-dev =3D &quot;libg=
piod&quot;<o:p></o:p></p><p class=3DMsoNormal>RDEPENDS_${PN}-dbg =3D &quot;=
libgpiod&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p c=
lass=3DMsoNormal>do_compile() {<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&n=
bsp;&nbsp; oe_runmake<o:p></o:p></p><p class=3DMsoNormal>}<o:p></o:p></p><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>do_install() {=
<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; install -d ${D}${lib=
dir}<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; install -m 0644 =
${PN}-m40 ${D}${libdir}<o:p></o:p></p><p class=3DMsoNormal>}<o:p></o:p></p>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>What was my =
surprise when it failed with:<o:p></o:p></p><p class=3DMsoNormal> ww.c:6:10=
: fatal error: gpiod.h: No such file or directory <o:p></o:p></p><p class=
=3DMsoNormal>&nbsp;|&nbsp; #include &quot;gpiod.h&quot;<o:p></o:p></p><p cl=
ass=3DMsoNormal> |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; ^~~~~~~~~<o:p></o:p></p><p class=3DMsoNormal> | compilation terminated.=
<o:p></o:p></p><p class=3DMsoNormal>Then I noticed that the command line is=
:<o:p></o:p></p><p class=3DMsoNormal>arm-poky-linux-gnueabi-gcc&nbsp; -marc=
h=3Darmv7-a -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 --sysroot=3D/=
&lt;full path&gt;/recipe-sysroot -L/usr/lib -g -Wall -fpic .....<o:p></o:p>=
</p><p class=3DMsoNormal>I looked in recipe-sysroot/usr/lib/ and found a mi=
nimal set of libraries and libgpiod was not there. Neither the header was t=
here in include...<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
<p class=3DMsoNormal>Any suggestions?<o:p></o:p></p><p class=3DMsoNormal><o=
:p>&nbsp;</o:p></p><p class=3DMsoNormal>Cordially,<o:p></o:p></p><p class=
=3DMsoNormal>Georgi<o:p></o:p></p></div></body></html>=

--_000_B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68EKEMPMAIL2wood_--
