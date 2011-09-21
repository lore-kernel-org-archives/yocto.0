Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A536E006B7
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Sep 2011 13:33:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="19340938"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Sep 2011 13:33:33 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:08 -0500
Message-Id: <f3066b081e465ffb44e4c2b5d3f4dd7780d33fa9.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 06/16][KERNEL] drm: Fix psb ioctl assignment
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Replace drm_ioctl with drm_unlocked_ioctl.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drm_drv.c |    2 ++
 drivers/gpu/drm-psb/psb_drv.c |    2 +-
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm-psb/drm_drv.c b/drivers/gpu/drm-psb/drm_drv.c
index b34f2e5..573427b 100644
--- a/drivers/gpu/drm-psb/drm_drv.c
+++ b/drivers/gpu/drm-psb/drm_drv.c
@@ -663,7 +663,9 @@ long drm_unlocked_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		   ((ioctl->flags & DRM_MASTER) && !file_priv->master)) {
 		retcode = -EACCES;
 	} else {
+		lock_kernel();
 		retcode = func(dev, kdata, file_priv);
+		unlock_kernel();
 	}
 
 	if ((retcode == 0) && (cmd & IOC_OUT)) {
diff --git a/drivers/gpu/drm-psb/psb_drv.c b/drivers/gpu/drm-psb/psb_drv.c
index 794c180..67486c0 100644
--- a/drivers/gpu/drm-psb/psb_drv.c
+++ b/drivers/gpu/drm-psb/psb_drv.c
@@ -984,7 +984,7 @@ static struct drm_driver driver = {
 		 .owner = THIS_MODULE,
 		 .open = drm_open,
 		 .release = psb_release,
-		 .ioctl = drm_ioctl,
+		 .unlocked_ioctl = drm_unlocked_ioctl,
 		 .mmap = drm_mmap,
 		 .poll = psb_poll,
 		 .fasync = drm_fasync,
-- 
1.7.0.4


