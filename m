Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.196803.1598279937715814055
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 07:38:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=ZRYh7kc/;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1598279937; x=1755959937;
  h=from:to:subject:date:mime-version;
  bh=9GST68FPx0M8CMrYXqDgcBNYSnV6SsoQu5ArBNXuBUI=;
  b=ZRYh7kc/Ltvvi7O1HuNWrwQrypITM+b6vZaBrd44aKAIBKFuBNBlu/k9
   FCcSwlZ+LzP+S/i2kNTSq8+XnZSqaemlOyvgTAbdS/5nf9cs1KXcPR0gx
   BNiCP6WD0fbzmPa2sFOBAtRiwFPTwrG+aL559mhiGHido6t2XqygAmMdR
   k=;
IronPort-PHdr: =?us-ascii?q?9a23=3Ac4rtwxJY+6wrLuVAM9mcpTZWNBhigK39O0sv0rFi?=
 =?us-ascii?q?tYgfIvjxwZ3uMQTl6Ol3ixeRBMOHsqwC0rOG+PuwEUU7or+5+EgYd5JNUxJXwe?=
 =?us-ascii?q?43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQviPgRp?=
 =?us-ascii?q?OOv1BpTSj8Oq3Oyu5pHfeQpFiCe8bL9oMRm6sAbcusYYjIZhN6081gbHrnxUdu?=
 =?us-ascii?q?pM2GhmP0iTnxHy5sex+J5s7SFdsO8/+sBDTKv3Yb02QaRXAzo6PW814tbrtQTY?=
 =?us-ascii?q?QguU+nQcSGQWnQFWDAXD8Rr3Q43+sir+tup6xSmaIcj7Rq06VDi+86tmTgLjhS?=
 =?us-ascii?q?EaPDA77W7XkNR9gqJFrhy8uxxxzY3aYICJO/VxZa7SZ88WRWhbU8pNSyBNHIWx?=
 =?us-ascii?q?ZJYPAeobOuZYqpHwq1UJoxu5AwmsH/3gxSFThnPuwKY0zvghHh/Y3AM+GdIFrW?=
 =?us-ascii?q?rZp8jxOKgcTO65yafExijEYvNNxTfy9pbIfQ4nof2WWLJwdszRyVIxGAzblVWd?=
 =?us-ascii?q?spfqMCmL2eQWs2mb9PZgWvyqi248sQ1+vj+vxsI1h4TPm4kaxUzK+z9jz4YpOd?=
 =?us-ascii?q?23VlR7Ydi8HZVeuSyXK4p7T8EjTm12pSo31L4LtJ6/cSUFx5kr2hDRZvyIfYSV?=
 =?us-ascii?q?5h/uVuacLDh5iX54Zr+ygxW//Eu9x+HhWce51ktBoCldktTUq3wBywbf58aFR/?=
 =?us-ascii?q?dn40us3TiC2xrS5+xFOUw4iLbXJ4Quz7M/jJYetV7PEyz0lUjwkaSYbF8r+vKy?=
 =?us-ascii?q?5OTierjmo5icOJJqhQzmKaQun9C/Afw/MggTQ2iX4eS826Pn/U3+WLhKiP02kq?=
 =?us-ascii?q?/Dv5DfPsQWpa60DxNJ3oo+8Rq/CS2p3M4DknYdMl1FYxKGj5P1O17QJfD4Fu2z?=
 =?us-ascii?q?jEirkDdu3/zGP7vhDYvRLnXbjbvtYaxx5kBexQYp0NxS45xZBqsALf/yQkPxsc?=
 =?us-ascii?q?bXDh49Mwy62ebnD9B925sFWWKTHKCZLr3dsVmS6uIqJOmMYpQVtyjjJPg+/PPh?=
 =?us-ascii?q?lmU2lkEGfaipxpsXdG63HvF9I0mDfXXshdIBHX8QvgUiVOzqlEGCUTlLaneyWK?=
 =?us-ascii?q?Iz+i07CIW9AIfHR4Ctm6CB3DyhEpxWYWBJFkyMEXDwd4WeXPcMajydLdN9kjAe?=
 =?us-ascii?q?UrihUYAhhlmSs1qw2r1sMu38/iwDqYmlxd9+++rLjxYw+DdoScOH3CvFG3BzlX?=
 =?us-ascii?q?8Pbzs3x7xk5116wUuEybJ/gfFTCZpU/fwfASkgMpuJhcl9Dcv/VxmFNuyVRUir?=
 =?us-ascii?q?RJ2NSXEMdZN7i4sVf0tjFtPkixfFxCenGJcfnrGQFYco/6fHmXP2IpAumD79yK?=
 =?us-ascii?q?A9ggx+EYN0Pmq8i/sn+g=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D9BADvz0Nf/0LBJQpfgQmCbYF3gT2xf?=
 =?us-ascii?q?QsBAQEBAQEBAQEHAS8EAQGHEyU4EwIQAQEGAQEBAQEGBAGGSQuCNyKDTV4BQAE?=
 =?us-ascii?q?/JgEEG4MfgX6xVYE0hVKEdQkBgS6Ofz6BEY4CBI9figqDIJk2BwOCYwSaFyqgM?=
 =?us-ascii?q?pJDmx+EKAIEAgQFAhWBa4F6cIM6TxcCDY4rF44kgSsCBgoBAQMJkAaBEQEB?=
