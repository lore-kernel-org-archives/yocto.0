Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59CEE006C1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Sep 2011 13:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="19340953"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Sep 2011 13:33:37 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:10 -0500
Message-Id: <d7fef3b06c527aadf9219a077328ee163d7b05e8.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 08/16][KERNEL] drm-psb: update spinlock initializers
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update SPIN_LOCK_UNLOCKED users to __ form.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drm_compat.h       |    2 +-
 drivers/gpu/drm-psb/drm_memory.c       |    2 +-
 drivers/gpu/drm-psb/drm_memory_debug.c |    2 +-
 drivers/gpu/drm-psb/drm_memory_debug.h |    2 +-
 drivers/gpu/drm-psb/psb_drv.c          |    2 +-
 drivers/gpu/drm-psb/psb_reset.c        |    2 +-
 drivers/gpu/drm-psb/psb_schedule.c     |    2 +-
 drivers/gpu/drm-psb/psb_sgx.c          |    2 +-
 drivers/gpu/drm-psb/psb_xhw.c          |    2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm-psb/drm_compat.h b/drivers/gpu/drm-psb/drm_compat.h
index 4895635..d24421c 100644
--- a/drivers/gpu/drm-psb/drm_compat.h
+++ b/drivers/gpu/drm-psb/drm_compat.h
@@ -140,7 +140,7 @@ static __inline__ void *kcalloc(size_t nmemb, size_t size, int flags)
 #endif
 
 #ifndef DEFINE_SPINLOCK
-#define DEFINE_SPINLOCK(x) spinlock_t x = SPIN_LOCK_UNLOCKED
+#define DEFINE_SPINLOCK(x) spinlock_t x = __SPIN_LOCK_UNLOCKED(x)
 #endif
 
 /* old architectures */
diff --git a/drivers/gpu/drm-psb/drm_memory.c b/drivers/gpu/drm-psb/drm_memory.c
index c890499..207e8cb 100644
--- a/drivers/gpu/drm-psb/drm_memory.c
+++ b/drivers/gpu/drm-psb/drm_memory.c
@@ -44,7 +44,7 @@ static struct {
 	uint64_t high_threshold;
 	uint64_t emer_threshold;
 } drm_memctl = {
-	.lock = SPIN_LOCK_UNLOCKED
+  .lock = __SPIN_LOCK_UNLOCKED(drm_memctl.lock)
 };
 
 int drm_alloc_memctl(size_t size)
diff --git a/drivers/gpu/drm-psb/drm_memory_debug.c b/drivers/gpu/drm-psb/drm_memory_debug.c
index c196ee2..2091844 100644
--- a/drivers/gpu/drm-psb/drm_memory_debug.c
+++ b/drivers/gpu/drm-psb/drm_memory_debug.c
@@ -44,7 +44,7 @@ typedef struct drm_mem_stats {
 	unsigned long bytes_freed;
 } drm_mem_stats_t;
 
-static spinlock_t drm_mem_lock = SPIN_LOCK_UNLOCKED;
+static spinlock_t drm_mem_lock = __SPIN_LOCK_UNLOCKED(drm_mem_lock);
 static unsigned long drm_ram_available = 0;	/* In pages */
 static unsigned long drm_ram_used = 0;
 static drm_mem_stats_t drm_mem_stats[] = {
diff --git a/drivers/gpu/drm-psb/drm_memory_debug.h b/drivers/gpu/drm-psb/drm_memory_debug.h
index b055ac0..433bdcb 100644
--- a/drivers/gpu/drm-psb/drm_memory_debug.h
+++ b/drivers/gpu/drm-psb/drm_memory_debug.h
@@ -42,7 +42,7 @@ typedef struct drm_mem_stats {
 	unsigned long bytes_freed;
 } drm_mem_stats_t;
 
-static spinlock_t drm_mem_lock = SPIN_LOCK_UNLOCKED;
+static spinlock_t drm_mem_lock = __SPIN_LOCK_UNLOCKED(drm_mem_lock);
 static unsigned long drm_ram_available = 0;	/* In pages */
 static unsigned long drm_ram_used = 0;
 static drm_mem_stats_t drm_mem_stats[] =
diff --git a/drivers/gpu/drm-psb/psb_drv.c b/drivers/gpu/drm-psb/psb_drv.c
index 67486c0..471481e 100644
--- a/drivers/gpu/drm-psb/psb_drv.c
+++ b/drivers/gpu/drm-psb/psb_drv.c
@@ -341,7 +341,7 @@ static int psb_do_init(struct drm_device *dev)
 		     _PSB_CC_REVISION_DESIGNER_SHIFT);
 	}
 
