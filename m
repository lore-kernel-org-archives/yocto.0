Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59A2C4C800B3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 09:35:50 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2011 07:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="15638882"
Received: from unknown (HELO localhost) ([10.255.13.21])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2011 07:35:49 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2011 09:35:53 -0500
Message-Id: <b704c6defd105095f3cae035b618cf95d758a679.1307938815.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <77c13548a6438c7c14f84206b5285890e7401d2b.1307938815.git.tom.zanussi@intel.com>
References: <77c13548a6438c7c14f84206b5285890e7401d2b.1307938815.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1307938815.git.tom.zanussi@intel.com>
References: <cover.1307938815.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-intel: add systemtap bbappends
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
X-List-Received-Date: Mon, 13 Jun 2011 14:35:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

To configure crownbay, crownbay-noemgd, fishriver, jasperforest, n450,
and sugarbay as compatible machines for systemtap.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-core/tasks/task-core-tools.bbappend    |    3 +++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
 .../systemtap/systemtap_git.bbappend               |    1 +
 10 files changed, 16 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-n450/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-n450/recipes-kernel/systemtap/systemtap_git.bbappend
 create mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/systemtap/systemtap_git.bbappend

diff --git a/meta-crownbay/recipes-core/tasks/task-core-tools.bbappend b/meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..3dfeadc
--- /dev/null
+++ b/meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,3 @@
+RDEPENDS_task-core-tools-profile_append_crownbay = " systemtap"
+RDEPENDS_task-core-tools-profile_append_crownbay-noemgd = " systemtap"
+
diff --git a/meta-crownbay/recipes-kernel/systemtap/systemtap_git.bbappend b/meta-crownbay/recipes-kernel/systemtap/systemtap_git.bbappend
new file mode 100644
index 0000000..41c2ff2
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/systemtap/systemtap_git.bbappend
@@ -0,0 +1 @@
+COMPATIBLE_MACHINE = ${MACHINE}
diff --git a/meta-fishriver/recipes-core/tasks/task-core-tools.bbappend b/meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..acdf5b1
--- /dev/null
+++ b/meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RDEPENDS_task-core-tools-profile_append_fishriver = " systemtap"
+
diff --git a/meta-fishriver/recipes-kernel/systemtap/systemtap_git.bbappend b/meta-fishriver/recipes-kernel/systemtap/systemtap_git.bbappend
new file mode 100644
index 0000000..41c2ff2
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/systemtap/systemtap_git.bbappend
@@ -0,0 +1 @@
+COMPATIBLE_MACHINE = ${MACHINE}
diff --git a/meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend b/meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..12fa1c2
--- /dev/null
+++ b/meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RDEPENDS_task-core-tools-profile_append_jasperforest = " systemtap"
+
diff --git a/meta-jasperforest/recipes-kernel/systemtap/systemtap_git.bbappend b/meta-jasperforest/recipes-kernel/systemtap/systemtap_git.bbappend
new file mode 100644
index 0000000..41c2ff2
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/systemtap/systemtap_git.bbappend
@@ -0,0 +1 @@
+COMPATIBLE_MACHINE = ${MACHINE}
diff --git a/meta-n450/recipes-core/tasks/task-core-tools.bbappend b/meta-n450/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..3ab49a3
--- /dev/null
+++ b/meta-n450/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RDEPENDS_task-core-tools-profile_append_n450 = " systemtap"
+
diff --git a/meta-n450/recipes-kernel/systemtap/systemtap_git.bbappend b/meta-n450/recipes-kernel/systemtap/systemtap_git.bbappend
new file mode 100644
index 0000000..41c2ff2
--- /dev/null
+++ b/meta-n450/recipes-kernel/systemtap/systemtap_git.bbappend
@@ -0,0 +1 @@
+COMPATIBLE_MACHINE = ${MACHINE}
diff --git a/meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend b/meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..23c30a1
--- /dev/null
+++ b/meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RDEPENDS_task-core-tools-profile_append_sugarbay = " systemtap"
+
diff --git a/meta-sugarbay/recipes-kernel/systemtap/systemtap_git.bbappend b/meta-sugarbay/recipes-kernel/systemtap/systemtap_git.bbappend
new file mode 100644
index 0000000..41c2ff2
--- /dev/null
+++ b/meta-sugarbay/recipes-kernel/systemtap/systemtap_git.bbappend
@@ -0,0 +1 @@
+COMPATIBLE_MACHINE = ${MACHINE}
-- 
1.7.0.4


