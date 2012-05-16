Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B6CE013EB
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:52:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 May 2012 08:51:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="143957419"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 16 May 2012 08:51:24 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:33 -0500
Message-Id: <c970881b790e7bc9a43b44d64c05043183467f4b.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 13/22][KERNEL] meta: factor out SCSI options from the usb-mass-storage feature
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
X-List-Received-Date: Wed, 16 May 2012 15:52:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove the SCSI and BLK_DEV_SD options from usb-mass-storage.cfg and
replace them with the corresponding scsi/ features.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/cfg/usb-mass-storage.cfg |    2 --
 meta/cfg/kernel-cache/cfg/usb-mass-storage.scc |    2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/cfg/usb-mass-storage.cfg b/meta/cfg/kernel-cache/cfg/usb-mass-storage.cfg
index f3282e1..abd9712 100644
--- a/meta/cfg/kernel-cache/cfg/usb-mass-storage.cfg
+++ b/meta/cfg/kernel-cache/cfg/usb-mass-storage.cfg
@@ -2,8 +2,6 @@
 # USB is not explicitly enabled here, since that should be a 
 # per-BSP enablement.
 
-CONFIG_SCSI=y
-CONFIG_BLK_DEV_SD=y
 CONFIG_USB_STORAGE=y
 CONFIG_VFAT_FS=y
 CONFIG_FAT_FS=y
diff --git a/meta/cfg/kernel-cache/cfg/usb-mass-storage.scc b/meta/cfg/kernel-cache/cfg/usb-mass-storage.scc
index 882e393..aed330c 100644
--- a/meta/cfg/kernel-cache/cfg/usb-mass-storage.scc
+++ b/meta/cfg/kernel-cache/cfg/usb-mass-storage.scc
@@ -1,4 +1,6 @@
 define KFEATURE_DESCRIPTION "Enable options required for USB mass storage devices"
 define KFEATURE_COMPATIBILITY all
 
+include features/scsi/disk.scc
+
 kconf non-hardware usb-mass-storage.cfg
-- 
1.7.0.4


