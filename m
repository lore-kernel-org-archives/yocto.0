Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D744E01273
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 21:45:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Sep 2011 21:45:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44911271"
Received: from unknown (HELO [10.255.14.13]) ([10.255.14.13])
	by orsmga001.jf.intel.com with ESMTP; 02 Sep 2011 21:45:25 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 02 Sep 2011 23:45:12 -0500
Message-ID: <1315025112.31478.139.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 1/1][KERNEL] meta: re-enable systemtap feature for linux-yocto
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
X-List-Received-Date: Sat, 03 Sep 2011 04:45:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Re-enable the 'systemtap feature' that turns on the kernel options required
for systemtap, a system-wide tracing tool.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
index 8f1e808..38034d9 100644
--- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
+++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
@@ -14,8 +14,8 @@ tag kgdb
 
 include features/lttng/lttng.scc
 
-#include features/systemtap/systemtap.scc
-#tag systemtap
+include features/systemtap/systemtap.scc
+tag systemtap
 
 include arch/arm/arm.scc
 tag arm
-- 
1.7.0.4




