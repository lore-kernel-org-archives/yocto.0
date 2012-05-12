Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76FF6E01434
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 May 2012 12:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139887773"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2012 12:42:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:42:01 -0500
Message-Id: <c4e72b3f621fe33763a9b0ef5cfb5ba77e426a75.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 16/22] meta/common-pc-64: use usb-mass-storage feature
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
X-List-Received-Date: Sat, 12 May 2012 19:42:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add the usb-mass-storage feature and remove the options available
in that feature from common-pc-64.cfg.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    1 +
 .../bsp/common-pc-64/common-pc-64-standard.scc     |    1 +
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    3 ---
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
index 8a79dd1..970808d 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
@@ -9,6 +9,7 @@ include bsp/common-pc-64/common-pc-64.scc
 
 # default policy for preempt-rt kernels
 include cfg/boot-live.scc
+include cfg/usb-mass-storage.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
 include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
index dcb1949..d2e73f5 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
@@ -9,6 +9,7 @@ include common-pc-64.scc
 
 # default policy for standard kernels
 include cfg/boot-live.scc
+include cfg/usb-mass-storage.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
 include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
index 8d35931..ffb2cbc 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
@@ -35,8 +35,6 @@ CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_ATA_PIIX=y
 
-CONFIG_SCSI=y
-CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
 
 CONFIG_BLK_DEV_FD=m
@@ -59,7 +57,6 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_8250_PCI=y
 CONFIG_SERIAL_8250_PNP=y
 
-CONFIG_USB_STORAGE=y
 # For /proc/bus/usb and lsusb.
 CONFIG_USB_DEVICEFS=y
 
-- 
1.7.0.4


