Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7B74E013FB
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:37:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 May 2012 14:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="163634785"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2012 14:37:55 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  8 May 2012 16:37:53 -0500
Message-Id: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1336510043.git.tom.zanussi@intel.com>
References: <cover.1336510043.git.tom.zanussi@intel.com>
Subject: [PATCH 1/9][KERNEL] meta/emenlow: use usb features
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
X-List-Received-Date: Tue, 08 May 2012 21:37:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the available usb features and remove the associated config
settings from the top-level feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg |    7 +------
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc |    4 ++++
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
index b1e72bd..5090862 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
@@ -1,7 +1,7 @@
 CONFIG_X86_32=y
 CONFIG_PRINTK=y
 
-# Basic hardware support for the box - network, USB, PCI, sound
+# Basic hardware support for the box - network, PCI, sound
 CONFIG_NETDEVICES=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
@@ -9,16 +9,11 @@ CONFIG_ATA_SFF=y
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
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
index 0b4daca..be70731 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
@@ -13,3 +13,7 @@ include features/logbuf/size-normal.scc
 
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
+
+include features/usb/ehci-hcd.scc
+include features/usb/ohci-hcd.scc
+include features/usb/uhci-hcd.scc
-- 
1.7.0.4


