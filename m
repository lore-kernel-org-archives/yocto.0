Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ECFAE0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:01:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Oct 2012 14:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; d="scan'208";a="236593684"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2012 14:01:08 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Oct 2012 14:02:03 -0700
Message-Id: <4c40eadd86683ae7fdfa74126ace5ae5c16b0167.1350507483.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1350507483.git.kishore.k.bodke@intel.com>
References: <cover.1350507483.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/2] [meta-intel] meta-intel/common: Add new recipe for libcrypto module.
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
X-List-Received-Date: Wed, 17 Oct 2012 21:01:33 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This adds a new recipe to include the Intel Quick Assist
Technology libcrypto Memory Management Module.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 common/recipes-connectivity/openssl-qat-module.bb  |   63 ++++++++++++++++++++
 .../openssl-qat-module/openssl_qat_module.patch    |   43 +++++++++++++
 2 files changed, 106 insertions(+)
 create mode 100644 common/recipes-connectivity/openssl-qat-module.bb
 create mode 100644 common/recipes-connectivity/openssl-qat-module/openssl_qat_module.patch

diff --git a/common/recipes-connectivity/openssl-qat-module.bb b/common/recipes-connectivity/openssl-qat-module.bb
new file mode 100644
index 0000000..cf08213
--- /dev/null
+++ b/common/recipes-connectivity/openssl-qat-module.bb
@@ -0,0 +1,63 @@
+SUMMARY = "libcrypto* (OpenSSL*) QAT_MEM Memory Management Module for Intel Quick Assist Technology"
+DESCRIPTION = "This software adds an engine that accelerates some of the libcrypto algorithms via the \
+		Intel QuickAssist Technology implemented on Intel Communications Chipset 89xx Series \
+		based platforms."
+
+HOMEPAGE = "http://www.openssl.org/"
+SECTION = "libs/network"
+
+LICENSE = "openssl"
+
+LIC_FILES_CHKSUM = "file://${WORKDIR}/openssl-${PV}/LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8"
+
+PV = "1.0.1"
+PR="r0"
+
+OPENSSL_QAT_VERSION = "0.4.0-012"
+
+SRC_URI = " \
+		http://www.openssl.org/source/openssl-${PV}.tar.gz;name=openssl \
+		http://downloadmirror.intel.com/19368/eng/libcrypto-openssl-${PV}-qat.L.${OPENSSL_QAT_VERSION}.tar.gz;name=libcrypto;striplevel=2 \
+		file://openssl_qat_module.patch;striplevel=1 \
+		"
+
+SRC_URI[openssl.md5sum]="134f168bc2a8333f19f81d684841710b"
+SRC_URI[openssl.sha256sum]="4d9f0a594a9a89b28e1a04a9504c04104f6508ee27ad1e0efdd17a7a6dbbeeee"
+
+SRC_URI[libcrypto.md5sum] = "e4e131fa56d3aa1a52b5bdb9f8fe5a69"
+SRC_URI[libcrypto.sha256sum] = "19a80ae6e78548934295d312148e4254c18dabd25e2fd72de5796d8ac15b1cfb"
+
+S = "${WORKDIR}/openssl-${PV}/engines/qat_engine/qat_mem"
+
+export KERNEL_SOURCE_ROOT = "${STAGING_KERNEL_DIR}"
+inherit module
+
+do_patch()     {
+
+	cd ${WORKDIR}/openssl-${PV}
+	patch -p2 < ${WORKDIR}/libcrypto-openssl-${PV}-qat.L.${OPENSSL_QAT_VERSION}.patch
+
+	cd ${WORKDIR}
+	patch -p1 <${WORKDIR}/openssl_qat_module.patch
+
+}
+
+do_compile() 	{
+
+	cd ${S}
+	oe_runmake  KERNEL_CC="${KERNEL_CC}"
+}
+
+do_install_append() 	{
+
+	install -m 0755 -d	${D}${bindir} \
+				${D}${includedir}/engines/qat_engine/qat_mem
+
+	install -m 0755 ${S}/qat_mem_test				${D}${bindir}
+	install -m 0750 ${S}/*.h					${D}${includedir}/engines/qat_engine/qat_mem/
+
+}
+
+FILES_${PN} += "\
+		${bindir}/qat_mem_test \
+		"
diff --git a/common/recipes-connectivity/openssl-qat-module/openssl_qat_module.patch b/common/recipes-connectivity/openssl-qat-module/openssl_qat_module.patch
new file mode 100644
index 0000000..dfed3c0
--- /dev/null
+++ b/common/recipes-connectivity/openssl-qat-module/openssl_qat_module.patch
@@ -0,0 +1,43 @@
+Index: openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/Makefile
+===================================================================
+--- openssl-qat-module-1.0.1-r0.orig/openssl-1.0.1/engines/qat_engine/qat_mem/Makefile	2012-10-17 13:31:27.932376960 -0700
++++ openssl-qat-module-1.0.1-r0/openssl-1.0.1/engines/qat_engine/qat_mem/Makefile	2012-10-17 13:35:40.396389410 -0700
+@@ -9,13 +9,9 @@
+ MODULENAME 	:= qat_mem
+ ### should not need to change stuff below ######################
+ 
+-
+-KDIR		:= /lib/modules/$(shell uname -r)/build
+-#KDIR		:= /exports/linux-2.6.12.2/
++KDIR		:= $(KERNEL_SOURCE_ROOT)
+ PWD		:= $(shell pwd)
+-
+-CC		:= gcc -Wall -imacros /usr/src/kernels/$(shell uname -r)/include/linux/autoconf.h
+-
++CC		:= $(KERNEL_CC) -Wall -imacros $(KERNEL_SOURCE_ROOT)/include/generated/autoconf.h
+ ifeq ($(KERNELRELEASE),)
+ all:	$(MODULENAME)_test
+ all:
+@@ -23,20 +19,15 @@
+ else
+   obj-m	:= $(MODULENAME).o
+ endif
+-
+ $(MODULENAME)_test: $(MODULENAME)_test.c
+ 	$(CC) -g -o $(MODULENAME)_test $(MODULENAME)_test.c
+-
+-
++modules_install:
++	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules_install
+ load:
+ 	insmod ./$(MODULENAME).ko
+-
+ unload:
+ 	rmmod $(MODULENAME)
+-
+ test: all
+ 	./$(MODULENAME)_test.sh
+-
+ clean:
+ 	rm -f *.o *.ko Modules.symvers *.mod.c .*.cmd $(MODULENAME)_test
+-
-- 
1.7.9.5


