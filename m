Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4B06E006C3
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Sep 2011 13:33:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="51947489"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Sep 2011 13:33:40 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:12 -0500
Message-Id: <834e38394d27e862de73b5c83253c5deef6ca5e0.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 10/16][KERNEL] drm-psb: remove includes of nonexistent i2c-id.h
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:41 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

i2c-id.h is gone, don't include it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_drv.h |    1 -
 drivers/gpu/drm-psb/intel_i2c.c |    1 -
 drivers/gpu/drm-psb/psb_i2c.c   |    1 -
 3 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_drv.h b/drivers/gpu/drm-psb/intel_drv.h
index d3b7cb7..d05d533 100644
--- a/drivers/gpu/drm-psb/intel_drv.h
+++ b/drivers/gpu/drm-psb/intel_drv.h
@@ -7,7 +7,6 @@
 #define __INTEL_DRV_H__
 
 #include <linux/i2c.h>
-#include <linux/i2c-id.h>
 #include <linux/i2c-algo-bit.h>
 #include "drm_crtc.h"
 
diff --git a/drivers/gpu/drm-psb/intel_i2c.c b/drivers/gpu/drm-psb/intel_i2c.c
index efcbf65..4104c95 100644
--- a/drivers/gpu/drm-psb/intel_i2c.c
+++ b/drivers/gpu/drm-psb/intel_i2c.c
@@ -29,7 +29,6 @@
  */
 
 #include <linux/i2c.h>
-#include <linux/i2c-id.h>
 #include <linux/i2c-algo-bit.h>
 #include "drmP.h"
 #include "drm.h"
diff --git a/drivers/gpu/drm-psb/psb_i2c.c b/drivers/gpu/drm-psb/psb_i2c.c
index 5a80243..69def5b 100644
--- a/drivers/gpu/drm-psb/psb_i2c.c
+++ b/drivers/gpu/drm-psb/psb_i2c.c
@@ -29,7 +29,6 @@
  */
 
 #include <linux/i2c.h>
-#include <linux/i2c-id.h>
 #include <linux/i2c-algo-bit.h>
 #include "drmP.h"
 #include "drm.h"
-- 
1.7.0.4


