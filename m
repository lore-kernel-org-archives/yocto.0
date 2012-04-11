Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F8C9E013A8
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 17:16:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Apr 2012 17:16:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129408780"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by azsmga001.ch.intel.com with ESMTP; 10 Apr 2012 17:16:36 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruse.ashfield@windriver.com
Date: Tue, 10 Apr 2012 17:15:18 -0700
Message-Id: <3af2acfc4056db7e2a743db32200283ce6b8d428.1334103101.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334103101.git.kishore.k.bodke@intel.com>
References: <cover.1334103101.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [KERNEL] meta: Add igb.scc to Romley
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
X-List-Received-Date: Wed, 11 Apr 2012 00:16:37 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Romley machine has 82580 Giga bit Ethernet Controller.
Add the relavent Nic driver to it.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta/cfg/kernel-cache/bsp/romley/romley.scc |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/romley/romley.scc b/meta/cfg/kernel-cache/bsp/romley/romley.scc
index 5d997e1..b55f804 100644
--- a/meta/cfg/kernel-cache/bsp/romley/romley.scc
+++ b/meta/cfg/kernel-cache/bsp/romley/romley.scc
@@ -4,9 +4,8 @@ include features/i915/i915.scc
 include features/serial/8250.scc
 include features/uio/uio.scc
 include features/hugetlb/hugetlb.scc
-include features/intel-e1xxxx/intel-e100.scc
-include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/ixgbe/ixgbe.scc
+include features/igb/igb.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.5.4


