Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC059E00AD8; Wed, 24 Oct 2018 07:03:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [91.90.150.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2065.ppsmtp.net (s2065.ppsmtp.net [91.90.150.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64496E00A0C
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 07:02:58 -0700 (PDT)
Received: from pps.filterd (s2065.ppsmtp.net [127.0.0.1])
	by s2065.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id w9OE0IMk020812
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 16:02:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=WPzPnK7KThXXhmUZ/cxc45dp/ka+dL2uQSkpYGQodb0=;
	b=mdjbxQhj9iYYkZoUBLJUOXoXm5QI1UKVMHsKj60YWgLSj3lJW2TDBRGMj/7+ALW3/GlA
	30Z3jRRTfxynxw+XyJ64TFaznlQ6Oev7o1lG9IwpVoOvFOJc2NNE5jLN1w9X8G/lO/xP
	kSDMeFrqiXOrKHFDCtrg7h+F1oabpD6YucV56sjxDxW4+B3zywQN2xfuZ7osQQT5RBiX
	bae9NMHOAcXo8XdoWaKOBBf6KteiVeHeoy5NOuGLPyTTFsc9y7abz6hrd6eT3qWigbBn
	ODWJOvo9eABOFJbsy8tG0RR/W78dPpZkUcyLkxaeP+eInyCLI5XvuF7ayqvAjYWLnxyU
	ng== 
Received: from deesdmz227.dmz.es.de.ifm (mail27.ifm.com [194.156.152.227])
	by s2065.ppsmtp.net with ESMTP id 2n8ch0sj4e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 16:02:56 +0200
Received: from deesdmz227.dmz.es.de.ifm (localhost [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id 74AD288444C
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 16:02:56 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Compilation error while backporting xserver-xorg of poky master
	branch to rocko
Thread-Index: AdRroTsw8gySnwNCQkenfhPOMjsgMQ==
Date: Wed, 24 Oct 2018 14:02:47 +0000
Message-ID: <b792369ca9124b358835683d7e50cb70@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.96]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24176.006
X-TM-AS-Result: No-12.485600-5.000000-10
X-TMASE-MatchedRID: 6tAuAYSPuzd5yhP+9izTu2zBijri5+RVHznaOB9+eYjU9gTuEmVjH48Y
	FBHnSbTTUkz4wrtprPegneukVbKOCnDDIwUUWGIcW7gz/Gbgpl5MkOX0UoduuQZbeEWcL03Vqep
	YdgQHcbhQk0A2Dlh7WnK4WIJIjeeLbx+xmQHMNIPJ1E39jKDimA7yeN1MATMU8cWgFw6wp7NgeT
	ekQl3Ah6UiwNRE2grOTHPwtAT5y8nMtuC5wBEVAwKDWtq/hHcN+nvSwfDbaCXd8m9Yche6yiUBz
	18u6aqGg0DXUWnzE7VrmB0fjrQ/10jEB+CXKX8YMJoQm3jo+mlzd7C7BtJobk4K0IMk2m3GpPLT
	h6iGkXJkdh+a2U0C9gFMnHLd8cWmAjPI/s9IvI/kNIw8RlACQ3JZsqnL5DRjG7Ug8hgpROZGAvU
	g0Bw8xnkLD8SnJJjSzzU2+MLrDVRq0QqhYus7ZP0peXGEEBlv6r3HCixfuKcc4ri4RJV/1ec4Kn
	h54LbxiEArhol4TtBxxtqhbA9/qYcLU+2FyLvHnQrZDK7DrTr4bPjfm0hIQeKYpwtG+wHV8FhGj
	Tp5WPfy/MPf/RmXSqqWQ93lyzak2ygMnPk4DNz4pTO56aJ0/OrRJDUyDHkIODaN+C/dmn1R18Qp
	zXStTnic1EL5RdbnPtXU6t7MmF/XS2tteDqngo3NgkEqAN0RAp2H6RIMlDiFc+b7gPjklWGvgmE
	JmX9Lzh9/JTWzqExBP5IlRLQPPmzXKHERTtRNP77nBp9dHaYXfF+EQiYcZh5vYIBVaAnAvsppBL
	If0lKcMgfIEGxaUvQpKeIsIhNQvL5lAaTSBMkWC1s+E3z85M9zG7oEEqvV6jix7DCLlsFpXH8x2
	ZsuuAFOt1UU0yBK
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--12.485600-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24176.006
X-TM-SNTS-SMTP: C27B2ED181CBF29ADFB93751AFA2C9035601CACE5DDE290B4A3C182623E9AB5D2002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19050.x86_64 COMPUMAIL Date:
	20181024140256Z
X-Proofpoint-ID: SID=2n8ch0sj4e QID=2n8ch0sj4e-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-24_05:, , signatures=0
Subject: Compilation error while backporting xserver-xorg of poky master branch to rocko
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
X-List-Received-Date: Wed, 24 Oct 2018 14:03:01 -0000
X-Groupsio-MsgNum: 42883
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_b792369ca9124b358835683d7e50cb70ifmcom_";
	type="multipart/alternative"

--_004_b792369ca9124b358835683d7e50cb70ifmcom_
Content-Type: multipart/alternative;
	boundary="_000_b792369ca9124b358835683d7e50cb70ifmcom_"

--_000_b792369ca9124b358835683d7e50cb70ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I am trying to run Weston 5.0 using poky's rocko branch, so I backported a =
few packages from poky master branch to my own custom layer. But in this pr=
ocess xserver-xorg is giving me a compilation error. The contents of the lo=
g file are as follows:

aarch64-pdm3-linux-gcc  --sysroot=3D/media/iepl/iepl1/work/yocto_build/buil=
d-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroo=
t -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.20.1/hw/xwayland -I../../inc=
lude    -I../../../xorg-server-1.20.1/glamor -I../../../xorg-server-1.20.1/=
dri3 -DHAVE_DIX_CONFIG_H -I/media/iepl/iepl1/work/yocto_build/build-weston/=
tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/inc=
lude/libdrm -DHAVE_DIX_CONFIG_H -Wall -Wpointer-arith -Wmissing-declaration=
s -Wformat=3D2 -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -W=
bad-function-cast -Wold-style-definition -Wdeclaration-after-statement -Wun=
used -Wuninitialized -Wshadow -Wmissing-noreturn -Wmissing-format-attribute=
 -Wredundant-decls -Wlogical-op -Werror=3Dimplicit -Werror=3Dnonnull -Werro=
r=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-braces -Werror=3Dsequence-po=
int -Werror=3Dreturn-type -Werror=3Dtrigraphs -Werror=3Darray-bounds -Werro=
r=3Dwrite-strings -Werror=3Daddress -Werror=3Dint-to-pointer-cast -Werror=
=3Dpointer-to-int-cast -fno-strict-aliasing -fno-strict-aliasing -D_DEFAULT=
_SOURCE -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT -I/media/iepl/iepl1=
/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1=
.20.1-r0/recipe-sysroot/usr/include/libdrm -I/media/iepl/iepl1/work/yocto_b=
uild/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/reci=
pe-sysroot/usr/include/pixman-1 -I/media/iepl/iepl1/work/yocto_build/build-=
weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/=
usr/include/freetype2 -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp=
/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/includ=
e/X11/dri -I../../../xorg-server-1.20.1/include -I../../include -I../../../=
xorg-server-1.20.1/Xext -I../../../xorg-server-1.20.1/composite -I../../../=
xorg-server-1.20.1/damageext -I../../../xorg-server-1.20.1/xfixes -I../../.=
./xorg-server-1.20.1/Xi -I../../../xorg-server-1.20.1/mi -I../../../xorg-se=
rver-1.20.1/miext/sync -I../../../xorg-server-1.20.1/miext/shadow  -I../../=
../xorg-server-1.20.1/miext/damage -I../../../xorg-server-1.20.1/render -I.=
./../../xorg-server-1.20.1/randr -I../../../xorg-server-1.20.1/fb -I../../.=
./xorg-server-1.20.1/dbe -I../../../xorg-server-1.20.1/present -fvisibility=
=3Dhidden   -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=
=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0=3D/usr/src/debug/xserver-xorg/2_1.20.1-r0 -fde=
bug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/a=
arch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D -fdebug=
-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarc=
h64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D  -pthread -c -o X=
wayland-tablet-unstable-v2-protocol.o `test -f 'tablet-unstable-v2-protocol=
.c' || echo '../../../xorg-server-1.20.1/hw/xwayland/'`tablet-unstable-v2-p=
rotocol.c
aarch64-pdm3-linux-gcc  --sysroot=3D/media/iepl/iepl1/work/yocto_build/buil=
d-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroo=
t -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.20.1/hw/xwayland -I../../inc=
lude    -I../../../xorg-server-1.20.1/glamor -I../../../xorg-server-1.20.1/=
dri3 -DHAVE_DIX_CONFIG_H -I/media/iepl/iepl1/work/yocto_build/build-weston/=
tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/inc=
lude/libdrm -DHAVE_DIX_CONFIG_H -Wall -Wpointer-arith -Wmissing-declaration=
s -Wformat=3D2 -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -W=
bad-function-cast -Wold-style-definition -Wdeclaration-after-statement -Wun=
used -Wuninitialized -Wshadow -Wmissing-noreturn -Wmissing-format-attribute=
 -Wredundant-decls -Wlogical-op -Werror=3Dimplicit -Werror=3Dnonnull -Werro=
r=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-braces -Werror=3Dsequence-po=
int -Werror=3Dreturn-type -Werror=3Dtrigraphs -Werror=3Darray-bounds -Werro=
r=3Dwrite-strings -Werror=3Daddress -Werror=3Dint-to-pointer-cast -Werror=
=3Dpointer-to-int-cast -fno-strict-aliasing -fno-strict-aliasing -D_DEFAULT=
_SOURCE -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_STICKY_DIR_BIT -I/media/iepl/iepl1=
/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1=
.20.1-r0/recipe-sysroot/usr/include/libdrm -I/media/iepl/iepl1/work/yocto_b=
uild/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/reci=
pe-sysroot/usr/include/pixman-1 -I/media/iepl/iepl1/work/yocto_build/build-=
weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/=
usr/include/freetype2 -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp=
/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/includ=
e/X11/dri -I../../../xorg-server-1.20.1/include -I../../include -I../../../=
xorg-server-1.20.1/Xext -I../../../xorg-server-1.20.1/composite -I../../../=
xorg-server-1.20.1/damageext -I../../../xorg-server-1.20.1/xfixes -I../../.=
./xorg-server-1.20.1/Xi -I../../../xorg-server-1.20.1/mi -I../../../xorg-se=
rver-1.20.1/miext/sync -I../../../xorg-server-1.20.1/miext/shadow  -I../../=
../xorg-server-1.20.1/miext/damage -I../../../xorg-server-1.20.1/render -I.=
./../../xorg-server-1.20.1/randr -I../../../xorg-server-1.20.1/fb -I../../.=
./xorg-server-1.20.1/dbe -I../../../xorg-server-1.20.1/present -fvisibility=
=3Dhidden   -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=
=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0=3D/usr/src/debug/xserver-xorg/2_1.20.1-r0 -fde=
bug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/a=
arch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D -fdebug=
-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarc=
h64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D  -pthread -c -o X=
wayland-xwayland-keyboard-grab-unstable-v1-protocol.o `test -f 'xwayland-ke=
yboard-grab-unstable-v1-protocol.c' || echo '../../../xorg-server-1.20.1/hw=
/xwayland/'`xwayland-keyboard-grab-unstable-v1-protocol.c
make[2]: *** No rule to make target '../../glx/libglxvnd.la', needed by 'Xw=
ayland'.  Stop.
make[2]: *** Waiting for unfinished jobs....
make[2]: Leaving directory '/media/iepl/iepl1/work/yocto_build/build-weston=
/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/build/hw/xwayland'
Makefile:611: recipe for target 'all-recursive' failed
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory '/media/iepl/iepl1/work/yocto_build/build-weston=
/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/build/hw'
Makefile:813: recipe for target 'all-recursive' failed
make: *** [all-recursive] Error 1
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at /media/iepl/iepl=
1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_=
1.20.1-r0/temp/log.do_compile.2603)

Can somebody provide me a few pointers for this. For more info feel free to=
 reply.

Best Regards
Kamal Pandey
Junior Software Engineer
[ifm_logo_sqrs]ifm engineering pvt. ltd.
Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road, Bavd=
han, Pune, India - 411021 | Web: www.ifm.com<http://www.ifm.com/> | Phone: =
+91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676


--_000_b792369ca9124b358835683d7e50cb70ifmcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to run Weston 5.0 using poky&#8217;s roc=
ko branch, so I backported a few packages from poky master branch to my own=
 custom layer. But in this process xserver-xorg is giving me a compilation =
error. The contents of the log file are
 as follows:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">aarch64-pdm3-linux-gcc&nbsp; --sysroot=3D/media/iepl=
/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xo=
rg/2_1.20.1-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.=
20.1/hw/xwayland -I../../include&nbsp;&nbsp;&nbsp; -I../../../xorg-server-1=
.20.1/glamor
 -I../../../xorg-server-1.20.1/dri3 -DHAVE_DIX_CONFIG_H -I/media/iepl/iepl1=
/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1=
.20.1-r0/recipe-sysroot/usr/include/libdrm -DHAVE_DIX_CONFIG_H -Wall -Wpoin=
ter-arith -Wmissing-declarations
 -Wformat=3D2 -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -Wb=
ad-function-cast -Wold-style-definition -Wdeclaration-after-statement -Wunu=
sed -Wuninitialized -Wshadow -Wmissing-noreturn -Wmissing-format-attribute =
-Wredundant-decls -Wlogical-op -Werror=3Dimplicit
 -Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-bra=
ces -Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs -Wer=
ror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress -Werror=3Dint-=
to-pointer-cast -Werror=3Dpointer-to-int-cast -fno-strict-aliasing
 -fno-strict-aliasing -D_DEFAULT_SOURCE -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_ST=
ICKY_DIR_BIT -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aar=
ch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm =
-I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-lin=
ux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/pixman-1
 -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/freetype2 -I/media/=
iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserve=
r-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/X11/dri
 -I../../../xorg-server-1.20.1/include -I../../include -I../../../xorg-serv=
er-1.20.1/Xext -I../../../xorg-server-1.20.1/composite -I../../../xorg-serv=
er-1.20.1/damageext -I../../../xorg-server-1.20.1/xfixes -I../../../xorg-se=
rver-1.20.1/Xi -I../../../xorg-server-1.20.1/mi
 -I../../../xorg-server-1.20.1/miext/sync -I../../../xorg-server-1.20.1/mie=
xt/shadow&nbsp; -I../../../xorg-server-1.20.1/miext/damage -I../../../xorg-=
server-1.20.1/render -I../../../xorg-server-1.20.1/randr -I../../../xorg-se=
rver-1.20.1/fb -I../../../xorg-server-1.20.1/dbe
 -I../../../xorg-server-1.20.1/present -fvisibility=3Dhidden&nbsp;&nbsp; -O=
2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/media/iepl/=
iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xor=
g/2_1.20.1-r0=3D/usr/src/debug/xserver-xorg/2_1.20.1-r0
 -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/w=
ork/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D -f=
debug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work=
/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D&nbsp;
 -pthread -c -o Xwayland-tablet-unstable-v2-protocol.o `test -f 'tablet-uns=
table-v2-protocol.c' || echo '../../../xorg-server-1.20.1/hw/xwayland/'`tab=
let-unstable-v2-protocol.c<o:p></o:p></p>
<p class=3D"MsoNormal">aarch64-pdm3-linux-gcc&nbsp; --sysroot=3D/media/iepl=
/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xo=
rg/2_1.20.1-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../../../xorg-server-1.=
20.1/hw/xwayland -I../../include&nbsp;&nbsp;&nbsp; -I../../../xorg-server-1=
.20.1/glamor
 -I../../../xorg-server-1.20.1/dri3 -DHAVE_DIX_CONFIG_H -I/media/iepl/iepl1=
/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1=
.20.1-r0/recipe-sysroot/usr/include/libdrm -DHAVE_DIX_CONFIG_H -Wall -Wpoin=
ter-arith -Wmissing-declarations
 -Wformat=3D2 -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -Wb=
ad-function-cast -Wold-style-definition -Wdeclaration-after-statement -Wunu=
sed -Wuninitialized -Wshadow -Wmissing-noreturn -Wmissing-format-attribute =
-Wredundant-decls -Wlogical-op -Werror=3Dimplicit
 -Werror=3Dnonnull -Werror=3Dinit-self -Werror=3Dmain -Werror=3Dmissing-bra=
ces -Werror=3Dsequence-point -Werror=3Dreturn-type -Werror=3Dtrigraphs -Wer=
ror=3Darray-bounds -Werror=3Dwrite-strings -Werror=3Daddress -Werror=3Dint-=
to-pointer-cast -Werror=3Dpointer-to-int-cast -fno-strict-aliasing
 -fno-strict-aliasing -D_DEFAULT_SOURCE -D_BSD_SOURCE -DHAS_FCHOWN -DHAS_ST=
ICKY_DIR_BIT -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aar=
ch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/libdrm =
-I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-lin=
ux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/pixman-1
 -I/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-li=
nux/xserver-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/freetype2 -I/media/=
iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserve=
r-xorg/2_1.20.1-r0/recipe-sysroot/usr/include/X11/dri
 -I../../../xorg-server-1.20.1/include -I../../include -I../../../xorg-serv=
er-1.20.1/Xext -I../../../xorg-server-1.20.1/composite -I../../../xorg-serv=
er-1.20.1/damageext -I../../../xorg-server-1.20.1/xfixes -I../../../xorg-se=
rver-1.20.1/Xi -I../../../xorg-server-1.20.1/mi
 -I../../../xorg-server-1.20.1/miext/sync -I../../../xorg-server-1.20.1/mie=
xt/shadow&nbsp; -I../../../xorg-server-1.20.1/miext/damage -I../../../xorg-=
server-1.20.1/render -I../../../xorg-server-1.20.1/randr -I../../../xorg-se=
rver-1.20.1/fb -I../../../xorg-server-1.20.1/dbe
 -I../../../xorg-server-1.20.1/present -fvisibility=3Dhidden&nbsp;&nbsp; -O=
2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/media/iepl/=
iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xor=
g/2_1.20.1-r0=3D/usr/src/debug/xserver-xorg/2_1.20.1-r0
 -fdebug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/w=
ork/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot-native=3D -f=
debug-prefix-map=3D/media/iepl/iepl1/work/yocto_build/build-weston/tmp/work=
/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r0/recipe-sysroot=3D&nbsp;
 -pthread -c -o Xwayland-xwayland-keyboard-grab-unstable-v1-protocol.o `tes=
t -f 'xwayland-keyboard-grab-unstable-v1-protocol.c' || echo '../../../xorg=
-server-1.20.1/hw/xwayland/'`xwayland-keyboard-grab-unstable-v1-protocol.c<=
o:p></o:p></p>
<p class=3D"MsoNormal">make[2]: *** No rule to make target '../../glx/libgl=
xvnd.la', needed by 'Xwayland'.&nbsp; Stop.<o:p></o:p></p>
<p class=3D"MsoNormal">make[2]: *** Waiting for unfinished jobs....<o:p></o=
:p></p>
<p class=3D"MsoNormal">make[2]: Leaving directory '/media/iepl/iepl1/work/y=
octo_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r=
0/build/hw/xwayland'<o:p></o:p></p>
<p class=3D"MsoNormal">Makefile:611: recipe for target 'all-recursive' fail=
ed<o:p></o:p></p>
<p class=3D"MsoNormal">make[1]: *** [all-recursive] Error 1<o:p></o:p></p>
<p class=3D"MsoNormal">make[1]: Leaving directory '/media/iepl/iepl1/work/y=
octo_build/build-weston/tmp/work/aarch64-pdm3-linux/xserver-xorg/2_1.20.1-r=
0/build/hw'<o:p></o:p></p>
<p class=3D"MsoNormal">Makefile:813: recipe for target 'all-recursive' fail=
ed<o:p></o:p></p>
<p class=3D"MsoNormal">make: *** [all-recursive] Error 1<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: oe_runmake failed<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: exit code 1 from a shell command.<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR: Function failed: do_compile (log file is loca=
ted at /media/iepl/iepl1/work/yocto_build/build-weston/tmp/work/aarch64-pdm=
3-linux/xserver-xorg/2_1.20.1-r0/temp/log.do_compile.2603)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can somebody provide me a few pointers for this. For=
 more info feel free to reply.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Best Regards
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Kamal Pandey<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Junior Software Engineer</span><span =
lang=3D"EN-US" style=3D"color:black;mso-fareast-language:EN-IN"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:b=
lack;mso-fareast-language:EN-IN"><img width=3D"32" height=3D"32" style=3D"w=
idth:.3333in;height:.3333in" id=3D"Picture_x0020_1" src=3D"cid:image001.png=
@01D46BCF.EB204570" alt=3D"ifm_logo_sqrs"></span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:=
black;mso-fareast-language:EN-IN">ifm
 engineering pvt. ltd.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif;color:black;mso-fareast-language:=
EN-IN">Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Roa=
d, Bavdhan, Pune, India - 411021 | Web:
</span><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-IN"><a href=3D=
"http://www.ifm.com/"><span style=3D"font-size:8.0pt;font-family:&quot;Treb=
uchet MS&quot;,sans-serif;color:black">www.ifm.com</span></a></span><span l=
ang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;Trebuchet MS&quot;=
,sans-serif;color:black;mso-fareast-language:EN-IN">
 | Phone: &#43;91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676</span><s=
pan style=3D"mso-fareast-language:EN-IN"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_b792369ca9124b358835683d7e50cb70ifmcom_--

--_004_b792369ca9124b358835683d7e50cb70ifmcom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=1601;
	creation-date="Wed, 24 Oct 2018 14:02:46 GMT";
	modification-date="Wed, 24 Oct 2018 14:02:46 GMT"
Content-ID: <image001.png@01D46BCF.EB204570>
Content-Transfer-Encoding: base64

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
RK5CYII=

--_004_b792369ca9124b358835683d7e50cb70ifmcom_--
