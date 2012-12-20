Return-Path: <munoz0raul@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 939A5E0045D
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 03:43:33 -0800 (PST)
Received: by mail-ia0-f176.google.com with SMTP id y26so2737075iab.7
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 03:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Xw/bn5/Mjdnky2a6jPJdFEhWJBQZld9fFFu/l+pvQWc=;
	b=RoUAzpPYD8WlDDhNiIpBL5/EyspRk4uNRIGO/ScG92UaN1lBE/aRyFFZ6YWjGVYC81
	ohmZh4IFJSe7Ss5NoX/JbSW5LqT/DpDcsfPqinCohMCX+EC52OvTrqGPiKSqFTLHTr/W
	ksvi/otcz4DmHwYnPrx7YNXbWyMi+xOJX9eV77yKvs7fCSkDJuG76KjvSybIj+PLWJ5L
	C+8p5DV7dgYxwB3NH6A+jhQXpF3S8W8g+fsNTd6sARRlterycrtlffdAmpaKWhO8QV5u
	7XiI1WsimR/4aplccjUkDFbZdCXPLOotmF43rZrjm8w17x7WzwVYl/mk4EosQb/OsPEe
	nESg==
MIME-Version: 1.0
Received: by 10.50.187.165 with SMTP id ft5mr10221847igc.12.1356003812764;
	Thu, 20 Dec 2012 03:43:32 -0800 (PST)
Received: by 10.64.147.40 with HTTP; Thu, 20 Dec 2012 03:43:32 -0800 (PST)
In-Reply-To: <3911329.LVxahrYG8d@helios>
References: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
	<CANmVirhdCb55A8h=rQOU-2EanWwmXUyF8nV5n7P+ay2mAxnyfQ@mail.gmail.com>
	<CANmVirgqh54ir776cAQtHPX7RA9nawas4tztjCkLyJnaermsdA@mail.gmail.com>
	<3911329.LVxahrYG8d@helios>
Date: Thu, 20 Dec 2012 09:43:32 -0200
Message-ID: <CANmVirieZvD5BebrVyur7UGhBPQ90zFg0DkWjSjbK19MFWtK3g@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use JRE (Java Runtime) in Yocto Projects
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
X-List-Received-Date: Thu, 20 Dec 2012 11:43:33 -0000
Content-Type: multipart/alternative; boundary=14dae934102792eba804d1473d03

--14dae934102792eba804d1473d03
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Paul, Thanks for all help.

I did what you told, I created a new project with all metas in danny branch=
:
meta-fsl-arm$ git branch
* local/origin/danny
  master

meta-openembedded$ git branch
* local/origin/danny
  master

poky$ git branch
* local/origin/danny
  master

meta-java$ git branch
* master

In Local config I changed just the machine for
MACHINE ?=3D "imx28evk"

And added the lines needed for java

PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"

PREFERRED_VERSION_openjdk-6-jre =3D "6b24-1.11.5"
PREFERRED_VERSION_icedtea6-native =3D "1.8.11"

I have changed my bblayes for:

BBLAYERS ?=3D " \
  /media/dados/prjs/imx-JAVA/philinux/poky/meta \
  /media/dados/prjs/imx-JAVA/philinux/poky/meta-yocto \
  /media/dados/prjs/imx-JAVA/philinux/poky/meta-yocto-bsp \
  /media/dados/prjs/imx-JAVA/philinux/meta-fsl-arm \
  /media/dados/prjs/imx-JAVA/philinux/meta-openembedded/meta-oe \
  /media/dados/prjs/imx-JAVA/philinux/meta-java \
  "

Now I think that every things  work better, but I get a error that I dont
know how to solve:


