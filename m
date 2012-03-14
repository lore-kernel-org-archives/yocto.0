Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCC83E013CC
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Mar 2012 20:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128723552"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2012 20:58:16 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:32 -0500
Message-Id: <45fb05e6260921016e21314b64ccf4e38cf7549f.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 06/17][KERNEL] drm: Fix psb ioctl assignment
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:16 -0000

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


