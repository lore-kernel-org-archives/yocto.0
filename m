Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89D86E013CB
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Mar 2012 20:58:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128723537"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2012 20:58:12 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:30 -0500
Message-Id: <753ae4aad9cf1401cfcf6f75c7878b208f3b49c3.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 04/17][KERNEL] drm: intel_ldvs.c: add missing arg to backlight_device_register() call
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

backlight_device_register() added a backlight_props param - give it
another arg to keep it happy.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_lvds.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_lvds.c b/drivers/gpu/drm-psb/intel_lvds.c
index 16fbd79..a778436 100644
--- a/drivers/gpu/drm-psb/intel_lvds.c
+++ b/drivers/gpu/drm-psb/intel_lvds.c
@@ -801,8 +801,10 @@ void intel_lvds_init(struct drm_device *dev)
 	}
 
 	if ((blc_type == BLC_I2C_TYPE) || (blc_type == BLC_PWM_TYPE)){	
+		struct backlight_properties props;
+		memset(&props, 0, sizeof(struct backlight_properties));
 		/* add /sys/class/backlight interface as standard */
-		psbbl_device = backlight_device_register("psblvds", &dev->pdev->dev, dev, &psbbl_ops);
+		psbbl_device = backlight_device_register("psblvds", &dev->pdev->dev, dev, &psbbl_ops, &props);
 		if (psbbl_device){
 #if LINUX_VERSION_CODE <= KERNEL_VERSION(2,6,20)
 			down(&psbbl_device->sem);
-- 
1.7.0.4