raul@phi04:/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java$ bitbake
openjdk-6-jre
WARNING: Unable to get checksum for barebox SRC_URI entry defconfig: file
could not be found                                          | ETA:  00:00:2=
5
Parsing recipes: 100%
|##########################################################################=
#####################################|
Time: 00:00:48
Parsing of 1320 .bb files complete (0 cached, 1320 parsed). 1706 targets,
70 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "imx28evk"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta
meta-yocto
meta-yocto-bsp    =3D
"local/origin/danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0"
meta-fsl-arm      =3D
"local/origin/danny:fdc178fb22b3370d3a2cde66b6a4171627dd4721"
meta-oe           =3D
"local/origin/danny:f026e96295da101bb715858bc8705de7e4a33992"
meta-java         =3D "master:2eb6d2643e3833657cfd278b0502945df99ee18a"

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
NOTE: multiple providers are available for runtime java2-runtime
(openjdk-6-jre, jamvm, openjdk-7-jre)
NOTE: consider defining a PREFERRED_PROVIDER entry to match java2-runtime
NOTE: multiple providers are available for runtime java2-vm (openjdk-6-jre,
openjdk-7-jre)
NOTE: consider defining a PREFERRED_PROVIDER entry to match java2-vm
NOTE: multiple providers are available for jpeg-native (jpeg-native,
libjpeg-turbo-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_compile (see
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.do_compile.23542
for further information)
ERROR: Logfile of failure stored in:
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.do_compile.23542
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
|
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-H/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-=
poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
-B/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-=
poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
--check-build-system CMakeFiles/Makefile.cmake 0
|
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-E cmake_progress_start
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles/progress.marks
| make -f CMakeFiles/Makefile2 all
| make[1]: Entering directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make -f lib/System/CMakeFiles/LLVMSystem.dir/build.make
lib/System/CMakeFiles/LLVMSystem.dir/depend
| make -f lib/Transforms/Hello/CMakeFiles/LLVMHello.dir/build.make
lib/Transforms/Hello/CMakeFiles/LLVMHello.dir/depend
| make -f utils/count/CMakeFiles/count.dir/build.make
utils/count/CMakeFiles/count.dir/depend
| make -f tools/bugpoint-passes/CMakeFiles/BugpointPasses.dir/build.make
tools/bugpoint-passes/CMakeFiles/BugpointPasses.dir/depend
| make[2]: Entering directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| cd
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
&&
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-E cmake_depends "Unix Makefiles"
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/System
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/System
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/System/CMakeFiles/LLVM=
System.dir/DependInfo.cmake
--color=3D
| make[2]: Entering directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| cd
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
&&
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-E cmake_depends "Unix Makefiles"
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Transforms/Hello
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/Transforms/Hello
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/Transforms/Hello/CMake=
Files/LLVMHello.dir/DependInfo.cmake
--color=3D
| make[2]: Entering directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| cd
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
&&
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-E cmake_depends "Unix Makefiles"
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/tools/bugpoint-passes
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint-passes
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint-passes/CMak=
eFiles/BugpointPasses.dir/DependInfo.cmake
--color=3D
| make[2]: Leaving directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'


...
...
...



/CMakeFiles/EnhancedDisassembly.dir/DependInfo.cmake --color=3D
| make[2]: Entering directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| cd
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
&&
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-E cmake_depends "Unix Makefiles"
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/tools/bugpoint
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint/CMakeFiles/=
bugpoint.dir/DependInfo.cmake
--color=3D
| make[2]: Leaving directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make -f tools/edis/CMakeFiles/EnhancedDisassembly.dir/build.make
tools/edis/CMakeFiles/EnhancedDisassembly.dir/build
| make[2]: Entering directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make[2]: Nothing to be done for
`tools/edis/CMakeFiles/EnhancedDisassembly.dir/build'.
| make[2]: Leaving directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
|
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-E cmake_progress_report
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles
| [ 98%] Built target EnhancedDisassembly
| make[2]: Leaving directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make -f tools/bugpoint/CMakeFiles/bugpoint.dir/build.make
tools/bugpoint/CMakeFiles/bugpoint.dir/build
| make[2]: Entering directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make[2]: Nothing to be done for
`tools/bugpoint/CMakeFiles/bugpoint.dir/build'.
| make[2]: Leaving directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
|
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-l=
inux/usr/bin/cmake
-E cmake_progress_report
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles
 88
| [100%] Built target bugpoint
| ../../lib/libLLVMARMCodeGen.a(ARMISelLowering.cpp.o): In function
`llvm::ARMTargetLowering::LowerCall(llvm::SDValue, llvm::SDValue,
llvm::CallingConv::ID, bool, bool&,
llvm::SmallVectorImpl<llvm::ISD::OutputArg> const&,
llvm::SmallVectorImpl<llvm::SDValue> const&,
llvm::SmallVectorImpl<llvm::ISD::InputArg> const&, llvm::DebugLoc,
llvm::SelectionDAG&, llvm::SmallVectorImpl<llvm::SDValue>&) const':
|
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/ARMISelLowering.c=
pp:1293:
undefined reference to `getPointerToNamedFunctionOrNull'
| ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o): In function
`llvm::ARMInstPrinter::~ARMInstPrinter()':
|
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/AsmPrinter/ARMIns=
tPrinter.h:22:
undefined reference to `llvm::MCInstPrinter::~MCInstPrinter()'
| ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o): In function
`~ARMInstPrinter':
|
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/AsmPrinter/ARMIns=
tPrinter.h:22:
undefined reference to `llvm::MCInstPrinter::~MCInstPrinter()'
| ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.data.rel.ro+0x8)=
:
undefined reference to `typeinfo for llvm::MCInstPrinter'
| ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.data.rel.ro+0x24=
):
undefined reference to `llvm::MCInstPrinter::getOpcodeName(unsigned int)
const'
| collect2: error: ld returned 1 exit status
| make[2]: *** [bin/llvm-mc] Error 1
| make[2]: Leaving directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make[1]: *** [tools/llvm-mc/CMakeFiles/llvm-mc.dir/all] Error 2
| make[1]: Leaving directory
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see
/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po=
ky-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.do_compile.23542
for further information)
ERROR: Task 353
(/media/dados/prjs/imx-JAVA/philinux/meta-java/recipes-core/llvm/
llvm2.8_2.8.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1646 tasks of which 1634 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /media/dados/prjs/imx-JAVA/philinux/meta-java/recipes-core/llvm/
llvm2.8_2.8.bb, do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Some one can Help me?

I thing that there is some thing with this:

| ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.data.rel.ro+0x8)=
:
undefined reference to `typeinfo for llvm::MCInstPrinter'
| ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.data.rel.ro+0x24=
):
undefined reference to `llvm::MCInstPrinter::getOpcodeName(unsigned int)
const'



