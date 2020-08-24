Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.90.1598298651417871981
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 12:50:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=MWWXVGcK;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1598298652; x=1755978652;
  h=from:to:subject:date:mime-version;
  bh=SEcKSWel1hJCqi+nUzXwfNm5sPfNFqi0tSbYkKPaKVw=;
  b=MWWXVGcKTvPFpSs4gL7zq2bEZ47e2mkZtIuTRoBahIMlf/Kcswe2UaqT
   sB67iTirxDycn2y2TCqqXT2ReqlzgAqfgsQGw1GWUqY4oC9aseUL7lqCh
   6hadLz12+xELmgoJS+2j/zjhv62SwIUcwhMhSS0ojllvWA3JYyANa6Nl1
   Q=;
IronPort-PHdr: =?us-ascii?q?9a23=3AOU59oR3c1cSemErQsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?seMeLvad9pjvdHbS+e9qxAeQG9mCtbQd0rqd7fiocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTuwbalvIBmrrgjducgbjZd/Iast1xXFpWdFdf?=
 =?us-ascii?q?5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPGAz/83rqALM?=
 =?us-ascii?q?TRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VSi+46ptVRTljj?=
 =?us-ascii?q?oMOTwk/2HNksF+jLxVrg+9pxJxwIDUYZ2aO/Vlc6zHYd8aR3BMUtpNWyBfBI63?=
 =?us-ascii?q?cosBD/AGPeZdt4TxqVwArRy4BQm3Guzg1CRIimfr1qMnz+QuDx/G0xImH9kTrn?=
 =?us-ascii?q?nfsdH5O6kPX+ywwqXD0DLOb+hK2Tjj9ojHbBYhreuJXbJ3d8rR0lcgGB3ejliL?=
 =?us-ascii?q?soPqJS2a1v8NsmiA8+pvS+evi3U9pw5tpTivw94hh4/UjY0a1l7K7z92wJopJd?=
 =?us-ascii?q?KmUk57Z8apHpVeuiyGNoZ7QMIvT391tCskybALuZq2cScFxZg6yRDSa/OJf5WM?=
 =?us-ascii?q?7x/hVOucLjZ1iG97db+7hBu/8lWtxvDzWMSyzV1ErTJFn8HRunwRzRDe5MqKRu?=
 =?us-ascii?q?Fj8ku/2TuDzQHe5+BcLUwpiabXMZEsz7EqmpcXq0jOHS37lUPrh6GMbEok4PKn?=
 =?us-ascii?q?6+H/b7XjoZ+TKpF7hxnlMqQrhsy/GeM4MhUSX2SD+eSzyrnj/UrhTbpWlPI2ib?=
 =?us-ascii?q?XWsJXBJckfoqO0ABNZ3pg55xa5FTiqys8XkmMZI1JeeBOHlJTpNE/LIPDjF/uw?=
 =?us-ascii?q?n1OskDJzy/DHOL3uHInNI2DenLv9Z7pw5UxRxBAtwdxB559YELAMLfPrVk/0rt?=
 =?us-ascii?q?PYDxs5MwKuw+bgDdVwzpgeWX6RDa+HLqzSt0WE5ucoI+mKf48apijyK+M+6vH1?=
 =?us-ascii?q?l3A2h0QdfKmy3ZsLdn+4G+9mL1+Fbnrrh9cNCX0KsRYmTOz2lF2CViZeZna1X6?=
 =?us-ascii?q?0g+jE7D5mrDYPCRoC2nLyBxz23H51RZm9aFlCMFm/od5+DW/cOdi2dPtNhniYD?=
 =?us-ascii?q?Vbi7RI9ynS2p4UXrzLF7KcLQ+zYErtTy09Np4PXJkhM//iAyCN6SmSnZXmZ/gm?=
 =?us-ascii?q?QgQz4twLs5sEt21lCby696jvdEU9tJ6KUafB09MMuW6ut8EN3/QUaJRcuEVlug?=
 =?us-ascii?q?Cv7uQQwKD5h5l8QSblhwHZOniRbY0iexK7UcmqeaH4A597ma1H/0cZUug03a3b?=
 =?us-ascii?q?Us2gF1CvBEMner0/Zy?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D9BABYGERf/0LhJQpfHgEBCxIMQIJtg?=
 =?us-ascii?q?XeBPZZimxoLAQEBAQEBAQEBBwEvBAEBhxMlOBMCEAEBBgEBAQEBBgQBhkkLgjc?=
 =?us-ascii?q?ig01eAUADPSYBBBuDH4F+skiBNIpEgTiOfz6BEYJbB4sgBI9fCooAgyCYLoEIB?=
 =?us-ascii?q?wOCY5obKqAykkObH4QoAgQCBAUCFYFrgXpwgzpPFwINjisXFI4QgSsCBgoBAQM?=
 =?us-ascii?q?JkAiBEQEB?=
