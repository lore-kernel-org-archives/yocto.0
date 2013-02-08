Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CDF8E011C0;
	Fri,  8 Feb 2013 15:16:00 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Feb 2013 15:15:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="288652191"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.181])
	by fmsmga002.fm.intel.com with ESMTP; 08 Feb 2013 15:15:59 -0800
From: kishore.k.bodke@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	rahul.saxena@intel.com, song.liu@intel.com, tom.zanussi@intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 15:18:26 -0800
Message-Id: <2f81bb81dc4a4c7d2f9720880b5775cdc98b33bb.1360365190.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1360365190.git.kishore.k.bodke@intel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1][linux-yocto] meta: Remove Cedartrail Machine
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
X-List-Received-Date: Fri, 08 Feb 2013 23:16:00 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Remove Cedartrail Machine from 3.4 Kernel.
Cedartrail BSP is not available.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
 .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46 --------------------
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
 4 files changed, 82 deletions(-)
 delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
 delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
 delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
 delete mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc

diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
deleted file mode 100755
index d0f4871..0000000
--- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
+++ /dev/null
@@ -1,13 +0,0 @@
-define KMACHINE cedartrail
-define KTYPE preempt-rt
-define KARCH i386
-
-# no new branch required, re-use the ktypes/preempt-rt/preempt-rt.scc branch
-include ktypes/preempt-rt/preempt-rt.scc
-include cedartrail.scc
-
-# default policy for preempt-rt kernels
-include cfg/usb-mass-storage.scc
-include cfg/boot-live.scc
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
\ No newline at end of file
diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
deleted file mode 100755
index f9e4ab1..0000000
--- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
+++ /dev/null
@@ -1,8 +0,0 @@
-define KMACHINE cedartrail
-define KTYPE standard
-define KARCH i386
-
-include ktypes/standard/standard.scc
-branch cedartrail
-
-include cedartrail.scc
diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
deleted file mode 100755
index c7f9355..0000000
--- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
+++ /dev/null
@@ -1,46 +0,0 @@
-CONFIG_X86_32=y
-CONFIG_MATOM=y
-CONFIG_PRINTK=y
-
-# RTC 
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_CMOS=y
-
-# Basic hardware support for the box - network, USB, PCI, sound
-CONFIG_NETDEVICES=y
-CONFIG_ATA=y
-CONFIG_ATA_GENERIC=y
-CONFIG_ATA_SFF=y
-CONFIG_PCI=y
-CONFIG_MMC=y
-CONFIG_MMC_SDHCI=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB=y
-CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_R8169=y
-CONFIG_PATA_SCH=y
-CONFIG_MMC_SDHCI_PCI=y
-CONFIG_USB_EHCI_HCD=y
-CONFIG_PCIEPORTBUS=y
-CONFIG_NET=y
-CONFIG_USB_UHCI_HCD=y
-CONFIG_USB_OHCI_HCD=y
-CONFIG_BLK_DEV_SD=y
-CONFIG_CHR_DEV_SG=y
-CONFIG_SOUND=y
-CONFIG_SND=y
-CONFIG_SND_HDA_INTEL=y
-CONFIG_SATA_AHCI=y
-CONFIG_AGP=y
-CONFIG_PM=y
-CONFIG_BACKLIGHT_LCD_SUPPORT=y
-CONFIG_BACKLIGHT_CLASS_DEVICE=y
-CONFIG_INPUT=y
-
-# Make sure these are on, otherwise the bootup won't be fun
-CONFIG_UNIX=y
-CONFIG_INET=y
-CONFIG_MODULES=y
-CONFIG_SHMEM=y
-CONFIG_TMPFS=y
-CONFIG_PACKET=y
diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
deleted file mode 100644
index 9c013b6..0000000
--- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
+++ /dev/null
@@ -1,15 +0,0 @@
-kconf hardware cedartrail.cfg
-
-include cfg/x86.scc
-include features/intel-e1xxxx/intel-e100.scc
-include features/intel-e1xxxx/intel-e1xxxx.scc
-include cfg/dmaengine.scc
-include cfg/8250.scc
-include cfg/vesafb.scc
-include cfg/usb-mass-storage.scc
-include cfg/boot-live.scc
-
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-
-- 
1.7.9.5


