Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE23AE006B5
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 19:33:47 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2011 19:33:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="94223376"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.35])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2011 19:33:46 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org,
	paul.eggleton@intel.com
Date: Thu,  8 Dec 2011 19:33:46 -0800
Message-Id: <1323401626-10525-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH] task-core-qt3: Fix package names
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
X-List-Received-Date: Fri, 09 Dec 2011 03:33:48 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-qt3/tasks/task-core-qt3.bb |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/recipes-qt3/tasks/task-core-qt3.bb b/recipes-qt3/tasks/task-core-qt3.bb
index 81479d9..fa41fb5 100644
--- a/recipes-qt3/tasks/task-core-qt3.bb
+++ b/recipes-qt3/tasks/task-core-qt3.bb
@@ -3,7 +3,7 @@
 #
 
 DESCRIPTION = "Create qt3 Tasks"
-PR = "r0"
+PR = "r1"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
@@ -17,7 +17,6 @@ ALLOW_EMPTY = "1"
 
 
 RDEPENDS_task-core-qt-mt3 = "\
-    qt-x11-free \
     libqt-mt3 \
 "
 
-- 
1.7.3.4