X-IPAS-Result: =?us-ascii?q?A2D9BABYGERf/0LhJQpfHgEBCxIMQIJtgXeBPZZimxoLAQE?=
 =?us-ascii?q?BAQEBAQEBBwEvBAEBhxMlOBMCEAEBBgEBAQEBBgQBhkkLgjcig01eAUADPSYBB?=
 =?us-ascii?q?BuDH4F+skiBNIpEgTiOfz6BEYJbB4sgBI9fCooAgyCYLoEIBwOCY5obKqAykkO?=
 =?us-ascii?q?bH4QoAgQCBAUCFYFrgXpwgzpPFwINjisXFI4QgSsCBgoBAQMJkAiBEQEB?=
X-IronPort-AV: E=Sophos;i="5.76,349,1592870400"; 
   d="scan'208,217";a="304015541"
X-IronPort-AV: E=Sophos;i="5.76,349,1592870400"; 
   d="scan'208,217";a="164282889"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #sdk -Standard SDK build with cmake and meta-clang gives error when I attempt topull in compiler-rt
Thread-Topic: #sdk -Standard SDK build with cmake and meta-clang gives error
 when I attempt topull in compiler-rt
Thread-Index: AdZ6T8k35VO0jqJQS5qwq8vP52X7mg==
Date: Mon, 24 Aug 2020 19:50:17 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.162E4C280A764751.17715@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_bc9f91c9cfa84f17953e3b5903560a1bbaesystemscom_"

--_000_bc9f91c9cfa84f17953e3b5903560a1bbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am having trouble configuring my SDK to use the meta-clang compiler-rt co=
mponent properly.

How do I configure my build so meta-clang brings in compiler-rt and generat=
es the libclang_rt.binutils-x86_64.a library I require?

When I attempt to build in "compiler-rt" component I get the CMAKE Error sh=
own below.

No matter how I try, for example:

TOOLCHAIN_TARGET_TASK_append =3D "compiler-rt-static-dev compiler-rt-dev"

Or:

SDK_EXTRA_TOOLS =3D "  \
    nativesdk-cmake \
    nativesdk-clang \
    nativesdk-compiler-rt \
    "
I get the "cmake" error described below.

(1) What Is this the correct method to add this components to my SDK ?
(2) I do not understand how to resolve this , all are yocto based component=
s, the only llvm components are pulled in by meta-clang, what am I expected=
 to edit to resolve ?, and how ? Can someone explain to me what this error =
is attempting to convey, and what I am doing wrong ?
(3) Is it correct to expect the cmake and clang components to work together=
 under yocto?
(4) I do not want the tools built into my kernel just the SDK for developme=
nt, Is there better way to do what I want to do here ?

Note: My target and host systems are both x86-64...

And, yes, the "-rtlib-libgcc" works for my basic test code and bypasses req=
uiring compiler-rt, but I would like to understand what is going on below a=
nd be able to build correctly...

Synopsis of issue:
-----------------------

When I build my SDK, I setup the following:

SDKMACHINE =3D "x86_64"
SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"
TOOLCHAIN_HOST_TASK_append =3D "${SDK_EXTRA_TOOLS}"
SDK_EXTRA_TOOLS =3D "  \
    nativesdk-cmake \
    nativesdk-clang \
    "
require conf/distro/include/yocto-uninative.inc
INHERIT +=3D "uninative"

My SDK builds and installs without issue...

Running  a very basic example produces the following issue:

