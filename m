Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DC7E4C808B6
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2011 09:33:36 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Jun 2011 07:33:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,309,1304319600"; 
   d="scan'208";a="5947648"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.204])
	by azsmga001.ch.intel.com with ESMTP; 02 Jun 2011 07:33:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Jun 2011 15:32:06 +0100
Message-Id: <1cdd04a4d2f0cf457e34ee2eb1f0ae1e3fdb1e8e.1307024851.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1307024851.git.paul.eggleton@linux.intel.com>
References: <cover.1307024851.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1307024851.git.paul.eggleton@linux.intel.com>
References: <cover.1307024851.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] meta-emenlow: remove obsolete bbappends
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
X-List-Received-Date: Thu, 02 Jun 2011 14:33:36 -0000

Qt 4.6.3 and Clutter 1.4 have been removed from oe-core / poky.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ----
 .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 --
 2 files changed, 0 insertions(+), 6 deletions(-)
 delete mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
 delete mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend

diff --git a/meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend b/meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
deleted file mode 100644
index 71677ad..0000000
--- a/meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-DEPENDS_emenlow = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
-EXTRA_OECONF_emenlow = "${BASE_CONF} --with-flavour=glx"
-PACKAGE_ARCH_emenlow = "${MACHINE_ARCH}"
-
diff --git a/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend b/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
deleted file mode 100644
index 92eabf2..0000000
--- a/meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-QT_GLFLAGS_emenlow = "-opengl"
-
-- 
1.7.4.1