X-IPAS-Result: =?us-ascii?q?A2D9BADvz0Nf/0LBJQpfgQmCbYF3gT2xfQsBAQEBAQEBAQE?=
 =?us-ascii?q?HAS8EAQGHEyU4EwIQAQEGAQEBAQEGBAGGSQuCNyKDTV4BQAE/JgEEG4MfgX6xV?=
 =?us-ascii?q?YE0hVKEdQkBgS6Ofz6BEY4CBI9figqDIJk2BwOCYwSaFyqgMpJDmx+EKAIEAgQ?=
 =?us-ascii?q?FAhWBa4F6cIM6TxcCDY4rF44kgSsCBgoBAQMJkAaBEQEB?=
X-IronPort-AV: E=Sophos;i="5.76,349,1592870400"; 
   d="scan'208,217";a="438678902"
X-IronPort-AV: E=Sophos;i="5.76,349,1592870400"; 
   d="scan'208,217";a="216872097"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto standard SDK/cmake/ and meta-clang build issue
Thread-Topic: Yocto standard SDK/cmake/ and meta-clang build issue
Thread-Index: AdZ6IfO2Uwpejy3qT9io6cQTMhdwIg==
Date: Mon, 24 Aug 2020 14:38:54 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.162E3B22E7C10FBE.21931@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c60e2e42d3264254956fac41d02db1d1baesystemscom_"

--_000_c60e2e42d3264254956fac41d02db1d1baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am having trouble with configuring my SDK for meta-clang...

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


(1)    Is this the correct method to add these components to my SDK ?

My SDK builds and installs without issue...

Running  a very basic example produces the following issue:

09:22 smonsees@yix490016 ~/yocto/test>make hello
x86_64-poky-linux-clang -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse=
 -msse4.2 -mlittle-endian --sysroot=3D/disk0/scratch/smonsees/yocto/testSDK=
/sysroots/corei7-64-poky-linux  -O2 -pipe -g -feliminate-unused-debug-types=
  -ansi -c hello.c
x86_64-poky-linux-clang -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse=
 -msse4.2 -mlittle-endian --sysroot=3D/disk0/scratch/smonsees/yocto/testSDK=
/sysroots/corei7-64-poky-linux  -O2 -pipe -g -feliminate-unused-debug-types=
  -ansi hello.o -o hello
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
| -- Found assembler: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/me=
ta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bi=
n/x86_64-pokysdk-linux/x86_64-pokysdk-linux-gcc
| -- Check for working C compiler: /disk0/scratch/smonsees/yocto/workspace_=
2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk=
-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-=
native/usr/bin/x86_64-pokysdk-linux/x86_64-pokysdk-linux-gcc
| -- Check for working C compiler: /disk0/scratch/smonsees/yocto/workspace_=
2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk=
-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-=
native/usr/bin/x86_64-pokysdk-linux/x86_64-pokysdk-linux-gcc -- works
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Check for working CXX compiler: /disk0/scratch/smonsees/yocto/workspac=
e_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokys=
dk-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroo=
t-native/usr/bin/x86_64-pokysdk-linux/x86_64-pokysdk-linux-g++
| -- Check for working CXX compiler: /disk0/scratch/smonsees/yocto/workspac=
e_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokys=
dk-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroo=
t-native/usr/bin/x86_64-pokysdk-linux/x86_64-pokysdk-linux-g++ -- works
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
| ERROR: Function failed: do_configure (log file is located at /disk0/scrat=
ch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/w=
ork/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4=
b38c4038a-r0/temp/log.do_configure.25988)
ERROR: Task (virtual:nativesdk:/disk0/scratch/smonsees/yocto/workspace_2/po=
ky/../meta-clang/recipes-devtools/clang/compiler-rt_git.bb:do_configure) fa=
iled with exit code '1'
NOTE: Tasks Summary: Attempted 5382 tasks of which 5341 didn't need to be r=
erun and 1 failed.