09:22 smonsees@yix490016 ~/yocto/test>make hello x86_64-poky-linux-clang -m=
64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian =
--sysroot=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-l=
inux  -O2 -pipe -g -feliminate-unused-debug-types  -ansi -c hello.c x86_64-=
poky-linux-clang -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4=
.2 -mlittle-endian --sysroot=3D/disk0/scratch/smonsees/yocto/testSDK/sysroo=
ts/corei7-64-poky-linux  -O2 -pipe -g -feliminate-unused-debug-types  -ansi=
 hello.o -o hello
clang-5.0: warning: argument unused during compilation: '-ansi' [-Wunused-c=
ommand-line-argument]
/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/bin=
/x86_64-poky-linux/x86_64-poky-linux-ld: cannot find /disk0/scratch/smonsee=
s/yocto/testSDK/sysroots/corei7-64-poky-linux/usr/lib/clang/5.0.1/lib/linux=
/libclang_rt.builtins-x86_64.a: No such file or directory
clang-5.0: error: linker command failed with exit code 1 (use -v to see inv=
ocation)
make: *** [hello] Error 1
09:22 smonsees@yix490016 ~/yocto/test>

The file in question does not exist on my system.

If I add "nativesdk-compiler-rt" like so:

SDK_EXTRA_TOOLS =3D "  \
    nativesdk-cmake \
    nativesdk-clang \
    nativesdk-compiler-rt \
    "

I get the following error:

Log data follows:
| DEBUG: Executing shell function do_configure
| -- The C compiler identification is GNU 7.3.0
| -- The CXX compiler identification is GNU 7.3.0
| -- The ASM compiler identification is GNU
| -- Found assembler:
| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
| -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
| 4-pokysdk-linux/x86_64-pokysdk-linux-gcc
| -- Check for working C compiler:
| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
| -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
| 4-pokysdk-linux/x86_64-pokysdk-linux-gcc
| -- Check for working C compiler:
| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
| -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
| 4-pokysdk-linux/x86_64-pokysdk-linux-gcc -- works
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Check for working CXX compiler:
| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
| -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
| 4-pokysdk-linux/x86_64-pokysdk-linux-g++
| -- Check for working CXX compiler:
| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
| -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
| 4-pokysdk-linux/x86_64-pokysdk-linux-g++ -- works
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - done
| -- Detecting CXX compile features
| -- Detecting CXX compile features - done
| -- Looking for unwind.h
| -- Looking for unwind.h - found
| CMake Error at CMakeLists.txt:38 (find_package):
|   By not providing "FindLLVM.cmake" in CMAKE_MODULE_PATH this project has
|   asked CMake to find a package configuration file provided by "LLVM", bu=
t
|   CMake did not find one.
|
|   Could not find a package configuration file provided by "LLVM" with any=
 of
|   the following names:
|
|     LLVMConfig.cmake
|     llvm-config.cmake
|
|   Add the installation prefix of "LLVM" to CMAKE_PREFIX_PATH or set
|   "LLVM_DIR" to a directory containing one of the above files.  If "LLVM"
|   provides a separate development package or SDK, be sure it has been
|   installed.
|
|
| -- Configuring incomplete, errors occurred!
| See also "/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/b=
uilds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compil=
er-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/build/CMakeFiles/CMakeOutput.log".
| WARNING: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/bu=
ilds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compile=
r-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/run.do_configure.25988:1 exit 1 fr=
om 'cmake $oecmake_sitefile /disk0/scratch/smonsees/yocto/workspace_2/meta-=
bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/=
nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/git -DCMAKE_INSTALL_PR=
EFIX:PATH=3D/opt/limws/2.4.1/sysroots/x86_64-pokysdk-linux/usr -DCMAKE_INST=
ALL_BINDIR:PATH=3Dbin -DCMAKE_INSTALL_SBINDIR:PATH=3Dbin -DCMAKE_INSTALL_LI=
BEXECDIR:PATH=3Dlibexec -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/opt/limws/2.4.1/=
sysroots/x86_64-pokysdk-linux/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../=
com -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/opt/limws/2.4.1/sysroots/x86_64-p=
okysdk-linux/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib -DCMAKE_INSTALL_INCLUDED=
IR:PATH=3Dinclude -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_=
SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/disk0/scratch/smonsees/yocto/worksp=
ace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pok=
ysdk-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/toolchain.c=
make -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -DCOM=
PILER_RT_STANDALONE_BUILD=3DON -DCOMPILER_RT_DEFAULT_TARGET_TRIPLE=3Dx86_64=
-pokysdk-linux -DCOMPILER_RT_BUILD_XRAY=3DOFF -G Ninja ${PACKAGECONFIG_CONF=
ARGS} -DLLVM_TABLEGEN=3D/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/=
meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nati=
vesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/=
bin/llvm-tblgen -DCLANG_TABLEGEN=3D/disk0/scratch/smonsees/yocto/workspace_=
2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk=
-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-=
native/usr/bin/clang-tblgen -Wno-dev'
| ERROR: Function failed: do_configure (log file is located at
| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
| -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.25988)
ERROR: Task (virtual:nativesdk:/disk0/scratch/smonsees/yocto/workspace_2/po=
ky/../meta-clang/recipes-devtools/clang/compiler-rt_git.bb:do_configure) fa=
iled with exit code '1'
NOTE: Tasks Summary: Attempted 5382 tasks of which 5341 didn't need to be r=
erun and 1 failed.

