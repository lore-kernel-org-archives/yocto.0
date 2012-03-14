Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A789E013C2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:59:08 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 20:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="117484942"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2012 20:58:24 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:37 -0500
Message-Id: <ae15d4f189e14ad04b082c61c9d49084480e9cfc.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 11/17][KERNEL] drm-psb: remove assigment to deprecated i2c_adapter.id
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
X-List-Received-Date: Wed, 14 Mar 2012 03:59:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

i2c_adapter.id has been removed and it's not used by anything, so
remove it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_i2c.c |    4 ----
 drivers/gpu/drm-psb/psb_i2c.c   |    1 -
 2 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_i2c.c b/drivers/gpu/drm-psb/intel_i2c.c
index 4104c95..ba257e3 100644
--- a/drivers/gpu/drm-psb/intel_i2c.c
+++ b/drivers/gpu/drm-psb/intel_i2c.c
@@ -139,10 +139,6 @@ struct intel_i2c_chan *intel_i2c_create(struct drm_device *dev, const u32 reg,
 	chan->reg = reg;
 	snprintf(chan->adapter.name, I2C_NAME_SIZE, "intel drm %s", name);
 	chan->adapter.owner = THIS_MODULE;
-#ifndef I2C_HW_B_INTELFB
-#define I2C_HW_B_INTELFB I2C_HW_B_I810
-#endif
-	chan->adapter.id = I2C_HW_B_INTELFB;
 	chan->adapter.algo_data	= &chan->algo;
 	chan->adapter.dev.parent = &dev->pdev->dev;
 	chan->algo.setsda = set_data;
diff --git a/drivers/gpu/drm-psb/psb_i2c.c b/drivers/gpu/drm-psb/psb_i2c.c
index 69def5b..804292a 100644
--- a/drivers/gpu/drm-psb/psb_i2c.c
+++ b/drivers/gpu/drm-psb/psb_i2c.c
@@ -136,7 +136,6 @@ struct intel_i2c_chan *intel_i2c_create(struct drm_device *dev,
 	chan->reg = reg;
 	snprintf(chan->adapter.name, I2C_NAME_SIZE, "intel drm %s", name);
 	chan->adapter.owner = THIS_MODULE;
-	chan->adapter.id = I2C_HW_B_INTELFB;
 	chan->adapter.algo_data = &chan->algo;
 	chan->adapter.dev.parent = &dev->pdev->dev;
 	chan->algo.setsda = set_data;
-- 
1.7.0.4