2012/12/19 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Wednesday 19 December 2012 15:31:42 Raul Rosetto Munoz wrote:
> > raul@phi04:/home/prjs/poky$ git branch
> > * local/origin/denzil
>
> There doesn't seem to be a denzil branch for meta-java and it's likely th=
e
> error you're receiving is because the master branch of meta-java is
> incompatible with the denzil release. I would suggest updating to the dan=
ny
> release, or alternatively you'll need to modify meta-java to be compatibl=
e
> with denzil (i.e. you'll have to match indenting in python functions such
> as
> populate_packages_prepend).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



--=20
*Raul Rosetto Mu=F1oz*

--14dae934102792eba804d1473d03
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Paul, Thanks for all help.</div><div><br></div><div>I=
 did what you told, I created a new project with all metas in danny branch:=
</div><div><font face=3D"&#39;courier new&#39;, monospace">meta-fsl-arm$ gi=
t branch=A0</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">* local/origin/danny</=
font></div><div><font face=3D"&#39;courier new&#39;, monospace">=A0 master<=
/font></div><div><font face=3D"&#39;courier new&#39;, monospace"><br></font=
></div>
<div><font face=3D"&#39;courier new&#39;, monospace">meta-openembedded$ git=
 branch=A0</font></div><div><font face=3D"&#39;courier new&#39;, monospace"=
>* local/origin/danny</font></div><div><font face=3D"&#39;courier new&#39;,=
 monospace">=A0 master</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace">poky$ git branch=A0</font><=
