Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web09.2585.1627980846193897504
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 01:54:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="277395548"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="277395548"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 01:54:05 -0700
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="510952233"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 01:54:03 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] Convert to new override syntax
Date: Tue,  3 Aug 2021 17:07:58 +0800
Message-Id: <20210803090759.20953-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Use the convert-overrides.py to convert to new syntax and fixed
some additional changes manually.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 classes/zephyr.bbclass                             |  2 +-
 conf/machine/96b-avenger96.conf                    |  2 +-
 conf/machine/96b-nitrogen.conf                     |  2 +-
 conf/machine/arduino-nano-33-ble.conf              |  2 +-
 conf/machine/include/tune-arc.inc                  |  2 +-
 conf/machine/include/tune-cortexm0.inc             |  8 ++++----
 conf/machine/include/tune-cortexm3.inc             | 10 +++++-----
 conf/machine/include/tune-cortexm4.inc             | 10 +++++-----
 conf/machine/include/tune-iamcu.inc                |  4 ++--
 conf/machine/include/tune-nios2.inc                |  4 ++--
 conf/machine/intel-x86-64.conf                     |  2 +-
 conf/machine/nrf52840dk-nrf52840.conf              |  2 +-
 conf/machine/qemu-cortex-m3.conf                   |  2 +-
 conf/machine/qemu-nios2.conf                       |  4 ++--
 conf/machine/qemu-x86.conf                         |  8 ++++----
 recipes-core/newlib/newlib_%.bbappend              | 10 +++++-----
 recipes-devtools-arc/binutils/binutils-2.26arc.inc |  4 ++--
 .../binutils/binutils-cross-canadian_2.26arc.bb    |  2 +-
 .../binutils/binutils-cross_2.26arc.bb             |  4 ++--
 recipes-devtools-arc/gcc/gcc-6.x.arc.inc           |  4 ++--
 .../gcc/gcc-cross-canadian_6.x.arc.bb              |  8 ++++----
 recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb     |  8 ++++----
 recipes-devtools-arc/gcc/libgcc_6.x.arc.bb         |  6 +++---
 recipes-devtools/gcc/gcc-cross_6.%.bbappend        |  2 +-
 recipes-devtools/gcc/libgcc_6.%.bbappend           |  4 ++--
 recipes-devtools/qemu/qemu_%.bbappend              |  6 +++---
 recipes-kernel/zephyr-kernel/zephyr-coap-client.bb |  2 +-
 recipes-kernel/zephyr-kernel/zephyr-coap-server.bb |  2 +-
 recipes-kernel/zephyr-kernel/zephyr-echo-client.bb |  2 +-
 recipes-kernel/zephyr-kernel/zephyr-http-client.bb |  2 +-
 .../zephyr-kernel/zephyr-kernel-common.inc         | 14 +++++++-------
 .../zephyr-kernel/zephyr-kernel-src-2.5.0.inc      |  2 +-
 .../zephyr-kernel/zephyr-kernel-src-2.6.0.inc      |  2 +-
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb  |  2 +-
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc |  2 +-
 .../zephyr-kernel/zephyr-kernel-test.inc           | 12 ++++++------
 .../zephyr-kernel/zephyr-mqtt-publisher.bb         |  2 +-
 .../zephyr-kernel/zephyr-openthread-echo-client.bb |  4 ++--
 .../zephyr-kernel/zephyr-peripheral-esp.bb         |  2 +-
 .../zephyr-kernel/zephyr-peripheral-hr.bb          |  2 +-
 .../zephyr-kernel/zephyr-websocket-client.bb       |  2 +-
 41 files changed, 88 insertions(+), 88 deletions(-)

diff --git a/classes/zephyr.bbclass b/classes/zephyr.bbclass
index 6fceb04..e1d3185 100644
--- a/classes/zephyr.bbclass
+++ b/classes/zephyr.bbclass
@@ -48,7 +48,7 @@ do_menuconfig[nostamp] = "1"
 do_menuconfig[dirs] = "${B}"
 addtask menuconfig after do_configure
 
