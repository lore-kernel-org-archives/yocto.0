Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86727E01217
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 07:18:23 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2011 07:18:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93969975"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2011 07:18:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 15:18:16 +0000
Message-Id: <3545e55d05702eec6edfd144eb68a6d645e62e99.1323357349.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 2/5] qt-x11-free: remove version 3.3.6
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
X-List-Received-Date: Thu, 08 Dec 2011 15:18:23 -0000

We only need one version, 3.3.7 was the default preference (in the
absence of DEFAULT_PREFERENCE) and the 3.3.6 recipe depends on
uicmoc3-native which we do not have, so remove it.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free_3.3.6.bb |   13 -------------
 1 files changed, 0 insertions(+), 13 deletions(-)
 delete mode 100644 recipes-qt3/qt3/qt-x11-free_3.3.6.bb

diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.6.bb b/recipes-qt3/qt3/qt-x11-free_3.3.6.bb
deleted file mode 100644
index 789e6fb..0000000
--- a/recipes-qt3/qt3/qt-x11-free_3.3.6.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-DEPENDS = "uicmoc3-native freetype virtual/libx11 libxft libxext libxrender libxrandr libxcursor mysql virtual/libgl"
-PROVIDES = "qt3x11"
-PR = "r3"
-
-SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
-	   file://configure.patch \
-	   file://no-examples.patch \
-           file://gcc4_1-HACK.patch"
-
-require qt-x11-free-common.inc
-
-SRC_URI[md5sum] = "dc1384c03ac08af21f6fefab32d982cf"
-SRC_URI[sha256sum] = "04f12083f6a6f7a8fd4d34a6c1efd37db76a67580c424f4fb7b7c43c0565e6ae"
-- 
1.7.5.4


