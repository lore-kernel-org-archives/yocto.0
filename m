Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBAACE0070C
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 15:08:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 May 2012 15:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="137170769"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by orsmga001.jf.intel.com with ESMTP; 04 May 2012 15:08:06 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Fri,  4 May 2012 17:07:36 -0500
Message-Id: <91b55b6165ba41f469ca52eb6edab05aef0ba993.1336167660.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336167660.git.tom.zanussi@intel.com>
References: <18a0f57440e7e601e4a6e58a649299be4db7ccbd.1336167660.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336167660.git.tom.zanussi@intel.com>
References: <cover.1336167660.git.tom.zanussi@intel.com>
Subject: [PATCH 7/7][KERNEL] meta: add mei feature
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
X-List-Received-Date: Fri, 04 May 2012 22:08:07 -0000

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


