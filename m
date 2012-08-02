Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E09C3E01447
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 11:35:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Aug 2012 11:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176293754"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by azsmga001.ch.intel.com with ESMTP; 02 Aug 2012 11:35:19 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu,  2 Aug 2012 11:35:06 -0700
Message-Id: <18e664ce60847e2b100e344c39304da494549f8f.1343932163.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1343932163.git.kishore.k.bodke@intel.com>
References: <cover.1343932163.git.kishore.k.bodke@intel.com>
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
X-List-Received-Date: Thu, 02 Aug 2012 18:35:20 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Initial checkin for the new Crystal Forest Machine Branch.
This Machine is based on Sandybridge CPU and Cave Creek Chipset.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../bsp/crystalforest/crystalforest-preempt-rt.scc |    9 ++++++
 .../bsp/crystalforest/crystalforest-standard.scc   |    8 +++++
 .../bsp/crystalforest/crystalforest.cfg            |   32 ++++++++++++++++++++
 .../bsp/crystalforest/crystalforest.scc            |   23 ++++++++++++++
 4 files changed, 72 insertions(+)
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc

diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
new file mode 100644
index 0000000..88e9b1a
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
@@ -0,0 +1,9 @@
+define KMACHINE crystalforest
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include bsp/common-pc-64/common-pc-64.scc
+
+include crystalforest.scc
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
new file mode 100644
index 0000000..2935387
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
@@ -0,0 +1,8 @@
+define KMACHINE crystalforest
+define KTYPE standard
+define KARCH x86_64
+
+include bsp/common-pc-64/common-pc-64-standard
+branch crystalforest
+
+include crystalforest.scc
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
new file mode 100644
index 0000000..542f600
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
@@ -0,0 +1,32 @@
+CONFIG_PRINTK=y
+
+# Basic hardware support for the box - network, PCI, sound
+CONFIG_NETDEVICES=y
+CONFIG_ATA=y
+CONFIG_ATA_GENERIC=y
+CONFIG_ATA_SFF=y
+CONFIG_PCI=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_R8169=y
+CONFIG_PATA_SCH=y
+CONFIG_MMC_SDHCI_PCI=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_NET=y
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
+CONFIG_I2C=y
+CONFIG_AGP=y
+CONFIG_PM=y
+CONFIG_INPUT=y
diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
new file mode 100644
index 0000000..140a4d5
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
@@ -0,0 +1,23 @@
+kconf hardware crystalforest.cfg
+
+include cfg/x86_64.scc
+include cfg/8250.scc
+
+include features/i915/i915.scc
+include features/power/intel.scc
+
+#These are required features for Intel DPDK Support
+
+include features/uio/uio.scc
+include features/hugetlb/hugetlb.scc
+include features/ixgbe/ixgbe.scc
+include features/igb/igb.scc
+
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include features/usb/xhci-hcd.scc
+include features/usb/ehci-hcd.scc
+include features/usb/ohci-hcd.scc
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
-- 
1.7.9.5


