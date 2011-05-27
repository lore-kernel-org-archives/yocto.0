Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 750294C80AA5
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:30 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 May 2011 13:46:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="3127746"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 13:46:29 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:05 -0500
Message-Id: <b495738adb26d325ea82db409458cbfbbb89cfeb.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 11/14][KERNEL] meta: replace open-coded E1XXXX options with intel-e1xxxx feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have common-pc and common-pc-64 use the intel-e1xxxx feature, remove
the corresponding options in common-pc64.cfg (including deletion of
common-pc-net.cfg) and common-pc.cfg, and update bsps accordingly.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    4 ----
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    2 ++
 .../kernel-cache/bsp/common-pc/common-pc-net.cfg   |    2 --
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |    1 -
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    2 +-
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    2 --
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |    2 --
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    7 +++++--
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    2 --
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    6 ++++--
 meta/cfg/kernel-cache/bsp/romley/romley.cfg        |    2 --
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |    2 --
 12 files changed, 12 insertions(+), 22 deletions(-)
 delete mode 100644 meta/cfg/kernel-cache/bsp/common-pc/common-pc-net.cfg

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
index 05ad74b..d2d0e40 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
@@ -47,10 +47,6 @@ CONFIG_BLK_DEV_FD=m
 CONFIG_NET_PCI=y
 CONFIG_MII=y
 CONFIG_TIGON3=y
-# Enable the below for QEMU
-CONFIG_E100=y
-CONFIG_E1000E=y
-CONFIG_E1000=y
 
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_CMOS=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index 4f0e4c6..58dab18 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -3,5 +3,7 @@ kconf hardware common-pc-64-graphics.cfg
 
 include features/hpet/hpet.scc
 include features/igb/igb.scc
+include features/intel-e1xxxx/intel-e1xxxx.scc
+
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-net.cfg b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-net.cfg
deleted file mode 100644
index 8e85b36..0000000
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-net.cfg
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_E1000=y
-CONFIG_E1000E=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
index d3a9fe5..1933963 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
@@ -38,7 +38,6 @@ CONFIG_NET_PCI=y
 CONFIG_MII=y
 
 # Enable the below for Dell Dimension 1100 PC / QEMU
-CONFIG_E100=y
 CONFIG_TIGON3=y
 CONFIG_ATL2=y
 
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
index db8ba08..d7dda80 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
@@ -1,6 +1,6 @@
 kconf hardware common-pc.cfg
 kconf hardware common-pc-gfx.cfg
-kconf hardware common-pc-net.cfg
 
+include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index dde8412..5daa65b 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -4,7 +4,6 @@ CONFIG_PRINTK=y
 
 # Basic hardware support for the box - network, USB, PCI, sound
 CONFIG_NETDEVICES=y
-CONFIG_NETDEV_1000=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
 CONFIG_ATA_SFF=y
@@ -14,7 +13,6 @@ CONFIG_MMC_SDHCI=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB=y
 CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_E1000E=y
 CONFIG_R8169=y
 CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
index a516dc9..9bc250c 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
@@ -3,7 +3,6 @@ CONFIG_PRINTK=y
 
 # Basic hardware support for the box - network, USB, PCI, sound
 CONFIG_NETDEVICES=y
-CONFIG_NETDEV_1000=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
 CONFIG_ATA_SFF=y
@@ -13,7 +12,6 @@ CONFIG_MMC_SDHCI=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB=y
 CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_E1000E=y
 CONFIG_R8169=y
 CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
index c59cff0..2a83303 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
@@ -2,8 +2,11 @@ kconf hardware emenlow.cfg
 
 kconf non-hardware reboot-quirk.cfg 
 
+include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-psb/drm-psb.scc
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
 include features/serial/8250.scc
+
 include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
index e407992..b0f993b 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
@@ -2,7 +2,6 @@ CONFIG_PRINTK=y
 
 # Basic hardware support for the box - network, USB, PCI, sound
 CONFIG_NETDEVICES=y
-CONFIG_NETDEV_1000=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
 CONFIG_ATA_SFF=y
@@ -12,7 +11,6 @@ CONFIG_MMC_SDHCI=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB=y
 CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_E1000E=y
 CONFIG_R8169=y
 CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
index 34d208c..9e5ca8d 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
@@ -1,6 +1,8 @@
 kconf hardware jasperforest.cfg
 
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
 include features/serial/8250.scc
+
 include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/romley/romley.cfg b/meta/cfg/kernel-cache/bsp/romley/romley.cfg
index 61e5506..3dbc0f3 100644
--- a/meta/cfg/kernel-cache/bsp/romley/romley.cfg
+++ b/meta/cfg/kernel-cache/bsp/romley/romley.cfg
@@ -2,7 +2,6 @@ CONFIG_PRINTK=y
 
 # Basic hardware support for the box - network, USB, PCI, sound
 CONFIG_NETDEVICES=y
-CONFIG_NETDEV_1000=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
 CONFIG_ATA_SFF=y
@@ -12,7 +11,6 @@ CONFIG_MMC_SDHCI=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB=y
 CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_E1000E=y
 CONFIG_R8169=y
 CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
index 61e5506..3dbc0f3 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
@@ -2,7 +2,6 @@ CONFIG_PRINTK=y
 
 # Basic hardware support for the box - network, USB, PCI, sound
 CONFIG_NETDEVICES=y
-CONFIG_NETDEV_1000=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
 CONFIG_ATA_SFF=y
@@ -12,7 +11,6 @@ CONFIG_MMC_SDHCI=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB=y
 CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_E1000E=y
 CONFIG_R8169=y
 CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
-- 
1.7.0.4