/div><div><font face=3D"&#39;courier new&#39;, monospace">* local/origin/da=
nny</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">=A0 master</font></div=
><div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div=
><font face=3D"&#39;courier new&#39;, monospace">meta-java$ git branch=A0</=
font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">* master</font></div><=
div><br></div><div>In Local config I changed just the machine for</div><div=
><font face=3D"&#39;courier new&#39;, monospace">MACHINE ?=3D &quot;imx28ev=
k&quot;</font></div>
<div><br></div><div>And added the lines needed for java</div><div><br></div=
><div><font face=3D"&#39;courier new&#39;, monospace">PREFERRED_PROVIDER_vi=
rtual/java-native =3D &quot;jamvm-native&quot;</font></div><div><font face=
=3D"&#39;courier new&#39;, monospace">PREFERRED_PROVIDER_virtual/javac-nati=
ve =3D &quot;ecj-bootstrap-native&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace">PREFERRED_VERSION_openjdk-6=
-jre =3D &quot;6b24-1.11.5&quot;</font></div><div><font face=3D"&#39;courie=
r new&#39;, monospace">PREFERRED_VERSION_icedtea6-native =3D &quot;1.8.11&q=
uot;</font></div>
<div><br></div><div>I have changed my bblayes for:</div><div><br></div><div=
><font face=3D"&#39;courier new&#39;, monospace">BBLAYERS ?=3D &quot; \</fo=
nt></div><div><font face=3D"&#39;courier new&#39;, monospace">=A0 /media/da=
dos/prjs/imx-JAVA/philinux/poky/meta \</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">=A0 /media/dados/prjs/=
imx-JAVA/philinux/poky/meta-yocto \</font></div><div><font face=3D"&#39;cou=
rier new&#39;, monospace">=A0 /media/dados/prjs/imx-JAVA/philinux/poky/meta=
-yocto-bsp \</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">=A0 /media/dados/prjs/=
imx-JAVA/philinux/meta-fsl-arm \</font></div><div><font face=3D"&#39;courie=
r new&#39;, monospace">=A0 /media/dados/prjs/imx-JAVA/philinux/meta-openemb=
edded/meta-oe \</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">=A0 /media/dados/prjs/=
imx-JAVA/philinux/meta-java \</font></div><div><font face=3D"&#39;courier n=
ew&#39;, monospace">=A0 &quot;</font></div><div><br></div><div>Now I think =
that every things =A0work better, but I get a error that I dont know how to=
 solve:</div>
<div><br></div><div><br></div><div><font face=3D"&#39;courier new&#39;, mon=
ospace">raul@phi04:/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java$=
 bitbake openjdk-6-jre</font></div><div><font face=3D"&#39;courier new&#39;=
, monospace">WARNING: Unable to get checksum for barebox SRC_URI entry defc=
onfig: file could not be found =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| ETA: =A000:00:25</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">Parsing recipes: 100% =
|##########################################################################=
#####################################| Time: 00:00:48</font></div><div><fon=
t face=3D"&#39;courier new&#39;, monospace">Parsing of 1320 .bb files compl=
ete (0 cached, 1320 parsed). 1706 targets, 70 skipped, 0 masked, 0 errors.<=
/font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace">Build Configuration:</font>=
</div><div><font face=3D"&#39;courier new&#39;, monospace">BB_VERSION =A0 =
=A0 =A0 =A0=3D &quot;1.16.0&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">TARGET_ARCH =A0 =A0 =
=A0 =3D &quot;arm&quot;</font></div><div><font face=3D"&#39;courier new&#39=
;, monospace">TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;</font=
></div><div><font face=3D"&#39;courier new&#39;, monospace">MACHINE =A0 =A0=
 =A0 =A0 =A0 =3D &quot;imx28evk&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">DISTRO =A0 =A0 =A0 =A0=
 =A0 =A0=3D &quot;poky&quot;</font></div><div><font face=3D"&#39;courier ne=
w&#39;, monospace">DISTRO_VERSION =A0 =A0=3D &quot;1.3&quot;</font></div><d=
iv><font face=3D"&#39;courier new&#39;, monospace">TUNE_FEATURES =A0 =A0 =
=3D &quot;armv5 dsp thumb arm926ejs&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">TARGET_FPU =A0 =A0 =A0=
 =A0=3D &quot;soft&quot;</font></div><div><font face=3D"&#39;courier new&#3=
