Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59681E006B4
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Sep 2011 13:33:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="51554428"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by orsmga001.jf.intel.com with ESMTP; 21 Sep 2011 13:33:29 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:06 -0500
Message-Id: <804647061b041cc5641a5933a11be8b1a7c8cc17.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 04/16][KERNEL] drm: intel_ldvs.c: add missing arg to backlight_device_register() call
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:30 -0000

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


