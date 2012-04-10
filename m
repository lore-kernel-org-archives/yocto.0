Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B12DE01411
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2012 11:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130870816"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by orsmga002.jf.intel.com with ESMTP; 10 Apr 2012 11:57:05 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:36 -0700
Message-Id: <a74f27914eea483794bd18e9fee6131bb63996db.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 6/9] [meta-intel] Cedartrail: separte machconfig in recipes-bsp.
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
X-List-Received-Date: Tue, 10 Apr 2012 18:57:05 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Have two separte machconfig for supporting both
pvr and vesa version.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../formfactor/cedartrail-nopvr/machconfig         |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig

diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
-- 
1.7.5.4


