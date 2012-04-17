Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E34CCE01405
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 20:29:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Apr 2012 20:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="133298927"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by orsmga002.jf.intel.com with ESMTP; 16 Apr 2012 20:29:45 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 22:29:52 -0500
Message-Id: <554fccce308719e7f66d8404f59f33122f888ad9.1334633179.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <76c20801e488ef27f951befeb722de31d1af8daa.1334633179.git.tom.zanussi@intel.com>
References: <76c20801e488ef27f951befeb722de31d1af8daa.1334633179.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1334633179.git.tom.zanussi@intel.com>
References: <cover.1334633179.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-yocto: remove kernel26 machine feature usage
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
X-List-Received-Date: Tue, 17 Apr 2012 03:29:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

kernel26 is now obsolete so remove it from the machine configs that
use it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-yocto/conf/machine/atom-pc.conf          |    3 +--
 meta-yocto/conf/machine/beagleboard.conf      |    2 +-
 meta-yocto/conf/machine/mpc8315e-rdb.conf     |    2 +-
 meta-yocto/conf/machine/routerstationpro.conf |    3 +--
 4 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
index 7cbe157..73aba58 100644
--- a/meta-yocto/conf/machine/atom-pc.conf
+++ b/meta-yocto/conf/machine/atom-pc.conf
@@ -5,8 +5,7 @@
 
 include conf/machine/include/tune-atom.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
-                    acpi alsa"
+MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
 
 KERNEL_IMAGETYPE = "bzImage"
 
diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 06a0ecd..aa8fa07 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -37,4 +37,4 @@ UBOOT_MACHINE = "omap3_beagle_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
 
-MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
+MACHINE_FEATURES = "apm usbgadget usbhost vfat alsa"
diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index d3a5b1c..03b5f34 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -9,7 +9,7 @@ KERNEL_IMAGETYPE = "uImage"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
+MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index a3d520d..3c2f56f 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -4,8 +4,7 @@
 
 require conf/machine/include/tune-mips32.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
-                    serial"
+MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
 
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
-- 
1.7.0.4


