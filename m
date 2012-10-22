Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCFE7E01302
	for <yocto@yoctoproject.org>; Sun, 21 Oct 2012 21:03:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Oct 2012 21:03:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,628,1344236400"; d="scan'208";a="236662120"
Received: from unknown (HELO [10.255.14.142]) ([10.255.14.142])
	by fmsmga001.fm.intel.com with ESMTP; 21 Oct 2012 21:03:12 -0700
Message-ID: <1350878590.1581.7.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Date: Sun, 21 Oct 2012 23:03:10 -0500
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE233E6EFA3@ORSMSX105.amr.corp.intel.com>
References: <cover.1350583189.git.kishore.k.bodke@intel.com>
	<46df5fcf29108c0c9b5ed6714ec012fd03b94e55.1350583189.git.kishore.k.bodke@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C2D90C94E@ORSMSX106.amr.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE233E6D804@ORSMSX105.amr.corp.intel.com>
	<1350671677.1569.14.camel@empanada>
	<D956029D25CF204F948EA0FB515E1EE233E6D849@ORSMSX105.amr.corp.intel.com>
	<1350672536.1569.21.camel@empanada>
	<D956029D25CF204F948EA0FB515E1EE233E6EFA3@ORSMSX105.amr.corp.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/3] [meta-intel] meta-intel/common:Add a new recipe for Zlib qat_mem Module.
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
X-List-Received-Date: Mon, 22 Oct 2012 04:03:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-10-21 at 22:15 -0500, Bodke, Kishore K wrote:
> 
> >-----Original Message-----
> >From: Zanussi, Tom
> >Sent: Friday, October 19, 2012 11:49 AM
> >To: Bodke, Kishore K
> >Cc: Kamble, Nitin A; yocto@yoctoproject.org
> >Subject: Re: [PATCH 1/3] [meta-intel] meta-intel/common:Add a new recipe
> >for Zlib qat_mem Module.
> >
> >On Fri, 2012-10-19 at 13:40 -0500, Bodke, Kishore K wrote:
> >>
> >> >-----Original Message-----
> >> >From: Zanussi, Tom
> >> >Sent: Friday, October 19, 2012 11:35 AM
> >> >To: Bodke, Kishore K
> >> >Cc: Kamble, Nitin A; yocto@yoctoproject.org
> >> >Subject: Re: [PATCH 1/3] [meta-intel] meta-intel/common:Add a new
> >recipe
> >> >for Zlib qat_mem Module.
> >> >
> >> >Hi Kishore,
> >> >
> >> >I've built these and they look ok as far as that goes.
> >> >
> >> >But I'm wondering, which kernel did you test with and which kernel(s)
> >> >are these modules designed for i.e. will they work with all the kernels
> >> >supported for 1.3?
> >>
> >> Hi Tom,
> >>
> >> I have tested them for 3.4 Kernel for Yocto, since for Crystal Forest we only
> >have 3.4 for now.
> >> Apart from that, it should work with all the kernel versions.
> >> I have tested 3.0 and 3.5 on Fedora.
> >>
> >
> >OK, for something in common, we have to think about someone using them
> >with any yocto kernel, not just 3.4.  Since you're saying they work with
> >3.0, 3.4 and 3.5, I guess there's not too much risk that they'll break
> >with 3.2.  If that's not the case, you should probably restrict them to
> >your BSP (but we don't want multiple copies) either.
> >
> >The best thing would be to move them into the linux-yocto kernel(s) they
> >have been tested with - that way users know those features work and are
> >safe to use in their BSPs.
> >
> 
> These modules just need the configured kernel for them to build with.
> It is not specific to particular kernel version. 
> 
> Also, every time the Kernel version moves, this whole set needs to be moved too.
> Instead have it in the BSP and we do not have to run around moving around with the different kernels.
> Instead it is nice to have one copy in common.
> 

Hmm, I'm not able to build them with linux-yocto-3.2:

[trz@empanada build]$ bitbake core-image-qat
Loading cache: 100% |######################################################################################| ETA:  00:00:00
Loaded 1156 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "x86_64"
TARGET_OS         = "linux"
MACHINE           = "crystalforest-shumway"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3"
TUNE_FEATURES     = "m64"
TARGET_FPU        = ""
meta              
meta-yocto        
meta-yocto-bsp    = "danny0:4cce3e4abab65116ca968174e59a049438ec7385"
meta-intel        
meta-crystalforest = "master0:c94e89507fbab050efa2e326ec92e63fb9dc07a6"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: validating kernel configuration
WARNING: Can't find any BSP hardware or required configuration fragments.
WARNING: Looked at meta/cfg/standard/crystalforest/hdw_frags.txt and meta/cfg/standard/crystalforest/required_frags.txt in directory: meta/cfg/standard/crystalforest
WARNING: QA Issue: Architecture did not match (62 to 2) on /work/x86_64-poky-linux/canterbury-corpus-1.0-r0/packages-split/canterbury-corpus/lib/firmware/sum
ERROR: Function failed: do_compile (see /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/temp/log.do_compile.19389 for further information)
ERROR: Logfile of failure stored in: /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/temp/log.do_compile.19389
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 16 -e MAKEFLAGS= KERNEL_CC=x86_64-poky-linux-gcc
| x86_64-poky-linux-gcc    -m64 --sysroot=/home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway -g -o qat_mem_test qat_mem_test.c
| make -C /home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway/usr/src/kernel SUBDIRS=/home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem modules
| make[1]: Entering directory `/home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway/usr/src/kernel'
|   CC [M]  /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.o
|   Building modules, stage 2.
|   MODPOST 1 modules
|   CC      /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.o
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:8:1: error: variable '__this_module' has initializer but incomplete type
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:9:2: error: unknown field 'name' specified in initializer
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:9:2: warning: excess elements in struct initializer [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:9:2: warning: (near initialization for '__this_module') [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:10:2: error: unknown field 'init' specified in initializer
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:10:2: warning: excess elements in struct initializer [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:10:2: warning: (near initialization for '__this_module') [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:14:2: error: unknown field 'arch' specified in initializer
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:14:10: error: 'MODULE_ARCH_INIT' undeclared here (not in a function)
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:14:2: warning: excess elements in struct initializer [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.c:14:2: warning: (near initialization for '__this_module') [enabled by default]
| make[2]: *** [/home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/qat_mem.mod.o] Error 1
| make[1]: *** [modules] Error 2
| make[1]: Leaving directory `/home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway/usr/src/kernel'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/openssl-qat-module-1.0.1-r0/temp/log.do_compile.19389 for further information)
ERROR: Task 393 (/home/trz/yocto/isg-test/meta-intel/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb, do_compile) failed with exit code '1'
ERROR: Function failed: do_compile (see /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/temp/log.do_compile.20691 for further information)
ERROR: Logfile of failure stored in: /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/temp/log.do_compile.20691
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 16 -e MAKEFLAGS= KERNEL_CC=x86_64-poky-linux-gcc
| x86_64-poky-linux-gcc    -m64 --sysroot=/home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway -g -o qat_mem_test qat_mem_test.c
| make -C /home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway/usr/src/kernel SUBDIRS=/home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem modules
| make[1]: Entering directory `/home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway/usr/src/kernel'
|   CC [M]  /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.o
|   Building modules, stage 2.
|   MODPOST 1 modules
|   CC      /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.o
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:8:1: error: variable '__this_module' has initializer but incomplete type
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:9:2: error: unknown field 'name' specified in initializer
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:9:2: warning: excess elements in struct initializer [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:9:2: warning: (near initialization for '__this_module') [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:10:2: error: unknown field 'init' specified in initializer
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:10:2: warning: excess elements in struct initializer [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:10:2: warning: (near initialization for '__this_module') [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:14:2: error: unknown field 'arch' specified in initializer
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:14:10: error: 'MODULE_ARCH_INIT' undeclared here (not in a function)
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:14:2: warning: excess elements in struct initializer [enabled by default]
| /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.c:14:2: warning: (near initialization for '__this_module') [enabled by default]
| make[2]: *** [/home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/qat_mem.mod.o] Error 1
| make[1]: *** [modules] Error 2
| make[1]: Leaving directory `/home/trz/yocto/isg-test/build/tmp/sysroots/crystalforest-shumway/usr/src/kernel'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/zlib-qat-module-1.2.7-r0/temp/log.do_compile.20691 for further information)
ERROR: Task 380 (/home/trz/yocto/isg-test/meta-intel/common/recipes-core/zlib-qat-module/zlib-qat-module.bb, do_compile) failed with exit code '1'
ERROR: QA Issue: Architecture did not match (62 to 3) on /work/crystalforest_shumway-poky-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+34e3cd8b7a1d18594a63b7b299fce46e32a6c80c-r4.1/packages-split/kernel-vmlinux/boot/vmlinux-3.2.18-yocto-standard
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/trz/yocto/isg-test/build/tmp/work/crystalforest_shumway-poky-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+34e3cd8b7a1d18594a63b7b299fce46e32a6c80c-r4.1/temp/log.do_package.8684
ERROR: Task 1019 (/home/trz/yocto/isg-test/meta/recipes-kernel/linux/linux-yocto_3.2.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3903 tasks of which 346 didn't need to be rerun and 3 failed.
Waiting for 0 running tasks to finish:

Summary: 3 tasks failed:
  /home/trz/yocto/isg-test/meta-intel/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb, do_compile
  /home/trz/yocto/isg-test/meta-intel/common/recipes-core/zlib-qat-module/zlib-qat-module.bb, do_compile
  /home/trz/yocto/isg-test/meta/recipes-kernel/linux/linux-yocto_3.2.bb, do_package
Summary: There was 1 WARNING message shown.
Summary: There were 5 ERROR messages shown, returning a non-zero exit code.


Can you please verify that these recipes will work with linux-yocto-3.2?  So far I'm not seeing that they will.

Tom

> Thanks
> Kishore.
> 
> >Tom
> >
> >> Thanks
> >> Kishore.
> >>
> >> >
> >> >Tom
> >> >
> >> >On Fri, 2012-10-19 at 13:28 -0500, Bodke, Kishore K wrote:
> >> >>
> >> >> >-----Original Message-----
> >> >> >From: Kamble, Nitin A
> >> >> >Sent: Friday, October 19, 2012 11:28 AM
> >> >> >To: Bodke, Kishore K; Zanussi, Tom; yocto@yoctoproject.org
> >> >> >Subject: RE: [PATCH 1/3] [meta-intel] meta-intel/common:Add a new
> >> >recipe
> >> >> >for Zlib qat_mem Module.
> >> >> >
> >> >> >Hi Kishore,
> >> >> >  Same here, if it is not used by multiple BSPs yet, then it should go in
> >the
> >> >BSP
> >> >> >specific layer.
> >> >> >
> >> >> Yes, these too will be used by both Crystal Forest and Rangely.
> >> >>
> >> >> Thanks
> >> >> Kishore.
> >> >>
> >> >> >Thanks,
> >> >> >Nitin
> >> >> >
> >> >> >
> >> >> >> -----Original Message-----
> >> >> >> From: Bodke, Kishore K
> >> >> >> Sent: Thursday, October 18, 2012 11:19 AM
> >> >> >> To: Zanussi, Tom; Kamble, Nitin A; yocto@yoctoproject.org
> >> >> >> Cc: Bodke, Kishore K
> >> >> >> Subject: [PATCH 1/3] [meta-intel] meta-intel/common:Add a new
> >recipe
> >> >for
> >> >> >> Zlib qat_mem Module.
> >> >> >>
> >> >> >> From: Kishore Bodke <kishore.k.bodke@intel.com>
> >> >> >>
> >> >> >> This adds a new recipe to build the Intel Quick Assist Technology
> >Memory
> >> >> >> Management Module for Zlib.
> >> >> >>
> >> >> >> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> >> >> >> ---
> >> >> >>  .../zlib-qat-module/zlib-qat-module.bb             |   52
> >> >> >> ++++++++++++++++++++
> >> >> >>  .../zlib-qat-module/zlib_qat_module.patch          |   43
> >> >++++++++++++++++
> >> >> >>  2 files changed, 95 insertions(+)
> >> >> >>  create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-
> >> >> >> module.bb
> >> >> >>  create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-
> >> >> >> module/zlib_qat_module.patch
> >> >> >>
> >> >> >> diff --git a/common/recipes-core/zlib-qat-module/zlib-qat-module.bb
> >> >> >> b/common/recipes-core/zlib-qat-module/zlib-qat-module.bb
> >> >> >> new file mode 100644
> >> >> >> index 0000000..5ade06e
> >> >> >> --- /dev/null
> >> >> >> +++ b/common/recipes-core/zlib-qat-module/zlib-qat-module.bb
> >> >> >> @@ -0,0 +1,52 @@
> >> >> >> +SUMMARY="Zlib QAT_MEM Memory Management Module for Intel
> >> >Quick
> >> >> >> Assist \
> >> >> >> +Technology"
> >> >> >> +DESCRIPTION="This software acelerates the data compression
> >> >algorithm \
> >> >> >> +in the zlib software library via the Intel QuickAssist Technology \
> >> >> >> +implemented on Intel Communications Chipset 89xx Series based
> >> >> >> platforms."
> >> >> >> +
> >> >> >> +HOMEPAGE = "http://zlib.net/"
> >> >> >> +SECTION = "libs"
> >> >> >> +LICENSE = "Zlib & GPLv2 & BSD"
> >> >> >> +
> >> >> >> +LIC_FILES_CHKSUM = "file://${WORKDIR}/zlib-
> >> >> >>
> >>
> >>${PV}/zlib.h;beginline=4;endline=23;md5=94d1b5a40dadd127f3351471727e6
> >> >> >> 6a9 \
> >> >> >> +			file://${COMMON_LICENSE_DIR}/GPL-
> >> >> >> 2.0;md5=801f80980d171dd6425610833a22dbe6 \
> >> >> >> +
> >> >> >>
> >	file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a696476
> >> >> >> 78acb234cb"
> >> >> >> +PV = "1.2.7"
> >> >> >> +ZLIB_QAT_VERSION = "0.4.0-011"
> >> >> >> +
> >> >> >> +PR="r0"
> >> >> >> +
> >> >> >> +SRC_URI = "http://www.zlib.net/zlib-${PV}.tar.gz;name=zlib \
> >> >> >> +	http://downloadmirror.intel.com/20294/eng/zlib-${PV}-
> >> >> >> qat.L.${ZLIB_QAT_VERSION}.tar.gz;name=zlib_qat \
> >> >> >> +	file://zlib_qat_module.patch"
> >> >> >> +
> >> >> >> +SRC_URI[zlib.md5sum]="60df6a37c56e7c1366cca812414f7b85"
> >> >> >>
> >>
> >>+SRC_URI[zlib.sha256sum]="fa9c9c8638efb8cb8ef5e4dd5453e455751e1c530
> >> >> >> b1595eed466e1be9b7e26c5"
> >> >> >> +
> >> >> >> +SRC_URI[zlib_qat.md5sum]="88e4140f98d2f9e170bf473f20e1a8d4"
> >> >> >>
> >> >>
> >>
> >>>+SRC_URI[zlib_qat.sha256sum]="3c360878127f3930e64640ef5a5822719a50
> >59
> >> >> >> 143326bb4c396645ae37b704a6"
> >> >> >> +
> >> >> >> +S = "${WORKDIR}/zlib-${PV}/contrib/qat/qat_mem"
> >> >> >> +
> >> >> >> +inherit module
> >> >> >> +export KERNEL_SOURCE_ROOT = "${STAGING_KERNEL_DIR}"
> >> >> >> +
> >> >> >> +do_patch() 	{
> >> >> >> +	cd ${WORKDIR}/zlib-${PV}
> >> >> >> +	patch -p0  < ${WORKDIR}/zlib-${PV}-
> >> >> >> qat.L.${ZLIB_QAT_VERSION}.patch
> >> >> >> +
> >> >> >> +	cd ${WORKDIR}
> >> >> >> +	patch -p1   < ${WORKDIR}/zlib_qat_module.patch
> >> >> >> +}
> >> >> >> +
> >> >> >> +do_compile()    {
> >> >> >> +	cd ${S}
> >> >> >> +	oe_runmake KERNEL_CC="${KERNEL_CC}"
> >> >> >> +}
> >> >> >> +
> >> >> >> +do_install_append()     {
> >> >> >> +	install -m 0755 -d      		${D}${bindir}
> >> >> >> +	install -m 0755 ${S}/qat_mem_test       ${D}${bindir}
> >> >> >> +}
> >> >> >> +
> >> >> >> +FILES_${PN} += "${bindir}/qat_mem_test"
> >> >> >> diff --git a/common/recipes-core/zlib-qat-module/zlib-qat-
> >> >> >> module/zlib_qat_module.patch b/common/recipes-core/zlib-qat-
> >> >> >> module/zlib-qat-module/zlib_qat_module.patch
> >> >> >> new file mode 100644
> >> >> >> index 0000000..a30f8b0
> >> >> >> --- /dev/null
> >> >> >> +++ b/common/recipes-core/zlib-qat-module/zlib-qat-
> >> >> >> module/zlib_qat_modul
> >> >> >> +++ e.patch
> >> >> >> @@ -0,0 +1,43 @@
> >> >> >> +Index: zlib-qat-module-1.2.7-r0/zlib-
> >> >1.2.7/contrib/qat/qat_mem/Makefile
> >> >> >>
> >>
> >>+=========================================================
> >> >> >> ==========
> >> >> >> +--- zlib-qat-module-1.2.7-r0.orig/zlib-
> >> >1.2.7/contrib/qat/qat_mem/Makefile
> >> >> >> 	2012-10-16 13:53:10.258938722 -0700
> >> >> >> ++++ zlib-qat-module-1.2.7-r0/zlib-
> >1.2.7/contrib/qat/qat_mem/Makefile
> >> >> >> 	2012-10-16 13:59:18.174944864 -0700
> >> >> >> +@@ -59,13 +59,10 @@
> >> >> >> + #
> >> >> >> + #
> >> >> >> +
> >> >> >>
> >>
> >>+#########################################################
> >> >> >> ##############
> >> >> >> +##
> >> >> >> +-
> >> >> >> + MODULENAME 	:= qat_mem
> >> >> >> +-KDIR		:= /lib/modules/$(shell uname -r)/build
> >> >> >> ++KDIR		:= $(KERNEL_SOURCE_ROOT)
> >> >> >> + PWD		:= $(shell pwd)
> >> >> >> +-
> >> >> >> +-CC		:= gcc -Wall -imacros /usr/src/kernels/$(shell uname -
> >> >> >> r)/include/linux/autoconf.h
> >> >> >> +-
> >> >> >> ++CC		:= $(KERNEL_CC) -Wall -imacros
> >> >> >> $(KERNEL_SOURCE_ROOT)/include/generated/autoconf.h
> >> >> >> + ifeq ($(KERNELRELEASE),)
> >> >> >> + all:	$(MODULENAME)_test
> >> >> >> + all:
> >> >> >> +@@ -73,20 +70,15 @@
> >> >> >> + else
> >> >> >> +   obj-m	:= $(MODULENAME).o
> >> >> >> + endif
> >> >> >> +-
> >> >> >> ++modules_install:
> >> >> >> ++	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules_install
> >> >> >> + $(MODULENAME)_test: $(MODULENAME)_test.c
> >> >> >> + 	$(CC) -g -o $(MODULENAME)_test $(MODULENAME)_test.c
> >> >> >> +-
> >> >> >> +-
> >> >> >> + load:
> >> >> >> + 	insmod ./$(MODULENAME).ko
> >> >> >> +-
> >> >> >> + unload:
> >> >> >> + 	rmmod $(MODULENAME)
> >> >> >> +-
> >> >> >> + test: all
> >> >> >> + 	./$(MODULENAME)_test
> >> >> >> +-
> >> >> >> + clean:
> >> >> >> + 	rm -f *.o *.ko Module.symvers modules.order *.mod.c
> >.*.cmd
> >> >> >> +$(MODULENAME)_test
> >> >> >> +-
> >> >> >> --
> >> >> >> 1.7.9.5
> >> >>
> >> >
> >>
> >
> 



