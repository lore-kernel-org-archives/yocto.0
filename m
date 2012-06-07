Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 936C6E01436
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2012 14:49:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2012 14:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="109274392"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.91])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2012 14:49:50 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	nitin.a.kamble@intel.com
Date: Thu,  7 Jun 2012 14:48:17 -0700
Message-Id: <4328299dac4d8ece61a1d0f2b9ac581337fceba0.1339105415.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339105415.git.kishore.k.bodke@intel.com>
References: <cover.1339105415.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-cedartrail: update SRCREV
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
X-List-Received-Date: Thu, 07 Jun 2012 21:49:50 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Remove the kernel feature set from the BSP.
These have been moved to kernel features.
Update the SRCREV for meta to pull in these
kernel feature set.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 5996b47..7a0a2a3 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -7,8 +7,6 @@ SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 KBRANCH_cedartrail  = "yocto/standard/cedartrail"
-KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
-KERNEL_FEATURES_append_cedartrail += "cfg/drm-cdvpvr.scc"
 KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
 KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
 
@@ -18,7 +16,7 @@ KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
 KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
-SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
+SRCREV_meta_pn-linux-yocto_cedartrail ?= "46e8fc2bbbe73514e8d99101adaaa373f760ffa7"
 SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
 
 SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
-- 
1.7.9.5


