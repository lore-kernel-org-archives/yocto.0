Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F985E006B6
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Sep 2011 13:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="51554446"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by orsmga001.jf.intel.com with ESMTP; 21 Sep 2011 13:33:31 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:07 -0500
Message-Id: <3874c9fad7b6ec73173be49e3a53580038f9fc99.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 05/16][KERNEL] emenlow: switch to psb
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:32 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use drm-psb instead of drm for emenlow.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/Makefile  |    2 +-
 drivers/video/Kconfig |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/Makefile b/drivers/gpu/Makefile
index cc92778..7585044 100644
--- a/drivers/gpu/Makefile
+++ b/drivers/gpu/Makefile
@@ -1 +1 @@
-obj-y			+= drm/ vga/ stub/
+obj-y			+= drm-psb/ vga/ stub/
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 549b960..de70e84 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -19,7 +19,7 @@ source "drivers/char/agp/Kconfig"
 
 source "drivers/gpu/vga/Kconfig"
 
-source "drivers/gpu/drm/Kconfig"
+source "drivers/gpu/drm-psb/Kconfig"
 
 source "drivers/gpu/stub/Kconfig"
 
-- 
1.7.0.4


