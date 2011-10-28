Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06649E0133D
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 07:00:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Oct 2011 06:59:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="68585042"
Received: from unknown (HELO localhost) ([10.255.15.170])
	by orsmga002.jf.intel.com with ESMTP; 28 Oct 2011 06:59:58 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 28 Oct 2011 08:59:50 -0500
Message-Id: <03a680b265874eda3d07704a048c247c007f35dd.1319810084.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3cf02697e2c7cf03c9f38b4c7d2192c1aceddc56.1319810084.git.tom.zanussi@intel.com>
References: <3cf02697e2c7cf03c9f38b4c7d2192c1aceddc56.1319810084.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319810084.git.tom.zanussi@intel.com>
References: <cover.1319810084.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-romley: change references to sugarbay in linux-yocto-rt_3.0.bbappend
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
X-List-Received-Date: Fri, 28 Oct 2011 14:00:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

There are still references to sugarbay in linux-yocto-rt_3.0.bbappend;
this changes them to romley.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index d630dc4..1551ccf 100644
--- a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -3,6 +3,6 @@ COMPATIBLE_MACHINE_romley = "romley"
 KMACHINE_romley  = "romley"
 
 # Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_sugarbay  = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= XXXX
+#KBRANCH_romley  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_romley ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_romley ?= XXXX
-- 
1.7.0.4


