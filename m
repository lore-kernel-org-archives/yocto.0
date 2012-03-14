Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42DAFE013DC
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2012 20:58:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77240956"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2012 20:58:28 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:39 -0500
Message-Id: <521d410851b5d6ef564c6d36d275dc44167dd74f.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 13/17][KERNEL] drm-psb: add DRM_UNLOCKED flag
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:29 -0000

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


