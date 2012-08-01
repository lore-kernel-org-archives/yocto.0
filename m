Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E696E01404
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 12:15:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Aug 2012 12:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="201080063"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by fmsmga002.fm.intel.com with ESMTP; 01 Aug 2012 12:15:25 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  1 Aug 2012 12:15:10 -0700
Message-Id: <21e6c2bcd419609619b45491918f9bfc5fa6d4a7.1343847920.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1343847920.git.kishore.k.bodke@intel.com>
References: <cover.1343847920.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
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
X-List-Received-Date: Wed, 01 Aug 2012 19:15:25 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Initial checkin for the new Crystal Forest Machine Branch.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../bsp/crystalforest/crystalforest-preempt-rt.scc |   15 +++++
 .../bsp/crystalforest/crystalforest-standard.scc   |   10 ++++
 .../bsp/crystalforest/crystalforest.cfg            |   63 ++++++++++++++++++++
 .../bsp/crystalforest/crystalforest.scc            |   14 +++++
 4 files changed, 102 insertions(+)
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc

diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
new file mode 100644
index 0000000..6c250af
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
@@ -0,0 +1,15 @@
+define KMACHINE crystalforest
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include bsp/common-pc-64/common-pc-64.scc
+
+include crystalforest.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
new file mode 100644
index 0000000..9d24c76
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
@@ -0,0 +1,10 @@
+define KMACHINE crystalforest
+define KTYPE standard
+define KARCH x86_64
+
+include bsp/common-pc-64/common-pc-64-standard
+branch crystalforest
+
+include crystalforest.scc
+
+# default policy for standard kernels
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
new file mode 100644
index 0000000..341cc20
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
@@ -0,0 +1,63 @@
+CONFIG_PRINTK=y
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
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_SG=y
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_HDA_INTEL=y
+
+# Make sure these are on, otherwise the bootup won't be fun
+CONFIG_UNIX=y
+CONFIG_INET=y
+CONFIG_MODULES=y
+CONFIG_SHMEM=y
+CONFIG_TMPFS=y
+CONFIG_PACKET=y
+
+# These are needed for the Poulsbo kernel modules
+CONFIG_I2C=y
+CONFIG_AGP=y
+CONFIG_VFAT_FS=y
+CONFIG_PM=y
+CONFIG_FB=y
+CONFIG_BACKLIGHT_LCD_SUPPORT=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_INPUT=y
+CONFIG_VIDEO_V4L2=y
+CONFIG_VIDEO_IVTV=y
+CONFIG_MEDIA_SUPPORT=y
+CONFIG_VIDEO_CAPTURE_DRIVERS=y
+CONFIG_VIDEO_DEV=y
+CONFIG_VIDEO_V4L2_COMMON=y
+CONFIG_I2C_ALGOBIT=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_VIDEO_FB_IVTV=y
+
+# Needed for booting (and using) USB memory sticks
+CONFIG_USB_STORAGE=y
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_RD_GZIP=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
new file mode 100644
index 0000000..ff45107
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
@@ -0,0 +1,14 @@
+kconf hardware crystalforest.cfg
+
+include features/i915/i915.scc
+include cfg/8250.scc
+include cfg/x86_64.scc
+include features/uio/uio.scc
+include features/hugetlb/hugetlb.scc
+include features/ixgbe/ixgbe.scc
+include features/igb/igb.scc
+include features/power/intel.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
-- 
1.7.9.5


