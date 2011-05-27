Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 479304C80A78
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:19 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 13:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10112217"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 13:46:18 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:01 -0500
Message-Id: <a09be64d5fab8cfa1dd2418c905104a8d784cfcf.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 07/14][KERNEL] meta: add ixgbe feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a general-purpose feature for turning on Intel 10GbE PCI Express
support.  Turns on Direct Cache Access and Data Center Bridging as
well as 82599 Virtual Function Ethernet support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg |   13 +++++++++++++
 meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc |    4 ++++
 2 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg
 create mode 100644 meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc

diff --git a/meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg
new file mode 100644
index 0000000..eabbaa9
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg
@@ -0,0 +1,13 @@
+CONFIG_IXGBE=m
+
+# needed for IXGBE_DCA
+CONFIG_INTEL_IOATDMA=m
+CONFIG_ASYNC_TX_DISABLE_PQ_VAL_DMA=y
+CONFIG_ASYNC_TX_DISABLE_XOR_VAL_DMA=y
+
+CONFIG_DCA=m
+CONFIG_IXGBE_DCA=y
+
+CONFIG_DCB=y
+CONFIG_IXGBE_DCB=y
+CONFIG_IXGBEVF=m
diff --git a/meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc
new file mode 100644
index 0000000..247ce65
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc
@@ -0,0 +1,4 @@
+kconf hardware ixgbe.cfg
+
+# needed for DCA
+include features/dmaengine/dmaengine.scc
-- 
1.7.0.4


