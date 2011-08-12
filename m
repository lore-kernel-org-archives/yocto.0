Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A634AE0048B
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 12:33:06 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2011 12:33:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,364,1309762800"; d="scan'208";a="40963046"
Received: from unknown (HELO localhost) ([10.255.14.198])
	by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2011 12:33:15 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Fri, 12 Aug 2011 14:33:11 -0500
Message-Id: <7203d9e5fc37996652aea1b1ee49316acab88197.1313169409.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1313169409.git.tom.zanussi@intel.com>
References: <cover.1313169409.git.tom.zanussi@intel.com>
Subject: [PATCH][KERNEL] meta/crownbay: enable hpet
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
X-List-Received-Date: Fri, 12 Aug 2011 19:33:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The crownbay reference board has HPET hardware - enable it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 09ecf3b..c7cd538 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -12,3 +12,5 @@ include features/logbuf/size-normal.scc
 
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
+
+include features/hpet/hpet.scc
-- 
1.7.0.4


