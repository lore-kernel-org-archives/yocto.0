Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9FF404C8043A
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:47 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 May 2011 13:46:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="6009614"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 13:46:31 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:06 -0500
Message-Id: <67af056502929467c3541e6a077fa438d9bec3ea.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 12/14][KERNEL] meta: add dca feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a general-purpose feature for turning on DCA support (Intel Direct
Cache Access) and use it in igb/ixgbe features.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/dca/dca.cfg     |    4 ++++
 meta/cfg/kernel-cache/features/dca/dca.scc     |    3 +++
 meta/cfg/kernel-cache/features/igb/igb.cfg     |   10 ++--------
 meta/cfg/kernel-cache/features/igb/igb.scc     |    3 +--
 meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg |    7 -------
 meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc |    3 +--
 6 files changed, 11 insertions(+), 19 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/dca/dca.cfg
 create mode 100644 meta/cfg/kernel-cache/features/dca/dca.scc

diff --git a/meta/cfg/kernel-cache/features/dca/dca.cfg b/meta/cfg/kernel-cache/features/dca/dca.cfg
new file mode 100644
index 0000000..f1591aa
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/dca/dca.cfg
@@ -0,0 +1,4 @@
+CONFIG_INTEL_IOATDMA=m
+CONFIG_ASYNC_TX_DISABLE_PQ_VAL_DMA=y
+CONFIG_ASYNC_TX_DISABLE_XOR_VAL_DMA=y
+CONFIG_DCA=m
diff --git a/meta/cfg/kernel-cache/features/dca/dca.scc b/meta/cfg/kernel-cache/features/dca/dca.scc
new file mode 100644
index 0000000..6426739
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/dca/dca.scc
@@ -0,0 +1,3 @@
+kconf hardware dca.cfg
+
+include features/dmaengine/dmaengine.scc
diff --git a/meta/cfg/kernel-cache/features/igb/igb.cfg b/meta/cfg/kernel-cache/features/igb/igb.cfg
index 92600b1..3978517 100644
--- a/meta/cfg/kernel-cache/features/igb/igb.cfg
+++ b/meta/cfg/kernel-cache/features/igb/igb.cfg
@@ -1,10 +1,4 @@
+CONFIG_IGB_DCA=y
+
 CONFIG_IGB=m
 CONFIG_IGBVF=m
-
-# needed for DCA
-CONFIG_INTEL_IOATDMA=m
-CONFIG_ASYNC_TX_DISABLE_PQ_VAL_DMA=y
-CONFIG_ASYNC_TX_DISABLE_XOR_VAL_DMA=y
-
-CONFIG_DCA=m
-CONFIG_IGB_DCA=y
diff --git a/meta/cfg/kernel-cache/features/igb/igb.scc b/meta/cfg/kernel-cache/features/igb/igb.scc
index 4426397..84bc67f 100644
--- a/meta/cfg/kernel-cache/features/igb/igb.scc
+++ b/meta/cfg/kernel-cache/features/igb/igb.scc
@@ -1,4 +1,3 @@
 kconf hardware igb.cfg
 
-# needed for DCA
-include features/dmaengine/dmaengine.scc
+include features/dca/dca.scc
diff --git a/meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg
index eabbaa9..30e46ce 100644
--- a/meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg
+++ b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg
@@ -1,11 +1,4 @@
 CONFIG_IXGBE=m
-
-# needed for IXGBE_DCA
-CONFIG_INTEL_IOATDMA=m
-CONFIG_ASYNC_TX_DISABLE_PQ_VAL_DMA=y
-CONFIG_ASYNC_TX_DISABLE_XOR_VAL_DMA=y
-
-CONFIG_DCA=m
 CONFIG_IXGBE_DCA=y
 
 CONFIG_DCB=y
diff --git a/meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc
index 247ce65..d22aa5c 100644
--- a/meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc
+++ b/meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc
@@ -1,4 +1,3 @@
 kconf hardware ixgbe.cfg
 
-# needed for DCA
-include features/dmaengine/dmaengine.scc
+include features/dca/dca.scc
-- 
1.7.0.4


