Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E02EDE006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 14:23:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Aug 2011 14:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="39198376"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO localhost)
	([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 18 Aug 2011 14:23:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Aug 2011 14:23:36 -0700
Message-Id: <686ba26ff120fa8155fc38c201d0c0dce943a1d1.1313702539.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313702539.git.dvhart@linux.intel.com>
References: <cover.1313702539.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] n450: decouple from meta-yocto atom-pc machine config
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
X-List-Received-Date: Thu, 18 Aug 2011 21:23:29 -0000

The meta-yocto atom-pc is a more generic BSP than is needed
for the Intel n450. Decouple the n450.conf from the meta-yocto atom-pc.conf.
Add a linux-yocto_3.0.bbappend recipe.

In the process:
o remove MACHINE_FEATURES wifi and add serial
o specify linux-yocto version 3.0
o specify linux-libc-headers-yocto

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/conf/machine/n450.conf                   |   32 +++++++++++++++++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 +++++
 2 files changed, 37 insertions(+), 4 deletions(-)
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index f9cf4f2..888c5d2 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -3,13 +3,37 @@
 
 #@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
 
-require conf/machine/atom-pc.conf
+include conf/machine/include/tune-atom.inc
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.0+git%"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
+PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
+XSERVER ?= "xserver-xf86-dri-lite \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+           xf86-video-intel \
+           mesa-dri-driver-i915"
 
 SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0" 
 APPEND += "console=ttyS0,115200 console=tty0" 
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts n450-audio"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
 
-# Ensure the bsp packages are installed
-MACHINE_EXTRA_RRECOMMENDS += " n450-audio "
+ROOTLESS_X = "1"
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..67eee38
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_n450 = "n450"
+KMACHINE_n450  = "yocto/standard/common-pc/atom-pc"
+
+# The n450 is a single core hypterthreaded CPU
+KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_n450 = "de50707c431ff0d898d7d2ab7609728efe1c3252"
+#SRCREV_meta_pn-linux-yocto_n450 ?= XXXX
-- 
1.7.6