9;, monospace">meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</font></div><div><font face=
=3D"&#39;courier new&#39;, monospace">meta-yocto =A0 =A0 =A0 =A0</font></di=
v>
<div><font face=3D"&#39;courier new&#39;, monospace">meta-yocto-bsp =A0 =A0=
=3D &quot;local/origin/danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0&quot;=
</font></div><div><font face=3D"&#39;courier new&#39;, monospace">meta-fsl-=
arm =A0 =A0 =A0=3D &quot;local/origin/danny:fdc178fb22b3370d3a2cde66b6a4171=
627dd4721&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">meta-oe =A0 =A0 =A0 =
=A0 =A0 =3D &quot;local/origin/danny:f026e96295da101bb715858bc8705de7e4a339=
92&quot;</font></div><div><font face=3D"&#39;courier new&#39;, monospace">m=
eta-java =A0 =A0 =A0 =A0 =3D &quot;master:2eb6d2643e3833657cfd278b0502945df=
99ee18a&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace">NOTE: Resolving any missing=
 task queue dependencies</font></div><div><font face=3D"&#39;courier new&#3=
9;, monospace">NOTE: multiple providers are available for jpeg (jpeg, libjp=
eg-turbo)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: consider definin=
g a PREFERRED_PROVIDER entry to match jpeg</font></div><div><font face=3D"&=
#39;courier new&#39;, monospace">NOTE: multiple providers are available for=
 runtime java2-runtime (openjdk-6-jre, jamvm, openjdk-7-jre)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: consider definin=
