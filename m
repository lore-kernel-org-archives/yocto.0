Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C804E00744
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 08:18:38 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jan 2012 08:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="52838432"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.127])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jan 2012 08:18:37 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jan 2012 08:18:33 -0800
Message-Id: <ec8a6f72467c0c237b23626de327115b1b861c5c.1325607441.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
Subject: [CONSOLIDATED PULL (meta-yocto) 2/4] linux-yocto-rt/meta-yocto: add routerstationpro support
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
X-List-Received-Date: Tue, 03 Jan 2012 16:18:38 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Fixes [YOCTO #1390]

Updated the meta-yocto support for the routerstationpro on the
preempt-rt kernel support.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index ab0f24c..831df8d 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -19,7 +19,7 @@ SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "0b805cce57f61a244eb3b8fce460b14
 #SRCREV_machine_pn-linux-yocto-rt_beagleboard = 
 
 # routerstationpro support - preempt-rt kernel build failure
-#COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-#KMACHINE_routerstationpro = "routerstationpro"
-#KBRANCH_routerstationpro = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "7e1e5b6c8a13c615feb0d7b6d37988a094aae98f"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+KMACHINE_routerstationpro = "routerstationpro"
+KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
+SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "43dcdffebb64d9ce2f5cdcb18bb74bd9c301133f"
-- 
1.7.6.4