-	dev_priv->irqmask_lock = SPIN_LOCK_UNLOCKED;
+	dev_priv->irqmask_lock = __SPIN_LOCK_UNLOCKED(dev_priv->irqmask_lock);
 	dev_priv->fence0_irq_on = 0;
 
 	tt_pages = (pg->gatt_pages < PSB_TT_PRIV0_PLIMIT) ?
diff --git a/drivers/gpu/drm-psb/psb_reset.c b/drivers/gpu/drm-psb/psb_reset.c
index bfe8c49..a259890 100644
--- a/drivers/gpu/drm-psb/psb_reset.c
+++ b/drivers/gpu/drm-psb/psb_reset.c
@@ -352,7 +352,7 @@ void psb_watchdog_init(struct drm_psb_private *dev_priv)
 	struct timer_list *wt = &dev_priv->watchdog_timer;
 	unsigned long irq_flags;
 
-	dev_priv->watchdog_lock = SPIN_LOCK_UNLOCKED;
+	dev_priv->watchdog_lock = __SPIN_LOCK_UNLOCKED(dev_priv->watchdog_lock);
 	spin_lock_irqsave(&dev_priv->watchdog_lock, irq_flags);
 	init_timer(wt);
 	INIT_WORK(&dev_priv->watchdog_wq, &psb_reset_wq);
diff --git a/drivers/gpu/drm-psb/psb_schedule.c b/drivers/gpu/drm-psb/psb_schedule.c
index 959f8f9..2827802 100644
--- a/drivers/gpu/drm-psb/psb_schedule.c
+++ b/drivers/gpu/drm-psb/psb_schedule.c
@@ -1087,7 +1087,7 @@ int psb_scheduler_init(struct drm_device *dev, struct psb_scheduler *scheduler)
 	memset(scheduler, 0, sizeof(*scheduler));
 	scheduler->dev = dev;
 	mutex_init(&scheduler->task_wq_mutex);
-	scheduler->lock = SPIN_LOCK_UNLOCKED;
+	scheduler->lock = __SPIN_LOCK_UNLOCKED(scheduler->lock);
 	scheduler->idle = 1;
 
 	INIT_LIST_HEAD(&scheduler->ta_queue);
diff --git a/drivers/gpu/drm-psb/psb_sgx.c b/drivers/gpu/drm-psb/psb_sgx.c
index 3027113..e5645f5 100644
--- a/drivers/gpu/drm-psb/psb_sgx.c
+++ b/drivers/gpu/drm-psb/psb_sgx.c
@@ -301,7 +301,7 @@ int psb_emit_2d_copy_blit(struct drm_device *dev,
 
 void psb_init_2d(struct drm_psb_private *dev_priv)
 {
-	dev_priv->sequence_lock = SPIN_LOCK_UNLOCKED;
+	dev_priv->sequence_lock = __SPIN_LOCK_UNLOCKED(dev_priv->sequence_lock);
 	psb_reset(dev_priv, 1);
 	dev_priv->mmu_2d_offset = dev_priv->pg->gatt_start;
 	PSB_WSGX32(dev_priv->mmu_2d_offset, PSB_CR_BIF_TWOD_REQ_BASE);
diff --git a/drivers/gpu/drm-psb/psb_xhw.c b/drivers/gpu/drm-psb/psb_xhw.c
index 6470ec0..e363b50 100644
--- a/drivers/gpu/drm-psb/psb_xhw.c
+++ b/drivers/gpu/drm-psb/psb_xhw.c
@@ -401,7 +401,7 @@ int psb_xhw_init(struct drm_device *dev)
 	unsigned long irq_flags;
 
 	INIT_LIST_HEAD(&dev_priv->xhw_in);
-	dev_priv->xhw_lock = SPIN_LOCK_UNLOCKED;
+	dev_priv->xhw_lock = __SPIN_LOCK_UNLOCKED(dev_priv->xhw_lock);
 	atomic_set(&dev_priv->xhw_client, 0);
 	init_waitqueue_head(&dev_priv->xhw_queue);
 	init_waitqueue_head(&dev_priv->xhw_caller_queue);
-- 
1.7.0.4


