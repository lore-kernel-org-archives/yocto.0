Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 777F8E0123C
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 07:18:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2011 07:18:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93969977"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2011 07:18:23 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 15:18:17 +0000
Message-Id: <3e9c572030581563be737205408bdf4d41df330e.1323357349.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 3/5] qt-x11-free: use INC_PR
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
X-List-Received-Date: Thu, 08 Dec 2011 15:18:24 -0000

PR was being set in both the inc and the recipes, this is not correct.
Move them to use INC_PR so the recipe and inc can be updated and retain
sanity.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-common.inc |    2 +-
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb   |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index 6aa6306..c92d883 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -3,7 +3,7 @@ SECTION = "x11/libs"
 PRIORITY = "optional"
 LICENSE = "GPL | QPL"
 HOMEPAGE = "http://www.trolltech.com"
-PR = "r1"
+INC_PR = "r3"
 
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index 94486ed..f2e8591 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -1,6 +1,6 @@
 DEPENDS = "qt-x11-free-native freetype virtual/libx11 libxmu libxft libxext libxrender libxrandr libxcursor  virtual/libgl"
 PROVIDES = "qt3x11"
-PR = "r0"
+PR = "${INC_PR}.1"
 
 PREFERRED_VERSION_qt-x11-free = 3.3.7
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
-- 
1.7.5.4


