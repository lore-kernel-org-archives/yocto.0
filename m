Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ABFCE01404
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 20:29:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Apr 2012 20:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="131727790"
Received: from unknown (HELO localhost) ([10.255.12.66])
	by azsmga001.ch.intel.com with ESMTP; 16 Apr 2012 20:29:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 16 Apr 2012 22:29:51 -0500
Message-Id: <76c20801e488ef27f951befeb722de31d1af8daa.1334633179.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1334633179.git.tom.zanussi@intel.com>
References: <cover.1334633179.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] yocto-bsp: remove kernel26 machine feature from templates
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
X-List-Received-Date: Tue, 17 Apr 2012 03:29:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

kernel26 is now obsolete so remove it from the templates that use it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../target/arch/arm/conf/machine/{{=machine}}.conf |    2 +-
 .../arch/mips/conf/machine/{{=machine}}.conf       |    3 +--
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |    2 +-
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
index 101dd60..1cf6097 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -84,4 +84,4 @@ UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
 {{ input type:"edit" name:"uboot_loadaddress" prio:"40" msg:"Please specify a value for UBOOT_LOADADDRESS:" default:"0x80008000" }}
 UBOOT_LOADADDRESS = "{{=uboot_loadaddress}}"
 
-MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
+MACHINE_FEATURES = "apm usbgadget usbhost vfat alsa"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
index 51157e5..ae27fe6 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
@@ -5,8 +5,7 @@
 
 require conf/machine/include/tune-mips32.inc
 
-MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
-                    serial"
+MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
 
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
index 4f83dbb..18f5247 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
@@ -32,7 +32,7 @@ KERNEL_IMAGETYPE = "uImage"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
+MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
 {{ preferred_kernel = kernel_choice.split('_')[0] }}
 {{ preferred_kernel_version = kernel_choice.split('_')[1] }}
-- 
1.7.0.4


