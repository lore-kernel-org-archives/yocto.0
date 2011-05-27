Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A7B64C80A85
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:28 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 May 2011 13:46:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="3127725"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 13:46:26 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:04 -0500
Message-Id: <cddf6042091c8ba4df53915b87fe7c14e4c2dc70.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 10/14][KERNEL] meta: add intel-e1xxxx feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a general-purpose feature adding support for Intel PRO/100, Intel
PRO/1000, and Intel PRO/1000 PCI-Express adapters.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../features/intel-e1xxxx/intel-e1xxxx.cfg         |    4 ++++
 .../features/intel-e1xxxx/intel-e1xxxx.scc         |    1 +
 2 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
 create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc

diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
new file mode 100644
index 0000000..ea9f7e9
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
@@ -0,0 +1,4 @@
+CONFIG_NETDEV_1000=y
+CONFIG_E100=y
+CONFIG_E1000E=y
+CONFIG_E1000=y
diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
new file mode 100644
index 0000000..90ba914
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
@@ -0,0 +1 @@
+kconf hardware intel-e1xxxx.cfg
-- 
1.7.0.4