g a PREFERRED_PROVIDER entry to match java2-runtime</font></div><div><font =
face=3D"&#39;courier new&#39;, monospace">NOTE: multiple providers are avai=
lable for runtime java2-vm (openjdk-6-jre, openjdk-7-jre)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: consider definin=
g a PREFERRED_PROVIDER entry to match java2-vm</font></div><div><font face=
=3D"&#39;courier new&#39;, monospace">NOTE: multiple providers are availabl=
e for jpeg-native (jpeg-native, libjpeg-turbo-native)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: consider definin=
g a PREFERRED_PROVIDER entry to match jpeg-native</font></div><div><font fa=
ce=3D"&#39;courier new&#39;, monospace">NOTE: Preparing runqueue</font></di=
v>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Executing SetSce=
ne Tasks</font></div><div><font face=3D"&#39;courier new&#39;, monospace">N=
OTE: Executing RunQueue Tasks</font></div><div><font face=3D"&#39;courier n=
ew&#39;, monospace">ERROR: Function failed: do_compile (see /media/dados/pr=
js/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueab=
i/llvm2.8-2.8-r2.1/temp/log.do_compile.23542 for further information)</font=
></div>
<div><font face=3D"&#39;courier new&#39;, monospace">ERROR: Logfile of fail=
ure stored in: /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/=
work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.do_compile.23542<=
/font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">Log data follows:</fon=
t></div><div><font face=3D"&#39;courier new&#39;, monospace">| DEBUG: SITE =
files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#3=
9;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-=
linux-gnueabi&#39;, &#39;common&#39;]</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| DEBUG: Executing she=
ll function do_compile</font></div><div><font face=3D"&#39;courier new&#39;=
, monospace">| NOTE: make -j 4</font></div><div><font face=3D"&#39;courier =
new&#39;, monospace">| /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-j=
ava/tmp/sysroots/i686-linux/usr/bin/cmake -H/media/dados/prjs/imx-JAVA/phil=
inux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2=
.1/llvm-2.8 -B/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/w=
ork/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build --check-buil=
d-system CMakeFiles/Makefile.cmake 0</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| /media/dados/prjs/im=
x-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-linux/usr/bin/cmake -=
E cmake_progress_start /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-j=
ava/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMa=
keFiles /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/ar=
mv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles/progres=
s.marks</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make -f CMakeFiles/M=
akefile2 all</font></div><div><font face=3D"&#39;courier new&#39;, monospac=
e">| make[1]: Entering directory `/media/dados/prjs/imx-JAVA/philinux/phili=
nux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.=
8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make -f lib/System/C=
MakeFiles/LLVMSystem.dir/build.make lib/System/CMakeFiles/LLVMSystem.dir/de=
pend</font></div><div><font face=3D"&#39;courier new&#39;, monospace">| mak=
e -f lib/Transforms/Hello/CMakeFiles/LLVMHello.dir/build.make lib/Transform=
s/Hello/CMakeFiles/LLVMHello.dir/depend</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make -f utils/count/=
CMakeFiles/count.dir/build.make utils/count/CMakeFiles/count.dir/depend</fo=
nt></div><div><font face=3D"&#39;courier new&#39;, monospace">| make -f too=
ls/bugpoint-passes/CMakeFiles/BugpointPasses.dir/build.make tools/bugpoint-=
passes/CMakeFiles/BugpointPasses.dir/depend</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Entering di=
rectory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/a=
rmv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| cd /media/dados/prjs=
/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/=
llvm2.8-2.8-r2.1/llvm-2.8/build &amp;&amp; /media/dados/prjs/imx-JAVA/phili=
nux/philinux-imx28-java/tmp/sysroots/i686-linux/usr/bin/cmake -E cmake_depe=
nds &quot;Unix Makefiles&quot; /media/dados/prjs/imx-JAVA/philinux/philinux=
-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8 /=
media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok=
y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/System /media/dados/prjs/imx-=
JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2=
.8-2.8-r2.1/llvm-2.8/build /media/dados/prjs/imx-JAVA/philinux/philinux-imx=
28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build=
/lib/System /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/wor=
k/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/System/CMa=
keFiles/LLVMSystem.dir/DependInfo.cmake --color=3D</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Entering di=
rectory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/a=
rmv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| cd /media/dados/prjs=
/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/=
llvm2.8-2.8-r2.1/llvm-2.8/build &amp;&amp; /media/dados/prjs/imx-JAVA/phili=
nux/philinux-imx28-java/tmp/sysroots/i686-linux/usr/bin/cmake -E cmake_depe=
nds &quot;Unix Makefiles&quot; /media/dados/prjs/imx-JAVA/philinux/philinux=
-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8 /=
media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok=
y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Transforms/Hello /media/dados=
/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnu=
eabi/llvm2.8-2.8-r2.1/llvm-2.8/build /media/dados/prjs/imx-JAVA/philinux/ph=
ilinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm=
-2.8/build/lib/Transforms/Hello /media/dados/prjs/imx-JAVA/philinux/philinu=
x-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/=
build/lib/Transforms/Hello/CMakeFiles/LLVMHello.dir/DependInfo.cmake --colo=
r=3D</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Entering di=
rectory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/a=
rmv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| cd /media/dados/prjs=
/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/=
llvm2.8-2.8-r2.1/llvm-2.8/build &amp;&amp; /media/dados/prjs/imx-JAVA/phili=
nux/philinux-imx28-java/tmp/sysroots/i686-linux/usr/bin/cmake -E cmake_depe=
nds &quot;Unix Makefiles&quot; /media/dados/prjs/imx-JAVA/philinux/philinux=
-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8 /=
media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok=
y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/tools/bugpoint-passes /media/dado=
s/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gn=
ueabi/llvm2.8-2.8-r2.1/llvm-2.8/build /media/dados/prjs/imx-JAVA/philinux/p=
hilinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llv=
m-2.8/build/tools/bugpoint-passes /media/dados/prjs/imx-JAVA/philinux/phili=
nux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.=
8/build/tools/bugpoint-passes/CMakeFiles/BugpointPasses.dir/DependInfo.cmak=
e --color=3D</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Leaving dir=
ectory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/ar=
mv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div><font=
 face=3D"&#39;courier new&#39;, monospace">...</font></div><div><font face=
=3D"&#39;courier new&#39;, monospace">...</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">...</font></div><div><=
font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div><font =
face=3D"&#39;courier new&#39;, monospace"><br></font></div><div><font face=
=3D"&#39;courier new&#39;, monospace"><br>
</font></div><div><font face=3D"&#39;courier new&#39;, monospace">/CMakeFil=
es/EnhancedDisassembly.dir/DependInfo.cmake --color=3D</font></div><div><fo=
nt face=3D"&#39;courier new&#39;, monospace">| make[2]: Entering directory =
`/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-p=
oky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| cd /media/dados/prjs=
/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/=
llvm2.8-2.8-r2.1/llvm-2.8/build &amp;&amp; /media/dados/prjs/imx-JAVA/phili=
nux/philinux-imx28-java/tmp/sysroots/i686-linux/usr/bin/cmake -E cmake_depe=
nds &quot;Unix Makefiles&quot; /media/dados/prjs/imx-JAVA/philinux/philinux=
-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8 /=
media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok=
y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/tools/bugpoint /media/dados/prjs/=
imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/l=
lvm2.8-2.8-r2.1/llvm-2.8/build /media/dados/prjs/imx-JAVA/philinux/philinux=
-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/b=
uild/tools/bugpoint /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java=
/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/=
bugpoint/CMakeFiles/bugpoint.dir/DependInfo.cmake --color=3D</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Leaving dir=
ectory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/ar=
mv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make -f tools/edis/C=
MakeFiles/EnhancedDisassembly.dir/build.make tools/edis/CMakeFiles/Enhanced=
Disassembly.dir/build</font></div><div><font face=3D"&#39;courier new&#39;,=
 monospace">| make[2]: Entering directory `/media/dados/prjs/imx-JAVA/phili=
