Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B47CE00771
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2011 09:05:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2011 09:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,334,1312182000"; d="scan'208";a="48266194"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2011 09:05:08 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 05 Sep 2011 11:04:43 -0500
Message-ID: <1315238683.31478.197.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 1/1][KERNEL] meta: re-enable utrace feature for linux-yocto
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
X-List-Received-Date: Mon, 05 Sep 2011 16:05:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Re-enable the 'utrace feature' that turns on the kernel options required
for utrace, used mainly to enable userspace tracing for systemtap.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
index 38034d9..b4e22d0 100644
--- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
+++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
@@ -17,6 +17,9 @@ include features/lttng/lttng.scc
 include features/systemtap/systemtap.scc
 tag systemtap
 
+include features/utrace/utrace.scc
+tag utrace
+
 include arch/arm/arm.scc
 tag arm
 
-- 
1.7.0.4




