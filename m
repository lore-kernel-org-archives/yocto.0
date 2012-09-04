Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B16EE0149D
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 09:49:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Sep 2012 09:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="188662033"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.161])
	by azsmga001.ch.intel.com with ESMTP; 04 Sep 2012 09:49:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 17:49:05 +0100
Message-Id: <9f20afa74e14ac21be22fc6e2f5e46f6889be24c.1346777221.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346777221.git.paul.eggleton@linux.intel.com>
References: <cover.1346777221.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346777221.git.paul.eggleton@linux.intel.com>
References: <cover.1346777221.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3][PATCH 1/2] task-core-qt3: rename to packagegroup-core-qt3 and tidy up
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
X-List-Received-Date: Tue, 04 Sep 2012 16:49:46 -0000

Fix and clean up this recipe in line with the package group changes to
OE-Core.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/images/core-image-lsb-qt3.bb           |    6 +++---
 recipes-qt3/packagegroups/packagegroup-core-qt3.bb |   16 ++++++++++++++
 recipes-qt3/tasks/task-core-qt3.bb                 |   22 --------------------
 3 files changed, 19 insertions(+), 25 deletions(-)
 create mode 100644 recipes-qt3/packagegroups/packagegroup-core-qt3.bb
 delete mode 100644 recipes-qt3/tasks/task-core-qt3.bb

diff --git a/recipes-qt3/images/core-image-lsb-qt3.bb b/recipes-qt3/images/core-image-lsb-qt3.bb
index 35cd9fb..86bdf21 100644
--- a/recipes-qt3/images/core-image-lsb-qt3.bb
+++ b/recipes-qt3/images/core-image-lsb-qt3.bb
@@ -2,9 +2,9 @@ IMAGE_FEATURES += "apps-console-core ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     ${CORE_IMAGE_BASE_INSTALL} \
-    task-core-basic \
-    task-core-lsb \
-    task-core-qt-mt3 \
+    packagegroup-core-basic \
+    packagegroup-core-lsb \
+    packagegroup-core-qt3-libs \
     "
 
 inherit core-image
diff --git a/recipes-qt3/packagegroups/packagegroup-core-qt3.bb b/recipes-qt3/packagegroups/packagegroup-core-qt3.bb
new file mode 100644
index 0000000..89c29c0
--- /dev/null
+++ b/recipes-qt3/packagegroups/packagegroup-core-qt3.bb
@@ -0,0 +1,16 @@
+#
+# Copyright (C) 2011 Wind River
+#
+
+SUMMARY = "Qt version 3"
+PR = "r1"
+LICENSE = "MIT"
+
+inherit packagegroup
+
+PACKAGES = "${PN}-libs"
+
+RDEPENDS_${PN}-libs = "\
+    libqt-mt3 \
+"
+
diff --git a/recipes-qt3/tasks/task-core-qt3.bb b/recipes-qt3/tasks/task-core-qt3.bb
deleted file mode 100644
index fa41fb5..0000000
--- a/recipes-qt3/tasks/task-core-qt3.bb
+++ /dev/null
@@ -1,22 +0,0 @@
-#
-# Copyright (C) 2011 Wind River
-#
-
-DESCRIPTION = "Create qt3 Tasks"
-PR = "r1"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
-                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-
-PACKAGES = "\
-    task-core-qt-mt3 \
-"
-
-
-ALLOW_EMPTY = "1"
-
-
-RDEPENDS_task-core-qt-mt3 = "\
-    libqt-mt3 \
-"
-
-- 
1.7.9.5


