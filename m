Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 432CA4C80BEE
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 19:55:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Jul 2011 17:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,532,1304319600"; d="scan'208";a="27439450"
Received: from unknown (HELO localhost) ([10.255.14.7])
	by azsmga001.ch.intel.com with ESMTP; 14 Jul 2011 17:55:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 19:55:31 -0500
Message-Id: <87263da1d34a3d949f9b5e176144c6d78974096a.1310689271.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
References: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1310689271.git.tom.zanussi@intel.com>
References: <cover.1310689271.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] meta-crownbay: use common .inc files
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
X-List-Received-Date: Fri, 15 Jul 2011 00:55:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have crownbay.conf and crownbay-noemgd.conf use the common-bsp-* .inc
files and remove the open-coded machine settings.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |   19 ++-----------------
 meta-crownbay/conf/machine/crownbay.conf        |   19 ++-----------------
 2 files changed, 4 insertions(+), 34 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index cc0b2eb..5abdd3d 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -8,29 +8,14 @@ TARGET_ARCH = "i586"
 
 include conf/machine/include/tune-atom.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
-
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
            xf86-input-evdev \
            xf86-input-synaptics \
            xf86-video-vesa"
-
-SERIAL_CONSOLE = "115200 ttyS0"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
-
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index c66b859..8469011 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -8,17 +8,11 @@ TARGET_ARCH = "i586"
 
 include conf/machine/include/tune-atom.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
-
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
            emgd-driver-bin \
            xf86-input-mouse \
@@ -29,12 +23,3 @@ XSERVER ?= "xserver-xf86-dri-lite \
 
 PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.6"
-
-SERIAL_CONSOLE = "115200 ttyS0"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
-
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
-- 
1.7.0.4


