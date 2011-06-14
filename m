Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A2E014C80120
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 17:51:18 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jun 2011 15:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,366,1304319600"; d="scan'208";a="13559327"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2011 15:51:17 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 14 Jun 2011 17:51:39 -0500
Message-Id: <01e53d982b2d6e61bc51224020df4f57591cc178.1308091335.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1308091335.git.tom.zanussi@intel.com>
References: <cover.1308091335.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: add systemtap bbappends
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
X-List-Received-Date: Tue, 14 Jun 2011 22:51:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add systemtap to task-core-tools-profile for crownbay,
crownbay-noemgd, fishriver, jasperforest, n450, and sugarbay.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-core/tasks/task-core-tools.bbappend    |    3 +++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +-
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 6 files changed, 12 insertions(+), 1 deletions(-)
 create mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-n450/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend

diff --git a/meta-crownbay/recipes-core/tasks/task-core-tools.bbappend b/meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..2181151
--- /dev/null
+++ b/meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,3 @@
+RRECOMMENDS_task-core-tools-profile_append_crownbay = " systemtap"
+RRECOMMENDS_task-core-tools-profile_append_crownbay-noemgd = " systemtap"
+
diff --git a/meta-emenlow/recipes-core/tasks/task-core-tools.bbappend b/meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
index 9743e2c..890d103 100644
--- a/meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
+++ b/meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
@@ -1,2 +1,2 @@
-RDEPENDS_task-core-tools-profile_append_emenlow = " lttng-ust systemtap"
+RRECOMMENDS_task-core-tools-profile_append_emenlow = " lttng-ust systemtap"
 
diff --git a/meta-fishriver/recipes-core/tasks/task-core-tools.bbappend b/meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..128531b
--- /dev/null
+++ b/meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_fishriver = " systemtap"
+
diff --git a/meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend b/meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..6561773
--- /dev/null
+++ b/meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_jasperforest = " systemtap"
+
diff --git a/meta-n450/recipes-core/tasks/task-core-tools.bbappend b/meta-n450/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..3098950
--- /dev/null
+++ b/meta-n450/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_n450 = " systemtap"
+
diff --git a/meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend b/meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..6cd24d0
--- /dev/null
+++ b/meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_sugarbay = " systemtap"
+
-- 
1.7.0.4