(2)    I do not understand how to resolve this , all are yocto based compon=
ents, the only llvm components are pulled in by meta-clang, what am I expec=
ted to edit to resolve ?, and how ? Can someone explain to me what this err=
or is attempting to convey, and what I am doing wrong ?

(3)    Is it correct to expect the cmake and clang components to work toget=
her under yocto?

(4)    I do not want the tools built into my kernel just the SDK for develo=
pment, Is there better way to do what I want to do here ?

Thanks,
Steve


--_000_c60e2e42d3264254956fac41d02db1d1baesystemscom_
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:641815094;
	mso-list-type:hybrid;
	mso-list-template-ids:1830955766 1625594354 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I am having trouble with configuring =
my SDK for meta-clang&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">When I build my SDK, I setup the foll=
owing:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">SDKMACHINE =3D &quot;x86_64&quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">SDKIMAGE_FEATURES_append =3D &quot; s=
taticdev-pkgs&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">TOOLCHAIN_HOST_TASK_append =3D &quot;=
${SDK_EXTRA_TOOLS}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">SDK_EXTRA_TOOLS =3D &quot;&nbsp; \<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;&nbsp;&nbsp; nativesdk-cmake \<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;&nbsp;&nbsp; nativesdk-clang \<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">require conf/distro/include/yocto-uni=
native.inc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">INHERIT &#43;=3D &quot;uninative&quot=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1=
F4E79;mso-style-textfill-fill-alpha:100.0%"><span style=3D"mso-list:Ignore"=
>(1)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbs=
p;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:=
#1F4E79;mso-style-textfill-fill-alpha:100.0%">Is this the correct method to=
 add these components to my SDK ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">My SDK builds and installs without is=
sue&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Running &nbsp;a very basic example pr=
oduces the following issue:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">09:22 smonsees@yix490016 ~/yocto/test=
&gt;make hello<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">x86_64-poky-linux-clang -m64 -march=
=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=
=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-linux&nbsp=
;
 -O2 -pipe -g -feliminate-unused-debug-types&nbsp; -ansi -c hello.c<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">x86_64-poky-linux-clang -m64 -march=
=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=
=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-linux&nbsp=
;
 -O2 -pipe -g -feliminate-unused-debug-types&nbsp; -ansi hello.o -o hello<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">clang-5.0: warning: argument unused d=
uring compilation: '-ansi' [-Wunused-command-line-argument]<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/testSDK=
/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/x86_64-poky-linux-=
ld: cannot find /disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-po=
ky-linux/usr/lib/clang/5.0.1/lib/linux/</span><b><span style=3D"font-size:1=
1.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:red">libclang_rt.bui=
ltins-x86_64.a:
 No such file or directory<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:red">clang-5.0: error: linker command faile=
d with exit code 1 (use -v to see invocation)<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:red">make: *** [hello] Error 1<o:p></o:p></=
span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">09:22 smonsees@yix490016 ~/yocto/test=
&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The file in question does not exist o=
n my system.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">If I add &quot;nativesdk-compiler-rt&=
quot; like so:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">SDK_EXTRA_TOOLS =3D &quot;&nbsp; \<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">&nbsp;&nbsp;&nbsp; nativesdk-cmake \<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">&nbsp;&nbsp;&nbsp; nativesdk-clang \<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">&nbsp;&nbsp;&nbsp; nativesdk-compiler=
-rt \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">I get the following error:<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">Log data follows:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| DEBUG: Executing shell function do_=
configure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- The C compiler identification is=
 GNU 7.3.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- The CXX compiler identification =
is GNU 7.3.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- The ASM compiler identification =
is GNU<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Found assembler: /disk0/scratch/=
smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work=
/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1&#43;gitAUTOINC&=
#43;4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-pokysdk-linux/x86_64=
-pokysdk-linux-gcc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Check for working C compiler: /d=
isk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-def=
ault/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1&#4=
3;gitAUTOINC&#43;4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-pokysdk=
-linux/x86_64-pokysdk-linux-gcc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Check for working C compiler: /d=
isk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-def=
ault/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1&#4=
3;gitAUTOINC&#43;4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-pokysdk=
-linux/x86_64-pokysdk-linux-gcc
 -- works<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting C compiler ABI info<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting C compiler ABI info - =
