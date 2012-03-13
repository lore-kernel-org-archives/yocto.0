Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC47E013BA
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 11:13:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2012 11:13:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138192060"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.80])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2012 11:13:23 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue, 13 Mar 2012 11:12:08 -0700
Message-Id: <8083fa2d885388cba7ff241aeaebfdb03983459d.1331661801.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1331661801.git.kishore.k.bodke@intel.com>
References: <cover.1331661801.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] meta: Create scc file for pvr merge
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
X-List-Received-Date: Tue, 13 Mar 2012 18:13:24 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This file is to merge the yocto/pvr branch to build with pvr for the targets
with appropriate hardware support.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc

diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
new file mode 100644
index 0000000..f83c02b
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
@@ -0,0 +1 @@
+git merge yocto/pvr
-- 
1.7.5.4