nux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.=
1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Nothing to =
be done for `tools/edis/CMakeFiles/EnhancedDisassembly.dir/build&#39;.</fon=
t></div><div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Lea=
ving directory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp=
/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font=
></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| /media/dados/prjs/im=
x-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-linux/usr/bin/cmake -=
E cmake_progress_report /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-=
java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CM=
akeFiles</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| [ 98%] Built target =
EnhancedDisassembly</font></div><div><font face=3D"&#39;courier new&#39;, m=
onospace">| make[2]: Leaving directory `/media/dados/prjs/imx-JAVA/philinux=
/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/l=
lvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make -f tools/bugpoi=
nt/CMakeFiles/bugpoint.dir/build.make tools/bugpoint/CMakeFiles/bugpoint.di=
r/build</font></div><div><font face=3D"&#39;courier new&#39;, monospace">| =
make[2]: Entering directory `/media/dados/prjs/imx-JAVA/philinux/philinux-i=
mx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/bui=
ld&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Nothing to =
be done for `tools/bugpoint/CMakeFiles/bugpoint.dir/build&#39;.</font></div=
><div><font face=3D"&#39;courier new&#39;, monospace">| make[2]: Leaving di=
rectory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/a=
rmv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| /media/dados/prjs/im=
x-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-linux/usr/bin/cmake -=
E cmake_progress_report /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-=
java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CM=
akeFiles =A088</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| [100%] Built target =
bugpoint</font></div><div><font face=3D"&#39;courier new&#39;, monospace">|=
 ../../lib/libLLVMARMCodeGen.a(ARMISelLowering.cpp.o): In function `llvm::A=
RMTargetLowering::LowerCall(llvm::SDValue, llvm::SDValue, llvm::CallingConv=
::ID, bool, bool&amp;, llvm::SmallVectorImpl&lt;llvm::ISD::OutputArg&gt; co=
nst&amp;, llvm::SmallVectorImpl&lt;llvm::SDValue&gt; const&amp;, llvm::Smal=
lVectorImpl&lt;llvm::ISD::InputArg&gt; const&amp;, llvm::DebugLoc, llvm::Se=
lectionDAG&amp;, llvm::SmallVectorImpl&lt;llvm::SDValue&gt;&amp;) const&#39=
;:</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| /media/dados/prjs/im=
x-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llv=
m2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/ARMISelLowering.cpp:1293: undefined r=
eference to `getPointerToNamedFunctionOrNull&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| ../../lib/libLLVMARM=
AsmPrinter.a(ARMInstPrinter.cpp.o): In function `llvm::ARMInstPrinter::~ARM=
InstPrinter()&#39;:</font></div><div><font face=3D"&#39;courier new&#39;, m=
onospace">| /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/wor=
k/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/AsmPr=
inter/ARMInstPrinter.h:22: undefined reference to `llvm::MCInstPrinter::~MC=
InstPrinter()&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| ..=
/../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o): In function `~ARMInst=
Printer&#39;:</font></div><div><font face=3D"&#39;courier new&#39;, monospa=
ce" color=3D"#ff0000">| /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-=
java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Targ=
et/ARM/AsmPrinter/ARMInstPrinter.h:22: undefined reference to `llvm::MCInst=
Printer::~MCInstPrinter()&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| ..=
/../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.<a href=3D"http://da=
ta.rel.ro">data.rel.ro</a>+0x8): undefined reference to `typeinfo for llvm:=
:MCInstPrinter&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| ..=
/../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.<a href=3D"http://da=
ta.rel.ro">data.rel.ro</a>+0x24): undefined reference to `llvm::MCInstPrint=
er::getOpcodeName(unsigned int) const&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| co=
llect2: error: ld returned 1 exit status</font></div><div><font face=3D"&#3=
9;courier new&#39;, monospace" color=3D"#ff0000">| make[2]: *** [bin/llvm-m=
c] Error 1</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| ma=
ke[2]: Leaving directory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx2=
8-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&=
#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| ma=
ke[1]: *** [tools/llvm-mc/CMakeFiles/llvm-mc.dir/all] Error 2</font></div><=
div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| mak=
e[1]: Leaving directory `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28=
-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build&#=
39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| ma=
ke: *** [all] Error 2</font></div><div><font face=3D"&#39;courier new&#39;,=
 monospace" color=3D"#ff0000">| ERROR: oe_runmake failed</font></div><div><=
font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">| ERROR: F=
unction failed: do_compile (see /media/dados/prjs/imx-JAVA/philinux/philinu=
x-imx28-java/tmp/work/armv5te-poky-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.=
do_compile.23542 for further information)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">ERRO=
R: Task 353 (/media/dados/prjs/imx-JAVA/philinux/meta-java/recipes-core/llv=
m/<a href=3D"http://llvm2.8_2.8.bb">llvm2.8_2.8.bb</a>, do_compile) failed =
with exit code &#39;1&#39;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">NOTE=
: Tasks Summary: Attempted 1646 tasks of which 1634 didn&#39;t need to be r=
erun and 1 failed.</font></div><div><font face=3D"&#39;courier new&#39;, mo=
nospace" color=3D"#ff0000">Waiting for 0 running tasks to finish:</font></d=
iv>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000"><br>=
</font></div><div><font face=3D"&#39;courier new&#39;, monospace" color=3D"=
#ff0000">Summary: 1 task failed:</font></div><div><font face=3D"&#39;courie=
r new&#39;, monospace" color=3D"#ff0000">=A0 /media/dados/prjs/imx-JAVA/phi=
linux/meta-java/recipes-core/llvm/<a href=3D"http://llvm2.8_2.8.bb">llvm2.8=
_2.8.bb</a>, do_compile</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000">Summ=
ary: There was 1 WARNING message shown.</font></div><div><font face=3D"&#39=
;courier new&#39;, monospace" color=3D"#ff0000">Summary: There was 1 ERROR =
message shown, returning a non-zero exit code.</font></div>
<div><br></div><div><br></div><div>Some one can Help me?</div><div><br></di=
v><div>I thing that there is some thing with this:</div><div><br></div><div=
><font face=3D"&#39;courier new&#39;, monospace">| ../../lib/libLLVMARMAsmP=
rinter.a(ARMInstPrinter.cpp.o):(.<a href=3D"http://data.rel.ro">data.rel.ro=
</a>+0x8): undefined reference to `typeinfo for llvm::MCInstPrinter&#39;</f=
ont></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| ../../lib/libLLVMARM=
AsmPrinter.a(ARMInstPrinter.cpp.o):(.<a href=3D"http://data.rel.ro">data.re=
l.ro</a>+0x24): undefined reference to `llvm::MCInstPrinter::getOpcodeName(=
unsigned int) const&#39;</font></div>
<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">2012/12/19 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:pa=
ul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.co=
m</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wednesday 19 December 2=
012 15:31:42 Raul Rosetto Munoz wrote:<br>
&gt; raul@phi04:/home/prjs/poky$ git branch<br>
&gt; * local/origin/denzil<br>
<br>
</div>There doesn&#39;t seem to be a denzil branch for meta-java and it&#39=
;s likely the<br>
error you&#39;re receiving is because the master branch of meta-java is<br>
incompatible with the denzil release. I would suggest updating to the danny=
<br>
release, or alternatively you&#39;ll need to modify meta-java to be compati=
ble<br>
with denzil (i.e. you&#39;ll have to match indenting in python functions su=
ch as<br>
populate_packages_prepend).<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<b>Raul Rosetto Mu=F1oz</b><br>
</div>

--14dae934102792eba804d1473d03--
