Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03163E0137A
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 10:46:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2012 10:46:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="144716851"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.165])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2012 10:46:03 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 25 May 2012 10:44:33 -0700
Message-Id: <b020797ce6117f93030afd3c5db69732af25649f.1337967434.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1337967434.git.kishore.k.bodke@intel.com>
References: <cover.1337967434.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [KERNEL] meta: Add cedartrail kernel features
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
X-List-Received-Date: Fri, 25 May 2012 17:46:04 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Move Kernel Features out of the BSP
and add to the Cedartrail Machine branch.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
index f83c02b..98807fa 100644
--- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
@@ -1 +1,5 @@
 git merge yocto/pvr
+
+include features/power/intel.scc
+include cfg/smp.scc
+include cfg/drm-cdvpvr.scc
-- 
1.7.9.5


