Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1593CE01403
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 07:11:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Apr 2012 07:11:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="135193556"
Received: from unknown (HELO localhost) ([10.255.12.155])
	by azsmga001.ch.intel.com with ESMTP; 25 Apr 2012 07:11:21 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 25 Apr 2012 09:11:27 -0500
Message-Id: <3ab8e8d9f0e9c2c44b6dbf8df84c0c2b03c4167c.1335362402.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1335362402.git.tom.zanussi@intel.com>
References: <cover.1335362402.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1][3.2 KERNEL] bsp/emenlow: give up drm_global_mutex on contention in drm_lock()
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
X-List-Received-Date: Wed, 25 Apr 2012 14:11:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

If drm_lock_take() fails, give up the global ioctl mutex and allow
other locked ioctls in the meantime.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drm_lock.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/gpu/drm-psb/drm_lock.c b/drivers/gpu/drm-psb/drm_lock.c
index b8e4a5d..ba6630e 100644
--- a/drivers/gpu/drm-psb/drm_lock.c
+++ b/drivers/gpu/drm-psb/drm_lock.c
@@ -89,7 +89,9 @@ int drm_lock(struct drm_device *dev, void *data, struct drm_file *file_priv)
 		}
 
 		/* Contention */
+		mutex_unlock(&drm_global_mutex);
 		schedule();
+		mutex_lock(&drm_global_mutex);
 		if (signal_pending(current)) {
 			ret = -ERESTARTSYS;
 			break;
-- 
1.7.0.4


