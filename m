Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C232E0044D
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 15:41:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Mar 2012 15:41:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="80135350"
Received: from unknown (HELO localhost) ([10.255.15.248])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Mar 2012 15:41:26 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 21 Mar 2012 15:40:38 -0700
Message-Id: <92ed1cba3baa9b659f2c5009de6110b42ea70791.1332369608.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH][meta-intel/common] efilinux: Add efilinux 1.0 and gnu-efi
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
X-List-Received-Date: Wed, 21 Mar 2012 22:41:27 -0000

efilinux is a UEFI OS loader. It was created as a reference implementation with
the aim of being well documented and containing well written source code.

efilinux is lightweight and convenient as a tool to debug misbehaving UEFI
systems.

Thanks to Paul Eggleton for is initial set of recipes from which these were
based.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Paul Eggleton <paul.eggleton@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Kishore K Bodke <kishore.k.bodke@intel.com>
---
 common/recipes-bsp/efilinux/efilinux_1.0.bb        |   28 +++++++++++++++++
 .../gnu-efi/gnu-efi/cross-compile-support.patch    |   31 ++++++++++++++++++
 .../gnu-efi/gnu-efi/parallel-make.patch            |   22 +++++++++++++
 common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb         |   33 ++++++++++++++++++++
 4 files changed, 114 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-bsp/efilinux/efilinux_1.0.bb
 create mode 100644 common/recipes-bsp/gnu-efi/gnu-efi/cross-compile-support.patch
 create mode 100644 common/recipes-bsp/gnu-efi/gnu-efi/parallel-make.patch
 create mode 100644 common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb

diff --git a/common/recipes-bsp/efilinux/efilinux_1.0.bb b/common/recipes-bsp/efilinux/efilinux_1.0.bb
new file mode 100644
index 0000000..2a7bf6b
--- /dev/null
+++ b/common/recipes-bsp/efilinux/efilinux_1.0.bb
@@ -0,0 +1,28 @@
+DESCRIPTION = "A UEFI OS loader"
+LICENSE = "efilinux"
+LIC_FILES_CHKSUM = "file://efilinux.h;beginline=5;endline=31;md5=2316abda893ef24e6cd55cef33aa0edd"
+
+DEPENDS = "gnu-efi"
+
+inherit deploy
+
+SRCREV = "75b62111f83dab433e901c1a7b0f05e058aa29de"
+PV = "1.0+git${SRCPV}"
+PR = "r0"
+
+SRC_URI = "git://git.kernel.org/pub/scm/boot/efilinux/efilinux.git"
+
+S = "${WORKDIR}/git"
+
+COMPATIBLE_HOST = '(x86_64|i.86).*-(linux|freebsd.*)'
+
+EXTRA_OEMAKE = "INCDIR=${STAGING_INCDIR} LIBDIR=${STAGING_LIBDIR}"
+
+# syslinux uses $LD for linking, strip `-Wl,' so it can work
+export LDFLAGS = "`echo $LDFLAGS | sed 's/-Wl,//g'`"
+
+do_deploy () {
+        install ${S}/efilinux.efi ${DEPLOYDIR}/efilinux.efi
+}
+addtask deploy before do_build after do_compile
+
diff --git a/common/recipes-bsp/gnu-efi/gnu-efi/cross-compile-support.patch b/common/recipes-bsp/gnu-efi/gnu-efi/cross-compile-support.patch
new file mode 100644
index 0000000..221f80e
--- /dev/null
+++ b/common/recipes-bsp/gnu-efi/gnu-efi/cross-compile-support.patch
@@ -0,0 +1,31 @@
+Add cross compile support
+
+Upstream-Status: Submitted [Maintainer directly]
+
+All the user to specify the build variables in the environment.
+
+Signed-off-by: Darren Hart <dvhart@Linux.intel.com>
+
+Index: gnu-efi-3.0/Make.defaults
+===================================================================
+--- gnu-efi-3.0.orig/Make.defaults
++++ gnu-efi-3.0/Make.defaults
+@@ -54,12 +55,12 @@ LDFLAGS	   = -nostdlib
+ INSTALL	   = install
+ prefix     = /usr/bin/
+ 
+-CC            = $(prefix)gcc
+-AS            = $(prefix)as
+-LD            = $(prefix)ld
+-AR            = $(prefix)ar
+-RANLIB        = $(prefix)ranlib
+-OBJCOPY       = $(prefix)objcopy
++CC            := $(prefix)gcc
++AS            := $(prefix)as
++LD            := $(prefix)ld
++AR            := $(prefix)ar
++RANLIB        := $(prefix)ranlib
++OBJCOPY       := $(prefix)objcopy
+ 
+ ifeq ($(ARCH),ia64)
+   CFLAGS += -mfixed-range=f32-f127
diff --git a/common/recipes-bsp/gnu-efi/gnu-efi/parallel-make.patch b/common/recipes-bsp/gnu-efi/gnu-efi/parallel-make.patch
new file mode 100644
index 0000000..27c94e8
--- /dev/null
+++ b/common/recipes-bsp/gnu-efi/gnu-efi/parallel-make.patch
@@ -0,0 +1,22 @@
+Fix parallel make failure
+
+Upstream-Status: Submitted [Maintainer directly]
+
+Add a missing dependency which resulted in a race leading to failure
+on larger values of -j.
+
+Signed-off-by: Darren Hart <dvhart@linux.intel.com>
+
+Index: gnu-efi-3.0/Makefile
+===================================================================
+--- gnu-efi-3.0.orig/Makefile
++++ gnu-efi-3.0/Makefile
+@@ -42,6 +42,8 @@ include $(SRCDIR)/Make.defaults
+ 
+ SUBDIRS = lib gnuefi inc apps
+ 
++gnuefi: lib
++
+ all:	check_gcc $(SUBDIRS)
+ 
+ $(SUBDIRS):
diff --git a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
new file mode 100644
index 0000000..045756f
--- /dev/null
+++ b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
@@ -0,0 +1,33 @@
+SUMMARY = "Libraries for producing EFI binaries"
+HOMEPAGE = "http://sourceforge.net/projects/gnu-efi/"
+SECTION = "devel"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://debian/copyright;md5=5fb358a180f484b285b0d99acdc29666"
+
+PR = "r2"
+
+SRCREV = "74"
+
+SRC_URI = "http://downloads.sourceforge.net/gnu-efi/gnu-efi_3.0m.orig.tar.gz \
+           file://cross-compile-support.patch \
+	   file://parallel-make.patch \
+          "
+
+S = "${WORKDIR}/gnu-efi-3.0"
+
+def gnu_efi_arch(d):
+	import re
+	tarch = d.getVar("TARGET_ARCH", True)
+	if re.match("i[3456789]86", tarch):
+		return "ia32"
+	return tarch
+
+EXTRA_OEMAKE = "'ARCH=${@gnu_efi_arch(d)}' 'CC=${CC}' 'AS=${AS}' 'LD=${LD}' 'AR=${AR}' \
+                'RANLIB=${RANLIB}' 'OBJCOPY=${OBJCOPY}' \
+                "
+
+do_install() {
+    oe_runmake install INSTALLROOT="${D}${prefix}"
+}
+
+FILES_${PN} += "${libdir}/*.lds"
-- 
1.7.6.5


