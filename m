Return-Path: <briank@RUSSOUND.COM>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 340B7E009D1; Fri,  9 May 2014 06:45:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 06:45:46 PDT
Received: from Pegasus.RUSSOUND.COM (unknown [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F60CE009BA
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:45:46 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Fri, 9 May 2014 09:44:31 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.30) by HERMES.RUSSOUND.com
	(10.0.0.30) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Fri, 9 May 2014 09:44:31 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Fri, 9 May 2014 09:44:31 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-atmel] at91sam9x5ek: "no machine record defined" failure
	for core-image-minimal
Thread-Index: Ac9riCi/qecn3Y3qQzK51aCH65Hnbg==
Date: Fri, 9 May 2014 13:44:31 +0000
Message-ID: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.60]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFnrKqsTGxcLFwCCnu/92TrDB3KM3PnFaTFjayuTAGMAQxZqZl5RfkcCasanzKEvB5UuMFf+7jjE1MF4/ztjFyMUhJLCUUeL14Q0sEM4ORokzRx+ydjFycjALmEpc+drIAmErSly41wBmswmoS7zYOwWsRgSo5sWxL2xdjBwcwgIJErfeakCEUyXebJsLVaInMevnaWYQm0VARWLXu/VsIDavgJNE14ZOsBpGATGJ76fWMEGsEpe49WQ+mC0hICCxZM95ZghbSaL39juouI/EnWmXWCHmCEqcnPmEBSJuJrH3wRKoGj2JRV+nsEHYgRI/j/1iBDlTAujkq++DIcK2EntmTGSCCDtLzLtRDxG2krh2fiorhK0tsf3VPihbR2LTtVVQm+Ql/t+7zwIzZsLlZVBXykqcvrYIamuAxLLF11ggxntJ3L2pARHOk+hc2Mo+gVFlFlIwz0IK5llI4TALyY8LGFlWMQp7uAb5ugbrBYUGB/uH+rnoJefnbmKEJoEdjH9v2B9ilORgUhLlFd2SEyzEl5SfUpmRWJwRX1Sak1p8iFGCg0dJhHfVLaAcb3FBYm5xZjpMSoaDQ0mCtwYkJViUmp5akZaZU5JaBJE+xSgpJc6bCpIUAOnLKM2Dy11iFJUS5vU7C5TjKUgtys0sgYjfYhTmeMgkxJKXn5cqBXQiAxBoML5iFOdgVBLmrQWZxZOZVwJ3wiug65iArvPVzwa5riQRISXVwFgeey1ks6bAM56JDDHVJ140p3lJbHllrv/QV+z6zOUFnFm39Iy5OcOnNhbdjvn34aPdU3uZQ0KvrT7+fD0tftG1t/ND0ib21ykWXjp/Q+Ta3gZr0QNlvqFv5AXD5okum5NxIdDjOMcvy7lZXbVM96f48Plu8vaNcpwaWzN7/nGTiUvtWOO3/1JiKc5INNRiLipOBAA22qwveAMAAA==
MIME-Version: 1.0
Subject: [meta-atmel] at91sam9x5ek: "no machine record defined" failure for core-image-minimal
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
X-List-Received-Date: Fri, 09 May 2014 13:45:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f9f1c263a9ab4a3085bf1a696f31aec6HERMESRUSSOUNDcom_"

--_000_f9f1c263a9ab4a3085bf1a696f31aec6HERMESRUSSOUNDcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Not sure if this is the correct place to email this, but I've seen a few ot=
her meta-atmel references so I figured I'd give it a shot.

I'm attempting to setup a core-image-minimal build using the guidelines in =
the meta-atmel README for the at91sam9x5ek machine type. When the kernel bu=
ild goes to link, I get a "no machine record defined" error. Is this someth=
ing others are seeing in the meta-atmel demo builds?

It's a pretty benign build setup according to the README:

git clone git://git.yoctoproject.org/poky
cd poky
git checkout dora-10.0.1 -b dora-10.0.1
git clone git://git.openembedded.org/meta-openembedded
cd meta-openembedded
git checkout 6572316557e742c2dc93848e4d560242bf0c3995 -b my_branch
cd ..
git clone http://github.com/linux4sam/meta-atmel
source oe-init-build-env /workspace/build-atmel

modify local.conf:

MACHINE ??=3D "at91sam9x5ek"

PACKAGE_CLASSES ?=3D "package_ipk"

modify bblayers.conf:

BBLAYERS ?=3D " \

  /opt/poky/meta-atmel \

  /opt/poky/meta \

  /opt/poky/meta-yocto \

  /opt/poky/meta-yocto-bsp \

  /opt/poky/meta-openembedded/meta-oe \

  /opt/poky/meta-openembedded/meta-networking \

  "
bitbake core-image-minimal

Setting this up, I get the following build configuration and error:

