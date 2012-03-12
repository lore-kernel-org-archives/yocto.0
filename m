Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35BDBE01363
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 08:09:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Mar 2012 08:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137441551"
Received: from unknown (HELO localhost) ([10.255.15.160])
	by fmsmga002.fm.intel.com with ESMTP; 12 Mar 2012 08:09:43 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Mon, 12 Mar 2012 10:09:34 -0500
Message-Id: <9a5790cb5203f0d0d7f5312aa7a247e7c6cd6739.1331564330.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <9665e930606d2c81579f74bb202aead2c2c19170.1331564330.git.tom.zanussi@intel.com>
References: <9665e930606d2c81579f74bb202aead2c2c19170.1331564330.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331564330.git.tom.zanussi@intel.com>
References: <cover.1331564330.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3][KERNEL] yocto/emgd: linux 3.2-related build fixups
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
X-List-Received-Date: Mon, 12 Mar 2012 15:09:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fix build errors caused by changes to kernel interfaces introduced by
linux 3.2 such as:

error: 'THIS_MODULE' undeclared here (not in a function)

due to a missing THIS_MODULE definition which can be found in linux/export.h.

It also fixes a ream of errors like:

error: expected ')' before string constant

due to missing MODULE_PARM_DESC definition which can be found in
linux/moduleparam.h, included by linux/module.h, needed also for
MODULE_AUTHOR, etc.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c   |    2 ++
 drivers/gpu/drm/emgd/emgd/drm/emgd_fbcon.c |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c b/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
index 5a8f2e6..9ed2363 100644
--- a/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
+++ b/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
@@ -38,6 +38,8 @@
 #include <drm/drm_crtc_helper.h>
 #include <linux/version.h>
 #include <linux/device.h>
+#include <linux/export.h>
+#include <linux/module.h>
 #include <drm/drm_pciids.h>
 #include <intelpci.h>
 #include "drm_emgd_private.h"
diff --git a/drivers/gpu/drm/emgd/emgd/drm/emgd_fbcon.c b/drivers/gpu/drm/emgd/emgd/drm/emgd_fbcon.c
index 547caaa..edfe2c7 100644
--- a/drivers/gpu/drm/emgd/emgd/drm/emgd_fbcon.c
+++ b/drivers/gpu/drm/emgd/emgd/drm/emgd_fbcon.c
@@ -36,6 +36,7 @@
 #include <drmP.h>
 #include <drm_crtc_helper.h>
 #include <linux/vga_switcheroo.h>
+#include <linux/export.h>
 
 
 #include "user_config.h"
-- 
1.7.0.4


