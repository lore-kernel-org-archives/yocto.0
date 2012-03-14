Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30329E013DB
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:24 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2012 20:58:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77240943"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2012 20:58:23 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:36 -0500
Message-Id: <fc6a94edd3de1cc64aa5acd77dde50e1c2c8f7d8.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 10/17][KERNEL] drm-psb: remove includes of nonexistent i2c-id.h
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


