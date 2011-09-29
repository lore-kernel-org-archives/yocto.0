Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34CBEE0127C
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 13:17:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Sep 2011 13:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,463,1312182000"; d="scan'208";a="72270034"
Received: from unknown (HELO localhost) ([10.255.14.216])
	by fmsmga002.fm.intel.com with ESMTP; 29 Sep 2011 13:17:08 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 15:17:03 -0500
Message-Id: <b33bc7ad590e46d721bdb16adfb1e90c7d74e221.1317326894.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1317326894.git.tom.zanussi@intel.com>
References: <cover.1317326894.git.tom.zanussi@intel.com>
Subject: [PATCH 1/5][KERNEL] features/drm-psb: add related config options
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
X-List-Received-Date: Thu, 29 Sep 2011 20:17:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This allows us to move them out of the bsp config.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg b/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg
index cdd805b..ea7cbfc 100644
--- a/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg
+++ b/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg
@@ -1,2 +1,15 @@
 CONFIG_DRM=y
 CONFIG_DRM_PSB=m
+
+CONFIG_I2C=y
+CONFIG_VIDEO_V4L2=y
+CONFIG_VIDEO_IVTV=y
+CONFIG_MEDIA_SUPPORT=y
+CONFIG_VIDEO_CAPTURE_DRIVERS=y
+CONFIG_VIDEO_DEV=y
+CONFIG_VIDEO_V4L2_COMMON=y
+CONFIG_I2C_ALGOBIT=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_VIDEO_FB_IVTV=y
-- 
1.7.0.4


