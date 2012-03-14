Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A098CE013CC
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 20:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120790960"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2012 20:58:14 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:31 -0500
Message-Id: <2f603ad6a4e9163d7d85ec66798919d1ed3bad1b.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 05/17][KERNEL] emenlow: switch to psb
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:15 -0000

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
index d83e967..f6fe3bd 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -19,7 +19,7 @@ source "drivers/char/agp/Kconfig"
 
 source "drivers/gpu/vga/Kconfig"
 
-source "drivers/gpu/drm/Kconfig"
+source "drivers/gpu/drm-psb/Kconfig"
 
 source "drivers/gpu/stub/Kconfig"
 
-- 
1.7.0.4


