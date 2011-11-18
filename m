Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8AF8E00728
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 08:56:06 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2011 08:56:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="77410743"
Received: from unknown (HELO localhost) ([10.255.15.232])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2011 08:56:05 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Fri, 18 Nov 2011 10:59:19 -0600
Message-Id: <0ee3d586b8f4719921d8f0fcca6f69ba5736d9e8.1321630866.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321630866.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321630866.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321630866.git.tom.zanussi@intel.com>
References: <cover.1321630866.git.tom.zanussi@intel.com>
Subject: [PATCH 11/11] Have emenlow.conf use the common ia32-base .inc file and remove the open-coded machine settings.
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
X-List-Received-Date: Fri, 18 Nov 2011 16:56:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |   23 ++---------------------
 1 files changed, 2 insertions(+), 21 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 06cba37..5a14b26 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -5,21 +5,14 @@
 # Webs-2120 box.
 
 include conf/machine/include/tune-atom.inc
+include conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
-
-KERNEL_IMAGETYPE = "bzImage"
-
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
-
-PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-psb"
+PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
 PREFERRED_PROVIDER_mesa-dri = "xpsb-glx"
 XSERVER ?= "xserver-psb \
            xserver-psb-extension-dri \
@@ -32,16 +25,4 @@ XSERVER ?= "xserver-psb \
            xf86-input-keyboard \
            xf86-input-evdev"
 
-SERIAL_CONSOLE = "115200 ttyS0"
-
 APPEND += "video=vesafb vga=0x318"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
-
-MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
-
-- 
1.7.0.4


