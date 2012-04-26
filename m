Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BEB2E013D0
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 11:48:28 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Apr 2012 11:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="135825857"
Received: from unknown (HELO localhost) ([10.255.12.155])
	by azsmga001.ch.intel.com with ESMTP; 26 Apr 2012 11:48:27 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 26 Apr 2012 13:48:38 -0500
Message-Id: <52f2cbf1a68ba0056f34f73f71c690b7c83f6e0c.1335447006.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1335447006.git.tom.zanussi@intel.com>
References: <cover.1335447006.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1][KERNEL 3.2] bsp/emenlow: initialize lvds backlight only if lvds enabled
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
X-List-Received-Date: Thu, 26 Apr 2012 18:48:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

intel_lvds_init() initializes the lvds backlight even if the lvds init
failed.  That doesn't make sense, and causes unnecessary error
messages in the kernel log.

Put the backlight init code into a separat function and only call it
if the lvds panel was successfully initialized.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_lvds.c |   51 ++++++++++++++++++++-----------------
 1 files changed, 28 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_lvds.c b/drivers/gpu/drm-psb/intel_lvds.c
index 218e895..6a55c9b 100644
--- a/drivers/gpu/drm-psb/intel_lvds.c
+++ b/drivers/gpu/drm-psb/intel_lvds.c
@@ -611,6 +611,33 @@ int intel_get_acpi_dod(char *method)
 	kfree(buffer.pointer);
 	return found;
 }
+
+static void intel_lvds_backlight_init(struct drm_device *dev)
+{
+	if ((blc_type == BLC_I2C_TYPE) || (blc_type == BLC_PWM_TYPE)){	
+		struct backlight_properties props;
+		memset(&props, 0, sizeof(struct backlight_properties));
+		props.type = BACKLIGHT_RAW;
+		/* add /sys/class/backlight interface as standard */
+		psbbl_device = backlight_device_register("psblvds", &dev->pdev->dev, dev, &psbbl_ops, &props);
+		if (psbbl_device){
+#if LINUX_VERSION_CODE <= KERNEL_VERSION(2,6,20)
+			down(&psbbl_device->sem);
+			psbbl_device->props->max_brightness = BRIGHTNESS_MAX_LEVEL;
+			psbbl_device->props->brightness = lvds_backlight;
+			psbbl_device->props->power = FB_BLANK_UNBLANK;
+			psbbl_device->props->update_status(psbbl_device);
+			up(&psbbl_device->sem);
+#else
+			psbbl_device->props.max_brightness = BRIGHTNESS_MAX_LEVEL;
+			psbbl_device->props.brightness = lvds_backlight;
+			psbbl_device->props.power = FB_BLANK_UNBLANK;
+			backlight_update_status(psbbl_device);
+#endif
+		}
+	}
+}
+
 /**
  * intel_lvds_init - setup LVDS outputs on this device
  * @dev: drm device
@@ -802,29 +829,6 @@ void intel_lvds_init(struct drm_device *dev)
 		}
 	}
 
-	if ((blc_type == BLC_I2C_TYPE) || (blc_type == BLC_PWM_TYPE)){	
-		struct backlight_properties props;
-		memset(&props, 0, sizeof(struct backlight_properties));
-		props.type = BACKLIGHT_RAW;
-		/* add /sys/class/backlight interface as standard */
-		psbbl_device = backlight_device_register("psblvds", &dev->pdev->dev, dev, &psbbl_ops, &props);
-		if (psbbl_device){
-#if LINUX_VERSION_CODE <= KERNEL_VERSION(2,6,20)
-			down(&psbbl_device->sem);
-			psbbl_device->props->max_brightness = BRIGHTNESS_MAX_LEVEL;
-			psbbl_device->props->brightness = lvds_backlight;
-			psbbl_device->props->power = FB_BLANK_UNBLANK;
-			psbbl_device->props->update_status(psbbl_device);
-			up(&psbbl_device->sem);
-#else
-			psbbl_device->props.max_brightness = BRIGHTNESS_MAX_LEVEL;
-			psbbl_device->props.brightness = lvds_backlight;
-			psbbl_device->props.power = FB_BLANK_UNBLANK;
-			backlight_update_status(psbbl_device);
-#endif
-		}
-	}
-
 blc_out:
 
 	/* Set up the DDC bus. */
@@ -939,6 +943,7 @@ blc_out:
 #endif
 
 out:
+	intel_lvds_backlight_init(dev);
 	return;
 
 failed:
-- 
1.7.0.4


