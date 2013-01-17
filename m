Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E91EDE002AB
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2013 11:22:53 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Jan 2013 11:22:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,486,1355126400"; 
	d="scan'208,217";a="192344247"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Jan 2013 11:22:51 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.50]) with mapi id
	14.01.0355.002; Thu, 17 Jan 2013 11:22:50 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse Plugin
Thread-Index: AQHN9KvFtc8WGUaUVUagiLFVR9+DMphN5YOA
Date: Thu, 17 Jan 2013 19:22:50 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD45A6@ORSMSX101.amr.corp.intel.com>
References: <CANmViri9tO7geBequNB5V7bVgJi49VyzybdbLodrSvbaoYJ0fw@mail.gmail.com>
In-Reply-To: <CANmViri9tO7geBequNB5V7bVgJi49VyzybdbLodrSvbaoYJ0fw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Eclipse Plugin
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Jan 2013 19:22:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C57DD45A6ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C57DD45A6ORSMSX101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Raul,



Before we can help you debug your issue, can you provide more info regardin=
g to:



1.       How did you setup your cross toolchain? ADT installer or toolchain=
 tarball (your build if so, how did you build it.  If not, which one did yo=
u download?)

2.       And also, please provide more info what's your toolchain setup in =
Eclipse, specifically the Yocto Project ADT preference config under Window?

Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Raul Rosetto Munoz
Sent: Thursday, January 17, 2013 4:10 AM
To: yocto@yoctoproject.org
Subject: [yocto] Eclipse Plugin



Hello All,

I followed the ADT manual to create a eclipse environment.



After create a default Hello World Yocto project I get some compile errors.



At file config.log I saw some errors lines:





configure:2861: checking for arm-poky-linux-gnueabi-gcc

configure:2888: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm=
 -mthumb-interwork  -mtune=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/=
philinux/arm

configure:3157: checking for C compiler version

configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm -mthumb=
-interwork  -mtune=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/philinux=
/arm --version >&5

arm-poky-linux-gnueabi-gcc (GCC) 4.7.2

Copyright (C) 2012 Free Software Foundation, Inc.

This is free software; see the source for copying conditions.  There is NO

warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



configure:3177: $? =3D 0

configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm -mthumb=
-interwork  -mtune=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/philinux=
/arm -v >&5

Using built-in specs.

COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc

COLLECT_LTO_WRAPPER=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec=
/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/lto-wrapper

Target: arm-poky-linux-gnueabi

Configured with: /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-=
arm/build/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure --build=
=3Dx86_64-linux --host=3Di686-pokysdk-linux --target=3Darm-poky-linux-gnuea=
bi --prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr --exec_prefix=
=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr --bindir=3D/opt/poky/1.3/s=
ysroots/i686-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi --sbindir=3D/=
opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi=
 --libexecdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5=
te-poky-linux-gnueabi --datadir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux=
/usr/share --sysconfdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/etc --s=
haredstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/com --localstated=
ir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/var --libdir=3D/opt/poky/1.3=
/sysroots/i686-pokysdk-linux/usr/lib/armv5te-poky-linux-gnueabi --includedi=
r=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include --oldincludedir=
=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include --infodir=3D/opt/p=
oky/1.3/sysroots/i686-pokysdk-linux/usr/share/info --mandir=3D/opt/poky/1.3=
/sysroots/i686-pokysdk-linux/usr/share/man --disable-silent-rules --disable=
-dependency-tracking --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-aut=
obuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/i686-nativesdk-po=
kysdk-linux --with-gnu-ld --enable-shared --enable-languages=3Dc,c++ --enab=
le-threads=3Dposix --disable-multilib --enable-c99 --enable-long-long --ena=
ble-symvers=3Dgnu --enable-libstdcxx-pch --program-prefix=3Darm-poky-linux-=
gnueabi- --without-local-prefix --enable-target-optspace --enable-lto --ena=
ble-libssp --disable-bootstrap --disable-libgomp --disable-libmudflap --wit=
h-system-zlib --with-linker-hash-style=3Dgnu --with-ppl=3Dno --with-cloog=
=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_global --with-float=
=3Dsoft --with-gxx-include-dir=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-=
gnueabi/usr/include/c++ --with-build-time-tools=3D/srv/home/pokybuild/yocto=
-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/=
usr/arm-poky-linux-gnueabi/bin --with-sysroot=3D/opt/poky/1.3/sysroots/armv=
5te-poky-linux-gnueabi --with-build-sysroot=3D/srv/home/pokybuild/yocto-aut=
obuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/qemuarm --disable=
-libunwind-exceptions --disable-libssp --disable-libgomp --disable-libmudfl=
ap --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-=
arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux --with-mpc=3D/srv=
/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/s=
ysroots/i686-nativesdk-pokysdk-linux --enable-nls

