Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98D96E01415
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:48:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2012 14:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="144781468"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2012 14:48:21 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 25 May 2012 16:48:54 -0500
Message-Id: <5d164aa252104020a3b508d0a752cb707470ead7.1337981191.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1337981191.git.tom.zanussi@intel.com>
References: <cover.1337981191.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2][KERNEL] chiefriver: create initial BSP infrastructure
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
X-List-Received-Date: Fri, 25 May 2012 21:48:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Initial support for Ivy Bridge + Panther Point Intel systems.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/chiefriver/chiefriver-preempt-rt.scc       |   12 +++++++
 .../bsp/chiefriver/chiefriver-standard.scc         |   11 ++++++
 .../cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg |   35 ++++++++++++++++++++
 .../cfg/kernel-cache/bsp/chiefriver/chiefriver.scc |    7 ++++
 4 files changed, 65 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.scc

diff --git a/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-preempt-rt.scc
new file mode 100644
index 0000000..eebec13
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-preempt-rt.scc
@@ -0,0 +1,12 @@
+define KMACHINE chiefriver
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include bsp/common-pc-64/common-pc-64.scc
+
+include chiefriver.scc
+
+# default policy for preempt-rt kernels
+include features/logbuf/size-normal.scc
diff --git a/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-standard.scc b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-standard.scc
new file mode 100644
index 0000000..6e03b8c
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-standard.scc
@@ -0,0 +1,11 @@
+define KMACHINE chiefriver
+define KTYPE standard
+define KARCH x86_64
+
+include bsp/common-pc-64/common-pc-64-standard
+branch chiefriver
+
+include chiefriver.scc
+
+# default policy for standard kernels
+include features/logbuf/size-normal.scc
diff --git a/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg
new file mode 100644
index 0000000..190c1cb
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg
@@ -0,0 +1,35 @@
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
+CONFIG_SND_HDA_CODEC_REALTEK=y
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
+CONFIG_I2C=y
+CONFIG_AGP=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_INPUT=y
diff --git a/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.scc b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.scc
new file mode 100644
index 0000000..fbf4156
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.scc
@@ -0,0 +1,7 @@
+kconf hardware chiefriver.cfg
+
+include features/i915/i915.scc
+include features/serial/8250.scc
+include features/power/intel.scc
+
+include features/usb/xhci-hcd.scc
-- 
1.7.0.4


