Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07EC94C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 19:55:44 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jul 2011 17:55:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,532,1304319600"; d="scan'208";a="26062228"
Received: from unknown (HELO localhost) ([10.255.14.7])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2011 17:55:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 19:55:30 -0500
Message-Id: <56e751579510768cf73f6ed5a04eed0895b18f03.1310689271.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
References: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1310689271.git.tom.zanussi@intel.com>
References: <cover.1310689271.git.tom.zanussi@intel.com>
Subject: [PATCH 2/6] meta-sugarbay: use common .inc files
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
X-List-Received-Date: Fri, 15 Jul 2011 00:55:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have sugarbay.conf use the common-bsp-* .inc files and remove the
open-coded machine settings.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |   22 +++-------------------
 1 files changed, 3 insertions(+), 19 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index ebc6dbc..ed82506 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -9,18 +9,14 @@ PACKAGE_EXTRA_ARCHS = "x86 snb"
 
 BASE_PACKAGE_ARCH="snb"
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
+TARGET_CC_ARCH = "-m64"
 
-KERNEL_IMAGETYPE = "bzImage"
+include ../common/common-bsp-mach.inc
+include ../common/common-bsp-x.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
-PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
-PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
 XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-mouse \
            xf86-input-keyboard \
@@ -30,17 +26,5 @@ XSERVER ?= "xserver-xf86-dri-lite \
            mesa-dri \
            mesa-dri-driver-i965"
 
-SERIAL_CONSOLE = "115200 ttyS0"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
-
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
-
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
-
-TARGET_CC_ARCH = "-m64"
-
 PREFERRED_VERSION_grub ?= "1.98"
-- 
1.7.0.4