Thread model: posix

gcc version 4.7.2 (GCC)

configure:3177: $? =3D 0

configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm -mthumb=
-interwork  -mtune=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/philinux=
/arm -V >&5

arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'

arm-poky-linux-gnueabi-gcc: fatal error: no input files

compilation terminated.

configure:3177: $? =3D 1

configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm -mthumb=
-interwork  -mtune=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/philinux=
/arm -qversion >&5

arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-qvers=
ion'

arm-poky-linux-gnueabi-gcc: fatal error: no input files

compilation terminated.

configure:3177: $? =3D 1

configure:3197: checking whether the C compiler works

configure:3219: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm -mthumb=
-interwork  -mtune=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/philinux=
/arm  -g -O0  --sysroot=3D/opt/poky/1.3  --sysroot=3D/opt/poky/1.3  --sysro=
ot=3D/opt/poky/1.3 conftest.c  >&5

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crt1.o: No such file=
 or directory

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crti.o: No such file=
 or directory

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtbegin.o: No such =
file or directory

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc_s

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lc

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc_s

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtend.o: No such fi=
le or directory

/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtn.o: No such file=
 or directory

collect2: error: ld returned 1 exit status

configure:3223: $? =3D 1

configure:3261: result: no

configure: failed program was:

| /* confdefs.h */

| #define PACKAGE_NAME "teste"

| #define PACKAGE_TARNAME "teste"

| #define PACKAGE_VERSION "0.1.0"

| #define PACKAGE_STRING "teste 0.1.0"

| #define PACKAGE_BUGREPORT ""

| #define PACKAGE_URL ""

| #define PACKAGE "teste"

| #define VERSION "0.1.0"

| /* end confdefs.h.  */

|

| int

| main ()

| {

|

|   ;

|   return 0;

| }

configure:3266: error: in `/home/prjs/compsis0001/workspace/teste':

configure:3268: error: C compiler cannot create executables

See `config.log' for more details



## ---------------- ##

## Cache variables. ##

## ---------------- ##

...

...

...

## ----------------- ##

## Output variables. ##

## ----------------- ##

...

...

...

/* confdefs.h */

#define PACKAGE_NAME "teste"

#define PACKAGE_TARNAME "teste"

#define PACKAGE_VERSION "0.1.0"

#define PACKAGE_STRING "teste 0.1.0"

#define PACKAGE_BUGREPORT ""

#define PACKAGE_URL ""

#define PACKAGE "teste"

#define VERSION "0.1.0"



configure: exit 77





Some One can Help me?



Thanks



--
Raul Rosetto Mu=F1oz


--_000_C6510F6D410BB64A8C15398EDC6B847C57DD45A6ORSMSX101amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:2011366364;
	mso-list-type:hybrid;
	mso-list-template-ids:514591544 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Raul,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Before we can help you de=
