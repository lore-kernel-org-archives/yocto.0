Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21E10E0142E
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:27 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 May 2012 08:51:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="100804066"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by AZSMGA002.ch.intel.com with ESMTP; 16 May 2012 08:51:26 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:34 -0500
Message-Id: <438bca894f24a498054ec2f4ef57210248334e20.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 14/22][KERNEL] meta/common-pc: use usb-mass-storage feature
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
X-List-Received-Date: Wed, 16 May 2012 15:51:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add the usb-mass-storage feature and remove the options available
in that feature from common-pc.cfg.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/common-pc/common-pc-preempt-rt.scc         |    1 +
 .../bsp/common-pc/common-pc-standard.scc           |    1 +
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |    3 ---
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
index 706f669..53e4d69 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
@@ -9,6 +9,7 @@ include bsp/common-pc/common-pc.scc
 
 # default policy for preempt-rt kernels
 include cfg/boot-live.scc
+include cfg/usb-mass-storage.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
 include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
index 83d49fd..a2f2520 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
@@ -9,6 +9,7 @@ include common-pc.scc
 
 # default policy for standard kernels
 include cfg/boot-live.scc
+include cfg/usb-mass-storage.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
 include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
index db6ffb1..2293cfe 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
@@ -27,8 +27,6 @@ CONFIG_PCI=y
 CONFIG_PCI_GOANY=y
 CONFIG_PCIEPORTBUS=y
 
-CONFIG_SCSI=y
-CONFIG_BLK_DEV_SD=y
 CONFIG_ATA=y
 CONFIG_ATA_ACPI=y
 CONFIG_ATA_SFF=y
@@ -74,7 +72,6 @@ CONFIG_VT=y
 CONFIG_VGA_CONSOLE=y
 
 CONFIG_USB_DEVICEFS=y
-CONFIG_USB_STORAGE=y
 CONFIG_USB_HID=y
 CONFIG_USB_HIDDEV=y
 CONFIG_USB_SERIAL=y
-- 
1.7.0.4


