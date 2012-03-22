Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A52E2E013DA
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="120707191"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga001.jf.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:23 -0700
Message-Id: <fbe55c4eefa84f105a9c0d9e55d77e184fc1921a.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 10/13] meta-cedartrail: update formfactor recipe for pvr and no-pvr case
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:30 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Seperate machconfig files for pvr and no-pvr case

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../formfactor/cedartrail-nopvr/machconfig         |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
 mode change 100755 => 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig

diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
old mode 100755
new mode 100644
-- 
1.7.4.1


