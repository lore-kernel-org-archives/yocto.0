Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9E6FE013D9
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:18 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Mar 2012 20:58:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77240938"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2012 20:58:17 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:33 -0500
Message-Id: <8e6c0074779d1c4cae2f71db05d14400acc69ff5.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 07/17][KERNEL] drm-psb: remove BKL remnants
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

replace lock/unlock_kernel with the drm_global_mutex from 3.0.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drmP.h       |    3 ++-
 drivers/gpu/drm-psb/drm_drv.c    |    4 ++--
 drivers/gpu/drm-psb/drm_fops.c   |   10 ++++++----
 drivers/gpu/drm-psb/drm_ioc32.c  |    4 ++--
 drivers/gpu/drm-psb/i915_ioc32.c |    4 ++--
 5 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm-psb/drmP.h b/drivers/gpu/drm-psb/drmP.h
index 2449fe0..3cca5fe 100644
--- a/drivers/gpu/drm-psb/drmP.h
+++ b/drivers/gpu/drm-psb/drmP.h
@@ -51,7 +51,6 @@
 #include <linux/pci.h>
 #include <linux/version.h>
 #include <linux/sched.h>
-#include <linux/smp_lock.h>	/* For (un)lock_kernel */
 #include <linux/mm.h>
 #include <linux/pagemap.h>
 #include <linux/i2c.h>
@@ -953,6 +952,8 @@ extern long drm_compat_ioctl(struct file *filp,
 
 extern int drm_lastclose(struct drm_device *dev);
 
+extern struct mutex drm_global_mutex;
+
 				/* Device support (drm_fops.h) */
 extern int drm_open(struct inode *inode, struct file *filp);
 extern int drm_stub_open(struct inode *inode, struct file *filp);
diff --git a/drivers/gpu/drm-psb/drm_drv.c b/drivers/gpu/drm-psb/drm_drv.c
index 573427b..472859b 100644
--- a/drivers/gpu/drm-psb/drm_drv.c
+++ b/drivers/gpu/drm-psb/drm_drv.c
@@ -663,9 +663,9 @@ long drm_unlocked_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		   ((ioctl->flags & DRM_MASTER) && !file_priv->master)) {
 		retcode = -EACCES;
 	} else {
-		lock_kernel();
+		mutex_lock(&drm_global_mutex);
 		retcode = func(dev, kdata, file_priv);
-		unlock_kernel();
+		mutex_unlock(&drm_global_mutex);
 	}
 
 	if ((retcode == 0) && (cmd & IOC_OUT)) {
diff --git a/drivers/gpu/drm-psb/drm_fops.c b/drivers/gpu/drm-psb/drm_fops.c
index 51a7905..8132c54 100644
--- a/drivers/gpu/drm-psb/drm_fops.c
+++ b/drivers/gpu/drm-psb/drm_fops.c
@@ -38,6 +38,8 @@
 #include "drm_sarea.h"
 #include <linux/poll.h>
 
+DEFINE_MUTEX(drm_global_mutex);
+
 static int drm_open_helper(struct inode *inode, struct file *filp,
 			   struct drm_device * dev);
 
@@ -379,7 +381,7 @@ int drm_release(struct inode *inode, struct file *filp)
 	struct drm_device *dev = file_priv->head->dev;
 	int retcode = 0;
 
-	lock_kernel();
+	mutex_lock(&drm_global_mutex);
 
 	DRM_DEBUG("open_count = %d\n", dev->open_count);
 
@@ -500,16 +502,16 @@ int drm_release(struct inode *inode, struct file *filp)
 			DRM_ERROR("Device busy: %d %d\n",
 				  atomic_read(&dev->ioctl_count), dev->blocked);
 			spin_unlock(&dev->count_lock);
-			unlock_kernel();
+			mutex_unlock(&drm_global_mutex);
 			return -EBUSY;
 		}
 		spin_unlock(&dev->count_lock);
-		unlock_kernel();
+		mutex_unlock(&drm_global_mutex);
 		return drm_lastclose(dev);
 	}
 	spin_unlock(&dev->count_lock);
 
-	unlock_kernel();
+	mutex_unlock(&drm_global_mutex);
 
 	return retcode;
 }
diff --git a/drivers/gpu/drm-psb/drm_ioc32.c b/drivers/gpu/drm-psb/drm_ioc32.c
index 0188154..0de3c82 100644
--- a/drivers/gpu/drm-psb/drm_ioc32.c
+++ b/drivers/gpu/drm-psb/drm_ioc32.c
@@ -1061,12 +1061,12 @@ long drm_compat_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 
 	fn = drm_compat_ioctls[nr];
 
-	lock_kernel();		/* XXX for now */
+	mutex_lock(&drm_global_lock);
 	if (fn != NULL)
 		ret = (*fn)(filp, cmd, arg);
 	else
 		ret = drm_ioctl(filp->f_dentry->d_inode, filp, cmd, arg);
-	unlock_kernel();
+	mutex_unlock(&drm_global_lock);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm-psb/i915_ioc32.c b/drivers/gpu/drm-psb/i915_ioc32.c
index 11dee03..5fb6892 100644
--- a/drivers/gpu/drm-psb/i915_ioc32.c
+++ b/drivers/gpu/drm-psb/i915_ioc32.c
@@ -212,12 +212,12 @@ long i915_compat_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	if (nr < DRM_COMMAND_BASE + DRM_ARRAY_SIZE(i915_compat_ioctls))
 		fn = i915_compat_ioctls[nr - DRM_COMMAND_BASE];
 
-	lock_kernel();		/* XXX for now */
+	mutex_lock(&drm_global_lock);
 	if (fn != NULL)
 		ret = (*fn)(filp, cmd, arg);
 	else
 		ret = drm_ioctl(filp->f_dentry->d_inode, filp, cmd, arg);
-	unlock_kernel();
+	mutex_unlock(&drm_global_lock);
 
 	return ret;
 }
-- 
1.7.0.4


