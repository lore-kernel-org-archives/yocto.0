Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CB844C80479
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:09 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 13:46:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10112183"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 13:46:08 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:44:59 -0500
Message-Id: <61a034616728c3c6f50e1767a37610d5e91d7df5.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 05/14][KERNEL] meta: add dmaengine feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a general-purpose feature for turning on DMA engine support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/features/dmaengine/dmaengine.cfg  |    2 ++
 .../kernel-cache/features/dmaengine/dmaengine.scc  |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/dmaengine/dmaengine.cfg
 create mode 100644 meta/cfg/kernel-cache/features/dmaengine/dmaengine.scc

diff --git a/meta/cfg/kernel-cache/features/dmaengine/dmaengine.cfg b/meta/cfg/kernel-cache/features/dmaengine/dmaengine.cfg
new file mode 100644
index 0000000..1e52bae
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/dmaengine/dmaengine.cfg
@@ -0,0 +1,2 @@
+CONFIG_DMADEVICES=y
+CONFIG_DMA_ENGINE=y
diff --git a/meta/cfg/kernel-cache/features/dmaengine/dmaengine.scc b/meta/cfg/kernel-cache/features/dmaengine/dmaengine.scc
new file mode 100644
index 0000000..7ad3430
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/dmaengine/dmaengine.scc
@@ -0,0 +1 @@
+kconf non-hardware dmaengine.cfg
-- 
1.7.0.4


