Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EC81E011C6
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:49:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Aug 2011 09:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="38702533"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga002.jf.intel.com with ESMTP; 17 Aug 2011 09:50:09 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:50:13 -0500
Message-Id: <0fdd02a74ec09889077473c5c2b6423f0d5ce758.1313598858.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1313598858.git.tom.zanussi@intel.com>
References: <cover.1313598858.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2][KERNEL] bsp/fri2: merge emgd branch
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
X-List-Received-Date: Wed, 17 Aug 2011 16:49:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add scc commands to merge the yocto/emgd branch into the fri2 BSP.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index 6ac0bfb..a87ce7e 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -1,5 +1,7 @@
 kconf hardware fri2.cfg
 
+git merge yocto/emgd
+
 include features/eg20t/eg20t.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/dmaengine/dmaengine.scc
-- 
1.7.0.4


