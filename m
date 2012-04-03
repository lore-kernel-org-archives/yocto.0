Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC1CCE0137C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 07:31:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Apr 2012 07:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137095844"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.14])
	by fmsmga001.fm.intel.com with ESMTP; 03 Apr 2012 07:31:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 15:31:11 +0100
Message-Id: <f8475d5c5935695d4d1dfff1d7be30f49e162094.1333463421.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333463421.git.paul.eggleton@linux.intel.com>
References: <cover.1333463421.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1333463421.git.paul.eggleton@linux.intel.com>
References: <cover.1333463421.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 1/1] qt-x11-free: fix build failure in do_configure
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
X-List-Received-Date: Tue, 03 Apr 2012 14:31:19 -0000

This line appears to be superfluous and was failing if Makefile did not
exist.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-common.inc |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index b3c2dbf..1ab14a2 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "Qt/X11 Version ${PV} is a full fledged cross-platform application
 SECTION = "x11/libs"
 LICENSE = "GPLv2 | QPL-1.0"
 HOMEPAGE = "http://www.trolltech.com"
-INC_PR = "r5"
+INC_PR = "r6"
 
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
@@ -32,7 +32,6 @@ do_configure() {
 
 	# force regenerate
 	rm -f src/qtmain.pro
-	cat Makefile >makefile
 	find . -name "Makefile"|xargs rm -f
 	(cd src && ${OE_QMAKE_QMAKE} -spec ${QMAKESPEC} )
 	(cd plugins/src && ${OE_QMAKE_QMAKE} -spec ${QMAKESPEC} )
-- 
1.7.5.4


