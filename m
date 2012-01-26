Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9335E00597
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 10:39:31 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jan 2012 10:39:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="100085979"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2012 10:39:31 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 26 Jan 2012 10:38:16 -0800
Message-Id: <5edd55fba12e0c584e3c7c50633d35f189820e43.1327602562.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1327602562.git.kishore.k.bodke@intel.com>
References: <cover.1327602562.git.kishore.k.bodke@intel.com>
Subject: [meta-intel] [PATCH 1/1] meta-cedartrail: enable smp for linux-yocto-rt_3.0
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
X-List-Received-Date: Thu, 26 Jan 2012 18:39:31 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

	Add smp feature to linux-yocto-rt_3.0.

	Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 372b139..5a95d3e 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -2,6 +2,8 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 
+KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+
 # Update the following to use a different BSP branch or meta SRCREV
 #KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
 #SRCREV_machine_pn-linux-yocto-rt_cedartrail ?= XXXX
-- 
1.7.5.4


