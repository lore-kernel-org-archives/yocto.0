Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40AC24C800B3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 09:35:33 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jun 2011 07:35:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="13855525"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by orsmga001.jf.intel.com with ESMTP; 13 Jun 2011 07:35:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2011 09:35:38 -0500
Message-Id: <b80a72531a144db0931459be8c07d96cd6b18c9a.1307975029.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1307975029.git.tom.zanussi@intel.com>
References: <cover.1307975029.git.tom.zanussi@intel.com>
Subject: [KERNEL][PATCH] meta: add utrace feature for linux-yocto
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
X-List-Received-Date: Mon, 13 Jun 2011 14:35:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a 'utrace feature' that turns on the kernel options required
for utrace, used mainly to enable userspace tracing for systemtap.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/utrace/utrace.cfg   |    1 +
 meta/cfg/kernel-cache/features/utrace/utrace.scc   |    2 ++
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
 3 files changed, 6 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/utrace/utrace.cfg
 create mode 100644 meta/cfg/kernel-cache/features/utrace/utrace.scc

diff --git a/meta/cfg/kernel-cache/features/utrace/utrace.cfg b/meta/cfg/kernel-cache/features/utrace/utrace.cfg
new file mode 100644
index 0000000..bf85aa2
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/utrace/utrace.cfg
@@ -0,0 +1 @@
+CONFIG_UTRACE=y
diff --git a/meta/cfg/kernel-cache/features/utrace/utrace.scc b/meta/cfg/kernel-cache/features/utrace/utrace.scc
new file mode 100644
index 0000000..0cab7d9
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/utrace/utrace.scc
@@ -0,0 +1,2 @@
+kconf non-hardware utrace.cfg
+
diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
index 290c50a..ac80038 100644
--- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
+++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
@@ -17,6 +17,9 @@ tag lttng
 include features/systemtap/systemtap.scc
 # tag systemtap
 
+include features/utrace/utrace.scc
+# tag utrace
+
 include arch/arm/arm.scc
 tag arm
 
-- 
1.7.0.4


