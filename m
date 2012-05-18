Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B4EE0142C
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 12:17:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 May 2012 12:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154523727"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2012 12:17:11 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 18 May 2012 12:15:50 -0700
Message-Id: <c6b354ed7b3b2bc4e9b8da7ca797667f18c2357a.1337368253.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1337368253.git.kishore.k.bodke@intel.com>
References: <cover.1337368253.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [KERNEL] Cedartrail: Move PVR specific to meta
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
X-List-Received-Date: Fri, 18 May 2012 19:17:12 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Moving Cedartrail PVR specific feature set
to kernel meta branch.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
index f83c02b..029a341 100644
--- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
@@ -1 +1,7 @@
 git merge yocto/pvr
+
+include  cfg/smp.scc
+include  cfg/drm-cdvpvr.scc
+include  cfg/efi-ext.scc
+include  features/power/intel.scc
+include  features/powertop/powertop.scc
-- 
1.7.9.5


