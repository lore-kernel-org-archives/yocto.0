Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD82AE00727
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 14:44:30 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Nov 2011 14:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,549,1315206000"; d="scan'208";a="87883768"
Received: from unknown (HELO localhost) ([10.255.15.246])
	by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2011 14:44:30 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Mon, 21 Nov 2011 16:44:19 -0600
Message-Id: <9e032536dc895ee5f0c577bf00aa9d7d52b8afa3.1321915193.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321915192.git.tom.zanussi@intel.com>
References: <cover.1321915192.git.tom.zanussi@intel.com>
Subject: [PATCH 03/17] ia32-base.inc: new include file
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
X-List-Received-Date: Mon, 21 Nov 2011 22:44:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The meta-intel BSPs currently have a number of machine settings common
to all - factor these out into a common include file.

Also add several new intel-specific XSERVER variables for building
XSERVER variables in BSPs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc |   58 ++++++++++++++++++++++++++++++++++++
 1 files changed, 58 insertions(+), 0 deletions(-)
 create mode 100644 conf/machine/include/ia32-base.inc

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
new file mode 100644
index 0000000..5cf2f4f
--- /dev/null
+++ b/conf/machine/include/ia32-base.inc
@@ -0,0 +1,58 @@
+#
+# base machine settings for ia32-architecture BSPs
+#
+
+#
+# common settings for Intel-based machines
+#
+MACHINE_FEATURES += "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                     acpi serial usbgadget"
+
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules eee-acpi-scripts"
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub"
+
+IMAGE_FSTYPES += "ext3 cpio.gz live"
+
+KERNEL_IMAGETYPE ?= "bzImage"
+
+SERIAL_CONSOLE ?= "115200 ttyS0"
+
+#
+# glibc-related variables
+#
+GLIBC_ADDONS ?= "nptl"
+GLIBC_EXTRA_OECONF += "--with-tls"
+
+#
+# kernel-related variables
+#
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+
+#
+# XSERVER subcomponents, used to build the XSERVER variable
+#
+XSERVER_IA32_BASE = "xserver-xorg \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+           mesa-dri \
+           "
+
+XSERVER_IA32_EXT = "xserver-xorg-extension-dri \
+           xserver-xorg-extension-dri2 \
+           xserver-xorg-extension-glx \
+           xserver-xorg-extension-extmod \
+           xserver-xorg-extension-dbe \
+           xserver-xorg-module-libint10 \
+           "
+
+XSERVER_IA32_I915 = "xf86-video-intel \
+           mesa-dri-driver-i965 \
+           "
+
+XSERVER_IA32_EMGD = "emgd-driver-bin"
+
+XSERVER_IA32_VESA = "xf86-video-vesa"
-- 
1.7.0.4


