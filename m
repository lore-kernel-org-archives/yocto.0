Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0645E006C8
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Sep 2011 13:33:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="19340988"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Sep 2011 13:33:47 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:15 -0500
Message-Id: <47fbe18b478d6882ae72cd9f55ad2dcd4cb7230d.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 13/16][KERNEL] drm-psb: add DRM_UNLOCKED flag
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add DRM_UNLOCKED to allow us to call handlers that do their own
locking without the global lock.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drmP.h    |    1 +
 drivers/gpu/drm-psb/drm_drv.c |   10 +++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm-psb/drmP.h b/drivers/gpu/drm-psb/drmP.h
index 3cca5fe..9d5bb5c 100644
--- a/drivers/gpu/drm-psb/drmP.h
+++ b/drivers/gpu/drm-psb/drmP.h
@@ -309,6 +309,7 @@ typedef int drm_ioctl_compat_t(struct file *filp, unsigned int cmd,
 #define DRM_AUTH        0x1
 #define DRM_MASTER      0x2
 #define DRM_ROOT_ONLY   0x4
+#define DRM_UNLOCKED    0x8
 
 struct drm_ioctl_desc {
 	unsigned int cmd;
diff --git a/drivers/gpu/drm-psb/drm_drv.c b/drivers/gpu/drm-psb/drm_drv.c
index 472859b..396dcda 100644
--- a/drivers/gpu/drm-psb/drm_drv.c
+++ b/drivers/gpu/drm-psb/drm_drv.c
@@ -663,9 +663,13 @@ long drm_unlocked_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		   ((ioctl->flags & DRM_MASTER) && !file_priv->master)) {
 		retcode = -EACCES;
 	} else {
-		mutex_lock(&drm_global_mutex);
-		retcode = func(dev, kdata, file_priv);
-		mutex_unlock(&drm_global_mutex);
+		if (ioctl->flags & DRM_UNLOCKED)
+			retcode = func(dev, kdata, file_priv);
+		else {
+			mutex_lock(&drm_global_mutex);
+			retcode = func(dev, kdata, file_priv);
+			mutex_unlock(&drm_global_mutex);
+		}
 	}
 
 	if ((retcode == 0) && (cmd & IOC_OUT)) {
-- 
1.7.0.4


