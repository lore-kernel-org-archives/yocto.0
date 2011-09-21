Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B680BE006CA
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Sep 2011 13:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="19341004"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Sep 2011 13:33:51 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:17 -0500
Message-Id: <154306d23e8dbf5c2170f6a145ca83a575fb5522.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 15/16][KERNEL] drm-psb: initialize backlight type
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

If unset, props.type gets the value 0, which is no longer maps to a
valid type value, so initialize it explicitly.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_lvds.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_lvds.c b/drivers/gpu/drm-psb/intel_lvds.c
index a778436..9511c04 100644
--- a/drivers/gpu/drm-psb/intel_lvds.c
+++ b/drivers/gpu/drm-psb/intel_lvds.c
@@ -803,6 +803,7 @@ void intel_lvds_init(struct drm_device *dev)
 	if ((blc_type == BLC_I2C_TYPE) || (blc_type == BLC_PWM_TYPE)){	
 		struct backlight_properties props;
 		memset(&props, 0, sizeof(struct backlight_properties));
+		props.type = BACKLIGHT_RAW;
 		/* add /sys/class/backlight interface as standard */
 		psbbl_device = backlight_device_register("psblvds", &dev->pdev->dev, dev, &psbbl_ops, &props);
 		if (psbbl_device){
-- 
1.7.0.4


