Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10AA1E013B0
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 11:23:21 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2011 11:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,478,1315206000"; d="scan'208";a="71956965"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.157])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2011 11:23:16 -0800
From: kishore.k.bodke@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Tue,  8 Nov 2011 11:22:58 -0800
Message-Id: <e92b154fb3f469c4497a6725a0397fb94c73327b.1320777520.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1320777520.git.kishore.k.bodke@intel.com>
References: <cover.1320777520.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [KERNEL]meta/romley: Add rt support
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
X-List-Received-Date: Tue, 08 Nov 2011 19:23:21 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add rt support to the meta branch for romley.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../kernel-cache/bsp/romley/romley-preempt-rt.scc  |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc

diff --git a/meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc
new file mode 100644
index 0000000..634d244
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE romley
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include bsp/common-pc-64/common-pc-64.scc
+include romley.scc
-- 
1.7.5.4


