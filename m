Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF63EE00344
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 21:37:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Aug 2012 21:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,309,1344236400"; d="scan'208";a="184741039"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by azsmga001.ch.intel.com with ESMTP; 24 Aug 2012 21:37:09 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2012 23:36:45 -0500
Message-Id: <d3c52cc5225d1ef009f3c0a5914d908304182dda.1345868069.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <a4c4b0f81b4facca97c9183e7df3664030464e92.1345868069.git.tom.zanussi@intel.com>
References: <a4c4b0f81b4facca97c9183e7df3664030464e92.1345868069.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1345868069.git.tom.zanussi@intel.com>
References: <cover.1345868069.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4] ia32-base.inc: remove
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
X-List-Received-Date: Sat, 25 Aug 2012 04:37:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This has been moved to oe-core, so remove it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc | 58 --------------------------------------
 1 file changed, 58 deletions(-)
 delete mode 100644 conf/machine/include/ia32-base.inc

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
deleted file mode 100644
index af583ae..0000000
--- a/conf/machine/include/ia32-base.inc
+++ /dev/null
@@ -1,58 +0,0 @@
-#
-# base machine settings for ia32-architecture BSPs
-#
-
-#
-# common settings for Intel-based machines
-#
-MACHINE_FEATURES += "screen keyboard pci usbhost ext2 ext3 x86 \
-                     acpi serial usbgadget alsa"
-
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules eee-acpi-scripts"
-MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub"
-
-IMAGE_FSTYPES += "ext3 cpio.gz live"
-
-KERNEL_IMAGETYPE ?= "bzImage"
-
-SERIAL_CONSOLE ?= "115200 ttyS0"
-
-#
-# glibc-related variables
-#
-GLIBC_ADDONS ?= "nptl"
-
-#
-# kernel-related variables
-#
-PREFERRED_PROVIDER_virtual/kernel ??= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ??= "3.0%"
-
-#
-# XSERVER subcomponents, used to build the XSERVER variable
-#
-XSERVER_IA32_BASE = "xserver-xorg \
-           xf86-input-mouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
-           xf86-input-synaptics \
-           mesa-dri \
-           "
-
-XSERVER_IA32_EXT = "xserver-xorg-extension-dri \
-           xserver-xorg-extension-dri2 \
-           xserver-xorg-extension-glx \
-           xserver-xorg-extension-extmod \
-           xserver-xorg-extension-dbe \
-           xserver-xorg-module-libint10 \
-           "
-
-XSERVER_IA32_I915 = "xf86-video-intel \
-           mesa-dri-driver-i915 \
-           "
-
-XSERVER_IA32_I965 = "xf86-video-intel \
-           mesa-dri-driver-i965 \
-           "
-
-XSERVER_IA32_VESA = "xf86-video-vesa"
-- 
1.7.11.4


