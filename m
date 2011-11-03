Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C60DCE00311
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 16:12:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Nov 2011 16:12:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,452,1315206000"; d="scan'208";a="70352992"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by azsmga001.ch.intel.com with ESMTP; 03 Nov 2011 16:12:40 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Thu,  3 Nov 2011 09:15:19 -0700
Message-Id: <9d9416935d942cf8e3739537a0ba7f05b65a99d6.1320330879.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1320330879.git.rahul.saxena@intel.com>
References: <cover.1320330879.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta: new bsp - cedartrail
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
X-List-Received-Date: Thu, 03 Nov 2011 23:12:40 -0000

From: rsaxena <rsaxena@rsaxena-ROSECITY.(none)>

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 .../bsp/cedartrail/cedartrail-preempt-rt.scc       |    7 +++
 .../bsp/cedartrail/cedartrail-standard.scc         |    7 +++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   58 ++++++++++++++++++++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   20 +++++++
 4 files changed, 92 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc

diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
new file mode 100644
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
new file mode 100644
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
new file mode 100644
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
new file mode 100644
index 0000000..7df617f
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
@@ -0,0 +1,20 @@
+kconf hardware cedartrail.cfg
+
+git merge yocto/emgd
+
+include features/hpet/hpet.scc
+include features/intel-e1xxxx/intel-e100.scc
+include features/intel-e1xxxx/intel-e1xxxx.scc
+include features/drm-emgd/drm-emgd.scc
+include features/dmaengine/dmaengine.scc
+include features/serial/8250.scc
+include features/ericsson-3g/f5521gw.scc
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