Thanks,
Steve



--_000_bc9f91c9cfa84f17953e3b5903560a1bbaesystemscom_
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
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am having trouble configuring my SDK to use the me=
ta-clang compiler-rt component properly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How do I configure my build so meta-clang brings in =
compiler-rt and generates the libclang_rt.binutils-x86_64.a library I requi=
re?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I attempt to build in &#8220;compiler-rt&#8221;=
 component I get the CMAKE Error shown below.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">No matter how I try, for example:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">TOOLCHAIN_TARGET_TASK_append =3D &quot;compiler-rt-s=
tatic-dev compiler-rt-dev&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Or:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SDK_EXTRA_TOOLS =3D &quot;&nbsp; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-cmake \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-clang \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-compiler-rt \<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">I get the &quot;cmake&quot; error described below.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(1) What Is this the correct method to add this comp=
onents to my SDK ?<o:p></o:p></p>
<p class=3D"MsoNormal">(2) I do not understand how to resolve this , all ar=
e yocto based components, the only llvm components are pulled in by meta-cl=
ang, what am I expected to edit to resolve ?, and how ? Can someone explain=
 to me what this error is attempting
 to convey, and what I am doing wrong ?<o:p></o:p></p>
<p class=3D"MsoNormal">(3) Is it correct to expect the cmake and clang comp=
onents to work together under yocto?<o:p></o:p></p>
<p class=3D"MsoNormal">(4) I do not want the tools built into my kernel jus=
t the SDK for development, Is there better way to do what I want to do here=
 ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Note: My target and host systems are both x86-64&#82=
30;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And, yes, the &quot;-rtlib-libgcc&quot; works for my=
 basic test code and bypasses requiring compiler-rt, but I would like to un=
derstand what is going on below and be able to build correctly...<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Synopsis of issue:<o:p></o:p></p>
<p class=3D"MsoNormal">-----------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I build my SDK, I setup the following:<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SDKMACHINE =3D &quot;x86_64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SDKIMAGE_FEATURES_append =3D &quot; staticdev-pkgs&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">TOOLCHAIN_HOST_TASK_append =3D &quot;${SDK_EXTRA_TOO=
LS}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SDK_EXTRA_TOOLS =3D &quot;&nbsp; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-cmake \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-clang \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">require conf/distro/include/yocto-uninative.inc<o:p>=
</o:p></p>
<p class=3D"MsoNormal">INHERIT &#43;=3D &quot;uninative&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My SDK builds and installs without issue&#8230;<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Running&nbsp; a very basic example produces the foll=
owing issue:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">09:22 smonsees@yix490016 ~/yocto/test&gt;make hello =
x86_64-poky-linux-clang -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse=
 -msse4.2 -mlittle-endian --sysroot=3D/disk0/scratch/smonsees/yocto/testSDK=
/sysroots/corei7-64-poky-linux&nbsp; -O2 -pipe -g
 -feliminate-unused-debug-types&nbsp; -ansi -c hello.c x86_64-poky-linux-cl=
ang -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-e=
ndian --sysroot=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-=
poky-linux&nbsp; -O2 -pipe -g -feliminate-unused-debug-types&nbsp;
 -ansi hello.o -o hello<o:p></o:p></p>
