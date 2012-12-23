Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69740E00726
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 12:01:18 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2012 12:01:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,343,1355126400"; d="scan'208";a="238222546"
Received: from unknown (HELO helios.localnet) ([10.252.123.19])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2012 12:01:14 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Henning Heinold <heinold@inf.fu-berlin.de>, yocto@yoctoproject.org
Date: Sun, 23 Dec 2012 20:01:12 +0000
Message-ID: <1470157.sKB2c1mjnF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-21-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CANmVirieZvD5BebrVyur7UGhBPQ90zFg0DkWjSjbK19MFWtK3g@mail.gmail.com>
References: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
	<3911329.LVxahrYG8d@helios>
	<CANmVirieZvD5BebrVyur7UGhBPQ90zFg0DkWjSjbK19MFWtK3g@mail.gmail.com>
MIME-Version: 1.0
Cc: Raul Rosetto Munoz <munoz0raul@gmail.com>
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
X-List-Received-Date: Sun, 23 Dec 2012 20:01:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 December 2012 09:43:32 Raul Rosetto Munoz wrote:
> 2012/12/19 Paul Eggleton <paul.eggleton@linux.intel.com>
> > On Wednesday 19 December 2012 15:31:42 Raul Rosetto Munoz wrote:
> > > raul@phi04:/home/prjs/poky$ git branch
> > > * local/origin/denzil
> > 
> > There doesn't seem to be a denzil branch for meta-java and it's likely the
> > error you're receiving is because the master branch of meta-java is
> > incompatible with the denzil release. I would suggest updating to the
> > danny
> > release, or alternatively you'll need to modify meta-java to be compatible
> > with denzil (i.e. you'll have to match indenting in python functions such
> > as
> > populate_packages_prepend).
>
> Paul, Thanks for all help.
> 
> I did what you told, I created a new project with all metas in danny branch:
> meta-fsl-arm$ git branch
> * local/origin/danny
>   master
> 
> meta-openembedded$ git branch
> * local/origin/danny
>   master
> 
> poky$ git branch
> * local/origin/danny
>   master
> 
> meta-java$ git branch
> * master
> 
> In Local config I changed just the machine for
> MACHINE ?= "imx28evk"
> 
> And added the lines needed for java
> 
> PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
> PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
> 
> PREFERRED_VERSION_openjdk-6-jre = "6b24-1.11.5"
> PREFERRED_VERSION_icedtea6-native = "1.8.11"
> 
> I have changed my bblayes for:
> 
> BBLAYERS ?= " \
>   /media/dados/prjs/imx-JAVA/philinux/poky/meta \
>   /media/dados/prjs/imx-JAVA/philinux/poky/meta-yocto \
>   /media/dados/prjs/imx-JAVA/philinux/poky/meta-yocto-bsp \
>   /media/dados/prjs/imx-JAVA/philinux/meta-fsl-arm \
>   /media/dados/prjs/imx-JAVA/philinux/meta-openembedded/meta-oe \
>   /media/dados/prjs/imx-JAVA/philinux/meta-java \
>   "
> 
> Now I think that every things  work better, but I get a error that I dont
> know how to solve:
> 
> 
> raul@phi04:/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java$ bitbake
> openjdk-6-jre
> WARNING: Unable to get checksum for barebox SRC_URI entry defconfig: file
> could not be found                                          | ETA:  00:00:25
> Parsing recipes: 100%
> 
> |###########################################################################
> |####################################|
> Time: 00:00:48
> Parsing of 1320 .bb files complete (0 cached, 1320 parsed). 1706 targets,
> 70 skipped, 0 masked, 0 errors.
> 
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "imx28evk"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3"
> TUNE_FEATURES     = "armv5 dsp thumb arm926ejs"
> TARGET_FPU        = "soft"
> meta
> meta-yocto
> meta-yocto-bsp    =
> "local/origin/danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0"
> meta-fsl-arm      =
> "local/origin/danny:fdc178fb22b3370d3a2cde66b6a4171627dd4721"
> meta-oe           =
> "local/origin/danny:f026e96295da101bb715858bc8705de7e4a33992"
> meta-java         = "master:2eb6d2643e3833657cfd278b0502945df99ee18a"
> 
> NOTE: Resolving any missing task queue dependencies
> NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
> NOTE: multiple providers are available for runtime java2-runtime
> (openjdk-6-jre, jamvm, openjdk-7-jre)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match java2-runtime
> NOTE: multiple providers are available for runtime java2-vm (openjdk-6-jre,
> openjdk-7-jre)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match java2-vm
> NOTE: multiple providers are available for jpeg-native (jpeg-native,
> libjpeg-turbo-native)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_compile (see
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.do_compile.23542 for further
> information)
> ERROR: Logfile of failure stored in:
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.do_compile.23542
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> 
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake
> -H/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-
> poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
> -B/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-
> poky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build --check-build-system
> CMakeFiles/Makefile.cmake 0
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake -E cmake_progress_start
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles/progress.marks
> | make -f CMakeFiles/Makefile2 all
> | make[1]: Entering directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make -f lib/System/CMakeFiles/LLVMSystem.dir/build.make
> 
> lib/System/CMakeFiles/LLVMSystem.dir/depend
> 
> | make -f lib/Transforms/Hello/CMakeFiles/LLVMHello.dir/build.make
> 
> lib/Transforms/Hello/CMakeFiles/LLVMHello.dir/depend
> 
> | make -f utils/count/CMakeFiles/count.dir/build.make
> 
> utils/count/CMakeFiles/count.dir/depend
> 
> | make -f tools/bugpoint-passes/CMakeFiles/BugpointPasses.dir/build.make
> 
> tools/bugpoint-passes/CMakeFiles/BugpointPasses.dir/depend
> 
> | make[2]: Entering directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | cd
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build &&
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake -E cmake_depends "Unix Makefiles"
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/System
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/System
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/System/CMakeFiles/LLVMS
> ystem.dir/DependInfo.cmake --color=
> 
> | make[2]: Entering directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | cd
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build &&
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake -E cmake_depends "Unix Makefiles"
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Transforms/Hello
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/Transforms/Hello
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/lib/Transforms/Hello/CMakeF
> iles/LLVMHello.dir/DependInfo.cmake --color=
> 
> | make[2]: Entering directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | cd
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build &&
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake -E cmake_depends "Unix Makefiles"
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/tools/bugpoint-passes
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint-passes
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint-passes/CMake
> Files/BugpointPasses.dir/DependInfo.cmake --color=
> 
> | make[2]: Leaving directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> 
> 
> ...
> ...
> ...
> 
> 
> 
> /CMakeFiles/EnhancedDisassembly.dir/DependInfo.cmake --color=
> 
> | make[2]: Entering directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | cd
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build &&
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake -E cmake_depends "Unix Makefiles"
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/tools/bugpoint
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/tools/bugpoint/CMakeFiles/b
> ugpoint.dir/DependInfo.cmake --color=
> 
> | make[2]: Leaving directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make -f tools/edis/CMakeFiles/EnhancedDisassembly.dir/build.make
> 
> tools/edis/CMakeFiles/EnhancedDisassembly.dir/build
> 
> | make[2]: Entering directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make[2]: Nothing to be done for
> 
> `tools/edis/CMakeFiles/EnhancedDisassembly.dir/build'.
> 
> | make[2]: Leaving directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake -E cmake_progress_report
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles
> | [ 98%] Built target EnhancedDisassembly
> | make[2]: Leaving directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make -f tools/bugpoint/CMakeFiles/bugpoint.dir/build.make
> 
> tools/bugpoint/CMakeFiles/bugpoint.dir/build
> 
> | make[2]: Entering directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make[2]: Nothing to be done for
> 
> `tools/bugpoint/CMakeFiles/bugpoint.dir/build'.
> 
> | make[2]: Leaving directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/sysroots/i686-li
> nux/usr/bin/cmake -E cmake_progress_report
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build/CMakeFiles 88
> 
> | [100%] Built target bugpoint
> | ../../lib/libLLVMARMCodeGen.a(ARMISelLowering.cpp.o): In function
> 
> `llvm::ARMTargetLowering::LowerCall(llvm::SDValue, llvm::SDValue,
> llvm::CallingConv::ID, bool, bool&,
> llvm::SmallVectorImpl<llvm::ISD::OutputArg> const&,
> llvm::SmallVectorImpl<llvm::SDValue> const&,
> llvm::SmallVectorImpl<llvm::ISD::InputArg> const&, llvm::DebugLoc,
> llvm::SelectionDAG&, llvm::SmallVectorImpl<llvm::SDValue>&) const':
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/ARMISelLowering.cpp
> :1293: undefined reference to `getPointerToNamedFunctionOrNull'
> 
> | ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o): In function
> 
> `llvm::ARMInstPrinter::~ARMInstPrinter()':
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/AsmPrinter/ARMInstP
> rinter.h:22: undefined reference to `llvm::MCInstPrinter::~MCInstPrinter()'
> 
> | ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o): In function
> 
> `~ARMInstPrinter':
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/lib/Target/ARM/AsmPrinter/ARMInstP
> rinter.h:22: undefined reference to `llvm::MCInstPrinter::~MCInstPrinter()'
> 
> | ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.data.rel.ro+0x8):
> undefined reference to `typeinfo for llvm::MCInstPrinter'
> 
> | ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):
(.data.rel.ro+0x24):
> undefined reference to `llvm::MCInstPrinter::getOpcodeName(unsigned int)
> const'
> 
> | collect2: error: ld returned 1 exit status
> | make[2]: *** [bin/llvm-mc] Error 1
> | make[2]: Leaving directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make[1]: *** [tools/llvm-mc/CMakeFiles/llvm-mc.dir/all] Error 2
> | make[1]: Leaving directory
> 
> `/media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-po
> ky-linux-gnueabi/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see
> 
> /media/dados/prjs/imx-JAVA/philinux/philinux-imx28-java/tmp/work/armv5te-pok
> y-linux-gnueabi/llvm2.8-2.8-r2.1/temp/log.do_compile.23542 for further
> information)
> ERROR: Task 353
> (/media/dados/prjs/imx-JAVA/philinux/meta-java/recipes-core/llvm/
> llvm2.8_2.8.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1646 tasks of which 1634 didn't need to be
> rerun and 1 failed.
> Waiting for 0 running tasks to finish:
> 
> Summary: 1 task failed:
>   /media/dados/prjs/imx-JAVA/philinux/meta-java/recipes-core/llvm/
> llvm2.8_2.8.bb, do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> 
> 
> Some one can Help me?
> 
> I thing that there is some thing with this:
> | ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):(.data.rel.ro+0x8):
> undefined reference to `typeinfo for llvm::MCInstPrinter'
> 
> | ../../lib/libLLVMARMAsmPrinter.a(ARMInstPrinter.cpp.o):
(.data.rel.ro+0x24):
> undefined reference to `llvm::MCInstPrinter::getOpcodeName(unsigned int)
> const'

Henning, do you have any suggestions?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

