Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0BBFE00726
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 08:56:03 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Nov 2011 08:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,533,1315206000"; d="scan'208";a="38824621"
Received: from unknown (HELO localhost) ([10.255.15.232])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Nov 2011 08:56:02 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Fri, 18 Nov 2011 10:59:17 -0600
Message-Id: <947a5a238f31dc5ea1a6e7803c57874884401a71.1321630866.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321630866.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321630866.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321630866.git.tom.zanussi@intel.com>
References: <cover.1321630866.git.tom.zanussi@intel.com>
Subject: [PATCH 09/11] Have n450.conf use the common ia32-base .inc file and remove the open-coded machine settings.
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
X-List-Received-Date: Fri, 18 Nov 2011 16:56:03 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-n450/conf/machine/n450.conf |   39 +++++--------------------------------
 1 files changed, 6 insertions(+), 33 deletions(-)

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index b28f57f..7210da8 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -4,44 +4,17 @@
 #@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
 
 include conf/machine/include/tune-atom.inc
+include conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial"
-
-KERNEL_IMAGETYPE = "bzImage"
-
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto = "3.0%"
-PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
-PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
-PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-XSERVER ?= "xserver-xorg \
-           xserver-xorg-extension-dri \
-           xserver-xorg-extension-dri2 \
-           xserver-xorg-extension-glx \
-           xserver-xorg-extension-extmod \
-           xserver-xorg-extension-dbe \
-           xserver-xorg-module-libint10 \
-           xf86-input-mouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
-           xf86-input-synaptics \
-           xf86-video-intel \
-           mesa-dri-driver-i915"
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_I915} \
+           "
 
 SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0" 
 APPEND += "console=ttyS0,115200 console=tty0" 
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts n450-audio"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
+MACHINE_EXTRA_RRECOMMENDS += "n450-audio"
 
 ROOTLESS_X = "1"
-
-MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
-
-- 
1.7.0.4