<p class=3D"MsoNormal">clang-5.0: warning: argument unused during compilati=
on: '-ansi' [-Wunused-command-line-argument]<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_6=
4-pokysdk-linux/usr/bin/x86_64-poky-linux/x86_64-poky-linux-ld: cannot find=
 /disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-linux/usr/li=
b/clang/5.0.1/lib/linux/libclang_rt.builtins-x86_64.a:
 No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal">clang-5.0: error: linker command failed with exit co=
de 1 (use -v to see invocation)<o:p></o:p></p>
<p class=3D"MsoNormal">make: *** [hello] Error 1<o:p></o:p></p>
<p class=3D"MsoNormal">09:22 smonsees@yix490016 ~/yocto/test&gt;<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The file in question does not exist on my system. <o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I add &quot;nativesdk-compiler-rt&quot; like so:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SDK_EXTRA_TOOLS =3D &quot;&nbsp; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-cmake \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-clang \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; nativesdk-compiler-rt \<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I get the following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_configure<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| -- The C compiler identification is GNU 7.3.0<o:p>=
</o:p></p>
<p class=3D"MsoNormal">| -- The CXX compiler identification is GNU 7.3.0<o:=
p></o:p></p>
<p class=3D"MsoNormal">| -- The ASM compiler identification is GNU<o:p></o:=
p></p>
<p class=3D"MsoNormal">| -- Found assembler: <o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae=
/meta-limws/builds/s<o:p></o:p></p>
<p class=3D"MsoNormal">| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-compiler<o:p></o:p></p>
<p class=3D"MsoNormal">| -rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-=
sysroot-native/usr/bin/x86_6<o:p></o:p></p>
<p class=3D"MsoNormal">| 4-pokysdk-linux/x86_64-pokysdk-linux-gcc<o:p></o:p=
></p>
<p class=3D"MsoNormal">| -- Check for working C compiler: <o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae=
/meta-limws/builds/s<o:p></o:p></p>
<p class=3D"MsoNormal">| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-compiler<o:p></o:p></p>
<p class=3D"MsoNormal">| -rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-=
sysroot-native/usr/bin/x86_6<o:p></o:p></p>
<p class=3D"MsoNormal">| 4-pokysdk-linux/x86_64-pokysdk-linux-gcc<o:p></o:p=
></p>
<p class=3D"MsoNormal">| -- Check for working C compiler: <o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae=
/meta-limws/builds/s<o:p></o:p></p>
<p class=3D"MsoNormal">| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-compiler<o:p></o:p></p>
<p class=3D"MsoNormal">| -rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-=
sysroot-native/usr/bin/x86_6<o:p></o:p></p>
<p class=3D"MsoNormal">| 4-pokysdk-linux/x86_64-pokysdk-linux-gcc -- works<=
o:p></o:p></p>
<p class=3D"MsoNormal">| -- Detecting C compiler ABI info<o:p></o:p></p>
<p class=3D"MsoNormal">| -- Detecting C compiler ABI info - done<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| -- Detecting C compile features<o:p></o:p></p>
<p class=3D"MsoNormal">| -- Detecting C compile features - done<o:p></o:p><=
/p>
<p class=3D"MsoNormal">| -- Check for working CXX compiler: <o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae=
/meta-limws/builds/s<o:p></o:p></p>
<p class=3D"MsoNormal">| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-compiler<o:p></o:p></p>
<p class=3D"MsoNormal">| -rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-=
sysroot-native/usr/bin/x86_6<o:p></o:p></p>
<p class=3D"MsoNormal">| 4-pokysdk-linux/x86_64-pokysdk-linux-g&#43;&#43;<o=
:p></o:p></p>
<p class=3D"MsoNormal">| -- Check for working CXX compiler: <o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae=
/meta-limws/builds/s<o:p></o:p></p>
<p class=3D"MsoNormal">| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-compiler<o:p></o:p></p>
<p class=3D"MsoNormal">| -rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-=
sysroot-native/usr/bin/x86_6<o:p></o:p></p>
<p class=3D"MsoNormal">| 4-pokysdk-linux/x86_64-pokysdk-linux-g&#43;&#43; -=
- works<o:p></o:p></p>
<p class=3D"MsoNormal">| -- Detecting CXX compiler ABI info<o:p></o:p></p>
<p class=3D"MsoNormal">| -- Detecting CXX compiler ABI info - done<o:p></o:=
p></p>
<p class=3D"MsoNormal">| -- Detecting CXX compile features<o:p></o:p></p>
<p class=3D"MsoNormal">| -- Detecting CXX compile features - done<o:p></o:p=
></p>
<p class=3D"MsoNormal">| -- Looking for unwind.h<o:p></o:p></p>
<p class=3D"MsoNormal">| -- Looking for unwind.h - found<o:p></o:p></p>
<p class=3D"MsoNormal">| CMake Error at CMakeLists.txt:38 (find_package):<o=
:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; By not providing &quot;FindLLVM.cmake&=
quot; in CMAKE_MODULE_PATH this project has<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; asked CMake to find a package configur=
ation file provided by &quot;LLVM&quot;, but<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; CMake did not find one.<o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; Could not find a package configuration=
 file provided by &quot;LLVM&quot; with any of<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; the following names:<o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; LLVMConfig.cmake<o:p></o:p=
