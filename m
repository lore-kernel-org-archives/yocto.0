Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CDE4E00DD0; Tue,  5 Jul 2016 21:18:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01572E00DC3
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 21:18:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 05 Jul 2016 21:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,317,1464678000"; d="scan'208";a="989806058"
Received: from mabubaka-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.170.98])
	by orsmga001.jf.intel.com with ESMTP; 05 Jul 2016 21:18:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Jul 2016 16:17:45 +1200
Message-Id: <1467778665-27269-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [meta-qt4][PATCH] qt4-embedded: remove dependency on DirectFB
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Jul 2016 04:18:29 -0000

DirectFB is about to be removed from OE-Core, so we shouldn't (and don't
need to) depend upon it here.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt4/qt4/qt4-embedded.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-qt4/qt4/qt4-embedded.inc b/recipes-qt4/qt4/qt4-embedded.inc
index a769065..3f40b82 100644
--- a/recipes-qt4/qt4/qt4-embedded.inc
+++ b/recipes-qt4/qt4/qt4-embedded.inc
@@ -2,7 +2,7 @@ SUMMARY = "Cross-platform UI toolkit and application framework (framebuffer vers
 DESCRIPTION = "Qt is a versatile cross-platform application framework -- this is the embedded (framebuffer) version."
 SECTION = "libs"
 HOMEPAGE = "http://qt-project.org/"
-DEPENDS += "directfb tslib"
+DEPENDS += "tslib"
 
 QT4EDEPENDS = ""
 QT_BASE_LIB  ?= "libqt-embedded"
@@ -17,7 +17,7 @@ QT_EMBEDDED_FLAGS ?= " \
     -qtlibinfix ${QT_LIBINFIX} \
 "
 QT_EMBEDDED_EXTRA_FLAGS ?= " \
-    -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc -plugin-gfx-directfb \
+    -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc \
     -plugin-mouse-tslib -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
     -qt-kbd-tty -qt-kbd-linuxinput \
 "
-- 
2.5.5


