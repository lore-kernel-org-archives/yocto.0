Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE33CE00D20; Sat, 23 Jul 2016 14:43:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ECF6E00D0A
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 14:43:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jul 2016 14:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,410,1464678000"; d="scan'208";a="1022650009"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga002.jf.intel.com with ESMTP; 23 Jul 2016 14:43:37 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Jul 2016 14:44:29 -0700
Message-Id: <1469310269-16750-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt4][krogoth][PATCH] qt4-native: fix gcc-6 build; inhibit debug stripping
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
X-List-Received-Date: Sat, 23 Jul 2016 21:43:44 -0000

[YOCTO #9897] (Fedora-24 host is gcc-6)

Fix native build only, "krogoth" does not have gcc-6 for target.

Add patches from master:
(Khem Raj) commit 9ec17d2113a8bf9e829ce94c0927036cea100625
(Richard Purdie) commit 8b346c465a5efb280f8d0d23f8660f68bf9af59f

Also, apply patch to inhibit debug stripping to avoid QA warning.

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 ...6-qt-everywhere-opensource-src-4.8.7-gcc6.patch | 24 ++++++++++++++++++++++
 recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch              | 19 +++++++++++++++++
 recipes-qt4/qt4/qt4-native.inc                     |  6 ++++++
 3 files changed, 49 insertions(+)
 create mode 100644 recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch
 create mode 100644 recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch

diff --git a/recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch b/recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch
new file mode 100644
index 0000000..6e0f18d
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch
@@ -0,0 +1,24 @@
+Avoid implicit conversions, which are now flagged by gcc6
+
+| api/qcoloroutput_p.h:74:60: error: shift expression '(1048575 << 20)' overflows [-fpermissive]
+| api/qcoloroutput_p.h:74:63: error: enumerator value for 'BackgroundMask' is not an integer constant
+|              BackgroundMask  = ((1 << BackgroundShift) - 1) << BackgroundShift
+
+
+Upstream-Status: Inappropriate [Frozen upstream]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+diff -up qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h.than qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h
+--- qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h.than	2016-02-03 11:43:04.567757448 +0100
++++ qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h	2016-02-04 13:12:26.394350271 +0100
+@@ -70,8 +70,8 @@ namespace QPatternist
+             ForegroundShift = 10,
+             BackgroundShift = 20,
+             SpecialShift    = 20,
+-            ForegroundMask  = ((1 << ForegroundShift) - 1) << ForegroundShift,
+-            BackgroundMask  = ((1 << BackgroundShift) - 1) << BackgroundShift
++            ForegroundMask  = 0x1f << ForegroundShift,
++            BackgroundMask  = 0x7 << BackgroundShift
+         };
+ 
+     public:
diff --git a/recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch b/recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch
new file mode 100644
index 0000000..b0ce9cd
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/gcc-6.patch
@@ -0,0 +1,19 @@
+Allow gcc v6 to build webkit. Without this, webkit isn't built
+when gcc v6 is used (silently but then python-pyqt fails to build).
+
+Upstream-Status: Inappropriate [no development on qt4 now]
+RP 2016/5/26
+
+Index: qt-everywhere-opensource-src-4.8.7/configure
+===================================================================
+--- qt-everywhere-opensource-src-4.8.7.orig/configure
++++ qt-everywhere-opensource-src-4.8.7/configure
+@@ -7756,7 +7756,7 @@ case "$XPLATFORM" in
+     *-g++*)
+ 	# Check gcc's version
+ 	case "$(${QMAKE_CONF_COMPILER} -dumpversion)" in
+-	    5*|4*|3.4*)
++	    6*|5*|4*|3.4*)
+ 		;;
+             3.3*)
+                 canBuildWebKit="no"
diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index 58acac8..8310fcf 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -15,7 +15,10 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://0001-qlibraryinfo-allow-to-set-qt.conf-from-the-outside-u.patch \
            file://0002-qkbdtty_qws-fix-build-with-old-kernel-headers.patch \
            file://0003-webkit2-set-OUTPUT_DIR-value-if-empty.patch \
+	   file://0015-configure-add-nostrip-for-debug-packages.patch \
            file://0021-configure-make-qt4-native-work-with-long-building-pa.patch \
+	   file://0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch \
+	   file://gcc-6.patch \
            file://g++.conf \
            file://linux.conf \
 	"
@@ -25,6 +28,9 @@ UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)/"
 
 S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
 
+# workaround for class std::auto_ptr is deprecated with gcc-6
+CXXFLAGS += "-std=gnu++98 -Wno-deprecated"
+
 EXTRA_OECONF = "-prefix ${prefix} \
                 -bindir ${bindir} \
                 -libdir ${libdir} \
-- 
2.7.4


