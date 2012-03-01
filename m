Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D8F1E013AF
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:46 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113647315"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:51 -0800
Message-Id: <ec4425f0d6cd52dfefe17ff5b4933d53bbae6e92.1330644090.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
Subject: [PATCH 1/6] meta: sys940x BSP meta data
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:46 -0000

From: Darren Hart <dvhart@linux.intel.com>

The Inforce SYS940x-ECX Developer-Ready Reference Platform features:
o Intel Atom E6xx (0.6-1.6 GHz)
o Up to 1GB on-board DDR2
o Intel Platform Controller Hub EG20T
o VGA,LVDS
o HD Audio
o SD Card
o Dual SATA
o Mini-PCIe

http://www.inforcecomputing.com/SYS940X_ECX.html

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Acked-by: Tom Zanussi <tzanussi@intel.com>
Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/sys940x/sys940x-preempt-rt.scc             |    7 +++
 .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    6 ++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |   49 ++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   17 +++++++
 4 files changed, 79 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc

diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
new file mode 100644
index 0000000..3b8f0aa
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
@@ -0,0 +1,7 @@
+define KMACHINE sys940x
+define KTYPE preempt-rt
+define KARCH i386
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include sys940x.scc
diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
new file mode 100644
index 0000000..1f0edec
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
@@ -0,0 +1,6 @@
+define KMACHINE sys940x
+define KTYPE standard
+define KARCH i386
+
+include ktypes/standard
+include sys940x.scc
diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
new file mode 100644
index 0000000..3d45fe8
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
@@ -0,0 +1,49 @@
+CONFIG_X86_32=y
+CONFIG_MATOM=y
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
+CONFIG_RD_GZIP=y
+
+# Needed for booting (and using) CD images
+CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
new file mode 100644
index 0000000..8863c7c
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
@@ -0,0 +1,17 @@
+kconf hardware sys940x.cfg
+
+git merge yocto/emgd-1.10
+
+include features/eg20t/eg20t.scc
+include features/drm-emgd/drm-emgd.scc
+include features/dmaengine/dmaengine.scc
+include features/serial/8250.scc
+include features/framebuffer/vesafb.scc
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/power/intel.scc
+
+include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
-- 
1.7.6.5