></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; llvm-config.cmake<o:p></o:=
p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; Add the installation prefix of &quot;L=
LVM&quot; to CMAKE_PREFIX_PATH or set<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; &quot;LLVM_DIR&quot; to a directory co=
ntaining one of the above files.&nbsp; If &quot;LLVM&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; provides a separate development packag=
e or SDK, be sure it has been<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; installed.<o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">| -- Configuring incomplete, errors occurred!<o:p></=
o:p></p>
<p class=3D"MsoNormal">| See also &quot;/disk0/scratch/smonsees/yocto/works=
pace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-po=
kysdk-linux/nativesdk-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/bu=
ild/CMakeFiles/CMakeOutput.log&quot;.<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: /disk0/scratch/smonsees/yocto/workspace_2=
/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-=
linux/nativesdk-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/temp/run=
.do_configure.25988:1 exit 1 from 'cmake $oecmake_sitefile
 /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-=
default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1=
&#43;gitAUTOINC&#43;4b38c4038a-r0/git -DCMAKE_INSTALL_PREFIX:PATH=3D/opt/li=
mws/2.4.1/sysroots/x86_64-pokysdk-linux/usr
 -DCMAKE_INSTALL_BINDIR:PATH=3Dbin -DCMAKE_INSTALL_SBINDIR:PATH=3Dbin -DCMA=
KE_INSTALL_LIBEXECDIR:PATH=3Dlibexec -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/opt=
/limws/2.4.1/sysroots/x86_64-pokysdk-linux/etc -DCMAKE_INSTALL_SHAREDSTATED=
IR:PATH=3D../com -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/opt/limws/2.4.1/sysr=
oots/x86_64-pokysdk-linux/var
 -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclud=
e -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0 -D=
CMAKE_TOOLCHAIN_FILE=3D/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/m=
eta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativ=
esdk-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/toolchain.cmake
 -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -DCOMPILE=
R_RT_STANDALONE_BUILD=3DON -DCOMPILER_RT_DEFAULT_TARGET_TRIPLE=3Dx86_64-pok=
ysdk-linux -DCOMPILER_RT_BUILD_XRAY=3DOFF -G Ninja ${PACKAGECONFIG_CONFARGS=
} -DLLVM_TABLEGEN=3D/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta=
-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesd=
k-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-sysroot-native/=
usr/bin/llvm-tblgen
 -DCLANG_TABLEGEN=3D/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta=
-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesd=
k-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-sysroot-native/=
usr/bin/clang-tblgen -Wno-dev'<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_configure (log file is =
located at
<o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_2/meta-bae=
/meta-limws/builds/s<o:p></o:p></p>
<p class=3D"MsoNormal">| bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-compiler<o:p></o:p></p>
<p class=3D"MsoNormal">| -rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/temp/lo=
g.do_configure.25988)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (virtual:nativesdk:/disk0/scratch/smonse=
es/yocto/workspace_2/poky/../meta-clang/recipes-devtools/clang/compiler-rt_=
git.bb:do_configure) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 5382 tasks of which 5=
341 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_bc9f91c9cfa84f17953e3b5903560a1bbaesystemscom_--
