Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C9B4E0123F
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 07:18:25 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2011 07:18:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93969979"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2011 07:18:24 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 15:18:18 +0000
Message-Id: <33d93fe90cae96976a0429b08a4e6790132427bf.1323357349.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 4/5] qt-x11-free(-native): remove erroneous PROVIDES
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
X-List-Received-Date: Thu, 08 Dec 2011 15:18:25 -0000

None of these statements do anything, because a recipe always PROVIDES
${PN} by default.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    2 --
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb        |    1 -
 2 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index 15f71d4..7dd9a34 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -6,7 +6,6 @@ DEPENDS = "xmu-native"
 HOMEPAGE = "http://www.trolltech.com"
 PR = "r2"
 
-PROVIDES += "qt-x11-free-native"
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
 
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=629178675a7d49c9fa19dfe9f43ea256 \
@@ -22,7 +21,6 @@ S = "${WORKDIR}/qt-x11-free-${PV}"
 #         or the full qmake.oeclass.
 #
 
-PROVIDES = "qt-x11-free-native"
 export QTDIR = "${S}"
 export SYSCONF_CXX = "${CCACHE} g++"
 export SYSCONF_CC  = "${CCACHE} gcc"
diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index f2e8591..a67dd63 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -2,7 +2,6 @@ DEPENDS = "qt-x11-free-native freetype virtual/libx11 libxmu libxft libxext libx
 PROVIDES = "qt3x11"
 PR = "${INC_PR}.1"
 
-PREFERRED_VERSION_qt-x11-free = 3.3.7
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
                     file://LICENSE.QPL;md5=b81b6b6fc04ed873adde5aa901c0613b"
 
-- 
1.7.5.4


