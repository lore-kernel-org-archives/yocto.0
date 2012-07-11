Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21562E00349
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 22:29:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jul 2012 22:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191104086"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2012 22:29:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Wed, 11 Jul 2012 00:29:03 -0500
Message-Id: <2901aea4b394216813b69e1ddf906f5cca2a40e2.1341983825.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
References: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341983825.git.tom.zanussi@intel.com>
References: <cover.1341983825.git.tom.zanussi@intel.com>
Subject: [PATCH 6/6] perf: add sgidefs.h to for mips builds
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
X-List-Received-Date: Wed, 11 Jul 2012 05:29:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Allow Python.h to find the definitions it needs on mips i.e. get rid
of the error: "_ABIN32" is not defined.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../perf/scripts/python/Perf-Trace-Util/Context.c  |    4 ++++
 .../util/scripting-engines/trace-event-python.c    |    4 ++++
 2 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/tools/perf/scripts/python/Perf-Trace-Util/Context.c b/tools/perf/scripts/python/Perf-Trace-Util/Context.c
index 315067b..57d3aa3 100644
--- a/tools/perf/scripts/python/Perf-Trace-Util/Context.c
+++ b/tools/perf/scripts/python/Perf-Trace-Util/Context.c
@@ -19,6 +19,10 @@
  *
  */
 
+#ifdef __mips__
+#include <sgidefs.h>
+#endif
+
 #include <Python.h>
 #include "../../../perf.h"
 #include "../../../util/trace-event.h"
diff --git a/tools/perf/util/scripting-engines/trace-event-python.c b/tools/perf/util/scripting-engines/trace-event-python.c
index 6ccf70e..460c474 100644
--- a/tools/perf/util/scripting-engines/trace-event-python.c
+++ b/tools/perf/util/scripting-engines/trace-event-python.c
@@ -19,6 +19,10 @@
  *
  */
 
+#ifdef __mips__
+#include <sgidefs.h>
+#endif
+
 #include <Python.h>
 
 #include <stdio.h>
-- 
1.7.0.4


