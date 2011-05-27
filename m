Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 173D54C80479
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:04 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 May 2011 13:46:04 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga002.jf.intel.com with ESMTP; 27 May 2011 13:46:03 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:44:57 -0500
Message-Id: <75533a50de1074c4c205d7adbf4779cc67cf2f96.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 03/14][KERNEL] meta: add uio feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:05 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add feature to turn on userspace I/O support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/uio/uio.cfg |    1 +
 meta/cfg/kernel-cache/features/uio/uio.scc |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/uio/uio.cfg
 create mode 100644 meta/cfg/kernel-cache/features/uio/uio.scc

diff --git a/meta/cfg/kernel-cache/features/uio/uio.cfg b/meta/cfg/kernel-cache/features/uio/uio.cfg
new file mode 100644
index 0000000..109e559
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/uio/uio.cfg
@@ -0,0 +1 @@
+CONFIG_UIO=m
diff --git a/meta/cfg/kernel-cache/features/uio/uio.scc b/meta/cfg/kernel-cache/features/uio/uio.scc
new file mode 100644
index 0000000..7d606c3
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/uio/uio.scc
@@ -0,0 +1 @@
+kconf non-hardware uio.cfg
-- 
1.7.0.4


