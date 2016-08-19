Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2CAEE00EF8; Fri, 19 Aug 2016 01:00:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 179E1E00E94
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 01:00:47 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 19 Aug 2016 01:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,544,1464678000"; d="scan'208";a="868112218"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga003.jf.intel.com with ESMTP; 19 Aug 2016 01:00:47 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id C86D16A4006;
	Fri, 19 Aug 2016 01:00:29 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Aug 2016 11:01:57 +0300
Message-Id: <1471593718-23587-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Cc: paul.eggleton@linux.intel.com
Subject: [meta-qt4][PATCH 1/2] qt4-embedded.inc: provide PACKAGECONFIG for tslib
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
X-List-Received-Date: Fri, 19 Aug 2016 08:00:52 -0000

make tslib dependency optional

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-qt4/qt4/qt4-embedded.inc | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-qt4/qt4/qt4-embedded.inc b/recipes-qt4/qt4/qt4-embedded.inc
index 3f40b82..6e7cd86 100644
--- a/recipes-qt4/qt4/qt4-embedded.inc
+++ b/recipes-qt4/qt4/qt4-embedded.inc
@@ -2,7 +2,9 @@ SUMMARY = "Cross-platform UI toolkit and application framework (framebuffer vers
 DESCRIPTION = "Qt is a versatile cross-platform application framework -- this is the embedded (framebuffer) version."
 SECTION = "libs"
 HOMEPAGE = "http://qt-project.org/"
-DEPENDS += "tslib"
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[tslib] = "QT_EMBEDDED_EXTRA_FLAGS_append ='  -plugin-mouse-tslib', , tslib"
 
 QT4EDEPENDS = ""
 QT_BASE_LIB  ?= "libqt-embedded"
@@ -18,7 +20,7 @@ QT_EMBEDDED_FLAGS ?= " \
 "
 QT_EMBEDDED_EXTRA_FLAGS ?= " \
     -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc \
-    -plugin-mouse-tslib -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
+    -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
     -qt-kbd-tty -qt-kbd-linuxinput \
 "
 QT_EMBEDDED_KEYPAD_FLAGS ?= " \
-- 
2.4.0


