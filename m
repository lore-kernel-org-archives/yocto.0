Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F172AE0044D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:59:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 20:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120791001"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2012 20:58:35 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:43 -0500
Message-Id: <28d950c362eb323a2f217e14063bdcbe880c0f04.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 17/17][KERNEL] drm-psb: change udelay to mdelay in intel_wait_for_vblank()
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
X-List-Received-Date: Wed, 14 Mar 2012 03:59:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes the compile error>

ERROR: "__bad_udelay" [drivers/gpu/drm-psb/psb.ko] undefined!

This is the same fix as in gma500:

  commit 243dd2809a5edd2e0e3e62781083aa44049af37d
  Author: Stephen Rothwell <sfr@canb.auug.org.au>
  Date:   Mon Jul 25 15:18:44 2011 +1000

    gma500: udelay(20000) it too long again

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_display.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_display.c b/drivers/gpu/drm-psb/intel_display.c
index f81cde3..d28051d 100644
--- a/drivers/gpu/drm-psb/intel_display.c
+++ b/drivers/gpu/drm-psb/intel_display.c
@@ -354,7 +354,7 @@ void
 intel_wait_for_vblank(struct drm_device *dev)
 {
 	/* Wait for 20ms, i.e. one cycle at 50hz. */
-	udelay(20000);
+	mdelay(20);
 }
 
 void
-- 
1.7.0.4