bug your issue, can you provide more info regarding to:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso=
-list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">How did you setup=
 your cross toolchain? ADT installer or toolchain tarball (your build if so=
, how did you build it. &nbsp;If not, which one did you download?)<o:p></o:=
p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso=
-list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">And also, please =
provide more info what&#8217;s your toolchain setup in Eclipse, specificall=
y the Yocto Project ADT preference config under Window?<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Raul Rosetto Munoz<br>
<b>Sent:</b> Thursday, January 17, 2013 4:10 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Eclipse Plugin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I followed the ADT manual to create a eclipse enviro=
nment.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">After create a default Hello World Yocto project I g=
et some compile errors.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">At file config.log I saw some errors lines:<o:p></o:=
p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:2861: checking for arm-poky-linux-gnueabi-gcc</span><o:p></o:p></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:2888: result: arm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv5te &=
nbsp;-marm -mthumb-interwork &nbsp;-mtune=3Darm926ej-s --sysroot=3D/home/pr=
js/compsis0001/philinux/arm</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3157: checking for C compiler version</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3166: arm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv5te &nbsp;-ma=
rm -mthumb-interwork &nbsp;-mtune=3Darm926ej-s --sysroot=3D/home/prjs/comps=
is0001/philinux/arm --version &gt;&amp;5</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
arm-poky-linux-gnueabi-gcc (GCC) 4.7.2</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Copyright (C) 2012 Free Software Foundation, Inc.</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
This is free software; see the source for copying conditions. &nbsp;There i=
s NO</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=
</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3177: $? =3D 0</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3166: arm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv5te &nbsp;-ma=
rm -mthumb-interwork &nbsp;-mtune=3Darm926ej-s --sysroot=3D/home/prjs/comps=
is0001/philinux/arm -v &gt;&amp;5</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Using built-in specs.</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
COLLECT_LTO_WRAPPER=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec=
/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/lto-wrapper</s=
pan><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Target: arm-poky-linux-gnueabi</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Configured with: /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-=
arm/build/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure --build=
=3Dx86_64-linux --host=3Di686-pokysdk-linux --target=3Darm-poky-linux-gnuea=
bi
 --prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr --exec_prefix=3D/=
opt/poky/1.3/sysroots/i686-pokysdk-linux/usr --bindir=3D/opt/poky/1.3/sysro=
ots/i686-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi --sbindir=3D/opt/=
poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi
 --libexecdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5=
te-poky-linux-gnueabi --datadir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux=
/usr/share --sysconfdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/etc --s=
haredstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/com
 --localstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/var --libdir=
=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/lib/armv5te-poky-linux-gnu=
eabi --includedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include -=
-oldincludedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
 --infodir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/info --man=
dir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/man --disable-sil=
ent-rules --disable-dependency-tracking --with-libtool-sysroot=3D/srv/home/=
pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroot=
s/i686-nativesdk-pokysdk-linux
 --with-gnu-ld --enable-shared --enable-languages=3Dc,c&#43;&#43; --enable-=
threads=3Dposix --disable-multilib --enable-c99 --enable-long-long --enable=
-symvers=3Dgnu --enable-libstdcxx-pch --program-prefix=3Darm-poky-linux-gnu=
eabi- --without-local-prefix --enable-target-optspace
 --enable-lto --enable-libssp --disable-bootstrap --disable-libgomp --disab=
le-libmudflap --with-system-zlib --with-linker-hash-style=3Dgnu --with-ppl=
=3Dno --with-cloog=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_g=
lobal --with-float=3Dsoft --with-gxx-include-dir=3D/opt/poky/1.3/sysroots/a=
rmv5te-poky-linux-gnueabi/usr/include/c&#43;&#43;
 --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slav=
e/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/arm-poky-linux-gnue=
abi/bin --with-sysroot=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnueabi =
--with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/ni=
ghtly-arm/build/build/tmp/sysroots/qemuarm
 --disable-libunwind-exceptions --disable-libssp --disable-libgomp --disabl=
