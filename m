Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAAADE006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:24:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Aug 2011 01:24:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="38082061"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2011 01:23:55 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:38 -0700
Message-Id: <30ce8a98c836d63def27a57d863be9bd2ee5a434.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 07/17] meta/rt: arm-versatile-926ejs preempt-rt support
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
X-List-Received-Date: Thu, 11 Aug 2011 08:24:04 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../arm-versatile-926ejs-preempt-rt.scc            |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt.scc

diff --git a/meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt.scc
new file mode 100644
index 0000000..c5ba7fc
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt.scc
@@ -0,0 +1,7 @@
+define KMACHINE arm-versatile-926ejs
+define KTYPE preempt-rt
+define KARCH arm
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include arm-versatile-926ejs.scc
-- 
1.7.6


