Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DD41E006EA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:10:08 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jul 2012 11:09:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="161053146"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by orsmga001.jf.intel.com with ESMTP; 03 Jul 2012 11:09:59 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:09:58 -0500
Message-Id: <00a87248a2f059ad6d3c06e42a42468449b8a3a3.1341337455.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1341337455.git.tom.zanussi@intel.com>
References: <cover.1341337455.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] features/ftrace: enable FTRACE_SYSCALLS
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
X-List-Received-Date: Tue, 03 Jul 2012 18:10:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add support for generic syscall entry/exit tracing.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/ftrace/ftrace.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg b/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
index bab800c..692dffe 100644
--- a/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
+++ b/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
@@ -1,2 +1,3 @@
 CONFIG_FUNCTION_TRACER=y
 CONFIG_FUNCTION_GRAPH_TRACER=y
+CONFIG_FTRACE_SYSCALLS=y
-- 
1.7.0.4


