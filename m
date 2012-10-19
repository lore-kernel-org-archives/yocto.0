Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD583E003D6
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 11:34:40 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Oct 2012 11:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,615,1344236400"; d="scan'208";a="158186950"
Received: from unknown (HELO [10.255.14.73]) ([10.255.14.73])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Oct 2012 11:34:37 -0700
Message-ID: <1350671677.1569.14.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Date: Fri, 19 Oct 2012 13:34:37 -0500
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE233E6D804@ORSMSX105.amr.corp.intel.com>
References: <cover.1350583189.git.kishore.k.bodke@intel.com>
	<46df5fcf29108c0c9b5ed6714ec012fd03b94e55.1350583189.git.kishore.k.bodke@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C2D90C94E@ORSMSX106.amr.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE233E6D804@ORSMSX105.amr.corp.intel.com>
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
X-List-Received-Date: Fri, 19 Oct 2012 18:34:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Kishore,

I've built these and they look ok as far as that goes.

But I'm wondering, which kernel did you test with and which kernel(s)
are these modules designed for i.e. will they work with all the kernels
supported for 1.3?

Tom

On Fri, 2012-10-19 at 13:28 -0500, Bodke, Kishore K wrote:
> 
> >-----Original Message-----
> >From: Kamble, Nitin A
> >Sent: Friday, October 19, 2012 11:28 AM
> >To: Bodke, Kishore K; Zanussi, Tom; yocto@yoctoproject.org
> >Subject: RE: [PATCH 1/3] [meta-intel] meta-intel/common:Add a new recipe
> >for Zlib qat_mem Module.
> >
> >Hi Kishore,
> >  Same here, if it is not used by multiple BSPs yet, then it should go in the BSP
> >specific layer.
> >
> Yes, these too will be used by both Crystal Forest and Rangely.
> 
> Thanks
> Kishore.
> 
> >Thanks,
> >Nitin
> >
> >
> >> -----Original Message-----
> >> From: Bodke, Kishore K
> >> Sent: Thursday, October 18, 2012 11:19 AM
> >> To: Zanussi, Tom; Kamble, Nitin A; yocto@yoctoproject.org
> >> Cc: Bodke, Kishore K
> >> Subject: [PATCH 1/3] [meta-intel] meta-intel/common:Add a new recipe for
> >> Zlib qat_mem Module.
> >>
> >> From: Kishore Bodke <kishore.k.bodke@intel.com>
> >>
> >> This adds a new recipe to build the Intel Quick Assist Technology Memory
> >> Management Module for Zlib.
> >>
> >> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> >> ---
> >>  .../zlib-qat-module/zlib-qat-module.bb             |   52
> >> ++++++++++++++++++++
> >>  .../zlib-qat-module/zlib_qat_module.patch          |   43 ++++++++++++++++
> >>  2 files changed, 95 insertions(+)
> >>  create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-
> >> module.bb
> >>  create mode 100644 common/recipes-core/zlib-qat-module/zlib-qat-
> >> module/zlib_qat_module.patch
> >>
> >> diff --git a/common/recipes-core/zlib-qat-module/zlib-qat-module.bb
> >> b/common/recipes-core/zlib-qat-module/zlib-qat-module.bb
> >> new file mode 100644
> >> index 0000000..5ade06e
> >> --- /dev/null
> >> +++ b/common/recipes-core/zlib-qat-module/zlib-qat-module.bb
> >> @@ -0,0 +1,52 @@
> >> +SUMMARY="Zlib QAT_MEM Memory Management Module for Intel Quick
> >> Assist \
> >> +Technology"
> >> +DESCRIPTION="This software acelerates the data compression algorithm \
> >> +in the zlib software library via the Intel QuickAssist Technology \
> >> +implemented on Intel Communications Chipset 89xx Series based
> >> platforms."
> >> +
> >> +HOMEPAGE = "http://zlib.net/"
> >> +SECTION = "libs"
> >> +LICENSE = "Zlib & GPLv2 & BSD"
> >> +
> >> +LIC_FILES_CHKSUM = "file://${WORKDIR}/zlib-
> >> ${PV}/zlib.h;beginline=4;endline=23;md5=94d1b5a40dadd127f3351471727e6
> >> 6a9 \
> >> +			file://${COMMON_LICENSE_DIR}/GPL-
> >> 2.0;md5=801f80980d171dd6425610833a22dbe6 \
> >> +
> >> 	file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a696476
> >> 78acb234cb"
> >> +PV = "1.2.7"
> >> +ZLIB_QAT_VERSION = "0.4.0-011"
> >> +
> >> +PR="r0"
> >> +
> >> +SRC_URI = "http://www.zlib.net/zlib-${PV}.tar.gz;name=zlib \
> >> +	http://downloadmirror.intel.com/20294/eng/zlib-${PV}-
> >> qat.L.${ZLIB_QAT_VERSION}.tar.gz;name=zlib_qat \
> >> +	file://zlib_qat_module.patch"
> >> +
> >> +SRC_URI[zlib.md5sum]="60df6a37c56e7c1366cca812414f7b85"
> >> +SRC_URI[zlib.sha256sum]="fa9c9c8638efb8cb8ef5e4dd5453e455751e1c530
> >> b1595eed466e1be9b7e26c5"
> >> +
> >> +SRC_URI[zlib_qat.md5sum]="88e4140f98d2f9e170bf473f20e1a8d4"
> >>
> >+SRC_URI[zlib_qat.sha256sum]="3c360878127f3930e64640ef5a5822719a5059
> >> 143326bb4c396645ae37b704a6"
> >> +
> >> +S = "${WORKDIR}/zlib-${PV}/contrib/qat/qat_mem"
> >> +
> >> +inherit module
> >> +export KERNEL_SOURCE_ROOT = "${STAGING_KERNEL_DIR}"
> >> +
> >> +do_patch() 	{
> >> +	cd ${WORKDIR}/zlib-${PV}
> >> +	patch -p0  < ${WORKDIR}/zlib-${PV}-
> >> qat.L.${ZLIB_QAT_VERSION}.patch
> >> +
> >> +	cd ${WORKDIR}
> >> +	patch -p1   < ${WORKDIR}/zlib_qat_module.patch
> >> +}
> >> +
> >> +do_compile()    {
> >> +	cd ${S}
> >> +	oe_runmake KERNEL_CC="${KERNEL_CC}"
> >> +}
> >> +
> >> +do_install_append()     {
> >> +	install -m 0755 -d      		${D}${bindir}
> >> +	install -m 0755 ${S}/qat_mem_test       ${D}${bindir}
> >> +}
> >> +
> >> +FILES_${PN} += "${bindir}/qat_mem_test"
> >> diff --git a/common/recipes-core/zlib-qat-module/zlib-qat-
> >> module/zlib_qat_module.patch b/common/recipes-core/zlib-qat-
> >> module/zlib-qat-module/zlib_qat_module.patch
> >> new file mode 100644
> >> index 0000000..a30f8b0
> >> --- /dev/null
> >> +++ b/common/recipes-core/zlib-qat-module/zlib-qat-
> >> module/zlib_qat_modul
> >> +++ e.patch
> >> @@ -0,0 +1,43 @@
> >> +Index: zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/Makefile
> >> +=========================================================
> >> ==========
> >> +--- zlib-qat-module-1.2.7-r0.orig/zlib-1.2.7/contrib/qat/qat_mem/Makefile
> >> 	2012-10-16 13:53:10.258938722 -0700
> >> ++++ zlib-qat-module-1.2.7-r0/zlib-1.2.7/contrib/qat/qat_mem/Makefile
> >> 	2012-10-16 13:59:18.174944864 -0700
> >> +@@ -59,13 +59,10 @@
> >> + #
> >> + #
> >> +
> >> +#########################################################
> >> ##############
> >> +##
> >> +-
> >> + MODULENAME 	:= qat_mem
> >> +-KDIR		:= /lib/modules/$(shell uname -r)/build
> >> ++KDIR		:= $(KERNEL_SOURCE_ROOT)
> >> + PWD		:= $(shell pwd)
> >> +-
> >> +-CC		:= gcc -Wall -imacros /usr/src/kernels/$(shell uname -
> >> r)/include/linux/autoconf.h
> >> +-
> >> ++CC		:= $(KERNEL_CC) -Wall -imacros
> >> $(KERNEL_SOURCE_ROOT)/include/generated/autoconf.h
> >> + ifeq ($(KERNELRELEASE),)
> >> + all:	$(MODULENAME)_test
> >> + all:
> >> +@@ -73,20 +70,15 @@
> >> + else
> >> +   obj-m	:= $(MODULENAME).o
> >> + endif
> >> +-
> >> ++modules_install:
> >> ++	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules_install
> >> + $(MODULENAME)_test: $(MODULENAME)_test.c
> >> + 	$(CC) -g -o $(MODULENAME)_test $(MODULENAME)_test.c
> >> +-
> >> +-
> >> + load:
> >> + 	insmod ./$(MODULENAME).ko
> >> +-
> >> + unload:
> >> + 	rmmod $(MODULENAME)
> >> +-
> >> + test: all
> >> + 	./$(MODULENAME)_test
> >> +-
> >> + clean:
> >> + 	rm -f *.o *.ko Module.symvers modules.order *.mod.c .*.cmd
> >> +$(MODULENAME)_test
> >> +-
> >> --
> >> 1.7.9.5
> 



