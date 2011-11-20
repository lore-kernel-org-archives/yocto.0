Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97637E006DD
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2011 20:12:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2011 20:12:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="77987525"
Received: from unknown (HELO localhost) ([10.255.15.232])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2011 20:12:17 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat, 19 Nov 2011 22:15:56 -0600
Message-Id: <13ef42f29308473b087623f62f1f86bddf3dd301.1321762384.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321762384.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321762384.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321762384.git.tom.zanussi@intel.com>
References: <cover.1321762384.git.tom.zanussi@intel.com>
Subject: [PATCH 06/14] Have crownbay.conf use the common ia32-base .inc file and remove the open-coded machine settings.
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
X-List-Received-Date: Sun, 20 Nov 2011 04:12:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |   42 ++++-------------------------
 1 files changed, 6 insertions(+), 36 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 9315e82..a57cc1c 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -5,45 +5,15 @@
 # i.e. E660 + EG20T
 
 include conf/machine/include/tune-atom.inc
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
-           emgd-driver-bin \
-           xf86-input-mouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
-           xf86-input-synaptics \
-           xf86-video-vesa"
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_EMGD} \
+           "
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
+PREFERRED_VERSION_mesa-dri ?= "7.11"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
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
-- 
1.7.0.4


