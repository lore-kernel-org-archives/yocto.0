Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92222E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 07:18:22 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2011 07:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93969970"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2011 07:18:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 15:18:15 +0000
Message-Id: <f2eeaaddeb70e6ecd8cf5fc12c39bb88309150da.1323357349.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 1/5] qt-x11-free-native: add qt3-cstddef.patch
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
X-List-Received-Date: Thu, 08 Dec 2011 15:18:22 -0000

When building on Fedora 15 the build failed with the error mentioned in
this patch ("qvaluelist.h: error: 'ptrdiff_t' does not name a type"), so
it is needed by the native recipe as well.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index 779513e..15f71d4 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -4,7 +4,7 @@ PRIORITY = "optional"
 LICENSE = "GPL | QPL"
 DEPENDS = "xmu-native"
 HOMEPAGE = "http://www.trolltech.com"
-PR = "r1"
+PR = "r2"
 
 PROVIDES += "qt-x11-free-native"
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
@@ -13,7 +13,8 @@ LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=629178675a7d49c9fa19dfe9f43ea256 \
                     file://LICENSE.QPL;md5=fff372435cb41647bc0b3cb940ea5c51"
 
 SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
-	   file://no-examples.patch"
+           file://no-examples.patch \
+           file://qt3-cstddef.patch"
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
 #
-- 
1.7.5.4


