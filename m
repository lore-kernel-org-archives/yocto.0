Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E9B1E01431
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 May 2012 12:42:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152212000"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2012 12:42:36 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:41:58 -0500
Message-Id: <6a294a359d31457433b47b8ac64603d059cf1ed5.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 13/22] meta: factor out SCSI options from the usb-mass-storage feature
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
X-List-Received-Date: Sat, 12 May 2012 19:42:37 -0000

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


