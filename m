Return-Path: <rahul.saxena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6F5FE013BB
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 16:02:44 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Dec 2011 16:02:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="47340750"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Dec 2011 16:02:44 -0800
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 14 Dec 2011 09:03:13 -0800
Message-Id: <a604eb4d9e72bffc4155eb19734342dee0472217.1323878947.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1323878947.git.rahul.saxena@intel.com>
References: <cover.1323878947.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1][KERNEL] meta: Add cedartrail
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
X-List-Received-Date: Thu, 15 Dec 2011 00:02:45 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

 Add cedartrail.cfg, cedartrail.scc, cedartrail-standard.scc, cedartrail-preempt-rt.scc

 Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>

---
 .../bsp/cedartrail/cedartrail-preempt-rt.scc       |    7 +++
 .../bsp/cedartrail/cedartrail-standard.scc         |    7 +++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   58 ++++++++++++++++++++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   17 ++++++
 4 files changed, 89 insertions(+), 0 deletions(-)
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc

diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
new file mode 100755
index 0000000..1ab3629
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
@@ -0,0 +1,7 @@
+define KMACHINE cedartrail
+define KTYPE preempt-rt
+define KARCH i386
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include cedartrail.scc
diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
new file mode 100755
index 0000000..28948f2
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
@@ -0,0 +1,7 @@
+define KMACHINE cedartrail
+define KTYPE standard
+define KARCH i386
+
+scc_leaf ktypes/standard cedartrail
+
+include cedartrail.scc
diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
new file mode 100755
index 0000000..1cc14b1
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
@@ -0,0 +1,58 @@
+CONFIG_X86_32=y
+CONFIG_MATOM=y
+CONFIG_PRINTK=y
+
+# RTC 
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_CMOS=y
+
+# Basic hardware support for the box - network, USB, PCI, sound
+CONFIG_NETDEVICES=y
+CONFIG_ATA=y
+CONFIG_ATA_GENERIC=y
+CONFIG_ATA_SFF=y
+CONFIG_PCI=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_USB_SUPPORT=y
+CONFIG_USB=y
+CONFIG_USB_ARCH_HAS_EHCI=y
+CONFIG_R8169=y
+CONFIG_PATA_SCH=y
+CONFIG_MMC_SDHCI_PCI=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_NET=y
+CONFIG_USB_UHCI_HCD=y
+CONFIG_USB_OHCI_HCD=y
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_SG=y
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_HDA_INTEL=y
+CONFIG_SATA_AHCI=y
+CONFIG_AGP=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_BACKLIGHT_LCD_SUPPORT=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_INPUT=y
+
+# Make sure these are on, otherwise the bootup won't be fun
+CONFIG_EXT3_FS=y
+CONFIG_UNIX=y
+CONFIG_INET=y
+CONFIG_MODULES=y
+CONFIG_SHMEM=y
+CONFIG_TMPFS=y
+CONFIG_PACKET=y
+
+# Needed for booting (and using) USB memory sticks
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
+
+CONFIG_RD_GZIP=y
+
+# Needed for booting (and using) CD images
+CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
new file mode 100755
index 0000000..45aafed
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
@@ -0,0 +1,17 @@
+kconf hardware cedartrail.cfg
+
+
+include features/hpet/hpet.scc
+include features/intel-e1xxxx/intel-e100.scc
+include features/intel-e1xxxx/intel-e1xxxx.scc
+include features/dmaengine/dmaengine.scc
+include features/serial/8250.scc
+include features/framebuffer/vesafb.scc
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+
+include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
-- 
1.7.0.4