-python do_devshell_prepend () {
+python do_devshell:prepend () {
     # Most likely we need to manually edit prj.conf...
     os.chdir(d.getVar('ZEPHYR_SRC_DIR', True))
 }
diff --git a/conf/machine/96b-avenger96.conf b/conf/machine/96b-avenger96.conf
index 7bcfb4a..ae6f972 100644
--- a/conf/machine/96b-avenger96.conf
+++ b/conf/machine/96b-avenger96.conf
@@ -5,4 +5,4 @@
 
 require conf/machine/include/stm32mp1-cortex-m4.inc
 
-ARCH_96b-avenger96 = "arm"
+ARCH:96b-avenger96 = "arm"
diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.conf
index 48f2041..affe9eb 100644
--- a/conf/machine/96b-nitrogen.conf
+++ b/conf/machine/96b-nitrogen.conf
@@ -5,4 +5,4 @@
 
 require conf/machine/include/nrf52.inc
 ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
-ARCH_96b-nitrogen = "arm"
+ARCH:96b-nitrogen = "arm"
diff --git a/conf/machine/arduino-nano-33-ble.conf b/conf/machine/arduino-nano-33-ble.conf
index 18ba056..ebf4155 100644
--- a/conf/machine/arduino-nano-33-ble.conf
+++ b/conf/machine/arduino-nano-33-ble.conf
@@ -5,5 +5,5 @@
 
 require conf/machine/include/nrf52.inc
 ZEPHYR_INHERIT_CLASSES += "zephyr-flash-bossac"
-ARCH_arduino-nano-33-ble = "arm"
+ARCH:arduino-nano-33-ble = "arm"
 
diff --git a/conf/machine/include/tune-arc.inc b/conf/machine/include/tune-arc.inc
index ff841e7..7db88ef 100644
--- a/conf/machine/include/tune-arc.inc
+++ b/conf/machine/include/tune-arc.inc
@@ -2,7 +2,7 @@ DEFAULTTUNE ?= "arc"
 
 TUNE_ARCH = "arc"
 TUNE_PKGARCH = "arc"
-TUNE_FEATURES_tune-arc = "littleendian"
+TUNE_FEATURES:tune-arc = "littleendian"
 TUNE_CCARGS = ""
 
 TUNEVALID[littleendian] = "Little endian mode"
diff --git a/conf/machine/include/tune-cortexm0.inc b/conf/machine/include/tune-cortexm0.inc
index d4f95e4..5067eb2 100644
--- a/conf/machine/include/tune-cortexm0.inc
+++ b/conf/machine/include/tune-cortexm0.inc
@@ -22,10 +22,10 @@ TUNEVALID[armv6m] = "Enable Cortex-M0 specific processor optimizations"
 TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv6m', ' -march=armv6-m', '', d)}"
 MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv6m', 'armv6m:', '' ,d)}"
 
-ARMPKGARCH_tune-cortexm0 = "cortexm0"
-TUNE_FEATURES_tune-cortexm0 = "${TUNE_FEATURES_tune-armv6} cortexm0"
+ARMPKGARCH:tune-cortexm0 = "cortexm0"
+TUNE_FEATURES:tune-cortexm0 = "${TUNE_FEATURES:tune-armv6} cortexm0"
 
-PACKAGE_EXTRA_ARCHS_tune-cortexm0 = "${PACKAGE_EXTRA_ARCHS_tune-armv6m} cortexm0-vfp"
+PACKAGE_EXTRA_ARCHS:tune-cortexm0 = "${PACKAGE_EXTRA_ARCHS:tune-armv6m} cortexm0-vfp"
 
-TUNE_FEATURES_tune-cortexm0 = "armv6m vfp cortexm0 thumb no-thumb-interwork soft"
+TUNE_FEATURES:tune-cortexm0 = "armv6m vfp cortexm0 thumb no-thumb-interwork soft"
 
diff --git a/conf/machine/include/tune-cortexm3.inc b/conf/machine/include/tune-cortexm3.inc
index 3fba827..404e2b7 100644
--- a/conf/machine/include/tune-cortexm3.inc
+++ b/conf/machine/include/tune-cortexm3.inc
@@ -10,12 +10,12 @@ TUNEVALID[armv7m] = "Enable Cortex-M3 specific processor optimizations"
 TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7-m', '', d)}"
 MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
 
-TUNE_PKGARCH_tune-cortexm3 = "cortexm3"
+TUNE_PKGARCH:tune-cortexm3 = "cortexm3"
 
-ARMPKGARCH_tune-cortexm3 = "armv7m"
-PACKAGE_EXTRA_ARCHS_tune-cortexm3 ="cortexm3"
+ARMPKGARCH:tune-cortexm3 = "armv7m"
+PACKAGE_EXTRA_ARCHS:tune-cortexm3 ="cortexm3"
 
-TUNE_FEATURES_tune-cortexm3 = "armv7m vfp cortexm3"
-PACKAGE_EXTRA_ARCHS_tune-cortexm3 = "${PACKAGE_EXTRA_ARCHS_tune-armv7at} armv7m-vfp"
+TUNE_FEATURES:tune-cortexm3 = "armv7m vfp cortexm3"
+PACKAGE_EXTRA_ARCHS:tune-cortexm3 = "${PACKAGE_EXTRA_ARCHS:tune-armv7at} armv7m-vfp"
 
 TUNE_CCARGS_MFLOAT = "soft"
diff --git a/conf/machine/include/tune-cortexm4.inc b/conf/machine/include/tune-cortexm4.inc
index a823b6b..b3092d8 100644
--- a/conf/machine/include/tune-cortexm4.inc
+++ b/conf/machine/include/tune-cortexm4.inc
@@ -10,10 +10,10 @@ TUNEVALID[armv7m] = "Enable Cortex-M4 specific processor optimizations"
 TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7e-m', '', d)}"
 MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
 
-TUNE_PKGARCH_tune-cortexm4 = "cortexm4"
+TUNE_PKGARCH:tune-cortexm4 = "cortexm4"
 
-ARMPKGARCH_tune-cortexm4 = "armv7m"
-PACKAGE_EXTRA_ARCHS_tune-cortexm4 ="cortexm4"
+ARMPKGARCH:tune-cortexm4 = "armv7m"
+PACKAGE_EXTRA_ARCHS:tune-cortexm4 ="cortexm4"
 
-TUNE_FEATURES_tune-cortexm4 = "armv7m vfp cortexm4"
-PACKAGE_EXTRA_ARCHS_tune-cortexm4 = "${PACKAGE_EXTRA_ARCHS_tune-armv7at} armv7m-vfp armv7m"
+TUNE_FEATURES:tune-cortexm4 = "armv7m vfp cortexm4"
+PACKAGE_EXTRA_ARCHS:tune-cortexm4 = "${PACKAGE_EXTRA_ARCHS:tune-armv7at} armv7m-vfp armv7m"
diff --git a/conf/machine/include/tune-iamcu.inc b/conf/machine/include/tune-iamcu.inc
index 20a93a6..827d39b 100644
--- a/conf/machine/include/tune-iamcu.inc
+++ b/conf/machine/include/tune-iamcu.inc
@@ -3,9 +3,9 @@ DEFAULTTUNE ?= "iamcu"
 TARGET_OS_iamcu = "elfiamcu"
 TARGET_ARCH = "i586"
 
-TUNE_FEATURES_tune-iamcu = "iamcu"
+TUNE_FEATURES:tune-iamcu = "iamcu"
 TUNE_CCARGS = "-miamcu -m32"
 TUNE_ARCH = "i586"
 TUNEVALID[iamcu] = "Intel MCU"
 
-PACKAGE_EXTRA_ARCHS_tune-iamcu = "iamcu"
+PACKAGE_EXTRA_ARCHS:tune-iamcu = "iamcu"
diff --git a/conf/machine/include/tune-nios2.inc b/conf/machine/include/tune-nios2.inc
index e8662eb..391727e 100644
--- a/conf/machine/include/tune-nios2.inc
+++ b/conf/machine/include/tune-nios2.inc
@@ -4,9 +4,9 @@ DEFAULTTUNE ?= "nios2"
 
 TUNE_ARCH = "nios2"
 TUNE_PKGARCH = "nios2"
-TUNE_FEATURES_tune-nios2 = "nios2"
+TUNE_FEATURES:tune-nios2 = "nios2"
 TUNE_CCARGS = ""
 
 TUNEVALID[nios2] = "Altera Nios2"
 
-PACKAGE_EXTRA_ARCHS_tune-nios2 = "nios2"
+PACKAGE_EXTRA_ARCHS:tune-nios2 = "nios2"
diff --git a/conf/machine/intel-x86-64.conf b/conf/machine/intel-x86-64.conf
index 2935cff..74e8f6e 100644
--- a/conf/machine/intel-x86-64.conf
+++ b/conf/machine/intel-x86-64.conf
@@ -4,7 +4,7 @@
 
 require conf/machine/include/tune-corei7-common.inc
 
-ARCH_intel-x86-64 = "x86"
+ARCH:intel-x86-64 = "x86"
 
 # Supported Boards:
 # ZEPHYR_BOARD ?= "acrn"
diff --git a/conf/machine/nrf52840dk-nrf52840.conf b/conf/machine/nrf52840dk-nrf52840.conf
index c5be5db..258aa7a 100644
--- a/conf/machine/nrf52840dk-nrf52840.conf
+++ b/conf/machine/nrf52840dk-nrf52840.conf
@@ -5,4 +5,4 @@
 
 require conf/machine/include/nrf52.inc
 ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
-ARCH_nrf52840dk-nrf52840 = "arm"
+ARCH:nrf52840dk-nrf52840 = "arm"
diff --git a/conf/machine/qemu-cortex-m3.conf b/conf/machine/qemu-cortex-m3.conf
index 3a50796..835a775 100644
--- a/conf/machine/qemu-cortex-m3.conf
+++ b/conf/machine/qemu-cortex-m3.conf
@@ -14,4 +14,4 @@ QB_OPT_APPEND = "-nographic -vga none"
 QB_CPU = "-cpu cortex-m3"
 QB_RNG = ""
 
-ARCH_qemu-cortex-m3 = "arm"
+ARCH:qemu-cortex-m3 = "arm"
diff --git a/conf/machine/qemu-nios2.conf b/conf/machine/qemu-nios2.conf
index ab8b366..48ed3e4 100644
--- a/conf/machine/qemu-nios2.conf
+++ b/conf/machine/qemu-nios2.conf
@@ -1,6 +1,6 @@
 #@TYPE: Machine
 #@NAME: qemu-nios2
-#@DESCRIPTION: Machine for Zephyr BOARD qemu_nios2
+#@DESCRIPTION: Machine for Zephyr BOARD qemu:nios2
 
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-nios2.inc
@@ -13,4 +13,4 @@ QB_MACHINE = "-machine altera_10m50_zephyr"
 QB_OPT_APPEND = "-nographic"
 QB_CPU = "-cpu nios2"
 
-ARCH_qemu-nios2 = "nios2"
+ARCH:qemu-nios2 = "nios2"
diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
index 85b3f0d..347d10d 100644
--- a/conf/machine/qemu-x86.conf
+++ b/conf/machine/qemu-x86.conf
@@ -1,6 +1,6 @@
 #@TYPE: Machine
 #@NAME: qemu-x86
-#@DESCRIPTION: Machine for Zephyr BOARD qemu_x86
+#@DESCRIPTION: Machine for Zephyr BOARD qemu:x86
 
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-i586.inc
@@ -11,7 +11,7 @@ ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 QB_SYSTEM_NAME = "qemu-system-i386"
 QB_MACHINE = "-machine type=pc-q35-2.10"
 QB_OPT_APPEND = "-nographic -no-acpi"
-QB_CPU_x86 = "-cpu qemu32,+nx,+pae"
-QB_CPU_KVM_x86 = "-cpu kvm32"
+QB_CPU:x86 = "-cpu qemu32,+nx,+pae"
+QB_CPU_KVM:x86 = "-cpu kvm32"
 
-ARCH_qemu-x86 = "x86"
+ARCH:qemu-x86 = "x86"
diff --git a/recipes-core/newlib/newlib_%.bbappend b/recipes-core/newlib/newlib_%.bbappend
index 37ff961..dfecb99 100644
--- a/recipes-core/newlib/newlib_%.bbappend
+++ b/recipes-core/newlib/newlib_%.bbappend
@@ -3,7 +3,7 @@
 # ARC specific
 #
 ########################################################################
-LIC_FILES_CHKSUM_arc = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+LIC_FILES_CHKSUM:arc = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
                     file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
                     file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
                     file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674 \
@@ -12,11 +12,11 @@ LIC_FILES_CHKSUM_arc = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
                     file://newlib/libc/sys/linux/linuxthreads/LICENSE;md5=73640207fbc79b198c7ffd4ad4d97aa0"
 
 #Tag arc-2016.03
-SRCREV_arc = "e4da0f88abe8dd2a0b947bcf7cb8b3736ab94f33"
-SRC_URI_arc = "git://github.com/foss-for-synopsys-dwc-arc-processors/newlib.git;branch=arc-2.3"
-S_arc  = "${WORKDIR}/git"
+SRCREV:arc = "e4da0f88abe8dd2a0b947bcf7cb8b3736ab94f33"
+SRC_URI:arc = "git://github.com/foss-for-synopsys-dwc-arc-processors/newlib.git;branch=arc-2.3"
+S:arc  = "${WORKDIR}/git"
 
 # ERROR: QA Issue: Architecture did not match (195 to 93)
-INSANE_SKIP_${PN}_arc += " arch "
+INSANE_SKIP:${PN}:arc += " arch "
 
 
diff --git a/recipes-devtools-arc/binutils/binutils-2.26arc.inc b/recipes-devtools-arc/binutils/binutils-2.26arc.inc
index c0c575b..bfe0960 100644
--- a/recipes-devtools-arc/binutils/binutils-2.26arc.inc
+++ b/recipes-devtools-arc/binutils/binutils-2.26arc.inc
@@ -26,12 +26,12 @@ SRC_URI = "\
 
 S  = "${WORKDIR}/git"
 
-do_configure_prepend () {
+do_configure:prepend () {
         rm -rf ${S}/gdb ${S}/libdecnumber ${S}/readline ${S}/sim
 }
 
 CONFIG_SHELL = "/bin/bash"
 
-sysroot_stage_all_append() {
+sysroot_stage_all:append() {
 	sysroot_stage_dir ${D}${exec_prefix}/extlib ${SYSROOT_DESTDIR}${exec_prefix}/extlib
 }
diff --git a/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb b/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
index 24f35fe..88f0ad7 100644
--- a/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
+++ b/recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
@@ -2,6 +2,6 @@ require recipes-devtools/binutils/binutils.inc
 require recipes-devtools-arc/binutils/binutils-2.26arc.inc
 require recipes-devtools/binutils/binutils-cross-canadian.inc
 
-do_install_append () {
+do_install:append () {
 	rm -f ${D}/${libdir}/../lib/libiberty*
 }
diff --git a/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb b/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
index ab266dc..3d94fea 100644
--- a/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
+++ b/recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
@@ -2,7 +2,7 @@ require recipes-devtools/binutils/binutils.inc
 require binutils-2.26arc.inc
 require recipes-devtools/binutils/binutils-cross.inc
 
-SRC_URI_remove = "file://no-tooldirpaths.patch"
-SRC_URI_remove = "file://0002-binutils-cross-Do-not-generate-linker-script-directo.patch"
+SRC_URI:remove = "file://no-tooldirpaths.patch"
+SRC_URI:remove = "file://0002-binutils-cross-Do-not-generate-linker-script-directo.patch"
 
 #COMPATIBLE_MACHINE = "arc"
diff --git a/recipes-devtools-arc/gcc/gcc-6.x.arc.inc b/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
index 6324c50..2dfab4d 100644
--- a/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
+++ b/recipes-devtools-arc/gcc/gcc-6.x.arc.inc
@@ -73,9 +73,9 @@ EXTRA_OECONF_INTERMEDIATE = "\
     --disable-libssp \
 "
 
-EXTRA_OECONF_append_libc-uclibc = " --disable-decimal-float "
+EXTRA_OECONF:append_libc-uclibc = " --disable-decimal-float "
 
-EXTRA_OECONF_append_arc = ' --with-pkgversion="ARCompact/ARCv2 ISA elf32 toolchain ${SRCREV}"'
+EXTRA_OECONF:append:arc = ' --with-pkgversion="ARCompact/ARCv2 ISA elf32 toolchain ${SRCREV}"'
 
 EXTRA_OECONF_PATHS = "\
     --with-gxx-include-dir=${STAGING_DIR_TARGET}${target_includedir}/c++/${BINV} \
diff --git a/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb b/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
index 39f837f..bc4a3b3 100644
--- a/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
+++ b/recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
@@ -1,8 +1,8 @@
 require recipes-devtools-arc/gcc/gcc-${PV}.inc
 require recipes-devtools/gcc/gcc-cross-canadian.inc
 
-EXTRA_OECONF_append_libc-baremetal = " --without-headers"
-EXTRA_OECONF_remove_libc-baremetal = "--with-sysroot=/not/exist"
-EXTRA_OECONF_remove_libc-baremetal = "--with-build-sysroot=${STAGING_DIR_TARGET}"
-EXTRA_OECONF_append_libc-baremetal = " --enable-plugin "
+EXTRA_OECONF:append:libc-baremetal = " --without-headers"
+EXTRA_OECONF:remove:libc-baremetal = "--with-sysroot=/not/exist"
+EXTRA_OECONF:remove:libc-baremetal = "--with-build-sysroot=${STAGING_DIR_TARGET}"
+EXTRA_OECONF:append:libc-baremetal = " --enable-plugin "
 
diff --git a/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb b/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb
index 911a640..6cf71c6 100644
--- a/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb	
+++ b/recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb	
@@ -1,10 +1,10 @@
 require recipes-devtools-arc/gcc/gcc-6.x.arc.inc
 require recipes-devtools/gcc/gcc-cross.inc
 
-DEPENDS_remove_libc-baremetal := "virtual/${TARGET_PREFIX}libc-for-gcc"
-EXTRA_OECONF_append_libc-baremetal = " --without-headers"
-EXTRA_OECONF_remove_libc-baremetal = "--with-sysroot=/not/exist"
-EXTRA_OECONF_remove_libc-baremetal = "--enable-threads=posix"
+DEPENDS:remove:libc-baremetal := "virtual/${TARGET_PREFIX}libc-for-gcc"
+EXTRA_OECONF:append:libc-baremetal = " --without-headers"
+EXTRA_OECONF:remove:libc-baremetal = "--with-sysroot=/not/exist"
+EXTRA_OECONF:remove:libc-baremetal = "--enable-threads=posix"
 
 #COMPATIBLE_MACHINE = "arc"
 
diff --git a/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb b/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
index 4cc4833..2ad8d34 100644
--- a/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
+++ b/recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
@@ -4,11 +4,11 @@ require recipes-devtools/gcc/libgcc.inc
 INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 #COMPATIBLE_MACHINE = "arc"
 
-EXTRA_OECONF_append_arc = " --disable-multilib"
+EXTRA_OECONF:append:arc = " --disable-multilib"
 #EXTRA_OECONF_append_arc = " --enable-multilib"
 
 # ERROR: QA Issue: Architecture did not match (195 to 93) 
-INSANE_SKIP_${PN}-dev += "arch"
+INSANE_SKIP:${PN}-dev += "arch"
 
 # ERROR: QA Issue: non -staticdev package contains static .a library
-INSANE_SKIP_${PN}-dev += "staticdev"
+INSANE_SKIP:${PN}-dev += "staticdev"
diff --git a/recipes-devtools/gcc/gcc-cross_6.%.bbappend b/recipes-devtools/gcc/gcc-cross_6.%.bbappend
index 0bf8c24..2b2c713 100644
--- a/recipes-devtools/gcc/gcc-cross_6.%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross_6.%.bbappend
@@ -1 +1 @@
-EXTRA_OECONF_append_armv7m = " --with-arch=armv7-m --with-mode=thumb "
+EXTRA_OECONF:append:armv7m = " --with-arch=armv7-m --with-mode=thumb "
diff --git a/recipes-devtools/gcc/libgcc_6.%.bbappend b/recipes-devtools/gcc/libgcc_6.%.bbappend
index 5c3fd1f..80bb46c 100644
--- a/recipes-devtools/gcc/libgcc_6.%.bbappend
+++ b/recipes-devtools/gcc/libgcc_6.%.bbappend
@@ -1,3 +1,3 @@
-EXTRA_OECONF_remove =   "--enable_multilib"
-EXTRA_OECONF_append =   " --disable-multilib"
+EXTRA_OECONF:remove =   "--enable_multilib"
+EXTRA_OECONF:append =   " --disable-multilib"
 
diff --git a/recipes-devtools/qemu/qemu_%.bbappend b/recipes-devtools/qemu/qemu_%.bbappend
index 9f5a981..4f8cc05 100644
--- a/recipes-devtools/qemu/qemu_%.bbappend
+++ b/recipes-devtools/qemu/qemu_%.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 QEMU_TARGETS = ""
 
@@ -6,8 +6,8 @@ QEMU_TARGETS = ""
 #      file://nios2-add-support.patch \
 #      "
 
-EXTRA_OECONF_remove = "--target-list"
+EXTRA_OECONF:remove = "--target-list"
 
 #QEMUS_BUILT = "arm-softmmu i386-softmmu nios2-softmmu"
 QEMUS_BUILT = "arm-softmmu i386-softmmu"
-EXTRA_OECONF_append = " --target-list="${QEMUS_BUILT}""
+EXTRA_OECONF:append = " --target-list="${QEMUS_BUILT}""
diff --git a/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb b/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb
index 4140c0f..1c79dbe 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-coap-client.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/coap_client"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/mbedtls"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb b/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb
index f7d75c0..7100f96 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/coap_server"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/mbedtls"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb b/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
index c17e1e7..e7fcaab 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-echo-client.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/echo_client"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/mbedtls"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-http-client.bb b/recipes-kernel/zephyr-kernel/zephyr-http-client.bb
index cf3c322..d06ad37 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-http-client.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-http-client.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/http_client"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/mbedtls"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 7d44b97..5ae7504 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -27,19 +27,19 @@ EXTRA_OECMAKE = "\
     "
 
 ZEPHYR_MODULES = ""
-ZEPHYR_MODULES_append_arm = "\;${S}/modules/cmsis"
-ZEPHYR_MODULES_append_nordic = "\;${S}/modules/hal/nordic"
-ZEPHYR_MODULES_append_stm32 = "\;${S}/modules/hal/stm32"
-ZEPHYR_MODULES_append_openamp = "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
+ZEPHYR_MODULES:append:arm = "\;${S}/modules/cmsis"
+ZEPHYR_MODULES:append:nordic = "\;${S}/modules/hal/nordic"
+ZEPHYR_MODULES:append:stm32 = "\;${S}/modules/hal/stm32"
+ZEPHYR_MODULES:append:openamp = "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
 
-EXTRA_OECMAKE_append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
+EXTRA_OECMAKE:append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
 
 export ZEPHYR_BASE="${S}"
 
 DEPENDS += "gperf-native python3-pyelftools-native python3-pyyaml-native python3-pykwalify-native"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
-DEPENDS_append_qemuall = " qemu-native qemu-helper-native"
+DEPENDS:append:qemuall = " qemu-native qemu-helper-native"
 
 # The makefiles are explicit about the flags they want, so don't unset
 # them so zephyr flags actually get used.
@@ -61,7 +61,7 @@ OE_TERMINAL_EXPORTS += "ZEPHYR_GCC_VARIANT"
 
 IMAGE_FSTYPES = "elf bin"
 
-do_configure_prepend() {
+do_configure:prepend() {
     # Zephyr expects CPPFLAGS as cmake argument as and ignores env variables.
     unset CPPFLAGS
 }
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
index 35bafdf..be75362 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
@@ -12,6 +12,6 @@ SRCREV_mbedtls = "24d84ecff195fb15c889d9046e44e4804d626c67"
 ZEPHYR_BRANCH = "main"
 PV = "2.5.0+git${SRCPV}"
 
-SRC_URI_append = " file://0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch \
+SRC_URI:append = " file://0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch \
                     file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
                     "
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
index 091c057..63665bf 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
@@ -12,7 +12,7 @@ SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
 ZEPHYR_BRANCH = "v2.6-branch"
 PV = "2.6.0+git${SRCPV}"
 
-SRC_URI_append = " file://0001-cmake-add-yocto-toolchain.patch \
+SRC_URI:append = " file://0001-cmake-add-yocto-toolchain.patch \
                     file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
                     file://arduino-nano-33-ble-storage-partition.patch \
                     "
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb
index 210cfa7..92d277d 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb
@@ -14,6 +14,6 @@ do_install () {
 }
 
 PACKAGES = "${PN}"
-FILES_${PN} = "/usr/src/zephyr"
+FILES:${PN} = "/usr/src/zephyr"
 
 SYSROOT_DIRS += "/usr/src/zephyr"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index a0004ed..950966e 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -6,7 +6,7 @@ inherit cmake
 # This file might be included from other places (like other layers) and not
 # having an explicit path to the patches directory, will make bitbake fail to
 # find the patch(es) in SRC_URI.
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI = "\
     git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=${ZEPHYR_BRANCH};name=default \
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index 78747f9..f970225 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -1,21 +1,21 @@
-ZEPHYRTESTS_remove = "fifo fpu_sharing lifo mbox mem_heap mem_pool \
+ZEPHYRTESTS:remove = "fifo fpu_sharing lifo mbox mem_heap mem_pool \
     mem_protect mem_slab msgq mutex pipe profiling sched semaphore \
     stack threads tickless timer workq"
 
 # Exclude tests which does not build for various reasons
-ZEPHYRTESTS_remove = "gen_isr_table spinlock smp mp"
+ZEPHYRTESTS:remove = "gen_isr_table spinlock smp mp"
 
 # test_context will fail because QEMU for ARM does not emulate CortexM3 BASEPRI register
-#ZEPHYRTESTS_remove_arm += ""
+#ZEPHYRTESTS:remove:arm += ""
 
 # test_critical never finishes in an unpatched QEMU either
-#ZEPHYRTESTS_remove_arm += ""
+#ZEPHYRTESTS:remove:arm += ""
 
 #Remove ARM specific tests
-#ZEPHYRTESTS_remove_x86 += ""
+#ZEPHYRTESTS:remove:x86 += ""
 
 #Remove tests not intended for Nios2
-#ZEPHYRTESTS_remove_nios2 += ""
+#ZEPHYRTESTS:remove:nios2 += ""
 
 # List of all available kernel tests
 ZEPHYRTESTS = " \
diff --git a/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb b/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb
index b4e3067..02b3c16 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-mqtt-publisher.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/net/mqtt_publisher"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/mbedtls"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb b/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb
index 49f5565..88922b8 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-openthread-echo-client.bb
@@ -2,8 +2,8 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/echo_client"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/openthread"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/openthread"
 
 EXTRA_OECMAKE += "-DOVERLAY_CONFIG=overlay-ot.conf"
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
index 8be90d1..045ea36 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/bluetooth/peripheral_esp"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/crypto/tinycrypt"
+ZEPHYR_MODULES:append = "\;${S}/modules/crypto/tinycrypt"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb b/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb
index e6ef7b8..64fd0ec 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/bluetooth/peripheral_hr"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/crypto/tinycrypt"
+ZEPHYR_MODULES:append = "\;${S}/modules/crypto/tinycrypt"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb b/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb
index 428f75e..85f2cda 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb
@@ -2,4 +2,4 @@ include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/websocket_client"
 
-ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
+ZEPHYR_MODULES:append = "\;${S}/modules/lib/mbedtls"
-- 
2.17.1