/workspace/build-atmel$ bitbake core-image-minimal
Loading cache: 100% |######################################################=
################################| ETA:  00:00:00
Loaded 1782 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.20.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "at91sam9x5ek"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.5.1"
TUNE_FEATURES     =3D "armv5 thumb dsp"
TARGET_FPU        =3D "soft"
meta-atmel        =3D "master:269066a8128d1e767deee64854a142e67451a5f2"
meta
meta-yocto
meta-yocto-bsp    =3D "dora-10.0.1:8e410e9e46e3335458a7747cdd32e05f5c19ccbb=
"
meta-oe
meta-networking   =3D "my_branch:6572316557e742c2dc93848e4d560242bf0c3995"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_compile (log file is located at /workspace/build=
-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUT=
OINC+68f2c28207-r5/temp/log.do_compile.2291)
ERROR: Logfile of failure stored in: /workspace/build-atmel/tmp/work/at91sa=
m9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/tem=
p/log.do_compile.2291
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 2 zImage CC=3Darm-poky-linux-gnueabi-gcc  -mno-thumb-interw=
ork -marm LD=3Darm-poky-linux-gnueabi-ld.bfd
|   GEN     /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi=
/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux-at91sam9x5ek-standard-=
build/Makefile
|   CHK     include/generated/uapi/linux/version.h
|   CHK     include/generated/utsrelease.h
|   Using /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/l=
inux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux as source for kernel
| make[3]: `include/generated/mach-types.h' is up to date.
|   CC      scripts/mod/devicetable-offsets.s
|   GEN     scripts/mod/devicetable-offsets.h
|   HOSTCC  scripts/mod/file2alias.o
|   CALL    /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi=
/linux-yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux/scripts/checksyscalls.=
sh
|   HOSTLD  scripts/mod/modpost
|   CHK     include/generated/compile.h
|   LINK    vmlinux
|   LD      vmlinux.o
|   MODPOST vmlinux.o
|   GEN     .version
|   CHK     include/generated/compile.h
|   UPD     include/generated/compile.h
|   CC      init/version.o
|   LD      init/built-in.o
| arm-poky-linux-gnueabi-ld.bfd: no machine record defined
| make[2]: *** [vmlinux] Error 1
| make[1]: *** [sub-make] Error 2
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /workspace/bui=
ld-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/3.10+A=
UTOINC+68f2c28207-r5/temp/log.do_compile.2291)
ERROR: Task 208 (/opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-cust=
om_3.10.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 793 tasks of which 785 didn't need to be rer=
un and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.bb, do_=
compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Any thoughts on what might be missing from the README or my implementation =
of it to get this demo build working?

Thanks,
Brian

--_000_f9f1c263a9ab4a3085bf1a696f31aec6HERMESRUSSOUNDcom_
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
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
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
	font-family:"Lucida Console";
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1658027880;
	mso-list-type:hybrid;
	mso-list-template-ids:1938722030 513438826 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:30.0pt;
	text-indent:-.25in;
	font-family:"Lucida Console";
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:66.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:102.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:138.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:174.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:210.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:246.0pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:282.0pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:318.0pt;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Not sure if this is the correct place to email this, bu=
t I&#8217;ve seen a few other meta-atmel references so I figured I&#8217;d =
give it a shot.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">I&#8217;m attempting to setup a core-image-minimal buil=
d using the guidelines in the meta-atmel README for the at91sam9x5ek machin=
e type. When the kernel build goes to link, I get a
 &#8220;no machine record defined&#8221; error. Is this something others ar=
e seeing in the meta-atmel demo builds?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">It&#8217;s a pretty benign build setup according to the=
 README:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">git clone git://git.yoctopro=
ject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">cd poky<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">git checkout dora-10.0.1 -b =
dora-10.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">git clone git://git.openembe=
dded.org/meta-openembedded<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">cd meta-openembedded<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">git checkout 6572316557e742c=
2dc93848e4d560242bf0c3995 -b my_branch<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">cd ..<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">git clone http://github.com/=
linux4sam/meta-atmel<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">source oe-init-build-env /wo=
rkspace/build-atmel<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">modify local.conf:<o:p></o:p=
></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">MACHINE ??=3D &#822=
1;at91sam9x5ek&#8221;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">PACKAGE_CLASSES ?=
=3D &#8220;package_ipk&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">modify bblayers.conf:<o:p></=
o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">BBLAYERS ?=3D &quot=
; \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /opt/poky/me=
ta-atmel \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /opt/poky/me=
ta \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /opt/poky/me=
ta-yocto \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /opt/poky/me=
ta-yocto-bsp \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /opt/poky/me=
ta-openembedded/meta-oe \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /opt/poky/me=
ta-openembedded/meta-networking \<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:66.0pt"><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; &quot;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">bitbake core-image-minimal<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Setting this up, I get the following build configuratio=
n and error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">/workspace/build-atmel$ bitb=
ake core-image-minimal<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">Loading cache: 100% |#######=
###########################################################################=
####| ETA:&nbsp; 00:00:00<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">Loaded 1782 entries from dep=
endency cache.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">NOTE: Resolving any missing =
task queue dependencies<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">Build Configuration:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">BB_VERSION&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.20.0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">BUILD_SYS&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">NATIVELSBSTRING&nbsp;&nbsp; =
=3D &quot;Ubuntu-12.04&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">TARGET_SYS&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">MACHINE&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;at91sam9x5ek&quot;<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">DISTRO&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">DISTRO_VERSION&nbsp;&nbsp;&n=
bsp; =3D &quot;1.5.1&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">TUNE_FEATURES&nbsp;&nbsp;&nb=
sp;&nbsp; =3D &quot;armv5 thumb dsp&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">TARGET_FPU&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;soft&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">meta-atmel&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:269066a8128d1e767deee64854a142e67=
451a5f2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">meta&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">meta-yocto&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">meta-yocto-bsp&nbsp;&nbsp;&n=
bsp; =3D &quot;dora-10.0.1:8e410e9e46e3335458a7747cdd32e05f5c19ccbb&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">meta-oe &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">meta-networking&nbsp;&nbsp; =
=3D &quot;my_branch:6572316557e742c2dc93848e4d560242bf0c3995&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">NOTE: Preparing runqueue<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">NOTE: Executing SetScene Tas=
ks<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">NOTE: Executing RunQueue Tas=
ks<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">ERROR: Function failed: do_c=
ompile (log file is located at /workspace/build-atmel/tmp/work/at91sam9x5ek=
-poky-linux-gnueabi/linux-yocto-custom/3.10&#43;AUTOINC&#43;68f2c28207-r5/t=
emp/log.do_compile.2291)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">ERROR: Logfile of failure st=
ored in: /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/li=
nux-yocto-custom/3.10&#43;AUTOINC&#43;68f2c28207-r5/temp/log.do_compile.229=
1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">Log data follows:<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| DEBUG: Executing shell fun=
ction do_compile<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| NOTE: make -j 2 zImage CC=
=3Darm-poky-linux-gnueabi-gcc&nbsp; -mno-thumb-interwork -marm LD=3Darm-pok=
y-linux-gnueabi-ld.bfd<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; GEN&nbsp;&nbsp=
;&nbsp;&nbsp; /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnuea=
bi/linux-yocto-custom/3.10&#43;AUTOINC&#43;68f2c28207-r5/linux-at91sam9x5ek=
-standard-build/Makefile<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; CHK&nbsp;&nbsp=
;&nbsp;&nbsp; include/generated/uapi/linux/version.h<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; CHK&nbsp;&nbsp=
;&nbsp;&nbsp; include/generated/utsrelease.h<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; Using /workspa=
ce/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/=
3.10&#43;AUTOINC&#43;68f2c28207-r5/linux as source for kernel<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| make[3]: `include/generate=
d/mach-types.h' is up to date.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; CC&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; scripts/mod/devicetable-offsets.s<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; GEN&nbsp;&nbsp=
;&nbsp;&nbsp; scripts/mod/devicetable-offsets.h<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; HOSTCC&nbsp; s=
cripts/mod/file2alias.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; CALL&nbsp;&nbs=
p;&nbsp; /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/li=
nux-yocto-custom/3.10&#43;AUTOINC&#43;68f2c28207-r5/linux/scripts/checksysc=
alls.sh<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; HOSTLD&nbsp; s=
cripts/mod/modpost<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; CHK&nbsp;&nbsp=
;&nbsp;&nbsp; include/generated/compile.h<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; LINK&nbsp;&nbs=
p;&nbsp; vmlinux<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; LD&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; vmlinux.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; MODPOST vmlinu=
x.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; GEN&nbsp;&nbsp=
;&nbsp;&nbsp; .version<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; CHK&nbsp;&nbsp=
;&nbsp;&nbsp; include/generated/compile.h<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; UPD&nbsp;&nbsp=
;&nbsp;&nbsp; include/generated/compile.h<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; CC&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; init/version.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">|&nbsp;&nbsp; LD&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; init/built-in.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| arm-poky-linux-gnueabi-ld.=
bfd: no machine record defined<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| make[2]: *** [vmlinux] Err=
or 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| make[1]: *** [sub-make] Er=
ror 2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| make: *** [all] Error 2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| ERROR: oe_runmake failed<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| WARNING: exit code 1 from =
a shell command.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">| ERROR: Function failed: do=
_compile (log file is located at /workspace/build-atmel/tmp/work/at91sam9x5=
ek-poky-linux-gnueabi/linux-yocto-custom/3.10&#43;AUTOINC&#43;68f2c28207-r5=
/temp/log.do_compile.2291)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">ERROR: Task 208 (/opt/poky/m=
eta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.bb, do_compile) fail=
ed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">NOTE: Tasks Summary: Attempt=
ed 793 tasks of which 785 didn't need to be rerun and 1 failed.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">Waiting for 0 running tasks =
to finish:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">Summary: 1 task failed:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /opt/poky/meta-atmel/=
recipes-kernel/linux/linux-yocto-custom_3.10.bb, do_compile<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;">Summary: There was 1 ERROR m=
essage shown, returning a non-zero exit code.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Any thoughts on what might be missing from the README o=
r my implementation of it to get this demo build working?<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Brian<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_f9f1c263a9ab4a3085bf1a696f31aec6HERMESRUSSOUNDcom_--
