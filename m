Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4BF3E00300
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 13:56:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Nov 2011 13:56:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,452,1315206000"; d="scan'208";a="33098820"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.157])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Nov 2011 13:56:20 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Thu,  3 Nov 2011 13:55:50 -0700
Message-Id: <4aef0d3687d7562d6f242682ee5addc1fcf1a215.1320345864.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1320345864.git.kishore.k.bodke@intel.com>
References: <cover.1320345864.git.kishore.k.bodke@intel.com>
Subject: [PATCH 66/66] Crystal Forest Machine Added. Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
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
X-List-Received-Date: Thu, 03 Nov 2011 20:56:21 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

---
 .../bsp/crystalforest/crystalforest-preempt-rt.scc |    8 +++
 .../bsp/crystalforest/crystalforest-standard.scc   |    7 ++
 .../bsp/crystalforest/crystalforest.cfg            |   65 ++++++++++++++++++++
 .../bsp/crystalforest/crystalforest.scc            |   15 +++++
 4 files changed, 95 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc

diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
new file mode 100644
index 0000000..4f626a8
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE crystalforest
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include bsp/common-pc-64/common-pc-64.scc
+include crystalforest.scc
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
new file mode 100644
index 0000000..02b7a41
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
@@ -0,0 +1,7 @@
+define KMACHINE crystalforest
+define KTYPE standard
+define KARCH x86_64
+
+scc_leaf bsp/common-pc-64/common-pc-64-standard crystalforest
+
+include crystalforest.scc
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
new file mode 100644
index 0000000..3dbc0f3
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
@@ -0,0 +1,65 @@
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
+CONFIG_EXT3_FS=y
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
+CONFIG_ACPI=y
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
index 0000000..fe44679
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
@@ -0,0 +1,15 @@
+kconf hardware crystalforest.cfg
+
+include features/i915/i915.scc
+include features/serial/8250.scc
+include features/uio/uio.scc
+include features/hugetlb/hugetlb.scc
+include features/intel-e1xxxx/intel-e100.scc
+include features/intel-e1xxxx/intel-e1xxxx.scc
+include features/ixgbe/ixgbe.scc
+
+include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
-- 
1.7.5.4


