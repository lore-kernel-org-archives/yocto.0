Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7968E006C2
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Sep 2011 13:33:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="51973328"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by azsmga001.ch.intel.com with ESMTP; 21 Sep 2011 13:33:38 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:11 -0500
Message-Id: <f7ca7c9380ef2b4209ade0a605f3e86ed9cd0da1.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 09/16][KERNEL] drm-psb: remove call to agp_flush_chipset
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:40 -0000

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


