Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF822E00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2012 15:14:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137625926"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2012 15:14:09 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:25 -0700
Message-Id: <a411a3c25ad97ca878ac7b301c5914edddfce7bd.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
Subject: [PATCH 1/7] fri2: Use emgd-1.10 feature and branch
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
X-List-Received-Date: Tue, 01 May 2012 22:14:09 -0000

Update the fri2-standard.scc description to use the new emgd feature
and branch name. Without this change the emgd driver is not merged
and not built.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
index 66b87ce..e992db5 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
@@ -5,8 +5,8 @@ define KARCH i386
 include ktypes/standard
 branch fri2
 
-include features/emgd/emgd.scc
-git merge emgd
+include features/emgd/emgd-1.10.scc
+git merge emgd-1.10
 
 include fri2.scc
 
-- 
1.7.7.6


