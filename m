Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 844E9E01412
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 May 2012 08:51:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="100804092"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by AZSMGA002.ch.intel.com with ESMTP; 16 May 2012 08:51:29 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:36 -0500
Message-Id: <b71938a1914e4590b189142040e5e0ddc1a61462.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 16/22][KERNEL] meta/common-pc-64: use usb-mass-storage feature
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
X-List-Received-Date: Wed, 16 May 2012 15:51:30 -0000

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


