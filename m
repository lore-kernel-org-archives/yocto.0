Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0932DE006C5
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:45 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Sep 2011 13:33:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="51973392"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by azsmga001.ch.intel.com with ESMTP; 21 Sep 2011 13:33:44 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:14 -0500
Message-Id: <b6a97d4e837563bebef7dde957f799c082e819b4.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 12/16][KERNEL] drm-psb: use console_lock/unlock()
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The acquire/release_console_sem() functions were renamed to
console_lock/unlock(), so change the calls.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/psb_fb.c |   16 ++++++++--------
 1 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm-psb/psb_fb.c b/drivers/gpu/drm-psb/psb_fb.c
index 72d1d14..5b612b8 100644
--- a/drivers/gpu/drm-psb/psb_fb.c
+++ b/drivers/gpu/drm-psb/psb_fb.c
@@ -874,9 +874,9 @@ int psbfb_kms_off_ioctl(struct drm_device *dev, void *data,
 {
 	int ret;
 
-	acquire_console_sem();
+	console_lock();
 	ret = psbfb_kms_off(dev, 0);
-	release_console_sem();
+	console_unlock();
 
 	return ret;
 }
@@ -953,9 +953,9 @@ int psbfb_kms_on_ioctl(struct drm_device *dev, void *data,
 {
 	int ret;
 
-	acquire_console_sem();
+	console_lock();
 	ret = psbfb_kms_on(dev, 0);
-	release_console_sem();
+	console_unlock();
 #ifdef SII_1392_WA
 	if((SII_1392 != 1) || (drm_psb_no_fb==0))
 		drm_disable_unused_functions(dev);
@@ -967,16 +967,16 @@ int psbfb_kms_on_ioctl(struct drm_device *dev, void *data,
 
 void psbfb_suspend(struct drm_device *dev)
 {
-	acquire_console_sem();
+	console_lock();
 	psbfb_kms_off(dev, 1);
-	release_console_sem();
+	console_unlock();
 }
 
 void psbfb_resume(struct drm_device *dev)
 {
-	acquire_console_sem();
+	console_lock();
 	psbfb_kms_on(dev, 1);
-	release_console_sem();
+	console_unlock();
 #ifdef SII_1392_WA
 	if((SII_1392 != 1) || (drm_psb_no_fb==0))
 		drm_disable_unused_functions(dev);
-- 
1.7.0.4