e-libmudflap --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slav=
e/nightly-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux --with-=
mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/b=
uild/tmp/sysroots/i686-nativesdk-pokysdk-linux
 --enable-nls</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Thread model: posix</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
gcc version 4.7.2 (GCC)&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3177: $? =3D 0</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3166: arm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv5te &nbsp;-ma=
rm -mthumb-interwork &nbsp;-mtune=3Darm926ej-s --<b><span style=3D"color:re=
d">sysroot=3D/home/prjs/compsis0001/philinux/arm -V &gt;&amp;5</span></b></=
span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">arm-poky-linux-gnueabi-gcc: error: unrecognized command line o=
ption '-V'</span></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">arm-poky-linux-gnueabi-gcc: fatal error: no input files</span>=
</b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">compilation terminated.</span></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">configure:3177: $? =3D 1</span></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">configure:3166: arm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv=
5te &nbsp;-marm -mthumb-interwork &nbsp;-mtune=3Darm926ej-s --sysroot=3D/ho=
me/prjs/compsis0001/philinux/arm -qversion &gt;&amp;5</span></b><o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">arm-poky-linux-gnueabi-gcc: error: unrecognized command line o=
ption '-qversion'</span></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">arm-poky-linux-gnueabi-gcc: fatal error: no input files</span>=
</b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">compilation terminated.</span></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">configure:3177: $? =3D 1</span></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;;color:red">configure:3197: checking whether the C compiler works</span></=
b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3219: arm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv5te &nbsp;-ma=
rm -mthumb-interwork &nbsp;-mtune=3Darm926ej-s --sysroot=3D/home/prjs/comps=
is0001/philinux/arm &nbsp;-g -O0 &nbsp;--sysroot=3D/opt/poky/1.3 &nbsp;--sy=
sroot=3D/opt/poky/1.3
 &nbsp;--sysroot=3D/opt/poky/1.3 conftest.c &nbsp;&gt;&amp;5</span><o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crt1.o: No such file=
 or directory</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crti.o: No such file=
 or directory</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtbegin.o: No such =
file or directory</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc</span><o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc_s</span><o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lc</span><o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc</span><o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc_s</span><o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtend.o: No such fi=
le or directory</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtn.o: No such file=
 or directory</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
collect2: error: ld returned 1 exit status</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3223: $? =3D 1</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3261: result: no</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure: failed program was:</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| /* confdefs.h */</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define PACKAGE_NAME &quot;teste&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define PACKAGE_TARNAME &quot;teste&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define PACKAGE_VERSION &quot;0.1.0&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define PACKAGE_STRING &quot;teste 0.1.0&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define PACKAGE_BUGREPORT &quot;&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define PACKAGE_URL &quot;&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define PACKAGE &quot;teste&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| #define VERSION &quot;0.1.0&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| /* end confdefs.h. &nbsp;*/</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
|&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| int</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| main ()</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| {</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
|&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| &nbsp; ;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| &nbsp; return 0;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
| }</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3266: error: in `/home/prjs/compsis0001/workspace/teste':</span><=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure:3268: error: C compiler cannot create executables</span><o:p></o:=
p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
See `config.log' for more details</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
## ---------------- ##</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
## Cache variables. ##</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
## ---------------- ##</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
...</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
...</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
...</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
## ----------------- ##</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
## Output variables. ##</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
## ----------------- ##</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
...</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
...</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
...</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/* confdefs.h */</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define PACKAGE_NAME &quot;teste&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define PACKAGE_TARNAME &quot;teste&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define PACKAGE_VERSION &quot;0.1.0&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define PACKAGE_STRING &quot;teste 0.1.0&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define PACKAGE_BUGREPORT &quot;&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define PACKAGE_URL &quot;&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define PACKAGE &quot;teste&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
#define VERSION &quot;0.1.0&quot;</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
configure: exit 77</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Some One can Help me?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">-- <br>
<b>Raul Rosetto Mu=F1oz</b> <o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C57DD45A6ORSMSX101amrcor_--
