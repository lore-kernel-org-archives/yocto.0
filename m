Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2698E00727
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 08:56:04 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Nov 2011 08:56:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,533,1315206000"; d="scan'208";a="92527994"
Received: from unknown (HELO localhost) ([10.255.15.232])
	by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2011 08:56:04 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Fri, 18 Nov 2011 10:59:18 -0600
Message-Id: <8af78dab8af4b58959ed913cdb28b300ee257e31.1321630866.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321630866.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321630866.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321630866.git.tom.zanussi@intel.com>
References: <cover.1321630866.git.tom.zanussi@intel.com>
Subject: [PATCH 10/11] Have romley.conf use the common ia32-base .inc file and remove the open-coded machine settings.
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
X-List-Received-Date: Fri, 18 Nov 2011 16:56:05 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-romley/conf/machine/romley.conf |   39 +++------------------------------
 1 files changed, 4 insertions(+), 35 deletions(-)

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index 3d41db5..7b6014c 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -5,41 +5,10 @@
 # i.e. Sandy Bridge + Patsburg Chipset
 
 require conf/machine/include/tune-x86_64.inc
+include conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
-
-KERNEL_IMAGETYPE = "bzImage"
-
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto = "3.0%"
-
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
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
            xserver-xorg-module-xaa \
-           xf86-input-mouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
-           xf86-input-synaptics \
 	   xf86-video-mga \
-           mesa-dri"
-
-SERIAL_CONSOLE = "115200 ttyS0"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
-
-MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+           "
-- 
1.7.0.4


