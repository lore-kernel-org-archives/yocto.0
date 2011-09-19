Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04B1EE0055D
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2011 20:35:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Sep 2011 20:35:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="49923161"
Received: from unknown (HELO localhost) ([10.255.14.162])
	by orsmga002.jf.intel.com with ESMTP; 18 Sep 2011 20:35:09 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Sun, 18 Sep 2011 22:34:52 -0500
Message-Id: <9c5fbbb4a372de910cccb6b9065c8e1d6bac6637.1316402566.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1316402566.git.tom.zanussi@intel.com>
References: <cover.1316402566.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1][KERNEL] meta: add blktrace feature
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
X-List-Received-Date: Mon, 19 Sep 2011 03:35:22 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a 'blktrace feature' that turns on kernel support for blktrace, a
block I/O tracing tool.  Added to 'standard' alongside similar tracing
tool config.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/features/blktrace/blktrace.cfg    |    1 +
 .../kernel-cache/features/blktrace/blktrace.scc    |    1 +
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
 3 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/blktrace/blktrace.cfg
 create mode 100644 meta/cfg/kernel-cache/features/blktrace/blktrace.scc

diff --git a/meta/cfg/kernel-cache/features/blktrace/blktrace.cfg b/meta/cfg/kernel-cache/features/blktrace/blktrace.cfg
new file mode 100644
index 0000000..3e61f2b
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/blktrace/blktrace.cfg
@@ -0,0 +1 @@
+CONFIG_BLK_DEV_IO_TRACE=y
diff --git a/meta/cfg/kernel-cache/features/blktrace/blktrace.scc b/meta/cfg/kernel-cache/features/blktrace/blktrace.scc
new file mode 100644
index 0000000..945714b
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/blktrace/blktrace.scc
@@ -0,0 +1 @@
+kconf non-hardware blktrace.cfg
diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
index b4e22d0..c8654cc 100644
--- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
+++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
@@ -14,6 +14,9 @@ tag kgdb
 
 include features/lttng/lttng.scc
 
+include features/blktrace/blktrace.scc
+tag blktrace
+
 include features/systemtap/systemtap.scc
 tag systemtap
 
-- 
1.7.0.4


