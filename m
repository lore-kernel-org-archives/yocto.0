Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D98F4C80479
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:07 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2011 13:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="6009114"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 13:46:06 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:44:58 -0500
Message-Id: <319c75dfb6418b0032ef3ffb61a8d633c7634b4e.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 04/14][KERNEL] meta: add hugetlb feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a general-purpose feature for turning on common hugetlb options,
such as huge page support and hugetblfs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/hugetlb/hugetlb.cfg |    2 ++
 meta/cfg/kernel-cache/features/hugetlb/hugetlb.scc |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/hugetlb/hugetlb.cfg
 create mode 100644 meta/cfg/kernel-cache/features/hugetlb/hugetlb.scc

diff --git a/meta/cfg/kernel-cache/features/hugetlb/hugetlb.cfg b/meta/cfg/kernel-cache/features/hugetlb/hugetlb.cfg
new file mode 100644
index 0000000..6f48ed1
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/hugetlb/hugetlb.cfg
@@ -0,0 +1,2 @@
+CONFIG_HUGETLB_PAGE=y
+CONFIG_HUGETLBFS=y
diff --git a/meta/cfg/kernel-cache/features/hugetlb/hugetlb.scc b/meta/cfg/kernel-cache/features/hugetlb/hugetlb.scc
new file mode 100644
index 0000000..e2a0262
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/hugetlb/hugetlb.scc
@@ -0,0 +1 @@
+kconf non-hardware hugetlb.cfg
-- 
1.7.0.4


