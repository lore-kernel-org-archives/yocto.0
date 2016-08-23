Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5C36E00E43; Tue, 23 Aug 2016 09:08:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Aug 2016 09:08:29 PDT
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71380E00D3F
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 09:08:29 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 23 Aug 2016 09:07:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,566,1464678000"; 
   d="scan'208";a="911118"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga005.jf.intel.com with ESMTP; 23 Aug 2016 09:07:24 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.ger.corp.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 0A2C36A4006
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 09:07:05 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 19:06:41 +0300
Message-Id: <1471968402-7948-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [meta-qt4][PATCH v2 1/2] qt4-embedded.inc: provide PACKAGECONFIG for tslib
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
X-List-Received-Date: Tue, 23 Aug 2016 16:08:32 -0000

make tslib dependency optional

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 recipes-qt4/qt4/qt4-embedded.inc | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/recipes-qt4/qt4/qt4-embedded.inc b/recipes-qt4/qt4/qt4-embedded.inc
index 3f40b82..1122080 100644
--- a/recipes-qt4/qt4/qt4-embedded.inc
+++ b/recipes-qt4/qt4/qt4-embedded.inc
@@ -2,7 +2,9 @@ SUMMARY = "Cross-platform UI toolkit and application framework (framebuffer vers
 DESCRIPTION = "Qt is a versatile cross-platform application framework -- this is the embedded (framebuffer) version."
 SECTION = "libs"
 HOMEPAGE = "http://qt-project.org/"
-DEPENDS += "tslib"
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[tslib] = " -plugin-mouse-tslib, ,tslib"
 
 QT4EDEPENDS = ""
 QT_BASE_LIB  ?= "libqt-embedded"
@@ -18,8 +20,8 @@ QT_EMBEDDED_FLAGS ?= " \
 "
 QT_EMBEDDED_EXTRA_FLAGS ?= " \
     -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc \
-    -plugin-mouse-tslib -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
-    -qt-kbd-tty -qt-kbd-linuxinput \
+    -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
+    -qt-kbd-tty -qt-kbd-linuxinput ${PACKAGECONFIG_CONFARGS} \
 "
 QT_EMBEDDED_KEYPAD_FLAGS ?= " \
     -DQT_KEYPAD_NAVIGATION \
-- 
2.4.0