done<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting C compile features<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting C compile features - d=
one<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Check for working CXX compiler: =
/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-d=
efault/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1&=
#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-pokys=
dk-linux/x86_64-pokysdk-linux-g&#43;&#43;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Check for working CXX compiler: =
/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-d=
efault/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1&=
#43;gitAUTOINC&#43;4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-pokys=
dk-linux/x86_64-pokysdk-linux-g&#43;&#43;
 -- works<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting CXX compiler ABI info<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting CXX compiler ABI info =
- done<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting CXX compile features<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Detecting CXX compile features -=
 done<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Looking for unwind.h<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Looking for unwind.h - found<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:red">| CMake Error at CMakeLists.txt:38 (find_=
package):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:red">|&nbsp;&nbsp; By not providing &quot;Find=
LLVM.cmake&quot; in CMAKE_MODULE_PATH this project has<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:red">|&nbsp;&nbsp; asked CMake to find a packa=
ge configuration file provided by &quot;LLVM&quot;, but<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:red">|&nbsp;&nbsp; CMake did not find one.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:red">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|&nbsp;&nbsp; Could not find a packag=
e configuration file provided by &quot;LLVM&quot; with any of<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|&nbsp;&nbsp; the following names:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|&nbsp;&nbsp;&nbsp;&nbsp; LLVMConfig.=
cmake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|&nbsp;&nbsp;&nbsp;&nbsp; llvm-config=
.cmake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|&nbsp;&nbsp; Add the installation pr=
efix of &quot;LLVM&quot; to CMAKE_PREFIX_PATH or set<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|&nbsp;&nbsp; &quot;LLVM_DIR&quot; to=
 a directory containing one of the above files.&nbsp; If &quot;LLVM&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| &nbsp;&nbsp;provides a separate dev=
elopment package or SDK, be sure it has been<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|&nbsp;&nbsp; installed.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| -- Configuring incomplete, errors o=
ccurred!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| See also &quot;/disk0/scratch/smons=
ees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_=
64-nativesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4=
b38c4038a-r0/build/CMakeFiles/CMakeOutput.log&quot;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| WARNING: /disk0/scratch/smonsees/yo=
cto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nat=
ivesdk-pokysdk-linux/nativesdk-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c40=
38a-r0/temp/run.do_configure.25988:1
 exit 1 from 'cmake $oecmake_sitefile /disk0/scratch/smonsees/yocto/workspa=
ce_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-poky=
sdk-linux/nativesdk-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/git =
-DCMAKE_INSTALL_PREFIX:PATH=3D/opt/limws/2.4.1/sysroots/x86_64-pokysdk-linu=
x/usr
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
usr/bin/clang-tblgen -Wno-dev'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">| ERROR: Function failed: do_configur=
e (log file is located at /disk0/scratch/smonsees/yocto/workspace_2/meta-ba=
e/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/na=
tivesdk-compiler-rt/5.0.1&#43;gitAUTOINC&#43;4b38c4038a-r0/temp/log.do_conf=
igure.25988)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">ERROR: Task (virtual:nativesdk:/disk0=
/scratch/smonsees/yocto/workspace_2/poky/../meta-clang/recipes-devtools/cla=
ng/compiler-rt_git.bb:do_configure)
 failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">NOTE: Tasks Summary: Attempted 5382 t=
asks of which 5341 didn't need to be rerun and
 1 failed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1=
F4E79;mso-style-textfill-fill-alpha:100.0%"><span style=3D"mso-list:Ignore"=
>(2)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbs=
p;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:=
#1F4E79;mso-style-textfill-fill-alpha:100.0%">I do not understand how to re=
solve this , all are yocto based components,
 the only llvm components are pulled in by meta-clang, what am I expected t=
o edit to resolve ?, and how ? Can someone explain to me what this error is=
 attempting to convey, and what I am doing wrong ?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1=
F4E79;mso-style-textfill-fill-alpha:100.0%"><span style=3D"mso-list:Ignore"=
>(3)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbs=
p;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:=
#1F4E79;mso-style-textfill-fill-alpha:100.0%">Is it correct to expect the c=
make and clang components to work together under
 yocto?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1=
F4E79;mso-style-textfill-fill-alpha:100.0%"><span style=3D"mso-list:Ignore"=
>(4)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbs=
p;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:=
#1F4E79;mso-style-textfill-fill-alpha:100.0%">I do not want the tools built=
 into my kernel just the SDK for development,
 Is there better way to do what I want to do here ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F4E79;mso-style-textfill-fill-color:#1F4E79;=
mso-style-textfill-fill-alpha:100.0%">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_c60e2e42d3264254956fac41d02db1d1baesystemscom_--
