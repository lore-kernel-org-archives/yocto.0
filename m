Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E49ACE0140C
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:38:01 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 May 2012 14:38:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140560649"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2012 14:38:00 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  8 May 2012 16:37:56 -0500
Message-Id: <cffd1348bc6b09e46785868ac7670122d5cc48d2.1336510044.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
References: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510043.git.tom.zanussi@intel.com>
References: <cover.1336510043.git.tom.zanussi@intel.com>
Subject: [PATCH 4/9][KERNEL] meta/sugarbay: use usb features
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
X-List-Received-Date: Tue, 08 May 2012 21:38:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the available usb features and remove the associated config
settings from the top-level feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg |    7 +------
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc |    3 +++
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
index 58c6493..be5d3dd 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
@@ -1,6 +1,6 @@
 CONFIG_PRINTK=y
 
-# Basic hardware support for the box - network, USB, PCI, sound
+# Basic hardware support for the box - network, PCI, sound
 CONFIG_NETDEVICES=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
@@ -8,16 +8,11 @@ CONFIG_ATA_SFF=y
 CONFIG_PCI=y
 CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB=y
-CONFIG_USB_ARCH_HAS_EHCI=y
 CONFIG_R8169=y
 CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
-CONFIG_USB_EHCI_HCD=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_NET=y
-CONFIG_USB_UHCI_HCD=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
index dc107c3..128efd3 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
@@ -10,3 +10,6 @@ include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
 
+include features/usb/ehci-hcd.scc
+include features/usb/ohci-hcd.scc
+include features/usb/uhci-hcd.scc
-- 
1.7.0.4


