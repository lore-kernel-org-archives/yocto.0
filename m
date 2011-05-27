Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62EEF4C80A7E
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:22 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 13:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="8744230"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 13:46:21 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:02 -0500
Message-Id: <b80e3d4e3c8f5b91b516a4f1a43ee9b3d9515849.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 08/14][KERNEL] meta: add igb feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:22 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a general-purpose feature for turning on Intel 82575/82576 PCI
Express Gigabit ethernet support.  Turns on Direct Cache Access and
82576 Virtual Function Ethernet support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/igb/igb.cfg |   10 ++++++++++
 meta/cfg/kernel-cache/features/igb/igb.scc |    4 ++++
 2 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/igb/igb.cfg
 create mode 100644 meta/cfg/kernel-cache/features/igb/igb.scc

diff --git a/meta/cfg/kernel-cache/features/igb/igb.cfg b/meta/cfg/kernel-cache/features/igb/igb.cfg
new file mode 100644
index 0000000..92600b1
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/igb/igb.cfg
@@ -0,0 +1,10 @@
+CONFIG_IGB=m
+CONFIG_IGBVF=m
+
+# needed for DCA
+CONFIG_INTEL_IOATDMA=m
+CONFIG_ASYNC_TX_DISABLE_PQ_VAL_DMA=y
+CONFIG_ASYNC_TX_DISABLE_XOR_VAL_DMA=y
+
+CONFIG_DCA=m
+CONFIG_IGB_DCA=y
diff --git a/meta/cfg/kernel-cache/features/igb/igb.scc b/meta/cfg/kernel-cache/features/igb/igb.scc
new file mode 100644
index 0000000..4426397
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/igb/igb.scc
@@ -0,0 +1,4 @@
+kconf hardware igb.cfg
+
+# needed for DCA
+include features/dmaengine/dmaengine.scc
-- 
1.7.0.4


