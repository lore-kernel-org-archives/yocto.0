Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3780FE01402
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:37:58 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 May 2012 14:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140560632"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2012 14:37:57 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  8 May 2012 16:37:54 -0500
Message-Id: <e875e50c857c946d2c6d0cc138b03295959d5a64.1336510043.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
References: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510043.git.tom.zanussi@intel.com>
References: <cover.1336510043.git.tom.zanussi@intel.com>
Subject: [PATCH 2/9][KERNEL] meta/fishriver: use usb features
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
X-List-Received-Date: Tue, 08 May 2012 21:37:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the available usb features and remove the associated config
settings from the top-level feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg |    8 +-------
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc |    4 ++++
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
index b101419..d0f6fdd 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
@@ -2,7 +2,7 @@ CONFIG_X86_32=y
 CONFIG_MATOM=y
 CONFIG_PRINTK=y
 
-# Basic hardware support for the box - network, USB, PCI, sound
+# Basic hardware support for the box - network, PCI, sound
 CONFIG_NETDEVICES=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
@@ -10,17 +10,11 @@ CONFIG_ATA_SFF=y
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
-CONFIG_USB_OHCI_HCD=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
index 8e788f6..6b4945a 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
@@ -16,3 +16,7 @@ include features/logbuf/size-normal.scc
 
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
+
+include features/usb/ehci-hcd.scc
+include features/usb/ohci-hcd.scc
+include features/usb/uhci-hcd.scc
-- 
1.7.0.4


