Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C663AE0044D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 20:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120790993"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2012 20:58:30 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:40 -0500
Message-Id: <fdb2d50fb4eab6b6520ec30b1da68a14577be525.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 14/17][KERNEL] drm-psb: mark unlocked ioctls
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Mark the ioctls that already do their own locking DRM_UNLOCKED.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drm_drv.c |   24 ++++++++++++------------
 drivers/gpu/drm-psb/psb_drv.c |   10 +++++-----
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm-psb/drm_drv.c b/drivers/gpu/drm-psb/drm_drv.c
index 396dcda..30af3fa 100644
--- a/drivers/gpu/drm-psb/drm_drv.c
+++ b/drivers/gpu/drm-psb/drm_drv.c
@@ -117,18 +117,18 @@ static struct drm_ioctl_desc drm_ioctls[] = {
 	DRM_IOCTL_DEF(DRM_IOCTL_SG_FREE, drm_sg_free, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	DRM_IOCTL_DEF(DRM_IOCTL_WAIT_VBLANK, drm_wait_vblank, 0),
 	DRM_IOCTL_DEF(DRM_IOCTL_UPDATE_DRAW, drm_update_drawable_info, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETRESOURCES, drm_mode_getresources, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETCRTC, drm_mode_getcrtc, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETOUTPUT, drm_mode_getoutput, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_SETCRTC, drm_mode_setcrtc, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_ADDFB, drm_mode_addfb, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_RMFB, drm_mode_rmfb, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETFB, drm_mode_getfb, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_ADDMODE, drm_mode_addmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_RMMODE, drm_mode_rmmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_ATTACHMODE, drm_mode_attachmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_DETACHMODE, drm_mode_detachmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETPROPERTY, drm_mode_getproperty_ioctl, DRM_MASTER | DRM_ROOT_ONLY),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETRESOURCES, drm_mode_getresources, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETCRTC, drm_mode_getcrtc, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETOUTPUT, drm_mode_getoutput, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_SETCRTC, drm_mode_setcrtc, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_ADDFB, drm_mode_addfb, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_RMFB, drm_mode_rmfb, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETFB, drm_mode_getfb, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_ADDMODE, drm_mode_addmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_RMMODE, drm_mode_rmmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_ATTACHMODE, drm_mode_attachmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_DETACHMODE, drm_mode_detachmode_ioctl, DRM_MASTER|DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GETPROPERTY, drm_mode_getproperty_ioctl, DRM_MASTER | DRM_ROOT_ONLY|DRM_UNLOCKED),
 
 	DRM_IOCTL_DEF(DRM_IOCTL_MM_INIT, drm_mm_init_ioctl,
 		      DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
diff --git a/drivers/gpu/drm-psb/psb_drv.c b/drivers/gpu/drm-psb/psb_drv.c
index 471481e..3873c7e 100644
--- a/drivers/gpu/drm-psb/psb_drv.c
+++ b/drivers/gpu/drm-psb/psb_drv.c
@@ -100,15 +100,15 @@ static struct pci_device_id pciidlist[] = {
 #define DRM_PSB_KMS_ON_IOCTL	DRM_IO(DRM_PSB_KMS_ON)
 
 static struct drm_ioctl_desc psb_ioctls[] = {
-	DRM_IOCTL_DEF(DRM_PSB_CMDBUF_IOCTL, psb_cmdbuf_ioctl, DRM_AUTH),
+	DRM_IOCTL_DEF(DRM_PSB_CMDBUF_IOCTL, psb_cmdbuf_ioctl, DRM_AUTH|DRM_UNLOCKED),
 	DRM_IOCTL_DEF(DRM_PSB_XHW_INIT_IOCTL, psb_xhw_init_ioctl,
 		      DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_PSB_XHW_IOCTL, psb_xhw_ioctl, DRM_AUTH),
+	DRM_IOCTL_DEF(DRM_PSB_XHW_IOCTL, psb_xhw_ioctl, DRM_AUTH|DRM_UNLOCKED|DRM_UNLOCKED),
 	DRM_IOCTL_DEF(DRM_PSB_SCENE_UNREF_IOCTL, drm_psb_scene_unref_ioctl,
-		      DRM_AUTH),
+		      DRM_AUTH|DRM_UNLOCKED),
 	DRM_IOCTL_DEF(DRM_PSB_KMS_OFF_IOCTL, psbfb_kms_off_ioctl,
-		      DRM_ROOT_ONLY),
-	DRM_IOCTL_DEF(DRM_PSB_KMS_ON_IOCTL, psbfb_kms_on_ioctl, DRM_ROOT_ONLY),
+		      DRM_ROOT_ONLY|DRM_UNLOCKED),
+	DRM_IOCTL_DEF(DRM_PSB_KMS_ON_IOCTL, psbfb_kms_on_ioctl, DRM_ROOT_ONLY|DRM_UNLOCKED),
 	DRM_IOCTL_DEF(DRM_PSB_HW_INFO_IOCTL, psb_hw_info_ioctl, DRM_AUTH),
 };
 static int psb_max_ioctl = DRM_ARRAY_SIZE(psb_ioctls);
-- 
1.7.0.4


