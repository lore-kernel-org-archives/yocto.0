Return-Path: <dhkoo@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 892DAE00DC3; Thu,  1 Feb 2018 00:32:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [121.254.168.204 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp1.hiworks.co.kr (smtp1.hiworks.co.kr [121.254.168.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10648E00B5F
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 00:32:49 -0800 (PST)
Received: (qmail 42055 invoked from network); 1 Feb 2018 17:32:47 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.218)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 1 Feb 2018 17:32:47 +0900
Received: (qmail 16122 invoked by uid 504); 1 Feb 2018 17:32:47 +0900
Received: from unknown (HELO dhkooPC) (dhkoo@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 1 Feb 2018 17:32:47 +0900
X-Authinfo: HIWORKS SMTP authenticated <dhkoo@m2i.co.kr>
From: "dhkoo" <dhkoo@m2i.co.kr>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Feb 2018 17:32:52 +0900
Message-ID: <000901d39b37$40706290$c15127b0$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdObNz/3OssXwX3OTEyAoj+o4FMKjQ==
Subject: error: impossible constraint in 'asm'
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
X-List-Received-Date: Thu, 01 Feb 2018 08:32:52 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000A_01D39B82.B0580A90"
Content-Language: ko

------=_NextPart_000_000A_01D39B82.B0580A90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi.

 

Recently, I'm work on mplayer that media player for my custom system.

My Kernel version is 3.8, and mplayer version is 1.3.0.

 

And when I perform bitbake, there's error on do_compile process. The
messages says like below.

ERROR: mplayer-1.3.0-r0 do_compile: oe_runmake failed

ERROR: mplayer-1.3.0-r0 do_compile: Function failed: do_compile (log file is
located at
/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mplayer/1.3.0-
r0/temp/log.do_compile.2960)

ERROR: Logfile of failure stored in:
/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mplayer/1.3.0-
r0/temp/log.do_compile.2960

Log data follows:

| DEBUG: Executing shell function do_compile

| NOTE: make -j 4

| ./codec-cfg etc/codecs.conf > codecs.conf.h

| arm-poky-linux-gnueabi-gcc  -march=armv7-a -marm -mfpu=vfp
-mfloat-abi=hard
--sysroot=/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mpla
yer/1.3.0-r0/recipe-sysroot -MMD -MP -Wundef  -Wstrict-prototypes
-Wmissing-prototypes -Wdisabled-optimization -Wno-pointer-sign
-Wdeclaration-after-statement -std=gnu99  -D_POSIX_C_SOURCE=200112
-D_XOPEN_SOURCE=600 -D_ISOC99_SOURCE -I. -Iffmpeg  -fexpensive-optimizations
-fomit-frame-pointer -frename-registers -O4 -ffast-math -fno-tree-vectorize
-fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
-D_LARGEFILE64_SOURCE -mcpu=cortex-a9 -mfpu=neon   -D_REENTRANT -DZLIB_CONST
-c -o cpudetect.o cpudetect.c

| arm-poky-linux-gnueabi-gcc  -march=armv7-a -marm -mfpu=vfp
-mfloat-abi=hard
--sysroot=/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mpla
yer/1.3.0-r0/recipe-sysroot -MMD -MP -Wundef  -Wstrict-prototypes
-Wmissing-prototypes -Wdisabled-optimization -Wno-pointer-sign
-Wdeclaration-after-statement -std=gnu99  -D_POSIX_C_SOURCE=200112
-D_XOPEN_SOURCE=600 -D_ISOC99_SOURCE -I. -Iffmpeg  -fexpensive-optimizations
-fomit-frame-pointer -frename-registers -O4 -ffast-math -fno-tree-vectorize
-fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
-D_LARGEFILE64_SOURCE -mcpu=cortex-a9 -mfpu=neon   -D_REENTRANT -DZLIB_CONST
-c -o edl.o edl.c

| arm-poky-linux-gnueabi-gcc  -march=armv7-a -marm -mfpu=vfp
-mfloat-abi=hard
--sysroot=/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mpla
yer/1.3.0-r0/recipe-sysroot -MMD -MP -Wundef  -Wstrict-prototypes
-Wmissing-prototypes -Wdisabled-optimization -Wno-pointer-sign
-Wdeclaration-after-statement -std=gnu99  -D_POSIX_C_SOURCE=200112
-D_XOPEN_SOURCE=600 -D_ISOC99_SOURCE -I. -Iffmpeg  -fexpensive-optimizations
-fomit-frame-pointer -frename-registers -O4 -ffast-math -fno-tree-vectorize
-fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
-D_LARGEFILE64_SOURCE -mcpu=cortex-a9 -mfpu=neon   -D_REENTRANT -DZLIB_CONST
-c -o fmt-conversion.o fmt-conversion.c

| Reading optional codecs config file etc/codecs.conf: 224 audio & 451 video
codecs

| arm-poky-linux-gnueabi-gcc  -march=armv7-a -marm -mfpu=vfp
-mfloat-abi=hard
--sysroot=/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mpla
yer/1.3.0-r0/recipe-sysroot -MMD -MP -Wundef  -Wstrict-prototypes
-Wmissing-prototypes -Wdisabled-optimization -Wno-pointer-sign
-Wdeclaration-after-statement -std=gnu99  -D_POSIX_C_SOURCE=200112
-D_XOPEN_SOURCE=600 -D_ISOC99_SOURCE -I. -Iffmpeg  -fexpensive-optimizations
-fomit-frame-pointer -frename-registers -O4 -ffast-math -fno-tree-vectorize
-fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
-D_LARGEFILE64_SOURCE -mcpu=cortex-a9 -mfpu=neon   -D_REENTRANT -DZLIB_CONST
-c -o m_config.o m_config.c

| m_config.c: In function 'm_config_add_option':

| m_config.c:326:14: warning: assignment discards 'const' qualifier from
pointer target type [-Wdiscarded-qualifiers]

|      co->name = arg->name;

|               ^

| cpudetect.c: In function 'do_cpuid':

| cpudetect.c:258:5: error: impossible constraint in 'asm'

|      __asm__ volatile

|      ^~~~~~~

| Makefile:726: recipe for target 'cpudetect.o' failed

| make: *** [cpudetect.o] Error 1

| make: *** Waiting for unfinished jobs....

| ERROR: oe_runmake failed

| WARNING: exit code 1 from a shell command.

| ERROR: Function failed: do_compile (log file is located at
/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mplayer/1.3.0-
r0/temp/log.do_compile.2960)

ERROR: Task
(/home/ku/yocto/meta-top/recipes-top/mplayer/mplayer_1.3.0.bb:do_compile)
failed with exit code '1'

NOTE: Tasks Summary: Attempted 1475 tasks of which 1474 didn't need to be
rerun and 1 failed.

 

Does anyone has an idea??


------=_NextPart_000_000A_01D39B82.B0580A90
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:10.0pt;
	font-family:"Malgun Gothic";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:9.0pt;
	font-family:"Malgun Gothic";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Malgun Gothic";
	color:windowtext;}
span.Char
	{mso-style-name:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8 Char";
	mso-style-priority:99;
	mso-style-link:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8";
	font-family:"Malgun Gothic";}
.MsoChpDefault
	{mso-style-type:export-only;}
 /* Page Definitions */
 @page Section1
	{size:612.0pt 792.0pt;
	margin:3.0cm 72.0pt 72.0pt 72.0pt;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DKO link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span lang=3DEN-US>Hi.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Recently, I'm work on mplayer =
that media
player for my custom system.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>My Kernel version is 3.8, and =
mplayer
version is 1.3.0.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>And when I perform bitbake, =
there's error
on do_compile process. The messages says like below.<br>
<br>
ERROR: mplayer-1.3.0-r0 do_compile: oe_runmake =
failed<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>ERROR: mplayer-1.3.0-r0 =
do_compile:
Function failed: do_compile (log file is located at
/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mplayer/1.3=
.0-r0/temp/log.do_compile.2960)<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>ERROR: Logfile of failure stored =
in:
/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mplayer/1.3=
.0-r0/temp/log.do_compile.2960<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Log data =
follows:<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| DEBUG: Executing shell =
function
do_compile<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| NOTE: make -j =
4<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| ./codec-cfg etc/codecs.conf =
&gt;
codecs.conf.h<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| =
arm-poky-linux-gnueabi-gcc&nbsp;
-march=3Darmv7-a -marm -mfpu=3Dvfp -mfloat-abi=3Dhard
--sysroot=3D/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi=
/mplayer/1.3.0-r0/recipe-sysroot
-MMD -MP -Wundef&nbsp; -Wstrict-prototypes -Wmissing-prototypes
-Wdisabled-optimization -Wno-pointer-sign -Wdeclaration-after-statement
-std=3Dgnu99&nbsp; -D_POSIX_C_SOURCE=3D200112 -D_XOPEN_SOURCE=3D600 =
-D_ISOC99_SOURCE
-I. -Iffmpeg&nbsp; -fexpensive-optimizations -fomit-frame-pointer =
-frename-registers
-O4 -ffast-math -fno-tree-vectorize -fno-asynchronous-unwind-tables
-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=3D64 -D_LARGEFILE64_SOURCE
-mcpu=3Dcortex-a9 -mfpu=3Dneon&nbsp;&nbsp; -D_REENTRANT -DZLIB_CONST -c =
-o
cpudetect.o cpudetect.c<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| =
arm-poky-linux-gnueabi-gcc&nbsp; -march=3Darmv7-a
-marm -mfpu=3Dvfp -mfloat-abi=3Dhard
--sysroot=3D/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi=
/mplayer/1.3.0-r0/recipe-sysroot
-MMD -MP -Wundef&nbsp; -Wstrict-prototypes -Wmissing-prototypes
-Wdisabled-optimization -Wno-pointer-sign -Wdeclaration-after-statement
-std=3Dgnu99&nbsp; -D_POSIX_C_SOURCE=3D200112 -D_XOPEN_SOURCE=3D600 =
-D_ISOC99_SOURCE
-I. -Iffmpeg&nbsp; -fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O4 -ffast-math -fno-tree-vectorize
-fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE =
-D_FILE_OFFSET_BITS=3D64
-D_LARGEFILE64_SOURCE -mcpu=3Dcortex-a9 -mfpu=3Dneon&nbsp;&nbsp; =
-D_REENTRANT
-DZLIB_CONST -c -o edl.o edl.c<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| =
arm-poky-linux-gnueabi-gcc&nbsp;
-march=3Darmv7-a -marm -mfpu=3Dvfp -mfloat-abi=3Dhard
--sysroot=3D/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi=
/mplayer/1.3.0-r0/recipe-sysroot
-MMD -MP -Wundef&nbsp; -Wstrict-prototypes -Wmissing-prototypes
-Wdisabled-optimization -Wno-pointer-sign -Wdeclaration-after-statement
-std=3Dgnu99&nbsp; -D_POSIX_C_SOURCE=3D200112 -D_XOPEN_SOURCE=3D600 =
-D_ISOC99_SOURCE
-I. -Iffmpeg&nbsp; -fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O4 -ffast-math -fno-tree-vectorize
-fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE =
-D_FILE_OFFSET_BITS=3D64
-D_LARGEFILE64_SOURCE -mcpu=3Dcortex-a9 -mfpu=3Dneon&nbsp;&nbsp; =
-D_REENTRANT -DZLIB_CONST
-c -o fmt-conversion.o fmt-conversion.c<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| Reading optional codecs config =
file
etc/codecs.conf: 224 audio &amp; 451 video codecs<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| =
arm-poky-linux-gnueabi-gcc&nbsp;
-march=3Darmv7-a -marm -mfpu=3Dvfp -mfloat-abi=3Dhard
--sysroot=3D/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi=
/mplayer/1.3.0-r0/recipe-sysroot
-MMD -MP -Wundef&nbsp; -Wstrict-prototypes -Wmissing-prototypes
-Wdisabled-optimization -Wno-pointer-sign -Wdeclaration-after-statement
-std=3Dgnu99&nbsp; -D_POSIX_C_SOURCE=3D200112 -D_XOPEN_SOURCE=3D600 =
-D_ISOC99_SOURCE
-I. -Iffmpeg&nbsp; -fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O4 -ffast-math -fno-tree-vectorize
-fno-asynchronous-unwind-tables -D_LARGEFILE_SOURCE =
-D_FILE_OFFSET_BITS=3D64
-D_LARGEFILE64_SOURCE -mcpu=3Dcortex-a9 -mfpu=3Dneon&nbsp;&nbsp; =
-D_REENTRANT
-DZLIB_CONST -c -o m_config.o m_config.c<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| m_config.c: In function
'm_config_add_option':<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| m_config.c:326:14: warning: =
assignment
discards 'const' qualifier from pointer target type =
[-Wdiscarded-qualifiers]<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
co-&gt;name
=3D arg-&gt;name;<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| cpudetect.c: In function =
'do_cpuid':<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| cpudetect.c:258:5: error: =
impossible
constraint in 'asm'<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
__asm__
volatile<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
^~~~~~~<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| Makefile:726: recipe for =
target
'cpudetect.o' failed<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| make: *** [cpudetect.o] Error =
1<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| make: *** Waiting for =
unfinished jobs....<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| ERROR: oe_runmake =
failed<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| WARNING: exit code 1 from a =
shell
command.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>| ERROR: Function failed: =
do_compile (log
file is located at
/home/ku/yocto/build/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/mplayer/1.3=
.0-r0/temp/log.do_compile.2960)<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>ERROR: Task
(/home/ku/yocto/meta-top/recipes-top/mplayer/mplayer_1.3.0.bb:do_compile)=

failed with exit code '1'<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>NOTE: Tasks Summary: Attempted =
1475 tasks
of which 1474 didn't need to be rerun and 1 =
failed.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Does anyone has an =
idea??<o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_000A_01D39B82.B0580A90--
