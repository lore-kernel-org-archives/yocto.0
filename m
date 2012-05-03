Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8264AE01418
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 20:35:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 May 2012 20:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148755794"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by fmsmga001.fm.intel.com with ESMTP; 02 May 2012 20:35:34 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  2 May 2012 22:35:24 -0500
Message-Id: <177e2b9ee273b62417a41357644cbbfb776ec3b0.1336015630.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
References: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336015630.git.tom.zanussi@intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
Subject: [PATCH 5/5][KERNEL] meta: add mei feature
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
X-List-Received-Date: Thu, 03 May 2012 03:35:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an 'mei' feature that turns on the kernel options required to
support the Intel Management Engine Interface.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/amt/mei/mei.cfg |    3 +++
 meta/cfg/kernel-cache/features/amt/mei/mei.scc |    4 ++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
 create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc

diff --git a/meta/cfg/kernel-cache/features/amt/mei/mei.cfg b/meta/cfg/kernel-cache/features/amt/mei/mei.cfg
new file mode 100644
index 0000000..c1c2ace
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/amt/mei/mei.cfg
@@ -0,0 +1,3 @@
+CONFIG_STAGING=y
+CONFIG_WATCHDOG_CORE=y
+CONFIG_INTEL_MEI=y
diff --git a/meta/cfg/kernel-cache/features/amt/mei/mei.scc b/meta/cfg/kernel-cache/features/amt/mei/mei.scc
new file mode 100644
index 0000000..c506a04
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/amt/mei/mei.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable options for the Intel Management Engine Interface"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware mei.cfg
-- 
1.7.0.4


