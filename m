Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 062D6E013BF
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2012 20:58:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118599960"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by azsmga001.ch.intel.com with ESMTP; 13 Mar 2012 20:58:21 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:35 -0500
Message-Id: <144260e24b8960a474a9afb265e2267ad3c813b4.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 09/17][KERNEL] drm-psb: remove call to agp_flush_chipset
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

agp_flush_chipset was removed because intel drm calls the chipset
functions directly, and psb doesn't implement a chipset_flush()
function anyway.  Leave drm_agp_flush_chipset exported for modules
that might be expecting it to be there though.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drm_agpsupport.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm-psb/drm_agpsupport.c b/drivers/gpu/drm-psb/drm_agpsupport.c
index 8b739d2..c0dbab7 100644
--- a/drivers/gpu/drm-psb/drm_agpsupport.c
+++ b/drivers/gpu/drm-psb/drm_agpsupport.c
@@ -644,7 +644,6 @@ EXPORT_SYMBOL(drm_agp_init_ttm);
 #if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,25)
 void drm_agp_flush_chipset(struct drm_device *dev)
 {
-	agp_flush_chipset(dev->agp->bridge);
 }
 EXPORT_SYMBOL(drm_agp_flush_chipset);
 #endif
-- 
1.7.0.4


