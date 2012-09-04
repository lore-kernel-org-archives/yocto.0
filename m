Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E429E013CE
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 07:55:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Sep 2012 07:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="217619659"
Received: from unknown (HELO localhost) ([10.255.13.26])
	by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2012 07:55:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 09:55:43 -0500
Message-Id: <6e74be58a9b03a774ab21ac72bca9b9d56a622d4.1346770375.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1346770375.git.tom.zanussi@intel.com>
References: <cover.1346770375.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: remove task-core-tools-profile.bbappend
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
X-List-Received-Date: Tue, 04 Sep 2012 14:55:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The functionality previously added by these bbappends was already
handled in task-core-tools-profile.bb (now
packagegroup-core-tools-profile.bb), so remove these.

SYSTEMTAP = "systemtap"
SYSTEMTAP_mips = ""

LTTNGUST = "lttng-ust"
LTTNGUST_mips = ""

RDEPENDS_${PN} = "\
    ${PROFILETOOLS} \
    ${LTTNGUST} \
    ${SYSTEMTAP} \
    ${VALGRIND} \

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend   | 3 ---
 meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend   | 2 --
 meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend     | 3 ---
 meta-emenlow/recipes-core/tasks/task-core-tools-profile.bbappend      | 2 --
 meta-fishriver/recipes-core/tasks/task-core-tools-profile.bbappend    | 2 --
 meta-fri2/recipes-core/tasks/task-core-tools-profile.bbappend         | 3 ---
 meta-jasperforest/recipes-core/tasks/task-core-tools-profile.bbappend | 2 --
 meta-n450/recipes-core/tasks/task-core-tools-profile.bbappend         | 2 --
 meta-romley/recipes-core/tasks/task-core-tools-profile.bbappend       | 2 --
 meta-sugarbay/recipes-core/tasks/task-core-tools-profile.bbappend     | 2 --
 10 files changed, 23 deletions(-)
 delete mode 100644 meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-emenlow/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-fri2/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-n450/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-romley/recipes-core/tasks/task-core-tools-profile.bbappend
 delete mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools-profile.bbappend

diff --git a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 365958b..0000000
--- a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_cedartrail = " systemtap"
-RRECOMMENDS_task-core-tools-profile_append_cedartrail-nopvr = " systemtap"
-
diff --git a/meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 4631da3..0000000
--- a/meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_chiefriver = " systemtap"
-
diff --git a/meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 2181151..0000000
--- a/meta-crownbay/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_crownbay = " systemtap"
-RRECOMMENDS_task-core-tools-profile_append_crownbay-noemgd = " systemtap"
-
diff --git a/meta-emenlow/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-emenlow/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 890d103..0000000
--- a/meta-emenlow/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_emenlow = " lttng-ust systemtap"
-
diff --git a/meta-fishriver/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-fishriver/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 128531b..0000000
--- a/meta-fishriver/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_fishriver = " systemtap"
-
diff --git a/meta-fri2/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-fri2/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index aa50c91..0000000
--- a/meta-fri2/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_fri2 = " systemtap"
-RRECOMMENDS_task-core-tools-profile_append_fri2-noemgd = " systemtap"
-
diff --git a/meta-jasperforest/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-jasperforest/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 6561773..0000000
--- a/meta-jasperforest/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_jasperforest = " systemtap"
-
diff --git a/meta-n450/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-n450/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 3098950..0000000
--- a/meta-n450/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_n450 = " systemtap"
-
diff --git a/meta-romley/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-romley/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index aba487f..0000000
--- a/meta-romley/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_romley = " systemtap"
-
diff --git a/meta-sugarbay/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-sugarbay/recipes-core/tasks/task-core-tools-profile.bbappend
deleted file mode 100644
index 6cd24d0..0000000
--- a/meta-sugarbay/recipes-core/tasks/task-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_task-core-tools-profile_append_sugarbay = " systemtap"
-
-- 
1.7.11.4


